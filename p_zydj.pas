unit p_zydj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBTables, Db, Grids, DBGrids, ComCtrls, ExtCtrls,
  DBCtrls, DBCGrids, Mask, ADODB, ComObj, GridsEh, DBGridEh, SXAgeBox,
  SXXzqhBox, SXComboBox, SXSearchBox, Registry, Variants, p_balj, p_Makvar_zysf,
  debugHandler, RzEdit, StrUtils, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, XMLIntf, XMLDoc, p_ICF,IDROCXLib_TLB, OleCtrls;

type
  Tfrm_zydj = class( TForm )
    b_close: TBitBtn;
    ds_zydj: TDataSource;
    dstemp: TDataSource;
    jbqk_cx: TADODataSet;
    sp_cx_brqk: TADOStoredProc;
    qry_zydj: TADOQuery;
    sp_up_kyh: TADOStoredProc;
    sp_inyj: TADOStoredProc;
    sp_gettmh: TADOStoredProc;
    sp_cwaz: TADOStoredProc;
    Panel1: TPanel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label11: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    brkh: TLabel;
    Label28: TLabel;
    bz: TDBEdit;
    b_save: TBitBtn;
    brxm: TDBEdit;
    brdwdz: TDBEdit;
    sfzhm: TDBEdit;
    ryrq: TDateTimePicker;
    b_cancel: TBitBtn;
    brzy: TComboBox;
    brxb: TComboBox;
    brjg: TComboBox;
    brsf: TComboBox;
    brmz: TComboBox;
    rybq: TComboBox;
    rytj: TComboBox;
    fylb: TComboBox;
    ryyj: TEdit;
    dwdh: TDBEdit;
    dwyb: TDBEdit;
    nxrdh: TDBEdit;
    sbkh: TDBEdit;
    ryks: TComboBox;
    jbbm: TComboBox;
    sbdw: TComboBox;
    dbr: TDBEdit;
    pbgx: TComboBox;
    mzys: TComboBox;
    ylje: TDBEdit;
    bch: TEdit;
    Label1: TLabel;
    tmh: TEdit;
    Label22: TLabel;
    zycs: TDBEdit;
    Label10: TLabel;
    sjbh: TEdit;
    Bevel1: TBevel;
    Label30: TLabel;
    qfxe: TEdit;
    tempgrid: TDBGrid;
    Button1: TButton;
    lbl1: TLabel;
    dtp1: TDateTimePicker;
    brnl: TSXAgeBox;
    btn_sbdk: TButton;
    Bevel2: TBevel;
    Label_ts: TLabel;
    qry_bq: TADOQuery;
    qry_bqcw_lb: TADOQuery;
    memo_lbs: TMemo;
    Label29: TLabel;
    bah: TEdit;
    Edit1: TEdit;
    conn_ba: TADOConnection;
    qry_balj: TADOQuery;
    Button2: TButton;
    lbl_balj: TLabel;
    sp_get_bah: TADOStoredProc;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ComboBox1: TComboBox;
    rysj: TDateTimePicker;
    Label33: TLabel;
    lblfkfs: TLabel;
    Cmbbfkfs: TComboBox;
    qryfkfs: TADOQuery;
    IdHTTP1: TIdHTTP;
    lblnessary1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    Label34: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lblStarSBDW: TLabel;
    Label35: TLabel;
    MyIdrOcx1: TMyIdrOcx;
    grp1: TGroupBox;
    lbl_tmh: TLabel;
    lbl_brxm: TLabel;
    lbl_brxb: TLabel;
    lbl_brnl: TLabel;
    lbl_ryks: TLabel;
    chk1: TCheckBox;
    Label36: TLabel;
    hyqk: TComboBox;
    Label37: TLabel;
    DBEditdbr: TDBEdit;
    Label_pq: TLabel;
    cbb_pq: TComboBox;
    b_dk: TButton;
    lbl_tsbs: TLabel;
    cbb_tsbs: TComboBox;
    lbl15: TLabel;
    dbedt_oldzyh: TDBEdit;
    chkcpkrk: TCheckBox;
    brdz: TSXXzqhBox;
    BitBtn1: TBitBtn;
    lb_khy: TLabel;
    chk_lgbr: TCheckBox;
    procedure FormShow( Sender: TObject );
    procedure FormKeyPress( Sender: TObject; var Key: Char );
    procedure b_closeClick( Sender: TObject );
    procedure tempgridKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure tempgridExit( Sender: TObject );
    procedure b_saveClick( Sender: TObject );
    procedure b_cancelClick( Sender: TObject );
    procedure sfzhmKeyPress( Sender: TObject; var Key: Char );
    function zydj_yz: Integer;
    procedure tmhKeyPress( Sender: TObject; var Key: Char );
    procedure FormCreate( Sender: TObject );
    procedure brjgExit( Sender: TObject );
    procedure brsfExit( Sender: TObject );
    procedure brmzExit( Sender: TObject );
    procedure brzyExit( Sender: TObject );
    procedure ryksExit( Sender: TObject );
    procedure brxbExit( Sender: TObject );
    procedure ryrqExit( Sender: TObject );
    procedure rytjExit( Sender: TObject );
    procedure rybqExit( Sender: TObject );
    procedure fylbExit( Sender: TObject );
    procedure brxmExit( Sender: TObject );
    procedure ryyjExit( Sender: TObject );
    procedure jbbmExit( Sender: TObject );
    procedure sbdwExit( Sender: TObject );
    procedure sbkhExit( Sender: TObject );
    procedure pbgxExit( Sender: TObject );
    procedure brdwdzExit( Sender: TObject );
    procedure dbrExit( Sender: TObject );
    procedure sfzhmExit( Sender: TObject );
    procedure mzysExit( Sender: TObject );
    procedure tmhEnter( Sender: TObject );
    procedure proc_cxbrxx;
    procedure proc_tmhsyzt;
    procedure brdwdzEnter( Sender: TObject );
    procedure Button1Click( Sender: TObject );
    procedure brnlExit( Sender: TObject );
    procedure dtp1Exit( Sender: TObject );
    procedure btn_sbdkClick( Sender: TObject );
    procedure brdzExit( Sender: TObject );
    procedure brxmKeyPress( Sender: TObject; var Key: Char );
    procedure bahExit( Sender: TObject );
    procedure Button2Click( Sender: TObject );
    procedure FormKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure dbrDblClick( Sender: TObject );
    procedure FormDestroy( Sender: TObject );
    procedure rysjKeyPress( Sender: TObject; var Key: Char );
    procedure dtp1Change( Sender: TObject );
    procedure brxmEnter( Sender: TObject );
    procedure dbrEnter( Sender: TObject );
    procedure bzEnter( Sender: TObject );
    procedure bzExit( Sender: TObject );
    procedure brnlChange( Sender: TObject );
    procedure brdzKeyPress(Sender: TObject; var Key: Char);
    procedure brmzKeyPress(Sender: TObject; var Key: Char);
    procedure sfzhmChange(Sender: TObject);
    procedure dtp1KeyPress(Sender: TObject; var Key: Char);
    procedure fylbChange(Sender: TObject);
    procedure jbbmKeyPress(Sender: TObject; var Key: Char);
    procedure chk1Click(Sender: TObject);
    procedure b_dkClick(Sender: TObject);
    procedure cbb_tsbsKeyPress(Sender: TObject; var Key: Char);
    procedure cbb_tsbsExit(Sender: TObject);
    procedure dwybKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditdbrExit(Sender: TObject);
    procedure CmbbfkfsKeyPress(Sender: TObject; var Key: Char);
    procedure tmhDblClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    zy_brxm: string; //病人姓名
    zy_ksdm: string; //入院科室
    zy_ksmc: string; //科室名称
    zy_fylb: string; //费用类别
    zy_fysb: string; //费用类别__社保
    zy_rytj: string; //入院途径
    zy_rybq: string; //入院病情
    zy_brzy: string; //病人职业
    zy_brxb: string; //病人性别
    zy_tmh: string; //病人卡号
    zy_mztmh: string; //病人门诊卡号
    zy_bah: string; //病人病案号
    zy_zyh: string; //病人住院号
    zy_mzys: string; //门诊医生
    zy_ryrq: Tdatetime; //入院日期
    zy_csrq: Tdatetime; //出生日期
    zy_brsf: string; //病人省份
    zy_pbgx: string; //陪伴关系
    zy_brjg: string; //病人籍贯
    zy_brmz: string; //病人民族
    zy_zycs: integer; //入院次数
    zy_yjje: Double; //入院预交金额
    zy_yjfkfsbm: string; // 预交金付款方式编码
    zy_yjfkfsmc: string; // 预交金付款方式
    zy_jzxe: real; //病人记帐限额
    zy_sjbh: string; //收据编号
    zy_sjh: string; //实际收据号
    zy_yjbz: boolean; //预交标志
    zy_bqdm: string; //病区代码
    zy_ryzd: string; //入院诊断
    zy_tsbs: string; //特殊标识
    zy_sbjg: string;
    zy_brdz: string;
    zy_brnl:string; //病人年龄

    BBirthdayInputed: Boolean;//生日已经录入
    BIDInputed: Boolean; //手动输入了身份证
    id: TIdentity;
    tcpThread: Tbalj_Tcp_conn;
    function checkIn( str: string ): integer;
    procedure cwaz; //社保机构
    { Private declarations }
    procedure baljsjtb( Azyh: string );
    function proc_dqSfzxx(MyIdrOcx1: TMyIdrOcx): string;
    procedure ReadCard_CallBack;
    procedure new_jkkd_hd;
  public
    resultf: string;
    tempcom: Tcombobox;
    procedure displayvalue;
    function finditems( tablename, numf, charf, resultf, info: string; tempcom:
      Tcombobox ): boolean;
    { Public declarations }
    function bqgl_bqdj( zyh: string ): boolean;
  end;

var
  frm_zydj: Tfrm_zydj;
  zydjbalj,pub_sfzxxdqbz: Boolean; //登记的时候 些病案数据
  zy_csqfxe: real; //指定类别病人，初始欠费限额

implementation
uses p_jmjm, P_login, p_dm, p_func, p_brdz, p_zysf_print_service, p_mzsb,
  P_mzsjdr, sldll, softpos, p_posxz, superobject, PosService, p_jkk_re,
  jkk_func, bsjk,p_sfzhmyz,p_yhkdk;
var
  prv_is_sb: boolean;
  prv_dkxh: string;

{$R *.DFM}

function Tfrm_zydj.bqgl_bqdj( zyh: string ): boolean;
var
  Reg: Tregistry;
  servernameba, datanameba: string;
  zyh_2, bybh, ls: string;
begin
  baljsjtb( zyh );
  Exit;

  Result := True;
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
    try
      if ( servernameba <> servername ) and ( not conn_ba.Connected ) then
        //病案库和his不是同一台服务器
      begin
        conn_ba.ConnectionString :=
          'Provider=SQLOLEDB.1;Password=baglxt;User ID=sys_bagl;' +
          'Persist Security Info=True;Initial Catalog=' +
          datanameba + ';Data Source=' + servernameba;
        conn_ba.Connected := True;
        qry_balj.Connection := conn_ba;
      end
      else
      begin
        qry_balj.Connection := DM_data.ado_mydata;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := 'exec zysf_in_bqlj ''' + zyh + '''';
      DM_data.qry_pub.Open;
      qry_balj.Close;
      qry_balj.SQL.Text := 'select isnull(max(zyh),0)+1 zyh from dbo.zybak';
      qry_balj.Open;
      zyh_2 := trim( qry_balj.FieldByName( 'zyh' ).AsString );
      zyh_2 := stringofchar( '0', 10 - length( zyh_2 ) ) + zyh_2;
      qry_balj.Close;
      qry_balj.SQL.Text := 'select * from dbo.zybak where zybak.zyh is null';
      qry_balj.Open;
      qry_balj.Insert;
      bybh := 'L' + FormatDateTime( 'yyyyMMddHHmmsszzz', now );
      qry_balj.FieldByName( 'zyh' ).Value := zyh_2;
      qry_balj.FieldByName( 'hiszyh' ).Value := zyh;
      qry_balj.FieldByName( 'brbh' ).Value := bybh;
      qry_balj.FieldByName( 'BAH' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'tmh' ).AsString );
      qry_balj.FieldByName( 'KH' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'tmh' ).AsString );
      qry_balj.FieldByName( 'ryks' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'tmh' ).AsString );
      qry_balj.FieldByName( 'cyks' ).Value := '';
      qry_balj.FieldByName( 'rysj' ).Value := FormatDateTime( 'yyyy-MM-dd',
        DM_data.qry_pub.FieldByName( 'ryrq' ).Value );
      qry_balj.FieldByName( 'cysj' ).Value := null;
      if DayOfWeek( DM_data.qry_pub.FieldByName( 'serverdate' ).AsDateTime ) = 2
        then
      begin
        qry_balj.FieldByName( 'sqsj' ).Value :=
          DM_data.qry_pub.FieldByName( 'serverdate' ).AsDateTime - 2;
      end
      else
      begin
        qry_balj.FieldByName( 'sqsj' ).Value :=
          DM_data.qry_pub.FieldByName( 'serverdate' ).AsDateTime - 1;
      end;
      qry_balj.FieldByName( 'ys4' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'ys4' ).AsString );
      qry_balj.FieldByName( 'ly' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'zycs' ).AsString );
      qry_balj.FieldByName( 'bqzk' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'rybq' ).AsString );
      qry_balj.FieldByName( 'fy0' ).Value := 0;
      qry_balj.Connection.BeginTrans;
      qry_balj.Post;
      qry_balj.UpdateBatch( arCurrent );

      qry_balj.Close;
      qry_balj.SQL.Text := 'select * from dbo.byqk where byqk.brbh is null';
      qry_balj.Open;
      qry_balj.Insert;
      qry_balj.FieldByName( 'brbh' ).Value := bybh;
      LS := trim( DM_data.qry_pub.FieldByName( 'BRXM' ).AsString );
      while POS( ' ', LS ) <> 0 do
        DELETE( LS, POS( ' ', LS ), 1 );
      if length( ls ) > 10 then
        ls := copy( ls, 1, 10 );
      qry_balj.FieldByName( 'xm' ).Value := LS;
      LS := trim( DM_data.qry_pub.FieldByName( 'brdz' ).AsString );
      while POS( ' ', LS ) <> 0 do
        DELETE( LS, POS( ' ', LS ), 1 );
      if length( ls ) > 40 then
        ls := copy( ls, 1, 40 );
      qry_balj.FieldByName( 'jtdz' ).Value := LS;
      qry_balj.FieldByName( 'gzdw' ).Value := LS;
      qry_balj.FieldByName( 'fb' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'fylb' ).AsString );
      qry_balj.FieldByName( 'gj' ).Value := 1;
      qry_balj.FieldByName( 'xb' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'brxb' ).AsString );
      qry_balj.FieldByName( 'SF' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'brsf' ).AsString );
      qry_balj.FieldByName( 'jg' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'brjg' ).AsString );
      qry_balj.FieldByName( 'mz' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'brmz' ).AsString );
      qry_balj.FieldByName( 'cssj' ).Value :=
        DM_data.qry_pub.FieldByName( 'csrq' ).AsDateTime;
      qry_balj.FieldByName( 'LXR' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'dbr' ).AsString );
      qry_balj.FieldByName( 'gx' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'gx' ).AsString );
      qry_balj.FieldByName( 'LXRDZ' ).Value :=
        Trim( DM_data.qry_pub.FieldByName( 'dbrdz' ).AsString );
      try
        qry_balj.FieldByName( 'dwdh' ).Value :=
          Trim( DM_data.qry_pub.FieldByName( 'dwdh' ).AsString );
      except
      end;
      try
        qry_balj.FieldByName( 'dwyb' ).Value :=
          Trim( DM_data.qry_pub.FieldByName( 'dwyb' ).AsString );
      except
      end;
      try
        qry_balj.FieldByName( 'lxrdh' ).Value :=
          Trim( DM_data.qry_pub.FieldByName( 'nxrdh' ).AsString );
      except
      end;
      try
        qry_balj.FieldByName( 'SFZH' ).Value :=
          Trim( DM_data.qry_pub.FieldByName( 'sfzhm' ).AsString );
      except
      end;
      qry_balj.Post;
      qry_balj.UpdateBatch( arCurrent );
      qry_balj.Connection.CommitTrans;
    except
      on e: Exception do
      begin
        if qry_balj.Connection.InTransaction then
          qry_balj.Connection.RollbackTrans;
        Application.MessageBox( PChar( '病案数据导入失败，病人卡号输入上面卡号栏，重新导入病案数据' + #13#10 + e.Message ), '错误', MB_OK
          + MB_ICONSTOP );

        Result := False;
      end;
    end;
  finally
    conn_ba.Connected := False;
  end;
end;

procedure Tfrm_zydj.proc_tmhsyzt;
var
  TmpInt: Integer;
begin
  if TryStrToInt( Trim( tmh.text ), TmpInt ) then
  begin
    tmh.text := formatex( TmpInt, 9 );
  end
  else
  begin
    //tmh.text := ''
  end;
  zy_tmh := tmh.text;
//  if frm_func.istmh( zy_tmh, 'zy' ) = false then
//  begin
//    application.MessageBox( '此卡号已经被人使用过,新病人不能再用这个卡号!!!',
//      '提示', 0 + 48 );
//    tmh.Clear;
//    if tmh.Enabled then
//      tmh.SetFocus;
//    abort;
//  end;
end;

procedure Tfrm_zydj.proc_cxbrxx;
var
  Reg: Tregistry;
  servernameba, datanameba: string;
begin
  if trim( tmh.text ) <> '' then
  begin
    dm_data.Qry_pub.Close;
    dm_data.Qry_pub.SQL.clear;
    dm_data.Qry_pub.SQL.Text := 'select * from zysf_zydj ' +
      ' where tmh=' + '''' + zy_tmh + '''' +
      ' and (jsbz=0 or cybz=0)';
    dm_data.Qry_pub.open;
    if not dm_data.Qry_pub.IsEmpty then
    begin
      //      if zydjbalj then
      //      begin
      //        if conn_ba.ConnectionString='' then
      //        begin
      //          Reg:=Tregistry.Create;
      //          try
      //            Reg.RootKey:=hkey_local_machine;
      //            if Reg.OpenKey('Software\myserver',true) then
      //            begin
      //              servernameba:=Reg.ReadString('servernameba');
      //              datanameba:=Reg.ReadString('datanameba');
      //            end;
      //            reg.CloseKey ;
      //          finally
      //            Reg.Free ;
      //          end;
      //          conn_ba.ConnectionString := 'Provider=SQLOLEDB.1;Password=baglxt;User ID=sys_bagl;'+
      //                                      'Persist Security Info=True;Initial Catalog='+
      //                                      datanameba+';Data Source='+servernameba;
      //          conn_ba.Connected := True;
      //        end;
      //        qry_balj.Close;
      //        qry_balj.Connection := conn_ba;
      //        qry_balj.SQL.Text := 'select * from dbo.zybak where zybak.hiszyh ='''+
      //                             dm_data.Qry_pub.FieldByName('zyh').AsString+'''';
      //        qry_balj.Open;
      //        if qry_balj.IsEmpty then
      //        begin
      //          qry_balj.close;
      //          conn_ba.Connected := false;
      //          if Application.MessageBox('此病人没有导入病案数据，现在导入请点“是”',
      //            '错误', MB_YESNO + MB_ICONQUESTION) = IDYES then
      //          begin
      //            bqgl_bqdj(dm_data.Qry_pub.FieldByName('zyh').AsString);
      //            abort;
      //          end;
      //        end else begin
      //          qry_balj.close;
      //          application.MessageBox( '此卡号有病人正在住院,不能用此卡号登记！', '提示', 0 + 16 );
      //          abort;
      //        end;
      //      end else
      begin
        application.MessageBox( '此卡号有病人正在住院,不能用此卡号登记！',
          '提示', 0 + 16 );
        Abort;
      end;
    end;
  end;
end;

procedure Tfrm_zydj.baljsjtb( Azyh: string );
begin
  if Assigned( tcpThread ) then
    if not tcpThread.Senddata( 'Syn', Azyh ) then
    begin
      ShowMessage( '发送病案同步请求失败' );
    end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zydj.new_jkkd_hd
  作者:      yangshuai
  日期:      2017.10.16
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zydj.new_jkkd_hd;
var
  _str: string;
   Key: Char;
  jkk_PsnBaseInfo: Tjkk_PsnBaseInfo;
  jkk_AddressInfo: Tjkk_AddressInfo;
  jkk_PayTypeInfo: Tjkk_PayTypeInfo;
begin
  try
   json:=InfoJson(1);//读取健康卡信息
    try
      _str := Trim(json['CardInfo.CardNo'].AsString );
      pub_bdkh := json['CardInfo.CardNo'].AsString;
    except
      Application.MessageBox( '健康卡号读取失败，请重新操作！', '系统提示',
      MB_OK + MB_ICONWARNING );
    end;
    //查询卡绑定   已绑定
    if proc_cx_jzklx(_str) then
    begin
      tmh.Text := pub_bdktmh;
      Key:=  #13 ;
      tmhKeyPress( tmh, key );
    end
    else //未绑定自动生成临时号并绑定
    begin
      //开关（门诊是否使用磁卡）控制和提示
      if pub_sfsctmh then
      begin
        if Application.MessageBox('此卡未绑定，' + #13#10#13#10 +
          '系统启动里临时号，是否自动绑定系统临时号？' + #13#10#13#10 +
          '否则请提示用户到自助机上进行绑定操作，再次挂号！', '系统提示',
          MB_YESNO + MB_ICONQUESTION) <> IDYES then
        begin
          Exit;
        end;

        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text := 'select * from sys_kyh where sfzhm=''' + _str + '''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.RecordCount = 0 then
        begin
//          'yyt_in_kyhdb'

//          sp_get_kh.close;
//          sp_get_kh.ExecProc;
//          kh.text := trim(sp_get_kh.parameters.parambyname('@lstmh').value);
            //获取基本信息

//          if Trim(tmh.Text) <> _str then   //如果身份证号码不等于卡号
//          begin
//            DM_data.qry_pub.Close;
//            DM_data.qry_pub.SQL.Text := 'select * from sys_kyh where tmh=''' +Trim(tmh.Text) + '''';
//            DM_data.qry_pub.Open;
//            if not  DM_data.qry_pub.IsEmpty then
//            begin
//              DM_data.qry_pub.Close;
//              DM_data.qry_pub.SQL.Text := 'update sys_kyh set sfzhm='+#39+ Trim(_str)+#39 +
//              'where tmh='+#39+Trim(tmh.text)+#39;
////              DM_data.qry_pub.Parameters.ParamByName('tmh').Value := kh.text;
////              DM_data.qry_pub.Parameters.ParamByName('bdkh').Value := _str;//健康卡信息
//              DM_data.qry_pub.ExecSQL;
//            end else
//            begin
//               Application.MessageBox(pchar('没有该用户的建卡信息：' + Trim(tmh.Text)), '系统提示',
//               MB_OK + MB_ICONWARNING);
//              exit ;
//            end;
//          end;

          json:=InfoJson(2); //读取持卡人基本信息
          if Assigned(json['PsnBaseInfo']) then
          begin
            brxm.Text := json['PsnBaseInfo.PsnName'].AsString; //姓名
            if json['PsnBaseInfo.PsnGen'].AsString= '1' then //性别
              brxb.Text := '男'
            else if json['PsnBaseInfo.PsnGen'].AsString = '2' then
              brxb.Text := '女'
            else
              brxb.Text := '未知';
            dtp1.DateTime := StrToDateTime(func_zh_csrq(json['PsnBaseInfo.BirthDay'].AsString)); //出生日期
            brnl.Csrq := dtp1.DateTime;
            sfzxx := new(_sfzxx);
            sfzxx.Born := func_zh_csrq(json['PsnBaseInfo.BirthDay'].AsString);
            sfzxx.CardNo := json['PsnBaseInfo.PsnID'].AsString; //身份证号码
            json:=InfoJson(8); //读取地址信息
            if Assigned(json['AddressInfo']) then
            begin
              brdz.Text := trim(json['AddressInfo.Address1'].AsString);
              if brdz.Text = '' then
                brdz.Text := trim(json['AddressInfo.Address2'].AsString);
              sfzxx.Address := brdz.Text;
            end;
            dm_data.sp_pub.Close;
            dm_data.sp_pub.ProcedureName := 'yyt_in_kyhdb';
            dm_data.sp_pub.Parameters.Refresh;
            dm_data.sp_pub.Parameters.ParamByName('@kh').Value := _str;
            dm_data.sp_pub.Parameters.ParamByName('@bdlb').Value := '03';
            dm_data.sp_pub.Parameters.ParamByName('@brxm').Value :=  brxm.Text; //姓名
            dm_data.sp_pub.Parameters.ParamByName('@brxb').Value := brxb.Text; //身份证号码
            dm_data.sp_pub.Parameters.ParamByName('@brmz').Value := '汉';

            dm_data.sp_pub.Parameters.ParamByName('@csrq').Value := dtp1.DateTime;
            dm_data.sp_pub.Parameters.ParamByName('@brdz').Value := sfzxx.Address;
            dm_data.sp_pub.Parameters.ParamByName('@sfzh').Value := sfzxx.CardNo;
             json:=InfoJson(4);//读取支付信息
            if Assigned(json['PayTypeInfo']) then
            begin
              dm_data.sp_pub.Parameters.ParamByName('@lxdh').Value := json['PayTypeInfo.PhoneNo1'].AsString;
            end else begin
              dm_data.sp_pub.Parameters.ParamByName('@lxdh').Value := '';
            end;
            dm_data.sp_pub.Parameters.ParamByName('@czrq').Value := Now;
            dm_data.sp_pub.Parameters.ParamByName('@jylsh').Value := '';
            dm_data.sp_pub.Parameters.ParamByName('@fhtmh').Value := '';
            dm_data.sp_pub.Parameters.ParamByName('@zt').Value := '';
            try
              dm_data.sp_pub.ExecProc;
            except
              on e: Exception do
              begin
                Application.MessageBox(pchar('健康卡号绑定失败！' + e.Message), '系统提示',
                  MB_OK + MB_ICONWARNING);
                Exit;
              end;
            end;
            if (dm_data.sp_pub.Parameters.ParamByName('@zt').Value <> '成功') then
            begin
              _str := dm_data.sp_pub.Parameters.ParamByName('@zt').Value;
              Application.MessageBox(pchar('健康卡号绑定失败！' + _str), '系统提示',
                MB_OK + MB_ICONWARNING);
              Exit;
            end;
            tmh.text := dm_data.sp_pub.Parameters.ParamByName('@fhtmh').Value;
//            dm_data.sp_pub.Parameters.ParamByName('@fhtmh').Value;
//            dm_data.sp_pub.Parameters.ParamByName('@zt').Value;
//            //自动绑定且存储基本信息
//            if not proc_up_jkkbd(kh.text, xm.Text, xb.Text, nl.Text, brdz.Text, sfzxx.CardNo, sfzxx.Born, _str, '03') then
//            begin
//              Application.MessageBox(pchar('健康卡号与系统临时号绑定失败！'), '系统提示',
//                MB_OK + MB_ICONWARNING);
//              kh.Enabled := True;
//              kh.SetFocus;
//              Exit;
//            end;
          end
          else
          begin
            _str := Trim(cwxx);
            Application.MessageBox(pchar('健康卡号读取失败！失败原因：' + _str), '系统提示',
              MB_OK + MB_ICONWARNING);
            tmh.Enabled := True;
            tmh.SetFocus;
            Exit;
          end;
        end else begin
          tmh.text := Trim(DM_data.qry_pub.FieldByName('tmh').AsString);
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text := 'insert sys_kyhbd(tmh,bdkh,bdlb,czrq,jylsh,yxbz)' +
            'values(:tmh,:bdkh,''03'',GETDATE(),NULL,1)';
          DM_data.qry_pub.Parameters.ParamByName('tmh').Value := tmh.text;
          DM_data.qry_pub.Parameters.ParamByName('bdkh').Value := _str;//健康卡信息
          DM_data.qry_pub.ExecSQL;
          tmhKeyPress(tmh, key );
        end;
      end
      else //如果不启用临时号则提示先办卡
      begin
        Application.MessageBox('读取到的健康卡号未绑定，且未启用系统临时条码号，请先到自助机上进行绑定操作！', '系统提示',
          MB_OK + MB_ICONWARNING);
        tmh.Enabled := True;
        tmh.SetFocus;
        Exit;
      end;
    end;
    lb_khy.Caption := '绑定居民健康卡号：' + _str;
    lb_khy.Visible := true;
    brxm.Enabled := True;
    brxm.SetFocus;
   // khExit(Self);
  except
    Application.MessageBox('健康卡号读取失败，请重新操作！', '系统提示',
      MB_OK + MB_ICONWARNING);
    tmh.Enabled := True;
    tmh.SetFocus;
  end;
end;

procedure Tfrm_zydj.BitBtn1Click(Sender: TObject);
begin
  if pub_jkkTypebz =1 then
  begin
     //读卡（居民健康卡）
//  if Assigned(cwxx) then
//    Zddqjjk_Start(100, jkkd_hd);
  end else  if pub_jkkTypebz = 2 then
  begin
    new_jkkd_hd;
  end;
end;

function Tfrm_zydj.finditems( tablename, numf, charf, resultf, info: string;
  tempcom: Tcombobox ): boolean;
var
  findfield, s: string;
begin
  result := false;
  s := trim( tempcom.Text );
  if s <> '' then
  begin
    if s[1] in ['0'..'9'] then
      findfield := numf
    else
      if s[1] in ['A'..'z'] then
        findfield := charf
      else
        findfield := resultf;
    jbqk_cx.close;
    if s[1] in ['0'..'9'] then
      jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ',* from ' +
        tablename + ' where COnvert(char,' + findfield + ')=' + #39 + s + #39 +
        ' or ' + resultf + '=' + #39 + s + #39
    else
      if s[1] in ['A'..'z'] then
        jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ',* from ' +
          tablename + ' where upper(' + findfield + ') like ' + #39 + '%' +
          uppercase( s ) + '%' + #39
      else
        jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ',* from ' +
          tablename + ' where upper(' + findfield + ') like ' + #39 + '%' +
          uppercase( s ) + '%' + #39;
    jbqk_cx.Open;
    if jbqk_cx.IsEmpty then
    begin
      messagedlg( '代码输入错误，没有找到相应“' + info + '”', mterror, [mbok],
        0 );
      tempcom.setfocus;
    end
    else
      if jbqk_cx.RecordCount = 1 then
      begin
        tempcom.text := jbqk_cx[resultf];
        if tablename = 'sys_jgdm' then
        begin
          sbkh.SetFocus;
        end;
        //selectnext( tempcom, true, true );
      end
      else
      begin
        tempgrid.Columns.Clear;
        tempgrid.Columns.add;
        tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
        tempgrid.Columns[0].title.caption := '代码';
        tempgrid.Columns.add;
        tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
        tempgrid.Columns[1].title.caption := info;
        if frm_zydj.Width - tempcom.left > tempgrid.Width then
          tempgrid.left := tempcom.left
        else
          tempgrid.left := tempcom.left + tempcom.Width - tempgrid.Width;
        if Panel1.Height - tempcom.top > tempgrid.Height then
          tempgrid.top := tempcom.top + tempcom.Height + Panel1.top + 1
        else
          tempgrid.top := tempcom.top - tempgrid.Height + Panel1.TOP;
        tempgrid.visible := true;
        tempgrid.setfocus;
      end;
    result := true;
  end
end;

procedure Tfrm_zydj.displayvalue;
begin
  //显示值
  qry_zydj['brxm'] := sp_cx_brqk.fieldbyname( 'brxm' ).asstring;
  zy_brxm := sp_cx_brqk.fieldbyname( 'brxm' ).asstring;
  qry_zydj['sfzhm'] := sp_cx_brqk.fieldbyname( 'sfzhm' ).asstring;
  qry_zydj['sbkh'] := sp_cx_brqk.fieldbyname( 'sbkh' ).asstring;
  qry_zydj['brdz'] := sp_cx_brqk.fieldbyname( 'brdz' ).asstring;
  qry_zydj['bz'] := sp_cx_brqk.fieldbyname( 'bz' ).asstring;
  qry_zydj['dbr'] := sp_cx_brqk.fieldbyname( 'dbr' ).asstring;
  dbr.text := sp_cx_brqk.fieldbyname( 'dbr' ).asstring;
  brxb.text := sp_cx_brqk.fieldbyname( 'brxb' ).asstring;
  zy_brxb := sp_cx_brqk.fieldbyname( 'brxb' ).asstring;
  dtp1.DateTime := sp_cx_brqk.fieldbyname( 'csrq' ).asdatetime;
  if sfzhm.Text ='' then
  begin
    brnl.Csrq := dtp1.DateTime;
  end
  else
  begin
    sfzhmExit(sfzhm);
  end;
  brnl.Csrq := dtp1.DateTime;
  zy_csrq := sp_cx_brqk.fieldbyname( 'csrq' ).asdatetime;
  brzy.text := sp_cx_brqk.fieldbyname( 'zymc' ).asstring;
  zy_brzy := sp_cx_brqk.fieldbyname( 'brzy' ).asstring;
  brsf.text := sp_cx_brqk.fieldbyname( 'sfmc' ).asstring;
  zy_brsf := sp_cx_brqk.fieldbyname( 'brsf' ).asstring;
  brjg.text := sp_cx_brqk.fieldbyname( 'jgmc' ).asstring;
  zy_brjg := sp_cx_brqk.fieldbyname( 'brjg' ).asstring;
  brmz.text := sp_cx_brqk.fieldbyname( 'mzmc' ).asstring;
  zy_brmz := sp_cx_brqk.fieldbyname( 'brmz' ).asstring;
  zycs.text := inttostr( sp_cx_brqk.fieldbyname( 'zycs' ).asinteger );
  zy_zycs := sp_cx_brqk.fieldbyname( 'zycs' ).asinteger + 1;
  fylb.text := sp_cx_brqk.fieldbyname( 'lbmc' ).asstring;
  zy_mztmh:=sp_cx_brqk.fieldbyname( 'tmh' ).asstring;
  if Assigned(fylb.OnExit) then fylb.OnExit(fylb);
  zy_fylb := sp_cx_brqk.fieldbyname( 'fylb' ).asstring;
  zy_mzys := '';
  brdz.Text := sp_cx_brqk.fieldbyname( 'brdz' ).asstring;
  brzy.Text := sp_cx_brqk.fieldbyname( 'brzy' ).asstring;
  nxrdh.Text := sp_cx_brqk.fieldbyname( 'nxrdh' ).asstring;
  ryks.Text :=  sp_cx_brqk.fieldbyname( 'ryksdm' ).asstring;
  pbgx.Text :=  sp_cx_brqk.fieldbyname( 'gxmc' ).asstring;
  jbbm.Text :=  sp_cx_brqk.fieldbyname( 'ryzd' ).asstring;
  mzys.Text := sp_cx_brqk.fieldbyname( 'mzys' ).asstring;
  if cbb_tsbs.Visible = True then
  begin
    cbb_tsbs.Text := sp_cx_brqk.fieldbyname( 'tsbs' ).asstring;
    cbb_tsbsExit(cbb_tsbs);
  end;
  if Pos('急',sp_cx_brqk.fieldbyname( 'mzksdm' ).asstring) >0then
  begin
    rytj.Text := '急诊入院';
  end else
  begin
    rytj.Text := '门诊入院';
  end;
  rybq.Text := sp_cx_brqk.fieldbyname( 'rybq' ).asstring;
  //入院途径
  if rytj.Text <> '' then
  begin
    rytjExit(rytj);
  end;
  //入院科室
  if ryks.Text <> '' then
  begin
    ryksExit(ryks);
  end;
  //门诊医生
  if mzys.Text <> '' then
  begin
    mzysExit(mzys);
  end;
  //关系
  if pbgx.Text <> '' then
  begin
    pbgxExit(pbgx);
  end;
  //入院病情
  if rybq.Text <> '' then
  begin
    rybqExit(rybq);
  end;
  //  jbbm.Text:=Copy(sp_cx_brqk.fieldbyname( 'ryzd' ).asstring,Pos('-',sp_cx_brqk.fieldbyname( 'ryzd' ).asstring)+1,100);
  //  if trim(sp_cx_brqk.fieldbyname( 'ryksmc' ).asstring)<>'' then
  //  begin
  //    ryks.Text:=Trim(sp_cx_brqk.fieldbyname( 'ryksmc' ).asstring)+'()';
  //  end;
  //  if trim(ryks.text)<>'' then
  //  begin
  //    Panel1.Enabled:=True;
  //    ryks.SetFocus;
  //    jbbm.setfocus;
  //    brxm.SetFocus;
  //    Panel1.Enabled:=false;
  //  end;
  //
    //赋值给保存参数
end;

procedure Tfrm_zydj.dtp1Change( Sender: TObject );
var
  strBrnl: string;
  intBrnl, index: Integer;
begin
  //keybd_event(vk_right,0,KEYEVENTF_EXTENDEDKEY,0);//值改变时模拟一次右键头实现日期连续输入
  if  trim( sfzhm.text ) <> '' then
  begin
    BBirthdayInputed := True;
  end;
end;

procedure Tfrm_zydj.dtp1Exit( Sender: TObject );
var
  strBrnl: string;
  intBrnl, index: Integer;
begin
  if BBirthdayInputed then
  begin
    Exit;
  end;
  
  brnl.Csrq := dtp1.DateTime;
      /// 更改年龄显示内容
  /// 大于1周岁的患者，年龄仅显示岁数；
  /// 小于1周岁的婴幼儿年龄显示月数加天数；小于30天的婴儿，年龄仅显示天数
  if Pos( '岁', brnl.Text ) > 0 then
  begin
    index := Pos( '岁', brnl.Text );
    strBrnl := LeftStr( brnl.Text, index - 1 );
    intBrnl := StrToInt( strBrnl );
    if intBrnl > 0 then
    begin
      brnl.Text := strBrnl + '岁';
    end
    else
    begin
      strBrnl := MidStr( brnl.Text, index + 2, Length( brnl.Text ) - index - 1 );
      if Pos( '月', strBrnl ) > 0 then
      begin
        index := Pos( '月', strBrnl );
        intBrnl := StrToInt( LeftStr( strBrnl, index - 1 ) );
        if intBrnl = 0 then
        begin
          brnl.Text := MidStr( strBrnl, index + 2, Length( strBrnl ) - index - 1 )
        end
        else
        begin
          brnl.Text := strBrnl;
        end;
      end
    end;
  end
  else
  begin
    if Pos( '月', brnl.Text ) > 0 then
    begin
      index := Pos( '月', brnl.Text );
      strBrnl := LeftStr( brnl.Text, index - 1 );
      intBrnl := StrToInt( strBrnl );
      if intBrnl = 0 then
      begin
        brnl.Text := MidStr( brnl.Text, index + 2, Length( brnl.Text ) - index - 1 )
      end
    end
  end;
  zy_csrq := dtp1.datetime;
end;

procedure Tfrm_zydj.dtp1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if BBirthdayInputed then
      brjg.SetFocus
    else
    SelectNext( ActiveControl as TWinControl, True, True);
  end;
end;

procedure Tfrm_zydj.dwybKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
    if brdz.CanFocus  then
      brdz.setfocus
    else
      selectnext( activecontrol as Twincontrol, true, true );
  end;
end;

function Tfrm_zydj.zydj_yz: integer;
begin
  if (pub_yydm='0240')and (sfzhm.Text<>'') and isStillInHospital(Trim(sfzhm.Text)) then
  begin
    Application.MessageBox('该身份证还在住院 不能重复登记住院', '提示',
            MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if trim( qry_zydj.FieldByName( 'brxm' ).asstring ) = '' then
  begin
    application.MessageBox( '病人姓名不能为空！', '提示', 0 + 16 );
    brxm.SelectAll;
    brxm.SetFocus;
    Result := 1;
    Exit;
  end;
  if trim( zy_brxb ) = '' then
  begin
    application.MessageBox( '病人性别不能为空！', '提示', 0 + 16 );
    brxb.SelectAll;
    brxb.SetFocus;
    Result := 1;
    Exit;
  end;
  {  if zy_csrq>frm_func.curr_date then
    begin
       application.MessageBox('出生日期输入错误！','提示',0+16);
       csrq.SetFocus;
       abort;
    end;}
  if ( length( trim( brmz.text ) ) = 0 ) then
  begin
    application.MessageBox( '病人民族不能为空！', '提示', 0 + 16 );
    brmz.SetFocus;
    Result := 1;
    Exit;
  end;
  if ( length( trim( brnl.text ) ) = 0 ) then
  begin
    application.MessageBox( '病人年龄输入错误！', '提示', 0 + 16 );
    brnl.SetFocus;
    Result := 1;
    Exit;
  end;
  if trim( zy_brsf ) = '' then
  begin
    application.MessageBox( '病人省份不能为空！', '提示', 0 + 16 );
    brsf.SetFocus;
    Result := 1;
    Exit;
  end;
  if trim( zy_brjg ) = '' then
  begin
    application.MessageBox( '病人籍贯不能为空！', '提示', 0 + 16 );
    brjg.SetFocus;
    Result := 1;
    Exit;
  end;
  if trim( zy_brzy ) = '' then
  begin
    application.MessageBox( '病人职业不能为空！', '提示', 0 + 16 );
    brzy.SelectAll;
    brzy.SetFocus;
    Result := 1;
    Exit;
  end;
  if trim( brdwdz.text ) = '' then
  begin
    application.MessageBox( '病人住址(或单位地址)不能为空！', '提示', 0 + 16 );
    if brdz.Visible then
      brdz.SetFocus
    else
      brdwdz.SetFocus;
    Result := 1;
    Exit;
  end;
  // 井研县人民医院一般
  if (length( trim( qry_zydj.FieldByName( 'dbr' ).AsString ) ) = 0) and (pub_yydm <>'0260' ) then
  begin
    application.MessageBox( '联系人姓名不能为空！', '提示', 0 + 16 );
    dbr.SetFocus;
    Result := 1;
    Exit;
  end;

  if trim( zy_rytj ) = '' then
  begin
    application.MessageBox( '病人入院途径不能为空！', '提示', 0 + 16 );
    rytj.SelectAll;
    rytj.SetFocus;
    Result := 1;
    Exit;
  end;
  if trim( jbbm.text ) = '' then
  begin
    application.MessageBox( '病人入院诊断不能为空！', '提示', 0 + 16 );
    jbbm.SelectAll;
    jbbm.SetFocus;
    Result := 1;
    Exit;
  end;
  if trim( zy_ksdm ) = '' then
  begin
    application.MessageBox( '病人入院科室不能为空！', '提示', 0 + 16 );
    ryks.SelectAll;
    ryks.SetFocus;
    Result := 1;
    Exit;
  end;
  if trim( zy_rybq ) = '' then
  begin
    application.MessageBox( '病人入院病情不能为空！', '提示', 0 + 16 );
    rybq.SelectAll;
    rybq.SetFocus;
    Result := 1;
    Exit;
  end;
  if trim( zy_fylb ) = '' then
  begin
    application.MessageBox( '病人费用类别不能为空！', '提示', 0 + 16 );
    fylb.SelectAll;
    fylb.SetFocus;
    Result := 1;
    Exit;
  end;
  if ( zy_fylb = '07' ) or ( zy_fylb = '03' ) or ( zy_fylb = '04' ) then
    if trim( sbdw.text ) = '' then
    begin
      application.MessageBox( '社保病人/公费病人，社保/公费机构不能为空！',
        '提示', 0 + 16 );
      sbdw.SetFocus;
      Result := 1;
      Exit;

    end;

  if ( length( trim( qry_zydj.FieldByName( 'sfzhm' ).AsString ) ) <> 0 ) and
    ( Copy( qry_zydj.FieldByName( 'sfzhm' ).AsString, 7, 8 ) <>
    FormatDateTime( 'yyyyMMdd', dtp1.DateTime ) ) then
  begin
    application.MessageBox( '病人生日与身份证生日不匹配！', '提示', 0 + 16 );
    sfzhm.SetFocus;
    Result := 1;
    Exit;
  end;
  Result := 0;

end;

procedure Tfrm_zydj.FormShow( Sender: TObject );
var
  yymc: string;
  RStr: string;
  Reg: TRegistry;
begin
  if (pub_yydm = '0263') or (pub_yydm = '0264') then
  begin
    Label36.Visible := True;
    hyqk.Visible := True;
  end;
  if pub_yydm='0257' then
  begin
    b_dk.Visible :=False;
  end;
  if pub_yydm='0225' then
  begin
    chk_lgbr.Visible:=True;
    chk_lgbr.left:= 389;
    chk_lgbr.top:= 190;
  end;
  if pub_yydm = '0240' then     //沙雅县人民医院
  begin
    Label8.Caption := '单位地址';
    Label28.Visible := False;
    bch.Visible := False;
    rysj.Enabled := False;
    ryrq.Enabled := False;
    cbb_tsbs.Visible := True;
    lbl_tsbs.Visible := True;
  end;
  yymc := Copy( pub_yymc, 1, 4 );
  if yymc = '三台' then
    yymc := '三台县';
  if (pub_yydm <> '0240' )and (pub_yydm<>'0033') then  //丹棱医院和壤塘医院判断
    chk1.Visible := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select * from sys_xzqh where qhmc like ''%' + yymc
    + '%''';
  DM_data.qry_pub.open;
  brdz.defaultXzqh := Copy( DM_data.qry_pub.FieldByName( 'qhdm' ).asstring, 1, 2 );
  memo_lbs.Lines.Clear;
  Label_ts.Caption := '';
  zy_sjh := proc_get_sjbh( pub_czydm, pub_yjsjlb );
  SJBH.Text := zy_sjh;
  ryrq.DateTime := frm_func.curr_date;
  rysj.DateTime := frm_func.curr_date;
  dtp1.DateTime := Now;
  ylje.ReadOnly := not zysfsffyylje;

  if pub_djxgfylb then
  begin
    fylb.Enabled := true;
    sbdw.Enabled := true;
    sbkh.Enabled := true;
  end;
  zy_fylb := '01';

  tmh.SetFocus;

  if ( pub_yydm = '0132' ) or ( pub_yydm = '0136' ) then
    //0132	盐亭县肿瘤医院,0136 石泉县中医医院
  begin
    ryrq.Enabled := false;
    rysj.Enabled := false;
  end;

   if pub_yydm='0271' then //掇刀医院代码
    begin
       Label_pq.Visible := True;
       cbb_pq.Visible := True;
    end;

    if pub_yydm='0275' then //五家渠医院代码
    begin
       tmh.Hint := '输入12位卡号：';
       tmh.MaxLength:=12;
    end;


    //镇巴标识贫困人口
  if pub_yydm = '0182' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select * from sys_kyh where pkrk=1 and tmh=' + #39 + trim(tmh.text) + #39;
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.RecordCount > 0 then
    begin
      chkcpkrk.Visible := true;
      chkcpkrk.Checked := True;
    end
    else
    begin
      chkcpkrk.Visible := false;
    end;
  end;
  brnl.SysDatetime := Frm_func.curr_date;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select isnull(zydjbalj,0) zydjbalj,isnull(sfzxxdqbz,0) sfzxxdqbz from sys_xt_kg ';
  DM_data.qry_pub.open;
  zydjbalj := DM_data.qry_pub.FieldByName( 'zydjbalj' ).AsBoolean;
  pub_sfzxxdqbz := DM_data.qry_pub.FieldByName( 'sfzxxdqbz' ).AsBoolean; //身份证信息读取标志
  zydjbalj := zydjbalj and ( not withOutBaSvr );
  if zydjbalj then
  begin
    tcpThread := Tbalj_Tcp_conn.create( lbl_balj );
  end
  else
  begin
    lbl_balj.Visible := False;
  end;
  //提取井研医院上次住院登记的信息
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select top 1 a.*,b.mc from zysf_zydj a,sys_ksdm b where a.ryks = b.dm and ryczy ='+''''+ pub_czydm +''''+' order by a.djrq desc ';
  DM_data.qry_pub.open;
  lbl_tmh.Caption :=  '条码号:'+ DM_data.qry_pub.FieldByName( 'tmh' ).AsString;
  lbl_brxm.Caption := '姓名:'+ DM_data.qry_pub.FieldByName( 'brxm' ).AsString;
  lbl_brxb.Caption := '性别:'+ DM_data.qry_pub.FieldByName( 'brxb' ).AsString;
  lbl_brnl.Caption := '年龄:'+ DM_data.qry_pub.FieldByName( 'brnl' ).AsString;
  lbl_ryks.Caption := '入院科室:'+ DM_data.qry_pub.FieldByName( 'mc' ).AsString;
    if pub_yydm = '0275' then
    tmh.MaxLength := 12;
  if pub_yydm = '0274' then
  begin
    Label37.Visible := false;
    DBEditdbr.Visible := false;
    chkcpkrk.Visible := false;
    lbl15.Visible := false;
    dbedt_oldzyh.Visible := false;
  end;
end;

procedure Tfrm_zydj.FormKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 115 then //F4
    Button2.Click;
end;

procedure Tfrm_zydj.FormKeyPress( Sender: TObject; var Key: Char );
begin
  //  if key = #13 then selectnext( activecontrol as Twincontrol, true, true );
end;

procedure Tfrm_zydj.b_closeClick( Sender: TObject );
begin
  close;
end;

procedure Tfrm_zydj.b_dkClick(Sender: TObject);
var
ky:Char;
begin
tmh.Text := Tgetyhktmh.Create.getyhk;
tmh.SetFocus;
ky:=#13;
tmhKeyPress(tmh,ky);
end;

procedure Tfrm_zydj.tempgridKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 27 then
    tempgrid.Visible := false;
  if key = 13 then
  begin
    //selectnext( tempcom, true, true );
    if tempcom = sbdw then
    begin
      sbkh.SetFocus;
    end
    else
      tempcom.SetFocus;
  end;
end;

procedure Tfrm_zydj.tempgridExit( Sender: TObject );
begin
  tempcom.text := jbqk_cx[resultf];
  tempgrid.Visible := false;

  if tempcom = sbdw then
  begin
    sbkh.SetFocus;
  end
  else
    tempcom.SetFocus;
end;

procedure Tfrm_zydj.b_saveClick( Sender: TObject );
var
  s: string;
  i: integer;
  res: ToutStr;
  posh, v_str, pos_zfy, xmlstr: string;
  ZrTxt, vStr: string;
  sout: jyRes;
  yzjg: Integer;
  t, lists: TStringList;
  jo: ISuperObject;
  srMDoc: TXMLDocument;
  scMDoc: TXMLDocument;
  aNode, aNode1, aNode2: IXMLNode;
  execStr: string;
label
  _on_jy_Err, _on_jy_ErrTry;
begin
  label_ts.Caption := '';
  memo_lbs.Lines.Clear;
  zy_brdz := brdz.Text;
  //验证必需要输入项
  yzjg := zydj_yz;
  if yzjg = 1 then
    Exit;
  if zy_fylb = '' then
    zy_fylb := '01';

//  if pub_yydm = '0240' then
//  begin
//    if Trim( sfzhm.text ) = '' then
//    begin
//      showMessage( '身份证号码必须填写!' );
//      exit;
//    end;
//  end;

  if Trim( qfxe.text ) = '' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select * from sys_fylb where dm=' + '''' +
      zy_fylb +
      '''';
    DM_data.qry_pub.Open;
    zy_csqfxe := DM_data.qry_pub.FieldByName( 'csqfxe' ).AsFloat;
  end;
  if zydjBahzdsc and ( bah.Text = '' ) then
  begin
    s := Trim( ComboBox1.Text );
    if s = '' then
      raise Exception.Create( '必須选择病案入院类型！' );

    sp_get_bah.Close;
    sp_get_bah.Parameters.refresh;
    sp_get_bah.Parameters.ParamByName( '@Rylx' ).Value := s;
    sp_get_bah.Parameters.ParamByName( '@OutBah' ).Value := '';
    sp_get_bah.ExecProc;
    try
      zy_bah := sp_get_bah.Parameters.ParamByName( '@OutBah' ).Value;
      bah.text := sp_get_bah.Parameters.ParamByName( '@OutBah' ).Value;
    except
      raise Exception.Create( '获取病案号出错（无返回值）！请联系管理人员！' );
    end;
  end;
  //保存前,检查是否有输入非法字符
  for i := 0 to frm_zydj.ComponentCount - 1 do
  begin
    if ( Tcontrol( frm_zydj.Components[i] ).Visible ) and
      ( ( Tcontrol( frm_zydj.Components[i] ) is tedit ) or
      ( Tcontrol( frm_zydj.Components[i] ) is TDBedit ) ) then
      if TEdit( frm_zydj.Components[i] ).Color = clRed then
      begin
        showMessage( '输入有非法字符 或 输入为空!请检查红色文本框!' );
        exit;
      end;
  end;

  zy_yjfkfsbm := IntToStr( Cmbbfkfs.ItemIndex + 1 );
  zy_yjfkfsmc := Cmbbfkfs.Text;
  panel1.Enabled := false;
  b_save.Enabled := false;
  b_cancel.Enabled := false;

  tmh.Enabled := true;
  tmh.SetFocus;
  if trim( tmh.text ) = '' then
  begin
    sp_gettmh.Active := false;
    sp_gettmh.Parameters.ParamByName( '@lb' ).value := '1';
    sp_gettmh.Parameters.ParamByName( '@sctmh' ).value := '';
    sp_gettmh.ExecProc;
    tmh.Text := sp_gettmh.Parameters.ParamByName( '@sctmh' ).value;
    tmh.text := formatex( strtoint( tmh.text ), 9 );
    zy_tmh := trim( tmh.text );
    proc_tmhsyzt; //判断此卡是否是本公司所写
    proc_cxbrxx; //判断是否是在院病人
  end
  else
  begin
    zy_tmh := trim( tmh.text );
  end;
  brkh.Caption := '该病人卡号是：' + '[' + tmh.text + ']';
  if ( qry_zydj.State = dsedit ) or ( qry_zydj.State = dsinsert ) then
  begin
    zy_zyh := get_sjh( pub_czydm );
    qry_zydj['pym'] := GetPym( brxm.Text ); //get_hz_pywb( brxm.Text,1 );
    qry_zydj['tmh'] := zy_tmh;
    qry_zydj['zyh'] := zy_zyh;
    qry_zydj['bah'] := zy_bah;
    qry_zydj['zycs'] := zy_zycs;
    qry_zydj['brxb'] := zy_brxb;
    qry_zydj['rybq'] := zy_rybq;
    qry_zydj['rytj'] := zy_rytj;
    qry_zydj['brzy'] := zy_brzy;
    qry_zydj['fylb'] := zy_fylb;
    qry_zydj['sbkh'] := sbkh.text;
    qry_zydj['ybndzje'] := zy_jzxe;
    qry_zydj['ryks'] := zy_ksdm;
    qry_zydj['ksdm'] := zy_ksdm;
    qry_zydj['ryczy'] := pub_czydm;
    qry_zydj['ryrq'] := zy_ryrq;
    qry_zydj['mzys'] := zy_mzys;
    qry_zydj['csrq'] := zy_csrq;
    qry_zydj['brsf'] := zy_brsf;
    qry_zydj['brjg'] := zy_brjg;
    qry_zydj['brmz'] := zy_brmz;
    qry_zydj['gx'] := zy_pbgx;
    qry_zydj['sbdw'] := zy_sbjg;
    qry_zydj['ryzd'] := zy_ryzd;
    qry_zydj['csrq'] := dtp1.datetime;
    qry_zydj['brnl'] := brnl.Text;
    qry_zydj['zdjf'] := zy_csqfxe;
    qry_zydj['hyqk'] := Trim(hyqk.Text);
    if pub_yydm='0225' then
    begin
      if chk_lgbr.Checked = True then
      begin
        qry_zydj['lgbr'] := 1;
      end
      else
      begin
        qry_zydj['lgbr'] := 0;
      end;
    end;
    if pub_yydm = '0182' then
    begin
      if chkcpkrk.Checked then
        qry_zydj['pkrk'] := 1
      else
        qry_zydj['pkrk'] := 0;
    end;
    if pub_yydm='0271' then //掇刀医院代码
    begin
     qry_zydj['Area'] := Trim(cbb_pq.Text); //片区数据保存
    end;

    //壤塘人民医院
    if (pub_yydm='0033') and(frm_sfzhmyz.jzfpbrbz) then
    begin
      qry_zydj['pkhbz'] := 1;
    end;
    

    if qry_zydj.fieldbyname( 'ylje' ).asstring = '' then
      qry_zydj['ylje'] := 0;
    // frm_zydj.zydj_yz; 0240
    if pub_yydm = '0240' then
    begin
          execStr :=
    'INSERT INTO zysf_zydj(tmh,  zyh,  bah,  sbkh, sbdw, brxm, brxb,    brsf,  brjg, brmz,' +
                      'ryzd, csrq, brnl, brzy, brdz, zycs, mzys,    fylb,  bqdm, ryks,' +
                      'ksdm, dbr,  rybq, rytj, ryrq, zdjf, ybndzje, ryczy, gx,   ylje,' +
                      'pym, nxrdh,tsbs,sfzhm,mztmh) ' +
              'VALUES ('+ QuotedStr(zy_tmh) +','+QuotedStr(zy_zyh) +','+
              QuotedStr(zy_bah)+','+QuotedStr(Trim(sbkh.text))+','+
              QuotedStr(zy_sbjg)+','+QuotedStr(Trim(brxm.Text ))+','+
              QuotedStr(zy_brxb)+','+QuotedStr(zy_brsf)+','+
              QuotedStr(zy_brjg)+','+QuotedStr(zy_brmz)+','+
              QuotedStr(zy_ryzd)+','+QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss',dtp1.DateTime))+','+
              QuotedStr(Trim(brnl.Text))+','+QuotedStr(zy_brzy)+','+
              QuotedStr(zy_brdz)+','+QuotedStr(IntToStr(zy_zycs))+','+
              QuotedStr(zy_mzys)+','+QuotedStr(zy_fylb)+','+
              QuotedStr(zy_bqdm)+','+QuotedStr(zy_ksdm)+','+
              QuotedStr(zy_ksdm)+','+QuotedStr(Trim(dbr.Text))+','+
              QuotedStr(zy_rybq)+','+QuotedStr(zy_rytj)+','+
              QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss',zy_ryrq))+','+
              QuotedStr(FloatToStr(zy_csqfxe))+','+
              QuotedStr(FloatToStr(zy_jzxe))+','+QuotedStr(pub_czydm)+','+
              QuotedStr(zy_pbgx)+','+QuotedStr(qry_zydj.FieldByName('ylje').AsString)+','+
              QuotedStr(GetPym( brxm.Text ))+','+
              QuotedStr(qry_zydj.FieldByName('nxrdh').AsString)+','+
              QuotedStr(zy_tsbs)+','+
              QuotedStr(GetPym( sfzhm.Text ))+','+
              QuotedStr(zy_mztmh)+');'
    end;

    with dm_data.qry_pub do //增加判断病床已被停用zl
    begin
      close;
      sql.clear;
      sql.text := ' select bcbh from sys_kscwsz ' +
        ' where bcbh=' + '''' + trim( bch.Text ) + '''' +
        ' and ksdm=' + '''' + zy_ksdm + '''' +
        ' and tybz=1 ';
      open;
    end;
    if not dm_data.qry_pub.IsEmpty then
    begin
      application.MessageBox( '该病床已被停用，请重新选择床位!!', '提示:', 0 +
        16 );
      bch.Text := '';
      bch.SetFocus;
      Exit;
    end; //增加判断病床已被停用，请重新选择床位

    if pub_yydm='0240' then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := execStr;
    end else
    begin
      qry_zydj.Post;
    end;

    dm_data.ado_mydata.BeginTrans;
    try

      if pub_yydm = '0240' then
      begin
        DM_data.qry_pub.ExecSQL;
      end else
      begin
        qry_zydj.UpdateBatch;
      end;
      dm_data.ado_mydata.CommitTrans;
    except
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox( '存盘失败！请重试!', '提示', 0 + 16 );
      Exit;
    end;
    sp_up_kyh.Active := false;
    sp_up_kyh.Parameters.ParamByName( '@tmh' ).value := zy_tmh;
    sp_up_kyh.ExecProc;
    qry_zydj.Close;
    sp_cx_brqk.close;
    if zy_yjje > 0 then
    begin
      if zy_sjh = '' then
        MessageDlg( '收据已用完，现在将退出该模块，请启用新收据！', mtWarning,
          [mbOK], 0 )
      else
      begin
        sjbh.text := zy_sjh;
        zy_sjbh := get_sjh( pub_czydm );
        sp_inyj.Active := false;
        sp_inyj.Parameters.ParamByName( '@tmh' ).value := zy_tmh;
        sp_inyj.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
        sp_inyj.Parameters.ParamByName( '@yjje' ).value := zy_yjje;
        sp_inyj.Parameters.ParamByName( '@ksdm' ).value := zy_ksdm;
        sp_inyj.Parameters.ParamByName( '@yjxs' ).value := zy_yjfkfsbm;
        sp_inyj.Parameters.ParamByName( '@sfrq' ).value := frm_func.curr_date;
        sp_inyj.Parameters.ParamByName( '@sfczy' ).value := pub_czydm;
        sp_inyj.Parameters.ParamByName( '@sjbh' ).value := zy_sjbh;
        sp_inyj.Parameters.ParamByName( '@sjlb' ).value := pub_yjsjlb;
        sp_inyj.Parameters.ParamByName( '@sjh' ).value := zy_sjh;
        sp_inyj.Parameters.ParamByName( '@sczt' ).value := '0';
        sp_inyj.ExecProc;
        s := sp_inyj.Parameters.ParamByName( '@sczt' ).value;
        if sp_inyj.Parameters.ParamByName( '@sczt' ).value = '1' then
        begin
          OutputDebugString( '保存成功！' );

          if zy_yjfkfsbm = '4' then
          begin //银行刷卡
{$REGION '银行刷卡部分'}
            // 检查是否刷卡参数
            with DM_data.qry_pub do
            begin
              close;
              sql.clear;
              sql.text := 'select yhsk from sys_xt_kg';
              open;
            end;
            if not dm_data.qry_pub.FieldByName( 'yhsk' ).AsBoolean then
            begin
              Application.MessageBox( PChar( '未开启yhsk系统参数，无法进行银行刷卡。' ),
                PChar( '错误' ), MB_OK + MB_ICONSTOP );
              Exit;
            end;
            _on_jy_ErrTry:
            posh := '';
            Application.CreateForm( Tfrm_posxz, frm_posxz );
            try
              frm_posxz.ShowModal;
              posh := frm_posxz.posh;
            finally
              frm_posxz.Free;
            end;
            case strtoint( posh ) of
              1:
                begin
                  res := hkxf( zy_yjje );
                  if res.fhm = '000000' then
                  begin
                    try
                      DM_data.qry_pub.Close;
                      DM_data.qry_pub.SQL.Text := 'select * from bkjk_fymx where 1=2';
                      DM_data.qry_pub.Open;
                      DM_data.qry_pub.Append;
                      DM_data.qry_pub.FieldByName( 'zyh' ).Value := zy_zyh;
                      DM_data.qry_pub.FieldByName( 'tmh' ).Value := zy_tmh;
                      DM_data.qry_pub.FieldByName( 'xm' ).Value := trim( brxm.Text );
                      DM_data.qry_pub.FieldByName( 'zfy' ).Value :=
                        FloatToStr( zy_yjje );
                      DM_data.qry_pub.FieldByName( 'sfczy' ).Value := pub_czydm;
                      DM_data.qry_pub.FieldByName( 'kh' ).Value := res.kh;
                      DM_data.qry_pub.FieldByName( 'lsh' ).Value := res.poslsh;

                      DM_data.qry_pub.FieldByName( 'jyckh' ).Value := res.jsckh;
                      DM_data.qry_pub.FieldByName( 'zdbh' ).Value := res.zdh;

                      DM_data.qry_pub.FieldByName( 'sjbh' ).Value := zy_sjbh;
                      DM_data.qry_pub.FieldByName( 'sjh' ).Value := zy_sjh;
                      DM_data.qry_pub.FieldByName( 'fylb' ).Value := '收预交';
                      DM_data.qry_pub.FieldByName( 'yhfylb' ).Value := '02';
                      DM_data.qry_pub.Post;
                      DM_data.qry_pub.UpdateBatch( arAll );
                    except
                      on e: Exception do
                      begin
                        addTransLog( e.Message );
                        ShowMessage( e.Message );
                      end;
                    end;
                  end
                  else
                  begin
                    case Application.MessageBox( Pchar( '银行划卡失败!是否重试？' +
                      #13#10 +
                      res.fhm + res.fhmhy + #13#10 +
                      '按 “是” 重新刷卡！' + #13#10 +
                      '按 “否” 此条预交记录将被作废！' ), '提示', MB_YESNO +
                      MB_ICONQUESTION ) of
                      IDYES:
                        goto _on_jy_ErrTry;
                      IDNO:
                        begin
                          if zysf_tyj( zy_zyh, pub_czydm, zy_sjbh, zy_sjh, zy_yjje ) <>
                            '1' then
                          begin
                            Application.MessageBox( '作废预交失败，请手动作废次条数据！',
                              '错误', MB_OK + MB_ICONSTOP );
                          end;
                          goto _on_jy_Err;
                        end;
                    end;
                  end;

                end;
              2:
                begin
                  v_str := '';
                  if not FileExists( 'softpos.dll' ) then
                    v_str := v_str + '[softpos.dll]';
                  if not FileExists( 'softpos2.dll' ) then
                    v_str := v_str + '[softpos2.dll]';
                  if not FileExists( 'softpos3.dll' ) then
                    v_str := v_str + '[softpos3.dll]';
                  if v_str <> '' then
                  begin
                    Application.MessageBox( pchar( '缺少银行POS接口动态库!' + #13 +
                      v_str ),
                      '系统提示', MB_OK + MB_ICONEXCLAMATION );
                    if zysf_tyj( zy_zyh, pub_czydm, zy_sjbh, zy_sjh, zy_yjje ) <>
                      '1' then
                    begin
                      Application.MessageBox( '作废预交失败，请手动作废次条数据！',
                        '错误', MB_OK + MB_ICONSTOP );
                    end;
                    goto _on_jy_Err;
                  end;
                  try
                    sout := nh_hkxf( zy_yjje );
                  except
                    Application.MessageBox( '错误:调用银行接口失败！', '提示',
                      MB_ICONHAND );
                    if zysf_tyj( zy_zyh, pub_czydm, zy_sjbh, zy_sjh, zy_yjje ) <>
                      '1' then
                    begin
                      Application.MessageBox( '作废预交失败，请手动作废次条数据！',
                        '错误', MB_OK + MB_ICONSTOP );
                    end;
                    Exit;
                  end;
                  if not (sout.zt = '00') then
                  begin
                    if ( pub_yydm = '0015' ) and ( sout.zt = '51' ) then
                    begin
                      if Application.MessageBox( Pchar( '银行卡余额不足，是否转为现金支付？' + #13#10 +
                        res.fhm + res.fhmhy + #13#10 +
                        '按 “是” 转为现金支付！' + #13#10 +
                        '按 “否” 取消本次操作！' ), '询问', MB_YESNO +
                        MB_ICONQUESTION ) = IDNO then
                      begin
                        if zysf_tyj( zy_zyh, pub_czydm, zy_sjbh, zy_sjh, zy_yjje ) <>
                          '1' then
                        begin
                          Application.MessageBox( '作废预交失败，请手动作废次条数据！',
                            '错误', MB_OK + MB_ICONSTOP );
                        end;                                          
                        goto _on_jy_Err;
                      end;
                    end
                    else
                    begin
                      if Application.MessageBox( Pchar( '银行刷卡失败，是否转为现金支付？' + #13#10 +
                        res.fhm + res.fhmhy + #13#10 +
                        '按 “是” 转为现金支付！' + #13#10 +
                        '按 “否” 取消本次操作！' ), '询问', MB_YESNO +
                        MB_ICONQUESTION ) = IDNO then
                      begin
                        if zysf_tyj( zy_zyh, pub_czydm, zy_sjbh, zy_sjh, zy_yjje ) <>
                          '1' then
                        begin
                          Application.MessageBox( '作废预交失败，请手动作废次条数据！',
                            '错误', MB_OK + MB_ICONSTOP );
                        end;
                        goto _on_jy_Err;
                      end;
                    end;
                  end
                  else
                    if sout.zt = '00' then
                    begin
                      try
                        with DM_data.qry_pub do
                        begin
                          Close;
                          SQL.Text := 'select * from bkjk_fymx where 1=2';
                          Open;
                          Append;
                          FieldByName( 'zyh' ).Value := zy_zyh;
                          FieldByName( 'tmh' ).Value := zy_tmh;
                          FieldByName( 'xm' ).Value := trim( brxm.Text );
                          FieldByName( 'zfy' ).Value := FloatToStr( zy_yjje );
                          FieldByName( 'sfczy' ).Value := pub_czydm;
                          FieldByName( 'kh' ).Value := sout.kh;
                          FieldByName( 'lsh' ).Value := sout.lsh;
                          FieldByName( 'sjbh' ).Value := zy_sjbh;
                          FieldByName( 'sjh' ).Value := zy_sjh;
                          FieldByName( 'jyckh' ).Value := sout.yhzdh;
                          FieldByName( 'fylb' ).Value := '收预交';
                          FieldByName( 'yhfylb' ).Value := '01';
                          Post;
                          UpdateBatch( arAll );
                        end;
                        with DM_data.sp_pub do
                        begin
                          Close;
                          ProcedureName := 'yyt_in_zjjfjl';
                          Parameters.Refresh;
                          Parameters.ParamByName( '@zzjfid' ).Value := 0;
                          Parameters.ParamByName( '@jyxx' ).Value := sout.AsString;
                          Parameters.ParamByName( '@jylb' ).Value := '收预交';
                          ExecProc;
                        end;
                      except
                        on e: Exception do
                        begin
                          addTransLog( e.Message );
                          ShowMessage( e.Message );
                        end;
                      end;
                    end
                    else
                    begin
                      case Application.MessageBox( Pchar( '银行划卡失败!是否重试？' +
                        #13#10 +
                        res.fhm + res.fhmhy + #13#10 +
                        '按 “是” 重新刷卡！' + #13#10 +
                        '按 “否” 此条预交记录将被作废！' ), '提示', MB_YESNO +
                        MB_ICONQUESTION ) of
                        IDYES:
                          goto _on_jy_ErrTry;
                        IDNO:
                          begin
                            if zysf_tyj( zy_zyh, pub_czydm, zy_sjbh, zy_sjh, zy_yjje ) <>
                              '1' then
                            begin
                              Application.MessageBox( '作废预交失败，请手动作废次条数据！',
                                '错误', MB_OK + MB_ICONSTOP );
                            end;
                            goto _on_jy_Err;
                          end;
                      end;
                    end;
                end;
              3:
                begin
                  IdHTTP1.Disconnect;
                  IdHTTP1.Request.ContentType := 'application/json;charset=utf-8';
                  IdHTTP1.Request.Method := 'POST';
                  t := TStringList.Create;
                  t.Clear;
                  pos_zfy := StringReplace( FormatFloat( '0.00', zy_yjje ), '.', '', [rfReplaceAll] );
                  pos_zfy := FormatEx( StrToInt( pos_zfy ), 12 );
                  t.Add( '{"TransType":"PURCHASE","TokenID":"START_PAY","SerialNumber":"000001","PackageType":"0","Amount":"' + pos_zfy + '"}' );
                  jo := SO( IdHTTP1.Post( 'http://localhost:44665/api/trade', t ) );
                  while jo['PackageType'].AsString = '0' do
                  begin
                    srMDoc := TXMLDocument.Create( nil );
                    srMDoc.Active := True;
                    srMDoc.Version := '1.0';
                    srMDoc.Encoding := 'GBK';
                    srMDoc.standalone := 'yes';
                    aNode := srMDoc.AddChild( 'ROOT' );
                    aNode1 := aNode.AddChild( 'HEAD' );
                    aNode1.AddChild( 'TradeName' ).Text := 'GetBankdata';
                    aNode2 := aNode.AddChild( 'Data' );
                    aNode2.AddChild( 'SETIOS8583' ).Text := jo['ISO8583'].AsString;
                    scMDoc := TXMLDocument.Create( nil );
                    scMDoc.Active := True;
                    //此处进行WEB服务传送。
                    xmlstr := GetIPosService.HisToBank( srMDoc.XML.Text );
                    xmlstr := '<?xml version="1.0" encoding="GBK" standalone="yes"?>' + xmlstr;
                    scMDoc.loadfromxml( xmlstr );
                    t.Clear;
                    t.Add( '{"TransType":"PURCHASE","TokenID":"START_PAY","SerialNumber":"000001","PackageType":"0","Amount":"' + pos_zfy + '","ISO8583":"' +
                      scMDoc.DOMDocument.getElementsByTagName( 'AREA8583' )[0].childNodes[0].nodeValue + '"}' );
                    jo := SO( IdHTTP1.Post( 'http://localhost:44665/api/trade', t ) );
                  end;
                  if ( jo['PackageType'].AsString = '1' ) and ( jo['ErrorCode'].AsString = '00' ) then
                  begin
                    try
                      DM_data.qry_pub.Close;
                      DM_data.qry_pub.SQL.Text := 'select * from bkjk_fymx where 1=2';
                      DM_data.qry_pub.Open;
                      DM_data.qry_pub.Append;
                      DM_data.qry_pub.FieldByName( 'zyh' ).Value := zy_zyh;
                      DM_data.qry_pub.FieldByName( 'tmh' ).Value := zy_tmh;
                      DM_data.qry_pub.FieldByName( 'xm' ).Value := trim( brxm.Text );
                      DM_data.qry_pub.FieldByName( 'zfy' ).Value := FloatToStr( zy_yjje );
                      DM_data.qry_pub.FieldByName( 'sfczy' ).Value := pub_czydm;
                      DM_data.qry_pub.FieldByName( 'kh' ).Value := jo['CardNo'].AsString;
                      DM_data.qry_pub.FieldByName( 'lsh' ).Value := jo['TraceNo'].AsString;
                      DM_data.qry_pub.FieldByName( 'sjbh' ).Value := zy_sjbh;
                      DM_data.qry_pub.FieldByName( 'sjh' ).Value := zy_sjh;
                      DM_data.qry_pub.FieldByName( 'jyckh' ).Value := jo['RefNo'].AsString;
                      DM_data.qry_pub.FieldByName( 'zdbh' ).Value := jo['TermNo'].AsString;
                      DM_data.qry_pub.FieldByName( 'fylb' ).Value := '收预交';
                      DM_data.qry_pub.FieldByName( 'yhfylb' ).Value := '03';
                      DM_data.qry_pub.Post;
                      DM_data.qry_pub.UpdateBatch( arAll );
                      Application.MessageBox( '提示:POS刷卡成功！', '提示', MB_OK );
                    except
                      on e: Exception do
                      begin
                        addTransLog( e.message );
                        try
                          DM_data.qry_pub.Connection.Connected := True;
                          DM_data.qry_pub.Post;
                        except on e1: Exception do
                          begin
                            addTransLog( e1.message );
                          end;
                        end;
                      end;
                    end;
                  end
                  else
                  begin
                    case Application.MessageBox( Pchar( '银行划卡失败!是否重试？' +
                      #13#10 +
                      '按 “是” 重新刷卡！' + #13#10 +
                      '按 “否” 此条预交记录将被作废！' ), '提示', MB_YESNO +
                      MB_ICONQUESTION ) of
                      IDYES:
                        goto _on_jy_ErrTry;
                      IDNO:
                        begin
                          if zysf_tyj( zy_zyh, pub_czydm, zy_sjbh, zy_sjh, zy_yjje ) <>
                            '1' then
                          begin
                            Application.MessageBox( '作废预交失败，请手动作废次条数据！',
                              '错误', MB_OK + MB_ICONSTOP );
                          end;
                          goto _on_jy_Err;
                        end;
                    end;
                  end;
                end;
            else
              begin
                if Application.MessageBox( '提示:未选择相应的银行支付。是否取消本次支付预交金额？' + #13 +
                  '点击【是】:取消本次支付' + #13 +
                  '点击【否】:为重新进行银行选择', '提示', MB_OKCANCEL +
                  MB_ICONQUESTION ) = IDCANCEL then
                begin
                  goto _on_jy_ErrTry;
                end
                else
                begin
                  if zysf_tyj( zy_zyh, pub_czydm, zy_sjbh, zy_sjh, zy_yjje ) <>
                    '1' then
                  begin
                    Application.MessageBox( '作废预交失败，请手动作废次条数据！',
                      '错误', MB_OK + MB_ICONSTOP );
                  end;
                  goto _on_jy_Err;
                end;
              end;
            end;
{$ENDREGION '银行刷卡部分'}
          end;
          if ( zy_yjje > 0 ) then
          begin
            if ( pub_yydm = '0244' ) or ( pub_yydm = '0250' ) then //博思预交票据
            begin
              if LoadbsjkDll then
              begin
                PAdvConnect_dy( '001', '', '' );
              end;
              ZrTxt := '<&票据><&票据头>';
              ZrTxt := ZrTxt + '交款单位(交款人)=' + zy_brxm + '(' + zy_tmh + ')' + Char( VK_TAB );
              ZrTxt := ZrTxt + '缴款人=' + pub_czyxm + Char( VK_TAB );
              ZrTxt := ZrTxt + '</&票据头><&收费项目>';
              ZrTxt := ZrTxt + '收费项目=预交款' + Char( VK_TAB ) +
                '计费数量=1' + Char( VK_TAB ) +
                '金额=' + FloatToStr( zy_yjje ) + Char( VK_TAB );
              ZrTxt := ZrTxt + '</&收费项目></&票据>';
              SetLength( vStr, 1800 );
              PZrPj_dy( PChar( ZrTxt ), 1, '14001001', '无备注', PChar( vStr ) );
              if Pos( '成功', vStr ) > 0 then
              begin
                lists := TStringList.Create;
                ExtractStrings( [','], [], PChar( vStr ), lists );
                DM_data.qry_pub.Close;
                DM_data.qry_pub.SQL.Text := 'insert into sys_bsjk(pjmc,pjlbh,pjh,je,zch) values (:pjmc,:pjlbh,:pjh,:je,:zch)';
                DM_data.qry_pub.Parameters.ParamByName( 'pjmc' ).Value := '住院预交';
                DM_data.qry_pub.Parameters.ParamByName( 'pjlbh' ).Value := lists.Strings[0];
                DM_data.qry_pub.Parameters.ParamByName( 'pjh' ).Value := lists.Strings[1];
                DM_data.qry_pub.Parameters.ParamByName( 'je' ).Value := StrToFloat( lists.Strings[2] );
                DM_data.qry_pub.Parameters.ParamByName( 'zch' ).Value := lists.Strings[3];
                DM_data.qry_pub.ExecSQL;
              end
              else
              begin
                Application.MessageBox( PChar( '错误:打印发票失败！' + vStr ), '发票打印错误', MB_ICONHAND );
              end;
            end
            else
              if pos( '01', pub_zydylb ) <> 0 then
              begin
              qry_zydj.Close;
              qry_zydj.sql.Text:='select * from zysf_zydj where tmh=:srtmh and cybz=0 and jsbz=0';
              qry_zydj.Parameters.ParamByName('srtmh').Value:=zy_tmh;
              qry_zydj.Open;
              zy_brnl :=qry_zydj.FieldByName('brnl').AsString;
                //              frm_zysf_print_service.proc_printyjsj(zy_tmh, zy_brxm, zy_brxb,
                //                zy_ksmc, zy_sjh, '', '现金', zy_brdz, zy_yjje);
                frm_zysf_print_service.proc_printyjsj( zy_tmh, zy_brxm, zy_brxb,
                  zy_ksmc, zy_sjh, '', zy_yjfkfsmc, zy_brdz,zy_brnl, zy_yjje );
              end;
            zy_sjh := proc_get_sjbh( pub_czydm, pub_yjsjlb );
            sjbh.text := zy_sjh;
          end;
        end
        else
          application.MessageBox( '收预交失败,请使用[收预交]功能重新收区预交!',
            '提示', 0 + 16 );
      end;
    end;
    //--保存成功后进行床位安置---
    if trim( bch.Text ) <> '' then
    begin
      cwaz;
    end;
    //社保登记
    if prv_is_sb then
    begin
      func_pub_sbjs( '住院登记', prv_dkxh + '|' + zy_zyh );
    end;
    //病案登记
    if zydjbalj then
      bqgl_bqdj( zy_zyh );
  end;
  tmh.text := '';   //保存后清空条码
  //提取井研医院上次住院登记的信息
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select top 1 a.*,b.mc from zysf_zydj a,sys_ksdm b where a.ryks = b.dm and ryczy ='+''''+ pub_czydm +''''+' order by a.djrq desc ';
  DM_data.qry_pub.open;
  lbl_tmh.Caption :=  '条码号:'+ DM_data.qry_pub.FieldByName( 'tmh' ).AsString;
  lbl_brxm.Caption := '姓名:'+ DM_data.qry_pub.FieldByName( 'brxm' ).AsString;
  lbl_brxb.Caption := '性别:'+ DM_data.qry_pub.FieldByName( 'brxb' ).AsString;
  lbl_brnl.Caption := '年龄:'+ DM_data.qry_pub.FieldByName( 'brnl' ).AsString;
  lbl_ryks.Caption := '入院科室:'+ DM_data.qry_pub.FieldByName( 'mc' ).AsString;
  _on_jy_Err:
end;

procedure Tfrm_zydj.cwaz;
var
  ls: string;
begin
  with dm_data.qry_pub do
  begin
    close;
    SQL.clear;
    sql.Text := 'select bcbh from sys_kscwsz ' +
      ' where bcbh=' + '''' + trim( bch.text ) + '''' +
      ' and ksdm=' + '''' + zy_ksdm + '''' +
      ' and zyh<>' + #39 + #39;
    open
  end;
  if not dm_data.qry_pub.IsEmpty then
  begin
    application.MessageBox( '病床被占用!!', '提示:', 0 + 16 );
    abort;
  end;

  with sp_cwaz do
  begin
    close;
    PARAMETERS.parambyname( '@tmh' ).value := zy_tmh;
    PARAMETERS.ParamByName( '@zyh' ).value := zy_zyh;
    PARAMETERS.parambyname( '@bch' ).value := trim( bch.text );
    PARAMETERS.parambyname( '@sczt' ).value := 'A';
    ExecProc;
  end;
  ls := sp_cwaz.parameters.parambyname( '@sczt' ).value;
  if ls = '1' then
  begin
    application.MessageBox( '成功安置床位!', '提示:', 0 + 48 );
  end
  else
  begin
    application.MessageBox( '床位安置失败!', '提示:', 0 + 16 );
  end;
end;

procedure Tfrm_zydj.DBEditdbrExit(Sender: TObject);
begin
  if pub_yydm = '0240' then
  begin
    if b_save.canfocus then
      b_save.setfocus;
  end;
end;


procedure Tfrm_zydj.bzEnter( Sender: TObject );
begin
  bz.ImeMode := imOpen;
  bz.ImeName := Trim( pub_czysrf );
end;

procedure Tfrm_zydj.bzExit( Sender: TObject );
begin
  bz.ImeMode := imclose;
  // bz.ImeName:=Trim(pub_czysrf);
end;

procedure Tfrm_zydj.b_cancelClick( Sender: TObject );
begin
  qry_zydj.Cancel;
  tmh.Enabled := true;
  tmh.SetFocus;
  panel1.Enabled := false;
  b_save.Enabled := false;
  b_cancel.Enabled := false;
  label_ts.Caption := '';
  memo_lbs.Lines.Clear;
end;

procedure Tfrm_zydj.sfzhmKeyPress( Sender: TObject; var Key: Char );
begin
  if not ( ( key in ['0'..'9'] ) or ( key = #8 ) or ( key = '-' ) or ( key = 'X' ) or ( key
    = 'x' ) ) then
    key := #0;
end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_zydj.proc_dqSfzxx
  作者:      yangshuai
  日期:      2016.05.09
  参数:      MyIdrOcx1: TMyIdrOcx
  返回值:    string
-------------------------------------------------------------------------------}
function Tfrm_zydj.proc_dqSfzxx(MyIdrOcx1: TMyIdrOcx): string;
var
  state, card: Integer;
begin
  try
    sfzxx := new(_sfzxx);
    state := MyIdrOcx1.GetState;
    if state = 0 then
    begin
      card := MyIdrOcx1.ReadCard;
      if card = 0 then
      begin
        MyIdrOcx1.Start;
        sfzxx.Name := Trim(MyIdrOcx1.NameL); //姓名
        sfzxx.Sex := Trim(MyIdrOcx1.SexL); //性别
        sfzxx.Nation := Trim(MyIdrOcx1.NationL); //民族
        sfzxx.Born := Trim(MyIdrOcx1.BornL); //出生日期
        sfzxx.Address := Trim(MyIdrOcx1.Address); //地址
        sfzxx.CardNo := Trim(MyIdrOcx1.CardNo); //身份证号
        sfzxx.Police := Trim(MyIdrOcx1.Police); //发证机关
        sfzxx.Activity := Trim(MyIdrOcx1.ActivityL); //有效期
        MyIdrOcx1.Stop;
        Result := '';
      end
      else
        if card = -4 then
        begin
          Result := '未检测到身份证读卡器！';
        end
        else
          if card = -6 then
          begin
            Result := '未检测到身份证！';
          end
          else
          begin
            Result := '读卡失败！';
          end;
    end
    else
      if state < 0 then
      begin
        Result := '身份证读卡器连接异常！';
      end
      else
      begin
        Result := '请检查身份证读卡器是否连接正常！';
      end;
  except
    on E: Exception do
    begin
      Result := '身份证读卡器异常';
      Abort;
    end;
  end;
end;

procedure Tfrm_zydj.tmhKeyPress( Sender: TObject; var Key: Char );
var
  sfzError,vbrmz: string;
begin
  bah.text := '';
  if key = #13 then
  begin
    DM_data.qry_pub1.Close;
    DM_data.qry_pub1.SQL.Clear;
    DM_data.qry_pub1.SQL.Add('select * from zysf_zydj_ls where tmh =:tmh');
    DM_data.qry_pub1.Parameters.ParamByName('tmh').Value := trim( tmh.text );
    DM_data.qry_pub1.Open;
    if Length( trim( tmh.text ) ) > 9 then
    begin
      application.MessageBox( '此卡为临时卡不能办理入院!!!', '提示', 0 + 48 );
      Exit;
    end;
//  if key = #13 then
//  begin

    if ( pub_yydm = '0124' ) and ( tmh.Text <> '' ) then
    begin
      application.MessageBox( '不允许录入卡号办理入院!!!', '提示', 0 + 48 );
      Exit;
    end;
    zy_yjje := 0;
    prv_is_sb := false;
    zy_csqfxe := 0;
    sbdw.Text := ''; // XML 2014-07-14 输入卡号后将社保单位置空
    qry_zydj.Close;
    qry_zydj.Parameters.ParamByName( 'srtmh' ).value := '999999999';
    qry_zydj.Open;
    proc_tmhsyzt; //判断此卡是否是本公司所写
    if pub_yydm = '0266' then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text :='select * from zysf_zydj'
      + ' where jsbz=0 and tmh='+#39+trim( tmh.text )+#39;
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.RecordCount > 0 then
      begin
        application.MessageBox( '该病人已经登记入院或未结算费用出院，请勿重复登记!!!', '提示', 0 + 48 );
      Exit;
      end;
      
    end;
//    if pub_yydm <> '0262' then   //宁安市人民医院
//    begin
//       proc_cxbrxx; //判断是否是在院病人
//    end;
    sp_cx_brqk.Close;
    sp_cx_brqk.Parameters.Refresh;
    sp_cx_brqk.Parameters.ParamByName( '@tmh' ).value := zy_tmh;
    sp_cx_brqk.Parameters.ParamByName( '@xm' ).value := zy_tmh;
    sp_cx_brqk.Open;

    if not sp_cx_brqk.IsEmpty then //卡用户数据查询
    begin
      qry_zydj.Append;
      displayvalue;
      zy_ryrq := frm_func.curr_date( );
      tmh.Enabled := false;
      panel1.Enabled := true;
      b_save.Enabled := true;
      b_cancel.Enabled := true;
      if brxm.CanFocus then      
      brxm.SetFocus;
      if pub_yydm='0240' then
      begin
       tmh.Text:=sp_cx_brqk.fieldbyname( 'tmh1' ).asstring;
      end;
    end
    else //输入号为空
    begin
//      if pub_yydm='0275' then  //五家渠医院修改
//      begin
//        Application.MessageBox('没有门诊挂号数据，不能入院登记！', '提示', MB_OK + MB_ICONINFORMATION);
//        Exit;
//      end;
     //全部放开，针对所有医院
      if pub_sfzxxdqbz then //读取身份证信息开关
      begin
        qry_zydj.Append;
        zy_mzys := '';
        ryyj.Text := '';
        tmh.Enabled := false;
        fylb.text := fylb.items[0];
        if Assigned(fylb.OnExit) then fylb.OnExit(fylb);

        zy_ryrq := frm_func.curr_date( );
        if pub_yydm='0271' then //掇刀医院身份证读取单独修改
        begin
          sfzError:=Tgetyhktmh.Create.getIDNumberInfo;
          if (sfzError = '') and (sfzxx <> nil) then
          begin
           // brxm.Text := Trim(sfzxx.Name);
           //病人姓名
            qry_zydj['brxm'] := Trim(sfzxx.Name);
            zy_brxm := Trim(sfzxx.Name);
            //担保人
            dbr.text := trim(brxm.text);
            qry_zydj['dbr'] := dbr.text;
            //病人性别
            brxb.Text := Trim(sfzxx.Sex);
            zy_brxb := brxb.Text;
            //出院日期
            dtp1.DateTime:= encodedate(StrToInt(Copy(sfzxx.Born, 1, 4)),
              StrToInt(Copy(sfzxx.Born, 7, 2)), StrToInt(Copy(sfzxx.Born, 11, 2)));
            brnl.Csrq := dtp1.DateTime;
            //          nl.text := IntToStr(strtoint(copy(formatdatetime('yyyy-mm-dd', Frm_func.curr_date), 1, 4))
            //            - strtoint(copy(sfzxx.Born, 1, 4)));
           zy_csrq := brnl.Csrq;
            //民族
            vbrmz := trim(sfzxx.Nation);
            if Pos('族', Trim(vbrmz)) = 0 then
            begin
              vbrmz := vbrmz + '族';
            end;
            //默认值井研县人民医院民族
            if (brmz.Items.IndexOf(vbrmz) <>  -1 ) then
            begin
              brmz.ItemIndex := brmz.Items.IndexOf(vbrmz);
              brmzExit(nil);
            end;

  //          zy_brmz := brmz.Text;
            //病人地址
            brdz.Text := sfzxx.Address;
            if brdz.Text <> '' then
            begin
              qry_zydj['brdz'] := brdz.Text;
            end;
            // nxrdz.Text := sfzxx.Address;
            //身份证
            sfzhm.Text := sfzxx.CardNo;
            qry_zydj['sfzhm'] := sfzhm.Text;
          end else
          begin
            application.MessageBox( PChar(sfzError+ '使用手工录入模式') , '提示:', 0 + 48 );
          end;
        end else
        begin
          sfzError := proc_dqSfzxx(MyIdrOcx1); //读取身份证信息
          if (sfzError = '') and (sfzxx <> nil) then
          begin
           // brxm.Text := Trim(sfzxx.Name);
           //病人姓名
            qry_zydj['brxm'] := Trim(sfzxx.Name);
            zy_brxm := Trim(sfzxx.Name);
            //担保人
            dbr.text := trim(brxm.text);
            qry_zydj['dbr'] := dbr.text;
            //病人性别
            brxb.Text := Trim(sfzxx.Sex);
            zy_brxb := brxb.Text;
            //出院日期
            dtp1.DateTime:= encodedate(StrToInt(Copy(sfzxx.Born, 1, 4)),
              StrToInt(Copy(sfzxx.Born, 7, 2)), StrToInt(Copy(sfzxx.Born, 11, 2)));
            brnl.Csrq := dtp1.DateTime;
            //          nl.text := IntToStr(strtoint(copy(formatdatetime('yyyy-mm-dd', Frm_func.curr_date), 1, 4))
            //            - strtoint(copy(sfzxx.Born, 1, 4)));
           zy_csrq := brnl.Csrq;
            //民族
            vbrmz := trim(sfzxx.Nation);
            if Pos('族', Trim(vbrmz)) = 0 then
            begin
              vbrmz := vbrmz + '族';
            end;
            //默认值井研县人民医院民族
            if (brmz.Items.IndexOf(vbrmz) <>  -1 ) then
            begin
              brmz.ItemIndex := brmz.Items.IndexOf(vbrmz);
              brmzExit(nil);
            end;

  //          zy_brmz := brmz.Text;
            //病人地址
            brdz.Text := sfzxx.Address;
            if brdz.Text <> '' then
            begin
              qry_zydj['brdz'] := brdz.Text;
            end;
            // nxrdz.Text := sfzxx.Address;
            //身份证
            sfzhm.Text := sfzxx.CardNo;
            qry_zydj['sfzhm'] := sfzhm.Text;
          end else
          begin
            application.MessageBox( PChar(sfzError+ '使用手工录入模式') , '提示:', 0 + 48 );
            // bc.Caption := sfzError + '使用手工录入模式';
  //          brxm.SetFocus;
  //          brxm.SelectAll;
          end;
        end
      end else
      begin
        qry_zydj.Append;
        if brdz.Text <> '' then
        begin
          qry_zydj['brdz'] := brdz.Text;
        end;
        zy_mzys := '';
        ryyj.Text := '';
        tmh.Enabled := false;
        fylb.text := fylb.items[0];
        if Assigned(fylb.OnExit) then fylb.OnExit(fylb);
        zy_ryrq := frm_func.curr_date( );
      end;
      panel1.Enabled := true;
      b_save.Enabled := true;
      b_cancel.Enabled := true;
      brxm.SetFocus;
      Button2.Enabled := True;
    end;
  end;
end;


procedure Tfrm_zydj.FormCreate( Sender: TObject );
begin
  SetWindowLong(tmh.Handle,GWL_STYLE,GetWindowLong(tmh.Handle,GWL_STYLE) or ES_NUMBER);
  SetWindowLong(bah.Handle,GWL_STYLE,GetWindowLong(bah.Handle,GWL_STYLE) or ES_NUMBER);
  BBirthdayInputed := False;
  BIDInputed := False;
  //加入职业
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from zysf_brzy order by dm';
  jbqk_cx.Open;
  brZY.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brzy.items.Add( trim( jbqk_cx.fieldbyname( 'sm' ).asstring ) );
    jbqk_cx.next;
  end;
    //默认值井研县人民医院职业
  if (brzy.Items.IndexOf('居民') <>  -1 ) and ( pub_yydm = '0260')then
  begin
    brzy.ItemIndex := brzy.Items.IndexOf('居民');
    brzyExit(nil);
  end;

  //加入入院病情
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from zysf_rybq order by dm';
  jbqk_cx.Open;
  rybq.Items.Clear;
  while not jbqk_cx.eof do
  begin
    rybq.items.Add( trim( jbqk_cx.fieldbyname( 'sm' ).asstring ) );
    jbqk_cx.next;
  end;
  //默认值井研县人民医院一般
  if (rybq.Items.IndexOf('一般') <>  -1 ) and ( pub_yydm = '0260')then
  begin
    rybq.ItemIndex := rybq.Items.IndexOf('一般');
    rybqExit(nil);
  end;
  //加入关系
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_gx order by dm';
  jbqk_cx.Open;
  pbgx.Items.Clear;
  while not jbqk_cx.eof do
  begin
    pbgx.items.Add( trim( jbqk_cx['mc'] ) );
    jbqk_cx.next;
  end;
  //加入省份
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_sf order by sypl';
  jbqk_cx.Open;
  brsf.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brsf.items.Add( trim( jbqk_cx['mc'] ) );
    jbqk_cx.next;
  end;
   //默认值井研县人民医院 省份
  if (brsf.Items.IndexOf('四川') <>  -1 ) and ( pub_yydm = '0260')then
  begin
    brsf.ItemIndex := brsf.Items.IndexOf('四川');
    brsfExit(nil);
  end;

  //加入籍贯
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_jg order by sypl';
  jbqk_cx.Open;
  brjg.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brjg.items.Add( trim( jbqk_cx['mc'] ) );
    jbqk_cx.next;
  end;
  //默认值井研县人民医院籍贯
  if (brjg.Items.IndexOf('乐山') <>  -1 ) and ( pub_yydm = '0260')then
  begin
    brjg.ItemIndex := brjg.Items.IndexOf('乐山');
    brjgExit(nil);
  end;

  //加入民族
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_mz order by sypl';
  jbqk_cx.Open;
  brmz.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brmz.items.Add( trim( jbqk_cx['mc'] ) );
    jbqk_cx.next;
  end;
  //默认值井研县人民医院民族
  if (brmz.Items.IndexOf('汉族') <>  -1 ) and ( pub_yydm = '0260')then
  begin
    brmz.ItemIndex := brmz.Items.IndexOf('汉族');
    brmzExit(nil);
  end;

  //默认值井研县人民医院地址
  if ( pub_yydm = '0260')then
  begin
   brdz.Text := '不详';
   brdzExit(nil);
  end else
  begin
   brdz.Text := '';
  end;
 // brdzExit(nil);

  //入院诊断
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_jbbm order by jbbm';
  jbqk_cx.Open;
  jbbm.Items.Clear;
  while not jbqk_cx.eof do
  begin
    jbbm.items.Add( jbqk_cx['jbmc'] );
    jbqk_cx.next;
  end;


  //特殊标识
  if  (pub_yydm = '0240') then  //沙雅县人民医院
  begin
    jbqk_cx.Close;
    jbqk_cx.commandtext := 'select * from sys_tsbs where sybz=1';
    jbqk_cx.Open;
    cbb_tsbs.Items.Clear;
    while not jbqk_cx.eof do
    begin
      cbb_tsbs.items.Add( jbqk_cx['mc'] );
      jbqk_cx.next;
    end;
  end;

   //默认值井研县人民医院入院诊断
  if (jbbm.Items.IndexOf('没有确诊') <>  -1 ) and ( pub_yydm = '0260')then
  begin
    jbbm.ItemIndex := jbbm.Items.IndexOf('没有确诊');
    jbbmExit(nil);
  end else
  begin
    jbbm.text := '';
  end;

  //加入费用类别
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_fylb where dyzysjbz=1 order by dm';
  jbqk_cx.Open;
  fylb.Items.Clear;
  while not jbqk_cx.eof do
  begin
    fylb.items.Add( trim( jbqk_cx['mc'] ) );
    jbqk_cx.next;
  end;
  //加入社保单位
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_jgdm order by dm';
  jbqk_cx.Open;
  sbdw.Items.Clear;
  while not jbqk_cx.eof do
  begin
    sbdw.items.Add( jbqk_cx['mc'] );
    jbqk_cx.next;
  end;



  //加入科室
  jbqk_cx.Close;
  if pub_yydm='0271' then
  begin
     jbqk_cx.commandtext := 'select a.dm,rtrim(a.mc)+' + #39 + '(' + #39 +
    '+rtrim(convert(char,isnull(b.rc,0)))+'
    + #39 + '人)' + #39 + ' mc,a.pym ' +
    ' from sys_ksdm a , (select count(*) rc,ksdm from  zysf_zydj where cybz=0 group by ksdm ) b ' +
    ' where a.dm*=b.ksdm and ' +
    ' sybz=1 and kssx=' + #39 + '09' + #39+' and a.mc not like ''%护理部%''';
  end else
  begin
     jbqk_cx.commandtext := 'select a.dm,rtrim(a.mc)+' + #39 + '(' + #39 +
    '+rtrim(convert(char,isnull(b.rc,0)))+'
    + #39 + '人)' + #39 + ' mc,a.pym ' +
    ' from sys_ksdm a , (select count(*) rc,ksdm from  zysf_zydj where cybz=0 group by ksdm ) b ' +
    ' where a.dm*=b.ksdm and ' +
    ' sybz=1 and kssx=' + #39 + '09' + #39;
  end;

  jbqk_cx.Open;
  ryks.Items.Clear;
  while not jbqk_cx.eof do
  begin
    ryks.items.Add( trim( jbqk_cx['mc'] ) );
    jbqk_cx.next;
  end;

  //加入入院途径
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from zysf_rytj order by dm';
  jbqk_cx.Open;
  rytj.Items.Clear;
  while not jbqk_cx.eof do
  begin
    rytj.items.Add( trim( jbqk_cx['sm'] ) );
    jbqk_cx.next;
  end;

   //默认值井研县人民医院入院途经
  if (rytj.Items.IndexOf('门诊入院') <>  -1 ) and ( pub_yydm = '0260')then
  begin
    rytj.ItemIndex := rytj.Items.IndexOf('门诊入院');
    rytjExit(nil);
  end;

  if zydjBahzdsc then
  begin
    ComboBox1.Visible := True;
    ComboBox1.Left := bah.Left;
    ComboBox1.top := bah.top;
    ComboBox1.Width := bah.Width;
    ComboBox1.BringToFront;
    ADOQuery1.Close;
    ADOQuery1.Open;
    ComboBox1.Clear;
    bah.Top := 474;
    Label33.Visible := True;
    Label29.Caption := '住院类型';
    while not ADOQuery1.Eof do
    begin
      if ADOQuery1.FieldByName( 'id' ).AsInteger <> 1 then
        ComboBox1.items.Add( trim( ADOQuery1.FieldByName( 'rylx' ).AsString ) );
      ADOQuery1.Next;
    end;
    if ComboBox1.items.Count = 1 then  //只有一个的时候就默认选中
     ComboBox1.ItemIndex := 0;
    
  end;
  with qryfkfs do
  begin
    Close;
    SQL.Clear;
    sql.Add( 'SELECT * FROM sys_fkfs' );
    try
      Open;
    except
      Application.MessageBox( PChar( '读取付款方式时发生错误！' + #13#10 +
        '继续操作将无法保证数据的正确性。' + #13#10 + '建议重新打开此窗口！' ),
        PChar( '错误' ),
        MB_OK + MB_ICONSTOP + MB_DEFBUTTON2 );
      Exit;
    end;
    if IsEmpty then
    begin
      Application.MessageBox( PChar( '付款方式为空，基础数据设置错误！' + #13#10
        + '继续操作将无法保证数据的正确性。' + #13#10 +
        '请联系系统管理员处理！' ), PChar( '错误' ), MB_OK + MB_ICONSTOP +
        MB_DEFBUTTON2 );
      exit;
    end;
    Cmbbfkfs.Items.Clear;
    First;
    while not Eof do
    begin
      Cmbbfkfs.Items.Add( FieldByName( 'mc' ).AsString );
      Next;
    end;
    Cmbbfkfs.ItemIndex := 0;
  end;
end;

procedure Tfrm_zydj.FormDestroy( Sender: TObject );
begin
  if Assigned( tcpThread ) then
    tcpThread.Terminate;
end;

procedure Tfrm_zydj.brjgExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    resultf := 'mc';
    tempcom := brjg;
    if  finditems( 'sys_jg', 'dm', 'py', 'mc', '籍贯', brjg ) then
    begin
      try
      zy_brjg := jbqk_cx['dm'];

      { 入院登记时，在输入“籍贯”后按回车键，光标定位在“身份证”。此处“病人职业”就无法用回车键进行定位，但是“病人职业”是必填项，应该在输入“籍贯”后按回车键，光标定位在“病人职业”处。
         应对方法注释以下内容   ：
         selectnext( activecontrol as Twincontrol, true, true );
      }

      except
      end;
    end else
    begin
      zy_brjg := '';
    end;
  end
end;

procedure Tfrm_zydj.brsfExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    resultf := 'mc';
    tempcom := brsf;
    if finditems( 'sys_sf', 'dm', 'py', 'mc', '省份', brsf ) then
    begin
      try
        zy_brsf := jbqk_cx['dm'];
      except
      end;
    end else
    begin
      zy_brsf := '';
    end;
  end
end;

procedure Tfrm_zydj.brmzExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    resultf := 'mc';
    tempcom := brmz;
    if finditems( 'sys_mz', 'dm', 'py', 'mc', '民族', brmz ) then
    begin
      try
        zy_brmz := jbqk_cx['dm'];
      except
      end;
    end else
    begin
      zy_brmz := '';
    end;
  end
end;

procedure Tfrm_zydj.brmzKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
      selectnext( activecontrol as Twincontrol, true, true );
  end;
end;

procedure Tfrm_zydj.brnlChange( Sender: TObject );
var
  strBrnl: string;
  intBrnl, index: Integer;
begin

  /// 更改年龄显示内容
  /// 大于1周岁的患者，年龄仅显示岁数；
  /// 小于1周岁的婴幼儿年龄显示月数加天数；小于30天的婴儿，年龄仅显示天数
//  if Pos( '岁', brnl.Text ) > 0 then
//  begin
//    index := Pos( '岁', brnl.Text );
//    strBrnl := LeftStr( brnl.Text, index - 1 );
//    intBrnl := StrToInt( strBrnl );
//    if intBrnl > 0 then
//    begin
//      brnl.Text := strBrnl + '岁';
//    end
//    else
//    begin
//      strBrnl := MidStr( brnl.Text, index + 2, Length( brnl.Text ) - index - 1 );
//      if Pos( '月', strBrnl ) > 0 then
//      begin
//        index := Pos( '月', strBrnl );
//        intBrnl := StrToInt( LeftStr( strBrnl, index - 1 ) );
//        if intBrnl = 0 then
//        begin
//          brnl.Text := MidStr( strBrnl, index + 2, Length( strBrnl ) - index - 1 )
//        end
//        else
//        begin
//          brnl.Text := strBrnl;
//        end;
//      end
//    end;
//  end
//  else
//  begin
//    if Pos( '月', brnl.Text ) > 0 then
//    begin
//      index := Pos( '月', brnl.Text );
//      strBrnl := LeftStr( brnl.Text, index - 1 );
//      intBrnl := StrToInt( strBrnl );
//      if intBrnl = 0 then
//      begin
//        brnl.Text := MidStr( brnl.Text, index + 2, Length( brnl.Text ) - index - 1 )
//      end
//    end
//  end;

end;

procedure Tfrm_zydj.brnlExit( Sender: TObject );
begin
  if brnl.Csrq = 0 then
  begin
    dtp1.DateTime := 1;
  end
  else
  begin
    if not BBirthdayInputed then
      dtp1.DateTime := brnl.Csrq;
  end;
end;

procedure Tfrm_zydj.brzyExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    resultf := 'sm';
    tempcom := brzy;
    if finditems( 'zysf_brzy', 'dm', 'dm', 'sm', '职业', brzy ) then
    begin
      try
        zy_brzy := Trim(jbqk_cx['sm']);
      except
      end;
    end else
    begin
      zy_brzy := '';
    end;

  end
end;

procedure Tfrm_zydj.btn_sbdkClick( Sender: TObject );
var
  jkk_CardInfo: Tjkk_CardInfo;
  jkk_PsnBaseInfo: Tjkk_PsnBaseInfo;
  jkk_AddressInfo: Tjkk_AddressInfo;
  msgstr: string;

  Key: Char;
  I: integer;
begin
  if Assigned( CardInfo ) and CardInfo( jkk_CardInfo ) then
  begin
    pub_bdktmh := '';
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := ' exec sys_cx_bdjzk ' + #39 + jkk_CardInfo.CardNo + #39;
    DM_data.qry_pub.Open;
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.Eof do
    begin
      if Length( Trim( DM_data.qry_pub.FieldByName( 'tmh' ).AsString ) ) = 9 then
      begin
        pub_bdktmh := DM_data.qry_pub.FieldByName( 'tmh' ).AsString;
        Break;
      end;

      DM_data.qry_pub.Next;
    end;
    if pub_bdktmh = '' then
    begin
      MessageBox( Handle,
        '此卡未绑定院内就诊卡！不能进行入院登记！', '错误',
        MB_OK + MB_ICONSTOP );
      Exit;
    end;
    tmh.Text := pub_bdktmh;
    Key := #13;
    tmhKeyPress( tmh, Key );
    if not qry_zydj.active then exit;
    qry_zydj.Edit;
    if PsnBaseInfo( jkk_PsnBaseInfo ) then
    begin
      qry_zydj.FieldByName( 'sfzhm' ).Value := jkk_PsnBaseInfo.PsnID;
      qry_zydj.FieldByName( 'brxm' ).value := jkk_PsnBaseInfo.PsnName;
      qry_zydj.FieldByName( 'csrq' ).value := func_zh_csrq( jkk_PsnBaseInfo.BirthDay );
      dtp1.Date := qry_zydj.FieldByName( 'csrq' ).AsDateTime;
      brnl.Csrq := dtp1.DateTime;
    end;
    if AddressInfo( jkk_AddressInfo ) then
    begin
      if Trim( jkk_AddressInfo.Address1 ) = '' then
      begin
        qry_zydj.FieldByName( 'brdz' ).Value := jkk_AddressInfo.Address2;
      end
      else
      begin
        qry_zydj.FieldByName( 'brdz' ).Value := jkk_AddressInfo.Address1;
      end;
      brdz.Text := qry_zydj.FieldByName( 'brdz' ).AsString;
    end;
    qry_zydj.Post;

  end
  else
  begin
    prv_dkxh := pub_czydm + formatdatetime( 'yymmddhhnnss', Frm_func.curr_date );
    if func_pub_sbjs( '读卡', prv_dkxh ) then
    begin
      prv_is_sb := true;
      qry_zydj.FieldByName( 'brxm' ).value := pub_re.ybkxm;
      qry_zydj.FieldByName( 'sbkh' ).value := pub_re.grbh;
      try
        with DM_data do
        begin
          qry_pub.close;
          qry_pub.SQL.Text := 'select * from sbjk_kyh where zyh =' + #39 + prv_dkxh
            + #39;
          qry_pub.Open;
          if qry_pub.RecordCount > 0 then
          begin
            qry_zydj.FieldByName( 'sfzhm' ).Value :=
              qry_pub.FieldByName( 'sfzh' ).AsString;
            qry_zydj.FieldByName( 'brdz' ).Value :=
              qry_pub.FieldByName( 'dwmc' ).AsString;
            brdz.Text := qry_pub.FieldByName( 'dwmc' ).AsString;
          end;
        end;
      except
      end;
      brxm.SetFocus;
    end
    else
    begin
      prv_is_sb := false;
    end;
  end;
end;

procedure Tfrm_zydj.Button1Click( Sender: TObject );
begin
  close;
end;

procedure Tfrm_zydj.Button2Click( Sender: TObject );
begin
  if not Button2.Enabled then
    Exit;

  application.CreateForm( Tfrm_mzsjdr, frm_mzsjdr );
  try
    frm_mzsjdr.ShowModal;
    if frm_mzsjdr.ModalResult = mrOk then
    begin
      if ( Trim( brxm.Text ) <> '' ) and
        ( Trim( brxm.Text ) <>
        Trim( frm_mzsjdr.ADOQuery1.FieldByName( 'brxm' ).AsString ) ) then
      begin
        Application.MessageBox( '门诊数据姓名与此卡姓名不符合！' + #13#10 +
          '请确认导入数据是否正确！', '提示', MB_OK + MB_ICONWARNING );
      end;
      if not qry_zydj.Active then
      begin
        Application.MessageBox( '请先划卡，再导入病人数据。', '提示', MB_OK +
          MB_ICONINFORMATION );
        Exit;
      end;
      if ( Trim( brxm.Text ) = '' ) then
      begin
        brxm.Text := frm_mzsjdr.ADOQuery1.FieldByName( 'brxm' ).AsString;
        zy_brxm := brxm.Text;
        qry_zydj.FieldByName( 'brxm' ).asstring := zy_brxm;
        brxmExit( nil );
      end;
      if zy_brxb = '' then
      begin
        brxb.Text := frm_mzsjdr.ADOQuery1.FieldByName( 'brxb' ).AsString;
        zy_brxb := brxb.Text;
      end;
      if brnl.Text = '' then
      begin
        brnl.Text := frm_mzsjdr.ADOQuery1.FieldByName( 'brnl' ).AsString;
        brnlExit( nil );
      end;
      if brdz.Text = '' then
      begin
        brdz.Text := frm_mzsjdr.ADOQuery1.FieldByName( 'brdz' ).AsString;
        brdwdz.text := brdz.Text;
      end;
      if brzy.Text = '' then
      begin
        brzy.Text := '居民';
        zy_brzy := brzy.Text;
        brzyExit(nil) ;
      end;
      zy_mzys := frm_mzsjdr.ADOQuery1.FieldByName( 'mzys' ).AsString;
      mzys.Text := frm_mzsjdr.ADOQuery1.FieldByName( 'mzysmc' ).AsString;
      zy_rytj := '2';
      rytj.ItemIndex := 1;

      jbbm.Text := Copy( frm_mzsjdr.ADOQuery1.FieldByName( 'ryzd' ).AsString,
        Pos( '-', frm_mzsjdr.ADOQuery1.FieldByName( 'ryzd' ).AsString ) + 1, 100 );
      zy_ryzd := Trim( Copy( frm_mzsjdr.ADOQuery1.FieldByName( 'ryzd' ).AsString, 0,
        Pos( '-', frm_mzsjdr.ADOQuery1.FieldByName( 'ryzd' ).AsString ) - 1 ) );
      zy_ryzd := jbbm.Text;
      //      brxm.Text := frm_mzsjdr.ADOQuery1.FieldByName('brxm').AsString;
      //      brxm.Text := frm_mzsjdr.ADOQuery1.FieldByName('brxm').AsString;
    end;
  finally
    frm_mzsjdr.free;
  end;
end;

procedure Tfrm_zydj.ryksExit( Sender: TObject );
var
  findfield, s: string;
  i: integer;
begin
///////////////////////////////遂宁中医院修改/////////////////////////////////////////////
//findfield := 'pym+mc+dm';
////        else
////          findfield := 'mc';
//      resultf := 'mc';
//      jbqk_cx.close;
////      if s[1] in ['0'..'9'] then
////        jbqk_cx.commandtext := 'select dm,mc from sys_ksdm where ' + findfield +
////          '=' + #39 + s + #39 + ' and kssx=' + #39 + '09' + #39 + 'and  sybz=1'
////      else
//
//      jbqk_cx.commandtext := 'select dm,mc from sys_ksdm where mc=''' + trim(ryks.Text) + ''' and kssx=' + #39 + '09' + #39 + ' and sybz=1';
//      jbqk_cx.Open;
//      if jbqk_cx.IsEmpty then
//      begin
//        jbqk_cx.Close;
//        jbqk_cx.commandtext := 'select dm,mc from sys_ksdm where upper(' + findfield + ') like ' + #39 + '%' + uppercase(s) + '%' + #39 + ' and kssx=' + #39 + '09' + #39 + ' and sybz=1';
//        jbqk_cx.Open;
//      end;
 ///////////////////////////////////////////////////////////////////////////////
  label_ts.Caption := '';
  memo_lbs.Lines.Clear;
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    s := trim( ryks.Text );

    i := pos( '(', s ); //
    //j := pos(')',s);
    if i > 0 then
    begin
      s := copy( s, 0, i - 1 );
    end;

    tempcom := ryks;
    if s <> '' then
    begin
//      if s[1] in ['0'..'9'] then
//        findfield := 'dm'
//      else
//        if s[1] in ['A'..'Z', 'a'..'z'] then
          findfield := 'pym+mc';
//        else
//          findfield := 'mc';
      resultf := 'mc';
      jbqk_cx.close;
//      if s[1] in ['0'..'9'] then
//        jbqk_cx.commandtext := 'select dm,mc from sys_ksdm where ' + findfield +
//          '=' + #39 + s + #39 + ' and kssx=' + #39 + '09' + #39 + 'and  sybz=1'
//      else
       if pub_yydm='0271' then
       begin
         jbqk_cx.commandtext := 'select dm,mc from sys_ksdm where upper(' +
          findfield + ') like ' + #39 + '%' + uppercase( s ) + '%' + #39 +
          ' and kssx=' + #39 + '09' + #39 + ' and sybz=1'+ ' and mc not like ''%护理部%''';
       end else
       begin
           jbqk_cx.commandtext := 'select dm,mc from sys_ksdm where upper(' +
          findfield + ') like ' + #39 + '%' + uppercase( s ) + '%' + #39 +
          ' and kssx=' + #39 + '09' + #39 + ' and sybz=1';
       end;

      
      jbqk_cx.Open;
      if jbqk_cx.IsEmpty then
      begin
        messagedlg( '代码输入错误，没有找到相应科室代码', mterror, [mbok], 0 );
        if ryks.CanFocus then
        ryks.setfocus;
        exit;
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
          if frm_zydj.Width - tempcom.left > tempgrid.Width then
            tempgrid.left := tempcom.left
          else
            tempgrid.left := tempcom.left + tempcom.Width - tempgrid.Width;
          tempgrid.top := tempcom.top + tempcom.Height + Panel1.top + 1;
          tempgrid.visible := true;
          tempgrid.setfocus;
        end;
      try
        zy_ksdm := jbqk_cx['dm'];
        zy_ksmc := jbqk_cx['mc'];
        dm_data.Qry_pub.close;
        dm_data.Qry_pub.SQL.Clear;
        dm_data.Qry_pub.sql.text := 'select * from sys_bqzyfl where bqzydm=' +
          #39 + zy_ksdm + #39;
        dm_data.Qry_pub.open;
        zy_bqdm := dm_data.Qry_pub['bqdm'];
        qry_zydj['bqdm'] := zy_bqdm;
        //-----calmhawk----- 病区床位显示---------------
        qry_bq.Close;
        qry_bq.Parameters.ParamByName( 'ksdm' ).Value := zy_ksdm;
        qry_bq.Open;
        if qry_bq.RecordCount > 0 then
        begin
          label_ts.Caption := '入院科室:' +
            trim( qry_bq.FieldByName( 'ksmc' ).asstring ) +
            ' (' + trim( qry_bq.FieldByName( 'bqmc' ).asstring ) + '-总床数:' +
            trim( qry_bq.FieldByName( 'cws' ).asstring ) + '　空床数:' +
            trim( qry_bq.FieldByName( 'kcs' ).asstring ) + ')';
          if qry_bq.FieldByName( 'kcs' ).AsInteger < 1 then
          begin
            label_ts.Font.Color := clred;
          end
          else
          begin
            label_ts.Font.Color := clblue;
          end;
        end;
        qry_bqcw_lb.Close;
        qry_bqcw_lb.Parameters.ParamByName( 'bqdm' ).Value :=
          qry_bq.FieldByName( 'bqdm' ).AsString;
        qry_bqcw_lb.Open;
        if qry_bqcw_lb.RecordCount > 0 then
        begin
          memo_lbs.Lines.Clear;
          while not qry_bqcw_lb.Eof do
          begin
            memo_lbs.Text := memo_lbs.Text +
              trim( qry_bqcw_lb.FieldByName( 'lbmc' ).AsString ) +
              '[余' + trim( qry_bqcw_lb.FieldByName( 'cws' ).AsString ) + ']';
            qry_bqcw_lb.Next;
          end;

        end;
        //-----------------------------------------------
      except on e1: exception do
          showMessage( '病区设置错误！' + #13 + e1.Message );
      end;
    end;
  end;
end;

procedure Tfrm_zydj.brxbExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    if ( brxb.Text = '1' ) or ( brxb.Text = '男' ) then
      brxb.Text := '男'
    else
      if ( brxb.Text = '2' ) or ( brxb.Text = '女' ) then
        brxb.text := '女'
      else
        brxb.Text := '男';
    try
      zy_brxb := brxb.Text;
    except
    end;
  end
end;

procedure Tfrm_zydj.ryrqExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  try
    zy_ryrq := strtodatetime( formatdatetime( 'yyyy-MM-dd', ryrq.Date ) +
      ' ' + formatdatetime( 'HH:mm:ss', rysj.Time ) );
  except
  end;
end;

procedure Tfrm_zydj.rysjKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    selectnext( activecontrol as Twincontrol, true, true );
end;

procedure Tfrm_zydj.rytjExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    resultf := 'sm';
    tempcom := rytj;
    if finditems( 'zysf_rytj', 'dm', 'dm', 'sm', '入院途径', rytj ) then
    begin
      try
        zy_rytj := jbqk_cx['dm'];
      except
      end;
    end else
    begin
      zy_rytj := '';
    end;
  end
end;

procedure Tfrm_zydj.rybqExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    resultf := 'sm';
    tempcom := rybq;
    if finditems( 'zysf_rybq', 'dm', 'dm', 'sm', '入院病情', rybq ) then
    begin
    try
      zy_rybq := Trim(jbqk_cx['sm']);//rybq.Text;
    except
    end;
    end else
    begin
      zy_rybq := '';
    end;
  end
end;

procedure Tfrm_zydj.fylbChange(Sender: TObject);
begin
  if Assigned(fylb.OnExit) then
    fylb.OnExit(Sender);
  if fylb.ItemIndex = fylb.Items.IndexOf('精准扶贫') then
  begin
    if chk1.Checked = False then
    begin
      Application.MessageBox('该病人没有验证是否精准扶贫','提示',64);
      fylb.ItemIndex := 0;
      Exit;
    end;
  end;
end;

procedure Tfrm_zydj.fylbExit( Sender: TObject );
var
  findfield, s: string;
begin
  s := trim( fylb.Text );
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
    if s <> '' then
    begin
      jbqk_cx.close;
      jbqk_cx.commandtext :=
        'select csqfxe,dm,mc,jzxe,yjbz,zfzdmc from sys_fylb where dm=' + #39 + s
        +
        #39;
      jbqk_cx.Open;
      if jbqk_cx.IsEmpty then
      begin
        jbqk_cx.close;
        jbqk_cx.commandtext :=
          'select csqfxe,dm,mc,jzxe,yjbz,zfzdmc from sys_fylb where upper(mc) like ' + #39
          + '%' + uppercase( s ) + '%' + #39;
        jbqk_cx.Open;
      end;
      if jbqk_cx.IsEmpty then
      begin
        messagedlg( '代码输入错误，没有找到相应费用类别代码', mterror, [mbok],
          0 );
        if fylb.CanFocus then fylb.setfocus;
        abort;
      end
      else
        if jbqk_cx.recordcount = 1 then
          fylb.text := jbqk_cx['mc']
        else
        begin
          tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
          tempgrid.Columns[0].title.caption := '代码';
          tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
          tempgrid.Columns[1].title.caption := '名称';
          if frm_zydj.Width - tempcom.left > tempgrid.Width then
            tempgrid.left := tempcom.left
          else
            tempgrid.left := tempcom.left + tempcom.Width - tempgrid.Width;
          tempgrid.top := tempcom.top + tempcom.Height + Panel1.top + 1;
          tempgrid.visible := true;
          if tempgrid.CanFocus then tempgrid.setfocus;
        end;
      //try
      zy_fylb := jbqk_cx['dm'];
      zy_fysb := jbqk_cx['zfzdmc'];
      zy_yjbz := jbqk_cx['yjbz'];
      zy_jzxe := jbqk_cx['jzxe'];
      zy_csqfxe := jbqk_cx['csqfxe'];
      qfxe.Text := formatfloat( '0.00', zy_csqfxe );

      if  ( zy_fylb = '07' ) or ( zy_fylb = '03' ) or ( zy_fylb = '04' ) then
      begin
        lblStarSBDW.Visible := True;
      end;

      if zy_fylb = '01' then
      begin
        if bz.CanFocus then bz.SetFocus;
      end
      else
      begin
        if sbdw.CanFocus then sbdw.SetFocus;
      end;
      //except
      //end;
    end;
end;


procedure Tfrm_zydj.brxmEnter( Sender: TObject );
begin
  brxm.ImeMode := imOpen;
  brxm.ImeName := trim( pub_czysrf );
end;

procedure Tfrm_zydj.brxmExit( Sender: TObject );
begin
  brxm.ImeMode := imClose;
  //calmhawk 2006-06-06
  if checkIn( brxm.Text ) = 1 then
    brxm.Color := clRed
  else
    brxm.Color := clWhite;
  //--------------------------
  zy_brxm := trim( brxm.text );
  if zy_brxm = '' then
    brxm.Color := clRed;
end;

procedure Tfrm_zydj.brxmKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
      selectnext( activecontrol as Twincontrol, true, true );
  end;
end;

procedure Tfrm_zydj.ryyjExit( Sender: TObject );
begin
  if ryyj.Text <> '' then
  begin
    if ( b_cancel.Focused or Button1.focused ) then
      exit;
    if not TryStrToFloat( trim( ryyj.text ), zy_yjje ) then
    begin
      Application.MessageBox( PChar( '预交金额格式不合法。' ), PChar( '警告' ), MB_OK
        + MB_ICONWARNING + MB_DEFBUTTON2 );
      ryyj.SelectAll;
      ryyj.SetFocus;
    end;
  end;
end;

procedure Tfrm_zydj.jbbmExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    resultf := 'jbmc';
    tempcom := jbbm;
    zy_ryzd := jbbm.Text;
    if trim( zy_ryzd ) <> '' then
      if ord( zy_ryzd[1] ) < 127 then
      begin
        finditems( 'sys_jbbm', 'jbbm', 'pym', 'jbmc', '入院诊断', jbbm );
        zy_ryzd := jbbm.Text;
        if ( trim( jbqk_cx.FieldByName( 'ksdm' ).asstring ) <> '' ) and
          ( trim( brnl.text ) > '14' ) then
          ryks.text := trim( jbqk_cx.FieldByName( 'ksdm' ).asstring )
        else
          //ryks.text := '';
      end
  end
end;

procedure Tfrm_zydj.jbbmKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext( activecontrol as Twincontrol, true, true );
end;

procedure Tfrm_zydj.sbdwExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    resultf := 'mc';
    tempcom := sbdw;
    if finditems( 'sys_jgdm', 'dm', 'pym', 'mc', '社保/公费机构', sbdw ) then
    try
      zy_sbjg := sbdw.Text;
    except
    end;
  end
end;

procedure Tfrm_zydj.sbkhExit( Sender: TObject );
begin
  //  if trim(sbkh.text)='' then sbkh.text:=tmh.text;
end;

procedure Tfrm_zydj.pbgxExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin

    resultf := 'mc';
    tempcom := pbgx;
    if finditems( 'sys_gx', 'dm', 'pym', 'mc', '陪伴关系', pbgx ) then
    try
      zy_pbgx := jbqk_cx['dm'];
    except
    end;
  end
end;

procedure Tfrm_zydj.brdwdzExit( Sender: TObject );
begin
  //calmhawk 2006-06-06
  if ( checkIn( brdwdz.Text ) = 1 ) then
    brdwdz.Color := clRed
  else
    brdwdz.Color := clWhite;
  //--------------------------
  if trim( brdwdz.Text ) = '' then
    brdwdz.Color := clRed;
end;

procedure Tfrm_zydj.brdzExit( Sender: TObject );
begin
  if ( checkIn( brdz.Text ) = 1 ) then
    brdz.Color := clRed
  else
    brdz.Color := clWhite;
  //--------------------------
  if trim( brdz.Text ) = '' then
    brdz.Color := clRed;
  brdwdz.Text := brdz.Text;
end;

procedure Tfrm_zydj.brdzKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
   // selectnext( activecontrol as Twincontrol, true, true );
        if dwdh.CanFocus  then
      dwdh.setfocus;
  end;
end;

procedure Tfrm_zydj.dbrDblClick( Sender: TObject );
begin
  if Length( Trim( dbr.Text ) ) = 0 then
    qry_zydj['dbr'] := zy_brxm;

end;

procedure Tfrm_zydj.dbrEnter( Sender: TObject );
begin
  dbr.ImeMode := imOpen;
  dbr.ImeName := trim( pub_czysrf );
end;

procedure Tfrm_zydj.dbrExit( Sender: TObject );
begin
  dbr.ImeMode := imClose;
  //calmhawk 2006-06-06
  if checkIn( dbr.Text ) = 1 then
    dbr.Color := clRed
  else
    dbr.Color := clWhite;
  //--------------------------
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
    if length( trim( dbr.text ) ) = 0 then
    begin
      pbgx.text := '';
      nxrdh.Text := '';
      zy_pbgx := '';
      pbgx.enabled := false;
      nxrdh.enabled := false;
      if ryrq.Enabled then
        ryrq.setfocus
      else
        rytj.SetFocus;
    end
    else
    begin
      pbgx.enabled := true;
      nxrdh.enabled := true;
      pbgx.setfocus;
    end;
end;

procedure Tfrm_zydj.sfzhmChange(Sender: TObject);
begin
  BIDInputed := True;
end;

procedure Tfrm_zydj.sfzhmExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
    if length( trim( sfzhm.text ) ) > 0 then
      if ( ( length( trim( sfzhm.text ) ) <> 15 ) and ( length( trim( sfzhm.text ) ) <> 18 ) )
        then
      begin
        application.MessageBox( '身份证号码长度只能为15位或18位！', '提示', 0 +
          16 );
        if sfzhm.CanFocus then
        sfzhm.SetFocus;
      end
      else
      begin
        if isStillInHospital(trim( sfzhm.text )) then
        begin
          Application.MessageBox('该身份证还在住院 不能重复登记住院', '提示', 
            MB_OK + MB_ICONINFORMATION);
          if sfzhm.CanFocus then
          sfzhm.SetFocus;
          sfzhm.Clear;
          Exit;
        end;
        
        //根据输入的省份证号码填充生日和年龄
        try
          id := TIdentity.create(sfzhm.Text);
        except
          application.MessageBox( '身份证号码不正确！', '提示', 0 + 16 );
          if sfzhm.CanFocus then
          sfzhm.SetFocus;
          Exit;
        end;
        if id.Gender = '男' then brxb.ItemIndex := 0 else brxb.ItemIndex := 1;
        zy_brxb := id.Gender;
        dtp1.Date := id.Birthday;
        BBirthdayInputed := True;
        brnl.Text := id.AgeString;
      end;
      if  trim( sfzhm.text ) = '' then
      begin
        BBirthdayInputed := false;
      end;
      
end;

procedure Tfrm_zydj.mzysExit( Sender: TObject );
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
    if trim( mzys.text ) = '' then
    begin
      application.MessageBox( '输入门诊医生', '提示', mb_ok );
      //mzys.setfocus;
    end
    else
    begin
      resultf := 'mc';
      tempcom := mzys;
      if zy_mzys <> '' then
      begin
        dm_data.qry_pub.close;
        dm_data.qry_pub.SQL.Text := 'select * from sys_czy where dm =' + #39 +
          zy_mzys + #39 +
          ' and ltrim(rtrim(mc))=' + #39 + trim( mzys.Text ) + #39;
        dm_data.qry_pub.Open;
        if dm_data.qry_pub.RecordCount = 1 then
        begin
          exit;
        end;
      end;
      if finditems( 'sys_czy', 'dm', 'pym', 'mc', '医生姓名', mzys ) then
      try
        zy_mzys := jbqk_cx['dm'];
      except
      end;
    end;
end;


procedure Tfrm_zydj.Panel1Click(Sender: TObject);
begin

end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zyyj.ReadCard_CallBack
  作者:      yangshuai
  日期:      2017.10.16
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zydj.ReadCard_CallBack;
var
  Key: Char;
begin
  if proc_cx_jzklx( Auto_CardInfo.CardNo, true ) then
  begin
    tmh.Text := pub_bdktmh;
    Key := #13;
    tmhKeyPress( tmh, Key );
  end
  else
  begin
    MessageBox( Handle, '此卡号未登记！', '错误', MB_OK + MB_ICONSTOP );
    Exit;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zydj.tmhDblClick
  作者:      yangshuai
  日期:      2017.10.16
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zydj.tmhDblClick(Sender: TObject);
var
  Key: Char;
  v_jkkkh:string;
begin
  if pub_jkkTypebz =1 then
  begin
    if Assigned( CardInfo ) then
    begin
      Zddqjjk_Start( 100, frm_zydj.ReadCard_CallBack );
    end;
  end else  if pub_jkkTypebz = 2 then
  begin
    json:=InfoJson(1);//读取健康卡信息
    try
     // tmh.Text := Trim(json['CardInfo.CardNo'].AsString );
      pub_bdkh := json['CardInfo.CardNo'].AsString;
      v_jkkkh := Trim(json['CardInfo.CardNo'].AsString );
      if proc_cx_jzklx( trim( pub_bdkh ) )  then
      begin
        tmh.Text := pub_bdktmh;
        lb_khy.Caption := '绑定居民健康卡号：' + v_jkkkh;
        lb_khy.Visible := true;
      end else
      begin
        Application.MessageBox( '此卡未注册成健康卡', '系统提示',
        MB_OK + MB_ICONWARNING );
        exit;
      end;
      Key:=  #13 ;
      tmhKeyPress(tmh, key );
    except
      on e:Exception do
      begin
         Application.MessageBox( pchar('健康卡号读取失败，请重新操作！错误：'+e.Message), '系统提示',
      MB_OK + MB_ICONWARNING );
      end;

    end;
  end;
end;

procedure Tfrm_zydj.tmhEnter( Sender: TObject );
begin
  mzys.Text := '';
  ryks.text := '';
  Button2.Enabled := True;
end;

procedure Tfrm_zydj.bahExit( Sender: TObject );
begin
  zy_bah := trim( bah.Text );
end;

procedure Tfrm_zydj.brdwdzEnter( Sender: TObject );
begin
  application.CreateForm( Tfrm_brdz, frm_brdz );
  try
    frm_brdz.ShowModal;
  finally
    frm_brdz.free;
  end;
end;

//检查是否含有非法字符方法  calmhawk 06-06-06
procedure Tfrm_zydj.cbb_tsbsExit(Sender: TObject);
begin
  if ( not ( b_cancel.Focused or b_close.focused ) ) then
  begin
    resultf := 'mc';
    tempcom := cbb_tsbs;
    if  finditems( 'sys_tsbs', 'dm', 'dm', 'mc', '特殊标识', cbb_tsbs ) then
    begin
      zy_tsbs :=jbqk_cx['dm'];
    end else
    begin
      zy_tsbs:='';
    end;
  end
end;

procedure Tfrm_zydj.cbb_tsbsKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    selectnext( activecontrol as Twincontrol, true, true );
  end;
end;

function Tfrm_zydj.checkIn( str: string ): integer;
var
  Matches, MyRegExp: OleVariant;
  NewTestStr, TestStr: string;
begin
  MyRegExp := CreateOleObject( 'VBScript.RegExp' );
  MyRegExp.Global := True;
  MyRegExp.IgnoreCase := True;

  MyRegExp.Pattern := '[^\w^\u4E00-\u9FA5\-\·]';
  //匹配 非,(数字,大小写字母,中文字符)
  if MyRegExp.Test( trim( str ) ) then
  begin
    result := 1
  end
  else
  begin
    result := 0;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zydj.chk1Click
  作者:      yangshuai
  日期:      2016.11.25
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zydj.chk1Click(Sender: TObject);
var
  v_fylbmc:string;
begin
  if chk1.Checked = True then
  begin

    Application.CreateForm(Tfrm_sfzhmyz,frm_sfzhmyz);
    try
      //0033壤塘医院
      if pub_yydm<>'0033' then
      begin
        if (frm_sfzhmyz.ShowModal = mrOk) and (frm_sfzhmyz.jzfpbrbz) then
        begin
          dm_data.Qry_pub.close;
          dm_data.Qry_pub.SQL.Text := 'select dm from sys_fylb where mc  like ' + #39 + '%精准扶贫%' + #39 ;
          dm_data.Qry_pub.Open;
          if dm_data.qry_pub.RecordCount > 0 then
          begin
            v_fylbmc := Trim(dm_data.qry_pub.FieldByName('mc').AsString);
          end;
          if  fylb.Items.IndexOf(v_fylbmc) <> -1 then
          begin
            fylb.ItemIndex := fylb.Items.IndexOf(v_fylbmc);//精准扶贫类别
          end;
        end;
      end  else
      begin
        frm_sfzhmyz.showmodal;
      end;
    finally
      frm_sfzhmyz.Free;
    end;

  end;
end;

procedure Tfrm_zydj.CmbbfkfsKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if ryyj.CanFocus then
      ryyj.SetFocus;
  end;
end;

initialization
 // RegisterClass( Tfrm_zydj );

end.

