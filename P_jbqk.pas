unit P_jbqk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DBSumLst, Grids,
  DBGrids, cxControls, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, SXAgeBox, StrUtils, cxGraphics,
  cxCheckComboBox,superobject, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  Tfrm_jbqk = class( TForm )
    sp_cx_zybrjbqk: TADOStoredProc;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    jbqk_cx: TADODataSet;
    dstemp: TDataSource;
    ds_cx_zybrjbqk: TDataSource;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label30: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    Label40: TLabel;
    sfzh: TEdit;
    sbkh: TEdit;
    brxm: TEdit;
    brmz: TComboBox;
    brjg: TComboBox;
    brsf: TComboBox;
    brxb: TComboBox;
    brzy: TComboBox;
    lxr: TEdit;
    dwdh: TEdit;
    dwdz: TEdit;
    lxrdh: TEdit;
    lxrdz: TEdit;
    bch: TEdit;
    ryzd: TEdit;
    rytj: TComboBox;
    rybq: TComboBox;
    ryks: TComboBox;
    zfy: TEdit;
    yjze: TEdit;
    zdjf: TEdit;
    bz: TEdit;
    ryczy: TEdit;
    ndybzje: TEdit;
    ksdm: TEdit;
    tempgrid: TDBGrid;
    zgys: TComboBox;
    zycs: TMaskEdit;
    dwyb: TEdit;
    jtyb: TEdit;
    hljb: TComboBox;
    fylb: TEdit;
    tmh: TEdit;
    tempgrid1: TDBGrid;
    csrq: TcxDateEdit;
    Label10: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    GroupBox1: TGroupBox;
    ComboBox10: TComboBox;
    Label54: TLabel;
    ComboBox9: TComboBox;
    Label53: TLabel;
    Label50: TLabel;
    Label43: TLabel;
    Label52: TLabel;
    Label47: TLabel;
    Label42: TLabel;
    ComboBox3: TComboBox;
    Label41: TLabel;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    Label26: TLabel;
    Edit3: TEdit;
    Label22: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Label8: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    ComboBox4: TComboBox;
    Label56: TLabel;
    ComboBox5: TComboBox;
    Label57: TLabel;
    ComboBox6: TComboBox;
    Edit5: TEdit;
    Label29: TLabel;
    ComboBox8: TComboBox;
    qry_brbaxx: TADOQuery;
    Label48: TLabel;
    qry_up_baxx: TADOQuery;
    Label49: TLabel;
    Edit6: TEdit;
    brnl_1: TSXAgeBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Panel4: TPanel;
    Label51: TLabel;
    Label55: TLabel;
    Panel5: TPanel;
    Label59: TLabel;
    Edit_zyzd: TEdit;
    Spdb_zyzd: TSpeedButton;
    Edit_zyzx: TEdit;
    Label58: TLabel;
    Edit_zyzf: TEdit;
    Edit_zyfm: TEdit;
    SpeedButton1: TSpeedButton;
    Qry_zyzd: TADOQuery;
    Label60: TLabel;
    zghs: TComboBox;
    cxDateEdit1: TcxDateEdit;
    qry_nl: TADOQuery;
    bah: TEdit;
    Label61: TLabel;
    qry_zghs: TADOQuery;
    Label62: TLabel;
    edt_jsr: TEdit;
    Label63: TLabel;
    ds_tsrq: TADODataSet;
    HTTP_yfbksms: TIdHTTP;
    qry_yfbksms: TADOQuery;
    ado_tsrq: TADOStoredProc;
    tsrq: TcxCheckComboBox;
    qry_tsrq: TADOQuery;
    sp_up_jbqk: TADOStoredProc;
    procedure tmhExit( Sender: TObject );
    procedure BitBtn4Click( Sender: TObject );
    procedure FormKeyPress( Sender: TObject; var Key: Char );
    procedure BitBtn2Click( Sender: TObject );
    procedure FormCreate( Sender: TObject );
    procedure brsfExit( Sender: TObject );
    procedure brjgExit( Sender: TObject );
    procedure brmzExit( Sender: TObject );
    procedure brzyExit( Sender: TObject );
    procedure ryksExit( Sender: TObject );
    procedure rytjExit( Sender: TObject );
    procedure BitBtn3Click( Sender: TObject );
    procedure tempgridExit( Sender: TObject );
    procedure zgysExit( Sender: TObject );
    procedure BitBtn1Click( Sender: TObject );
    procedure hljbExit( Sender: TObject );
    procedure tempgrid1Exit( Sender: TObject );
    procedure brxbExit( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure dwdzExit( Sender: TObject );
    procedure dwybExit( Sender: TObject );
    procedure csrqEnter( Sender: TObject );
    procedure ComboBox2Change( Sender: TObject );
    procedure ComboBox10Change( Sender: TObject );
    procedure ComboBox4Change( Sender: TObject );
    procedure ComboBox5Change( Sender: TObject );
    procedure ComboBox9Change( Sender: TObject );
    procedure csrqExit(Sender: TObject);
    procedure brxmChange(Sender: TObject);
    procedure Spdb_zyzdClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure brnl_1Change(Sender: TObject);
    procedure sfzhExit(Sender: TObject);
    function  yfbkjbbk_json(ypmc : string): WideString;  //医方百科药品说明书
    function yfbk_jk(http: TIDHTTP; URL: string; InputJson: ISuperObject; var OutputJson: ISuperObject; var error: string): boolean; //医方百科调用连接方式
    function strToJson(jsonstr:WideString):ISuperObject;
    function yfbk_hqtsrq(tsrq : string): WideString;
    function PosExnew(const SubStr, S: AnsiString; const Offset: Cardinal = 1): Integer;
  var
  private
    { Private declarations }
      Fcrzyh:string;//传入住院号
  public
    { Public declarations }

    resultf, sfdm: string;
    tempcom: Tcombobox;
    procedure displayvalue;
    procedure displaynull;
    procedure finditems( tablename, numf, charf, resultf, info: string; tempcom: Tcombobox );
    function  checkerror :Boolean;
    property crzyh:string  read Fcrzyh write Fcrzyh;
  end;

var
  frm_jbqk: Tfrm_jbqk;
  sfqyzyzd:Boolean;
  yfbkjbbk_scjson,InputJson,OutputJson,yfbkjg,SC_JSON,pub_json : ISuperObject;
  error,yfbksmswz : string;
   List: TStringList;
  rq_arr : array of string;
implementation
uses p_dm, p_func, p_cx_zyzd;
var FormTitle:String;
{$R *.DFM}

function Tfrm_jbqk.strToJson(jsonstr:WideString):ISuperObject; //生成json
begin
  jsonstr := StringReplace(jsonstr, #$D#$A, '', [rfReplaceAll]);
  pub_json := TSuperObject.Create();
  pub_json := SO(jsonstr);
  result := pub_json;
end;

function Tfrm_jbqk.yfbkjbbk_json(ypmc : string): WideString;  //医方百科药品说明书
var
     yfbksms : string;
     begin
     yfbksms :='{"TaskID":"人群查询",' +
             '"授权ID":"0CE192ED-2ED9-4026-8A42-2621408D67E9"'+
            '}';
     yfbkjbbk_scjson :=strToJson(yfbksms) ;
     end;

function SymbolEntersCount(s: string; ch: char): integer;
var
  i: integer;
begin
  Result := 0;
  if Trim(s) <> '' then
  begin
    for i := 1 to Length(s) do
    begin
      if s[i] = ch then
        inc(Result);
    end;
  end;
end;

function Tfrm_jbqk.PosExnew(const SubStr, S: AnsiString; const Offset: Cardinal = 1): Integer;
var
  iPos: Integer;
  i, j, LenS, LenSub: Integer;
  PCharS, PCharSub: PChar;
begin
  Result := 0;
  LenS := Length(S);
  lenSub := length(Substr);
  if (LenS = 0) or (lenSub = 0) then
  begin
    Exit;
  end;
  if (LenS - lenSub) < Offset then
  begin
    Exit;
  end;
  PCharS := PChar(s);
  PCharSub := PChar(Substr);

  for I := Offset - 1 to LenS - 1 do
  begin
    if lens - I < LenSub then
      Exit;
    for j := 0 to lenSub - 1 do
      if PCharS[i + j] <> PCharSub[j] then
        break
      else if J = LenSub - 1 then
      begin
        Result := I + 1;
        Exit;
      end;
  end;
end;


function Tfrm_jbqk.yfbk_hqtsrq(tsrq : string): WideString;
var
    tsrqsj : string;
    tqtsrq : string;
    arrsj : string;
    s,I: Integer;
begin
    tsrqsj := stringreplace(tsrq,CHR(34),'@',[rfreplaceall]);
    tsrqsj := stringreplace(tsrqsj,' {@人群名称@:','',[rfreplaceall]);
    tsrqsj := StringReplace(tsrqsj,'#$D#$A','',[rfreplaceall]);
    s :=SymbolEntersCount(tsrqsj,'@');
    List := TStringList.Create;
    SetLength(rq_arr, 28);
    try
      List.Sorted := True;
      for I := 1 to 28 do
      begin
         tqtsrq := Copy(tsrqsj,PosEx('@',tsrqsj,1),PosEx('@',tsrqsj,2));
         List.Add(tqtsrq);
         arrsj := stringreplace(tqtsrq,'@','',[rfreplaceall]);
         arrsj := stringreplace(arrsj,'},','',[rfreplaceall]);
         tsrqsj := stringreplace(tsrqsj,tqtsrq,'',[rfreplaceall]) ;
         rq_arr[i-1] := arrsj;
      end;
    finally
      List.Free;
    end;
end;

function Tfrm_jbqk.yfbk_jk(http: TIDHTTP; URL: string; InputJson: ISuperObject; var OutputJson: ISuperObject; var error: string): boolean; //医方百科调用连接方式
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

      yfbksmswz :=StringReplace(copy(tmpstr,pos('[',tmpstr)+1,pos(']',tmpstr)),rightstr(tmpstr,21),'',[]);
     // showmessage(yfbksmswz);
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
  FreeAndNil(Stream);
  FreeAndNil(TargetStream);
end;

procedure Tfrm_jbqk.tmhExit(Sender: TObject );
var
  s, z_zyh: string;
begin
  z_zyh := '';
  //    frm_func.restorecolor(sender);
  if ( not ( bitbtn4.Focused or bitbtn3.focused ) ) and ( trim( tmh.text ) <> '' ) then
  begin
    s := tmh.Text;
    if s[1] in ['0'..'9'] then
      s := stringofchar( '0', 9 - length( s ) ) + s;
    tmh.Text := s;

    with sp_cx_zybrjbqk do
    begin
      Close;
      parameters.ParamByName( '@tmh' ).value := trim( tmh.text );
      parameters.ParamByName( '@xm' ).value := trim( tmh.text );
      parameters.ParamByName( '@bch' ).value := trim( tmh.text );
      parameters.ParamByName( '@ksdm' ).value := pub_bqdm;
      parameters.ParamByName('@zyh').value := trim(Fcrzyh);
      active := true;
    end;
    if sp_cx_zybrjbqk.ProcedureName<>'bqgl_cx_zybrjbqk_cy' then
    begin
      sp_cx_zybrjbqk.First;
      while not sp_cx_zybrjbqk.eof do
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text := 'select * from zysf_zydj where zyh=' + '''' +
        sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring + ''' and cybz=0';
        DM_data.qry_pub.Open;
        if not DM_data.qry_pub.IsEmpty then
          z_zyh := DM_data.qry_pub.FieldByName( 'zyh' ).AsString;
        sp_cx_zybrjbqk.Next;
      end;
      sp_cx_zybrjbqk.Filtered := False;
      sp_cx_zybrjbqk.Filter := 'zyh=' + '''' + z_zyh + '''';
      sp_cx_zybrjbqk.Filtered := True;
    end;

    if sp_cx_zybrjbqk.isempty then
    begin
      Application.MessageBox( '没有此病人！', '错误', 0 + 16 );
      tmh.setfocus;
    end
    else
      if sp_cx_zybrjbqk.recordcount > 1 then
      begin
        tempgrid1.Columns.Clear;
        tempgrid1.Columns.add;
        tempgrid1.Columns[0].field := sp_cx_zybrjbqk.fieldlist[0];
        tempgrid1.Columns[0].title.caption := '条码号';
        tempgrid1.Columns.add;
        tempgrid1.Columns[1].field := sp_cx_zybrjbqk.fieldlist[2];
        tempgrid1.Columns[1].title.caption := '姓名';
        tempgrid1.left := tmh.left;
        tempgrid1.top := tmh.top + tmh.Height;
        tempgrid1.visible := true;
        tempgrid1.setfocus;
      end
      else
      begin
        displayvalue;
        panel3.enabled := false;
        if bitbtn2.Visible=true then
        begin
          bitbtn2.setfocus;
        end;
      end;
  end
  else
    if not ( bitbtn4.Focused or bitbtn3.Focused ) then
    begin
      Application.MessageBox( '请输入病员姓名、住院卡号或床号！', '错误', 0 + 16 );
      tmh.setfocus;
    end
end;

procedure Tfrm_jbqk.displayvalue;
begin
  //显示值
  brxm.text := trim( sp_cx_zybrjbqk.fieldbyname( 'brxm' ).asstring );
  if trim( sp_cx_zybrjbqk.fieldbyname( 'brxb' ).asstring )='男' then
  begin
    brxb.ItemIndex:=0;
  end
  else
  begin
    brxb.ItemIndex:=1;
  end;
  //brxb.text := trim( sp_cx_zybrjbqk.fieldbyname( 'brxb' ).asstring );
  if Getxtcs('yxbkhlyy')='1' then
  begin
    tsrq.Properties.EmptySelectionText := Trim(sp_cx_zybrjbqk.FieldByName('tsrq').AsString);
  end;
  bah.text:= trim( sp_cx_zybrjbqk.fieldbyname( 'bah' ).asstring );
  csrq.Date := sp_cx_zybrjbqk.fieldbyname( 'csrq' ).asdatetime;
  sfzh.text := trim( sp_cx_zybrjbqk.fieldbyname( 'sfzhm' ).asstring );
  sbkh.text := trim( sp_cx_zybrjbqk.fieldbyname( 'sbkh' ).asstring );
  brzy.text := trim( sp_cx_zybrjbqk.fieldbyname( 'brzy' ).asstring );
  brsf.text := trim( sp_cx_zybrjbqk.fieldbyname( 'sfmc' ).asstring );
  brjg.text := trim( sp_cx_zybrjbqk.fieldbyname( 'jgmc' ).asstring );
  brmz.text := trim( sp_cx_zybrjbqk.fieldbyname( 'mzmc' ).asstring );
  dwdz.text := trim( sp_cx_zybrjbqk.fieldbyname( 'brdz' ).asstring );
  dwdh.text := trim( sp_cx_zybrjbqk.fieldbyname( 'dwdh' ).asstring );
  dwyb.text := trim( sp_cx_zybrjbqk.fieldbyname( 'dwyb' ).asstring );
  lxr.text := trim( sp_cx_zybrjbqk.fieldbyname( 'dbr' ).asstring );
  lxrdh.text := trim( sp_cx_zybrjbqk.fieldbyname( 'nxrdh' ).asstring );
  lxrdz.text := trim( sp_cx_zybrjbqk.fieldbyname( 'dbrdz' ).asstring );

  jtyb.text := trim( sp_cx_zybrjbqk.fieldbyname( 'hkyb' ).asstring );
  bch.text := trim( sp_cx_zybrjbqk.fieldbyname( 'bch' ).asstring );
  ryzd.text := trim( sp_cx_zybrjbqk.fieldbyname( 'ryzd' ).asstring );
  ksdm.text := trim( sp_cx_zybrjbqk.fieldbyname( 'ksmc' ).asstring );
  zgys.text := trim( sp_cx_zybrjbqk.fieldbyname( 'ysxm' ).asstring );
  zycs.text := trim( sp_cx_zybrjbqk.fieldbyname( 'zycs' ).asstring );
  fylb.text := trim( sp_cx_zybrjbqk.fieldbyname( 'lbmc' ).asstring );
  ryks.text := trim( sp_cx_zybrjbqk.fieldbyname( 'ryksmc' ).asstring );
  rybq.text := trim( sp_cx_zybrjbqk.fieldbyname( 'rybq' ).asstring );
  zghs.Text := trim( sp_cx_zybrjbqk.fieldbyname( 'hsxm' ).asstring );

  rytj.text := trim( sp_cx_zybrjbqk.fieldbyname( 'tjmc' ).asstring );
//  ryrq.text := formatdatetime( 'yyyy"-"mm"-"dd hh', sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asdatetime );
  cxDateEdit1.date:=sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asdatetime;
  zdjf.text := trim( sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asstring );
  yjze.text := trim( sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asstring );
  zfy.text := trim( sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asstring );
  hljb.text := trim( sp_cx_zybrjbqk.fieldbyname( 'hljbmc' ).asstring );
  ndybzje.text := floattostr( sp_cx_zybrjbqk.fieldbyname( 'ybndzje' ).asfloat );
  ryczy.text := trim( sp_cx_zybrjbqk.fieldbyname( 'czyxm' ).asstring );
  bz.text := trim( sp_cx_zybrjbqk.fieldbyname( 'bz' ).asstring );
  Edit6.Text:=  trim( sp_cx_zybrjbqk.fieldbyname( 'bah' ).asstring );
 // edt_jsr.Text:=  trim( sp_cx_zybrjbqk.fieldbyname( 'jsr' ).asstring );
  //赋值给保存参数
  brnl_1.Csrq := csrq.Date;
  sp_up_jbqk.parameters.ParamByName( '@brsf' ).value := sp_cx_zybrjbqk.fieldbyname( 'brsf' ).asstring;
  sp_up_jbqk.parameters.ParamByName( '@brjg' ).value := sp_cx_zybrjbqk.fieldbyname( 'brjg' ).asstring;
  sp_up_jbqk.parameters.ParamByName( '@brmz' ).value := sp_cx_zybrjbqk.fieldbyname( 'brmz' ).asstring;
  sp_up_jbqk.parameters.ParamByName( '@zgys' ).value := sp_cx_zybrjbqk.fieldbyname( 'zgys' ).asstring;
  sp_up_jbqk.parameters.ParamByName( '@fylb' ).value := sp_cx_zybrjbqk.fieldbyname( 'fylb' ).asstring;
  sp_up_jbqk.parameters.ParamByName( '@ryks' ).value := sp_cx_zybrjbqk.fieldbyname( 'ryks' ).asstring;
  sp_up_jbqk.parameters.ParamByName( '@rytj' ).value := sp_cx_zybrjbqk.fieldbyname( 'rytj' ).asstring;
  sp_up_jbqk.parameters.ParamByName( '@hljb' ).value := sp_cx_zybrjbqk.fieldbyname( 'hljb' ).asstring;

  qry_brbaxx.close;
  qry_brbaxx.Parameters.ParamByName( 'zyh' ).Value := sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
  qry_brbaxx.Open;
  if not qry_brbaxx.IsEmpty then
  begin
    Edit3.Text := qry_brbaxx.FieldByName( 'byqq' ).AsString;
    Edit1.Text := qry_brbaxx.FieldByName( 'byyx' ).AsString;
    Edit2.Text := qry_brbaxx.FieldByName( 'jkkh' ).AsString;
    combobox2.Text := qry_brbaxx.FieldByName( 'hkdzsf' ).AsString;
    combobox10.Text := qry_brbaxx.FieldByName( 'hkdzs' ).AsString;
    combobox3.Text := qry_brbaxx.FieldByName( 'hkdzx' ).AsString;
    Edit4.text := qry_brbaxx.FieldByName( 'hkdzxx' ).AsString;
    combobox4.Text := qry_brbaxx.FieldByName( 'csdsf' ).AsString;
    combobox5.Text := qry_brbaxx.FieldByName( 'csds' ).AsString;
    combobox6.Text := qry_brbaxx.FieldByName( 'csdx' ).AsString;
    edit5.Text := qry_brbaxx.FieldByName( 'gzdwdz' ).AsString;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from  sys_ylfffs where dm=' +
      qry_brbaxx.FieldByName( 'ylfffs' ).AsString;
    DM_data.qry_pub.Open;
    ComboBox1.Text := DM_data.qry_pub.FieldByName( 'mc' ).AsString;
    combobox9.Text := qry_brbaxx.FieldByName( 'jgsf' ).AsString;
    combobox8.Text := qry_brbaxx.FieldByName( 'jgs' ).AsString;
  end;

  if sfqyzyzd then
  begin
    Qry_zyzd.Close;
    Qry_zyzd.Parameters.ParamByName('zyh').Value:=sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
    Qry_zyzd.Open;
    if not Qry_zyzd.IsEmpty then
    begin
      Edit_zyzd.Text := Qry_zyzd.FieldByName('zyzd').AsString;
      Edit_zyzx.Text := Qry_zyzd.FieldByName('zyzx').AsString;
      Edit_zyzf.Text := Qry_zyzd.FieldByName('zyzf').AsString;
      Edit_zyfm.Text := Qry_zyzd.FieldByName('zyfm').AsString;

    end;
  end;

end;

procedure Tfrm_jbqk.displaynull;
begin
  //显示值
  brxm.text := '';
  brxb.text := '';
  csrq.text := '';
  sfzh.text := '';
  sbkh.text := '';
  brzy.text := '';
  brsf.text := '';
  brjg.text := '';
  brmz.text := '';
  dwdz.text := '';
  dwdh.text := '';
  dwyb.text := '';
  lxr.text := '';
  lxrdh.text := '';
  lxrdz.text := '';

  jtyb.text := '';
  bch.text := '';
  ryzd.text := '';
  ksdm.text := '';
  zgys.text := '';
  zycs.text := '';
  fylb.text := '';
  ryks.text := '';
  rybq.text := '';
  zghs.Text := '';

  rytj.text := '';
 // ryrq.text := '';
  cxDateEdit1.Date:=0;
  zdjf.text := '0';
  yjze.text := '0';
  zfy.text := '0';
  hljb.text := '1';
  ndybzje.text := '0';
  ryczy.text := '';
  bz.text := '';
  edit1.text := '';
  edit2.text := '';
  edit3.text := '';
  edit4.text := '';
  edit5.text := '';
  ComboBox1.text := '';
  ComboBox2.text := '';
  ComboBox3.text := '';
  ComboBox4.text := '';
  ComboBox5.text := '';
  ComboBox6.text := '';
  ComboBox8.text := '';
  ComboBox9.text := '';
  ComboBox10.text := '';


  Edit_zyzd.Text:='';
  Edit_zyzx.Text:='';
  Edit_zyfm.text:='';
  Edit_zyzf.text:='';


end;

procedure Tfrm_jbqk.BitBtn4Click( Sender: TObject );
begin
  close;
end;

procedure Tfrm_jbqk.FormKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    SelectNext( activeControl, true, true );
end;

procedure Tfrm_jbqk.BitBtn2Click( Sender: TObject );
begin
  panel3.enabled := true;
   if sfqyzyzd then 
   begin
    GroupBox2.Enabled:=True;
   end;
  if pub_yydm = '0274' then      //南通医院  地址上面的内容护士站不允许修改
  begin
    brxm.Enabled := false;
    sbkh.Enabled := false;
    sfzh.Enabled := false;
    csrq.Enabled := false;
    brzy.Enabled := false;
    brxb.Enabled := false;
    brsf.Enabled := false;
    brjg.Enabled := false;
    brmz.Enabled := false;
    dwdh.Enabled := false;
    dwyb.Enabled := false;
    dwdz.Enabled := false;
    lxr.Enabled := false;
    lxrdh.Enabled := false;
    if lxrdz.CanFocus then
      lxrdz.setfocus;
  end else
    brxm.setfocus;
  
end;

procedure Tfrm_jbqk.FormCreate( Sender: TObject );
var v_zyh:string;
  I: Integer;
begin
  //加入职业
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from zysf_brzy order by dm';
  jbqk_cx.Open;
  brZY.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brzy.items.Add( jbqk_cx['sm'] );
    jbqk_cx.next;
  end;
  //加入特殊人群
  if Getxtcs('yxbkhlyy')='1' then
  begin
  qry_yfbksms.close;   //提取医方百科获取的网址
  qry_yfbksms.open;
  frm_jbqk.yfbkjbbk_json('');   //组织医方百科传入的json
  frm_jbqk.yfbk_jk(frm_jbqk.HTTP_yfbksms,frm_jbqk.qry_yfbksms.FieldByName('bz').AsString,yfbkjbbk_scjson,SC_JSON,error);//获取医方百科返回的结果值
  frm_jbqk.yfbk_hqtsrq(yfbksmswz);  //通过数组去组织医方百科特殊人群：未用
  ado_tsrq.Close;
  ado_tsrq.Parameters.ParamByName('@str').Value := yfbksmswz; //通过过程去写入到sys_tsrq表内
  ado_tsrq.ExecProc;

  ds_tsrq.close;
  ds_tsrq.CommandText :=  'select * from sys_tsrq '; //特殊人群显示值
  ds_tsrq.Open;
  tsrq.Properties.Items.Clear;
//  while not ds_tsrq.Eof do
//  begin
     for I := 1 to ds_tsrq.RecordCount  do
      begin
          qry_tsrq.Close;
          qry_tsrq.Parameters.ParamByName('id').Value := i;
          qry_tsrq.Open;
          tsrq.Properties.Items.Add.Description := qry_tsrq.FieldByName('mc').AsString;
      end;
 // end;
  end;
//  for I := 0 to 28 do
//  begin
//    tsrq.Items.Add(rq_arr[i]);
//  end;
  //加入省份
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_sf order by sypl';
  jbqk_cx.Open;
  brsf.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brsf.items.Add( jbqk_cx['mc'] );
    jbqk_cx.next;
  end;
  //加入籍贯
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_jg order by sypl';
  jbqk_cx.Open;
  brjg.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brjg.items.Add( jbqk_cx['mc'] );
    jbqk_cx.next;
  end;
  //加入民族
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_mz order by sypl';
  jbqk_cx.Open;
  brmz.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brmz.items.Add( jbqk_cx['mc'] );
    jbqk_cx.next;
  end;
  //加入医生
  if pub_yydm<>'0271' then
  begin
    jbqk_cx.Close;
    jbqk_cx.commandtext := 'select * from sys_czy  where ysbz=1 and sybz=1 and ksdm in (select bqzydm from sys_bqzyfl where  bqdm=' + #39 + pub_bqdm + #39 + ')order by dm';
    jbqk_cx.Open;
  end else
  begin
    jbqk_cx.Close;
    jbqk_cx.commandtext := 'exec p_cx_zgys '''+pub_bqdm+''','''+pub_zyh+'''';
    jbqk_cx.Open;
  end;
  zgys.Items.Clear;
  while not jbqk_cx.eof do
  begin
    zgys.items.Add( jbqk_cx['mc'] );
    jbqk_cx.next;
  end;
  //加入护士
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_czy  where ysbz<>1 and sybz=1 and ksdm in (select bqzydm from sys_bqzyfl where  bqdm=' + #39 + pub_bqdm + #39 + ')order by dm';
  jbqk_cx.Open;
  zghs.Items.Clear;
  while not jbqk_cx.eof do
  begin
    zghs.items.Add( jbqk_cx['mc'] );
    jbqk_cx.next;
  end;
  //加入费用类别
  {jbqk_cx.Close;
  jbqk_cx.commandtext:='select * from sys_fylb order by dm';
  jbqk_cx.Open;
  fylb.Items.Clear;
  while not jbqk_cx.eof do
  begin
  fylb.items.Add(jbqk_cx['mc']);
  jbqk_cx.next;
  end;}
  //加入护理级别
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_hljb order by dm';
  jbqk_cx.Open;
  ryks.Items.Clear;
  while not jbqk_cx.eof do
  begin
    hljb.items.Add( jbqk_cx['mc'] );
    jbqk_cx.next;
  end;

  //加入科室
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_ksdm where sybz=1 and kssx=' + #39 + '09' + #39;
  jbqk_cx.Open;
  ryks.Items.Clear;
  while not jbqk_cx.eof do
  begin
    ryks.items.Add( jbqk_cx['mc'] );
    jbqk_cx.next;
  end;
  //加入入院途径
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from zysf_rytj order by dm';
  jbqk_cx.Open;
  rytj.Items.Clear;
  while not jbqk_cx.eof do
  begin
    rytj.items.Add( jbqk_cx['sm'] );
    jbqk_cx.next;
  end;

  //加入病案籍贯
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from  sys_xzqh where jb=1';
  jbqk_cx.Open;
  ComboBox2.Items.Clear;
  ComboBox4.Items.Clear;
  ComboBox9.Items.Clear;
  while not jbqk_cx.eof do
  begin
    ComboBox2.items.Add( jbqk_cx['qhmc'] );
    ComboBox4.items.Add( jbqk_cx['qhmc'] );
    ComboBox9.items.Add( jbqk_cx['qhmc'] );
    jbqk_cx.next;
  end;

  //加入病案医疗付费方式
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from  sys_ylfffs';
  jbqk_cx.Open;
  ComboBox1.Items.Clear;
  while not jbqk_cx.eof do
  begin
    ComboBox1.items.Add( jbqk_cx['mc'] );
    jbqk_cx.next;
  end;
end;

procedure Tfrm_jbqk.brsfExit( Sender: TObject );
begin
  //frm_func.restorecolor(sender);
  if trim( brsf.text ) = '' then brsf.text := '01';
  resultf := 'mc';
  tempcom := brsf;
  finditems( 'sys_sf', 'dm', 'py', 'mc', '省份', brsf );
  sp_up_jbqk.parameters.ParamByName( '@brsf' ).value := jbqk_cx['dm'];

end;

procedure Tfrm_jbqk.finditems( tablename, numf, charf, resultf, info: string; tempcom: Tcombobox );
var
  findfield, s: string;
begin
  s := trim( tempcom.Text );
  if s <> '' then
  begin
    if s[1] in ['0'..'9'] then
      findfield := numf
    else
      if s[1] in ['A'..'Z', 'a'..'z'] then
        findfield := charf
      else
        findfield := resultf;
    jbqk_cx.close;
    if s[1] in ['0'..'9'] then
      jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ' from ' + tablename + ' where ' + findfield + '=' + #39 + s + #39
    else
      jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ' from ' + tablename + ' where upper(' + findfield + ') like ' + #39 + '%' + uppercase( s ) + '%' + #39;
    jbqk_cx.Open;
    if jbqk_cx.IsEmpty then
    begin
      messagedlg( '代码输入错误，没有找到相应' + info, mterror, [mbok], 0 );
      tempcom.setfocus;
    end
    else
      if jbqk_cx.RecordCount = 1 then
        tempcom.text := trim( jbqk_cx[resultf] )
      else
      begin
        tempgrid.Columns.Clear;
        tempgrid.Columns.add;
        tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
        tempgrid.Columns[0].title.caption := '代码';
        tempgrid.Columns.add;
        tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
        tempgrid.Columns[1].title.caption := '名称';
        tempgrid.left := tempcom.left;
        tempgrid.top := tempcom.top + tempcom.Height;
        tempgrid.visible := true;
        tempgrid.setfocus;
      end;
  end
end;

procedure Tfrm_jbqk.brjgExit( Sender: TObject );
begin
  //frm_func.restorecolor(sender);
  if trim( brjg.text ) = '' then brjg.text := '1';
  resultf := 'mc';
  tempcom := brjg;
  finditems( 'sys_jg', 'dm', 'py', 'mc', '籍贯', brjg );
  sp_up_jbqk.parameters.ParamByName( '@brjg' ).value := jbqk_cx['dm'];

end;

procedure Tfrm_jbqk.brmzExit( Sender: TObject );
begin
  if trim( brmz.text ) = '' then brmz.text := '1';
  resultf := 'mc';
  tempcom := brmz;
  finditems( 'sys_mz', 'dm', 'py', 'mc', '民族', brmz );
  sp_up_jbqk.parameters.ParamByName( '@brmz' ).value := jbqk_cx['dm'];
end;

procedure Tfrm_jbqk.brnl_1Change(Sender: TObject);
  var
  strBrnl:string;
  intBrnl,index:Integer;
begin

  /// 更改年龄显示内容
  /// 大于1周岁的患者，年龄仅显示岁数；
  /// 小于1周岁的婴幼儿年龄显示月数加天数；小于30天的婴儿，年龄仅显示天数
  if Pos('岁',brnl_1.Text)>0 then
  begin
    index := Pos('岁',brnl_1.Text);
    strBrnl := LeftStr(brnl_1.Text,index-1);
    intBrnl := StrToInt(strBrnl);
    if intBrnl > 0 then
    begin
      brnl_1.Text := strBrnl + '岁';
    end
    else
    begin
      strBrnl := MidStr(brnl_1.Text,index+2,Length(brnl_1.Text)-index-1);
      if Pos('月',strBrnl)>0 then
      begin
        index := Pos('月',strBrnl);
        intBrnl := StrToInt(LeftStr(strBrnl,index-1));
        if intBrnl = 0 then
        begin
          brnl_1.Text := MidStr(strBrnl,index+2,Length(strBrnl)-index-1)
        end
        else
        begin
          brnl_1.Text := strBrnl;
        end;
      end
    end;
  end
  else
  begin
    if Pos('月',brnl_1.Text)>0 then
    begin
      index := Pos('月',brnl_1.Text);
      strBrnl := LeftStr(brnl_1.Text,index-1);
      intBrnl := StrToInt(strBrnl);
      if intBrnl = 0 then
      begin
        brnl_1.Text := MidStr(brnl_1.Text,index+2,Length(brnl_1.Text)-index-1)
      end
    end
  end;

end;

procedure Tfrm_jbqk.brzyExit( Sender: TObject );
begin
  if trim( brzy.text ) = '' then brzy.text := '01';
  resultf := 'sm';
  tempcom := brzy;
  finditems( 'zysf_brzy', 'dm', 'dm', 'sm', '职业', brzy );
  sp_up_jbqk.parameters.ParamByName( '@brzy' ).value := jbqk_cx['sm'];
end;

procedure Tfrm_jbqk.ryksExit( Sender: TObject );
var
  findfield, s: string;
begin
  s := trim( ryks.Text );
  tempcom := ryks;
  if s <> '' then
  begin
    if s[1] in ['0'..'9'] then
      findfield := 'dm'
    else
      if s[1] in ['A'..'Z', 'a'..'z'] then
        findfield := 'pym'
      else
        findfield := 'mc';
    resultf := 'mc';
    jbqk_cx.close;
    if s[1] in ['0'..'9'] then
      jbqk_cx.commandtext := 'select dm,mc from sys_ksdm where ' + findfield + '=' + #39 + s + #39 + ' and kssx=' + #39 + '09' + #39 + 'and  sybz=1'
    else
      jbqk_cx.commandtext := 'select dm,mc from sys_ksdm where upper(' + findfield + ') like ' + #39 + '%' + uppercase( s ) + '%' + #39 + ' and kssx=' + #39 + '09' + #39 + ' and sybz=1';

    jbqk_cx.Open;
    if jbqk_cx.IsEmpty then
    begin
      messagedlg( '代码输入错误，没有找到相应科室代码', mterror, [mbok], 0 );
      ryks.setfocus;
    end
    else
      if jbqk_cx.recordcount = 1 then
        tempcom.text := jbqk_cx[resultf]
      else
      begin
        tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
        tempgrid.Columns[0].title.caption := '代码';
        tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
        tempgrid.Columns[1].title.caption := '名称';
        tempgrid.left := tempcom.left;
        tempgrid.top := tempcom.top + tempcom.Height;
        tempgrid.visible := true;
        tempgrid.setfocus;
      end;
    sp_up_jbqk.parameters.ParamByName( '@ryks' ).value := jbqk_cx['dm'];
  end;
end;

procedure Tfrm_jbqk.rytjExit( Sender: TObject );
begin
  resultf := 'sm';
  tempcom := rytj;
  finditems( 'zysf_rytj', 'dm', 'dm', 'sm', '入院途径', rytj );
  sp_up_jbqk.parameters.ParamByName( '@rytj' ).value := jbqk_cx['dm'];
end;

procedure Tfrm_jbqk.sfzhExit(Sender: TObject);
var
csrq1:string;
sfz,zhyw:string;
i:Integer;
begin
if pub_yydm<>'0158' then
begin
sfz:=Trim(sfzh.text);
if Length(sfz)=18 then
begin
  csrq1:=Copy(sfz,7,8);
  csrq1:=copy(csrq1,1,4)+'-'+copy(csrq1,5,2)+'-'+copy(csrq1,7,2);
  if strtodatedef(csrq1,0)=0 then
   begin
     showmessage('身份证录入不合法,请重新输入');
     sfzh.text:='';
     sfzh.SetFocus;
     Exit;
   end
   else
   begin
     csrq.Date :=strToDatetime(csrq1);
   end;
end;
if Length(sfz)=15 then
begin
    csrq1:='19'+Copy(sfz,7,6);
  csrq1:=copy(csrq1,1,4)+'-'+copy(csrq1,5,2)+'-'+copy(csrq1,7,2);
  if strtodatedef(csrq1,0)=0 then
   begin
     showmessage('身份证录入不合法,请重新输入');
     sfzh.text:='';
     sfzh.SetFocus;
     Exit;
   end
   else
   begin
     csrq.Date :=strToDatetime(csrq1);
   end;
end;

if (Length(sfz)<>15) and (Length(sfz)<>18) then
begin
     showmessage('身份证长度不正确,请重新输入');
     sfzh.text:='';
     sfzh.SetFocus;
     Exit;
end;
for i := 1 to Length(sfz) -1 do
begin
  if not(sfz[I] in ['0'..'9'])  then
  begin
     showmessage('身份证录入不合法,请重新输入');
     sfzh.text:='';
     sfzh.SetFocus;
     Exit;
  end;
end;
for i := Length(sfz) -1 to Length(sfz)  do
begin
  if not(sfz[I] in ['0'..'9','X'])  then
  begin
     showmessage('身份证录入不合法,请重新输入');
     sfzh.text:='';
     sfzh.SetFocus;
     Exit;
  end;
end;
end;






end;

procedure Tfrm_jbqk.Spdb_zyzdClick(Sender: TObject);
begin
 application.CreateForm(TFrm_cx_zyzd, Frm_cx_zyzd);
  try
   lb:='1';
   Frm_cx_zyzd.ShowModal;
  finally
    Frm_cx_zyzd.Free;
  end;

end;

procedure Tfrm_jbqk.SpeedButton1Click(Sender: TObject);
begin
  application.CreateForm(TFrm_cx_zyzd, Frm_cx_zyzd);
  try
   lb:='2';
   Frm_cx_zyzd.ShowModal;
  finally
    Frm_cx_zyzd.Free;
  end;
end;

procedure Tfrm_jbqk.BitBtn3Click( Sender: TObject );
begin
  if messagedlg( '确实放弃当前修改？', mtwarning, [mbyes, mbno], 0 ) = mryes then
  begin
    displaynull;
    tmh.text := '';
    panel3.enabled := true;
    tmh.setfocus;
  end
end;

procedure Tfrm_jbqk.tempgridExit( Sender: TObject );
begin
  tempcom.text := trim( jbqk_cx[resultf] );
  tempgrid.Visible := false;
  tempcom.setfocus;
end;

procedure Tfrm_jbqk.zgysExit( Sender: TObject );
var
  findfield, s,ysbz: string;
  brbqdm:string;
begin
  //tempcom := zgys;
  tempcom:=(Sender as TComboBox);
  if Sender=zgys then
  begin
    ysbz:=' ysbz=1 ';
  end
  else
  begin
    ysbz:=' ysbz<>1 ';
  end;
  s := trim( (Sender as TComboBox).Text );
  if s <> '' then
  begin
    if s[1] in ['0'..'9'] then
      findfield := 'dm'
    else
      if s[1] in ['A'..'Z', 'a'..'z'] then
        findfield := 'pym'
      else
        findfield := 'mc';
    resultf := 'mc';
    jbqk_cx.close;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text:='select * from sys_bqzyfl where bqzydm='+''''+sp_cx_zybrjbqk.fieldbyname( 'ksdm' ).asstring+'''';
    DM_data.qry_pub.Open;
    brbqdm:=DM_data.qry_pub.FieldByName('bqdm').AsString;
    if pub_yydm ='0271' then //掇刀医院
    begin
      if s[1] in ['0'..'9'] then
      begin
        jbqk_cx.commandtext := 'select dm, ' + resultf + ' from sys_czy as a where ' + findfield + ' =' + #39  + s  + #39 + ' and '+ysbz+
        ' and sybz=1 and (ksdm in (select bqzydm from sys_bqzyfl where bqdm=' + #39 + brbqdm + #39 +')'+
        ' or ksdm in (select ksdm from sys_czy_ks as b where b.czydm=a.dm ))';
      end
      else
      begin
        jbqk_cx.commandtext := 'select dm, ' + resultf + ' from sys_czy as a where upper(' + findfield + ') like ' + #39 + '%' + uppercase( s ) + '%' + #39 + ' and ' +ysbz+
        ' and sybz=1 and  (ksdm in (select bqzydm from sys_bqzyfl where bqdm=' + #39 + brbqdm + #39 +')'+
        ' or ksdm in (select ksdm from sys_czy_ks as b where b.czydm=a.dm ))';
      end;
    end else
    begin
      if s[1] in ['0'..'9'] then
      begin
        jbqk_cx.commandtext := 'select dm, ' + resultf + ' from sys_czy where ' + findfield + ' =' + #39  + s  + #39 + ' and '+ysbz+ ' and sybz=1 and ksdm in (select bqzydm from sys_bqzyfl where bqdm=' + #39 + brbqdm + #39 +')';
      end
      else
      begin
        jbqk_cx.commandtext := 'select dm, ' + resultf + ' from sys_czy where upper(' + findfield + ') like ' + #39 + '%' + uppercase( s ) + '%' + #39 + ' and ' +ysbz+' and sybz=1 and  ksdm in (select bqzydm from sys_bqzyfl where bqdm=' + #39 + brbqdm + #39 +')';
      end;
    end;

    jbqk_cx.Open;
    if jbqk_cx.IsEmpty then
    begin
      if Sender=zgys then
      begin
        messagedlg( '代码输入错误，没有找到医生或该医生不属于本科室！', mterror, [mbok], 0 );
      end
      else if Sender=zghs then
      begin
        messagedlg( '代码输入错误，没有找到护士或该护士不属于本科室！', mterror, [mbok], 0 );
      end;
      (Sender as TComboBox).SetFocus;
    end
    else
      if jbqk_cx.RecordCount = 1 then
        (Sender as TComboBox).text := jbqk_cx[resultf]
      else
      begin
        tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
        tempgrid.Columns[0].title.caption := '代码';
        tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
        tempgrid.Columns[1].title.caption := '名称';
        tempgrid.left := tempcom.left;
        tempgrid.top := tempcom.top + tempcom.Height;
        tempgrid.visible := true;
        tempgrid.setfocus;
      end;
    sp_up_jbqk.parameters.ParamByName( '@'+(Sender as TComboBox).Name ).value := jbqk_cx['dm'];
  end
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_jbqk.checkerror
  作者:      yangshuai
  日期:      2017.06.23
  参数:      无
  返回值:    Boolean
-------------------------------------------------------------------------------}
function  Tfrm_jbqk.checkerror :Boolean;
begin
  Result:=False;
  if trim( brxm.text ) = '' then
  begin
    application.MessageBox( '请输入病人姓名', '错误', mb_ok + mb_iconerror );
    brxm.SetFocus;
    abort;
  end;
  if trim( brxb.text ) = '' then
  begin
    application.MessageBox( '请输入病人性别', '错误', mb_ok + mb_iconerror );
    brxb.SetFocus;
    abort;
  end;
  if trim( brzy.text ) = '' then
  begin
    application.MessageBox( '请输入病人职业', '错误', mb_ok + mb_iconerror );
    brzy.SetFocus;
    abort;
  end;
  if trim( brsf.text ) = '' then
  begin
    application.MessageBox( '请输入病人省份', '错误', mb_ok + mb_iconerror );
    brsf.SetFocus;
    abort;
  end;
  if trim( brjg.text ) = '' then
  begin
    application.MessageBox( '请输入病人籍贯', '错误', mb_ok + mb_iconerror );
    brjg.SetFocus;
    abort;
  end;
  if trim( brmz.text ) = '' then
  begin
    application.MessageBox( '请输入病人民族', '错误', mb_ok + mb_iconerror );
    brmz.SetFocus;
    abort;
  end;
  if trim( dwdz.text ) = '' then
  begin
    application.MessageBox( '请输入病人单位地址', '错误', mb_ok + mb_iconerror );
    dwdz.SetFocus;
    abort;
  end;
  if trim( lxr.text ) = '' then
  begin
    application.MessageBox( '请输入联系人姓名', '错误', mb_ok + mb_iconerror );
    lxr.SetFocus;
    abort;
  end;
//  if trim( lxrdz.text ) = '' then
//  begin
//    application.MessageBox( '请输入联系人地址', '错误', mb_ok + mb_iconerror );
//    lxrdz.SetFocus;
//    abort;
//  end;
   if pub_yydm <> '0274' then     //南通康复医院 允许 联系人地址为空
  begin
    if trim( lxrdz.text ) = '' then
    begin
      application.MessageBox( '请输入联系人地址', '错误', mb_ok + mb_iconerror );
      lxrdz.SetFocus;
      abort;
    end;
  end;
  if trim( ksdm.text ) = '' then
  begin
    application.MessageBox( '请输入住院科室', '错误', mb_ok + mb_iconerror );
    ksdm.SetFocus;
    abort;
  end;
  if trim( zgys.text ) = '' then
  begin
    application.MessageBox( '请输入主管医生', '错误', mb_ok + mb_iconerror );
    zgys.SetFocus;
    abort;
  end;
  if trim( csrq.text ) = '' then
  begin
    application.MessageBox( '请输出生日期', '错误', mb_ok + mb_iconerror );
    zgys.SetFocus;
    abort;
  end;
  qry_nl.Close;
  qry_nl.Parameters.ParamByName('csrq').Value:=strtodatetime(csrq.text);
  qry_nl.Open;
  Result:=True;

  //取消输入限制
//  if sfqyzyzd then
//  begin
//    if Trim(Edit_zyzd.text) ='' then
//    begin
//     application.MessageBox( '请输入中医诊断', '错误', mb_ok + mb_iconerror );
//     Edit_zyzd.SetFocus;
//     abort;
//    end;
//     if Trim(Edit_zyzf.text) ='' then
//    begin
//     application.MessageBox( '请输入中医治法及证型', '错误', mb_ok + mb_iconerror );
//     Edit_zyzf.SetFocus;
//     abort;
//    end;
//    if Trim(Edit_zyfm.text) ='' then
//    begin
//     application.MessageBox( '请输入中医方名', '错误', mb_ok + mb_iconerror );
//     Edit_zyfm.SetFocus;
//     abort;
//    end;
 // end;
end;

procedure Tfrm_jbqk.ComboBox10Change( Sender: TObject );
var
  qhdm: string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xzqh where jb=2 and qhmc=' + '''' + trim( ComboBox10.text ) + '''';
  DM_data.qry_pub.Open;
  qhdm := Copy( DM_data.qry_pub.FieldByName( 'qhdm' ).asstring, 1, 4 );
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xzqh where jb=3 and substring(qhdm,1,4)=' + '''' + qhdm + '''';
  DM_data.qry_pub.Open;
  ComboBox3.Items.Clear;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox3.Items.Add( DM_data.qry_pub.FieldByName( 'qhmc' ).asstring );
    DM_data.qry_pub.Next;
  end;
end;

procedure Tfrm_jbqk.ComboBox2Change( Sender: TObject );
var
  qhdm: string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xzqh where qhmc=' + '''' + trim( ComboBox2.text ) + '''';
  DM_data.qry_pub.Open;
  qhdm := Copy( DM_data.qry_pub.FieldByName( 'qhdm' ).asstring, 1, 2 );
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xzqh where jb=2 and substring(qhdm,1,2)=' + '''' + qhdm + '''';
  DM_data.qry_pub.Open;
  ComboBox10.Items.Clear;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox10.Items.Add( DM_data.qry_pub.FieldByName( 'qhmc' ).asstring );
    DM_data.qry_pub.Next;
  end;
end;

procedure Tfrm_jbqk.ComboBox4Change( Sender: TObject );
var
  qhdm: string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xzqh where qhmc=' + '''' + trim( ComboBox4.text ) + '''';
  DM_data.qry_pub.Open;
  qhdm := Copy( DM_data.qry_pub.FieldByName( 'qhdm' ).asstring, 1, 2 );
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xzqh where jb=2 and substring(qhdm,1,2)=' + '''' + qhdm + '''';
  DM_data.qry_pub.Open;
  ComboBox5.Items.Clear;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox5.Items.Add( DM_data.qry_pub.FieldByName( 'qhmc' ).asstring );
    DM_data.qry_pub.Next;
  end;
end;

procedure Tfrm_jbqk.ComboBox5Change( Sender: TObject );
var
  qhdm: string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xzqh where jb=2 and qhmc=' + '''' + trim( ComboBox5.text ) + '''';
  DM_data.qry_pub.Open;
  qhdm := Copy( DM_data.qry_pub.FieldByName( 'qhdm' ).asstring, 1, 4 );
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xzqh where jb=3 and substring(qhdm,1,4)=' + '''' + qhdm + '''';
  DM_data.qry_pub.Open;
  ComboBox6.Items.Clear;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox6.Items.Add( DM_data.qry_pub.FieldByName( 'qhmc' ).asstring );
    DM_data.qry_pub.Next;
  end;

end;

procedure Tfrm_jbqk.ComboBox9Change( Sender: TObject );
var
  qhdm: string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xzqh where qhmc=' + '''' + trim( ComboBox9.text ) + '''';
  DM_data.qry_pub.Open;
  qhdm := Copy( DM_data.qry_pub.FieldByName( 'qhdm' ).asstring, 1, 2 );
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xzqh where jb=2 and substring(qhdm,1,2)=' + '''' + qhdm + '''';
  DM_data.qry_pub.Open;
  ComboBox8.Items.Clear;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox8.Items.Add( DM_data.qry_pub.FieldByName( 'qhmc' ).asstring );
    DM_data.qry_pub.Next;
  end;

end;

procedure Tfrm_jbqk.csrqEnter( Sender: TObject );
begin
//  frm_func.changecolor( sender );
end;

procedure Tfrm_jbqk.csrqExit(Sender: TObject);
begin
  brnl_1.Csrq := csrq.Date;
end;

procedure Tfrm_jbqk.BitBtn1Click( Sender: TObject );
var
  k: string;
begin
if pub_yydm<>'0158' then
  begin
  sfzhExit(sfzh);
  end;
  if  not checkerror then
  begin
    Exit;
  end;
  if ( sp_cx_zybrjbqk.Active ) and ( trim( tmh.text ) <> '' ) then
  begin
    sp_up_jbqk.parameters.ParamByName( '@tmh' ).value := trim( sp_cx_zybrjbqk['tmh'] );
    sp_up_jbqk.parameters.ParamByName( '@zyh' ).value := trim( sp_cx_zybrjbqk['zyh'] );
    sp_up_jbqk.parameters.ParamByName( '@brxm' ).value := brxm.text;
    sp_up_jbqk.parameters.ParamByName( '@brxb' ).value := brxb.text;
    sp_up_jbqk.parameters.ParamByName( '@brzy' ).value := brzy.text;
    sp_up_jbqk.parameters.ParamByName( '@csrq' ).value := csrq.Date;
    sp_up_jbqk.parameters.ParamByName( '@sfzhm' ).value := sfzh.text;
    sp_up_jbqk.parameters.ParamByName( '@sbkh' ).value := sbkh.text;
    sp_up_jbqk.parameters.ParamByName( '@brdz' ).value := dwdz.text;
    sp_up_jbqk.parameters.ParamByName( '@dwdh' ).value := dwdh.text;
    sp_up_jbqk.parameters.ParamByName( '@dwyb' ).value := dwyb.text;
    sp_up_jbqk.parameters.ParamByName( '@dbr' ).value := lxr.text;
    sp_up_jbqk.parameters.ParamByName( '@nxrdh' ).value := lxrdh.text;
    sp_up_jbqk.parameters.ParamByName( '@dbrdz' ).value := lxrdz.text;
    sp_up_jbqk.parameters.ParamByName( '@hkyb' ).value := jtyb.text;
    sp_up_jbqk.parameters.ParamByName( '@bch' ).value := bch.text;
    sp_up_jbqk.parameters.ParamByName( '@ryzd' ).value := ryzd.text;
    sp_up_jbqk.parameters.ParamByName( '@tsrq' ).value := tsrq.Text; //保存特殊人群
    if trim( zycs.text ) <> '' then
      sp_up_jbqk.parameters.ParamByName( '@zycs' ).value := strtoint( trim( zycs.text ) )
    else
      sp_up_jbqk.parameters.ParamByName( '@zycs' ).value := 1;

    sp_up_jbqk.parameters.ParamByName( '@rybq' ).value := rybq.text;
    if (pub_yydm='0260') or (pub_yydm = '0266') then     //广元昭化
    begin
      sp_up_jbqk.parameters.ParamByName( '@ryrq' ).value := cxDateEdit1.date;
    end;
   // sp_up_jbqk.parameters.ParamByName( '@ryrq' ).value := strtodatetime( ryrq.text );
   if  Trim(zdjf.text)='' then
   begin
     zdjf.text:='0';
   end;    sp_up_jbqk.parameters.ParamByName( '@zdjf' ).value := strtofloat( zdjf.text );
    sp_up_jbqk.parameters.ParamByName( '@ybndzje' ).value := strtofloat( ndybzje.text );
    sp_up_jbqk.parameters.ParamByName( '@bz' ).value := bz.text;
    sp_up_jbqk.parameters.ParamByName( '@bah' ).value := Trim(Edit6.text);
    sp_up_jbqk.parameters.ParamByName( '@brnl' ).value := qry_nl.FieldByName('csrq_1').AsString;
    sp_up_jbqk.parameters.ParamByName( '@pym' ).value := '';
    sp_up_jbqk.parameters.ParamByName( '@jsr' ).value :='jsr';  //edt_jsr.text;//介绍人
    sp_up_jbqk.parameters.ParamByName( '@pq' ).value :='pq';  //edt_jsr.text;//片区
    sp_up_jbqk.parameters.ParamByName( '@tsbs' ).value :='tsbs';  //edt_jsr.text;//片区
    sp_up_jbqk.parameters.ParamByName( '@sczt' ).value := 'a';
    if trim(zghs.text)<> ''then
    begin
      qry_zghs.Close;
      qry_zghs.SQL.text:='SELECT dm,mc FROM dbo.sys_czy WHERE mc='''+trim(zghs.text)+'''';
      qry_zghs.Open;
      sp_up_jbqk.parameters.ParamByName( '@zghs' ).value := qry_zghs.FieldByName('dm').value;
    end else
    begin
      sp_up_jbqk.parameters.ParamByName( '@zghs' ).value := '';
    end;
    sp_up_jbqk.ExecProc;
    k := sp_up_jbqk.Parameters.ParamByName( '@sczt' ).value;
    if sp_up_jbqk.Parameters.ParamByName( '@sczt' ).value <> '0' then
    begin
      messagedlg( '保存未成功，请重新保存！', mtinformation, [mbok], 0 );
      bitbtn1.setfocus;
    end
    else
    begin
     if sfqyzyzd then   //是否启用中医诊断中医证型
      begin
        Qry_zyzd.close;
        Qry_zyzd.SQL.Text:=' select * from zysf_zyzdzx where zyh='+''''
                            + Trim(sp_cx_zybrjbqk['zyh'])+ '''';
        Qry_zyzd.Open;
         if Qry_zyzd.IsEmpty then
         begin
           Qry_zyzd.Append;
           Qry_zyzd.FieldByName('zyh').AsString:=Trim(sp_cx_zybrjbqk['zyh']);
           Qry_zyzd.FieldByName('zyzd').AsString:=Trim(Edit_zyzd.Text);
           Qry_zyzd.FieldByName('zyzx').AsString:=Trim(Edit_zyzx.Text);
           Qry_zyzd.FieldByName('zyzf').AsString:=Trim(Edit_zyzf.Text);
           Qry_zyzd.FieldByName('zyfm').AsString:=Trim(Edit_zyfm.Text);
           Qry_zyzd.Post;
         end
         else
         begin
           Qry_zyzd.Edit;
           Qry_zyzd.FieldByName('zyh').AsString:=Trim(sp_cx_zybrjbqk['zyh']);
           Qry_zyzd.FieldByName('zyzd').AsString:=Trim(Edit_zyzd.Text);
           Qry_zyzd.FieldByName('zyzx').AsString:=Trim(Edit_zyzx.Text);
           Qry_zyzd.FieldByName('zyzf').AsString:=Trim(Edit_zyzf.Text);
           Qry_zyzd.FieldByName('zyfm').AsString:=Trim(Edit_zyfm.Text);
           Qry_zyzd.Post;
         end;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text := 'select * from zysf_baxxdj where zyh=' + ''''
        + trim( sp_cx_zybrjbqk['zyh'] ) + '''';
      DM_data.qry_pub.Open;
      if ( DM_data.qry_pub.IsEmpty ) and ( trim( sp_cx_zybrjbqk['zyh'] ) <> '' ) then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'insert into zysf_baxxdj(zyh,tmh) select ' +
          '''' + trim( sp_cx_zybrjbqk['zyh'] ) + '''' + ',' + '''' + trim( sp_cx_zybrjbqk['tmh'] )
          + '''';
        DM_data.qry_pub.ExecSQL;
      end;
      if Trim(zgys.text)<>'' then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text := 'update  zydzbl_blys set zzysdm='+''''+sp_up_jbqk.parameters.ParamByName( '@zgys' ).value+''''+','+
        'zzys='+''''+trim(zgys.text)+''''+' where  zyh=' + ''''
        + trim( sp_cx_zybrjbqk['zyh'] ) + '''';
        DM_data.qry_pub.ExecSQL;
      end;
      qry_up_baxx.Close;
      qry_up_baxx.SQL.text := 'select * from zysf_baxxdj where zyh=' + ''''
        + trim( sp_cx_zybrjbqk['zyh'] ) + '''';
      qry_up_baxx.Open;
      qry_up_baxx.Edit;
      qry_up_baxx.FieldByName( 'byqq' ).asstring := Trim( Edit3.text );
      qry_up_baxx.FieldByName( 'byyx' ).asstring := Trim( Edit1.text );
      qry_up_baxx.FieldByName( 'jkkh' ).asstring := Trim( Edit2.text );
      qry_up_baxx.FieldByName( 'csdsf' ).asstring := Trim( combobox4.text );
      qry_up_baxx.FieldByName( 'csds' ).asstring := Trim( combobox5.text );
      qry_up_baxx.FieldByName( 'csdx' ).asstring := Trim( combobox6.text );
      qry_up_baxx.FieldByName( 'hkdzsf' ).asstring := Trim( combobox2.text );
      qry_up_baxx.FieldByName( 'hkdzs' ).asstring := Trim( combobox10.text );
      qry_up_baxx.FieldByName( 'hkdzx' ).asstring := Trim( combobox3.text );
      qry_up_baxx.FieldByName( 'hkdzxx' ).asstring := Trim( edit4.text );
      qry_up_baxx.FieldByName( 'gzdwdz' ).asstring := Trim( edit5.text );
      qry_up_baxx.FieldByName( 'jgsf' ).asstring := Trim( combobox9.text );
      qry_up_baxx.FieldByName( 'jgs' ).asstring := Trim( combobox8.text );
      if trim( ComboBox1.text ) <> '' then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'select * from sys_ylfffs where mc=' + '''' +
          trim( ComboBox1.text ) + '''';
        DM_data.qry_pub.Open;
        if not DM_data.qry_pub.IsEmpty then
          qry_up_baxx.FieldByName( 'ylfffs' ).AsInteger := DM_data.qry_pub.FieldByName( 'dm' ).AsInteger
        else
          qry_up_baxx.FieldByName( 'ylfffs' ).AsInteger := 0;
      end;
      qry_up_baxx.Post;
      qry_up_baxx.UpdateBatch( arall );
      panel3.enabled := true;
      tmh.SetFocus;
      tmh.text := '';
      displaynull;
    end;
  end;
end;

procedure Tfrm_jbqk.hljbExit( Sender: TObject );
begin
  resultf := 'mc';
  tempcom := hljb;
  finditems( 'sys_hljb', 'dm', 'dm', 'mc', '护理级别', hljb );
  sp_up_jbqk.parameters.ParamByName( '@hljb' ).value := jbqk_cx['dm'];
end;

procedure Tfrm_jbqk.tempgrid1Exit( Sender: TObject );
begin
  tmh.text := sp_cx_zybrjbqk['tmh'];
  tempgrid1.Visible := false;
  displayvalue;
  if bitbtn2.Visible=true then
  begin
    bitbtn2.setfocus;
  end;
end;

procedure Tfrm_jbqk.brxbExit( Sender: TObject );
begin
  if trim( brxb.text ) = '' then brxb.text := '男';
end;

procedure Tfrm_jbqk.brxmChange(Sender: TObject);
begin
   self.caption:=FormTitle+'   病人姓名：【'+brxm.text+'】';
end;
procedure Tfrm_jbqk.FormShow( Sender: TObject );
begin
if (pub_yydm='0260') or  (pub_yydm='0266') then         //广元昭化
begin
cxDateEdit1.Properties.ReadOnly:=false;
end
else
begin
cxDateEdit1.Properties.ReadOnly:=true;
end;
      if( pub_yydm='0263') or( pub_yydm='0264') then
    begin
      label61.Visible:=true;
      bah.Visible:=true;
    end;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select sfqyzyzd from sys_xt_kg';
  DM_data.qry_pub.Open;
  sfqyzyzd:=DM_data.qry_pub.FieldByName('sfqyzyzd').AsBoolean;
  
  FormTitle:=self.caption;
  if pub_yydm='0003' then
  Edit6.Enabled:=false;
  tmh.Color := clwindow;
  if trim( tmh.text ) <> '' then
  begin
    tmh.setfocus;
    tmhExit( tmh );
  end;

end;


procedure Tfrm_jbqk.dwdzExit( Sender: TObject );
begin
//  frm_func.restorecolor( sender );
  if ( length( trim( dwdz.text ) ) > 0 ) and ( length( trim( lxrdz.text ) ) = 0 ) then
    lxrdz.Text := dwdz.text;
end;

procedure Tfrm_jbqk.dwybExit( Sender: TObject );
begin
//  frm_func.restorecolor( sender );
  if ( length( trim( dwyb.text ) ) > 0 ) and ( length( trim( jtyb.text ) ) = 0 ) then
    jtyb.Text := dwyb.text;
end;

end.

