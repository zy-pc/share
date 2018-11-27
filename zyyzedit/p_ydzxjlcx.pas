unit p_ydzxjlcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxLabel,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ADODB;

type
  Tfrm_ydzxjlcx = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    date_ks: TcxDateEdit;
    date_js: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Qry_cx: TADOQuery;
    DS_cx: TDataSource;
    Qry_cxzxhsmc: TStringField;
    Qry_cxtmh: TStringField;
    Qry_cxbch: TStringField;
    Qry_cxbrxm: TStringField;
    Qry_cxxmmc: TStringField;
    Qry_cxgg: TStringField;
    Qry_cxyzsx: TStringField;
    Qry_cxkdysmc: TStringField;
    Qry_cxkdrq: TDateTimeField;
    Qry_cxzxsj: TDateTimeField;
    Qry_cxtzrq: TDateTimeField;
    Qry_cxtzbz: TBooleanField;
    cxGrid1DBTableView1zxhsmc: TcxGridDBColumn;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1bch: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1xmmc: TcxGridDBColumn;
    cxGrid1DBTableView1gg: TcxGridDBColumn;
    cxGrid1DBTableView1yzsx: TcxGridDBColumn;
    cxGrid1DBTableView1kdysmc: TcxGridDBColumn;
    cxGrid1DBTableView1kdrq: TcxGridDBColumn;
    cxGrid1DBTableView1zxsj: TcxGridDBColumn;
    cxGrid1DBTableView1tzrq: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ydzxjlcx: Tfrm_ydzxjlcx;

implementation
uses p_dm, p_func;
{$R *.dfm}

procedure Tfrm_ydzxjlcx.cxButton1Click(Sender: TObject);
begin
  Qry_cx.Close;
  Qry_cx.Parameters.ParamByName('zxry').Value := pub_czydm;
  Qry_cx.Parameters.ParamByName('ksrq').Value := FormatDateTime('yyyyMMdd', date_ks.Date);
  Qry_cx.Parameters.ParamByName('jsrq').Value := FormatDateTime('yyyyMMdd', date_js.Date);
  Qry_cx.Open;
end;

procedure Tfrm_ydzxjlcx.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_ydzxjlcx.FormShow(Sender: TObject);
begin
  date_ks.Date := Frm_func.curr_date;
  date_js.Date := Frm_func.curr_date;
end;

end.

