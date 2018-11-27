unit p_cx_wjztj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ADODB;

type
  Tfrm_cx_wjztj = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    sp_cx_wjzhz: TADOStoredProc;
    ds_cx_wjzhz: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    ds_cx_brmx: TDataSource;
    qry_cx_brmx: TADOQuery;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cx_wjztj: Tfrm_cx_wjztj;

implementation

uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_cx_wjztj.Button1Click(Sender: TObject);
begin
  if trim(ComboBox1.Text)='全部病区' then
  begin
    sp_cx_wjzhz.close;
    sp_cx_wjzhz.Parameters.Refresh;
    sp_cx_wjzhz.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
    sp_cx_wjzhz.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime);
    sp_cx_wjzhz.Parameters.ParamByName('@bqdm').Value:='';
    sp_cx_wjzhz.Open;
  end
  else
  begin
    sp_cx_wjzhz.close;
    sp_cx_wjzhz.Parameters.Refresh;
    sp_cx_wjzhz.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
    sp_cx_wjzhz.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime);
    sp_cx_wjzhz.Parameters.ParamByName('@bqdm').Value:=Copy(Trim(ComboBox1.text),1,4);
    sp_cx_wjzhz.Open;
  end;

end;

procedure Tfrm_cx_wjztj.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_cx_wjztj.Button3Click(Sender: TObject);
begin
  if(sp_cx_wjzhz.Active=true) and (sp_cx_wjzhz.RecordCount>0) then
  begin
    Frm_func.cxgridtoexcel(cxGrid2,3,sp_cx_wjzhz.FieldByName('mc').asstring+
    formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime)+'到'+
    formatdatetime('yyyy-MM-dd',DateTimePicker2.DateTime)+'处理危急值病人明细',
    '','',TADOStoredProc.Create(self));
  end;
end;

procedure Tfrm_cx_wjztj.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  qry_cx_brmx.Close;
  qry_cx_brmx.SQL.text:='select a.tmh,a.brxm,a.brxb,a.brnl,a.bch,c.mc zgys,d.jsrq,b.clsj,isnull(datediff(MINUTE,d.jsrq,b.clsj),0) jgsj from zysf_zydj a,(select czydm,zyh,fzbh,min(clsj) clsj from zybl_jyjg_wjzbr where '+
  ' czydm='+''''+sp_cx_wjzhz.FieldByName('dm').asstring+''''+' and convert(varchar,clsj,112)>='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' and convert(varchar,clsj,112)<='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime)+''''+' group by czydm,zyh,fzbh ) b,sys_czy c,dzbl_jysqd d '+
  ' where a.zyh=b.zyh and a.zgys*=c.dm and b.fzbh=d.fzbh '+
  ' union all '+
  'select a.tmh,a.brxm,a.brxb,a.brnl,a.bch,c.mc zgys,d.jsrq,b.clsj,isnull(datediff(MINUTE,d.jsrq,b.clsj),0) jgsj from zysf_cydj a,(select czydm,zyh,fzbh,min(clsj) clsj from zybl_jyjg_wjzbr where '+
  ' czydm='+''''+sp_cx_wjzhz.FieldByName('dm').asstring+''''+' and convert(varchar,clsj,112)>='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' and convert(varchar,clsj,112)<='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime)+''''+' group by czydm,zyh,fzbh ) b,sys_czy c,dzbl_jysqd d '+
  ' where a.zyh=b.zyh  and a.zgys*=c.dm and b.fzbh=d.fzbh '+
  ' union all '+
  ' select a.tmh,a.brxm,a.brxb,a.brnl,a.bch,c.mc zgys,d.jsrq,b.clsj,isnull(datediff(MINUTE,d.jsrq,b.clsj),0) jgsj from zysf_zydj a,(select czydm,zyh,fzbh,min(clsj) clsj from zybl_jyjg_wjzbr where '+
  ' czydm='+''''+sp_cx_wjzhz.FieldByName('dm').asstring+''''+' and convert(varchar,clsj,112)>='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' and convert(varchar,clsj,112)<='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime)+''''+' group by czydm,zyh,fzbh ) b,sys_czy c,dzbl_jysqd_bf d '+
  ' where a.zyh=b.zyh and a.zgys*=c.dm and b.fzbh=d.fzbh '+
  ' union all '+
  ' select a.tmh,a.brxm,a.brxb,a.brnl,a.bch,c.mc zgys,d.jsrq,b.clsj,isnull(datediff(MINUTE,d.jsrq,b.clsj),0) jgsj from zysf_cydj a,(select czydm,zyh,fzbh,min(clsj) clsj from zybl_jyjg_wjzbr where '+
  ' czydm='+''''+sp_cx_wjzhz.FieldByName('dm').asstring+''''+' and convert(varchar,clsj,112)>='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' and convert(varchar,clsj,112)<='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime)+''''+' group by czydm,zyh,fzbh ) b,sys_czy c,dzbl_jysqd_bf d '+
  ' where a.zyh=b.zyh  and a.zgys*=c.dm and b.fzbh=d.fzbh '+
  ' union all '+
  ' select a.tmh,a.brxm,a.brxb,a.brnl,a.bch,c.mc zgys,d.jsrq,b.clsj,isnull(datediff(MINUTE,d.jsrq,b.clsj),0) jgsj from zysf_zydj a,(select czydm,zyh,fzbh,min(clsj) clsj from zybl_jyjg_wjzbr where '+
  ' czydm='+''''+sp_cx_wjzhz.FieldByName('dm').asstring+''''+' and convert(varchar,clsj,112)>='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' and convert(varchar,clsj,112)<='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime)+''''+' group by czydm,zyh,fzbh ) b,sys_czy c,dzbl_jysqd_zc d '+
  ' where a.zyh=b.zyh and a.zgys*=c.dm and b.fzbh=d.fzbh '+
  ' union all '+
  ' select a.tmh,a.brxm,a.brxb,a.brnl,a.bch,c.mc zgys,d.jsrq,b.clsj,isnull(datediff(MINUTE,d.jsrq,b.clsj),0) jgsj from zysf_cydj a,(select czydm,zyh,fzbh,min(clsj) clsj from zybl_jyjg_wjzbr where '+
  ' czydm='+''''+sp_cx_wjzhz.FieldByName('dm').asstring+''''+' and convert(varchar,clsj,112)>='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' and convert(varchar,clsj,112)<='+
  ''''+FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime)+''''+' group by czydm,zyh,fzbh ) b,sys_czy c,dzbl_jysqd_zc d '+
  ' where a.zyh=b.zyh  and a.zgys*=c.dm and b.fzbh=d.fzbh ';

  qry_cx_brmx.Open;
end;

procedure Tfrm_cx_wjztj.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
        if strtoint(AViewInfo.RecordViewInfo.GridRecord.Values[8]) > 60 then
        ACanvas.Brush.Color := clRed;
end;

procedure Tfrm_cx_wjztj.FormShow(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Frm_func.curr_date;
  DateTimePicker2.DateTime:=Frm_func.curr_date;
  ComboBox1.Items.Clear;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_bqdm order by bqdm';
  DM_data.qry_pub.open;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox1.Items.Add(DM_data.qry_pub.FieldByName('bqdm').asstring+
    '_'+trim(DM_data.qry_pub.FieldByName('bqmc').asstring));
    DM_data.qry_pub.Next;
  end;
  ComboBox1.Items.Add('全部病区');
end;

end.
