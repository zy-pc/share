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
  channel,channel_name: string;  // ֧������, ֧����ʽ��΢�š�֧������
  txnmode: string;  //���׷�ʽ 1-֧�����ף�Ĭ�ϣ� 0-�˿��  ��Ϊ��ʵʱ��ѯʱ������ֻ��Ϊ1
  refund_no: string;  //������, �˿����


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
  ������:    TFrm_zfjk_cx.btn_cxClick
  ����:	     ��ѯ
  ����:      ljk
  ����:      2018.08.28
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure TFrm_zfjk_cx.btn_cxClick(Sender: TObject);
var
  zfjk: Tzfjk;
  zfjk_req: WideString;
  timestamp: string;

  status: string;		  //����״̬
  statusdesp: string;	//����״̬����
  amount: string;	    //�����ܽ��
  gen_time: string;		//�µ�ʱ��
  mer_aply_num: string;	//���˿����
  mer_aply_amt: string;	//���˿���
  fundchn_journal_no: string;	//�ʽ�ͨ��������ˮ��
  finishDate: string;	        //�����������YYYYMMDD
begin
  {$REGION '����-֧���ӿ�  ��ѯ'}
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
                    '"nonce": "'+ zfjk.getNonce(32) +'",'+	//��ѡ	32 λ�ַ�����������ַ���
                    '"timestamp": "'+ timestamp +'",'+
                    '"sign": "'+ zfjk.getSign('0','',zfjk.appid,Trim(edt_orderno.Text),timestamp,zfjk.zfjk_key) +'",'+
                    '"queryType": "1",'+
                    '"conditional_data": {'+
                    '"bizType": ""}}}';
        Frm_func.addLog('���ò�ѯ�ӿڿ�ʼ'+#13#10+'URL��'+zfjk.zfjk_url+#13#10+'zfjk_req��'+zfjk_req);
        zfjk.MyFun('queryInfo', zfjk_req);
        Frm_func.addLog('sc_json��'+zfjk.sc +#13#10 +'���ò�ѯ�ӿڽ���');
        Frm_func.addLog('0');

        if Assigned(zfjk.sc_json['ResponseInfo.retcode']) then
        begin
          zfjk.isSuccess := zfjk.sc_json['ResponseInfo.retcode'].AsString;
          if zfjk.isSuccess = '000000' then      //�ɹ�
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
            Application.MessageBox(pchar('֧���ӿڣ�' + zfjk.errMsg), 'ϵͳ��ʾ', MB_OK + MB_ICONWARNING);
          end;
        end;
      except
        on e:exception do
        Application.MessageBox(pchar('֧���ӿڣ�' + zfjk.errMsg), 'ϵͳ��ʾ', MB_OK + MB_ICONWARNING);
      end;

    finally
      zfjk.Free;
    end;
  end;
  {$ENDREGION}
end;

{-------------------------------------------------------------------------------
  ������:    TFrm_zfjk_cx.btn_tkClick
  ����:	     �˿�
  ����:      ljk
  ����:      2018.08.28
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure TFrm_zfjk_cx.btn_tkClick(Sender: TObject);
var
  zfjk: TZfjk;
  zfjk_req: WideString;
  timestamp: string;  //����˵�ʱ��
begin
  try
    if Trim(edt_reason.Text) = '' then
    begin
      Application.MessageBox(PChar('��¼���˿�ԭ��'),'ϵͳ��ʾ',MB_OK + MB_ICONWARNING);
      edt_reason.SetFocus;
      abort;
    end;
    try
      zfjk := Tzfjk.Create;
      timestamp := zfjk.getTimestamp();
      zfjk_req := '{"RequestInfo": {'+
                  '"appid": "'+ zfjk.appid +'",'+	//�̻���
                  '"submerno": "'+ zfjk.submerno +'",'+	//���̻���
                  '"channel": "'+ channel +'",'+	//֧��������Channel������
                  '"nonce": "'+ zfjk.getNonce(32) +'",'+  //32 λ�ַ�����������ַ���
                  '"order_no": "'+ Trim(edt_orderno.Text) +'",'+	//�̻�ԭʼ������
                  '"refund_no": "'+ zfjk.getOrderNo() +'",'+	//�˿����
                  '"amount": "'+ Trim(edt_amount.Text) +'",'+	//�˿���
                  '"refund_type": "online",'+   //�˿�����    online�����������˿�
                  '"paytype": "direct",'+		//�˿ʽ  direct��ֱ���˿�
                  '"refund_reason": "'+ Trim(edt_reason.Text) +'",'+	//�������˿�
                  '"sign": "'+ zfjk.getSign('1',Trim(edt_amount.Text),zfjk.appid,Trim(edt_orderno.Text),timestamp,zfjk.zfjk_key) +'",'+
                  '"timestamp": "'+ timestamp +'",'+			//����˵�ʱ��
                  '"ext_info1": "",'+
                  '"ext_info2": "",'+
                  '"ext_info3": ""'+
                  '"conditional_data":{"bizType": ""}}}';

      Frm_func.addLog('�����˿�ӿڿ�ʼ'+#13#10+'URL��'+zfjk.zfjk_url+#13#10+'zfjk_req��'+zfjk_req);
      zfjk.MyFun('refund',zfjk_req);
      Frm_func.addLog('sc_json��'+zfjk.sc +#13#10+'�����˿�ӿڽ���');
      Frm_func.addLog('0');

      if Assigned(zfjk.sc_json['ResponseInfo.retcode']) then  //succ���ɹ�   fail��ʧ��   error������
      begin
        zfjk.isSuccess := zfjk.sc_json['ResponseInfo.retcode'].AsString;
        if zfjk.isSuccess = 'succ' then
          Application.MessageBox( PChar(channel_name + '�˿�ɹ�'), 'ϵͳ��ʾ',MB_OK)
        else
//        if zfjk.isSuccess = 'fail' then
//          Application.MessageBox( pchar(channel_name + '�˿�ʧ��'), 'ϵͳ��ʾ',MB_OK + MB_ICONWARNING )
//        else
        if Assigned(zfjk.sc_json['ResponseInfo.retmsg']) then
        begin
          zfjk.errMsg := zfjk.sc_json['ResponseInfo.retmsg'].AsString;
          Application.MessageBox( pchar('֧���ӿڣ�'+zfjk.errMsg), 'ϵͳ��ʾ',MB_OK + MB_ICONWARNING );
          Abort;
        end;
      end;
    except
        on e: Exception do
        begin
          Application.MessageBox(PChar(e.Message),'ϵͳ��ʾ',MB_OK + MB_ICONWARNING);
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
