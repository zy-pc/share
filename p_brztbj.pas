unit p_brztbj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Mask, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB, cxCheckBox;

type
  Tfrm_brztbj = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    sp_cx_brztmx: TADOStoredProc;
    ds_cx_brztmx: TDataSource;
    qry_up_zt: TADOQuery;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView1EditChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_brztbj: Tfrm_brztbj;

implementation
uses p_dm,p_func,p_cx_brztbj,p_ztsz;

{$R *.dfm}

procedure Tfrm_brztbj.Button1Click(Sender: TObject);
begin
  qry_up_zt.Close;
  qry_up_zt.sql.Text:='insert into bqgl_brztmx(bqdm,zyh,ztdm,jlczy,jlsj,yxbz) '+
  'select bqdm,zyh,ztdm,'+''''+pub_czydm+''''+','+''''+
  FormatDateTime('yyyy-MM-dd',DateTimePicker1.DateTime)+' '+FormatDateTime('hh:mm:ss',Frm_func.curr_date)+
  ''''+',1 from bqgl_brztmx where convert(varchar,jlsj,112)='+''''+FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime-1)+
  ''''+' and scbz=0 and ztdm in (select dm from sys_brzt where jcbz=1) ';
  qry_up_zt.ExecSQL;
  sp_cx_brztmx.Close;
  sp_cx_brztmx.Parameters.Refresh;
  sp_cx_brztmx.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_cx_brztmx.Parameters.ParamByName('@rq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  sp_cx_brztmx.Open;
  if RadioButton1.Checked then
  begin
    sp_cx_brztmx.Filtered:=false;
    sp_cx_brztmx.Filter:='scbz=false';
    sp_cx_brztmx.Filtered:=True;
  end
  else
  begin
    sp_cx_brztmx.Filtered:=false;
  end;
end;

procedure Tfrm_brztbj.Button2Click(Sender: TObject);
begin
  sp_cx_brztmx.Edit;
  sp_cx_brztmx.FieldByName('scbz').AsBoolean:=False;
  sp_cx_brztmx.Post;
  qry_up_zt.Close;
  qry_up_zt.sql.Text:='delete from bqgl_brztmx where scbz=1 and  zyh='+''''+
  sp_cx_brztmx.FieldByName('zyh').asstring+'''';
  qry_up_zt.ExecSQL;
  if RadioButton1.Checked then
  begin
    sp_cx_brztmx.Filtered:=false;
    sp_cx_brztmx.Filter:='scbz=false';
    sp_cx_brztmx.Filtered:=True;
  end
  else
  begin
    sp_cx_brztmx.Filtered:=false;
  end;
end;

procedure Tfrm_brztbj.Button3Click(Sender: TObject);
begin
  sp_cx_brztmx.Edit;
  sp_cx_brztmx.FieldByName('scbz').AsBoolean:=True;
  sp_cx_brztmx.Post;
  if RadioButton1.Checked then
  begin
    sp_cx_brztmx.Filtered:=false;
    sp_cx_brztmx.Filter:='scbz=false';
    sp_cx_brztmx.Filtered:=True;
  end
  else
  begin
    sp_cx_brztmx.Filtered:=false;
  end;
  qry_up_zt.Close;
  qry_up_zt.sql.Text:='select * from bqgl_brztmx where 1<>1';
  qry_up_zt.Open;
  qry_up_zt.Append;
  qry_up_zt.FieldByName('bqdm').AsString:=pub_bqdm;
  qry_up_zt.FieldByName('zyh').asstring:= sp_cx_brztmx.FieldByName('zyh').asstring;
  qry_up_zt.FieldByName('yxbz').AsBoolean:=true;
  qry_up_zt.FieldByName('scbz').AsBoolean:=true;
  qry_up_zt.Post;
end;

procedure Tfrm_brztbj.Button4Click(Sender: TObject);
begin
  try
    application.createform( tfrm_cx_brztbj,frm_cx_brztbj );
    frm_cx_brztbj.showmodal;
  finally
    frm_cx_brztbj.free;
  end;
end;

procedure Tfrm_brztbj.Button5Click(Sender: TObject);
begin
  try
    application.createform( tfrm_ztsz,frm_ztsz );
    frm_ztsz.showmodal;
  finally
    frm_ztsz.free;
  end;
end;

procedure Tfrm_brztbj.Button6Click(Sender: TObject);
begin
  sp_cx_brztmx.Close;
  sp_cx_brztmx.Parameters.Refresh;
  sp_cx_brztmx.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_cx_brztmx.Parameters.ParamByName('@rq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  sp_cx_brztmx.Open;
  if RadioButton1.Checked then
  begin
    sp_cx_brztmx.Filtered:=false;
    sp_cx_brztmx.Filter:='scbz=false';
    sp_cx_brztmx.Filtered:=True;
  end
  else
  begin
    sp_cx_brztmx.Filtered:=false;
  end;
end;

procedure Tfrm_brztbj.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var i:Integer;
begin
  if sp_cx_brztmx.Active=True then
  begin
//    if  (Pos('-',AViewInfo.GridRecord.DisplayTexts[colOrderProductCount.Index]) > 0) then
//    begin  //标识负数记录
//      ACanvas.Canvas.Brush.Color:= clMoneyGreen;
//      //ACanvas.Canvas.Font.Color:= clRed;//clActiveCaption
//    end;
    for I := 4 to cxGrid1DBTableView1.ColumnCount-1  do
    begin
      if AViewInfo.GridRecord.DisplayTexts[i]='真' then
      begin
        ACanvas.Canvas.Brush.Color:=clSkyBlue;
        Break;
      end;
    end;
    if AViewInfo.GridRecord.Values[3]='true' then
    begin
      ACanvas.Canvas.font.Color:=clred;
    end;
  end;

  end;

procedure Tfrm_brztbj.cxGrid1DBTableView1EditChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var dm,field:string;
begin
  if cxGrid1DBTableView1.Controller.FocusedColumnIndex >2 then
  begin
    field:=cxGrid1DBTableView1.Columns[cxGrid1DBTableView1.Controller.FocusedColumnIndex+1].DataBinding.FieldName;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from sys_brzt where rtrim(mc)='+''''+field+'''';
    DM_data.qry_pub.Open;
    dm:= DM_data.qry_pub.FieldByName('dm').AsString;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from bqgl_brztmx where zyh='+''''+
    sp_cx_brztmx.FieldByName('zyh').asstring+''''+' and convert(varchar,jlsj,112)='+''''+
    FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' and ztdm='+''''+ dm+'''';
    DM_data.qry_pub.open;
    if not DM_data.qry_pub.IsEmpty then
    begin
      qry_up_zt.close;
      qry_up_zt.SQL.Text:='delete from bqgl_brztmx where zyh='+''''+
      sp_cx_brztmx.FieldByName('zyh').asstring+''''+' and convert(varchar,jlsj,112)='+''''+
      FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' and ztdm='+''''+ dm+'''';
      qry_up_zt.ExecSQL;
    end
    else
    begin
      qry_up_zt.Close;
      qry_up_zt.sql.Text:='select * from bqgl_brztmx where 1<>1';
      qry_up_zt.Open;
      qry_up_zt.Append;
      qry_up_zt.FieldByName('bqdm').AsString:=pub_bqdm;
      qry_up_zt.FieldByName('zyh').asstring:= sp_cx_brztmx.FieldByName('zyh').asstring;
      qry_up_zt.FieldByName('ztdm').AsString:=dm;
      qry_up_zt.FieldByName('jlczy').AsString:=pub_czydm;
      qry_up_zt.FieldByName('jlsj').AsString:=FormatDateTime('yyyy-MM-dd',DateTimePicker1.DateTime)+
      ' '+FormatDateTime('hh:mm:ss',DateTimePicker1.DateTime);
      qry_up_zt.FieldByName('scbz').AsBoolean:=false;
      qry_up_zt.Post;
    end;

  end;

end;

procedure Tfrm_brztbj.DateTimePicker1Change(Sender: TObject);
var   i:   Integer; 
    FieldName,DisplayName:   string;
    FColumn: TcxGridDBColumn;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_brzt order by dm';
  DM_data.qry_pub.Open;
  cxGrid1DBTableView1.BeginUpdate;
  try
    for I := cxGrid1DBTableView1.ColumnCount - 1 downto 3 do
    cxGrid1DBTableView1.Columns[I].Free;
  finally
    cxGrid1DBTableView1.EndUpdate;
  end;
  FColumn:=cxGrid1DBTableView1.CreateColumn;
  FColumn.DataBinding.FieldName:= 'scbz';
  FColumn.MinWidth:=80;
  FColumn.Visible:=False;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    FColumn:=cxGrid1DBTableView1.CreateColumn;
    FColumn.PropertiesClassName := 'TcxCheckBoxProperties';
    FColumn.DataBinding.FieldName:= DM_data.qry_pub.FieldByName('mc').AsString;
    FColumn.MinWidth:=105;
    FColumn.Summary.FooterKind:=skSum;
    FColumn.Summary.FooterFormat:=DM_data.qry_pub.FieldByName('mc').AsString+'0人';
    DM_data.qry_pub.Next;
  end;

  sp_cx_brztmx.Close;
  sp_cx_brztmx.Parameters.Refresh;
  sp_cx_brztmx.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_cx_brztmx.Parameters.ParamByName('@rq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  sp_cx_brztmx.Open;
  if RadioButton1.Checked then
  begin
    sp_cx_brztmx.Filtered:=false;
    sp_cx_brztmx.Filter:='scbz=false';
    sp_cx_brztmx.Filtered:=True;
  end
  else
  begin
    sp_cx_brztmx.Filtered:=false;
  end;
end;

procedure Tfrm_brztbj.FormShow(Sender: TObject);
var 
    i:   Integer;
    FieldName,DisplayName:   string;
    FColumn: TcxGridDBColumn;
begin
  if pub_czydm='9999' then
  Button5.Enabled:=True;
  DateTimePicker1.DateTime:=Frm_func.curr_date;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_brzt order by dm';
  DM_data.qry_pub.Open;
  FColumn:=cxGrid1DBTableView1.CreateColumn;
  FColumn.DataBinding.FieldName:= 'scbz';
  FColumn.MinWidth:=80;
  FColumn.Visible:=False;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    FColumn:=cxGrid1DBTableView1.CreateColumn;
    FColumn.DataBinding.FieldName:= DM_data.qry_pub.FieldByName('mc').AsString;
    FColumn.PropertiesClassName := 'TcxCheckBoxProperties';
    FColumn.MinWidth:=105;
    FColumn.Summary.FooterKind:=skSum;
    FColumn.Summary.FooterFormat:=DM_data.qry_pub.FieldByName('mc').AsString+'0人';
    DM_data.qry_pub.Next;
  end;

  sp_cx_brztmx.Close;
  sp_cx_brztmx.Parameters.Refresh;
  sp_cx_brztmx.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_cx_brztmx.Parameters.ParamByName('@rq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  sp_cx_brztmx.Open;
  if RadioButton1.Checked then
  begin
    sp_cx_brztmx.Filtered:=false;
    sp_cx_brztmx.Filter:='scbz=false';
    sp_cx_brztmx.Filtered:=True;
  end
  else
  begin
    sp_cx_brztmx.Filtered:=false;
  end;
end;

procedure Tfrm_brztbj.RadioButton1Click(Sender: TObject);
begin
    sp_cx_brztmx.Filtered:=false;
    sp_cx_brztmx.Filter:='scbz=false';
    sp_cx_brztmx.Filtered:=True;
end;

procedure Tfrm_brztbj.RadioButton2Click(Sender: TObject);
begin
  sp_cx_brztmx.Filtered:=false;
end;

end.
