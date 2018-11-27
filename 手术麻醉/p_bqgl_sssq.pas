unit p_bqgl_sssq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, DBSumLst, Grids, DBGridEh, Mask, DBCtrls, StdCtrls,
  Buttons, DBGrids, ActnList, ComCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, Menus,DateUtils,p_Makvar_tyjf, RzLine, cxContainer,
  cxCheckBox;
type
  THACKDBGRID = class( TCUSTOMGRID );
type
  Tfrm_sssq = class( TForm )
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    tmh: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    e_fylb: TEdit;
    e_zfy: TEdit;
    e_zyj: TEdit;
    Label5: TLabel;
    e_bch: TEdit;
    ad_czy: TADODataSet;
    sp_cx_zybrjbqk: TADOStoredProc;
    ds_czy: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    e_zzf: TEdit;
    e_syje: TEdit;
    B_bc: TBitBtn;
    b_tc: TBitBtn;
    ds_zybrjbqk: TDataSource;
    ActionList1: TActionList;
    jshj: TAction;
    jf: TAction;
    zf: TAction;
    xg: TAction;
    B_fq: TBitBtn;
    createbatch: TAction;
    Label13: TLabel;
    e_ryrq: TEdit;
    Label14: TLabel;
    e_ryzd: TEdit;
    Label19: TLabel;
    e_zdqf: TEdit;
    Label20: TLabel;
    e_brxm: TEdit;
    ad_ssap: TADODataSet;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    e_zdys: TEdit;
    e_yz: TEdit;
    e_ez: TEdit;
    sp_cx_ssqk: TADOStoredProc;
    b_zj: TBitBtn;
    ad_ssmc: TADODataSet;
    ds_sqzd: TDataSource;
    Label15: TLabel;
    e_sqzd: TEdit;
    ad_mzmc: TADODataSet;
    ds_mzmc: TDataSource;
    ad_sqzd: TADODataSet;
    ds_ssap: TDataSource;
    Panel4: TPanel;
    DBGrid4: TDBGrid;
    g_jbxx: TcxGrid;
    gvbrxm: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet;
    gvbrxmtmh: TcxGridDBColumn;
    gvbrxmbrxm: TcxGridDBColumn;
    gvbrxmksmc: TcxGridDBColumn;
    gvbrxmbch: TcxGridDBColumn;
    gvbrxmbrnl: TcxGridDBColumn;
    gvbrxmbrxb: TcxGridDBColumn;
    gvbrxmsfmc: TcxGridDBColumn;
    gvbrxmjgmc: TcxGridDBColumn;
    gvbrxmmzmc: TcxGridDBColumn;
    gvbrxmbrdz: TcxGridDBColumn;
    ds_ssmc: TDataSource;
    g_sqzd: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2DBColumn: TcxGridDBColumn;
    cxGridDBTableView2DBColumn1: TcxGridDBColumn;
    cxGridDBTableView2DBColumn2: TcxGridDBColumn;
    g_zdys: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    ad_czydm: TStringField;
    ad_czymc: TStringField;
    cxGridDBTableView3dm: TcxGridDBColumn;
    cxGridDBTableView3mc: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView4brxm: TcxGridDBColumn;
    cxGridDBTableView4tmh: TcxGridDBColumn;
    cxGridDBTableView4ksmc: TcxGridDBColumn;
    cxGridDBTableView4brnl: TcxGridDBColumn;
    cxGridDBTableView4brxb: TcxGridDBColumn;
    cxGridDBTableView4ssrq: TcxGridDBColumn;
    cxGridDBTableView4ssmc: TcxGridDBColumn;
    cxGridDBTableView4sqzd: TcxGridDBColumn;
    cxGridDBTableView4zdys: TcxGridDBColumn;
    cxGridDBTableView4yzys: TcxGridDBColumn;
    cxGridDBTableView4ezys: TcxGridDBColumn;
    cxGridDBTableView4zghs: TcxGridDBColumn;
    cxGridDBTableView4ssj: TcxGridDBColumn;
    cxGridDBTableView4sssx: TcxGridDBColumn;
    cxGridDBTableView4pzsssj: TcxGridDBColumn;
    cxGridDBTableView4mzfs: TcxGridDBColumn;
    cxGridDBTableView4mzsxm: TcxGridDBColumn;
    cxGridDBTableView4qxpzr: TcxGridDBColumn;
    cxGridDBTableView4qxrq: TcxGridDBColumn;
    cxGridDBTableView4xhhs: TcxGridDBColumn;
    cxGridDBTableView4tzys: TcxGridDBColumn;
    cxGridDBTableView4sqsssj: TcxGridDBColumn;
    cxGridDBTableView4sslx: TcxGridDBColumn;
    cxGridDBTableView4id: TcxGridDBColumn;
    cxGridDBTableView4sssqr: TcxGridDBColumn;
    cxGridDBTableView4mzqr: TcxGridDBColumn;
    cxGridDBTableView4sswc: TcxGridDBColumn;
    cxGridDBTableView4ssqx: TcxGridDBColumn;
    cxGridDBTableView4bz: TcxGridDBColumn;
    cxGridDBTableView4jysx: TcxGridDBColumn;
    cxGridDBTableView4sfjz: TcxGridDBColumn;
    g_mzfs: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    ad_mzmcStringField: TStringField;
    ad_mzmcStringField2: TStringField;
    ad_mzmcStringField3: TStringField;
    cxGridDBTableView5DBColumn: TcxGridDBColumn;
    cxGridDBTableView5DBColumn1: TcxGridDBColumn;
    cxGridDBTableView5DBColumn2: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    e_sqrq: TDateTimePicker;
    e_sslx: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt_sssqbz: TEdit;
    Label16: TLabel;
    ComboBox1: TComboBox;
    Label17: TLabel;
    ComboBox2: TComboBox;
    e_ssmc: TEdit;
    Panel5: TPanel;
    Label18: TLabel;
    RzLine2: TRzLine;
    RzLine1: TRzLine;
    b_ok: TButton;
    e_ssmc_gl: TEdit;
    re_ssmc_xz: TRichEdit;
    cbb_ssqklb: TComboBox;
    Label23: TLabel;
    Label24: TLabel;
    e_mzfs: TEdit;
    g_ssmc: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1DBColumn: TcxGridDBColumn;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBTableView1DBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ad_mzfs: TADODataSet;
    ds_mzfs: TDataSource;
    Panel6: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel7: TcxGridLevel;
    btn_add_mzfs: TButton;
    Panel7: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Button1: TButton;
    Button2: TButton;
    e_ffmc: TEdit;
    e_zjm: TEdit;
    qry_zjmzfs: TADOQuery;
    Label28: TLabel;
    e_sqtm: TDateTimePicker;
    e_CRB: TEdit;
    lbl_crb: TLabel;
    chb_CRB: TcxCheckBox;
    procedure FormShow( Sender: TObject );
    procedure tmhExit( Sender: TObject );
    procedure b_tcClick( Sender: TObject );
    procedure tmhEnter( Sender: TObject );
    procedure e_zdysExit( Sender: TObject );
    procedure B_bcClick( Sender: TObject );
    procedure b_zjClick( Sender: TObject );
    procedure B_fqClick( Sender: TObject );
    procedure DBGrid4DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState );
    procedure sp_cx_ssqkAfterScroll( DataSet: TDataSet );
    procedure tmhKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure gvbrxmKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure gvbrxmDblClick( Sender: TObject );
    procedure g_jbxxExit( Sender: TObject );
    procedure g_ssmcExit( Sender: TObject );
    procedure k( Sender: TObject );
    procedure cxGridDBTableView1KeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );  
    procedure e_sqzdKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure g_sqzdExit( Sender: TObject );
    procedure cxGridDBTableView2DblClick( Sender: TObject );
    procedure cxGridDBTableView2KeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure e_zdysKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure cxGridDBTableView3DblClick( Sender: TObject );
    procedure cxGridDBTableView3KeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure g_zdysExit( Sender: TObject );
    procedure e_yzKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure e_ezKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure e_sslxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure e_sqrqKeyPress(Sender: TObject; var Key: Char);
    procedure edt_sssqbzKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label7DblClick(Sender: TObject);
    procedure Panel5Enter(Sender: TObject);
    procedure b_okClick(Sender: TObject);
    procedure e_ssmc_glKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure e_ssmcEnter(Sender: TObject);
    procedure re_ssmc_xzEnter(Sender: TObject);
    procedure Panel5Exit(Sender: TObject);
    procedure e_ssmcClick(Sender: TObject);
    procedure cxGrid2Exit(Sender: TObject);
    procedure cxGridDBTableView6CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView6DblClick(Sender: TObject);
    procedure cxGridDBTableView6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel6Exit(Sender: TObject);
    procedure btn_add_mzfsClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure e_ffmcExit(Sender: TObject);
    procedure e_ffmcKeyPress(Sender: TObject; var Key: Char);
    procedure e_zjmExit(Sender: TObject);
    procedure cbb_ssqklbKeyPress(Sender: TObject; var Key: Char);
    procedure e_mzfsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure g_mzfsExit(Sender: TObject);
    procedure cxGridDBTableView5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView5DblClick(Sender: TObject);
    procedure e_sqtmKeyPress(Sender: TObject; var Key: Char);
    procedure chb_CRBPropertiesChange(Sender: TObject);
    procedure e_CRBEnter(Sender: TObject);
    procedure e_CRBExit(Sender: TObject);
    procedure e_CRBKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    lastSender: TObject;
    jbbm: string; //疾病编码
    Fcrzyh:string;//传入住院号
    { Private declarations }
    procedure EnableControl(b:boolean);

  public
    { Public declarations }
    v_tmh, v_zyh: string;
    v_insid:integer;
    v_yzmod:boolean;
    function GetPYStr(HZStr: WideString): String; 
    procedure displayvalue;
    procedure displayssapvalue;
    procedure displayssapnull;
    function check: boolean;  //保存前的数据效验
    property crzyh:string  read Fcrzyh write Fcrzyh;
  end;
var
  frm_sssq: Tfrm_sssq;

implementation

uses P_dm, p_func;

var FormTitle:String;

{$R *.DFM}
function Tfrm_sssq.GetPYStr(HZStr: WideString): String; 
var
  S: String;
  I: Word;
  C: Char;
begin
  Result := '';
  For I := 1 To Length(HZStr) Do Begin
    S := HZStr[I];
    if Length(S) = 1 Then C := S[1] Else
    case WORD(S[1]) * 256 + Byte(S[2]) of
      $B0A1 .. $B0C4: C := 'A';    $B0C5 .. $B2C0: C := 'B';
      $B2C1 .. $B4ED: C := 'C';    $B4EE .. $B6E9: C := 'D';
      $B6EA .. $B7A1: C := 'E';    $B7A2 .. $B8C0: C := 'F';
      $B8C1 .. $B9FD: C := 'G';    $B9FE .. $BBF6: C := 'H';
      $BBF7 .. $BFA5: C := 'J';    $BFA6 .. $C0AB: C := 'K';
      $C0AC .. $C2E7: C := 'L';    $C2E8 .. $C4C2: C := 'M';
      $C4C3 .. $C5B5: C := 'N';    $C5B6 .. $C5BD: C := 'O';
      $C5BE .. $C6D9: C := 'P';    $C6DA .. $C8BA: C := 'Q';
      $C8BB .. $C8F5: C := 'R';    $C8F6 .. $CBF9: C := 'S';
      $CBFA .. $CDD9: C := 'T';    $CDDA .. $CEF3: C := 'W';
      $CEF4 .. $D1B8: C := 'X';    $D1B9 .. $D4D0: C := 'Y';
      $D4D1 .. $D7F9: C := 'Z';    else C := '?';
    end;
    Result := Result + C;
  End;
end;

procedure Tfrm_sssq.cbb_ssqklbKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (cbb_ssqklb.ItemIndex > -1) then begin
    ComboBox2.SetFocus;
  end;
end;

procedure Tfrm_sssq.chb_CRBPropertiesChange(Sender: TObject);
begin
//    if Button = mbLeft then
//    rb_CRB.Checked := not rb_CRB.Checked;

  if chb_CRB.Checked then
  begin
    e_CRB.Enabled := True;
    e_CRB.SetFocus;
  end else
  begin
    e_CRB.Enabled := False;
    e_CRB.Clear;
  end;
end;

function Tfrm_sssq.check: boolean;
var str: string;
begin
  Result := True;
  if trim(e_ssmc.Text)='' then begin
    Application.MessageBox('手术名称不能为空!', '错误', MB_OK + MB_ICONSTOP);
    //e_ssmc.SetFocus();
    Panel5.BringToFront;
    Panel5.SetFocus;
    Result := False;
  end else
  if trim(e_sqzd.Text)='' then begin
    Application.MessageBox('诊断不能为空!', '错误', MB_OK + MB_ICONSTOP);
    e_sqzd.SetFocus();
    Result := False;
  end else
  if trim(e_zdys.Text)='' then begin
    Application.MessageBox('主刀医生不能为空!', '错误', MB_OK + MB_ICONSTOP);
    e_zdys.SetFocus();
    Result := False;
  end else
  if (trim( cbb_ssqklb.Text )='') and cbb_ssqklb.Visible then begin
    Application.MessageBox('手术切口类别不能为空!', '错误', MB_OK + MB_ICONSTOP);
    cbb_ssqklb.SetFocus();
    Result := False;
  end else
  if (e_sqrq.Date < (Date + 1)) and (Trim(e_sslx.Text) = '择期手术') then begin
    Application.MessageBox('择期手术日期必须大于当前日期!', '错误', MB_OK + MB_ICONSTOP);
    e_sqrq.SetFocus();
    Result := False;
  end else //沙雅县人民医院修改 超过13点 不能在申请明天的择期手术
  if ss_BByTime and (e_sqrq.Date=(Date+1)) and
    (frac(Frm_func.curr_date)>frac(ss_TimePointToNextDay)) and
    (Trim(e_sslx.Text) = '择期手术') then begin
      MessageDlg('超过规定时间:' + PAnsiChar(str) + ',择期手术日期必须大于明天!',
        mtInformation,
        [mbOK], 
        0);

    e_sqtm.SetFocus();
    Result := False;
  end else
  if (e_sqrq.Date > (Date + ss_ZeQiTianShu)) and (Trim(e_sslx.Text) = '择期手术') then begin
    Application.MessageBox('择期手术日期超过允许日期!', '错误', MB_OK + MB_ICONSTOP);
    e_sqrq.SetFocus();
    Result := False;
  end else
  if (e_sqrq.Date < Date) and (Trim(e_sslx.Text) = '急症手术') then begin
    Application.MessageBox('急症手术日期不能小于当前日期!', '错误', MB_OK + MB_ICONSTOP);
    e_sqrq.SetFocus();
    Result := False;
  end else
  if (e_sqrq.Date < Date) and (Trim(e_sslx.Text) = '限期手术') then begin
    Application.MessageBox('限期手术日期不能小于当前日期!', '错误', MB_OK + MB_ICONSTOP);
    e_sqrq.SetFocus();
    Result := False;
  end (*else
  (*if trim(edt_sssqbz.Text)='' then begin
    Application.MessageBox('备注不能为空!', '错误', MB_OK + MB_ICONSTOP);
    edt_sssqbz.SetFocus();
    Result := False;
  end*) ;
end;

procedure Tfrm_sssq.e_sslxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 88) and (Sender=e_sslx) then
  begin   //x
    e_sslx.Text := '择期手术';
    e_sslx.ItemIndex:=0;
  end
  else if (key = 74) and (Sender=e_sslx) then
  begin //j
    e_sslx.Text := '急症手术';
    e_sslx.ItemIndex:=1;
  end
  else if key = 13 then
  begin
    if(e_mzfs.Visible=true) then
    begin
      e_mzfs.SetFocus;
    end
    else
    begin
      edt_sssqbz.SetFocus;
    end;
  end;
  
end;

procedure Tfrm_sssq.EnableControl(b:boolean);
begin
  Panel3.Enabled:=b;
  DBGrid4.Enabled:=not b;
end;

procedure Tfrm_sssq.displayvalue;
begin
  e_brxm.text := Trim( sp_cx_zybrjbqk.fieldbyname( 'brxm' ).asstring );
  Self.Caption:=FormTitle+'   病人姓名：【'+e_brxm.Text+'】';    //roro
  e_bch.text := Trim( sp_cx_zybrjbqk.fieldbyname( 'bch' ).asstring );
  e_fylb.text := Trim( sp_cx_zybrjbqk.fieldbyname( 'lbmc' ).asstring );
  e_RYRQ.TEXT := FormatDateTime( 'yyyy-MM-dd hh:mm:ss', sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asdatetime );
  e_zdqf.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat] );
  e_ryzd.text := Trim( sp_cx_zybrjbqk.fieldbyname( 'ryzd' ).asstring );
  e_zyj.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asfloat] );
  e_zfy.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat] );
  e_zzf.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zfze' ).asfloat] );
  e_syje.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asfloat -
  sp_cx_zybrjbqk.fieldbyname( 'zfze' ).asfloat] );

  v_zyh := Trim( sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring );
  sp_cx_ssqk.Close;
  sp_cx_ssqk.Parameters.ParamByName( '@zyh' ).value := v_zyh;
  sp_cx_ssqk.Open;

  ad_ssap.close;
  ad_ssap.Parameters.ParamByName( 'id' ).value := sp_cx_ssqk.fieldbyname( 'id' ).asinteger;
  ad_ssap.open;
  b_fq.Enabled := true;
  b_zj.Enabled := true;
  if sp_cx_ssqk.IsEmpty then
  begin
    if application.MessageBox( '该病人未曾申请手术，是否现在申请？', '提示', mb_yesno + mb_iconquestion ) = idyes then
    begin
      displayssapnull;
      b_zj.Click;
      ad_ssap.Append;
    end;
  end
  else
  begin
    displayssapvalue;
  end;
end;

procedure Tfrm_sssq.e_mzfsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) or ((key = 13) and (ssCtrl in Shift)) then
  begin
    if not ( b_zj.Focused or B_bc.focused or b_fq.Focused or b_tc.Focused ) then
    begin
      ad_mzfs.Close;
      ad_mzfs.CommandText := 'select dm 代码, mc 麻醉方法,pym 助记码 from sys_mzfs '+
                              'where Convert(char,dm)+mc+pym like ''%' + trim( e_mzfs.text ) + '%''';

      ad_mzfs.Open;
      if ad_mzfs.IsEmpty then
      begin
        application.MessageBox( '没有找到对应的麻醉方法名称', '错误', mb_ok + mb_iconerror );
      end
      else
//      if ad_mzfs.recordcount = 1 then
//      begin
//        e_mzfs.text := ad_mzfs.fieldbyname( '麻醉方法' ).asstring;
//      end
//      else
      begin
        g_mzfs.Visible := true;
        g_mzfs.Top := e_mzfs.Top + Panel3.Top + e_sqzd.Height;
        g_mzfs.Left := e_mzfs.Left + Panel3.Left;
        g_mzfs.SetFocus;
      end
    end
  end;
end;

procedure Tfrm_sssq.edt_sssqbzKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    B_bc.SetFocus;
  end;
end;

procedure Tfrm_sssq.displayssapvalue;
var
  i:integer;
begin
  e_ssmc.Text := sp_cx_ssqk.fieldbyname( 'ssmc' ).asstring;
  e_sqzd.text := Trim( sp_cx_ssqk.fieldbyname( 'sqzd' ).asstring );
  e_sqrq.Date := sp_cx_ssqk.fieldbyname( 'sssj' ).asdatetime;
  e_zdys.Text := Trim( sp_cx_ssqk.fieldbyname( 'zdys' ).asstring );
  e_yz.Text := Trim( sp_cx_ssqk.fieldbyname( 'yzys' ).asstring );
  e_ez.text := Trim( sp_cx_ssqk.fieldbyname( 'ezys' ).asstring );
  cbb_ssqklb.ItemIndex := ad_ssap.FieldByName( 'ssqkid' ).AsInteger - 1;
  e_mzfs.Text := Trim( sp_cx_ssqk.FieldByName( 'mzfs' ).AsString );

  for I := 0 to e_sslx.items.Count - 1 do begin
    if e_sslx.items[i]=trim(ad_ssap.FieldByName( 'sslx' ).AsString) then begin
      e_sslx.ItemIndex:=i;
      break;
    end;
  end;
  for I := 0 to ComboBox1.items.Count - 1 do begin
    if ComboBox1.items[i]=trim(ad_ssap.FieldByName( 'ssdj' ).AsString) then begin
      ComboBox1.ItemIndex:=i;
      break;
    end;
  end;
  for I := 0 to ComboBox2.items.Count - 1 do begin
    if ComboBox2.items[i]=trim(ad_ssap.FieldByName( 'glfs' ).AsString) then begin
      ComboBox2.ItemIndex:=i;
      break;
    end;
  end;
  DBGrid4.SetFocus;
end;

procedure Tfrm_sssq.displayssapnull;
begin
  e_ssmc.Text := '';
  e_sqzd.text := '';
  e_sqrq.Date := DateUtils.IncDay(Date,1);
  e_zdys.Text := '';
  e_yz.Text := '';
  e_ez.text := '';
  e_mzfs.Text := '';
  cbb_ssqklb.ItemIndex := -1;
  edt_sssqbz.Text := '';
end;

procedure Tfrm_sssq.tmhExit( Sender: TObject );
var
  s: string;
begin
  frm_func.restorecolor( sender );
  if ( trim( tmh.text ) = '' ) and ( not ( b_fq.focused or B_tc.focused ) ) then
  begin
    Application.MessageBox( '请输入条码号或病床号或病人姓名！', '错误', 0 + 16 );
    tmh.setfocus;
    Exit;
  end;

  if not ( b_tc.Focused ) then
  begin
    s := Trim( tmh.text );
    if s[1] in ['0'..'9'] then
      s := stringofchar( '0', 9 - length( s ) ) + s;
    tmh.Text := s;
    v_tmh := Trim( tmh.Text );

    sp_cx_zybrjbqk.Close;
    sp_cx_zybrjbqk.Parameters.Refresh;
    
    sp_cx_zybrjbqk.parameters.ParamByName( '@tmh' ).value := v_tmh;
    sp_cx_zybrjbqk.parameters.ParamByName( '@xm' ).value := v_tmh;
    sp_cx_zybrjbqk.parameters.ParamByName( '@bch' ).value := v_tmh;
    sp_cx_zybrjbqk.parameters.ParamByName( '@ksdm' ).value := pub_bqdm;
    sp_cx_zybrjbqk.parameters.ParamByName('@zyh').value := trim(Fcrzyh);
    sp_cx_zybrjbqk.Open;
    if sp_cx_zybrjbqk.isempty then begin
      Application.MessageBox( '没有查询到此病人！', '系统提示:', 0 + 48 );
      tmh.setfocus;
    end else if sp_cx_zybrjbqk.recordcount > 1 then begin
      g_jbxx.left := tmh.left;
      g_jbxx.top := tmh.top + tmh.Height;
      g_jbxx.visible := true;
      g_jbxx.setfocus;
    end else begin
      panel1.enabled := false;
      displayvalue;
    end;
  end;
end;

procedure Tfrm_sssq.tmhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    DBGrid4.SetFocus;
  end;
end;

procedure Tfrm_sssq.b_okClick(Sender: TObject);
begin
  if Trim(re_ssmc_xz.Text) <> '' then begin
    e_ssmc.Text := Trim(re_ssmc_xz.Text);
  end;
  Panel5.SendToBack;
  e_sqzd.SetFocus;
end;

procedure Tfrm_sssq.b_tcClick( Sender: TObject );
begin
  B_fq.Click;
  close;
end;

procedure Tfrm_sssq.tmhEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
  b_fq.Enabled := false;
  b_bc.Enabled := false;
  b_zj.Enabled := false;
end;

procedure Tfrm_sssq.e_zdysExit( Sender: TObject );
begin
  if trim(( Sender as TEdit ).Text)<>'' then begin
    ad_czy.Close;
    ad_czy.Parameters.ParamByName( 'pym' ).value := '%' + trim( ( Sender as TEdit ).Text ) + '%';
    ad_czy.Open;

    ad_czy.Filtered := False;
    ad_czy.Filter   := 'ysbz=1';
    ad_czy.Filtered := True;

    if ad_czy.IsEmpty then
    begin
      application.MessageBox( '代码输入错误', '错误', mb_ok + mb_iconerror );
      ( Sender as TEdit ).setfocus;
    end else if ad_czy.recordcount = 1 then begin
      ( Sender as TEdit ).text := ad_czy.fieldbyname( 'mc' ).asstring;
    end else begin
      
      g_zdys.Visible := true;
      lastSender := ( Sender as TEdit );
      g_zdys.top := ( Sender as TEdit ).top + ( Sender as TEdit ).parent.top + ( Sender as TEdit ).height;
      g_zdys.left := ( Sender as TEdit ).left;
      g_zdys.SetFocus;
    end
  end;
end;

procedure Tfrm_sssq.e_zdysKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    e_yz.SetFocus;
  end
end;

procedure Tfrm_sssq.e_zjmExit(Sender: TObject);
begin
  if Trim( e_zjm.Text ) <> '' then begin
    button1.SetFocus;
  end else begin
    application.MessageBox( '新增麻醉方助记码不能为空', '错误', mb_ok + mb_iconerror );
  end;
end;

procedure Tfrm_sssq.btn_add_mzfsClick(Sender: TObject);
begin
  Panel7.top := Panel6.Top + 20;
  Panel7.Left := Panel6.left + 20;
  e_ffmc.Text := '';
  e_zjm.Text := '';
  Panel7.BringToFront; 
end;

procedure Tfrm_sssq.Button1Click(Sender: TObject);
begin
  if (Trim( e_ffmc.Text ) = '') and (Button2.Focused <> True) then begin
    application.MessageBox( '请输入新增的麻醉方法名称！', '提示', mb_ok );
    e_ffmc.SetFocus;
    Exit;
  end;
   if (Trim( e_zjm.Text ) = '') and (not Button2.Focused <> True) then begin
    application.MessageBox( '请输入新增的麻醉方法助记码！', '提示', mb_ok );
    e_zjm.SetFocus;
    Exit;
  end;
  qry_zjmzfs.Close;
  qry_zjmzfs.SQL.Clear;
  qry_zjmzfs.SQL.Text := 'insert into dbo.sys_mzfs(mc,pym) values('''+
              Trim( e_ffmc.Text )+''',''' + Trim( e_zjm.Text )+''')';
  qry_zjmzfs.ExecSQL;
  Panel7.SendToBack;
  Panel6.SendToBack;
  edt_sssqbz.SetFocus;
  e_mzfs.Text := Trim( e_ffmc.Text );
  application.MessageBox( '添加成功！', '提示', mb_ok );
end;

procedure Tfrm_sssq.Button2Click(Sender: TObject);
begin
  Panel7.SendToBack;
  Panel6.BringToFront;
  cxGrid2.SetFocus;
end;

procedure Tfrm_sssq.B_bcClick( Sender: TObject );
var sqlstr:string;
begin
  if check then
  begin
    ad_ssap.Edit;
    ad_ssap.FieldByName( 'tmh' ).Value := Trim( v_tmh );
    ad_ssap.FieldByName( 'zyh' ).Value := Trim( v_zyh );
    ad_ssap.FieldByName( 'brxm' ).Value := Trim( sp_cx_zybrjbqk.fieldbyname( 'brxm' ).asstring );
    ad_ssap.FieldByName( 'brxb' ).Value := Trim( sp_cx_zybrjbqk.fieldbyname( 'brxb' ).asstring );
    ad_ssap.FieldByName( 'brnl' ).Value := Trim( sp_cx_zybrjbqk.fieldbyname( 'brnl' ).asstring );
    ad_ssap.FieldByName( 'bch' ).Value := Trim( sp_cx_zybrjbqk.fieldbyname( 'bch' ).asstring );
    ad_ssap.FieldByName( 'ryzd' ).Value := Trim( sp_cx_zybrjbqk.fieldbyname( 'ryzd' ).asstring );
    ad_ssap.FieldByName( 'ryrq' ).Value := Trim( sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asstring );
    ad_ssap.FieldByName( 'zyks' ).Value := Trim( sp_cx_zybrjbqk.fieldbyname( 'ksdm' ).asstring );
//    ad_ssap.FieldByName( 'ksmc' ).Value := Trim( sp_cx_zybrjbqk.fieldbyname( 'ksmc' ).asstring );
    ad_ssap.FieldByName( 'sssqrq' ).Value := Frm_func.curr_date;
    ad_ssap.FieldByName( 'sssj' ).Value := FormatDateTime('yyyy-MM-dd', e_sqrq.Date) + FormatDateTime(' HH:mm', e_sqtm.Date);
    ad_ssap.FieldByName( 'sssqks' ).Value := Trim( pub_ksdm );
    ad_ssap.FieldByName( 'sssqys' ).Value := pub_czydm;
    ad_ssap.FieldByName( 'ssmc' ).Value := Trim( e_ssmc.Text );
    ad_ssap.FieldByName( 'sqzd' ).Value := Trim( e_sqzd.Text );
    ad_ssap.FieldByName( 'zdys' ).Value := Trim( e_zdys.Text );
    ad_ssap.FieldByName( 'yzys' ).Value := Trim( e_yz.Text );
    ad_ssap.FieldByName( 'ezys' ).Value := Trim( e_ez.text );
    ad_ssap.FieldByName( 'sslx' ).Value := e_sslx.Text;
    ad_ssap.FieldByName( 'ssdj' ).Value := ComboBox1.Text;
    ad_ssap.FieldByName( 'glfs' ).Value := ComboBox2.Text;
    ad_ssap.FieldByName( 'sssqbz' ).Value := trim(edt_sssqbz.Text);
    ad_ssap.FieldByName( 'qxbz' ).Value := 0;
    ad_ssap.FieldByName( 'ssqkid' ).Value := cbb_ssqklb.ItemIndex + 1;
    ad_ssap.FieldByName( 'mzfs' ).Value := Trim( e_mzfs.Text );
    if chb_CRB.Checked then
    begin
      ad_ssap.FieldByName( 'sfcrb' ).Value := chb_CRB.Checked;
      ad_ssap.FieldByName( 'jbbz' ).Value := Trim(e_CRB.Text);
    end;
    if ss_sqkzrsh and (trim(e_sslx.Text)='择期手术') then    //医嘱提交的,执行后再显示
      ad_ssap.FieldByName( 'xsbz' ).Value := False
    else
      ad_ssap.FieldByName( 'xsbz' ).Value := True;

    try
      ad_ssap.post;
      v_insid := ad_ssap.FieldByName( 'id' ).AsInteger;
      application.MessageBox( '保存成功！', '提示', mb_ok );
      panel1.Enabled := true;
      tmh.SetFocus;
    except
      application.MessageBox( '保存未成功，请重新保存！', '提示', mb_ok );
      ad_ssap.Edit;
    end;
    if v_yzmod then begin
      self.Close;
    end;
    if pub_yydm ='0067' then //绵阳市骨科医院 自动写入麻醉科主任为病人麻师
    begin
      try
        with DM_data.qry_pub do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select top 1 name,code from Anes_Writen_Into_blys';  
          Open;
          if not IsEmpty then
          begin
            sqlstr := 'UPDATE zydzbl_blys SET zydzbl_blys.mzysdm=''' +
                      DM_data.qry_pub.FieldByName('code').AsString +
                      ''',zydzbl_blys.mzysmc=''' + 
                      DM_data.qry_pub.FieldByName('name').AsString +
                      ''' WHERE zydzbl_blys.zyh=''' + v_zyh +'''';
          end;
          Close;
          SQL.Clear;
          SQL.Text := sqlstr;
          ExecSQL;
        end;
      except
        application.MessageBox( '病历医生中的麻醉医生没有成功写入，请在病历医生' +
                                '中手动录入！', '提示', mb_ok );
      end;
    end;
    EnableControl(false);
    B_bc.Enabled := false;
    b_zj.Enabled := true;
    B_fq.Enabled := false;
    displayvalue;
  end;
end;

procedure Tfrm_sssq.g_ssmcExit( Sender: TObject );
begin
  if Trim(re_ssmc_xz.Text)='' then
  begin
    re_ssmc_xz.Text := Trim( ad_ssmc.fieldbyname( '手术名称' ).asstring );
  end else begin
    re_ssmc_xz.text := Trim(re_ssmc_xz.text) + '、' + Trim( ad_ssmc.fieldbyname( '手术名称' ).asstring );
  end;
  e_ssmc_gl.Text := '';
end;

procedure Tfrm_sssq.g_zdysExit( Sender: TObject );
begin
  ( lastSender as TEdit ).text := Trim( ad_czy.fieldbyname( 'mc' ).asstring );
  g_zdys.visible := false;
end;

procedure Tfrm_sssq.Label7DblClick(Sender: TObject);
begin
  if trim(edt_sssqbz.Text)='' then
    edt_sssqbz.Text := Label7.Caption;
end;

procedure Tfrm_sssq.N1Click(Sender: TObject);
begin
  EnableControl(true);
  B_bc.Enabled := True;
  b_zj.Enabled := False;
  B_fq.Enabled := True;
end;

procedure Tfrm_sssq.N2Click(Sender: TObject);
begin
  if Application.MessageBox('你确定要取消这个手术么!', '警告', MB_OKCANCEL + MB_ICONWARNING)
    = IDOK then
  begin
    if ( sp_cx_ssqk.Active ) and ( sp_cx_ssqk.RecordCount > 0 ) and ( sp_cx_ssqk.fieldbyname( 'id' ).AsInteger > 0 ) then
    begin

      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text:='update bqgl_ssap set qxczy='''+pub_czydm+
        ''' ,qxsj=GETDATE(),qxbz=1 where id='+sp_cx_ssqk.FieldByName('id').AsString;
      DM_data.qry_pub.ExecSQL;

      Application.MessageBox('手术已取消!', '提示 ', MB_OK + MB_ICONINFORMATION);
      displayssapnull;
      displayvalue;
    end;
  end;
end;

procedure Tfrm_sssq.Panel5Enter(Sender: TObject);
begin
  ad_ssmc.Close;
  ad_ssmc.CommandText := 'exec bqgl_cx_ssdm '''','''+ pub_czydm +'''';
  ad_ssmc.Open;
  g_ssmc.Visible := True;
end;

procedure Tfrm_sssq.Panel5Exit(Sender: TObject);
begin
  b_okClick(Sender);
end;

procedure Tfrm_sssq.Panel6Exit(Sender: TObject);
begin
  if not Panel7.Focused then begin
    Panel6.SendToBack;
  end;
end;

procedure Tfrm_sssq.re_ssmc_xzEnter(Sender: TObject);
begin
  if (Trim(e_ssmc.Text)<>'') and (Trim(re_ssmc_xz.Text)='') then begin
    re_ssmc_xz.Text := Trim( e_ssmc.Text );
  end;
end;

procedure Tfrm_sssq.g_sqzdExit( Sender: TObject );
begin
  e_sqzd.text := Trim( ad_sqzd.fieldbyname( '疾病名称' ).asstring );
  g_sqzd.visible := false;
end;

procedure Tfrm_sssq.cxGrid2Exit(Sender: TObject);
begin
  if not btn_add_mzfs.Focused then begin
    e_mzfs.Text :=  Trim( ad_mzfs.FieldByName( '麻醉方法' ).asstring );
    Panel6.SendToBack;
    ad_mzfs.Close;
  end;
end;

procedure Tfrm_sssq.k( Sender: TObject );
begin
  e_ssmc_gl.SetFocus;
end;

procedure Tfrm_sssq.cxGridDBTableView1DblClick(Sender: TObject);
begin
  e_ssmc_gl.SetFocus;
end;

procedure Tfrm_sssq.cxGridDBTableView1KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    cxGridDBTableView1DblClick( Sender );
  end;
end;

procedure Tfrm_sssq.cxGridDBTableView2DblClick( Sender: TObject );
begin
  e_zdys.SetFocus;
end;

procedure Tfrm_sssq.cxGridDBTableView2KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    cxGridDBTableView2DblClick( Sender );
  end;
end;

procedure Tfrm_sssq.cxGridDBTableView3DblClick( Sender: TObject );
begin
  if ( lastSender as TEdit ) = e_zdys then
    e_yz.SetFocus
  else
    if ( lastSender as TEdit ) = e_yz then
      e_ez.SetFocus
    else
      if ( lastSender as TEdit ) = e_ez then
        edt_sssqbz.SetFocus
      else
        if ( lastSender as TEdit ) = edt_sssqbz then
          B_bc.SetFocus
        else
          e_sslx.SetFocus
      
end;

procedure Tfrm_sssq.cxGridDBTableView3KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    cxGridDBTableView3DblClick( Sender );
  end;
end;

procedure Tfrm_sssq.cxGridDBTableView5DblClick(Sender: TObject);
begin
  edt_sssqbz.SetFocus;
end;

procedure Tfrm_sssq.cxGridDBTableView5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    cxGridDBTableView5DblClick( Sender );
  end;
end;

procedure Tfrm_sssq.cxGridDBTableView6CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  ad_mzfs.Close;
  edt_sssqbz.SetFocus;
end;

procedure Tfrm_sssq.cxGridDBTableView6DblClick(Sender: TObject);
begin
  edt_sssqbz.SetFocus;
end;

procedure Tfrm_sssq.cxGridDBTableView6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    cxGridDBTableView6DblClick( Sender );
  end;
end;

procedure Tfrm_sssq.e_yzKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    e_ez.SetFocus;
  end
end;

procedure Tfrm_sssq.b_zjClick( Sender: TObject );
begin
  EnableControl(true);
  displayssapnull;
  ad_ssap.Append;
  e_ssmc.SetFocus;
  re_ssmc_xz.Text := '';
  b_zj.enabled := false;
  B_bc.Enabled := True;
  B_fq.Enabled := True;
end;

procedure Tfrm_sssq.B_fqClick( Sender: TObject );
begin
  panel1.Enabled := true;
  tmh.SetFocus;
  EnableControl(false);
end;

procedure Tfrm_sssq.e_CRBEnter(Sender: TObject);
begin
  Frm_func.changecolor(Sender);
end;

procedure Tfrm_sssq.e_CRBExit(Sender: TObject);
begin
  Frm_func.restorecolor(Sender);
end;

procedure Tfrm_sssq.e_CRBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (e_CRB.Text <> '') then
  begin

  end;
end;

procedure Tfrm_sssq.e_ezKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    if(cbb_ssqklb.Visible=true) then
    begin
      cbb_ssqklb.SetFocus;
    end
    else
    begin
      edt_sssqbz.SetFocus;
    end;
  end;
end;

procedure Tfrm_sssq.e_ffmcExit(Sender: TObject);
begin
  if Trim( e_ffmc.Text ) <> '' then begin
    e_zjm.SetFocus;
  end
  else  if not Button2.Focused then  begin
    application.MessageBox( '新增麻醉方法名称不能为空', '错误', mb_ok + mb_iconerror );
  end;

end;

procedure Tfrm_sssq.e_ffmcKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    e_ffmcExit(Sender);
  end;

end;

procedure Tfrm_sssq.e_sqrqKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    e_sqtm.SetFocus;
  end
end;

procedure Tfrm_sssq.e_sqtmKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    e_zdys.SetFocus;
  end;
end;

procedure Tfrm_sssq.e_sqzdKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if (key = 13) and (ssCtrl in Shift) then
  begin
    if not ( b_zj.Focused or B_bc.focused or b_fq.Focused or b_tc.Focused ) then
    begin
      ad_sqzd.Close;
      ad_sqzd.CommandText := 'select jbbm 代码, jbmc 疾病名称,pym 助记码 from sys_jbbm '+
                              'where Convert(char,jbbm)+jbmc+pym like ''%' + trim( e_sqzd.text ) + '%''';
      ad_sqzd.Open;
      if ad_sqzd.IsEmpty then
      begin
        application.MessageBox( '没有找到对应的疾病名称', '错误', mb_ok + mb_iconerror );
      end
      else
      if ad_sqzd.recordcount = 1 then
      begin
        e_sqzd.text := ad_sqzd.fieldbyname( '疾病名称' ).asstring;
      end
      else
      begin
        g_sqzd.Visible := true;
        g_sqzd.Top := e_sqzd.Top + Panel3.Top + e_sqzd.Height;
        g_sqzd.Left := e_sqzd.Left + Panel3.Left;
        g_sqzd.SetFocus;
      end
    end
  end
  else if key = 13 then
  begin
    e_zdys.SetFocus;
  end;

end;

procedure Tfrm_sssq.DBGrid4DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState );
begin
//  if ( sp_cx_ssqk.fieldbyname( 'sssqr' ).asstring = '是' ) and ( sp_cx_ssqk.fieldbyname( 'mzqr' ).asstring = '是' ) then
//  begin
//    dbgrid4.Canvas.Brush.Color := cllime;
//    dbgrid4.Canvas.Font.color := clblue;
//  end;
//  if ( sp_cx_ssqk.fieldbyname( 'sssqr' ).asstring = '是' ) and ( sp_cx_ssqk.fieldbyname( 'mzqr' ).asstring = '否' ) then
//  begin
//    dbgrid4.Canvas.Brush.Color := clAqua;
//    dbgrid4.Canvas.Font.color := clblack;
//  end;
//  if ( sp_cx_ssqk.fieldbyname( 'sssqr' ).asstring = '否' ) and ( sp_cx_ssqk.fieldbyname( 'mzqr' ).asstring = '是' ) then
//  begin
//    dbgrid4.Canvas.Brush.Color := clyellow;
//    dbgrid4.Canvas.Font.color := clblack;
//  end;
//
//  if sp_cx_ssqk.fieldbyname( 'ssqx' ).asstring = '是'  then begin
//    dbgrid4.Canvas.Brush.Color := clMaroon;
//    dbgrid4.Canvas.Font.color := clWhite;
//  end;

  dbgrid4.DefaultDrawColumnCell( rect, datacol, column, state );
end;

procedure Tfrm_sssq.sp_cx_ssqkAfterScroll( DataSet: TDataSet );
begin
  ad_ssap.close;
  ad_ssap.Parameters.ParamByName( 'id' ).value := sp_cx_ssqk.fieldbyname( 'id' ).asinteger;
  ad_ssap.open;
  displayssapvalue;
  if panel4.Enabled = TRUE then
    dbgrid4.setfocus;
end;

procedure Tfrm_sssq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then close;
end;

procedure Tfrm_sssq.FormShow( Sender: TObject );
begin
  initKg;
  re_ssmc_xz.Text := '';
  tmh.SetFocus;
  EnableControl(false);
  Panel5.SendToBack;
  Panel6.SendToBack;
  Panel7.SendToBack;
  if Trim( v_tmh ) <> '' then
  begin
    v_tmh := Trim( v_tmh );
    tmh.Text := v_tmh;
    DBGrid4.SetFocus;
  end;
  FormTitle:=Self.Caption;
  if pub_yydm = '0067' then
  begin
    Label23.Visible := True;
    cbb_ssqklb.Visible := True;
    Label24.Visible := True;
    e_mzfs.Visible := True;
  end
  else
  begin
    Label17.Left := Label23.Left;
    ComboBox2.Left := cbb_ssqklb.Left;
    Label8.Left := Label24.Left;
    edt_sssqbz.Left := e_mzfs.Left;
  end;

  if pub_yydm = HN_SYRMYY then
  begin
    chb_CRB.Visible := True;
    e_CRB.Visible := True;
    chb_CRB.Checked := False;
  end;
end;

procedure Tfrm_sssq.gvbrxmDblClick( Sender: TObject );
begin
  Panel1.Enabled := False;
  DBGrid4.SetFocus;
  g_jbxx.Visible:=false;
  //displayvalue;
end;

procedure Tfrm_sssq.gvbrxmKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    gvbrxmDblClick( Sender );
  end;
end;

procedure Tfrm_sssq.g_jbxxExit( Sender: TObject );
begin
  tmh.Text := Trim( sp_cx_zybrjbqk.FieldByName( 'tmh' ).AsString );
  displayvalue;
  g_jbxx.Visible := false;
end;

procedure Tfrm_sssq.g_mzfsExit(Sender: TObject);
begin
  e_mzfs.text := Trim( ad_mzfs.fieldbyname( '麻醉方法' ).asstring );
  g_mzfs.visible := false;
end;

procedure Tfrm_sssq.e_ssmcClick(Sender: TObject);
begin
  e_ssmcEnter(Sender);
end;

procedure Tfrm_sssq.e_ssmcEnter(Sender: TObject);
begin
  if Trim(e_ssmc.Text) <> '' then
  begin
    re_ssmc_xz.Text := Trim( e_ssmc.Text );
  end else begin
    re_ssmc_xz.Text := '';
  end;
  Panel5.BringToFront;
  Panel5.Top := e_ssmc.Top + Panel3.Top;
  Panel5.Left := e_ssmc.Left + Panel3.Left;
  e_ssmc_gl.SetFocus;
end;

procedure Tfrm_sssq.e_ssmc_glKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
label
  _jsssmc;
begin
  if (key = VK_RETURN) and (ssCtrl in Shift) then
  begin
    _jsssmc:
    ad_ssmc.Close;
    ad_ssmc.CommandText := 'exec bqgl_cx_ssdm '''+( sender as Tedit ).text+''','''+
                            pub_czydm+'''';
    ad_ssmc.Open;
    e_ssmc_gl.Text := '';
    if ad_ssmc.IsEmpty then
    begin
      Application.MessageBox( '不存在的手术名称!或你没有权限开此级别的手术！', '警告', MB_OK + MB_ICONWARNING );
      e_ssmc_gl.setfocus;
    end else if ad_ssmc.recordcount = 1 then begin
      re_ssmc_xz.text := Trim( re_ssmc_xz.text ) + ' ' + ad_ssmc.fieldbyname( '手术名称' ).asstring;
      ad_ssmc.Close;
    end;
  end else if key = VK_RETURN then begin
    if (pub_yydm<>'0015') then  //江油的，不检索
      goto _jsssmc;
    g_ssmc.SetFocus;
  end;
end;

end.

