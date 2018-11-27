unit p_zycljf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, QRCtrls,
  QuickRpt, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  ComCtrls, cxContainer, cxLabel, cxButtons, Buttons, GridsEh, DBGridEh, Mask,
  DBCtrls, ExtCtrls, ADODB, DBGridEhGrouping;

type
  Tfrm_zycljf = class(TForm)
    Panel7: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    groupbox8: TPanel;
    DBGridEh1: TDBGridEh;
    groupbox2: TPanel;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    cxButton6: TcxButton;
    bt_jf: TcxButton;
    ScrollBox1: TScrollBox;
    DBGridEh4: TDBGridEh;
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    cxLabel1: TcxLabel;
    Panel3: TPanel;
    Label2: TLabel;
    dt_zxsj: TDateTimePicker;
    TabSheet2: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1tfbz: TcxGridDBColumn;
    cxGrid1DBTableView1sfrq: TcxGridDBColumn;
    cxGrid1DBTableView1fymc: TcxGridDBColumn;
    cxGrid1DBTableView1dw: TcxGridDBColumn;
    cxGrid1DBTableView1fyje: TcxGridDBColumn;
    cxGrid1DBTableView1zfje: TcxGridDBColumn;
    cxGrid1DBTableView1czks: TcxGridDBColumn;
    cxGrid1DBTableView1mc: TcxGridDBColumn;
    cxGrid1DBTableView1yjqrbz: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    cxButton4: TcxButton;
    QuickRep1: TQuickRep;
    QRBand4: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel16: TQRLabel;
    qrl_bqmc: TQRLabel;
    rtl_czks: TQRLabel;
    rtl_sfrq: TQRLabel;
    ds_brxx: TDataSource;
    qry_bbqbr: TADOQuery;
    ds_bbqbr: TDataSource;
    qry_brxx: TADOQuery;
    ds_dryz: TDataSource;
    sp_dryz: TADOStoredProc;
    Edit1: TEdit;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure qry_bbqbrAfterScroll(DataSet: TDataSet);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure bt_jfClick(Sender: TObject);
    procedure dt_zxsjChange(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zycljf: Tfrm_zycljf;

implementation

{$R *.dfm}
uses p_dm,p_func,p_zyyzcljf;

procedure Tfrm_zycljf.bt_jfClick(Sender: TObject);
begin
  try
    application.createform(Tfrm_zyyzcljf, frm_zyyzcljf);
    frm_zyyzcljf.tmh.text := DBEdit19.text;
    p_zyyzcljf.yzsj:= FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
    frm_zyyzcljf.showmodal;
  finally
    frm_zyyzcljf.free;
  end;

end;

procedure Tfrm_zycljf.cxButton6Click(Sender: TObject);
begin
Close;

end;

procedure Tfrm_zycljf.dt_zxsjChange(Sender: TObject);
begin
qry_brxx.Close;
qry_brxx.SQL.text:='select a.*,b.mc zgysxm,c.mc lbmc from zysf_zydj a,sys_czy b,sys_fylb c where zyh='+''''+trim(qry_bbqbr.FieldByName('zyh').asstring)+''''+' and a.fylb=c.dm';
qry_brxx.Open;
sp_dryz.Close;
sp_dryz.Parameters.Refresh;
sp_dryz.Parameters.ParamByName('@zyh').value:= trim(qry_bbqbr.FieldByName('zyh').asstring);
sp_dryz.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
sp_dryz.Open;
end;

procedure Tfrm_zycljf.Edit1Change(Sender: TObject);
begin
if (edit1.Text<>'') and (edit1.Text<>' ‰»Î≤°¥≤∫≈£¨∆¥“Ù¬ÎªÚ’ﬂ≤°»À–’√˚') then
begin
qry_bbqbr.Filtered:=False;
qry_bbqbr.Filter:=' pym like ''%'+trim(edit1.text)+'%'' or bch like ''%'+trim(edit1.text)+'%'' or brxm like ''%'+trim(edit1.text)+'%''';
qry_bbqbr.Filtered:=True;
end
else
qry_bbqbr.Filtered:=False;
end;

procedure Tfrm_zycljf.Edit1Enter(Sender: TObject);
begin
Edit1.SetFocus;
Edit1.Clear;
end;

procedure Tfrm_zycljf.FormShow(Sender: TObject);
begin
Edit1.text:= ' ‰»Î≤°¥≤∫≈£¨∆¥“Ù¬ÎªÚ’ﬂ≤°»À–’√˚';
qry_bbqbr.Close;
qry_bbqbr.Parameters.ParamByName('bqdm').Value:=pub_bqdm;
qry_bbqbr.Open;
dt_zxsj.DateTime:=Now();
QuickRep1.Visible:=False;
end;

procedure Tfrm_zycljf.qry_bbqbrAfterScroll(DataSet: TDataSet);
begin
qry_brxx.Close;
qry_brxx.SQL.text:='select a.*,b.mc zgysxm,c.mc lbmc from zysf_zydj a,sys_czy b,sys_fylb c where zyh='+''''+trim(qry_bbqbr.FieldByName('zyh').asstring)+''''+' and a.fylb=c.dm';
qry_brxx.Open;
sp_dryz.Close;
sp_dryz.Parameters.Refresh;
sp_dryz.Parameters.ParamByName('@zyh').value:= trim(qry_bbqbr.FieldByName('zyh').asstring);
sp_dryz.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
sp_dryz.Open;
end;

procedure Tfrm_zycljf.SpeedButton1Click(Sender: TObject);
begin
qry_bbqbr.Requery();
end;

end.
