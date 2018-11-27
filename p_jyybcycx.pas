unit p_jyybcycx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, DBCtrlsEh,  cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ADODB, ExtCtrls;

type
  Tfrm_jyybcycx = class(TForm)
    qry_jyfzxxlb: TADOQuery;
    ds_jyfzxxlb: TDataSource;
    qry_jyfzxxlr: TADOQuery;
    ds_jyfzxxlr: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    dtp_startTime: TDateTimePicker;
    Label2: TLabel;
    dtp_endTime: TDateTimePicker;
    btn_CX: TButton;
    GroupBox1: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1_tmh: TcxGridDBColumn;
    cxGrid1DBTableView1_brxm: TcxGridDBColumn;
    cxGrid1DBTableView1_fzbh: TcxGridDBColumn;
    cxGrid1DBTableView1_sqys: TcxGridDBColumn;
    cxGrid1DBTableView1_yb: TcxGridDBColumn;
    cxGrid1DBTableView1_qrcysj: TcxGridDBColumn;
    cxGrid1DBTableView1_qrcyry: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    GroupBox2: TGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1_jyfzbh: TcxGridDBColumn;
    cxGridDBTableView1_jyxmmc: TcxGridDBColumn;
    cxGridDBTableView1_yb: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    edt_jytmh: TEdit;
    Label3: TLabel;
    btn_close: TButton;
    Button1: TButton;
    sp_in_jyybjs: TADOStoredProc;
    qry_cx_jytmh: TADOQuery;
    Label4: TLabel;
    procedure btn_CXClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btn_closeClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edt_jytmhKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jyybcycx: Tfrm_jyybcycx;

implementation

uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_jyybcycx.btn_closeClick(Sender: TObject);
begin
 Close;
end;

procedure Tfrm_jyybcycx.btn_CXClick(Sender: TObject);
begin

  if dtp_startTime.DateTime <= dtp_endTime.DateTime then //判断开始日期与结束日期
  begin
    qry_jyfzxxlb.Close;
    //根据 科室 ，开始日期和结束日期查询检验采样分组信息。
    qry_jyfzxxlb.Parameters.ParamByName('ksdm').Value := pub_ksdm;
    qry_jyfzxxlb.Parameters.ParamByName('starttime').DataType := ftDateTime;
    qry_jyfzxxlb.Parameters.ParamByName('starttime').Value := dtp_startTime.DateTime;
    qry_jyfzxxlb.Parameters.ParamByName('endtime').DataType := ftDateTime;
    qry_jyfzxxlb.Parameters.ParamByName('endtime').Value := dtp_endTime.DateTime;
    qry_jyfzxxlb.open;
    if qry_jyfzxxlb.IsEmpty then
    begin
      ShowMessage('查询结果为空');
      Exit;
    end;
  end
  else
  begin
     ShowMessage('开始日期应该小于或等于结束日期')
  end;
end;

procedure Tfrm_jyybcycx.Button1Click(Sender: TObject);
begin
  qry_cx_jytmh.Close;
  qry_cx_jytmh.SQL.Text := 'select * from dzbl_jysqd where fzbh=' + edt_jytmh.Text;
  qry_cx_jytmh.Open;
  if qry_cx_jytmh.IsEmpty then
  begin
    ShowMessage('检验项目中不存在该检验条码号对应检验分组信息');
    exit;
  end
  else
  begin
    sp_in_jyybjs.Close;
    sp_in_jyybjs.parameters.ParamByName( '@jytmh' ).value :=  edt_jytmh.Text;
    sp_in_jyybjs.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
    sp_in_jyybjs.ExecProc;
    ShowMessage('成功确认检验采样');
  end;

  qry_jyfzxxlb.Close;
  qry_jyfzxxlb.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
  qry_jyfzxxlb.Parameters.ParamByName('starttime').Value:=dtp_startTime.DateTime;
  qry_jyfzxxlb.Parameters.ParamByName('endtime').Value:=dtp_endTime.DateTime;
  qry_jyfzxxlb.Open;

  edt_jytmh.Text:='';
  edt_jytmh.SetFocus;
end;

procedure Tfrm_jyybcycx.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //查询检验采样分组 信息中的具体项目
  qry_jyfzxxlr.Close;
  qry_jyfzxxlr.Parameters.ParamByName('fzbh').Value := qry_jyfzxxlb.FieldByName('fzbh').Text;
  qry_jyfzxxlr.open;

  edt_jytmh.Text := qry_jyfzxxlb.FieldByName('fzbh').Text;
end;

procedure Tfrm_jyybcycx.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not  (AViewInfo.GridRecord.DisplayTexts[6] ='')  then
 begin
     ACanvas.Font.Color := clBlue;
 end;
end;

procedure Tfrm_jyybcycx.edt_jytmhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        Button1Click(Sender);

end;

procedure Tfrm_jyybcycx.FormShow(Sender: TObject);
begin
dtp_startTime.DateTime:=StrToDateTime(formatdatetime('yyyy-mm-dd hh:mm:ss',Now-1));
dtp_endTime.DateTime:=Now;
end;

end.
