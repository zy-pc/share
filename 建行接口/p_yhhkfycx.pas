unit p_yhhkfycx;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, Menus, DBTables, Db,
  ExtCtrls, ComCtrls, DBCGrids, ImgList, ActnList, ADODB, printers,
  DBGridEh, QuickRpt, Qrctrls, OleServer, Variants, GridsEh, sldll, cxControls,
  cxSplitter, cxContainer, cxEdit, cxCheckBox, p_func_yybj, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLookAndFeelPainters, cxButtons,
  jkk_func, p_jkk_re, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, XMLIntf, XMLDoc, cxTextEdit, OleCtrls, SINGLEELib_TLB,
  DBGridEhGrouping, cxExportGrid4Link, cxCurrencyEdit;

type
  Tfrm_yhhkfycx = class( TForm )
    ds_fymx: TDataSource;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    edit2: TEdit;
    DateTimePicker2: TDateTimePicker;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    Btn_Seek: TButton;
    Btn_exit: TButton;
    BitBtn1: TBitBtn;
    dbgrid1: TcxGrid;
    dbgrid1DBTableView1: TcxGridDBTableView;
    dbgrid1DBTableView1sfczymc: TcxGridDBColumn;
    dbgrid1DBTableView1tmh: TcxGridDBColumn;
    dbgrid1DBTableView1brxm: TcxGridDBColumn;
    dbgrid1DBTableView1sszje: TcxGridDBColumn;
    dbgrid1DBTableView1sfrq: TcxGridDBColumn;
    dbgrid1DBTableView1sjbh: TcxGridDBColumn;
    dbgrid1DBTableView1lbmc: TcxGridDBColumn;
    dbgrid1Level1: TcxGridLevel;
    sp_fymx: TADOStoredProc;
    dbgrid1DBTableView1lsh: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    dbgrid1DBTableView1zdbh: TcxGridDBColumn;
    dbgrid1DBTableView1jyckh: TcxGridDBColumn;
    QuickRep3: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    shbh: TQRLabel;
    zdbh: TQRLabel;
    czyh: TQRLabel;
    jyrq: TQRLabel;
    shls: TQRLabel;
    QRLabel3: TQRLabel;
    jyje: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    dbgrid1DBTableView1kh: TcxGridDBColumn;
    dbgrid1DBTableView1sfph: TcxGridDBColumn;
    POS1: TMenuItem;
    sp_postf: TADOStoredProc;
    procedure FormShow( Sender: TObject );
    procedure Btn_SeekClick( Sender: TObject );
    procedure N1Click( Sender: TObject );
    procedure Btn_exitClick( Sender: TObject );
    procedure BitBtn1Click( Sender: TObject );
    procedure Button1Click( Sender: TObject );
    procedure Button2Click( Sender: TObject );
    procedure Button3Click( Sender: TObject );
    procedure POS1Click(Sender: TObject);
  private
    { Private declarations }
    procedure JHDBJS;
  public
    { Public declarations }
  end;

var
  frm_yhhkfycx: Tfrm_yhhkfycx;

implementation

uses
  DateUtils,StrUtils, p_func, softpos, p_posxz,p_dm;

{$R *.dfm}

procedure Tfrm_yhhkfycx.BitBtn1Click( Sender: TObject );
begin
  if SaveDialog1.Execute then
  begin
    ExportGrid4ToExcel( SaveDialog1.FileName, dbgrid1, true, true );
    MessageBox( 0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION );
  end;
end;

procedure Tfrm_yhhkfycx.Btn_exitClick( Sender: TObject );
begin
  Self.close;
end;

procedure Tfrm_yhhkfycx.Btn_SeekClick( Sender: TObject );
begin
  sp_fymx.Close;
  sp_fymx.Parameters.Refresh;
  sp_fymx.Parameters.ParamByName( '@czydm' ).value := pub_czydm;
  sp_fymx.Parameters.ParamByName( '@ksrq' ).value := FormatDateTime( 'yyyyMMdd', DateTimePicker1.DateTime );
  sp_fymx.Parameters.ParamByName( '@jsrq' ).value := FormatDateTime( 'yyyyMMdd', DateTimePicker2.DateTime );
  sp_fymx.Parameters.ParamByName( '@sjbh' ).value := trim( edit1.Text );
  sp_fymx.Parameters.ParamByName( '@kwd' ).value := trim( edit2.Text );
  sp_fymx.open;
end;

procedure Tfrm_yhhkfycx.Button1Click( Sender: TObject );
begin
  yecx;
end;

procedure Tfrm_yhhkfycx.Button2Click( Sender: TObject );
var
  Outstr: ToutStr;
  posh, v_str,ret: string;
begin
  posh := '';
  Application.CreateForm( Tfrm_posxz, frm_posxz );
  try
    frm_posxz.ShowModal;
    posh := frm_posxz.posh;
  finally
    frm_posxz.Free;
  end;
  if posh = '2' then
  begin
    if not FileExists( 'softpos.dll' ) then
    begin
      v_str := v_str + '[softpos.dll]';
    end;
    if not FileExists( 'softpos2.dll' ) then
    begin
      v_str := v_str + '[softpos2.dll]';
    end;
    if not FileExists( 'softpos3.dll' ) then
    begin
      v_str := v_str + '[softpos3.dll]';
    end;
    if v_str <> '' then
    begin
      Application.MessageBox( pchar( '缺少银行POS接口动态库!' + #13 + v_str ), '系统提示', MB_OK + MB_ICONEXCLAMATION );
    end;
    nh_qbgn;
  end
  else
    if posh = '1' then
      Self.JHDBJS;
end;

procedure Tfrm_yhhkfycx.Button3Click( Sender: TObject );
var
  Outstr: ToutStr;
begin
  Outstr := clsh;
  if Outstr.fhm = '000000' then
  begin
    ShowMessage( 'ok' );
  end
  else
  begin
    ShowMessage( Outstr.fhm + Outstr.fhmhy );
  end;
end;

procedure Tfrm_yhhkfycx.FormShow( Sender: TObject );
begin
  DateTimePicker1.DateTime := frm_func.curr_date;
  DateTimePicker2.DateTime := DateTimePicker1.DateTime;
end;

procedure Tfrm_yhhkfycx.JHDBJS;
var
  posstr: array[1..402] of Char;
  singlee:TSinglee;
  i: Integer;
  ret,msg,id: string;
begin
  FillChar(posstr,SizeOf(posstr),$20);
  Move('14',posstr[1],2); //交易代码 14:当班结算

  posstr[70] := 'H';//卡片类型 H:银行卡
  //交易索引号
  Randomize;
  i := 1000 + Random(999);
  id := pub_czydm + FormatDateTime('yyyymmddhhnnsszzz',Now) + RightStr(IntToStr(i),3);
  Move(id[1],posstr[71],Length(id));
  singlee:=TSinglee.Create(self);
  try
    ret := singlee.CardTrans(posstr);
    if copy(ret, 1, 6) = '000000' then
      Application.MessageBox('当班结算成功！','提示信息',MB_OK + MB_ICONINFORMATION)
    else
    begin
      msg := Trim((Copy(ret,7,40)));
      Move(ret[7],msg,40);
      msg := Trim(msg);
      Application.MessageBox(PChar(msg),'班结算成功失败',MB_OK + MB_ICONERROR);
    end;
  finally
    singlee.Free;
  end;
end;

procedure Tfrm_yhhkfycx.N1Click( Sender: TObject );
var
  Outstr: ToutStr;
begin
 { Outstr := cddj( trim( sp_fymx.FieldByName( 'lsh' ).AsString ) );
  if Outstr.fhm = '000000' then
  begin
    ShowMessage( 'ok' );
  end
  else
  begin
    ShowMessage( Outstr.fhm + Outstr.fhmhy );
  end; }
  if sp_fymx.Active  then
  begin
    shbh.Caption :='商户编号:'+trim(sp_fymx.FieldByName('sjbh').AsString);
    zdbh.Caption :='终端编号:'+trim(sp_fymx.FieldByName('zdbh').AsString);
    jyrq.Caption :='交易日期:'+trim(sp_fymx.FieldByName('sfsj').AsString);
    czyh.Caption :='操作员号:'+trim(sp_fymx.FieldByName('sfczy').AsString);
    shls.Caption :=shls.Caption+trim(sp_fymx.FieldByName('lsh').AsString);
    jyje.Caption :=jyje.Caption+trim(sp_fymx.FieldByName('zfy').AsString);
    quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('收据打印机');
    QuickRep3.Preview;
  end;
  
end;

procedure Tfrm_yhhkfycx.POS1Click(Sender: TObject);
begin
if pub_yydm='0261' then
begin
  sp_postf.Close;
  sp_postf.Parameters.Refresh;
  sp_postf.Parameters.ParamByName( '@czydm' ).value := pub_czydm;
  sp_postf.Parameters.ParamByName( '@sfph' ).value := sp_fymx.FieldByName('sfph').AsString;
  sp_postf.Parameters.ParamByName( '@sczt' ).value := '';
  sp_postf.ExecProc;
  if sp_postf.Parameters.ParamByName( '@sczt' ).value='2' then
  begin
    Application.MessageBox('没有找到对应的交款记录或已退费!','提示', 16 );
  end
  else if sp_postf.Parameters.ParamByName( '@sczt' ).value='3' then
  begin
    Application.MessageBox('更新原始交款记录出错','提示', 16 );
  end
  else if sp_postf.Parameters.ParamByName( '@sczt' ).value='9' then
  begin
    Application.MessageBox('插入退款记录出错','提示', 16 );
  end
  else if sp_postf.Parameters.ParamByName( '@sczt' ).value='1' then
  begin
    Application.MessageBox('POS退款成功!','提示信息',MB_OK + MB_ICONINFORMATION);
    Btn_Seek.Click;
  end
  else
  begin
     Application.MessageBox( 'POS退费失败！', '提示', 16 );
  end;
end;
end;

end.

