unit p_mzyj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBTables, Db, ComCtrls, Grids, DBGrids, QuickRpt,
  Qrctrls, ExtCtrls, ADODB, DBCtrls, variants, sldll, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, XMLIntf, XMLDoc, Menus,
  RzButton, RzRadChk;

type
  Tfrm_mzyj = class( TForm )
    ds_yjmxcx: TDataSource;
    Label1: TLabel;
    tmh: TEdit;
    Bevel1: TBevel;
    Label7: TLabel;
    sjbh: TEdit;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    brxm: TEdit;
    brxb: TEdit;
    yjsm: TEdit;
    brdz: TEdit;
    csrq: TDateTimePicker;
    ksmc: TEdit;
    sfzhm: TEdit;
    ts: TEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    DBGrid1: TDBGrid;
    sp_yjmxcx: TADOStoredProc;
    sp_cx_kyh: TADOStoredProc;
    qry_fkfs: TADOQuery;
    Bevel4: TBevel;
    db_fkfs: TDBLookupComboBox;
    Label5: TLabel;
    ds_fkfs: TDataSource;
    DBGrid2: TDBGrid;
    Label11: TLabel;
    zyj: TEdit;
    ok2: TBitBtn;
    b_yjmx: TBitBtn;
    b_cancel: TBitBtn;
    b_save: TBitBtn;
    IdHTTP1: TIdHTTP;
    sp_in_mzyj: TADOStoredProc;
    mmzyyj: TMainMenu;
    mniDBBL: TMenuItem;
    ds_brxx: TDataSource;
    Label8: TLabel;
    lxdh: TEdit;
    zfy: TEdit;
    Label12: TLabel;
    syje: TEdit;
    Label14: TLabel;
    procedure FormShow( Sender: TObject );
    procedure FormKeyPress( Sender: TObject; var Key: Char );
    procedure b_saveClick( Sender: TObject );
    procedure yjsmKeyPress( Sender: TObject; var Key: Char );
    procedure b_cancelClick( Sender: TObject );
    procedure b_yjmxClick( Sender: TObject );
    procedure DBGrid1DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState );
    procedure tmhKeyPress( Sender: TObject; var Key: Char );
    procedure tmhEnter( Sender: TObject );
    procedure tmhExit( Sender: TObject );
    procedure yjsmExit( Sender: TObject );
    procedure yjsmEnter( Sender: TObject );
    procedure db_fkfsEnter( Sender: TObject );
    procedure db_fkfsExit( Sender: TObject );
    procedure db_fkfsKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure ok2Click( Sender: TObject );
    procedure DBGrid2KeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid2Exit( Sender: TObject );
    procedure mniDBBLClick(Sender: TObject);
  private
    { Private declarations }
    zy_tmh: string; //סԺ�����
    zy_zyh: string; //סԺסԺ��
    zy_yjje: Double; //סԺѺ���ܶ�
    zy_yjbz: boolean; //סԺԤ����־
    zy_yjxs: string; //סԺ���ʽ
    zy_yjxsmc: string;
    zy_ksdm: string; //סԺ���Ҵ���
    zy_sjbh: string; //Ԥ��΢�����
    zy_sjh: string; //Ԥ���վݱ��
    zy_brxm: string; //סԺ��������
    zy_ksmc: string; //סԺ��������
    zy_brxb: string; //סԺ�����Ա�
    zy_fylbdm: string; //�������
    zy_zdjf: Real;
    zy_yjscdbbl:Real; //Ԥ�����ɵ�������
    procedure proc_getbyxx;
    function SaveCheck: Boolean;
    function SaveCard: boolean;
    function SaveHis: Boolean;
  public
    procedure proc_get_sjbh;
    procedure ReadCard_CallBack;
    { Public declarations }
  end;

var
  frm_mzyj: Tfrm_mzyj;

implementation

uses p_repo_yjmx, P_login, p_func, p_dm, p_main, p_zysf_print_service, share_sf,
  p_mzsjBj, p_posxz, PosService, softpos, superobject, jkk_func, bsjk,
  p_zyyj_dbblsz, p_icf;    

{$R *.DFM}

procedure Tfrm_mzyj.proc_get_sjbh;
var
  bh: integer;
begin
  try
    with dm_data.qry_pub do
    begin
      close;
      sql.clear;
      sql.text := 'select sjzh-sybh sjsl,sybh,sjqh from sys_sjlymx' +
        ' where lyr=' + '''' + pub_czydm + '''' +
        ' and   qybz=1 ' +
        ' and   tybz=0 ' +
        ' and   sjlb=' + '''' + '07' + '''';
      open;
    end;
    if ( dm_data.qry_pub['sjsl'] = 0 ) or ( dm_data.qry_pub['sjsl'] = null ) then
    begin
      MessageDlg( '�վ������꣬���ڽ��˳���ģ�飬���������վݣ�', mtWarning,
        [mbOK], 0 );
      postmessage( handle, wm_close, 0, 0 );
      abort;
    end
    else
    begin
      if dm_data.qry_pub['sybh'] = 0 then
      begin
        bh := dm_data.qry_pub['sjqh'];
      end
      else
      begin
        bh := dm_data.qry_pub['sybh'] + 1;
      end;
      zy_sjh := formatex( bh, 9 );
      sjbh.Text := zy_sjh;
    end;
  except
  end;
end;

procedure Tfrm_mzyj.ReadCard_CallBack;
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
    MessageBox( Handle, '�˿���δ�Ǽǣ�', '����', MB_OK + MB_ICONSTOP );
    Exit;
  end;
end;

function Tfrm_mzyj.SaveCard: boolean;
var
  res: ToutStr;
  posh, v_str, xmlstr, pos_zfy: string;
  sout: jyRes;
  t: TStringList;
  BRepeat: boolean;
  jo: ISuperObject;
  srMDoc: TXMLDocument;
  scMDoc: TXMLDocument;
  aNode, aNode1, aNode2: IXMLNode;
begin
  OutputDebugString( '����ˢ����' );
  result := False;
  // ѡ�����п�
  posh := '';
  Application.CreateForm( Tfrm_posxz, frm_posxz );
  try
    frm_posxz.ShowModal;
    posh := frm_posxz.posh;
  finally
    frm_posxz.Free;
  end;
  // ����ѡ����ϡ�
  case strtoint( posh ) of
    1: // ����
      begin
        // ����Ƿ�ˢ������
        with DM_data.qry_pub do
        begin
          close;
          sql.clear;
          sql.text := 'select yhsk from sys_xt_kg';
          open;
        end;
        if not dm_data.qry_pub.FieldByName( 'yhsk' ).AsBoolean then
        begin
          Application.MessageBox( PChar( 'δ����yhskϵͳ�������޷�ˢ���п���' ),
            PChar( '����' ), MB_OK + MB_ICONSTOP );
          Exit;
        end;
        repeat
          BRepeat := False;
          res := hkxf( zy_yjje );
          // �����벻����'000000'����ʾ����ʧ��
          if not ( res.fhm = '000000' ) then
          begin
            // �ж�����
//            if res.fhm='51' then
//            begin
//              if pub_yydm='0015' then
//              begin
//                Application.MessageBox(PChar('���п����㣬����תΪ�ֽ�֧����'),
//                  PChar('����'), MB_OK + MB_ICONSTOP);
//                result:=True;
//                Exit;
//              end;
//            end;
            case Application.MessageBox( PChar( '����ˢ��ʧ�ܣ��Ƿ����ԣ�' ),
              PChar( '����' ), MB_YESNO + MB_ICONQUESTION ) of
              IDYES: BRepeat := True;
              IDNO: BRepeat := False;
            end;
          end;
          // �п�����ˢ���ɹ��˳����п����Ƿ�������
        until ( not BRepeat );

        // ���׳ɹ���д���нӿڷ�����ϸ��
        if res.fhm = '000000' then
        begin
          try
            with DM_data.qry_pub do
            begin
              Close;
              // ���нӿڷ�����ϸ
              SQL.Text := 'select * from bkjk_fymx where 1=2';
              Open;
              Append;
              FieldByName( 'zyh' ).Value := zy_zyh;
              FieldByName( 'tmh' ).Value := zy_tmh;
              FieldByName( 'xm' ).Value := trim( brxm.Text );
              FieldByName( 'zfy' ).Value := FloatToStr( zy_yjje );
              FieldByName( 'sfczy' ).Value := pub_czydm;
              FieldByName( 'kh' ).Value := res.kh;
              FieldByName( 'lsh' ).Value := res.poslsh;
              FieldByName( 'jyckh' ).Value := res.jsckh;
              FieldByName( 'zdbh' ).Value := res.zdh;
              FieldByName( 'sjbh' ).Value := zy_sjbh;
              FieldByName( 'sjh' ).Value := zy_sjh;
              FieldByName( 'fylb' ).Value := '��Ԥ��';
              FieldByName( 'yhfylb' ).Value := '02';
              Post;
              UpdateBatch( arAll );
            end;
          except
            on e: Exception do
            begin
              addTransLog( e.Message );
              ShowMessage( e.Message );
              exit;
            end;
          end;
        end
        else
        begin
          Application.MessageBox( PChar( '����ʧ�ܣ�ԭ�򣺽���ˢ��ʧ���ҷ������ԡ�' ),
            PChar( '����' ),
            MB_OK + MB_ICONSTOP );
          exit;
        end;
      end;
    2: // ũ��
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
          Application.MessageBox( pchar( 'ȱ������POS�ӿڶ�̬��!' + #13 +
            v_str ),
            'ϵͳ��ʾ', MB_OK + MB_ICONEXCLAMATION );
          exit;
        end;
        repeat
          BRepeat := False;
          try
            sout := nh_hkxf( zy_yjje );
          except
            Application.MessageBox( '����:�������нӿ�ʧ�ܣ�', '��ʾ',
              MB_ICONHAND );
            Exit;
          end;
          // ˢ��ʧ�ܣ�ѯ���Ƿ�����
          if not ( sout.zt = '00' ) then
          begin
            if sout.zt = '51' then
            begin
              if pub_yydm = '0015' then
              begin
                if Application.MessageBox( Pchar( '���п����㣬�Ƿ�תΪ�ֽ�֧����' + #13#10 +
                  res.fhm + res.fhmhy + #13#10 +
                  '�� ���ǡ� תΪ�ֽ�֧����' + #13#10 +
                  '�� ���� ȡ�����β�����' ), 'ѯ��', MB_YESNO +
                  MB_ICONQUESTION ) = IDYES then
                begin
                  result := True;
                  Exit;
                end
                else
                begin
                  Exit;
                end;
              end;
            end;
            case Application.MessageBox( Pchar( '���л���ʧ��!�Ƿ����ԣ�' ),
              '��ʾ', MB_YESNO +
              MB_ICONQUESTION ) of
              IDYES: BRepeat := True;
              IDNO: BRepeat := False;
            end;
          end;
        until ( not BRepeat );
        // ˢ���ɹ���д�����нӿڷ�����ϸ��
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
              try
                FieldByName( 'kh' ).Value := sout.kh;
              except
              end;
              try
                FieldByName( 'lsh' ).Value := sout.lsh;
              except
              end;
              FieldByName( 'sjbh' ).Value := zy_sjbh;
              FieldByName( 'sjh' ).Value := zy_sjh;
              try
                FieldByName( 'jyckh' ).Value := sout.yhzdh;
              except
              end;
              FieldByName( 'fylb' ).Value := '��Ԥ��';
              try
                FieldByName( 'yhfylb' ).Value := '01';
              except
              end;
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
              Parameters.ParamByName( '@jylb' ).Value := '��Ԥ��';
              ExecProc;
            end;
          except
            on e: Exception do
            begin
              addTransLog( e.Message );
              ShowMessage( e.Message );
              exit;
            end;
          end;
        end
        else
        begin
          Application.MessageBox( PChar( '����ʧ�ܣ�ԭ��ũ��ˢ��ʧ���ҷ������ԡ�' ),
            PChar( '����' ),
            MB_OK + MB_ICONSTOP );
          exit;
        end;
      end;
    3: //��ҵ����POS
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
          //�˴�����WEB�����͡�
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
            DM_data.qry_pub.FieldByName( 'fylb' ).Value := '��Ԥ��';
            DM_data.qry_pub.FieldByName( 'yhfylb' ).Value := '03';
            DM_data.qry_pub.Post;
            DM_data.qry_pub.UpdateBatch( arAll );
            Application.MessageBox( '��ʾ:POSˢ���ɹ���', '��ʾ', MB_OK );
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
                  exit;
                end;
              end;
            end;
          end;
        end
        else
        begin
          Application.MessageBox( PChar( '����ʧ�ܣ�ԭ������ˢ��ʧ�ܣ���' ),
            PChar( '����' ),
            MB_OK + MB_ICONSTOP );
          IdHTTP1.Disconnect;
          exit;
        end;
        IdHTTP1.Disconnect;
      end
  else
    begin
      Application.MessageBox( PChar( 'posh���󣬲�֧�ֵ����У��޷�ˢ����' +
        #13#10 + '����ʧ�ܣ�' ), PChar( '����' ), MB_OK + MB_ICONSTOP +
        MB_DEFBUTTON2 );
      exit;
    end;
  end;
  result := True;
end;

function Tfrm_mzyj.SaveCheck: Boolean;
begin
  result := false;
  with dm_data.qry_pub do
  begin
    close;
    sql.clear;
    sql.text := 'select * from sys_jzzt';
    open;
    if fieldbyname( 'jzzt' ).AsBoolean then
    begin
      application.MessageBox( 'ϵͳ���ڽ�ת���ݣ����Ժ�!', '��ʾ', 0 + 48 );
      Exit;
    end;
  end;
  // zy_yjje ��yjsm.onexit �б���ֵ
  if zy_yjje <= 0 then
  begin
    application.MessageBox( '��������󣡣�', '��ʾ', 0 + 16 );
    yjsm.SelectAll;
    yjsm.SetFocus;
    Exit;
  end;
  // ���ʽ zy_yjxs ��db_fkfs�и�ֵ
  if trim( zy_yjxs ) = '' then
  begin
    application.MessageBox( '�����븶�ʽ����', '��ʾ', 0 + 16 );
    db_fkfs.SetFocus;
    Exit;
  end;
  result := True;
end;

function Tfrm_mzyj.SaveHis: Boolean;
begin
  Result := false;
  sp_in_mzyj.close;
  sp_in_mzyj.Parameters.ParamByName( '@khid' ).value := sp_cx_kyh.fieldbyname('id').asinteger;
  sp_in_mzyj.Parameters.ParamByName( '@tmh' ).value := sp_cx_kyh.fieldbyname('tmh').asstring;
  sp_in_mzyj.Parameters.ParamByName( '@brxm' ).value := sp_cx_kyh.fieldbyname('brxm').asstring;
  sp_in_mzyj.Parameters.ParamByName( '@brxb' ).value := sp_cx_kyh.fieldbyname('brxb').asstring;
  sp_in_mzyj.Parameters.ParamByName( '@yjje' ).value := strtofloat(yjsm.text);
  sp_in_mzyj.Parameters.ParamByName( '@yjxs' ).value := zy_yjxs;
  sp_in_mzyj.Parameters.ParamByName( '@sfczy' ).value := pub_czydm;
  sp_in_mzyj.Parameters.ParamByName( '@sjlb' ).value := '07';
  sp_in_mzyj.Parameters.ParamByName( '@sjh' ).value := zy_sjbh;
  sp_in_mzyj.Parameters.ParamByName( '@sczt' ).value := 'a';
  sp_in_mzyj.execproc;
  if sp_in_mzyj.Parameters.ParamByName( '@sczt' ).value <> '1'  then
  begin
    application.MessageBox( '����ʧ�ܣ�HISϵͳ���T�\Ԥ��ʧ�ܣ�', '��ʾ', 0 + 16 );
    OutputDebugString( 'HISϵͳ���T�\Ԥ��ʧ�ܣ�mzsf_mzyjʧ�ܣ�' );
    Exit;
  end;


  Result := True;
end;

procedure Tfrm_mzyj.FormShow( Sender: TObject );
begin
  tmh.text := '';
  sjbh.text := '';
  zy_yjje := 0;
  proc_get_sjbh;
  tmh.SetFocus;

end;

procedure Tfrm_mzyj.mniDBBLClick(Sender: TObject);
begin
  try
    Application.CreateForm(Tfrm_zyyj_dbblsz, frm_zyyj_dbblsz);
    frm_zyyj_dbblsz.ShowModal;
  finally
    frm_zyyj_dbblsz.Free;
  end;
end;

procedure Tfrm_mzyj.FormKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    selectnext( activecontrol as Twincontrol, true, true );
end;

procedure Tfrm_mzyj.b_saveClick( Sender: TObject );
  procedure restore;
  begin
    ts.Text := floattostr( zy_yjje );
    b_save.Enabled := false;
    b_cancel.Enabled := false;
    panel1.Enabled := false;
    tmh.Enabled := true;
    tmh.SelectAll;
    tmh.text := '';
    tmh.SetFocus;
  end;
label
  _on_jy_Err, _on_jy_ErrTry, _on_syy_ErrTry1, _on_jy_Err1;
var
  ZrTxt, vStr: string;
  lists: TStringList;
begin
  if not SaveCheck then
    exit;
  // ��ȡ�վݺ�

  zy_sjbh := get_sjh( pub_czydm );
  // zy_yjxs=4 ��ʾ����ˢ��
  b_save.Enabled := false;
  b_cancel.Enabled := false;
  panel1.Enabled := false;
          with DM_data.qry_pub do
        begin
          close;
          sql.clear;
          sql.text := 'select yhsk from sys_xt_kg';
          open;
        end;
  if (zy_yjxs = '4') and (dm_data.qry_pub.FieldByName( 'yhsk' ).AsBoolean) then
  begin
    if not SaveCard then
    begin
      restore;
      exit;
    end;
  end;
  // HISϵͳд����

  if not SaveHis then
  begin
    restore;
    exit;
  end;
  b_save.Enabled := false;
  b_cancel.Enabled := false;
  panel1.Enabled := false;
  tmh.Enabled := true;
  tmh.SelectAll;
  tmh.text := '';
  tmh.SetFocus;
  // ��ӡ����
 // OutputDebugString( Pchar( format( 'Print:%s...%s', [pub_yydm, pub_zydylb] ) ) );
  begin
    //��ӡ����Ԥ��
  end;
  sp_yjmxcx.Active := false;
  sp_yjmxcx.Parameters.ParamByName( '@khid' ).value := sp_cx_kyh.fieldbyname('id').asinteger;
  sp_yjmxcx.Open;
  proc_get_sjbh;
end;

procedure Tfrm_mzyj.yjsmKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    if ( b_save.Enabled = true ) then
    begin
      b_save.SetFocus;
    end;
  end;
end;

procedure Tfrm_mzyj.b_cancelClick( Sender: TObject );
begin
  zy_yjje := 0;
  yjsm.Text := '';
  zy_yjxs := '';
  ts.Text := '';
  b_save.Enabled := false;
  b_cancel.Enabled := false;
  panel1.Enabled := false;
  tmh.Enabled := true;
  tmh.SelectAll;
  tmh.SetFocus;
end;

procedure Tfrm_mzyj.b_yjmxClick( Sender: TObject );
begin
  sp_yjmxcx.Active := false;
  sp_yjmxcx.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_yjmxcx.Open;

  sp_cx_kyh.Active := false;
  sp_cx_kyh.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_cx_kyh.Open;

  application.CreateForm( Tfrm_repo_yjmx, frm_repo_yjmx );
  frm_repo_yjmx.yymc.Caption := pub_yymc;
  frm_repo_yjmx.QuickRep1.Preview;
  try
  frm_repo_yjmx.Free except
  end;
end;

procedure Tfrm_mzyj.DBGrid1DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState );
begin
//  if sp_yjmxcx['tfbz'] = true then
//  begin
//    dbgrid1.Canvas.Brush.Color := cllime;
//    dbgrid1.Canvas.Font.color := clblue;
//  end;
  dbgrid1.DefaultDrawColumnCell( rect, datacol, column, state );
end;

procedure Tfrm_mzyj.tmhKeyPress( Sender: TObject; var Key: Char );
var
  TmpInt: integer;
begin
  if ( key = #13 ) then
    if trim( tmh.text ) <> '' then
    begin
      if TryStrToInt( Trim( tmh.text ), TmpInt ) then
      begin
      try
        tmh.Text := FormatEx( TmpInt, 9 );
      except
        application.MessageBox( '�����������', '��ʾ', 0 + 16 );
        abort;
      end;
      end;
      zy_tmh := tmh.Text;
      tmh.text := zy_tmh;
      sp_cx_kyh.Active := false;
      sp_cx_kyh.Parameters.ParamByName( '@tmh' ).value := zy_tmh;
     //sp_cx_kyh.Parameters.ParamByName( '@tmh' ).value := zy_zyh;
      sp_cx_kyh.Open;
      if sp_cx_kyh.recordcount=0 then
       begin
        application.MessageBox( 'δ�ҵ����Ñ���', '��ʾ', 0 + 16 );
        abort;
       end
      else
      if sp_cx_kyh.recordcount=1 then
      proc_getbyxx
      else
        begin
          dbgrid2.left := tmh.left;
          dbgrid2.top := tmh.top + tmh.height;
          dbgrid2.Visible := true;
          dbgrid2.SetFocus;
        end;

      b_yjmx.Enabled := not sp_yjmxcx.IsEmpty;
    end;
end;

procedure Tfrm_mzyj.proc_getbyxx;
begin

  sp_yjmxcx.Active := false;
  sp_yjmxcx.Parameters.ParamByName( '@khid' ).value := sp_cx_kyh.fieldbyname( 'id' ).asstring;
  sp_yjmxcx.Open;



  csrq.DateTime := sp_cx_kyh.fieldbyname( 'csrq' ).asdatetime;
  brxm.Text := Trim(sp_cx_kyh.fieldbyname( 'brxm' ).asstring);
  zy_brxm := sp_cx_kyh.fieldbyname( 'brxm' ).asstring;
  zy_brxb := sp_cx_kyh.fieldbyname( 'brxb' ).asstring;
  brxb.Text := sp_cx_kyh.fieldbyname( 'brxb' ).asstring;
  zy_fylbdm := sp_cx_kyh.fieldbyname( 'fylb' ).asstring;
  sfzhm.Text := sp_cx_kyh.fieldbyname( 'sfzhm' ).asstring;
  lxdh.Text := sp_cx_kyh.fieldbyname( 'brdh' ).asstring;
  brdz.Text := sp_cx_kyh.fieldbyname( 'brdz' ).asstring;
  zfy.Text := floattostr( sp_cx_kyh.fieldbyname( 'zfy' ).asfloat );
  zyj.Text := floattostr( sp_cx_kyh.fieldbyname( 'yjze' ).asfloat );
  syje.Text := floattostr( sp_cx_kyh.fieldbyname( 'syje' ).asfloat );

  zy_yjje := 0;
  yjsm.Text := '';
  zy_yjxs := '';
  tmh.Enabled := false;
  panel1.Enabled := true;
  db_fkfs.SetFocus;
  b_save.Enabled := true;
  b_cancel.Enabled := true;
end;

procedure Tfrm_mzyj.tmhEnter( Sender: TObject );
begin
  frm_func.changecolor( Sender );

end;

procedure Tfrm_mzyj.tmhExit( Sender: TObject );
var
  key: char;
begin
  frm_func.restorecolor( Sender );
  key := #13;
  tmhKeyPress( Sender, key );
end;

procedure Tfrm_mzyj.yjsmExit( Sender: TObject );
begin
  frm_func.restorecolor( Sender );
  if not TryStrToFloat( trim( yjsm.text ), zy_yjje ) then
  begin
    if not ( ( b_cancel.Focused ) or ( ok2.Focused ) ) then
    begin
      Application.MessageBox( 'Ԥ������ʽ���Ϸ�', '����', MB_OK + MB_ICONSTOP );
      yjsm.SetFocus;
    end;
  end
  else
    b_save.Enabled := true;
end;

procedure Tfrm_mzyj.yjsmEnter( Sender: TObject );
begin
  frm_func.changecolor( Sender );
end;

procedure Tfrm_mzyj.db_fkfsEnter( Sender: TObject );
begin
  frm_func.changecolor( Sender );
  qry_fkfs.open;
  db_fkfs.KeyValue := '1';
end;

procedure Tfrm_mzyj.db_fkfsExit( Sender: TObject );
begin
  frm_func.restorecolor( Sender );
  zy_yjxs := qry_fkfs['dm'];
  zy_yjxsmc := qry_fkfs['dm'];
end;

procedure Tfrm_mzyj.db_fkfsKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
    yjsm.SetFocus;
  if key = 49 then
    db_fkfs.KeyValue := '1';
  if key = 50 then
    db_fkfs.KeyValue := '2';
  if key = 51 then
    db_fkfs.keyvalue := '3';
end;

procedure Tfrm_mzyj.ok2Click( Sender: TObject );
begin
  close;
end;

procedure Tfrm_mzyj.DBGrid2KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    proc_getbyxx;
end;

procedure Tfrm_mzyj.DBGrid2Exit( Sender: TObject );
begin
  dbgrid2.visible := false;
end;
initialization
  RegisterClass( Tfrm_mzyj );
end.

