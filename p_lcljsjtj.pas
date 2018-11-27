unit p_lcljsjtj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB;

type
  Tfrm_lcljsjtj = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    Button2: TButton;
    Button3: TButton;
    sp_lcljtj: TADOStoredProc;
    ds_lcljtj: TDataSource;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_lcljsjtj: Tfrm_lcljsjtj;

implementation

uses p_dm,p_func;
{$R *.dfm}

procedure Tfrm_lcljsjtj.Button1Click(Sender: TObject);
begin
  sp_lcljtj.Close;
  sp_lcljtj.Parameters.Refresh;
  sp_lcljtj.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  sp_lcljtj.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime);
  sp_lcljtj.Open;
end;

procedure Tfrm_lcljsjtj.Button2Click(Sender: TObject);
begin
  Frm_func.cxgridtoexcel(cxGrid1,3,'ÁÙ´²Â·¾¶Í³¼Æ','','',sp_lcljtj);
end;

procedure Tfrm_lcljsjtj.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_lcljsjtj.FormShow(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Frm_func.curr_date;
  DateTimePicker2.DateTime:=Frm_func.curr_date;
end;

end.
