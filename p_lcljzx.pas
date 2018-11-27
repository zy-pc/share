unit p_lcljzx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, cxCheckBox;

type
  Tfrm_lcljzx = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ComboBox1: TComboBox;
    sp_ljcx: TADOStoredProc;
    ds_ljcx: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Button3: TButton;
    Memo1: TMemo;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    v_zyh:string;
    ysbz:Boolean;
  end;

var
  frm_lcljzx: Tfrm_lcljzx;

implementation
uses p_dm,p_func;
{$R *.dfm}

procedure Tfrm_lcljzx.Button1Click(Sender: TObject);
begin
  try
    sp_ljcx.First;
    while not sp_ljcx.eof do
    begin
      if sp_ljcx.FieldByName('zxbz').AsBoolean=true then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text:='update lclj_brljzx_mx set zxjg=''1'',rq='+
        ''''+formatdatetime('yyyyMMdd',Frm_func.curr_date)+''''+' where zyh='+''''+
        v_zyh+''''+ ' and ljid='+''''+sp_ljcx.FieldByName('ljid').asstring+''''+' and '+
        'jdid='+''''+sp_ljcx.FieldByName('jdid').asstring+''''+' and rq='+''''+
        sp_ljcx.FieldByName('rq').asstring+''''+' and xmid='+''''+
        sp_ljcx.FieldByName('xmid').asstring+'''';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_ljcx.Next;
    end;
    Application.MessageBox('执行成功', '提示', MB_OK + MB_ICONINFORMATION);
  except
    Application.MessageBox('执行失败', '提示', MB_OK + MB_ICONSTOP);
  end;
  sp_ljcx.Close;
  sp_ljcx.Parameters.Refresh;
  sp_ljcx.Parameters.ParamByName('@zyh').Value:=v_zyh;
  sp_ljcx.Parameters.ParamByName('@rq').Value:=ComboBox1.text;
  sp_ljcx.Open;
  
end;

procedure Tfrm_lcljzx.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_lcljzx.Button3Click(Sender: TObject);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from lclj_brljby where zyh='+''''+v_zyh+''''+
  ' and rq='+''''+ComboBox1.text+'''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox('所选日期没有变异情况发生！',
    '警告', MB_OK + MB_ICONWARNING);
  end
  else
  begin
    Memo1.text:= DM_data.qry_pub.FieldByName('byqk').asstring+#13+#10+
    '●'+DM_data.qry_pub.FieldByName('bycl').asstring+'●';
  end;
end;

procedure Tfrm_lcljzx.ComboBox1Change(Sender: TObject);
begin
  sp_ljcx.Close;
  sp_ljcx.Parameters.Refresh;
  sp_ljcx.Parameters.ParamByName('@zyh').Value:=v_zyh;
  sp_ljcx.Parameters.ParamByName('@rq').Value:=ComboBox1.text;
  sp_ljcx.Open;
end;

procedure Tfrm_lcljzx.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if cxGrid1DBTableView1Column7.Selected then
  begin
    if sp_ljcx.FieldByName('zxzmc').asstring='医生执行' then
    begin
      if ysbz=False then
      Application.MessageBox('只能医生执行，当前身份不是医生，不能选择执行',
        '警告', MB_OK + MB_ICONWARNING);
      Exit;

    end
    else if sp_ljcx.FieldByName('zxzmc').asstring='护士执行' then
    begin
      if ysbz=true then
      Application.MessageBox('只能护士执行，当前身份是医生，不能选择执行',
        '警告', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;
end;

procedure Tfrm_lcljzx.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[5]='已执行' then
    ACanvas.Canvas.brush.color := clGreen;

end;

procedure Tfrm_lcljzx.FormShow(Sender: TObject);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+''''+pub_czydm+'''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('ysbz').AsBoolean=true then
    ysbz:=True
  else
    ysbz:=False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select distinct rq from lclj_brljzx_mx where zyh='+''''+v_zyh+'''';
  DM_data.qry_pub.Open;
  ComboBox1.Clear;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox1.Items.Add(DM_data.qry_pub.FieldByName('rq').asstring);
    DM_data.qry_pub.Next;
  end;
  ComboBox1.ItemIndex:=0;
  sp_ljcx.Close;
  sp_ljcx.Parameters.Refresh;
  sp_ljcx.Parameters.ParamByName('@zyh').Value:=v_zyh;
  sp_ljcx.Parameters.ParamByName('@rq').Value:=ComboBox1.text;
  sp_ljcx.Open;
  Memo1.text:='';
end;

end.
