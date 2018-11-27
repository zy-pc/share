unit p_tjyz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, ComCtrls, DBCtrls,
  cxCalendar, Mask, cxMemo, cxRichEdit, Menus, cxLookAndFeelPainters,p_PassDllClare,
  cxButtons, cxCheckBox, GridsEh, DBGridEh, DBCtrlsEh,dateutils,
  DBGridEhGrouping,superobject, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, OleCtrls, SHDocVw;

type
  Tfrm_tjyz = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    qry_yz: TADOQuery;
    ds_yz: TDataSource;
    qry_in_ypmx: TADOQuery;
    qry_pub: TADOQuery;
    grid_yzlr: TDBGridEh;
    qry_ks: TADOQuery;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton7: TcxButton;
    qry_yzlist: TADOQuery;
    qry_in_clmx: TADOQuery;
    qry_in_fymx: TADOQuery;
    redit1: TRichEdit;
    sgjs: TCheckBox;
    qry_cx: TADOQuery;
    sp_lsyzzbsj: TADOStoredProc;
    sp_lsyzjmx: TADOStoredProc;
    sp_se_hljb: TADOStoredProc;
    cxDateEdit1: TDBDateTimeEditEh;
    cxDateEdit2: TDBDateTimeEditEh;
    qry_in_ljby: TADOQuery;
    qry_lcljyzxg: TADOQuery;
    qry_cx_ljmbmx: TADOQuery;
    ds_bycx: TDataSource;
    qry_bycx: TADOQuery;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Button2: TButton;
    Button3: TButton;
    DBGridEh2: TDBGridEh;
    qry_cjbyyy: TADOQuery;
    ds_cjbyyy: TDataSource;
    qry_ljdyyzcx: TADOQuery;
    qry_ytjyzcx: TADOQuery;
    qry_save_yyznr: TADOQuery;
    qry_cxks: TADOQuery;
    cxButton8: TcxButton;
    sp_tzyz: TADOStoredProc;
    spOrders: TADOStoredProc;
    sp_yzsj: TADOStoredProc;
    spOrders_xse: TADOStoredProc;
    qry_yfbkzxx: TADOQuery;
    sp_yfbkcfmx: TADOQuery;
    HTTP_yfbk: TIdHTTP;
    qry_yfbklj: TADOQuery;
    WebBrowser1: TWebBrowser;
    procedure Button2Click(Sender: TObject);
    procedure bt_exitClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure bt_moveallClick(Sender: TObject);
    procedure bt_moveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure refresh_zxyz;
    procedure ypyd_jj_cs;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure grid_yzlrCellClick(Column: TColumnEh);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxDateEdit2PropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qry_bycxAfterScroll(DataSet: TDataSet);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    function yfbksc(zyh :string):widestring;
    function strToJson(jsonstr:WideString):ISuperObject;
    function yfbk_jk(http: TIdHTTP; URL: string; InputJson: ISuperObject; var OutputJson: ISuperObject; var error: string): boolean;
  private
    { Private declarations }
    procedure ShallStopLongTermOrders;//停止长期医嘱
    procedure ShallStopLongTermOrders_XSE;//停止新生儿长期医嘱
  public
    tmh, zyh, xzyz, kdys, ysmc, ph,  jj, brxm,sfxse,tjqk,xsexh: string;
    F_passEnabled:Integer; //合理用药
     yfbk_json : ISuperObject;
     sc_yfbk_json : ISuperObject;
     pub_json : ISuperObject;
     error : string;
     yfbkjg : ISuperObject;
     yfbk_error : integer;
    { Public declarations }
  end;

var
  frm_tjyz: Tfrm_tjyz;
//  yfbkjg : ISuperObject;

implementation

{$R *.dfm}
uses p_func, p_dm, p_yzfz, p_yzinput,p_yzinput_xse,p_xzyf,p_yszx_yzinput,
  p_bqgl_zxypyz, p_pub_sj,p_yfbkts;


procedure Tfrm_tjyz.ypyd_jj_cs;
var
  hisypdm, jjgx: string;
begin
  hisypdm := '';
  jjgx := '';
  if qry_yz.Active then
  begin
    qry_yz.First;
    while not qry_yz.Eof do
    begin
      hisypdm := hisypdm + qry_yz.fieldbyname('xmdm').asstring + ',';
      qry_yz.Next;
    end;
    jjgx := xyyd_jj_js(hisypdm);
  end;
  if jjgx = '1' then
    redit1.Text := '禁忌提示'
  else
    redit1.Text := '禁忌提示' + jjgx;
end;

function Tfrm_tjyz.strToJson(jsonstr:WideString):ISuperObject;
begin
  jsonstr := StringReplace(jsonstr, #$D#$A, '', [rfReplaceAll]);
  pub_json := TSuperObject.Create();
  pub_json := SO(jsonstr);
  result := pub_json;
end;
 //zy
function Tfrm_tjyz.yfbksc(zyh :string): WideString;      //医方百科合理用药json生成
var
    yfbkstr :string;
    i:Integer;
   begin
   qry_yfbkzxx.Close;
   qry_yfbkzxx.Parameters.ParamByName('zyh').Value :=zyh;
   qry_yfbkzxx.Open;
   sp_yfbkcfmx.close;
   sp_yfbkcfmx.Parameters.ParamByName('zyh').Value :=zyh;
   sp_yfbkcfmx.open;
   yfbkstr :='{'+#13+'   '+'"授权ID": "ECA7309B-53C8-4078-B740-181E2E6F8967",'
                +#13+'   '+'"机构名称": "石泉县中医院",'
                +#13+'   '+'"处方号": "X201805020001",'
                +#13+'   '+'"病人姓名": "'+trim(qry_yfbkzxx.FieldByName('brxm').AsString)+'",'
                +#13+'   '+'"性别": "'+trim(qry_yfbkzxx.FieldByName('brxb').AsString)+'",'
                +#13+'   '+'"年龄": "'+trim(qry_yfbkzxx.FieldByName('brnl').AsString)+'",'
                +#13+'   '+'"人群": "'+trim(qry_yfbkzxx.FieldByName('tsrq').AsString)+'",'
                +#13+'   '+'"诊断结果": "'+trim(qry_yfbkzxx.FieldByName('ryzd').AsString)+'",'
                +#13+'   '+'"医生": "'+trim(qry_yfbkzxx.FieldByName('ysmc').AsString)+'",'
                +#13+'   '+'"科室": "'+trim(qry_yfbkzxx.FieldByName('ksmc').AsString)+'",'
                +#13+'   '+'"类别": "输液",'
                +#13+'   '+'"取药机构": "西药房",'
                +#13+'   '+'"处方明细": [ ';
      if not qry_yfbkzxx.IsEmpty then
      begin
        sp_yfbkcfmx.first;
        for i :=1 to sp_yfbkcfmx.RecordCount do
        begin
         // mzjsonstr := mzjsonstr + '"code": "' + sp_mz.FieldByName('code').AsString + '",';
          yfbkstr :=yfbkstr+#13+'    '+'{'+#13+'       '+'"药品名称":"'+trim(sp_yfbkcfmx.FieldByName('xmmc').asstring)+'",';
          yfbkstr :=yfbkstr+#13+'       '+'"规格":"'+trim(sp_yfbkcfmx.FieldByName('gg').asstring)+'",';
          yfbkstr :=yfbkstr+#13+'       '+'"用量单位":"'+trim(sp_yfbkcfmx.FieldByName('yldw').asstring)+'",' ;
          yfbkstr :=yfbkstr+#13+'       '+'"每次用量":"'+trim(sp_yfbkcfmx.FieldByName('ypyl').asstring)+'",' ;
          yfbkstr :=yfbkstr+#13+'       '+'"每日用量":"'+trim(sp_yfbkcfmx.FieldByName('mryl').asstring)+'",' ;
          yfbkstr :=yfbkstr+#13+'       '+'"每日次数":"'+trim(sp_yfbkcfmx.FieldByName('mrcs').asstring)+'",' ;
          yfbkstr :=yfbkstr+#13+'       '+'"用药天数":"'+trim(sp_yfbkcfmx.FieldByName('yyts').asstring)+'",' ;
          yfbkstr :=yfbkstr+#13+'       '+'"频次":"'+trim(sp_yfbkcfmx.FieldByName('pc').asstring)+'",' ;
          yfbkstr :=yfbkstr+#13+'       '+'"用法":"'+trim(sp_yfbkcfmx.FieldByName('yf').asstring)+'",' ;
          yfbkstr :=yfbkstr+#13+'       '+'"组号":"'+trim(sp_yfbkcfmx.FieldByName('zh').asstring)+'",' ;
          yfbkstr :=yfbkstr+#13+'       '+'"单位":"'+trim(sp_yfbkcfmx.FieldByName('zyyfdw').asstring)+'",' ;
          yfbkstr :=yfbkstr+#13+'       '+'"数量":"'+trim(sp_yfbkcfmx.FieldByName('sl').asstring)+'",' ;
          yfbkstr :=yfbkstr+#13+'       '+'"金额":"'+trim(sp_yfbkcfmx.FieldByName('yplsj').asstring)+'"' ;
         if i=sp_yfbkcfmx.RecordCount then
         begin
            yfbkstr := yfbkstr +#13+'    '+'}'+#13+'   '+']'+#13+'}';
         end
         else
         begin
            yfbkstr := yfbkstr +#13+'    '+'},';
         end;
         //showmessage(yfbkstr);
          sp_yfbkcfmx.Next;
        end;
      end;
      if sp_yfbkcfmx.RecordCount = 0 then
      begin
        yfbk_error := 0;
      end
      else
      begin
        yfbk_error := 1;
      end;
      yfbk_json := strToJson(yfbkstr);
                // ShowMessage(yfbkstr);
   end;

function Tfrm_tjyz.yfbk_jk(http: TIdHTTP; URL: string; InputJson: ISuperObject; var OutputJson: ISuperObject; var error: string): boolean; //医方百科调用连接方式
var
  tmpstr: ansistring;
  stream, TargetStream: TMemoryStream;
begin
  OutputJson := nil;
  tmpstr := utf8encode(InputJson.AsString);
  Stream := TMemoryStream.Create;
  Stream.Write(tmpstr[1], Length(tmpstr));
  Stream.Position := 0;
  TargetStream := TMemoryStream.Create;
  http.Request.Connection := 'Keep-Alive';
  http.Request.ContentType := 'application/json';
  try
    http.Post(url, Stream, TargetStream);
    result := (TargetStream.Size > 0);
  except
    on e: exception do
    begin
      result := false;
      Error := '[' + e.ClassName + ']-' + e.Message;
      exit;
    end;
  end;
  http.Disconnect;
  if OutputJson <> nil then
    FreeAndNil(OutputJson);
  if result then
  begin
    TargetStream.Position := 0;
    SetLength(tmpstr, TargetStream.Size);
    TargetStream.Read(tmpstr[1], TargetStream.Size);
    try
      tmpstr := ansistring(utf8decode(tmpstr));
      OutputJson := strToJson(tmpstr);
//      yfbkjg := OutputJson.AsString;
      yfbkjg := OutputJson;
      result := true;
    except
      on e: exception do
      begin
        result := false;
        if OutputJson <> nil then
          FreeAndNil(OutputJson);
        Error := '[' + e.ClassName + ']-' + e.Message;
      end;
    end;
  end;
  if  tmpstr<>'' then
  begin
    try
      application.createform(Tfrm_yfbkts, frm_yfbkts);
      frm_yfbkts.showmodal;
    finally
      frm_yfbkts.free;
    end;
  end;
  FreeAndNil(Stream);
  FreeAndNil(TargetStream);
end;
 //zy

procedure Tfrm_tjyz.refresh_zxyz;
begin
  qry_yz.Close;
  qry_yz.SQL.Clear;
  if sfxse='新生儿' then
  qry_yz.SQL.Text := 'select * from zybl_zyyz where zyh=' + #39 + zyh + #39 +
    ' and zxbz=0 and zfbz=0 and tzbz=0 and jcff=''新生儿'' and czys='+''''+xsexh+
    ''''
  else
  qry_yz.SQL.Text := 'select * from zybl_zyyz where jcff is null and  zyh=' + #39 + zyh + #39 +
    ' and zxbz=0 and zfbz=0 and tzbz=0 ';

  qry_yz.Open;
end;

procedure Tfrm_tjyz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if sfxse='新生儿' then
  frm_yzinput_xse.refresh_yz
  else
  frm_yzinput.refresh_yz;
end;

procedure Tfrm_tjyz.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol, true, true);
end;

procedure Tfrm_tjyz.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.RecordViewInfo.GridRecord.Values[11] then
    ACanvas.Brush.Color := rgb(135, 172, 159)
end;

procedure Tfrm_tjyz.DBGridEh2DblClick(Sender: TObject);
begin
  Memo1.text:='';
  Memo1.text:=Trim(qry_cjbyyy.FieldByName('bymc').AsString);
  ComboBox1.text:='';
  ComboBox1.text:=Trim(qry_cjbyyy.FieldByName('bylb').AsString);
  Memo1.SetFocus;
end;

procedure Tfrm_tjyz.DBGridEh2Exit(Sender: TObject);
begin
  DBGridEh2.Visible:=False;
end;

procedure Tfrm_tjyz.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Memo1.text:='';
    Memo1.text:=Trim(qry_cjbyyy.FieldByName('bymc').AsString);
    ComboBox1.text:='';
    ComboBox1.text:=Trim(qry_cjbyyy.FieldByName('bylb').AsString);
    Memo1.SetFocus;
  end
  else
    if Key = #27 then
      Memo1.SetFocus;
end;

procedure Tfrm_tjyz.FormShow(Sender: TObject);
begin
  //sfxse:='';
  cxdateedit1.Value := frm_func.curr_date;
  cxdateedit2.Value := frm_func.curr_date;
  sgjs.Checked := true;
  refresh_zxyz;
  cxButton5.Click;
  if pub_yydm='0246' then
  begin
    cxButton8.Visible:=True;
  end
  else
  begin
    cxButton8.Visible:=false;
  end;
end;

procedure Tfrm_tjyz.grid_yzlrCellClick(Column: TColumnEh);
begin
  if grid_yzlr.Focused then
  begin
    qry_yz.Edit;
    qry_yz.FieldByName('zxbz').Value := not qry_yz.FieldByName('zxbz').Value;
    qry_yz.Post;
  end;
end;

procedure Tfrm_tjyz.qry_bycxAfterScroll(DataSet: TDataSet);
begin
  Memo1.Text:='';
  Memo1.Text:=trim(qry_bycx.FieldByName('byyy').asstring);
  ComboBox1.text:=trim(qry_bycx.FieldByName('bylb').asstring);
end;

procedure Tfrm_tjyz.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if qry_yz.RecordCount > 0 then
  begin
    if xzyz = '' then
      xzyz := qry_yz.FieldByName('id').AsString
    else
      xzyz := xzyz + ',' + qry_yz.FieldByName('id').AsString;
    refresh_zxyz;
  end;
  //禁忌提示
  ypyd_jj_cs;
end;

procedure Tfrm_tjyz.Button1Click(Sender: TObject);
begin
//  if qry_yz.RecordCount = 0 then abort;
//  qry_yz.First;
//  while not qry_yz.Eof do
//  begin
//    if xzyz = '' then
//      xzyz := qry_yz.FieldByName('id').AsString
//    else
//      xzyz := xzyz + ',' + qry_yz.FieldByName('id').AsString;
//    qry_yz.Next;
//  end;
//  refresh_zxyz;
////禁忌提示
//  ypyd_jj_cs;
  qry_cjbyyy.Close;
  qry_cjbyyy.sql.Text:='select a.MC bymc,b.MC bylb from LCLJ_BYCJYY a,LCLJ_BYCJYY b where a.SJ=b.bm order by b.mc';
  qry_cjbyyy.Open;
  if not qry_cjbyyy.IsEmpty then
  begin
    DBGridEh2.Visible:=True;
    DBGridEh2.SetFocus;
  end;

end;

procedure Tfrm_tjyz.bt_moveClick(Sender: TObject);
var
  curr_yzid: string;
  len_yzid: integer; //ID长度
begin
  if xzyz <> '' then
  begin
    if pos(',', xzyz) = 0 then
    begin
      xzyz := '';
      refresh_zxyz;
      abort;
    end;
    curr_yzid := trim(qry_yz.FieldByName('id').AsString);
    len_yzid := length(curr_yzid);

    if pos(curr_yzid, xzyz) = 0 then abort;
    if pos(curr_yzid, xzyz) = 1 then
    begin
      delete(xzyz, 1, len_yzid + 1);
    end else
      delete(xzyz, pos(curr_yzid, xzyz) - 1, len_yzid + 1);
    begin
    end;
    refresh_zxyz;
  end;
//禁忌提示
  ypyd_jj_cs;
end;

procedure Tfrm_tjyz.bt_moveallClick(Sender: TObject);
begin
  if qry_yz.RecordCount > 0 then
  begin
    xzyz := '';
    refresh_zxyz;
  end;
end;

procedure Tfrm_tjyz.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not ((key in ['0'..'9']) or (key = #8) or (key = #46) or (key = #8)) then
    key := chr(0);
end;

procedure Tfrm_tjyz.cxButton1Click(Sender: TObject);
begin
  qry_yz.DisableControls;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if trim(qry_yz.FieldByName('lb').AsString) = '药品' then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName('zxbz').Value := 1;
      qry_yz.Post;
    end;
    qry_yz.Next;
  end;
  qry_yz.EnableControls;
end;

procedure Tfrm_tjyz.cxButton2Click(Sender: TObject);
begin
  qry_yz.DisableControls;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if trim(qry_yz.FieldByName('lb').AsString) = '材料' then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName('zxbz').Value := 1;
      qry_yz.Post;
    end;
    qry_yz.Next;
  end;
  qry_yz.EnableControls;
end;

procedure Tfrm_tjyz.cxButton3Click(Sender: TObject);
var zkxx,tjph,xyf,chyf,_tmh,_bch,_ksdm,_brxm,_sbyy,_zxsj,_yfdm,_hljbmc,_hljbdm,_tjrq:string;
    zyzjsl,tjsl,ktqsj,xcxs:Integer;
    ypje,tjje:Real;
    ljyzid:string;
    yzljid,yzxmid,hxnr,yhxnr,yzxzid,ywby,v_czks,new_fzbh:string;
    xghyznr:string;
    v_xmmc:string;
    czks1:string;
    v_yzbh:string;
    acsj:TDateTime;
    twbkg:Boolean;
    vbrxb,vyzsx,vyzlb:string;//病人性别;
    vBeginTime,vEndTime:Variant;//医嘱停止开始时间，停止时间
begin
  //类别为其他的项目中出现 "出院" "死亡" "转科" 字样，则提示是否停止所有长期医嘱
  if sfxse='新生儿' then
  begin
    ShallStopLongTermOrders_XSE;
  end else
  begin
    ShallStopLongTermOrders;
  end;
  gi_passenabled := F_passEnabled;  //合理用药传值
  if (pub_yydm='0003') or (pub_yydm='0240')  then //沙雅人民医院
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.SQL.text:='select * from sys_xt_kg';
    dm_data.qry_pub.Open;
    twbkg:=dm_data.qry_pub.FieldByName('twbxbb').AsBoolean;
    if twbkg=true then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text:='select min(ryrq) acsj  from twb_brxx with(nolock) where zyh='+''''+
      zyh+'''';
      DM_data.qry_pub.Open;
      acsj:=  DM_data.qry_pub.FieldByName('acsj').AsDateTime;
    end
    else
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text:='select min(ryrq) acsj  from zybl_cgjl with(nolock) where zyh='+''''+
      zyh+'''';
      DM_data.qry_pub.Open;
      acsj:=  DM_data.qry_pub.FieldByName('acsj').AsDateTime;
    end;
    if cxDateEdit1.Value<acsj then
    begin
      application.MessageBox('医嘱开始时间不能小于安床时间！!', '提示', 0 + 48);
      Exit;
    end;
  end;
  
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select sysyszxxt from sys_xt_kg';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('sysyszxxt').AsBoolean then
  if ((pub_yydm='0015') and (pub_bqdm<>'0009')) or (pub_yydm<>'0015') then
  begin //运输中心相关
    qry_yz.First;
    while not qry_yz.Eof do
    begin
      if (trim(qry_yz['lb'])='检查') and (qry_yz.FieldByName('zxbz').AsBoolean) then
      begin
        try
          Application.CreateForm( Tfrm_yszx_yzinput, frm_yszx_yzinput);
          frm_yszx_yzinput.edt_xmmc.Text := Trim(qry_yz['xmmc']);
          frm_yszx_yzinput.edt_zysx.Text := '';
          frm_yszx_yzinput.ShowModal;
          if frm_yszx_yzinput.ModalResult = mrOk then
          begin
            frm_yszx_yzinput.edt_zysx.Text :=
               Trim(StringReplace(frm_yszx_yzinput.edt_zysx.Text,',','，',[rfReplaceAll]));
            frm_yszx_yzinput.edt_jcyq.Text :=
               Trim(StringReplace(frm_yszx_yzinput.edt_jcyq.Text,',','，',[rfReplaceAll]));
            DM_data.qry_pub.close;
            DM_data.qry_pub.SQL.Text:='select * from Yszx_brys_ls where zyh='''+zyh+
                                      ''' and yzbh='''+qry_yz.FieldByName('xh').AsString+'''';
            DM_data.qry_pub.open;
            DM_data.qry_pub.Append;
            DM_data.qry_pub['tmh']   := qry_yz['tmh'];
            DM_data.qry_pub['zyh']   := zyh;
            DM_data.qry_pub['yzbh']  := qry_yz['xh'];
            //运输中心应使用医嘱的开单时间作为YZSJ
            DM_data.qry_pub['yzsj']  := cxDateEdit1.Value;
            DM_data.qry_pub['ysfs']  := Trim(frm_yszx_yzinput.edt_ysfs.Text);
            DM_data.qry_pub['brszks']:= frm_yzinput.sp_jbxx['ksdm'];
            DM_data.qry_pub['bch']   := frm_yzinput.sp_jbxx['bch'];
            DM_data.qry_pub['bz']    := Trim(frm_yszx_yzinput.edt_zysx.Text);
            DM_data.qry_pub['jcxm']  := Trim(qry_yz['xmmc']);
            DM_data.qry_pub['tssm']  := Trim(frm_yszx_yzinput.edt_jcyq.Text);
            DM_data.qry_pub['jcks'] := qry_yz['czks'];
            DM_data.qry_pub['brxm'] := Trim(frm_yzinput.sp_jbxx['brxm']);
            DM_data.qry_pub['qxbz'] := False;
            DM_data.qry_pub['zfbz'] := False;
            DM_data.qry_pub['yzzxbz'] := False;
            if frm_yszx_yzinput.edt_sfjj.itemindex = 1 then
            begin//紧急
              DM_data.qry_pub['sfjz'] := True;
            end
            else
            begin
              DM_data.qry_pub['sfjz'] := False;
            end;
            DM_data.qry_pub.Post;
            DM_data.qry_pub.UpdateBatch(arAll);
          end;

        finally
          frm_yszx_yzinput.Free;
        end;
      end;
      qry_yz.Next;
    end;
  { v_czks:='';
    qry_yz.First;
    while not qry_yz.Eof do
    begin
      if (trim(qry_yz.FieldByName('lb').asstring)='检查') and (qry_yz.FieldByName('zxbz').asboolean=true) then
      begin
        if Pos(trim(qry_yz.FieldByName('czks').asstring),v_czks)<1 then
        begin
          v_czks:=v_czks+ trim(qry_yz.FieldByName('czks').asstring)+',';
        end;
      end;
      qry_yz.Next;
    end;
    while Pos(',',v_czks)>0 do
    begin
      v_xmmc:='';
      v_yzbh:='';
      czks1:=Copy(v_czks,1,4);
      qry_yz.First;
      while not qry_yz.Eof do
      begin
        if (trim(qry_yz.FieldByName('lb').asstring)='检查') and (qry_yz.FieldByName('zxbz').asboolean=true)
          and (trim(qry_yz.FieldByName('czks').asstring)=czks1) then
        begin
          v_xmmc:=v_xmmc+ trim(qry_yz.FieldByName('xmmc').asstring)+',';
          v_yzbh:=v_yzbh+  trim(qry_yz.FieldByName('xh').asstring)+',';
        end;
        qry_yz.Next;
      end;
      v_xmmc:=Copy(v_xmmc,1,length(v_xmmc)-1);
      if v_xmmc<>'' then
      begin
        try
          Application.CreateForm( Tfrm_yszx_yzinput, frm_yszx_yzinput);
          frm_yszx_yzinput.edt_xmmc.Text := v_xmmc;
          frm_yszx_yzinput.edt_zysx.Text := '';
          frm_yszx_yzinput.ShowModal;
          if frm_yszx_yzinput.ModalResult = mrOk then
          begin
            frm_yszx_yzinput.edt_zysx.Text :=
               Trim(StringReplace(frm_yszx_yzinput.edt_zysx.Text,',','，',[rfReplaceAll]));
            frm_yszx_yzinput.edt_jcyq.Text :=
               Trim(StringReplace(frm_yszx_yzinput.edt_jcyq.Text,',','，',[rfReplaceAll]));
            DM_data.qry_pub.close;
            DM_data.qry_pub.SQL.Text:='select * from Yszx_brys where zyh='''+zyh+
                                      ''' and yzbh='''+qry_yz.FieldByName( 'xh' ).AsString+'''';
            DM_data.qry_pub.open;
            DM_data.qry_pub.Append;
            DM_data.qry_pub['tmh']:=qry_yz['tmh'];
            DM_data.qry_pub['yzbh']:=','+v_yzbh;
            DM_data.qry_pub.FieldByName('zyh').Value:=zyh;
            //DM_data.qry_pub.FieldByName('yzsj').Value:=Frm_func.curr_date;
            //运输中心应使用医嘱的开单时间作为YZSJ
            DM_data.qry_pub['yzsj']:=cxDateEdit1.Value;
            DM_data.qry_pub['ysfs']:=frm_yszx_yzinput.edt_ysfs.Text;
            DM_data.qry_pub['brszks']:=frm_yzinput.sp_jbxx['ryksmc'];
            DM_data.qry_pub['ch']:=frm_yzinput.sp_jbxx['bch'];
            DM_data.qry_pub['zysx']:=frm_yszx_yzinput.edt_zysx.Text;
            DM_data.qry_pub['jcxm']:=v_xmmc;
            DM_data.qry_pub['jcxq']:=frm_yszx_yzinput.edt_jcyq.Text;
            qry_cxks.close;
            qry_cxks.sql.text:='select * from sys_ksdm where dm='+''''+czks1+'''';
            qry_cxks.Open;
            DM_data.qry_pub['jcks']:=Trim(qry_cxks['mc']);
            DM_data.qry_pub['blid']:=1;
            DM_data.qry_pub['kdys']:=pub_czydm;
            if frm_yszx_yzinput.edt_sfjj.itemindex = 1 then
            begin//紧急
              DM_data.qry_pub['sfjz']:=True;
            end
            else
            begin
              DM_data.qry_pub['sfjz']:=False;
            end;
            DM_data.qry_pub.Post;
            DM_data.qry_pub.UpdateBatch(arAll);
          end;

        finally
          frm_yszx_yzinput.Free;
        end;
      end;
      v_czks:=Copy(v_czks,6,10000);
    end; }
  end;
  yzxzid:='';
  ywby:='';
//  if FormatDateTime('yyyyMMdd',cxDateEdit1.Date)<FormatDateTime('yyyyMMdd',now) then
//  begin
//     ShowMessage('开始日期不能小于当前日期,请重新录入!');
//     Abort;
//  end;
//  if cxDateEdit1.Value<Frm_func.curr_date then
//  begin
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.sql.Text:='select * from sys_xt_kg';
//    DM_data.qry_pub.Open;
//    ktqsj:=DM_data.qry_pub.FieldByName('yzktqsj').AsInteger;
//    xcxs:=hoursbetween(cxDateEdit1.Value,Frm_func.curr_date);
//    if xcxs>ktqsj then
//    begin
//      application.MessageBox(PChar('医嘱开始日期不能小于或超过当前时间'+IntToStr(ktqsj)+'小时'), '提示', 0 + 48);
//      Exit;
//    end;
//  end;
    _tjrq:= formatdatetime('yyyyMMdd',cxDateEdit1.Value);
    if sfxse<>'新生儿' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text:='select * from LCLJ_brlclj where zt=1 and zyh='+''''+zyh+'''';
      DM_data.qry_pub.Open;
      if not DM_data.qry_pub.IsEmpty then
      begin
        qry_ljdyyzcx.close;
        qry_ljdyyzcx.SQL.text:='select b.* from lclj_brljzx_mx a,lclj_lcljxm b where a.zyh='+''''+zyh+''''+
        ' and a.ljid=b.ljid and a.jdid=b.jdid and a.xmid=b.xmid and xmfl=0 and a.rq='+''''+_tjrq+
        '''';
        qry_ljdyyzcx.Open;
        if qry_ljdyyzcx.isempty then
        begin
          ljyzid:='';
        end
        else
        begin
          qry_ljdyyzcx.First;
          while not qry_ljdyyzcx.eof do
          begin
            yzljid:=qry_ljdyyzcx.FieldByName('ljid').AsString;
            yzxmid:=qry_ljdyyzcx.FieldByName('xmid').AsString;
            DM_data.qry_pub.close;
            DM_data.qry_pub.SQL.text:='select * from lclj_blmbmx where ztid='+''''+yzljid+''''+
            ' and xmid='+''''+yzxmid+''''+' and yzsxb=''必选'' and ((yzsx=''临时'') or '+
            ' (yzsx=''长期'' and convert(varchar,id)+'',''+yzsxb not in (select isnull(jcbw,'''') from zybl_zyyz where zyh='+
            ''''+zyh+''''+'and zxbz=1)))';
            DM_data.qry_pub.Open;
            if DM_data.qry_pub.IsEmpty then
            begin
              ljyzid:='';
            end
            else
            begin
              DM_data.qry_pub.First;
              while not DM_data.qry_pub.eof do
              begin
                ljyzid:=ljyzid+DM_data.qry_pub.FieldByName('id').AsString+',';
                DM_data.qry_pub.Next;
              end;
            end;
            qry_ljdyyzcx.Next;
          end;
        end;
        qry_in_ljby.Close;
        qry_in_ljby.SQL.Text:='select * from lclj_yzby where 1<>1';
        qry_in_ljby.Open;

        qry_yz.First;
        while not qry_yz.Eof do
        begin
              if pub_yydm='0003' then
              begin
                DM_data.qry_pub.close;
                DM_data.qry_pub.SQL.Text:='select * from zybl_zyyz_dytjsz where dyxm=''输液计划单'''+' and '+
                ' yytj='+''''+trim( qry_yz.FieldByName( 'yytj' ).AsString )+'''';
                DM_data.qry_pub.Open;
                if not DM_data.qry_pub.IsEmpty then
                begin
                  if trim( qry_yz.FieldByName( 'fzph' ).AsString )='' then
                  begin
                    new_fzbh := get_sjh( pub_czydm );
                    qry_yz.Edit;
                    qry_yz.FieldByName( 'fzph' ).Value := new_fzbh;
                    qry_yz.Post;
                  end;
                end;
              end;
          if (trim(qry_yz.FieldByName('jcbw').asstring)='') and (qry_yz.FieldByName('zxbz').asboolean=true) then
          begin
            qry_ytjyzcx.Close;
            qry_ytjyzcx.sql.Text:='select * from lclj_blmbmx where ztid='+''''+yzljid+''''+' and xmid in ('+
            ' select b.xmid from lclj_brljzx_mx a,lclj_lcljxm b where a.zyh='+''''+zyh+''''+
            ' and a.ljid=b.ljid and a.jdid=b.jdid and a.xmid=b.xmid and xmfl=0 and a.rq='+''''+_tjrq+
            ''''+') and rtrim(yzsx)='+''''+Trim(qry_yz.FieldByName('yzsx').asstring)+''''+
            ' and '+' rtrim(lb)='+''''+Trim(qry_yz.FieldByName('lb').asstring)+''''+
            ' and '+' rtrim(xmdm)='+''''+Trim(qry_yz.FieldByName('xmdm').asstring)+''''+
            ' and '+' rtrim(xmmc)='+''''+Trim(qry_yz.FieldByName('xmmc').asstring)+''''+
            ' and '+' rtrim(ypyf)='+''''+Trim(qry_yz.FieldByName('ypyf').asstring)+''''+
            //' and '+' rtrim(ypyl)='+''''+Trim(qry_yz.FieldByName('ypyl').asstring)+''''+
            ' and '+' rtrim(dw)='+''''+Trim(qry_yz.FieldByName('dw').asstring)+''''+
            ' and '+' rtrim(yytj)='+''''+Trim(qry_yz.FieldByName('yytj').asstring)+''''+
            //' and '+' rtrim(sl)='+Trim(qry_yz.FieldByName('sl').asstring)+
            ' and '+' rtrim(jyyb)='+''''+Trim(qry_yz.FieldByName('jyyb').asstring)+''''+
            ' and convert(varchar,id)+'',''+yzsxb not in (select isnull(jcbw,'''') from zybl_zyyz where zyh='+''''
            +zyh+''''+' and convert(varchar,kdrq,112)='+''''+_tjrq+''''+')';
            qry_ytjyzcx.Open;
            if not qry_ytjyzcx.IsEmpty then   //非增加新医嘱，是增加路径中的医嘱自己录入
            begin
              qry_yz.Edit;
              qry_yz.FieldByName('jcbw').asstring:=qry_ytjyzcx.FieldByName('id').AsString+','+
              qry_ytjyzcx.FieldByName('yzsxb').AsString;
              qry_yz.Post;
            end
            else
            begin
              qry_in_ljby.Append;
              qry_in_ljby.FieldByName('zyh').asstring:=zyh;
              qry_in_ljby.FieldByName('yyznr').asstring:='';
              if (Trim(qry_yz.FieldByName('lb').asstring)='药品') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='成药') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='药一') then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 药品用法:'+
              trim(qry_yz.FieldByName('ypyf').asstring)+' '+
              ' 药品用量:'+trim(qry_yz.FieldByName('ypyl').asstring)+
              trim(qry_yz.FieldByName('yldw').asstring)+' '+
              ' 用药途径:'+trim(qry_yz.FieldByName('yytj').asstring);

              if (Trim(qry_yz.FieldByName('lb').asstring)='检验') then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 检验样本为:'+
              trim(qry_yz.FieldByName('jyyb').asstring);

              if (Trim(qry_yz.FieldByName('lb').asstring)='检查') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='治疗') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='材料') or
                  (Trim(qry_yz.FieldByName('lb').asstring)='草药')  then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 数量为:'+
              trim(qry_yz.FieldByName('sl').asstring)+trim(qry_yz.FieldByName('dw').asstring);

              if (Trim(qry_yz.FieldByName('lb').asstring)='其它') then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring);

              qry_in_ljby.FieldByName('yznr').asstring:=Trim(qry_yz.FieldByName('yzsx').asstring)+
              trim(qry_yz.FieldByName('lb').asstring)+'类医嘱,'+hxnr;
              qry_in_ljby.FieldByName('byyy').asstring:='';
              qry_in_ljby.FieldByName('byyr').asstring:=pub_czydm;
              qry_in_ljby.FieldByName('rq').asstring:=_tjrq;
              qry_in_ljby.FieldByName('bz').asstring:='新增医嘱';
              qry_in_ljby.FieldByName('bylb').asstring:='';
              qry_in_ljby.Post;
              qry_in_ljby.UpdateBatch(arall);
              ywby:='1';
            end;
          end;
          if (trim(qry_yz.FieldByName('jcbw').asstring)<>'') and  (qry_yz.FieldByName('zxbz').asboolean=true)  then
          begin
            qry_lcljyzxg.Close;
            qry_lcljyzxg.SQL.text:='select * from lclj_blmbmx where id='+
            Copy(Trim(qry_yz.FieldByName('jcbw').asstring),1,Pos(',',Trim(qry_yz.FieldByName('jcbw').asstring))-1);
            qry_lcljyzxg.Open;
            if  qry_lcljyzxg.IsEmpty then
            begin
              qry_in_ljby.Append;
              qry_in_ljby.FieldByName('zyh').asstring:=zyh;
              qry_in_ljby.FieldByName('yyznr').asstring:='';
              if (Trim(qry_yz.FieldByName('lb').asstring)='药品') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='成药') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='药一') then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 药品用法:'+
              trim(qry_yz.FieldByName('ypyf').asstring)+' '+
              ' 药品用量:'+trim(qry_yz.FieldByName('ypyl').asstring)+
              trim(qry_yz.FieldByName('yldw').asstring)+' '+
              ' 用药途径:'+trim(qry_yz.FieldByName('yytj').asstring);

              if (Trim(qry_yz.FieldByName('lb').asstring)='检验') then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 检验样本为:'+
              trim(qry_yz.FieldByName('jyyb').asstring);

              if (Trim(qry_yz.FieldByName('lb').asstring)='检查') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='治疗') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='材料') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='草药')  then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 数量为:'+
              trim(qry_yz.FieldByName('sl').asstring)+trim(qry_yz.FieldByName('dw').asstring);

              if (Trim(qry_yz.FieldByName('lb').asstring)='其它') then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring);

              qry_in_ljby.FieldByName('yznr').asstring:=Trim(qry_yz.FieldByName('yzsx').asstring)+
              trim(qry_yz.FieldByName('lb').asstring)+'类医嘱,'+hxnr;
              qry_in_ljby.FieldByName('byyy').asstring:='';
              qry_in_ljby.FieldByName('byyr').asstring:=pub_czydm;
              qry_in_ljby.FieldByName('rq').asstring:=_tjrq;
              qry_in_ljby.FieldByName('bz').asstring:='新增医嘱';
              qry_in_ljby.FieldByName('bylb').asstring:='';
              qry_in_ljby.Post;
              qry_in_ljby.UpdateBatch(arall);
              ywby:='1';
            end
            else if (trim(qry_lcljyzxg.FieldByName('xmmc').asstring)<>trim(qry_yz.FieldByName('xmmc').asstring)) or
              (trim(qry_lcljyzxg.FieldByName('lb').asstring)<>trim(qry_yz.FieldByName('lb').asstring)) or
              (trim(qry_lcljyzxg.FieldByName('yzsx').asstring)<>trim(qry_yz.FieldByName('yzsx').asstring)) or
              (trim(qry_lcljyzxg.FieldByName('xmdm').asstring)<>trim(qry_yz.FieldByName('xmdm').asstring)) or
              (trim(qry_lcljyzxg.FieldByName('ypyf').asstring)<>trim(qry_yz.FieldByName('ypyf').asstring)) or
              //(trim(qry_lcljyzxg.FieldByName('ypyl').asstring)<>trim(qry_yz.FieldByName('ypyl').asstring)) or
              (trim(qry_lcljyzxg.FieldByName('yldw').asstring)<>trim(qry_yz.FieldByName('yldw').asstring)) or
              (trim(qry_lcljyzxg.FieldByName('dw').asstring)<>trim(qry_yz.FieldByName('dw').asstring)) or
              //(trim(qry_lcljyzxg.FieldByName('sl').asstring)<>trim(qry_yz.FieldByName('sl').asstring)) or
              (trim(qry_lcljyzxg.FieldByName('yytj').asstring)<>trim(qry_yz.FieldByName('yytj').asstring)) or
              (trim(qry_lcljyzxg.FieldByName('jyyb').asstring)<>trim(qry_yz.FieldByName('jyyb').asstring)) then

            begin
              qry_in_ljby.Append;
              qry_in_ljby.FieldByName('zyh').asstring:=zyh;
              //qry_in_ljby.FieldByName('yyznr').asstring:='';
              //修改后医嘱内容
              if (Trim(qry_yz.FieldByName('lb').asstring)='药品') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='成药') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='药一') then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 药品用法:'+
              trim(qry_yz.FieldByName('ypyf').asstring)+' '+
              ' 药品用量:'+trim(qry_yz.FieldByName('ypyl').asstring)+
              trim(qry_yz.FieldByName('yldw').asstring)+' '+
              ' 用药途径:'+trim(qry_yz.FieldByName('yytj').asstring);

              if (Trim(qry_yz.FieldByName('lb').asstring)='检验') then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 检验样本为:'+
              trim(qry_yz.FieldByName('jyyb').asstring);

              if (Trim(qry_yz.FieldByName('lb').asstring)='检查') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='治疗') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='材料') or
                 (Trim(qry_yz.FieldByName('lb').asstring)='草药')  then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 数量为:'+
              trim(qry_yz.FieldByName('sl').asstring)+trim(qry_yz.FieldByName('dw').asstring);

              if (Trim(qry_yz.FieldByName('lb').asstring)='其它') then
              hxnr:=trim(qry_yz.FieldByName('xmmc').asstring);

              qry_in_ljby.FieldByName('yznr').asstring:=Trim(qry_yz.FieldByName('yzsx').asstring)+
              trim(qry_yz.FieldByName('lb').asstring)+'类医嘱,'+hxnr;

               //原医嘱内容
              if (Trim(qry_lcljyzxg.FieldByName('lb').asstring)='药品') or
                 (Trim(qry_lcljyzxg.FieldByName('lb').asstring)='成药') or
                 (Trim(qry_lcljyzxg.FieldByName('lb').asstring)='药一') then
              yhxnr:=trim(qry_lcljyzxg.FieldByName('xmmc').asstring)+' 药品用法:'+
              trim(qry_lcljyzxg.FieldByName('ypyf').asstring)+' '+
              ' 药品用量:'+trim(qry_lcljyzxg.FieldByName('ypyl').asstring)+
              trim(qry_lcljyzxg.FieldByName('yldw').asstring)+' '+
              ' 用药途径:'+trim(qry_lcljyzxg.FieldByName('yytj').asstring);

              if (Trim(qry_lcljyzxg.FieldByName('lb').asstring)='检验') then
              yhxnr:=trim(qry_lcljyzxg.FieldByName('xmmc').asstring)+' 检验样本为:'+
              trim(qry_lcljyzxg.FieldByName('jyyb').asstring);

              if (Trim(qry_lcljyzxg.FieldByName('lb').asstring)='检查') or
                 (Trim(qry_lcljyzxg.FieldByName('lb').asstring)='治疗') or
                 (Trim(qry_lcljyzxg.FieldByName('lb').asstring)='材料') or
                 (Trim(qry_lcljyzxg.FieldByName('lb').asstring)='草药')  then
              yhxnr:=trim(qry_lcljyzxg.FieldByName('xmmc').asstring)+' 数量为:'+
              trim(qry_lcljyzxg.FieldByName('sl').asstring)+trim(qry_lcljyzxg.FieldByName('dw').asstring);

              if (Trim(qry_lcljyzxg.FieldByName('lb').asstring)='其它') then
              yhxnr:=trim(qry_lcljyzxg.FieldByName('xmmc').asstring);
              qry_in_ljby.FieldByName('yyznr').asstring:=Trim(qry_lcljyzxg.FieldByName('yzsx').asstring)+
              trim(qry_lcljyzxg.FieldByName('lb').asstring)+'类医嘱,'+yhxnr;
              //qry_in_ljby.FieldByName('yznr').asstring:=Trim(qry_yz.FieldByName('yzsx').asstring)+
              //trim(qry_yz.FieldByName('lb').asstring)+'类医嘱,'+hxnr;
              qry_in_ljby.FieldByName('byyy').asstring:='';
              qry_in_ljby.FieldByName('byyr').asstring:=pub_czydm;
              qry_in_ljby.FieldByName('rq').asstring:=_tjrq;
              qry_in_ljby.FieldByName('bz').asstring:='修改医嘱';
              qry_in_ljby.FieldByName('bylb').asstring:='';
              qry_in_ljby.Post;
              qry_in_ljby.UpdateBatch(arall);
              ywby:='1';
            end;
            if Pos('必选',trim(qry_yz.FieldByName('jcbw').asstring))>0 then
            yzxzid:= yzxzid+trim(qry_yz.FieldByName('jcbw').asstring)+',';
          end;
          qry_yz.Next;
        end;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text:='select * from zybl_zyyz where zyh='+''''+zyh+''''+
        ' and zxbz=1 and charindex(''必选'',jcbw)>0 and convert(varchar(8),kdrq,112)='+''''+
        _tjrq+'''';
        DM_data.qry_pub.Open;
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          yzxzid:= yzxzid+trim(DM_data.qry_pub.FieldByName('jcbw').asstring)+',';
          DM_data.qry_pub.Next;
        end;
          if ljyzid<>'' then
          begin
            while Pos(',',ljyzid)>0 do
            begin
              if Pos(Copy(ljyzid,1,Pos(',',ljyzid)),yzxzid)<1 then
              begin
                qry_in_ljby.Append;
                qry_in_ljby.FieldByName('zyh').asstring:=zyh;
                  //qry_in_ljby.FieldByName('yyznr').asstring:='';
                  //修改后医嘱内容

                qry_in_ljby.FieldByName('yznr').asstring:='';
                qry_cx_ljmbmx.Close;
                qry_cx_ljmbmx.sql.Text:='select * from lclj_blmbmx where id='+Copy(ljyzid,1,Pos(',',ljyzid)-1);
                qry_cx_ljmbmx.Open;
                if qry_cx_ljmbmx.IsEmpty then
                begin

                end
                else
                begin
                   //原医嘱内容
                  if (Trim(qry_cx_ljmbmx.FieldByName('lb').asstring)='药品') or
                     (Trim(qry_cx_ljmbmx.FieldByName('lb').asstring)='成药') or
                     (Trim(qry_cx_ljmbmx.FieldByName('lb').asstring)='药一') then
                  yhxnr:=trim(qry_cx_ljmbmx.FieldByName('xmmc').asstring)+' 药品用法:'+
                  trim(qry_cx_ljmbmx.FieldByName('ypyf').asstring)+' '+
                  ' 药品用量:'+trim(qry_cx_ljmbmx.FieldByName('ypyl').asstring)+
                  trim(qry_cx_ljmbmx.FieldByName('yldw').asstring)+' '+
                  ' 用药途径:'+trim(qry_cx_ljmbmx.FieldByName('yytj').asstring);

                  if (Trim(qry_cx_ljmbmx.FieldByName('lb').asstring)='检验') then
                  yhxnr:=trim(qry_cx_ljmbmx.FieldByName('xmmc').asstring)+' 检验样本为:'+
                  trim(qry_cx_ljmbmx.FieldByName('jyyb').asstring);

                  if (Trim(qry_cx_ljmbmx.FieldByName('lb').asstring)='检查') or
                     (Trim(qry_cx_ljmbmx.FieldByName('lb').asstring)='治疗') or
                     (Trim(qry_cx_ljmbmx.FieldByName('lb').asstring)='材料') or
                     (Trim(qry_cx_ljmbmx.FieldByName('lb').asstring)='草药')  then
                  yhxnr:=trim(qry_cx_ljmbmx.FieldByName('xmmc').asstring)+' 数量为:'+
                  trim(qry_cx_ljmbmx.FieldByName('sl').asstring)+trim(qry_cx_ljmbmx.FieldByName('dw').asstring);

                  if (Trim(qry_cx_ljmbmx.FieldByName('lb').asstring)='其它') then
                  yhxnr:=trim(qry_cx_ljmbmx.FieldByName('xmmc').asstring);
                  qry_in_ljby.FieldByName('yyznr').asstring:=Trim(qry_cx_ljmbmx.FieldByName('yzsx').asstring)+
                  trim(qry_cx_ljmbmx.FieldByName('lb').asstring)+'类医嘱,'+yhxnr;
                  //qry_in_ljby.FieldByName('yznr').asstring:=Trim(qry_yz.FieldByName('yzsx').asstring)+
                  //trim(qry_yz.FieldByName('lb').asstring)+'类医嘱,'+hxnr;
                  qry_in_ljby.FieldByName('byyy').asstring:='';
                  qry_in_ljby.FieldByName('byyr').asstring:=pub_czydm;
                  qry_in_ljby.FieldByName('rq').asstring:=_tjrq;
                  qry_in_ljby.FieldByName('bz').asstring:='未用医嘱';
                  qry_in_ljby.FieldByName('bylb').asstring:='';
                  qry_in_ljby.Post;
                  qry_in_ljby.UpdateBatch(arall);
                  ywby:='1';
                end;

              end;
              ljyzid:=Copy(ljyzid,Pos(',',ljyzid)+1);
            end;
          end;

      end;
    end;

  tjsl:=0;
  if pub_yydm='0020' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.text:='select * from sys_czy where zwbm=''10'' and dm='+''''+
    pub_czydm+'''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text:='select isnull(sum(sl*yplsj),0.00) je from zybl_zyyz where zyh='+''''+zyh+''''+' and (lb=''药品'' or '
      +' lb=''成药'' or lb=''草药'') and  zxbz=1 and yzsx=''长期'' and ((tzbz=1 and  convert(varchar,tzrq,112)> '+''''+
      FormatDateTime('yyyyMMdd',cxDateEdit1.Value)+''''+') or (tzbz=0)) and  convert(varchar,kdrq,112)<= '+''''+
      FormatDateTime('yyyyMMdd',cxDateEdit1.Value)+'''';
      DM_data.qry_pub.Open;
      if not DM_data.qry_pub.IsEmpty then
        ypje:= DM_data.qry_pub.FieldByName('je').AsFloat
      else
        ypje:=0;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text:='select isnull(sum(sl*yplsj),0.00) je from zybl_zyyz where zyh='+''''+zyh+''''+' and (lb=''药品'' or '
      +' lb=''成药'' or lb=''草药'') and zxbz=1 and yzsx=''临时'' and   convert(varchar,kdrq,112)= '+''''+
      FormatDateTime('yyyyMMdd',cxDateEdit1.Value)+''''+' and  tzbz<>1 and rtrim(isnull(shry,''''))<>''未用''';
      DM_data.qry_pub.Open;
      if not DM_data.qry_pub.IsEmpty then
        ypje:= ypje+DM_data.qry_pub.FieldByName('je').AsFloat
      else
        ypje:=ypje+0;
    end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from zybl_zyyz where zyh='+''''+zyh+''''+
  ' and tzbz=0 and zxbz=1 and convert(varchar,kdrq,112)='+''''+formatdatetime('yyyyMMdd',cxDateEdit1.Value)
  +''''+' and xmdm in (select ypdm from sys_zyzsj)';
  DM_data.qry_pub.Open;
  zyzjsl:=DM_data.qry_pub.RecordCount;
  tjqk:='';
  tjph:='';
  if not sgjs.Checked then
  begin
    if application.MessageBox('当前选择的医嘱非手工结束，请确认结束时间是否正确！！', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
      abort;
  end;
  if (not sgjs.Checked) and (cxDateEdit2.value<=cxDateEdit1.value) then
  begin
       application.MessageBox('开始日期不能大于或等于结束日期!', '提示', 0 + 48);
      abort;
  end;
  if trim(redit1.Text) <> '禁忌提示' then
  begin
    if application.MessageBox('该批医嘱明细有禁忌冲突,是否继续执行?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
      abort;
  end;
  if qry_yz.RecordCount = 0 then
  begin
    application.MessageBox('您没有可选择任何医嘱，无法执行!', '提示', 0 + 48);
    abort;
  end;
  xzyz := '';
  tjje:=0;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (qry_yz.FieldByName('lb').AsString='药品') or
       (qry_yz.FieldByName('lb').AsString='成药') or
       (qry_yz.FieldByName('lb').AsString='草药')   then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text:='select * from sys_zyzsj where ypdm='+''''+
      qry_yz.FieldByName('xmdm').asstring+'''';
      DM_data.qry_pub.Open;
      if not DM_data.qry_pub.IsEmpty then
      tjsl:=tjsl+1;
      tjje:=tjje+qry_yz.FieldByName('sl').AsFloat*qry_yz.FieldByName('yplsj').AsFloat;
    end;


    xghyznr:='';
    qry_save_yyznr.close;
    qry_save_yyznr.sql.Text:='select top 1 * from zybl_zyyz_xgnr where yzid='+
    qry_yz.FieldByName('id').asstring+' order by xgsj desc';
    qry_save_yyznr.Open;
    if not qry_save_yyznr.IsEmpty then
    begin
    if (Trim(qry_yz.FieldByName('lb').asstring)='药品') or
    (Trim(qry_yz.FieldByName('lb').asstring)='成药') or
    (Trim(qry_yz.FieldByName('lb').asstring)='药一') then
    xghyznr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 药品用法:'+
    trim(qry_yz.FieldByName('ypyf').asstring)+' '+
    ' 药品用量:'+trim(qry_yz.FieldByName('ypyl').asstring)+
    trim(qry_yz.FieldByName('yldw').asstring)+' '+
    ' 用药途径:'+trim(qry_yz.FieldByName('yytj').asstring);

    if (Trim(qry_yz.FieldByName('lb').asstring)='检验') then
    xghyznr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 检验样本为:'+
    trim(qry_yz.FieldByName('jyyb').asstring);

    if (Trim(qry_yz.FieldByName('lb').asstring)='检查') or
    (Trim(qry_yz.FieldByName('lb').asstring)='治疗') or
    (Trim(qry_yz.FieldByName('lb').asstring)='材料') or
    (Trim(qry_yz.FieldByName('lb').asstring)='草药')  then
    xghyznr:=trim(qry_yz.FieldByName('xmmc').asstring)+' 数量为:'+
    trim(qry_yz.FieldByName('sl').asstring)+trim(qry_yz.FieldByName('dw').asstring);

    if (Trim(qry_yz.FieldByName('lb').asstring)='其它') then
    xghyznr:=trim(qry_yz.FieldByName('xmmc').asstring);
    qry_save_yyznr.edit;
    qry_save_yyznr.FieldByName('xyznr').asstring:=Trim(qry_yz.FieldByName('yzsx').asstring)+
    trim(qry_yz.FieldByName('lb').asstring)+'类医嘱,'+xghyznr+'  '+
    '开始时间为：'+formatdatetime('yyyy-MM-dd hh:mm',cxDateEdit1.Value);
    qry_save_yyznr.Post;
    end;


    qry_yz.Next;
  end;
  if pub_yydm='0020' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.text:='select * from sys_czy where zwbm=''10'' and dm='+''''+
    pub_czydm+'''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      if tjje+ypje>300 then
      begin
        application.MessageBox('非科室主管医生不能给同一病人一天开药品医嘱超过300元！', '提示', 0 + 48);
        exit;
      end;
    end;
  end;
  if tjsl>1 then
  begin
    application.MessageBox('提交失败,同一天只能开一种中药注射剂!', '提示', 0 + 48);
    exit;
  end;
  if tjsl=1 then
  begin
    if zyzjsl>0 then
    begin
      application.MessageBox('提交失败,同一天只能开一种中药注射剂!', '提示', 0 + 48);
      exit;
    end;
  end;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if qry_yz.FieldByName('zxbz').Value then
    begin
      qry_yz.Edit;
      if not sgjs.Checked then
        qry_yz.FieldByName('zfrq').AsDateTime := cxDateEdit2.value
      else
      begin
        qry_yz.FieldByName('zfrq').value := qry_yz.FieldByName('yzrq').value;
      end;

      qry_yz.FieldByName('kdrq').AsDateTime:=cxDateEdit1.value;
      qry_yz.FieldByName('zfry').AsString := pub_czydm;
      qry_yz.FieldByName('xgrq').AsDateTime:=frm_func.curr_date;
      qry_yz.Post;
      xzyz := xzyz + qry_yz.FieldByName('ph').AsString;
      if  (qry_yz.FieldByName('lb').AsString<>'其它') and
          (Pos('自备',qry_yz.FieldByName('bz').AsString)<1) then
      begin
       tjph:=tjph+','+ trim(qry_yz.FieldByName('ph').AsString);
      end;


    { //XML 2014-09-28 将改变护理的操作 移动到了护士站 医嘱执行
    if Pos('级护理',qry_yz.FieldByName('xmmc').AsString)>0  then
    begin
      _hljbmc:=qry_yz.FieldByName('xmmc').AsString;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text:='select * from sys_hljb where rtrim(mc)='+''''+trim(_hljbmc)+'''';
      DM_data.qry_pub.open;
      if not DM_data.qry_pub.IsEmpty then
      begin
        sp_se_hljb.parameters.ParamByName( '@tmh' ).value := pub_tmh;
        sp_se_hljb.parameters.ParamByName( '@zyh' ).value := zyh;
        sp_se_hljb.parameters.ParamByName( '@hljb' ).value := DM_data.qry_pub.FieldByName('dm').asstring;
        sp_se_hljb.ExecProc;
      end;

    end; }

    end;
    qry_yz.Next;
  end;
  //写入长期医嘱结束时间---
  qry_pub.Close;
  qry_pub.SQL.Clear;
  qry_pub.SQL.Add('update zybl_zyyz_list set yjjssj=yz.zfrq,kssj=yz.kdrq  from zybl_zyyz_list list,zybl_zyyz yz' +
    '  where list.zyh=yz.zyh and list.ph=yz.ph and yz.zyh=' + '''' + zyh + '''');
  qry_pub.SQL.Add(' insert into zybl_zyyz_czjl values(' + #39 + pub_czydm + #39 + ',' + #39 + pub_czyxm
    + #39 + ',' + #39 + '提交医嘱' + #39 + ',getdate(),' + #39 + '提交医嘱ID:' + xzyz + #39 + ')');

  qry_yz.Filtered := false;
  if application.MessageBox('是否执行所有选择医嘱!', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idok then
  begin
//    //停止医嘱开始时间
//    if  cxDateEdit1.Value <> null then
//    begin
//       vBeginTime := cxDateEdit1.Value ;
//    end else
//    begin
//       vBeginTime := '' ;
//    end;
//    //停止医嘱结束时间
//    if  cxDateEdit2.Value<> null then
//    begin
//       vEndTime := cxDateEdit2.Value ;
//    end else
//    begin
//       vEndTime := '' ;
//    end;
 //yfbk_jk(http: TIdHTTP; URL: string; InputJson: ISuperObject; var OutputJson: ISuperObject; var error: string): boolean;
    qry_yfbklj.Close;
    qry_yfbklj.Open;
    //zy
    if Getxtcs('yxbkhlyy')='1' then   //启用医方百科开关
    begin
        yfbksc(zyh);
        if yfbk_error>0 then
        begin
          yfbk_jk(HTTP_yfbk,qry_yfbklj.FieldByName('bz').AsString,yfbk_json,sc_yfbk_json,error);
        end
       else if yfbk_error=0 then
        begin
          showmessage('医方百科用药审查未提取到数据！');
        end;
    end;
    if p_yfbkts.yfbkxz=1 then
    begin
         p_yfbkts.yfbkxz :=0;
        exit;
    end;
    //zy
    if pub_pass_version = '3' then
    begin
      //合理用药检测 --2011-11-23 jc
      try
   //     qry_yz.Filtered := false;
  //      qry_yz.Filter := ' zxbz = 1 ';
   //     qry_yz.Filtered := true;
        if (gi_passenabled = 1) and (qry_yz.RecordCount > 0) then
        begin
          if not proc_save_pass(1, frm_yzinput.qry_yz, frm_yzinput.qry_yf) then
            Exit;
        end;
      except
      end
    end  else if pub_pass_version = '4' then  //新版本合理用药4.0
    begin
      //合理用药检测---------
      try
//        qry_yz.Filtered := false;
//        qry_yz.Filter := ' zxbz = 1 ';
//        qry_yz.Filtered := true;
        if (gi_passenabled = 1) and (qry_yz.RecordCount > 0) then   // and (pass_bz)
        begin
          //if not proc_save_pass(33, qry_yz, qry_yf) then exit;
          //PASS4
          //病人基本信息传入pass
          if gi_PassEnabled = 1 then
          begin
            frm_yzinput.proc_crbrjbxxinpass;
          end;
          frm_yzinput.proc_AddMedCond; //加入诊断列表
          frm_yzinput.proc_AddScreenDrug; //加入药品列表
          if not frm_yzinput.proc_save_pass4(1, frm_yzinput.qry_yz, frm_yzinput.qry_yf, frm_yzinput.pass_i-1) then
          begin
             if application.MessageBox('PASS安全用药审查提示, PASS系统审查出存在黑灯用药？继续提交处方吗？', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = IDCANCEL  then
             begin
                Exit;
             end;
          end;
        //执行审核
        end;
      except
      end;
    end  else if pub_pass_version = '5' then //纵讯合理用药
    begin
//      qry_yz.Filtered := false;
//      qry_yz.Filter := ' zxbz = 1 ';
//      qry_yz.Filtered := true;
      if (gi_passenabled = 1) and (qry_yz.RecordCount > 0) then
      begin
         if Trim(frm_yzinput.sp_jbxx.FieldByName('brxb').asstring)='男' then //病人性别判断
         begin
           vbrxb:='1';
         end else if Trim(frm_yzinput.sp_jbxx.FieldByName('brxb').asstring)='女' then
         begin
           vbrxb:='2';
         end else
         BEGIN
           vbrxb:='0';
         END;
        if (km_SetPatientInfo(PChar(trim(frm_yzinput.sp_jbxx.FieldByName('zyh').asstring)), //病人ID
          PChar(trim(frm_yzinput.sp_jbxx.FieldByName('brxm').asstring)), //病人姓名
          PChar(vbrxb), //病人性别(1：男2：女，如果未登记以0替代)
          PChar(FormatDateTime('yyyy-MM-dd', frm_yzinput.sp_jbxx.fieldbyname('csrq').AsDateTime)), //出生年月日(正确格式: 1988-09-06)
          pchar('160'), //身高
          PChar(''), //体重
          pchar('') //生理状态
          ) = 0) then
        begin
          if (km_SetDoctorInfo(PChar(pub_czydm), PChar(pub_czyxm),'1') = 0) then  //医生抗菌等级,1:非限制级；2:限制级；3:特殊管制
          begin
          //km_SetPresInfo(pchar('122000001'), '1','1',pchar('0044'),pchar('计算的附件'),pchar('2016-09-02'),'1')
             //医嘱类别
//            if Trim(frm_yzinput.qry_yz.FieldByName('lb').AsString) = '药品' then
//            begin
//              vyzlb:='1';
//            end else if Trim(frm_yzinput.qry_yz.FieldByName('lb').AsString) = '草药' then
//            begin
//              vyzlb:='2';
//            end else if Trim(frm_yzinput.qry_yz.FieldByName('lb').AsString) = '成药' then
//            begin
//              vyzlb:='3';
//            end else
//            begin
//              vyzlb:='0';
//            end;
            if (km_SetPresInfo(PChar(trim(frm_yzinput.sp_jbxx.FieldByName('zyh').asstring)), '0', '3', PChar(pub_ksdm), PChar(pub_ksmc), pchar(frm_func.func_getServerDate), '1') = 0) then
            begin
              frm_yzinput.qry_yz.First;
              while not frm_yzinput.qry_yz.Eof do
              begin
                frm_yzinput.qry_ypyf.Locate('mc', trim(frm_yzinput.qry_yz.FieldByName('ypyf').AsString), []);
                //医嘱属性
                if Trim(frm_yzinput.qry_yz.FieldByName('yzsx').AsString) = '长期' then
                begin
                  vyzsx:='1';
                end else if Trim(frm_yzinput.qry_yz.FieldByName('yzsx').AsString) = '临时' then
                begin
                  vyzsx:='2';
                end;
                //停止医嘱开始时间
                if  cxDateEdit1.Value <> null then
                begin
                   vBeginTime := formatdatetime('yyyy-MM-dd HH:mm:ss',cxDateEdit1.value) ;
                end else
                begin
                   vBeginTime := formatdatetime('yyyy-MM-dd HH:mm:ss',Frm_func.curr_date)  ;
                end;
                //停止医嘱结束时间
                if  cxDateEdit2.Value <> null then
                begin
                   vEndTime := formatdatetime('yyyy-MM-dd HH:mm:ss',cxDateEdit2.value ) ;
                end else
                begin
                   vEndTime := formatdatetime('yyyy-MM-dd HH:mm:ss',Frm_func.curr_date +1) ;
                end;

                if Trim(frm_yzinput.qry_yz.FieldByName('xmdm').AsString) <> '' then //药品名称不为空
                 begin
                    km_SetPresDrugInfoEX(PChar(trim(frm_yzinput.qry_yz.FieldByName('zyh').AsString)), //处方明细编码
                      PChar(trim(frm_yzinput.qry_yz.FieldByName('xmdm').AsString)), //医院药品Code
                      PChar(trim(frm_yzinput.qry_yz.FieldByName('xmmc').AsString)), //医院药品名称
                      PChar(trim(frm_yzinput.qry_yz.FieldByName('gg').AsString)), //规格
                      PChar(''), //生产厂家
                      PChar(''), //准字号
                      PChar(''), //单价
                      PChar(trim(frm_yzinput.qry_yz.FieldByName('ypyl').AsString)), //一次剂量
                      PChar(trim(frm_yzinput.qry_yz.FieldByName('yldw').AsString)), //单位
                      PChar(trim(frm_yzinput.qry_yz.FieldByName('yytj').AsString)), //用药途径
                      PChar(trim(frm_yzinput.qry_ypyf.FieldByName('sl').AsString)), //频次
                      PChar(trim('5')), //天数
                      PChar(trim(frm_yzinput.qry_yz.FieldByName('sl').AsString)), //发药数量
                      PChar(trim(frm_yzinput.qry_yz.FieldByName('dw').AsString)), //发药单位
                      PChar(vyzsx), //医嘱类别(1:长嘱; 2:临嘱)
                      PChar(trim(vBeginTime)), //医嘱开始日期
                      PChar(trim(vBeginTime)), //医嘱结束日期
                      pchar(trim(frm_yzinput.qry_yz.FieldByName('fzph').AsString)) //注射药品配伍组号
                  );
                 end;

                frm_yzinput.qry_yz.Next;
              end;
              if (km_PresCheck(PChar(trim(frm_yzinput.sp_jbxx.FieldByName('ryzd').asstring))) = 0) then
                Application.ProcessMessages;
            end;
          end;
        end;
     //执行审核
//        if not proc_save_pass4(1, qry_yz, qry_yf, pass_i - 1) then
//        begin
//          if application.MessageBox('PASS安全用药审查提示, PASS系统审查出存在黑灯用药？继续提交处方吗？', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = IDCANCEL then
//          begin
//            Exit;
//          end;
//        end;
      end;

    end;

    //写入操作记录
    dm_data.ado_mydata.BeginTrans;
    try
      qry_yz.UpdateBatch(arall);
      qry_pub.ExecSQL;
      dm_data.ado_mydata.CommitTrans;
//      //质控开始
      qry_yz.First;
      while not qry_yz.Eof do
      begin
        if (pub_yydm='0013') and (Trim(qry_yz.FieldByName('xmmc').AsString)='术后医嘱') then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.Text:='update zydzbl_blys set mzysdm='''',mzysmc='''' where zyh='+''''+
          zyh+'''';
          DM_data.qry_pub.ExecSQL;
        end;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text:='select * from sys_yzxm where xmdm='+''''+trim(qry_yz.FieldByName('xmdm').asstring)+'''';
        DM_data.qry_pub.Open;
        if not DM_data.qry_pub.IsEmpty then
        begin
          if DM_data.qry_pub.FieldByName('zksx').AsString='手术' then
          begin
            qry_cx.Close;
            qry_cx.SQL.Text:='update zydzbl_sjjkjbxx set sssj='+''''+formatdatetime('yyyy-MM-dd HH:mm:ss',cxDateEdit1.value)+''''+' where zyh='+''''+pub_zyh+'''';
            qry_cx.ExecSQL;
            zkxx:=frm_func.func_in_blsjzkmx(trim(pub_tmh),trim(pub_zyh),'6');
            if zkxx<>'1' then
              Application.MessageBox(pchar(zkxx), '信息', mb_ok + mb_iconinformation);
          end
          else if DM_data.qry_pub.FieldByName('zksx').AsString='有创操作' then
          begin
            qry_cx.Close;
            qry_cx.SQL.Text:='update zydzbl_sjjkjbxx set ycczsj='+''''+formatdatetime('yyyy-MM-dd HH:mm:ss',cxDateEdit1.value)+''''+' where zyh='+''''+pub_zyh+'''';
            qry_cx.ExecSQL;
            zkxx:=frm_func.func_in_blsjzkmx(trim(pub_tmh),trim(pub_zyh),'7');
            if zkxx<>'1' then
              application.messagebox(pchar(zkxx), '信息', mb_ok + mb_iconinformation);
          end
          else if DM_data.qry_pub.FieldByName('zksx').AsString='抢救' then
          begin
            qry_cx.Close;
            qry_cx.SQL.Text:='update zydzbl_sjjkjbxx set qjsj='+''''+formatdatetime('yyyy-MM-dd HH:mm:ss',cxDateEdit1.value)+''''+' where zyh='+''''+pub_zyh+'''';
            qry_cx.ExecSQL;
            zkxx:=frm_func.func_in_blsjzkmx(trim(pub_tmh),trim(pub_zyh),'8');
            if zkxx<>'1' then
              application.messagebox(pchar(zkxx), '信息', mb_ok + mb_iconinformation);
          end
          else
          begin

          end;
        end;
        qry_yz.Next;
      end;
      //质控结束
      refresh_zxyz;
    except
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox('提交全部医嘱操作失败!', '提示信息', 0 + 16);
    end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='delete from lclj_yzby where byyy='''' and bylb='''' and '+
  'id in (select max(id) from lclj_yzby where zyh='+''''+zyh+''''+' and rq='+''''+
  _tjrq+''''+' group by yyznr,yznr,bz having count(*)>1)';
  DM_data.qry_pub.ExecSQL;
  qry_bycx.Close;
  qry_bycx.sql.text:='select * from lclj_yzby where zyh='+''''+zyh+''''+' and rq='+''''+
  _tjrq+'''';
  qry_bycx.open;
  if ywby='1'  then
  begin
      Panel4.Visible:=True;
      ComboBox1.Clear;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.Text:='select * from LCLJ_BYCJYY where isnull(sj,'''')=''''';
      DM_data.qry_pub.Open;
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        ComboBox1.Items.Add(Trim(DM_data.qry_pub.FieldByName('mc').asstring));
        DM_data.qry_pub.Next;
      end;
      cxButton3.Enabled:=False;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_xt_kg ';
  DM_data.qry_pub.Open;
  if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean=true) and
     (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean=true) then
  begin

     //提交时记临时医嘱费用开始

  try
    if tjph<>'' then
    begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from sys_xt_kg ';
    DM_data.qry_pub.Open;
    _yfdm:='';
    if DM_data.qry_pub.FieldByName('tjxzyf').AsBoolean=true then
    begin
    _yfdm := p_xzyf.func_zxyf( );
    end;

    if _yfdm='' then
    begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from sys_ksdm where dm='+''''+pub_ksdm+'''';
    DM_data.qry_pub.Open;
    xyf:=DM_data.qry_pub.FieldByName('xgks').AsString;
    if Trim(DM_data.qry_pub.FieldByName('chyf').AsString)<>'' then
    chyf:=DM_data.qry_pub.FieldByName('chyf').AsString
    else
    chyf:=xyf;
    end
    else
    begin
    xyf:=Copy(_yfdm,1,4);
    chyf:= Copy(_yfdm,6,4);
    end;
      //准备数据   开始
      sp_lsyzzbsj.Close;
      sp_lsyzzbsj.Parameters.Refresh;
      sp_lsyzzbsj.Parameters.ParamByName('@zyh').Value:=zyh;
      sp_lsyzzbsj.Parameters.ParamByName('@czydm').Value:=pub_czydm;
      sp_lsyzzbsj.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',frm_func.curr_date);
      sp_lsyzzbsj.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
      sp_lsyzzbsj.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
      sp_lsyzzbsj.Parameters.ParamByName('@tjph').Value:=tjph;
      sp_lsyzzbsj.Parameters.ParamByName( '@sczt' ).Value := '1';
      sp_lsyzzbsj.Open;
      //准备数据   结束
      //记费开始
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:='select distinct plxh from zybl_zyyz_lsjfd '+
                                   ' where zyh='+''''+zyh+''''+
                                   ' and czydm='+''''+pub_czydm+'''';
      DM_data.qry_pub.Open;
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        sp_lsyzjmx.Close;
        sp_lsyzjmx.Parameters.Refresh;
        sp_lsyzjmx.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
        sp_lsyzjmx.Parameters.ParamByName('@zyh').Value:=zyh;
        sp_lsyzjmx.Parameters.ParamByName('@czydm').Value:=pub_czydm;
        sp_lsyzjmx.Parameters.ParamByName('@yfdm').Value:=xyf;
        sp_lsyzjmx.Parameters.ParamByName('@kdys').Value:=pub_czydm;
        sp_lsyzjmx.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',frm_func.curr_date);
        sp_lsyzjmx.Parameters.ParamByName('@sczt').Value:='1';
        sp_lsyzjmx.Parameters.ParamByName('@zyfdm').Value:=chyf;
        sp_lsyzjmx.Parameters.ParamByName('@plxh' ).Value :=DM_data.qry_pub.FieldByName('plxh').asstring;
        sp_lsyzjmx.ExecProc;
        if sp_lsyzjmx.Parameters.ParamByName('@sczt').Value<>'0' then
      begin
        qry_cx.close;
        qry_cx.sql.text:='select * from zysf_zydj where zyh='+''''+zyh+'''';
        qry_cx.Open;
        _tmh:= qry_cx.FieldByName('tmh').AsString;
        _bch:= qry_cx.FieldByName('bch').AsString;
        _ksdm:=qry_cx.FieldByName('ksdm').AsString;
        _brxm:=qry_cx.FieldByName('brxm').AsString;
        _sbyy:='医生提交时'+' '+sp_lsyzjmx.Parameters.ParamByName('@sczt').Value;
        _zxsj:=FormatDateTime('yyyyMMdd',cxDateEdit1.value);
        qry_cx.close;
        qry_cx.sql.text:='insert into zybl_qfbr '+
                         'select '+''''+zyh+''''+','+''''+_tmh+''''+','+
                         ''''+_bch+''''+','+''''+_ksdm+''''+','+
                         ''''+_brxm+''''+','+''''+_sbyy+''''+','+
                         ''''+_zxsj+'''';
        qry_cx.ExecSQL;

        ShowMessage(sp_lsyzjmx.Parameters.ParamByName('@sczt').Value);
      end;
      DM_data.qry_pub.Next;
      end;
    //记费结束
     tjqk:='1';
    end;
  except
    application.MessageBox('医嘱记费失败!', '提示信息', 0 + 16);
    tjqk:='1';
  end;
  end;
  tjqk:='1';
    //dm_data.ado_mydata.CommitTrans;
  modalresult := mrOK;
    //提交时记临时医嘱费用结束
end;

procedure Tfrm_tjyz.cxButton4Click(Sender: TObject);
begin
  if Panel4.Visible=true then
  begin
    Application.MessageBox('请先填写变异！', '提示', MB_OK + MB_ICONSTOP +
      MB_DEFBUTTON2);
    Exit;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_xt_kg ';
  DM_data.qry_pub.Open;
  if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean=true) and
    (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean=true) then
  begin
  if tjqk='1' then
  frm_tjyz.close
  else
  ShowMessage('有记费正在进行，不能关闭窗口！');
  end
  else
  begin
  frm_tjyz.close;
  end;
end;

procedure Tfrm_tjyz.cxButton5Click(Sender: TObject);
begin
  qry_yz.DisableControls;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    qry_yz.Edit;
    qry_yz.FieldByName('zxbz').Value := 1;
    qry_yz.Post;
    qry_yz.Next;
  end;
  qry_yz.EnableControls;
end;

procedure Tfrm_tjyz.cxButton6Click(Sender: TObject);
begin
  qry_yz.DisableControls;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    qry_yz.Edit;
    qry_yz.FieldByName('zxbz').Value := 0;
    qry_yz.Post;
    qry_yz.Next;
  end;
  qry_yz.EnableControls;
end;

procedure Tfrm_tjyz.cxButton7Click(Sender: TObject);
begin
  qry_yz.DisableControls;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (trim(qry_yz.FieldByName('lb').AsString) <> '药品') and
      (trim(qry_yz.FieldByName('lb').AsString) <> '材料') then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName('zxbz').Value := 1;
      qry_yz.Post;
    end;
    qry_yz.Next;
  end;
  qry_yz.EnableControls;
end;

procedure Tfrm_tjyz.cxButton8Click(Sender: TObject);
begin
  try
    application.createform(Tfrm_zxypyz, frm_zxypyz);
    frm_zxypyz.zyh := zyh;
    frm_zxypyz.showmodal;
  finally
    frm_zxypyz.free;
  end;
end;

procedure Tfrm_tjyz.cxDateEdit2PropertiesChange(Sender: TObject);
begin
  //sgjs.Checked := false;
end;


procedure Tfrm_tjyz.bt_exitClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_tjyz.Button2Click(Sender: TObject);
begin
//  application.CreateForm(Tfrm_yzfz, frm_yzfz);
//  try
//        //传本次提交批号分组
//    if ph <> '' then
//      frm_yzfz.yzph := ph;
//    frm_yzfz.ShowModal;
//  finally
//    frm_yzfz.free;
//  end;
  qry_bycx.Edit;
  if (trim(Memo1.Text)='') or (ComboBox1.text='') then
  begin
    Application.MessageBox('变异原因或者变异类别不能为空！', '提示', MB_OK + 
      MB_ICONSTOP + MB_DEFBUTTON2);
    Exit;
  end;
  qry_bycx.FieldByName('byyy').asstring:=Trim(Memo1.Text);
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:=' select * from LCLJ_BYCJYY where rtrim(mc)='+''''+Trim(ComboBox1.text)+'''';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
    qry_bycx.FieldByName('bylb').asstring:=Trim(ComboBox1.text)
  else
    qry_bycx.FieldByName('bylb').asstring:='其它原因';
  qry_bycx.Post;
  qry_bycx.UpdateBatch(arall);
  qry_bycx.Close;
  qry_bycx.sql.text:='select * from lclj_yzby where zyh='+''''+zyh+''''+' and rq='+''''+
  FormatDateTime('yyyyMMdd',cxDateEdit1.Value)+'''';
  qry_bycx.open;
  qry_bycx.First;
  
end;

procedure Tfrm_tjyz.Button3Click(Sender: TObject);
begin
  qry_bycx.First;
  while not qry_bycx.eof do
  begin
    if (trim(qry_bycx.FieldByName('byyy').asstring)='') or
        (trim(qry_bycx.FieldByName('bylb').asstring)='')   then
    begin
      Application.MessageBox('有变异项没有填写变异原因或者变异类别！', '提示',
        MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
      Exit;
    end;
    qry_bycx.next;
  end;
  Panel4.Visible:=false;
end;

procedure Tfrm_tjyz.ShallStopLongTermOrders_XSE;
var
  _yzsx,_id,_zhzxsj,_fzph,_yzsj,tzyzsj: string;
  sczt: Integer;
  yztzsj:TDateTime;
begin
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if trim(qry_yz.FieldByName('lb').AsString) ='其它' then
    begin
      if ((pub_yydm='0266')
      and ((Pos('出院',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('转科',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('死亡',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('重整医嘱',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('转入',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('自动离院',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('转上级医院',qry_yz.FieldByName('xmmc').AsString)>0)))
      or ((pub_yydm<>'0266')
      and ((Pos('出院',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('转科',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('死亡',qry_yz.FieldByName('xmmc').AsString)>0))) then    //广元医院要求  转入其他科室以及部分 转院等 给予提示停止全部长期医嘱
      begin
       if pub_yydm <>'0257' then
       begin
          if Application.MessageBox('是否自动停止所有长期医嘱', '提示', MB_YESNO
          + MB_ICONINFORMATION)=IDNO then
          begin
            Exit;
          end;
       end else     //如果是全州0257医院  在开具上述医嘱类型的时候 不进行停止医嘱操作 直接exit
       Exit;
        yztzsj := p_pub_sj.func_sjxz();
        if yztzsj = strtodatetime('1900-01-01') then
          Exit
        else
          tzyzsj := formatdatetime('yyyy-mm-dd hh:mm:ss', yztzsj);

        //时间停止医嘱
        sp_yzsj.Close;
        sp_yzsj.Parameters.ParamByName('@scyzsj').Value := tzyzsj;
        sp_yzsj.ExecProc;
        _yzsj := formatdatetime('yyyymmdd',
          sp_yzsj.Parameters.ParamByName('@scyzsj').Value);

        spOrders_xse.Close;
        spOrders_xse.Parameters.ParamByName('@zyh').Value := zyh;
        spOrders_xse.Parameters.ParamByName('@yzsx').Value := '';
//        if (pub_yydm = '0263') or (pub_yydm = '0264') then
//          spOrders_xse.Parameters.ParamByName('@vkdks').Value := pub_ksdm
//        else
          spOrders_xse.Parameters.ParamByName('@xsexh').Value := xsexh;
        spOrders_xse.Open;

        spOrders_xse.First;
        while not spOrders_xse.Eof do
        begin
          _yzsx := Trim(spOrders_xse.FieldByName('yzsx').AsString);
          if (not spOrders_xse.FieldByName('tzbz').asboolean) and
            (spOrders_xse.fieldbyname('zfrq').asdatetime <= 0) and
            (spOrders_xse.fieldbyname('id').AsString <> '') and
            (_yzsx = '长期') then
          begin
            _id := spOrders_xse.FieldByName('id').AsString;
            _zhzxsj := spOrders_xse.FieldByName('zhzxsj').AsString;

            _fzph := spOrders_xse.FieldByName('fzph').AsString;
            if _fzph <> '' then
            begin
              sp_tzyz.Close;
              sp_tzyz.Refresh;
              sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
              sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
              sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
                strtodatetime(tzyzsj);
              sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
              sp_tzyz.Parameters.ParamByName('@id').Value := 0;
              sp_tzyz.Parameters.ParamByName('@fzph').Value := _fzph;
              sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
              if sfxse='新生儿' then
              begin
                sp_tzyz.Parameters.ParamByName('@xsexh').Value := xsexh;
              end ;
              sp_tzyz.ExecProc;
              sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
              if sczt <> 0 then
                application.MessageBox('医嘱停止未成功，请重新操作！！', '提示！',
                  mb_ok);
            end
            else
            begin
              sp_tzyz.Close;
              sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
              sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
              sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
                strtodatetime(tzyzsj);
              sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
              sp_tzyz.Parameters.ParamByName('@id').Value := _id;
              sp_tzyz.Parameters.ParamByName('@fzph').Value := '';
              sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
              if sfxse='新生儿' then
              begin
                sp_tzyz.Parameters.ParamByName('@xsexh').Value := xsexh;
              end ;
              sp_tzyz.ExecProc;
              sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
              if sczt <> 0 then
                application.MessageBox('医嘱停止未成功，请重新操作！！', '提示！',
                  mb_ok);
            end;
          end;
          spOrders_xse.Next;
        end;

  //        end;
          Break;
      end;
    end;
    qry_yz.Next;
  end;
end;

procedure Tfrm_tjyz.ShallStopLongTermOrders;
var
  _yzsx,_id,_zhzxsj,_fzph,_yzsj,tzyzsj: string;
  sczt: Integer;
  yztzsj:TDateTime;
begin
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if trim(qry_yz.FieldByName('lb').AsString) ='其它' then
    begin
      if ((pub_yydm='0266')
      and ((Pos('出院',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('转科',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('死亡',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('重整医嘱',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('转入',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('自动离院',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('转上级医院',qry_yz.FieldByName('xmmc').AsString)>0)))
      or ((pub_yydm<>'0266')
      and ((Pos('出院',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('转科',qry_yz.FieldByName('xmmc').AsString)>0) or
          (Pos('死亡',qry_yz.FieldByName('xmmc').AsString)>0))) then    //广元医院要求  转入其他科室以及部分 转院等 给予提示停止全部长期医嘱
      begin
       if pub_yydm <>'0257' then
       begin
          if Application.MessageBox('是否自动停止所有长期医嘱', '提示', MB_YESNO
          + MB_ICONINFORMATION)=IDNO then
          begin
            Exit;
          end;
       end else     //如果是全州0257医院  在开具上述医嘱类型的时候 不进行停止医嘱操作 直接exit
       Exit;
        yztzsj := p_pub_sj.func_sjxz();
        if yztzsj = strtodatetime('1900-01-01') then
          Exit
        else
          tzyzsj := formatdatetime('yyyy-mm-dd hh:mm:ss', yztzsj);

        //时间停止医嘱
        sp_yzsj.Close;
        sp_yzsj.Parameters.ParamByName('@scyzsj').Value := tzyzsj;
        sp_yzsj.ExecProc;
        _yzsj := formatdatetime('yyyymmdd',
          sp_yzsj.Parameters.ParamByName('@scyzsj').Value);

        spOrders.Close;
        spOrders.Parameters.ParamByName('@zyh').Value := zyh;
        spOrders.Parameters.ParamByName('@yzsx').Value := '';
        if (pub_yydm = '0263') or (pub_yydm = '0264') then
          spOrders.Parameters.ParamByName('@vkdks').Value := pub_ksdm
        else
          spOrders.Parameters.ParamByName('@vkdks').Value := '';
        spOrders.Open;

        spOrders.First;
        while not spOrders.Eof do
        begin
          _yzsx := Trim(spOrders.FieldByName('yzsx').AsString);
          if (not spOrders.FieldByName('tzbz').asboolean) and
            (spOrders.fieldbyname('zfrq').asdatetime <= 0) and
            (spOrders.fieldbyname('id').AsString <> '') and
            (_yzsx = '长期')  and                                      //20171101
            (spOrders.FieldByName('zxbz').asboolean) then
          begin
            _id := spOrders.FieldByName('id').AsString;
            _zhzxsj := spOrders.FieldByName('zhzxsj').AsString;

            _fzph := spOrders.FieldByName('fzph').AsString;
            if _fzph <> '' then
            begin
              sp_tzyz.Close;
              sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
              sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
              sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
                strtodatetime(tzyzsj);
              sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
              sp_tzyz.Parameters.ParamByName('@id').Value := 0;
              sp_tzyz.Parameters.ParamByName('@fzph').Value := _fzph;
              sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
              if sfxse='新生儿' then
              begin
                sp_tzyz.Parameters.ParamByName('@xsexh').Value := xsexh;
              end;
              sp_tzyz.ExecProc;
              sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
              if sczt <> 0 then
                application.MessageBox('医嘱停止未成功，请重新操作！！', '提示！',
                  mb_ok);
            end
            else
            begin
              sp_tzyz.Close;
              sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
              sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
              sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
                strtodatetime(tzyzsj);
              sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
              sp_tzyz.Parameters.ParamByName('@id').Value := _id;
              sp_tzyz.Parameters.ParamByName('@fzph').Value := '';
              sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
              if sfxse='新生儿' then
              begin
                sp_tzyz.Parameters.ParamByName('@xsexh').Value := xsexh;
              end;
              sp_tzyz.ExecProc;
              sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
              if sczt <> 0 then
                application.MessageBox('医嘱停止未成功，请重新操作！！', '提示！',
                  mb_ok);
            end;
          end;
          spOrders.Next;
        end;

  //        end;
          Break;
      end;
    end;
    qry_yz.Next;
  end;
end;

end.

