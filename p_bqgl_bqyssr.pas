unit p_bqgl_bqyssr;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
    cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
    QuickRpt, QRCtrls, ComCtrls, DBCtrls,cxexportgrid4link;

type
    Tfrm_yssr = class(TForm)
        GroupBox1: TGroupBox;
        rep_dryphz: TQuickRep;
        DetailBand1: TQRBand;
        QRGroup2: TQRGroup;
        QRDBText1: TQRDBText;
        PageHeaderBand1: TQRBand;
        QRLabel2: TQRLabel;
        QRDBText3: TQRDBText;
        QRShape1: TQRShape;
        QRShape2: TQRShape;
        QRShape3: TQRShape;
        QRLabel3: TQRLabel;
        QRShape4: TQRShape;
        QRBand1: TQRBand;
        QRShape6: TQRShape;
        QRLabel8: TQRLabel;
        QRLabel9: TQRLabel;
        QRLabel10: TQRLabel;
        QRDBText6: TQRDBText;
        QRDBText7: TQRDBText;
        QRDBText8: TQRDBText;
        QRDBText9: TQRDBText;
        QRLabel11: TQRLabel;
        qrl_bqmc: TQRLabel;
        QRExpr1: TQRExpr;
        QRShape5: TQRShape;
        QRSysData1: TQRSysData;
        QRLabel4: TQRLabel;
        QRLabel5: TQRLabel;
        QRDBText4: TQRDBText;
        QRLabel6: TQRLabel;
        qrl_sj: TQRLabel;
        rep_hz: TQuickRep;
        QRBand2: TQRBand;
        QRDBText2: TQRDBText;
        QRDBText10: TQRDBText;
        QRDBText12: TQRDBText;
        QRDBText13: TQRDBText;
        QRBand3: TQRBand;
        QRLabel17: TQRLabel;
        QRShape9: TQRShape;
        QRShape10: TQRShape;
        QRLabel18: TQRLabel;
        qrl_hzbq: TQRLabel;
        QRExpr2: TQRExpr;
        QRShape11: TQRShape;
        QRSysData2: TQRSysData;
        qrl_hzsj: TQRLabel;
        QRBand4: TQRBand;
        QRShape12: TQRShape;
        QRLabel19: TQRLabel;
        QRLabel20: TQRLabel;
        QRLabel22: TQRLabel;
        QRLabel23: TQRLabel;
        QRShape7: TQRShape;
        QRExpr3: TQRExpr;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    dtp_ks: TDateTimePicker;
    dtp_js: TDateTimePicker;
    Button3: TButton;
    rb_cz: TRadioButton;
    rb_kd: TRadioButton;
    sp_yysrcx: TADOStoredProc;
    ds_yysrcx: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1srlb: TcxGridDBColumn;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1brxb: TcxGridDBColumn;
    cxGrid1DBTableView1sjbh: TcxGridDBColumn;
    cxGrid1DBTableView1fymc: TcxGridDBColumn;
    cxGrid1DBTableView1fyzje: TcxGridDBColumn;
    cxGrid1DBTableView1sfrq: TcxGridDBColumn;
    cxGrid1DBTableView1tfbz: TcxGridDBColumn;
    cxGrid1DBTableView1zfbz: TcxGridDBColumn;
    cxGrid1DBTableView1sfczymc: TcxGridDBColumn;
    cxGrid1DBTableView1kdysmc: TcxGridDBColumn;
    cxGrid1DBTableView1czysmc: TcxGridDBColumn;
    cxGrid1DBTableView1tfczymc: TcxGridDBColumn;
    cxGrid1DBTableView1kdksmc: TcxGridDBColumn;
    cxGrid1DBTableView1czksmc: TcxGridDBColumn;
    Button2: TButton;
    qry_ysdm: TADOQuery;
    db_ys: TDBLookupComboBox;
    ds_ysdm: TDataSource;
    SaveDialog1: TSaveDialog;
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure Button3Click(Sender: TObject);
        procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
        procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    private
        zyhlist: array of string;
        cxz, cxfs: string;
    { Private declarations }
    public

    { Public declarations }
    end;

var
    frm_yssr: Tfrm_yssr;

implementation
uses p_dm, p_func;
{$R *.dfm}

procedure Tfrm_yssr.FormShow(Sender: TObject);
var
    li, brcount: integer;
begin
    rep_dryphz.Visible := false;
    rep_hz.Visible := false;
    dtp_ks.DateTime := frm_func.curr_date;
    dtp_js.DateTime := frm_func.curr_date;
    qry_ysdm.Active := false;
    qry_ysdm.Parameters.ParamByName('cxysdm').Value := pub_ksdm;
    qry_ysdm.Open;
end;

procedure Tfrm_yssr.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    zyhlist := nil;
end;

procedure Tfrm_yssr.Button1Click(Sender: TObject);
begin
   sp_yysrcx.Close;
   sp_yysrcx.Parameters.ParamByName('@ksrq').Value:=formatdatetime('yyyymmdd',dtp_ks.DateTime);
   sp_yysrcx.Parameters.ParamByName('@jsrq').Value:=formatdatetime('yyyymmdd',dtp_js.DateTime);
   sp_yysrcx.Parameters.ParamByName('@ysdm').Value:=db_ys.KeyValue;
   if rb_kd.Checked then
        sp_yysrcx.Parameters.ParamByName('@czlb').Value:=1;
   if rb_cz.Checked then
        sp_yysrcx.Parameters.ParamByName('@czlb').Value:=2;
   sp_yysrcx.Open;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
end;

procedure Tfrm_yssr.Button2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    exportgrid4toexcel(SaveDialog1.FileName, cxGrid1, true, true);
    MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_yssr.Button3Click(Sender: TObject);
begin
    close;
end;

procedure Tfrm_yssr.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activeControl, true, true);
end;

end.
