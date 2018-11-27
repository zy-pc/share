unit p_qfgl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, cxPC,
  cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, OleServer, grproLib_TLB, p_obj, p_func, OleCtrls;

type
  Tfrm_qfgl = class( TForm )
    pnl_tj: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    dtp_ksrq: TDateTimePicker;
    dtp_jsrq: TDateTimePicker;
    btnTj: TButton;
    btnPrint: TButton;
    pnl1: TPanel;
    cxgrd2: TcxGrid;
    cxgrdbtblvwGrid1DBTableView2: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView2Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView2Column6: TcxGridDBColumn;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    sp1: TADOStoredProc;
    sp_lbtj: TADOStoredProc;
    ds1: TDataSource;
    sp_Aksckfyqk: TADOStoredProc;
    ds_Aksckfyqk: TDataSource;
    sp_Afydxckfyqk: TADOStoredProc;
    sp_Abrckfyqk: TADOStoredProc;
    ds_Afydxckfyqk: TDataSource;
    ds_Abrckfyqk: TDataSource;
    pnl2: TPanel;
    pnl3: TPanel;
    lbl_brqyyfy: TLabel;
    lbl_yyqbrfy: TLabel;
    lbl_sbtcfy: TLabel;
    lbl_nhbzfy: TLabel;
    lbl_zfbrqf: TLabel;
    btn_MXPrint: TButton;
    grdprprt_fyhz: TGridppReport;
    grdprprt_Aks: TGridppReport;
    grdprprt_Adx: TGridppReport;
    grdprprt_Abr: TGridppReport;
    lbl3: TLabel;
    btn_Czyhz: TButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxgrd5: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdbclmncxgrdbtblvw1Column1: TcxGridDBColumn;
    cxgrdbclmn1: TcxGridDBColumn;
    cxgrdbclmn2: TcxGridDBColumn;
    cxgrdbclmn3: TcxGridDBColumn;
    cxgrdbclmn4: TcxGridDBColumn;
    cxgrdbclmn5: TcxGridDBColumn;
    cxgrdbclmn6: TcxGridDBColumn;
    cxgrdbclmn7: TcxGridDBColumn;
    cxgrdbclmn8: TcxGridDBColumn;
    cxgrdbclmn9: TcxGridDBColumn;
    cxgrdbclmn10: TcxGridDBColumn;
    cxgrdlvl1: TcxGridLevel;
    cxTabSheet1: TcxTabSheet;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxgrd3: TcxGrid;
    cxgrdbtblvwGrid1DBTableView3: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView3Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView3Column3: TcxGridDBColumn;
    cxgrdlvlGrid1Level3: TcxGridLevel;
    grdprprt_czyhz: TGridppReport;
    sp_czyhz: TADOStoredProc;
    ds2: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
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
    qry_jgqfhx: TADOQuery;
    btn_jgqfhx: TButton;
    cxgrdbclmnGrid1DBTableView2Column7: TcxGridDBColumn;
    procedure FormCreate( Sender: TObject );
    procedure btn1Click( Sender: TObject );
    procedure btnTjClick( Sender: TObject );
    procedure cxTabSheet1Show( Sender: TObject );
    procedure cxTabSheet2Show( Sender: TObject );
    procedure FormKeyPress( Sender: TObject; var Key: Char );
    procedure cxTabSheet3Show( Sender: TObject );
    procedure cxgrdbtblvwGrid1DBTableView2DblClick( Sender: TObject );
    procedure btn_MXPrintClick( Sender: TObject );
    procedure btnPrintClick( Sender: TObject );
    procedure btn_CzyhzClick( Sender: TObject );
    procedure btn_jgqfhxClick(Sender: TObject);
  private
    procedure GetMx( index: Integer );
    procedure Print_Mx( index: Integer );
    procedure Print_AksckfyMX( );
    procedure Print_AdxckfyMx( );
    procedure Print_AbrqfckfyMX( );
    procedure Print_Czyfyhz( );

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_qfgl: Tfrm_qfgl;
  res: string;
  fyhzBb: TCusBb; //���û���
  AksckfyBb: TCusBb; //������
  AdxckfyBb: TCusBb; //������
  AbrqfckfyBb: TCusBb; //������
  Czyhz: TCusBb; //����Ա����
  PageIndex: Integer;
const
  fyhzdm = '010311'; //���û��ܴ���
  AksckfyBbdm = '010312'; //�����Ҵ���
  AdxckfyBbdm = '010313'; //���������
  AbrqfckfyBbdm = '010314'; //�����˴���
  Czyhzdm = '010315'; //����Ա���ܴ���
implementation

uses p_dm;

{$R *.dfm}

procedure Tfrm_qfgl.btn1Click( Sender: TObject );
begin

end;
//��ӡ����

procedure Tfrm_qfgl.btnPrintClick( Sender: TObject );
begin
  Print_Mx( 3 );
end;

procedure Tfrm_qfgl.btnTjClick( Sender: TObject );
begin
  //�ر��������ݼ�
  sp1.Close;
  sp_lbtj.Close;
  sp_Aksckfyqk.Close;
  sp_Afydxckfyqk.Close;
  sp_Abrckfyqk.Close;
  //�ж��û�ѡ��������Ƿ�Ϸ�
  if DateTimeToStr( dtp_ksrq.DateTime ) <= DateTimeToStr( dtp_jsrq.DateTime ) then
  begin
    //ͳ�Ʋ���ǷҽԺ��ҽԺǷ���˵ķ���
    sp1.Parameters.ParamByName( '@ksrq' ).Value := formatdatetime( 'yyyymmdd', dtp_ksrq.DateTime );
    sp1.Parameters.ParamByName( '@jsrq' ).Value := formatdatetime( 'yyyymmdd', dtp_jsrq.DateTime );
    sp1.Open;
    //���������ͳ��
    sp_lbtj.Parameters.ParamByName( '@ksrq' ).Value := formatdatetime( 'yyyymmdd', dtp_ksrq.DateTime );
    sp_lbtj.Parameters.ParamByName( '@jsrq' ).Value := formatdatetime( 'yyyymmdd', dtp_jsrq.DateTime );
    sp_lbtj.Open;
    //Ϊҳ���lable������
    lbl_brqyyfy.Caption := '����ǷҽԺ���ã�' + sp1.FieldByName( 'brqyyfy' ).AsString;
    lbl_yyqbrfy.Caption := 'ҽԺǷ���˷��ã�' + sp1.FieldByName( 'yyqbrfy' ).AsString;
    lbl_sbtcfy.Caption := '�籣ͳ����ã�' + sp1.FieldByName( 'sbtcfy' ).AsString;
    lbl_nhbzfy.Caption := 'ũ�ϱ��˷��ã�' + sp1.FieldByName( 'nhbzfy' ).AsString;
    lbl_zfbrqf.Caption := '�ԷѲ���Ƿ�ѣ�' + sp1.FieldByName( 'zfbrqf' ).AsString;

  end
  else
  begin
    Application.MessageBox( '��ʼ���ڲ��ܴ��ڽ������ڣ�', '����', 0 );
    dtp_ksrq.SetFocus;
  end;

  //��������ǿ�ҽԺ ����0067���ṩ������Ƿ�Ѻ�����
  if pub_yydm = '0067' then
  begin
    btn_jgqfhx.Visible := True;
    cxgrdbtblvwGrid1DBTableView2.GetColumnByFieldName('jgqfhxje').Visible:=True;
  end; 

end;

procedure Tfrm_qfgl.btn_CzyhzClick( Sender: TObject );
begin
  //
  GetMx( 3 );
  Print_Czyfyhz;
end;

procedure Tfrm_qfgl.btn_jgqfhxClick(Sender: TObject);
begin
  qry_jgqfhx.Close;
  qry_jgqfhx.Parameters.ParamByName('ksrq').Value := formatdatetime( 'yyyymmdd', dtp_ksrq.DateTime );
  qry_jgqfhx.Parameters.ParamByName('jsrq').Value := formatdatetime( 'yyyymmdd', dtp_jsrq.DateTime );
  qry_jgqfhx.ExecSQL;
  btnTjClick(Sender);

end;

procedure Tfrm_qfgl.btn_MXPrintClick( Sender: TObject );
begin
  if PageIndex = 1 then
  begin
    Print_AksckfyMX; //������
  end
  else
    if PageIndex = 2 then
    begin
      Print_AdxckfyMx; //������
    end
    else
      if PageIndex = 3 then
      begin
        Print_AbrqfckfyMX; //������
      end;
end;

procedure Tfrm_qfgl.FormCreate( Sender: TObject );
begin
  //username := 'sys_zysf'; //QFAKG4JZVX24
  grdprprt_fyhz.Register( 'QFAKG4JZVX24' );
  dtp_ksrq.Date := Date;
  dtp_jsrq.Date := Date;
end;

procedure Tfrm_qfgl.FormKeyPress( Sender: TObject; var Key: Char );
begin

  if Key = #13 then
  begin
    SelectNext( ActiveControl, True, true );
  end;
end;
//�������õ���ϸ

procedure Tfrm_qfgl.GetMx( index: Integer );
begin
  if sp_lbtj.Active = true then
  begin
    if index = 0 then
    begin
      sp_Abrckfyqk.Close;
      sp_Abrckfyqk.Parameters.ParamByName( '@ksrq' ).Value := formatdatetime( 'yyyymmdd', dtp_ksrq.DateTime );
      sp_Abrckfyqk.Parameters.ParamByName( '@jsrq' ).Value := formatdatetime( 'yyyymmdd', dtp_jsrq.DateTime );
      sp_Abrckfyqk.Parameters.ParamByName( '@fylb' ).Value := sp_lbtj.FieldByName( 'lbdm' ).AsString;
      sp_Abrckfyqk.Open;
    end;
    if index = 1 then
    begin
      sp_Aksckfyqk.Close;
      sp_Aksckfyqk.Parameters.ParamByName( '@ksrq' ).Value := formatdatetime( 'yyyymmdd', dtp_ksrq.DateTime );
      sp_Aksckfyqk.Parameters.ParamByName( '@jsrq' ).Value := formatdatetime( 'yyyymmdd', dtp_jsrq.DateTime );
      sp_Aksckfyqk.Parameters.ParamByName( '@fylb' ).Value := sp_lbtj.FieldByName( 'lbdm' ).AsString;
      sp_Aksckfyqk.Open;
    end;
    if index = 2 then
    begin
      sp_Afydxckfyqk.Close;
      sp_Afydxckfyqk.Parameters.ParamByName( '@ksrq' ).Value := formatdatetime( 'yyyymmdd', dtp_ksrq.DateTime );
      sp_Afydxckfyqk.Parameters.ParamByName( '@jsrq' ).Value := formatdatetime( 'yyyymmdd', dtp_jsrq.DateTime );
      sp_Afydxckfyqk.Parameters.ParamByName( '@fylb' ).Value := sp_lbtj.FieldByName( 'lbdm' ).AsString;
      sp_Afydxckfyqk.Open;

    end;
    if index = 3 then
    begin
      sp_czyhz.Close;
      sp_czyhz.Parameters.ParamByName( '@ksrq' ).Value := formatdatetime( 'yyyymmdd', dtp_ksrq.DateTime );
      sp_czyhz.Parameters.ParamByName( '@jsrq' ).Value := formatdatetime( 'yyyymmdd', dtp_jsrq.DateTime );
      sp_czyhz.Parameters.ParamByName( '@fylb' ).Value := '';
      sp_czyhz.Open;
    end;
  end;

end;

procedure Tfrm_qfgl.cxgrdbtblvwGrid1DBTableView2DblClick( Sender: TObject );
begin
  GetMx( cxPageControl1.ActivePage.PageIndex );
end;

procedure Tfrm_qfgl.cxTabSheet1Show( Sender: TObject );
begin
  GetMx( 1 );
  PageIndex := 1;
end;

procedure Tfrm_qfgl.cxTabSheet2Show( Sender: TObject );
begin
  GetMx( 2 );
  PageIndex := 2;
end;

procedure Tfrm_qfgl.cxTabSheet3Show( Sender: TObject );
begin
  GetMx( 0 );
  PageIndex := 3;
end;

procedure Tfrm_qfgl.Print_Mx( index: Integer );
begin
  if fyhzBb = nil then
  begin
    fyhzBb := TCusBb.Create;
    fyhzBb.GetBbByDM( fyhzBb, fyhzdm );
    grdprprt_fyhz.LoadFromStr( fyhzBb.nr );
  end;

  try
    grdprprt_fyhz.ParameterByName( '��ʼ����' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp_ksrq.DateTime );
    grdprprt_fyhz.ParameterByName( '��������' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp_jsrq.DateTime );

  except on e: Exception do
      ShowMessage( e.Message );
  end;
  grdprprt_fyhz.DataSet := sp_lbtj;
  res := frm_func.SetCReportXtcs( grdprprt_fyhz );
  if res <> '1' then
  begin
    ShowMessage( res );
  end
  else
  begin
    grdprprt_fyhz.PrintPreview( true );
    //RevertPrinter;
  end;
end;
//�����Ҳ鿴��ӡ����

procedure Tfrm_qfgl.Print_AksckfyMX( );
begin
  if AksckfyBb = nil then
  begin
    AksckfyBb := TCusBb.Create;
    AksckfyBb.GetBbByDM( AksckfyBb, AksckfyBbdm );
    grdprprt_Aks.LoadFromStr( AksckfyBb.nr );
  end;

  try
    grdprprt_Aks.ParameterByName( '��ʼ����' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp_ksrq.DateTime );
    grdprprt_Aks.ParameterByName( '��������' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp_jsrq.DateTime );

  except on e: Exception do
      ShowMessage( e.Message );
  end;
  grdprprt_Aks.DataSet := sp_Aksckfyqk;
  res := frm_func.SetCReportXtcs( grdprprt_Aks );
  if res <> '1' then
  begin
    ShowMessage( res );
  end
  else
  begin

    grdprprt_Aks.PrintPreview( true );
    //RevertPrinter;
  end;
end;
//������

procedure Tfrm_qfgl.Print_AdxckfyMx( );
begin
  if AdxckfyBb = nil then
  begin
    AdxckfyBb := TCusBb.Create;
    AdxckfyBb.GetBbByDM( AdxckfyBb, AdxckfyBbdm );
    grdprprt_Adx.LoadFromStr( AdxckfyBb.nr );
  end;

  try
    grdprprt_Adx.ParameterByName( '��ʼ����' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp_ksrq.DateTime );
    grdprprt_Adx.ParameterByName( '��������' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp_jsrq.DateTime );

  except on e: Exception do
      ShowMessage( e.Message );
  end;
  grdprprt_Adx.DataSet := sp_Afydxckfyqk;
  res := frm_func.SetCReportXtcs( grdprprt_Adx );
  if res <> '1' then
  begin
    ShowMessage( res );
  end
  else
  begin

    grdprprt_Adx.PrintPreview( true );
    //RevertPrinter;
  end;
end;
//������Ƿ��

procedure Tfrm_qfgl.Print_AbrqfckfyMX( );
begin
  if AbrqfckfyBb = nil then
  begin
    AbrqfckfyBb := TCusBb.Create;
    AbrqfckfyBb.GetBbByDM( AbrqfckfyBb, AbrqfckfyBbdm );
    grdprprt_Abr.LoadFromStr( AbrqfckfyBb.nr );
  end;

  try
    grdprprt_Abr.ParameterByName( '��ʼ����' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp_ksrq.DateTime );
    grdprprt_Abr.ParameterByName( '��������' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp_jsrq.DateTime );

  except on e: Exception do
      ShowMessage( e.Message );
  end;
  grdprprt_Abr.DataSet := sp_Abrckfyqk;
  res := frm_func.SetCReportXtcs( grdprprt_Abr );
  if res <> '1' then
  begin
    ShowMessage( res );
  end
  else
  begin

    grdprprt_Abr.PrintPreview( true );
    //RevertPrinter;
  end;
end;

procedure Tfrm_qfgl.Print_Czyfyhz( );
begin
  if Czyhz = nil then
  begin
    Czyhz := TCusBb.Create;
    Czyhz.GetBbByDM( Czyhz, Czyhzdm );
    grdprprt_czyhz.LoadFromStr( Czyhz.nr );
  end;

  try
    grdprprt_czyhz.ParameterByName( '��ʼ����' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp_ksrq.DateTime );
    grdprprt_czyhz.ParameterByName( '��������' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp_jsrq.DateTime );

  except on e: Exception do
      ShowMessage( e.Message );
  end;
  grdprprt_czyhz.DataSet := sp_czyhz;
  res := frm_func.SetCReportXtcs( grdprprt_czyhz );
  if res <> '1' then
  begin
    ShowMessage( res );
  end
  else
  begin

    grdprprt_czyhz.PrintPreview( true );
    //RevertPrinter;
  end;
end;
end.

