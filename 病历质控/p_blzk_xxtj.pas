unit p_blzk_xxtj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, ADODB;

type
  Tfrm_blzk_xxtj = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ds_hz: TDataSource;
    pro_tj_hz: TADOStoredProc;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    sp_tj_mx: TADOStoredProc;
    ds_tj_mx: TDataSource;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    Memo1: TMemo;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    bz:string;
    { Public declarations }
  end;

var
  frm_blzk_xxtj: Tfrm_blzk_xxtj;

implementation

uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_blzk_xxtj.Button1Click(Sender: TObject);
begin
  pro_tj_hz.close;
  pro_tj_hz.Parameters.Refresh;
  pro_tj_hz.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  pro_tj_hz.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime);
  pro_tj_hz.Open;
  if bz='0' then
  begin
    pro_tj_hz.Filtered:=false;
    pro_tj_hz.Filter:='bqmc='+''''+pub_bqmc+'''';
    pro_tj_hz.Filtered:=True;
  end;
  if pro_tj_hz.RecordCount<1 then
  begin
    Application.MessageBox('该段日期内无质控问题信息', '提示', MB_OK +
      MB_ICONWARNING);
  end;
  
end;

procedure Tfrm_blzk_xxtj.Button2Click(Sender: TObject);
begin
  frm_func.cxgridtoexcel(cxGrid1,3,'','','',pro_tj_hz);
end;

procedure Tfrm_blzk_xxtj.Button3Click(Sender: TObject);
begin
  frm_func.cxgridtoexcel(cxGrid2,3,'','','',sp_tj_mx);
end;

procedure Tfrm_blzk_xxtj.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  sp_tj_mx.Close;
  sp_tj_mx.Parameters.Refresh;
  sp_tj_mx.Parameters.ParamByName('@bqdm').value:= pro_tj_hz.FieldByName('bqdm').AsString;
  sp_tj_mx.Parameters.ParamByName('@ksrq').value:= FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  sp_tj_mx.Parameters.ParamByName('@jsrq').value:= FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime);
  sp_tj_mx.Open;
end;

procedure Tfrm_blzk_xxtj.cxGridDBTableView1DblClick(Sender: TObject);
const hc=Chr(13)+chr(10);
var sm:string;
begin
  Memo1.text:='';
  sm:='';
  sm:=sm+'质控意见为：'+ hc +'【'+sp_tj_mx.FieldByName('fkyj').asstring+'】'+hc ;
  sm:=sm+'医生处理说明为：'+ hc +'【'+sp_tj_mx.FieldByName('clsm').asstring+'】';
  Panel2.Visible:=True;
  Memo1.text:=sm;

end;

procedure Tfrm_blzk_xxtj.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  Panel2.Visible:=False;
end;

procedure Tfrm_blzk_xxtj.FormShow(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Frm_func.curr_date;
  DateTimePicker2.DateTime:=Frm_func.curr_date;
  if bz='0' then
  begin
    cxGridDBTableView1Column1.Visible:=False;
  end;
end;

end.
