unit p_zfjk_cx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TFrm_zfjk_cx = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btn_cx: TButton;
    rg_zffs: TRadioGroup;
    rg_jyfs: TRadioGroup;
    lbl_orderno: TLabel;
    edt_orderno: TEdit;
    lbl1: TLabel;
    edt_appid: TEdit;
    lbl2: TLabel;
    edt_status: TEdit;
    lbl3: TLabel;
    edt_amount: TEdit;
    lbl4: TLabel;
    edt_time: TEdit;
    lbl5: TLabel;
    edt_num: TEdit;
    lbl6: TLabel;
    edt_amt: TEdit;
    lbl7: TLabel;
    edt_lsh: TEdit;
    lbl8: TLabel;
    edt_finishDate: TEdit;
    pnl3: TPanel;
    btn_tk: TButton;
    btn_cancle: TButton;
    lbl9: TLabel;
    edt_reason: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_cxClick(Sender: TObject);
    procedure rg_zffsClick(Sender: TObject);
    procedure rg_jyfsClick(Sender: TObject);
    procedure btn_tkClick(Sender: TObject);
    procedure btn_cancleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_zfjk_cx: TFrm_zfjk_cx;
  channel,channel_name: string;  // 支付渠道, 支付方式（微信、支付宝）
  txnmode: string;  //交易方式 1-支付交易（默认） 0-退款交易  当为非实时查询时，该字只能为1
  refund_no: string;  //订单号, 退款订单号


implementation
uses p_func,jkk_fun,zfjk_fun;

{$R *.dfm}


procedure TFrm_zfjk_cx.FormCreate(Sender: TObject);
begin
  Self.Position := poScreenCenter ;
end;

procedure TFrm_zfjk_cx.rg_jyfsClick(Sender: TObject);
var
  zfjk: TZfjk;
begin
//  try
//    zfjk := Tzfjk.Create;
//    case rg_jyfs.ItemIndex of
//      0:
//        begin
//          txnmode := '1';
//          refund_no := '';
//        end;
//      1:
//        begin
//          txnmode := '0';
//          refund_no := zfjk.getOrderNo;
//        end;
//    end;
//  finally
//    zfjk.Free;
//  end;
end;

procedure TFrm_zfjk_cx.rg_zffsClick(Sender: TObject);
begin
//  case rg_zffs.ItemIndex of
//    0:
//      begin
//        channel := 'wechat_barcode';
//        channel_name := rg_zffs.Items[rg_zffs.ItemIndex];
//      end;
//    1:
//      begin
//        channel := 'alipay_barcode';
//        channel_name := rg_zffs.Items[rg_zffs.ItemIndex];
//      end;
//  end;
end;


{-------------------------------------------------------------------------------
  过程名:    TFrm_zfjk_cx.btn_cxClick
  功能:	     查询
  作者:      ljk
  日期:      2018.08.28
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_zfjk_cx.btn_cxClick(Sender: TObject);
var
  zfjk: Tzfjk;
  zfjk_req: WideString;
  timestamp: string;

  status: string;		  //订单状态
  statusdesp: string;	//订单状态描述
  amount: string;	    //订单总金额
  gen_time: string;		//下单时间
  mer_aply_num: string;	//已退款笔数
  mer_aply_amt: string;	//已退款金额
  fundchn_journal_no: string;	//资金通道返回流水号
  finishDate: string;	        //订单完成日期YYYYMMDD
begin
  {$REGION '陕西-支付接口  查询'}
  if Getxtcs('Bjmjkk_sx') = '1' then
  begin
    try
      try
        zfjk := TZfjk.Create;
        timestamp := zfjk.getTimestamp();

        case rg_jyfs.ItemIndex of
          0:
            begin
              txnmode := '1';
              refund_no := '';
            end;
          1:
            begin
              txnmode := '0';
              refund_no := zfjk.getOrderNo;
            end;
        end;

        case rg_zffs.ItemIndex of
          0:
            begin
              channel := 'wechat_barcode';
              channel_name := rg_zffs.Items[rg_zffs.ItemIndex];
            end;
          1:
            begin
              channel := 'alipay_barcode';
              channel_name := rg_zffs.Items[rg_zffs.ItemIndex];
            end;
        end;

        zfjk_req := '{"ResquestInfo": {'+
                    '"channel": "'+ channel +'",'+
                    '"submerno": "'+ zfjk.submerno +'",'+
                    '"txnmode": "'+ txnmode +'",'+
                    '"appid": "'+ zfjk.appid +'",'+
                    '"order_no": "'+ Trim(edt_orderno.Text) +'",'+
                    '"refund_no": "'+ refund_no +'",'+
                    '"nonce": "'+ zfjk.getNonce(32) +'",'+	//可选	32 位字符和数字随机字符串
                    '"timestamp": "'+ timestamp +'",'+
                    '"sign": "'+ zfjk.getSign('0','',zfjk.appid,Trim(edt_orderno.Text),timestamp,zfjk.zfjk_key) +'",'+
                    '"queryType": "1",'+
                    '"conditional_data": {'+
                    '"bizType": ""}}}';
        Frm_func.addLog('调用查询接口开始'+#13#10+'URL：'+zfjk.zfjk_url+#13#10+'zfjk_req：'+zfjk_req);
        zfjk.MyFun('queryInfo', zfjk_req);
        Frm_func.addLog('sc_json：'+zfjk.sc +#13#10 +'调用查询接口结束');
        Frm_func.addLog('0');

        if Assigned(zfjk.sc_json['ResponseInfo.retcode']) then
        begin
          zfjk.isSuccess := zfjk.sc_json['ResponseInfo.retcode'].AsString;
          if zfjk.isSuccess = '000000' then      //成功
          begin
            btn_tk.Enabled := True;
            if Assigned(zfjk.sc_json['ResponseInfo.retdata.appid']) then
              edt_appid.Text := zfjk.sc_json['ResponseInfo.retdata.appid'].AsString;

            if Assigned(zfjk.sc_json['ResponseInfo.retdata.statusdesp']) then
              edt_status.Text := zfjk.sc_json['ResponseInfo.retdata.statusdesp'].AsString;

            if Assigned(zfjk.sc_json['ResponseInfo.retdata.amount']) then
              edt_amount.Text := zfjk.sc_json['ResponseInfo.retdata.amount'].AsString;

            if Assigned(zfjk.sc_json['ResponseInfo.retdata.gen_time']) then
              edt_time.Text := zfjk.sc_json['ResponseInfo.retdata.gen_time'].AsString;

            if Assigned(zfjk.sc_json['ResponseInfo.retdata.mer_aply_num']) then
              edt_num.Text := zfjk.sc_json['ResponseInfo.retdata.mer_aply_num'].AsString;

            if Assigned(zfjk.sc_json['ResponseInfo.retdata.mer_aply_amt']) then
              edt_amt.Text := zfjk.sc_json['ResponseInfo.retdata.mer_aply_amt'].AsString;

            if Assigned(zfjk.sc_json['ResponseInfo.retdata.fundchn_journal_no']) then
              edt_lsh.Text := zfjk.sc_json['ResponseInfo.retdata.fundchn_journal_no'].AsString;

            if Assigned(zfjk.sc_json['ResponseInfo.retdata.finishDate']) then
              edt_finishDate.Text := zfjk.sc_json['ResponseInfo.retdata.finishDate'].AsString;
          end
          else
          begin
            if Assigned(zfjk.sc_json['ResponseInfo.retmsg']) then
              zfjk.errMsg := zfjk.sc_json['ResponseInfo.retmsg'].AsString;
            Application.MessageBox(pchar('支付接口：' + zfjk.errMsg), '系统提示', MB_OK + MB_ICONWARNING);
          end;
        end;
      except
        on e:exception do
        Application.MessageBox(pchar('支付接口：' + zfjk.errMsg), '系统提示', MB_OK + MB_ICONWARNING);
      end;

    finally
      zfjk.Free;
    end;
  end;
  {$ENDREGION}
end;

{-------------------------------------------------------------------------------
  过程名:    TFrm_zfjk_cx.btn_tkClick
  功能:	     退款
  作者:      ljk
  日期:      2018.08.28
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_zfjk_cx.btn_tkClick(Sender: TObject);
var
  zfjk: TZfjk;
  zfjk_req: WideString;
  timestamp: string;  //服务端的时间
begin
  try
    if Trim(edt_reason.Text) = '' then
    begin
      Application.MessageBox(PChar('请录入退款原因！'),'系统提示',MB_OK + MB_ICONWARNING);
      edt_reason.SetFocus;
      abort;
    end;
    try
      zfjk := Tzfjk.Create;
      timestamp := zfjk.getTimestamp();
      zfjk_req := '{"RequestInfo": {'+
                  '"appid": "'+ zfjk.appid +'",'+	//商户号
                  '"submerno": "'+ zfjk.submerno +'",'+	//子商户号
                  '"channel": "'+ channel +'",'+	//支付渠道（Channel）参数
                  '"nonce": "'+ zfjk.getNonce(32) +'",'+  //32 位字符和数字随机字符串
                  '"order_no": "'+ Trim(edt_orderno.Text) +'",'+	//商户原始订单号
                  '"refund_no": "'+ zfjk.getOrderNo() +'",'+	//退款订单号
                  '"amount": "'+ Trim(edt_amount.Text) +'",'+	//退款金额
                  '"refund_type": "online",'+   //退款类型    online：联机单笔退款
                  '"paytype": "direct",'+		//退款方式  direct：直联退款
                  '"refund_reason": "'+ Trim(edt_reason.Text) +'",'+	//无理由退款
                  '"sign": "'+ zfjk.getSign('1',Trim(edt_amount.Text),zfjk.appid,Trim(edt_orderno.Text),timestamp,zfjk.zfjk_key) +'",'+
                  '"timestamp": "'+ timestamp +'",'+			//服务端的时间
                  '"ext_info1": "",'+
                  '"ext_info2": "",'+
                  '"ext_info3": ""'+
                  '"conditional_data":{"bizType": ""}}}';

      Frm_func.addLog('调用退款接口开始'+#13#10+'URL：'+zfjk.zfjk_url+#13#10+'zfjk_req：'+zfjk_req);
      zfjk.MyFun('refund',zfjk_req);
      Frm_func.addLog('sc_json：'+zfjk.sc +#13#10+'调用退款接口结束');
      Frm_func.addLog('0');

      if Assigned(zfjk.sc_json['ResponseInfo.retcode']) then  //succ：成功   fail：失败   error：错误
      begin
        zfjk.isSuccess := zfjk.sc_json['ResponseInfo.retcode'].AsString;
        if zfjk.isSuccess = 'succ' then
          Application.MessageBox( PChar(channel_name + '退款成功'), '系统提示',MB_OK)
        else
//        if zfjk.isSuccess = 'fail' then
//          Application.MessageBox( pchar(channel_name + '退款失败'), '系统提示',MB_OK + MB_ICONWARNING )
//        else
        if Assigned(zfjk.sc_json['ResponseInfo.retmsg']) then
        begin
          zfjk.errMsg := zfjk.sc_json['ResponseInfo.retmsg'].AsString;
          Application.MessageBox( pchar('支付接口：'+zfjk.errMsg), '系统提示',MB_OK + MB_ICONWARNING );
          Abort;
        end;
      end;
    except
        on e: Exception do
        begin
          Application.MessageBox(PChar(e.Message),'系统提示',MB_OK + MB_ICONWARNING);
          Abort;
        end;
    end;
  finally
    zfjk.Free;
  end;

end;

procedure TFrm_zfjk_cx.btn_cancleClick(Sender: TObject);
begin
  Close;
end;

end.
