unit p_pkrk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids,Registry,IniFiles,
  xmldom, XMLIntf, msxmldom, XMLDoc, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP,OleCtrls,SHDocVw,HttpApp, ComCtrls,
  Buttons, Mask, DBCtrls ;



type
  Tfrm_pkrk = class(TForm)
    sp_cx_zybrjbqk: TADOStoredProc;
    qry_brxx: TADOQuery;
    ds_brxx: TDataSource;
    qry_icd10: TADOQuery;
    ds_icd10: TDataSource;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    XMLDocument1: TXMLDocument;
    sp_sc_jybh: TADOStoredProc;
    qry_jgid: TADOQuery;
    qry_save: TADOQuery;
    pgc_pkrk: TPageControl;
    ts_scxx: TTabSheet;
    ts1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    tmh: TEdit;
    sfzh: TEdit;
    zyh: TEdit;
    brxm: TEdit;
    ryrq: TEdit;
    cyrq: TEdit;
    zfy: TEdit;
    zfje: TEdit;
    Button1: TButton;
    Button2: TButton;
    zyzd: TEdit;
    cyzd: TEdit;
    bxje: TEdit;
    grid1: TDBGrid;
    grid2: TDBGrid;
    jydh: TEdit;
    btn_exit: TButton;
    pnl_cx: TPanel;
    edt_cx: TEdit;
    btn_djcx: TBitBtn;
    Label13: TLabel;
    lbl_tmh: TLabel;
    grid_brxx: TDBGrid;
    sc_jydh: TLabel;
    sc_tmh: TLabel;
    sc_zyh: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    qry_xxcx: TADOQuery;
    ds_xxcx: TDataSource;
    edt_jydh: TDBEdit;
    edt_tmh: TDBEdit;
    edt_zyh: TDBEdit;
    edt_brxm: TDBEdit;
    edt_sfzh: TDBEdit;
    edt_cyrq: TDBEdit;
    edt_zfy: TDBEdit;
    edt_zfje: TDBEdit;
    edt_bxje: TDBEdit;
    edt_ryrq: TDBEdit;
    edt_zyzd: TDBEdit;
    edt_cyzd: TDBEdit;
    bth_cxxx: TButton;
    b_exit: TButton;
    qry_up_scbz: TADOQuery;
    con_bagl: TADOConnection;
    qry_brxx2: TADOQuery;
    grid_cyzd: TDBGrid;
    procedure tmhEnter(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure tmhExit(Sender: TObject);
    procedure displayvalue;
    procedure grid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grid1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure zyzdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grid2Exit(Sender: TObject);
    procedure grid2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure zyzdExit(Sender: TObject);
    procedure sfzhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure jydhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure jydhExit(Sender: TObject);
    procedure ts_scxxShow(Sender: TObject);
    procedure ts1Show(Sender: TObject);
    procedure btn_djcxClick(Sender: TObject);
    procedure b_exitClick(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bth_cxxxClick(Sender: TObject);
    procedure ts_scxxExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grid_cyzdKeyPress(Sender: TObject; var Key: Char);
    procedure grid_cyzdExit(Sender: TObject);
    procedure cyzdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   
  private
    { Private declarations }
  public
    { Public declarations }
  public
    pk_brbz: string;     //贫困人口病人标志
  end;


var
  frm_pkrk: Tfrm_pkrk;
  ylbxje :string;
  mzbz :string;
  qtbxje :string;

implementation
 uses P_dm, p_func,P_MAIN;
{$R *.dfm}


procedure Tfrm_pkrk.FormCreate(Sender: TObject);
 var
  Reg: Tregistry;
  servernameba, datanameba: string;
 
begin
  Reg := Tregistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey( 'Software\myserver', true ) then
    begin
      servernameba := Reg.ReadString( 'servernameba' );
      datanameba := Reg.ReadString( 'datanameba' );
    end;
    reg.CloseKey;
  finally
    Reg.Free;
  end;
  try
    if  not con_bagl.Connected  then
      //病案库和his不是同一台服务器
    begin
      con_bagl.ConnectionString :=
        'Provider=SQLOLEDB.1;Password=baglxt;User ID=sys_bagl;' +
        'Persist Security Info=True;Initial Catalog=' +
        datanameba + ';Data Source=' + servernameba;
      con_bagl.Connected := True;
      qry_icd10.Connection := con_bagl;
    end

  finally
     con_bagl.Connected := False;
  end;

end;

procedure Tfrm_pkrk.FormShow(Sender: TObject);
begin
//  sfzh.Enabled := false;
//  zyh.Enabled := false;
//  brxm.Enabled := false;
//  ryrq.Enabled := false;
//  cyrq.Enabled := false;
//  zfy.Enabled := false;
//  zfje.Enabled := false;
//  bxje.Enabled := false;
  pgc_pkrk.ActivePage := ts_scxx;
//  if jydh.CanFocus then  jydh.SetFocus;
end;

procedure Tfrm_pkrk.grid1Exit(Sender: TObject);
begin
//  tmh.text := sp_cx_zybrjbqk['tmh'];
//
//  displayvalue;
   grid1.Visible := false;
 if zyzd.CanFocus then  zyzd.SetFocus;
end;

procedure Tfrm_pkrk.grid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
  begin
    tmh.Text := qry_brxx['tmh'];
    zyh.text := qry_brxx['zyh'];
    brxm.text := qry_brxx['brxm'];

    qry_brxx2.Close;
    qry_brxx2.SQL.Clear;
    if pk_brbz='1' then  //住院病人
    begin
      if pub_yydm<>'0266' then
      begin
        qry_brxx2.SQL.Text :='select * FROM (   '+
                             '(SELECT isnull(b.sfzhm,'''')sfzh, b.tmh,b.zyh,b.brxm,b.ryrq,b.cyrq,b.ryrq as jzrq,c.ylzfy,   '+
                             '(c.ylzfy-c.tczf)xjzf,(c.ylzfy-c.xjzf-c.zhzf) bxje,isnull(d.zd,'''') cyzd,  '+
                             'CASE when c.jbylbxje <>0 then c.jbylbxje when c.czjmtczf <>0 then c.czjmtczf else 0.00 end ylbxje,   '+
                             'isnull(c.mzbz,0.00)mzbz,(c.ylzfy-c.xjzf-c.zhzf-c.jbylbxje-c.czjmtczf-c.mzbz)qtbxje  '+
                             'FROM sbjk_sbjs c  '+
                             'left JOIN zysf_zydj b ON  b.zyh=c.zyh  '+
                             'left JOIN   '+
                             '(SELECT  zyh,substring(zd,charindex(''|'',zd,charindex(''|'',zd,0)+1)+1,10)zd ,substring(zd,1,1)xh  '+
                             'from sbjk_cyzd where  substring(zd,1,1)=1  ) d on  d.zyh=b.zyh  '+
                             'where  b.cybz=1 AND c.yxbz=1 )  '+
                             'UNION    '+
                             '(SELECT isnull(b.sfzhm,'''')sfzh, b.tmh,b.zyh,b.brxm,b.ryrq,b.cyrq,b.ryrq as jzrq,c.ylzfy, '+
                             '(c.ylzfy-c.tczf)xjzf,(c.ylzfy-c.xjzf-c.zhzf) bxje,   '+
                             'isnull(d.zd,'''') cyzd,  '+
                             'CASE when c.jbylbxje <>0 then c.jbylbxje  when c.czjmtczf <>0 then c.czjmtczf else 0.00 end ylbxje,  '+
                             'isnull(c.mzbz,0.00)mzbz,(c.ylzfy-c.xjzf-c.zhzf-c.jbylbxje-c.czjmtczf-c.mzbz)qtbxje  '+
                             'FROM sbjk_sbjs c    '+
                             'left JOIN zysf_cydj b ON  b.zyh=c.zyh      '+
                             'left JOIN  '+
                             '(SELECT  zyh,substring(zd,charindex(''|'',zd,charindex(''|'',zd,0)+1)+1,10)zd ,substring(zd,1,1)xh   '+
                             'from sbjk_cyzd where  substring(zd,1,1)=1 ) d on  d.zyh=b.zyh   '+
                             'where  b.cybz=1 AND c.yxbz=1 )) a WHERE a.zyh ='''+zyh.text+ '''';
      end else
      begin  //由于sys_cyzd存储的数据不一样广元昭化医院
        qry_brxx2.SQL.Text :='select * FROM (  '+
                             '(SELECT isnull(b.sfzhm,'''')sfzh, b.tmh,b.zyh,b.brxm,b.ryrq,b.cyrq,b.ryrq as jzrq,c.ylzfy,(c.xjzf+c.zhzf)xjzf,  '+
                             'CASE when (c.ylzfy-c.xjzf-c.zhzf)>0 then (c.ylzfy-c.xjzf-c.zhzf)ELSE 0.00 END bxje,isnull(d.zd,'''') cyzd,   ' +
                             'CASE when c.ybjjze >0 then c.ybjjze else 0.00 end ylbxje,     '+
                             'isnull(c.mzbz,0.00)mzbz,(c.ylzfy-c.xjzf-c.zhzf-isnull(c.ybjjze,0.00)-isnull(c.mzbz,0.00))qtbxje  '+
                             'FROM sbjk_sbjs c   '+
                             'left JOIN zysf_zydj b ON  b.zyh=c.zyh    '  +
                             'left JOIN (SELECT  zyh,zd from sbjk_cyzd  ) d on  d.zyh=b.zyh   ' +
                             'where  b.cybz=1 AND c.yxbz=1 ) '+
                             'UNION  '+
                             '(SELECT isnull(b.sfzhm,'''')sfzh, b.tmh,b.zyh,b.brxm,b.ryrq,b.cyrq,b.ryrq as jzrq,c.ylzfy,(c.xjzf+c.zhzf)xjzf,  '+
                             'CASE when (c.ylzfy-c.xjzf-c.zhzf)>0 then (c.ylzfy-c.xjzf-c.zhzf)ELSE 0.00 END bxje,isnull(d.zd,'''') cyzd,       '+
                             'CASE when c.ybjjze >0 then c.ybjjze else 0.00 end ylbxje,   ' +
                             'isnull(c.mzbz,0.00)mzbz,(c.ylzfy-c.xjzf-c.zhzf-isnull(c.ybjjze,0.00)-isnull(c.mzbz,0.00))qtbxje ' +
                             'FROM sbjk_sbjs c  ' +
                             'left JOIN zysf_cydj b ON  b.zyh=c.zyh  ' +
                             'left join (SELECT  zyh,zd from sbjk_cyzd  ) d on  d.zyh=b.zyh   '+
                             'where  b.cybz=1 AND c.yxbz=1 )) aWHERE a.zyh ='''+zyh.text+ '''';
      end;
//    end else
//    begin
//      qry_brxx2.SQL.Text :=
//                          'SELECT a.tmh,b.brxm,a.jsrq cyrq,a.jsrq ryrq,a.zyh ,a.ylzfy,a.xjzf,(a.ylzfy-a.xjzf) bxje,b.sfzhm sfzh,c.zyzd  cyzd  ' +
//                          'from (select * from sbjk_sbjs where tmh='''+tmh.text+''' and zyh='''+zyh.text+''' and  ' +
//                          'convert(varchar(20),jsrq,112) =   '+
//                          'convert(varchar(20),(select max(jsrq) from sbjk_sbjs where tmh='''+tmh.text+'''),112)) a  ' +
//                          'LEFT JOIN sys_kyh b ON a.tmh=b.tmh    ' +
//                          'left join (select * from dzbl_brbl_last where tmh='''+tmh.text+''' and  '+
//                          'convert(varchar(20),zdrq,112) =  '+
//                          'convert(varchar(20),(select max(zdrq) from dzbl_brbl_last where tmh='''+tmh.text+'''),112)) c ON  a.tmh=c.tmh '+
//                          'WHERE  a.yxbz=1 AND a.fylb=2 AND a.tmh='''+tmh.text+'''  ';
    end;
    qry_brxx2.Open;
    sfzh.Text := qry_brxx2['sfzh'];
    cyrq.text := qry_brxx2['cyrq'];
    zfy.text := qry_brxx2['ylzfy'];
    bxje.Text := qry_brxx2['bxje'];
    cyrq.text := qry_brxx2['cyrq'];
    zfje.text := qry_brxx2['xjzf'];
    ryrq.text := qry_brxx2['ryrq'];
    zyzd.text := qry_brxx2['cyzd'];
    cyzd.text := qry_brxx2['cyzd'];
    ylbxje :=qry_brxx2['ylbxje'];
    mzbz   :=qry_brxx2['mzbz'];
    qtbxje :=qry_brxx2['qtbxje'];
    grid1.Visible := false;
  end
  else
  if key = 27 then
  begin
    tmh.Text := '';
    grid1.Visible := false;
    if tmh.CanFocus then tmh.SetFocus;
    abort;
  end;
end;

procedure Tfrm_pkrk.grid2Exit(Sender: TObject);
begin
  grid2.Visible :=false;
end;

procedure Tfrm_pkrk.grid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    zyzd.Text := qry_icd10['jbbm'];
//    grid2.Visible := false;
    if cyzd.CanFocus then
    cyzd.SetFocus;

  end
  else
  if key = #27 then
  begin
    zyzd.Text :='';
    grid2.Visible := false;
    if button1.CanFocus then button1.SetFocus;
    abort;
  end;
end;

procedure Tfrm_pkrk.grid_cyzdExit(Sender: TObject);
begin
   grid_cyzd.Visible :=false;
end;

procedure Tfrm_pkrk.grid_cyzdKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
  begin
    cyzd.Text := qry_icd10['jbbm'];
//    grid2.Visible := false;
    if Button1.CanFocus then
    Button1.SetFocus;

  end
  else
  if key = #27 then
  begin
    cyzd.Text :='';
    grid_cyzd.Visible := false;
    if cyzd.CanFocus then cyzd.SetFocus;
    abort;
  end;
end;

procedure Tfrm_pkrk.jydhExit(Sender: TObject);
var BZ :string;
begin
  //showmessage(pk_brbz);
end;

procedure Tfrm_pkrk.jydhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var a :string;
begin
  if key=13 then
  begin
    sp_sc_jybh.Active := False;
    sp_sc_jybh.Parameters.ParamByName( '@jybh' ).value := '';
    sp_sc_jybh.ExecProc;
    a := sp_sc_jybh.Parameters.ParamByName( '@jybh' ).value;
    jydh.text:=trim(a);
    if tmh.CanFocus then
       tmh.SetFocus;
  end;
end;

procedure Tfrm_pkrk.sfzhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
     button1.SetFocus;
  end;
end;

procedure Tfrm_pkrk.tmhEnter(Sender: TObject);
begin
  tmh.Text := '';
  sfzh.Text := '';
  zyh.Text := '';
  brxm.text := '';
  ryrq.text := '';
  cyrq.text := '';
  zfy.text := '';
  zfje.text := '';
  zyzd.text := '';
  cyzd.text := '';
  bxje.text := '';
end;

procedure Tfrm_pkrk.tmhExit(Sender: TObject);
var ls: string;
begin
  ls := trim(tmh.text);
  if (ls <> '') then
  begin
//    if ls[1] in ['0'..'9'] then
//      ls := stringofchar('0', 9 - length(ls)) + ls;
    
    with sp_cx_zybrjbqk do
    begin
      Close;
      parameters.ParamByName('@tmh').value := ls;
      if pk_brbz='1' then
      begin
        parameters.ParamByName('@brbz').value := '1';
      end else
      begin
        parameters.ParamByName('@brbz').value := '2';
      end;
      open;

    end;
    if sp_cx_zybrjbqk.isempty then
    begin
      Application.MessageBox('没有此病人！', '错误', 0 + 16);
      tmh.setfocus;
    end
    else if sp_cx_zybrjbqk.recordcount > 1 then
    begin
      if pk_brbz='1' then  //住院病人
      begin
        with qry_brxx do
        begin
          Close;
          SQL.Clear;
          SQL.text:='exec pkrk_brxx '''+tmh.text+''' ,1' ;
          Open;
        end;
      end else
      begin
        with qry_brxx do   //门诊病人
        begin
          Close;
          SQL.Clear;
          SQL.text:='exec pkrk_brxx '''+tmh.text+''' ,2' ;
          Open;
        end;
      end;
      grid1.visible := true;
      grid1.setfocus;
    end else
    begin
      displayvalue;
    end;
  end;
end;

 procedure Tfrm_pkrk.bth_cxxxClick(Sender: TObject);
var
    Url : string;                   //请求地址
    ResponseStream : TStringStream; //返回信息
    ResponseStr : string;           //返回值
    RequestStream : TStringStream;  //请求信息

    brxx:string;                    //病人信息
    jiuzhenjg:string;                    //就诊机构
    jiaoyiid:string;                    //交易ID
    JGID:string;                    //新增机构id 广元昭化：510000002258
    gb :string;
 begin
   qry_jgid.Close;
   qry_jgid.SQL.Clear;
   qry_jgid.SQL.Text :='select pkrkjgid from sys_yyxx';
   qry_jgid.Open;

   jiuzhenjg:=trim(qry_jgid.FieldByName('pkrkjgid').Value);//HTTPEncode(UTF8Encode(qry_jgid.FieldByName('pkrkjgid').Value));
//   gb:=HTTPEncode(UTF8Encode(jiuzhenjg)) ;   //将中文转为GB2312编码
   brxx:='jiuzhenjg='+Trim(jiuzhenjg)+'&jiaoyiid='+Trim(edt_jydh.text)+'';  //jiuzhenjg=%E7%94%98%E4%BC%A6%E6%89%8D&jiaoyiid=510311195502186617
   RequestStream := TStringStream.Create(brxx);
   ResponseStream := TStringStream.Create('');

   url := 'https://171.221.252.191:8087/pkrkwebapi/RevokeJiuzhenxx';

   IdHttp1.Request.ContentType :='application/x-www-form-urlencoded;charset=utf-8'; //'application/x-www-form-urlencoded'; // 定义发送mime类型;
   IdHttp1.ReadTimeout := 1000 * 60 * 1;

   RequestStream.Seek(0,soBeginning);
   IdHttp1.Post(Url,RequestStream,ResponseStream);

   ResponseStr:= UTF8decode(ResponseStream.DataString);

    if ResponseStr='1' then
    begin
      showmessage('撤销成功');
      //修改pkrk_scxx表中cxbz为0
      qry_xxcx.Edit;
      qry_xxcx.FieldByName('cxbz').Value:=0;
      qry_xxcx.Post;
      qry_xxcx.Filter:='cxbz<>0';
      qry_xxcx.Filtered:=true;
//      qry_up_scbz.Close;
//      qry_up_scbz.SQL.Clear;
//      qry_up_scbz.SQL.Text:='update pkrk_brxx set cxbz=0 where jydh ='''+trim(jydh.text)+''' ';
//      qry_up_scbz.ExecSQL;
    end else
    begin
      showmessage(ResponseStr);
    end ;

end;

procedure Tfrm_pkrk.btn_djcxClick(Sender: TObject);
begin
    if edt_cx.text<>'' then
    begin
      qry_xxcx.Filter:='tmh LIKE ''%'+ trim(edt_cx.text)+'%'' ';
      qry_xxcx.Filtered:=true;
      edt_cx.text:='';
      if qry_xxcx.IsEmpty then
      begin
        showmessage('未找到此病人上传信息！');
        qry_xxcx.Filtered:=false;
      end;
    end else
    begin
      showmessage('请输入条码号!');
      qry_xxcx.Filtered:=false;
    end;
end;

procedure Tfrm_pkrk.btn_exitClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_pkrk.Button1Click(Sender: TObject);
 var
    Url,url2 : string;              //请求地址
    ResponseStream : TStringStream; //返回信息
    ResponseStr : string;           //返回值
    ResponseStr2 : string;
    RequestStream : TStringStream;  //请求信息
    brxx:string;                    //病人信息
    JGID :string;                   //新增机构id 广元昭化：510000002258
    brxm1 :string;                  //病人姓名
    sfzh1 :string;                  //病人身份证
    Jiuzhenxx:IXMLNode;
begin
  if trim(jydh.text)='' then
  begin
    Application.MessageBox('交易单号不能为空！', '提示', 0 + 16);
    if jydh.CanFocus then jydh.SetFocus;
    exit;
  end;
  if trim(tmh.text)='' then
  begin
    Application.MessageBox('请输入卡号！', '提示', 0 + 16);
    if tmh.CanFocus then tmh.SetFocus;
    exit;
  end;
  if trim(sfzh.text)='' then
  begin
    Application.MessageBox('身份证号不能为空！', '提示', 0 + 16);
    sfzh.Enabled:=true;
    if sfzh.CanFocus then sfzh.SetFocus;
    exit;
  end;
  if trim(zyzd.text)='' then
  begin
    Application.MessageBox('主要诊断不能为空！', '提示', 0 + 16);
    if zyzd.CanFocus then zyzd.SetFocus;
    exit;
  end;
  if (trim(cyzd.text)='')and (pk_brbz = '1') then
  begin
    Application.MessageBox('次要诊断不能为空！', '提示', 0 + 16);
    if cyzd.CanFocus then zyzd.SetFocus;
    exit;
  end;


   //查询机构id
   qry_jgid.Close;
   qry_jgid.SQL.Clear;
   qry_jgid.SQL.Text :='select pkrkjgid from sys_yyxx';
   qry_jgid.Open;

   JGID :=trim(qry_jgid.FieldByName('pkrkjgid').Value);
   //brxm.Text:='万才学';//'万才学' ;
   brxm1:=trim(brxm.Text);//HTTPEncode(UTF8Encode(trim(brxm.Text)));     //将中文转为GB2312编码  '黄慧';
   //sfzh.text:='511124194410083415';//'511124194410083415';
   sfzh1 :=Trim(sfzh.text);//Trim(sfzh.text);  //'510311196510086688';
   brxx:='xingming='+brxm1+'&shenfenzh='+sfzh1+'&jigouid='+jgid+'';  //后面要加上jigouid=510000002258
   RequestStream := TStringStream.Create(brxx);
   ResponseStream := TStringStream.Create('');
   url := 'https://171.221.252.191:8087/pkrkwebapi/GetPinkunpb';  //验证病人信息
   url2 := 'https://171.221.252.191:8087/pkrkwebapi/SendJiuzhenxx';   //上传病人就诊信息

   IdHttp1.Request.ContentType :='application/x-www-form-urlencoded;charset=utf-8'; //'application/x-www-form-urlencoded'; // 定义发送mime类型;
   IdHttp1.ReadTimeout := 1000 * 60 * 1;

   RequestStream.Seek(0,soBeginning);
   IdHttp1.Post(Url,RequestStream,ResponseStream);

   ResponseStr:= UTF8decode(ResponseStream.DataString); //将GB2312编码转为unicode编码
   //edit1.Text := copy(ResponseStr,pos('tempuri.org/">',ResponseStr)+length('tempuri.org/">'),1);

    if ResponseStr='0' then
    begin
      showmessage('此病人不是贫困人口');
      exit;
    end else
    if ResponseStr='-1' then
    begin
      showmessage('通讯失败');
      exit;
    end else
    if ResponseStr='1' then
    begin
      XMLDocument1.XML.Clear;
      XMLDocument1.Options := [doNodeAutoIndent];                               //xml自动换行
      XMLDocument1.Active :=true;
      XMLDocument1.Version :='1.0';
      XMLDocument1.Encoding :='GB2312';

      Jiuzhenxx := XMLDocument1.AddChild('Jiuzhenxx');

      Jiuzhenxx.AddChild('jiaoyixh').Text:=trim(jydh.text);                     //交易序号
      Jiuzhenxx.AddChild('xingming').Text:=brxm1;                               //姓名
      Jiuzhenxx.AddChild('shenfenzh').Text:=sfzh1;                               //身份证
      if pk_brbz='1' then  //住院
      begin
        Jiuzhenxx.AddChild('menzhenzypb').Text:='2';                          //门诊 '1' 住院'2'
      end else
      begin
        Jiuzhenxx.AddChild('menzhenzypb').Text:='1';
      end;
      Jiuzhenxx.AddChild('jiuzhenrq').Text:=trim(ryrq.text);                    //就诊日期
      Jiuzhenxx.AddChild('zhuyuanhao').Text:=trim(zyh.text);                    //住院号
      Jiuzhenxx.AddChild('chuyuanrq').Text:=trim(cyrq.text);                    //出院日期
      Jiuzhenxx.AddChild('jiuzhenjg').Text:=jgid;                               //就诊机构代码
      Jiuzhenxx.AddChild('zhuyaozd').Text:=trim(zyzd.text);                     //主要诊断 上传疾病ICD10码
      Jiuzhenxx.AddChild('ciyaozd').Text:=trim(cyzd.text);                      //次要诊断 上传疾病ICD10码
      Jiuzhenxx.AddChild('zongjine').Text:=trim(zfy.text);                      //总金额
      Jiuzhenxx.AddChild('zifeije').Text:=trim(zfje.text);                      //自费金额
      Jiuzhenxx.AddChild('baoxiaoje').Text:=trim(bxje.text);                    //报销补助金额
      Jiuzhenxx.AddChild('ylfy01').Text:='0.00';                                //医疗机构减免
      Jiuzhenxx.AddChild('ylfy02').Text:=trim(ylbxje);                          //基本医疗保险
      Jiuzhenxx.AddChild('ylfy03').Text:='0.00';                                //大病医疗保险
      Jiuzhenxx.AddChild('ylfy04').Text:='0.00';                                //重大疾病扶贫基金
      Jiuzhenxx.AddChild('ylfy05').Text:='0.00';                                //区域内住院费用全报销救助
      Jiuzhenxx.AddChild('ylfy06').Text:='0.00';                                //疾病应急救助
      Jiuzhenxx.AddChild('ylfy07').Text:=trim(mzbz);                            //民政医疗救助
      Jiuzhenxx.AddChild('ylfy08').Text:='0.00';                                //卫生扶贫基金
      Jiuzhenxx.AddChild('ylfy09').Text:='0.00';                                //医药爱心基金
      Jiuzhenxx.AddChild('ylfy10').Text:='0.00';                                //商业保险
      Jiuzhenxx.AddChild('ylfy11').Text:=trim(qtbxje);                          //其他报销金额
      Jiuzhenxx.AddChild('jmfy1').Text:='0.00';                                 //减免一般诊疗费
      Jiuzhenxx.AddChild('jmfy2').Text:='0.00';                                 //减免院内会诊费
      Jiuzhenxx.AddChild('jmfy3').Text:='0.00';                                 //减免白内障复明手术费
      Jiuzhenxx.AddChild('jmfy4').Text:='0.00';                                 //减免艾滋病抗病毒治疗
      Jiuzhenxx.AddChild('jmfy5').Text:='0.00';                                 //减免基本公共卫生服务
      Jiuzhenxx.AddChild('jmfy6').Text:='0.00';                                 //减免妇幼卫生健康服务
      Jiuzhenxx.AddChild('jmfy7').Text:='0.00';                                 //减免巡回医疗服务
      Jiuzhenxx.AddChild('jmfy8').Text:='0.00';                                 //减免药物治疗包虫病
      Jiuzhenxx.AddChild('jmfy9').Text:='0.00';                                 //减免基本医保个人缴费
      Jiuzhenxx.AddChild('jmfy10').Text:='0.00';                                //减免贫困孕产妇住院分娩
      Jiuzhenxx.AddChild('bzfy2').Text:='0.00';                                 //晚期血吸虫病人补助
      Jiuzhenxx.AddChild('bzfy3').Text:='0.00';                                 //手术治疗包虫病补助
      Jiuzhenxx.AddChild('bzfy4').Text:='0.00';                                 //大骨节病患者年补助
      Jiuzhenxx.AddChild('bzfy5').Text:='0.00';                                 //0-6岁残疾儿童手术、康复康复训练和辅具

      //ShowMessage(XMLDocument1.XML.Text);

      {保存}
      XMLDocument1.SaveToFile('d:\贫困人口.xml');

      RequestStream := TStringStream.Create('');
      ResponseStream := TStringStream.Create('');

      RequestStream := TStringStream.Create(XMLDocument1.XML.Text);

      IdHttp1.Request.ContentType :='application/x-www-form-urlencoded'; //'application/x-www-form-urlencoded;charset=utf-8'; // 定义发送mime类型;
      IdHttp1.ReadTimeout := 1000 * 60 * 1;

      RequestStream.Seek(0,soBeginning);
      IdHttp1.Post(url2,RequestStream,ResponseStream);

      ResponseStr2:= UTF8decode(ResponseStream.DataString);
//      showmessage(ResponseStr);

      if ResponseStr2='1' then
      begin
        showmessage('上传成功');

        qry_save.Close;
        qry_save.SQL.Clear;
        qry_save.SQL.Text:=('INSERT into pkrk_scxx (jydh,tmh,zyh,brxm,sfzh,ryrq,cyrq,brbz,zfy,zfje,bxje,zyzd,cyzd,scrq,cxbz)VALUES '+
                          '('+''''+jydh.text+''''+','+''''+tmh.text+''''+','+''''+zyh.text+''''+','+''''+brxm.text+''''+','+''''+sfzh.text+''''+','+
                          ' '+''''+ryrq.text+''''+','+''''+cyrq.text+''''+','+'''1'''+','+''''+zfy.text+''''+',' +''''+zfje.text+''''+','+
                          ' '+''''+bxje.text+''''+','+''''+zyzd.text+''''+','+''''+cyzd.text+''''+',getdate(),1)');
        qry_save.ExecSQL;
        Button2Click(Button1);
      end else
      begin
        showmessage(ResponseStr2);
        Button2Click(Button1);
      end;
      
    end else
    begin
      showmessage(ResponseStr);
    end ;
end;

procedure Tfrm_pkrk.Button2Click(Sender: TObject);
begin
  tmh.Text := '';
  sfzh.Text := '';
  zyh.Text := '';
  brxm.text := '';
  ryrq.text := '';
  cyrq.text := '';
  zfy.text := '';
  zfje.text := '';
  zyzd.text := '';
  cyzd.text := '';
  jydh.text := '';
  bxje.text := '';
  if jydh.CanFocus then  jydh.SetFocus;
end;

procedure Tfrm_pkrk.b_exitClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_pkrk.cyzdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin

    qry_icd10.Close;
    qry_icd10.SQL.Clear;
    qry_icd10.SQL.text :='select * from bagl..icd10 where JBBM LIKE ''%'+trim(cyzd.Text)+'%'' or pybm LIKE ''%'+trim(cyzd.Text)+'%''';
    qry_icd10.Open;

    if qry_icd10.IsEmpty then
    begin
      MessageBox(Handle,'没有可选择的诊断编码','提示',64);
      abort;
    end else
    begin
      grid_cyzd.Visible :=True;
      if grid_cyzd.CanFocus then
        grid_cyzd.SetFocus;
    end;

  end;
end;

procedure Tfrm_pkrk.displayvalue;
 begin
    sfzh.Text := trim(sp_cx_zybrjbqk.FieldByName('sfzhm').Value);
    zyh.Text  := trim(sp_cx_zybrjbqk.FieldByName('zyh').Value);
    brxm.text := trim(sp_cx_zybrjbqk.FieldByName('brxm').Value);
    ryrq.text := trim(sp_cx_zybrjbqk.FieldByName('ryrq').Value);
    cyrq.text := trim(sp_cx_zybrjbqk.FieldByName('cyrq').Value);
    zfy.text  := trim(sp_cx_zybrjbqk.FieldByName('ylzfy').Value);
    //jydh.text := trim(sp_cx_zybrjbqk.FieldByName('zyh').Value);
    zfje.text := trim(sp_cx_zybrjbqk.FieldByName('xjzf').Value);
    bxje.text := trim(sp_cx_zybrjbqk.FieldByName('bxje').Value);
    zyzd.text := trim(sp_cx_zybrjbqk.FieldByName('cyzd').Value);
    cyzd.text := trim(sp_cx_zybrjbqk.FieldByName('cyzd').Value);
    ylbxje := trim(sp_cx_zybrjbqk.FieldByName('ylbxje').Value);
    mzbz   := trim(sp_cx_zybrjbqk.FieldByName('mzbz').Value);
    qtbxje := trim(sp_cx_zybrjbqk.FieldByName('qtbxje').Value);
 end;

procedure Tfrm_pkrk.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     Button1.SetFocus;
  end;
end;

procedure Tfrm_pkrk.ts1Show(Sender: TObject);
begin
  with qry_xxcx do
  begin
    Close;
    SQL.Clear;
    SQL.text:='select * from pkrk_scxx where cxbz=1 order by scrq desc';
    Open;
  end;

  edt_sfzh.Enabled := false;
  edt_zyh.Enabled := false;
  edt_brxm.Enabled := false;
  edt_ryrq.Enabled := false;
  edt_cyrq.Enabled := false;
  edt_zfy.Enabled := false;
  edt_zfje.Enabled := false;
  edt_bxje.Enabled := false;
  edt_tmh.Enabled := false;
  edt_jydh.Enabled := false;
  edt_zyzd.Enabled := false;
  edt_cyzd.Enabled := false;
  if edt_cx.CanFocus then  edt_cx.SetFocus;
end;

procedure Tfrm_pkrk.ts_scxxExit(Sender: TObject);
begin
  Button2Click(ts_scxx);
end;

procedure Tfrm_pkrk.ts_scxxShow(Sender: TObject);
begin
  sfzh.Enabled := true;  //病人身份证出错可以修改！
  zyh.Enabled := false;
  brxm.Enabled := false;
  ryrq.Enabled := false;
  cyrq.Enabled := false;
  zfy.Enabled := false;
  zfje.Enabled := false;
  bxje.Enabled := false;
  if jydh.CanFocus then  jydh.SetFocus;
end;

procedure Tfrm_pkrk.zyzdExit(Sender: TObject);
begin
//  if trim(zyzd.text)='' then
//  begin
//    Application.MessageBox('主要诊断不能为空！', '提示', 0 + 16);
//    if zyzd.CanFocus then
//        zyzd.SetFocus;
//    exit;
//  end;
end;

procedure Tfrm_pkrk.zyzdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin

    qry_icd10.Close;
    qry_icd10.SQL.Clear;
    qry_icd10.SQL.text :='select * from bagl..icd10 where JBBM LIKE ''%'+trim(zyzd.Text)+'%'' or pybm LIKE ''%'+trim(zyzd.Text)+'%''';
    qry_icd10.Open;

    if qry_icd10.IsEmpty then
    begin
      MessageBox(Handle,'没有可选择的诊断编码','提示',64);
      abort;
    end else
    begin
      grid2.Visible :=True;
      if grid2.CanFocus then
        grid2.SetFocus;
    end;

  end;
end;

end.
