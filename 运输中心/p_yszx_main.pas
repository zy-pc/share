unit p_yszx_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ExtCtrls, cxStyles, cxFilter, cxData, cxTextEdit,TypInfo,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomTableView, cxGridDBTableView,   cxGrid, ADODB, StdCtrls, ComCtrls,
  cxDropDownEdit, RzBckgnd, RzButton, RzPanel, Menus, RzDTP, cxMaskEdit,
  cxContainer, cxGridCustomView, cxGridTableView, cxCustomData, cxGraphics;

const
  TDateTimeFormat = 'yyyy-MM-dd HH:mm:ss';
  TimeFormat = 'HH:mm:ss';
  DateFormat = 'yyyy-MM-dd';

type
  {运输状态}
  TTransState =(
    pfAll,      {所有}
    pfAllNotReady, {未申请运输}
    pfAllReady,    {已申请运输}
    pfAllGiveup,   {取消运输申请}
    pfNotStart, {已申请未开始运输}
    pfNotStartGiveup,{已申请，等待运输取消运输}
    pfDoing,    {正在运输}
    pfCanceled, {中途取消运输}
    pfComplate//,  {运输完成}
    //pfEmergency {急诊运输}
  );
  function EnumToInt(Stats: TTransState): integer;

const
  {顺序与运输状态对应}
  ConditionStr:array[0..8] of string=(
    ' ',{pfAll}
    ' AND ISNULL(a.yysj, 0)=0',{pfAllNotReady}
    ' AND ISNULL(a.yysj, 0)<>0 AND ISNULL(a.qxbz,0)=0', {pfAllReady}
    ' AND a.qxbz=1', {pfAllGiveup}
    ' AND ISNULL(a.yysj, 0)<>0 AND ISNULL(a.qxbz, 0)=0 AND ISNULL(a.ksysbz, 0)=0', {pfNotStart}
    ' AND ISNULL(a.yysj, 0)<>0 AND a.qxbz=1 AND ISNULL(a.ksysbz, 0)=0', {pfNotStartGiveup}
    ' AND ISNULL(a.yysj, 0)<>0 AND ISNULL(a.qxbz,0)=0 AND a.ksysbz=1 AND ISNULL(a.yswcbz, 0)=0',{pfDoing}
    ' AND ISNULL(a.yysj, 0)<>0 AND a.qxbz=1 AND a.ksysbz=1 AND ISNULL(a.yswcbz,0)=0', {pfCanceled}
    ' AND yswcbz=1' {pfComplate}
  );

type
  TTimePoint = (tpBegin,tpEnd,tpOther);

  {病人检查运输总表记录}
  TCheckRecord = record
    ksysbz:Boolean;  {开始运输标志}
    qxbz:Boolean;    {取消标志}
    yswcbz:Boolean;  {运输完成标志}
    sfjz:Boolean;    {是否急诊}
    yysj: TDateTime; {预约时间}
    ggyysj:TDateTime;{更改预约时间}
    yssj:TDateTime;  {运输时间}
    wcsj:TDateTime;  {完成时间}
    qxsj:TDateTime;  {取消时间}
    ysry1:string;  {运输人员1}
    ysry2:string;
    ysry3:string;
    brszks:string; {病人所在科室}
    bch:string;
    qxry:string;   {取消人员}
    ysbm: string;  {运输编码}
    ysfs: string;  {运输方式}
    zyh: string;
    tmh: string;
    brxm:string;
    ggyy: string;  {更改原因}
  end;

  TFrm_yszx_main = class(TForm)
    pnlPatientsInfo: TPanel;
    pnlMainInfo: TPanel;
    pnlPersonalInfo: TPanel;
    pnlTransInfo: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qryPatsInfo: TADOQuery;
    dsPatsInfo: TDataSource;
    cxstylrpstry1: TcxStyleRepository;
    HeaderColor: TcxStyle;
    OddLine: TcxStyle;
    background: TcxStyle;
    EvenLine: TcxStyle;
    footer: TcxStyle;
    cxGrid1DBTableView1yybch: TcxGridDBColumn;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1zyh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1ysfs: TcxGridDBColumn;
    cxGrid1DBTableView1ysbm: TcxGridDBColumn;
    qryTransDetials: TADOQuery;
    dsTransDetials: TDataSource;
    cxGridDBTableView1tmh: TcxGridDBColumn;
    cxGridDBTableView1ksmc: TcxGridDBColumn;
    cxGridDBTableView1brxm: TcxGridDBColumn;
    cxGridDBTableView1brxb: TcxGridDBColumn;
    cxGridDBTableView1brnl: TcxGridDBColumn;
    cxGridDBTableView1yysj: TcxGridDBColumn;
    cxGridDBTableView1jcxm: TcxGridDBColumn;
    cxGridDBTableView1bz: TcxGridDBColumn;
    cxGridDBTableView1bch: TcxGridDBColumn;
    pnlysqm: TPanel;
    lblYsqm: TLabel;
    lblTableName: TLabel;
    lblryzd: TLabel;
    lblysfs: TLabel;
    redtRyzd: TRichEdit;
    cbbYsfs: TcxComboBox;
    lblYzrq: TLabel;
    rzsprtrLeft: TRzSeparator;
    headerColor2: TcxStyle;
    GroupBox: TGroupBox;
    rzsprtr1: TRzSeparator;
    cxGrid1DBTableView1qxbz: TcxGridDBColumn;
    cxGrid1DBTableView1yysj: TcxGridDBColumn;
    cxGridDBTableView1yzsj: TcxGridDBColumn;
    cxGridDBTableView1ryzd: TcxGridDBColumn;
    rzsprtrButtom: TRzSeparator;
    rzsprtrRight: TRzSeparator;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    pnl1: TPanel;
    rzsprtrTop: TRzSeparator;
    rzbtbtnClose: TRzBitBtn;
    rzbtbtnPrint: TRzBitBtn;
    rzbtbtnCommit: TRzBitBtn;
    rzbtbtnGiveup: TRzBitBtn;
    edtYzrq: TEdit;
    edtKdys: TEdit;
    N13: TMenuItem;
    N12: TMenuItem;
    pnlState: TRzPanel;
    pnlTmPk: TPanel;
    lbl2: TLabel;
    lbl1: TLabel;
    rzbtbtnTime: TRzBitBtn;
    dtp1YMD: TRzDateTimePicker;
    dtp1HMS: TRzDateTimePicker;
    dtp2YMD: TRzDateTimePicker;
    dtp2HMS: TRzDateTimePicker;
    edtysry3: TEdit;
    edtysry1: TEdit;
    edtysry2: TEdit;
    rzbtbtnChangeYssj: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure N1Click(Sender: TObject);
    procedure NClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure pnl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rzbtbtnCloseClick(Sender: TObject);
    procedure rzbtbtnPrintClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure rzbtbtnGiveupClick(Sender: TObject);
    procedure rzbtbtnCommitClick(Sender: TObject);
    procedure qryPatsInfoAfterOpen(DataSet: TDataSet);
    procedure rzbtbtnTimeClick(Sender: TObject);
    procedure dtp1YMDChange(Sender: TObject);
    procedure dtp1HMSChange(Sender: TObject);
    procedure dtp2YMDChange(Sender: TObject);
    procedure dtp2HMSChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FPatient: TCheckRecord;
    FStats: TTransState;
    FTmConditionStr:string; {时间过滤条件}
    procedure WriteRecord;
    procedure PatientFilter(Stats: TTransState;Item: TMenuItem);
    procedure RequeryData(qryData: TADOQuery);
    procedure ClearTransSheet;
    procedure setBtnVisiblility;
    procedure setBtnsInvisable;
    procedure LookupOrderDoctor(zyh,ysbm: string);
    procedure ShowStateInfo;
    function  GetTimeCondition(startTm,endTm: TDateTimePicker):string;
    procedure SetDefaultTime;
    function  GetPatientSqlStr(Stats: TTransState):string;
    procedure MyTimeChange(Sender: TObject);
    procedure SaveSelectStats(Stats: TTransState);
    procedure RequeryWhenChange;
    procedure SetTimeBtnCaption;
    procedure SetInitInfoInForm;

  public
    { Public declarations }
  end;

var
  Frm_yszx_main: TFrm_yszx_main;
procedure ShowTransportationCenter;
function getTimePoint(DateTime: TDateTime; TP: TTimePoint): TDateTime;

implementation

uses p_dm, p_func, p_zysf_print_service; 

{$R *.dfm}

 procedure ShowTransportationCenter;
 begin
   try
     Application.CreateForm(TFrm_yszx_main, Frm_yszx_main);
     Application.OnMessage := nil;
     Frm_yszx_main.ShowModal;
   finally
     Frm_yszx_main.Free;
   end;
 end;

function getTimePoint(DateTime: TDateTime; TP: TTimePoint): TDateTime;
var
  str: string;
 begin
    if TP=tpBegin then
      str := FormatDateTime(DateFormat ,DateTime) + ' 00:00:00'
    else
    if TP=tpEnd then
      str := FormatDateTime(DateFormat ,DateTime) + ' 23:59:59';
    Result := StrToDateTime(str);
 end;

function EnumToInt(Stats: TTransState): integer;
begin
  case Stats of
    pfAll:
      Result :=0;

    pfAllNotReady:
      Result :=1;

    pfAllReady:
     Result := 2;

    pfAllGiveup:
      Result := 3;

    pfNotStart:
      Result := 4;

    pfNotStartGiveup:
      Result :=5;

    pfDoing:
      Result :=6;

    pfCanceled:
      Result :=7;

    pfComplate:
      Result :=8;

  end;
end;

procedure TFrm_yszx_main.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrm_yszx_main.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);

begin
  if AButton = mbRight then
    Exit;
  if qryPatsInfo.IsEmpty then
    Exit;

  {写记录}
  WriteRecord;

  if FPatient.ysfs ='平车' then
    cbbYsfs.ItemIndex := 1
  else if FPatient.ysfs ='轮椅' then
    cbbYsfs.ItemIndex := 2
  else
    cbbYsfs.ItemIndex := 0;

  if FPatient.sfjz then
  begin
    lblTableName.Caption := '急诊运输申请单';
    lblTableName.Font.Color := clRed;
  end
  else
  begin
    lblTableName.Caption := '平诊运输申请单';
    lblTableName.Font.Color := clBlack;
  end;

  qryTransDetials.Close;
  qryTransDetials.Parameters.ParamByName('zyh').Value := FPatient.zyh;
  qryTransDetials.Parameters.ParamByName('ysbm').Value :=  FPatient.ysbm;
  qryTransDetials.Open;
  if not qryTransDetials.IsEmpty then
  begin
    qryTransDetials.First;
    edtYzrq.Text  := Trim(qryTransDetials.FieldByName('yzsj').AsString);
    redtRyzd.Text := Trim(qryTransDetials.FieldByName('ryzd').AsString);
    edtysry1.text := FPatient.ysry1;
    edtysry2.Text := FPatient.ysry2;
    edtysry3.Text := FPatient.ysry3;

    {查询开单医生}
    LookupOrderDoctor(FPatient.zyh, FPatient.ysbm);

    {设置按钮可见性}
    setBtnVisiblility;

    {显示右上角状态}
    ShowStateInfo;
  end;
end;

procedure TFrm_yszx_main.cxGrid1DBTableView1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    cxGrid1DBTableView1.PopupMenu := PopupMenu1;
  end;
end;

procedure TFrm_yszx_main.dtp1HMSChange(Sender: TObject);
begin
  MyTimeChange(Sender);
end;

procedure TFrm_yszx_main.dtp1YMDChange(Sender: TObject);
begin
  MyTimeChange(Sender);
end;

procedure TFrm_yszx_main.dtp2HMSChange(Sender: TObject);
begin
  MyTimeChange(Sender);
end;

procedure TFrm_yszx_main.dtp2YMDChange(Sender: TObject);
begin
  MyTimeChange(Sender);
end;

procedure TFrm_yszx_main.FormResize(Sender: TObject);
begin
  pnlTmPk.Top  := GroupBox.Top + GroupBox.Height - 44;
  pnlTmPk.Left := pnlysqm.Left + 5;
end;

procedure TFrm_yszx_main.FormShow(Sender: TObject);
begin
  SetInitInfoInForm;

  //设置时间范围默认值
  SetDefaultTime;

  qryPatsInfo.Close;
  qryPatsInfo.SQL.Text := GetPatientSqlStr(pfAll);
  qryPatsInfo.Open;

  //SetTimeBtnCaption;
  rzbtbtnTime.Caption := '隐藏时间';
end;

procedure TFrm_yszx_main.N11Click(Sender: TObject);
begin
  PatientFilter(pfNotStartGiveup, Sender as TMenuItem);
end;

procedure TFrm_yszx_main.N1Click(Sender: TObject);
begin
  PatientFilter(pfAll, Sender as TMenuItem);
end;

procedure TFrm_yszx_main.N2Click(Sender: TObject);
begin
  PatientFilter(pfALLGiveup, Sender as TMenuItem);
end;

procedure TFrm_yszx_main.N3Click(Sender: TObject);
begin
  PatientFilter(pfAllReady, Sender as TMenuItem);
end;

procedure TFrm_yszx_main.N4Click(Sender: TObject);
begin
  PatientFilter(pfAllNotReady, Sender as TMenuItem);
end;

procedure TFrm_yszx_main.N5Click(Sender: TObject);
begin
  PatientFilter(pfCanceled, Sender as TMenuItem);
end;

procedure TFrm_yszx_main.N8Click(Sender: TObject);
begin
  PatientFilter(pfComplate, Sender as TMenuItem);
end;

procedure TFrm_yszx_main.N9Click(Sender: TObject);
begin
  PatientFilter(pfNotStart, Sender as TMenuItem);
end;

procedure TFrm_yszx_main.NClick(Sender: TObject);
begin
  PatientFilter(pfDoing, Sender as TMenuItem);
end;

procedure TFrm_yszx_main.PatientFilter(Stats: TTransState; Item: TMenuItem);
begin
  SetInitInfoInForm;

  qryPatsInfo.Close;
  qryPatsInfo.SQL.Text := GetPatientSqlStr(Stats);
  qryPatsInfo.Open;
  
  pnl1.Caption := Copy(Item.Caption, 0, Pos('(', Item.Caption)-1);
  qryTransDetials.Close;

  {设置按钮不可见}
  setBtnsInvisable;

  {设置又上角状态不可见}
  pnlState.Visible := False;

  SaveSelectStats(Stats);
end;

procedure TFrm_yszx_main.pnl1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pnl1.PopupMenu.Popup(Self.Left + rzsprtrLeft.Width   + X,
                       Self.Top  + pnlPatientsInfo.Top + Y );
end;

procedure TFrm_yszx_main.qryPatsInfoAfterOpen(DataSet: TDataSet);
begin
  if qryPatsInfo.IsEmpty then
  begin
    rzbtbtnPrint.Visible := False;
    rzbtbtnCommit.Visible := False;
    rzbtbtnGiveup.Visible := False;
  end;
end;

procedure TFrm_yszx_main.rzbtbtnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrm_yszx_main.rzbtbtnCommitClick(Sender: TObject);
begin
  with DM_data.qry_pub do
  begin
    Close;
    SQL.Text := 'UPDATE yszx_brys_ls  SET qxbz=0 WHERE zyh=''' +
                qryPatsInfo.FieldByName('zyh').AsString + '''';
    try
      if 0 < ExecSQL then
      begin
        Application.MessageBox('运输申请已提交！', '提示', MB_OK +
          MB_ICONINFORMATION);
        RequeryData(qryPatsInfo);
//        ClearTransSheet;
        SetInitInfoInForm;
        qryTransDetials.Close;
      end;
    except

    end;
  end;
end;

procedure TFrm_yszx_main.rzbtbtnGiveupClick(Sender: TObject);
begin
  with DM_data.qry_pub do
  begin
    Close;
    SQL.Text :=
      //总表 临时 明细 三张表的qxbz都置1
      'UPDATE yszx_brys_zb  SET qxbz=1,qxsj=getdate(),qxry='''+ pub_czydm +
      ''' WHERE ysbm=''' +  qryPatsInfo.FieldByName('ysbm').AsString + ''';' +
      'UPDATE yszx_brys_ls SET qxbz=1,qxsj=getdate(),qxry='''+ pub_czydm +
      ''' WHERE id IN (SELECT id FROM yszx_brys_mx '+
      'WHERE ysbm=''' + qryPatsInfo.FieldByName('ysbm').AsString + ''' );'+
      'UPDATE yszx_brys_mx SET qxbz=1 WHERE ysbm='''+
      qryPatsInfo.FieldByName('ysbm').AsString + '''';

    try
      if 0 < ExecSQL then
      begin
        Application.MessageBox('成功取消运输申请！', '提示', MB_OK +
          MB_ICONINFORMATION);
        RequeryData(qryPatsInfo);
//        ClearTransSheet;
        SetInitInfoInForm;
        qryTransDetials.Close;
      end;
    except

    end;
  end;
end;

procedure TFrm_yszx_main.rzbtbtnPrintClick(Sender: TObject);
begin
  frm_zysf_print_service.PrtPatsTransSheet(
      Trim(redtRyzd.Text),
      Trim(cbbYsfs.Text),
      Trim(edtYzrq.Text),
      Copy(lblTableName.Caption, 0, 10),
      edtKdys.Text,
      qryTransDetials
    );
end;

procedure TFrm_yszx_main.rzbtbtnTimeClick(Sender: TObject);
begin
  SetTimeBtnCaption;

  pnlTmPk.Visible := not pnlTmPk.Visible;
end;

procedure TFrm_yszx_main.RequeryData(qryData: TADOQuery);
begin
  if Length(Trim(qryData.SQL.Text)) > 10 then //sql<>''
  begin
    qryData.Close;
    qryData.Open;
  end;
end;

procedure TFrm_yszx_main.ClearTransSheet;
begin
  qryTransDetials.Close;
  redtRyzd.Clear;
  cbbYsfs.ItemIndex := 0;
  edtYzrq.Clear;
  edtKdys.Clear;
end;

procedure TFrm_yszx_main.setBtnVisiblility;
begin
  //打印按钮
  if FPatient.sfjz and (not FPatient.qxbz) and (not FPatient.ksysbz) then
    rzbtbtnPrint.Visible := True
  else
    rzbtbtnPrint.Visible := False;

  //取消申请按钮
  if (not FPatient.qxbz) and (not FPatient.ksysbz) then
    rzbtbtnGiveup.Visible := True
  else
    rzbtbtnGiveup.Visible := False;

  //提交申请按钮
  if (FPatient.yysj=0) or FPatient.qxbz then
    rzbtbtnCommit.Visible := True
  else
    rzbtbtnCommit.Visible := False;
end;

procedure TFrm_yszx_main.WriteRecord;
begin
  FPatient.ksysbz := qryPatsInfo.FieldByName('ksysbz').AsBoolean;
  FPatient.qxbz   := qryPatsInfo.FieldByName('qxbz').AsBoolean;
  FPatient.yswcbz := qryPatsInfo.FieldByName('yswcbz').AsBoolean;
  FPatient.sfjz   := qryPatsInfo.FieldByName('sfjz').AsBoolean;
  FPatient.yysj   := qryPatsInfo.FieldByName('yysj').AsDateTime;
  FPatient.ggyysj := qryPatsInfo.FieldByName('ggyssj').AsDateTime;
  FPatient.yssj   := qryPatsInfo.FieldByName('yssj').AsDateTime;
  FPatient.wcsj   := qryPatsInfo.FieldByName('wcsj').AsDateTime;
  FPatient.qxsj   := qryPatsInfo.FieldByName('qxsj').AsDateTime;
  FPatient.ysbm   := qryPatsInfo.FieldByName('ysbm').AsString;
  FPatient.tmh    := qryPatsInfo.FieldByName('tmh').AsString;
  FPatient.zyh    := qryPatsInfo.FieldByName('zyh').AsString;
  FPatient.brxm   := qryPatsInfo.FieldByName('brxm').AsString;
  FPatient.ysfs   := qryPatsInfo.FieldByName('ysfs').AsString;
  FPatient.brszks := qryPatsInfo.FieldByName('brszks').AsString;
  FPatient.bch    := qryPatsInfo.FieldByName('bch').AsString;
  FPatient.ysry1  := qryPatsInfo.FieldByName('ysry1').AsString;
  FPatient.ysry2  := qryPatsInfo.FieldByName('ysry2').AsString;
  FPatient.ysry3  := qryPatsInfo.FieldByName('ysry3').AsString;
  FPatient.qxry   := qryPatsInfo.FieldByName('qxry').AsString;
  FPatient.ggyy   := qryPatsInfo.FieldByName('ggyy').AsString;
end;

{查找开单医生}
procedure TFrm_yszx_main.LookupOrderDoctor(zyh: string; ysbm: string);
begin
  DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text :=
        'SELECT DISTINCT a.mc FROM sys_czy a INNER JOIN zybl_zyyz b ON a.dm=b.kdys'
      + ' WHERE b.zyh=''' + zyh
      + ''' AND b.xh IN (SELECT TOP 1 yzbh FROM yszx_brys_mx WHERE ysbm='''+ ysbm + ''')';
    DM_data.qry_pub.Open;
    if not DM_data.qry_pub.IsEmpty then
      edtKdys.Text := Trim(DM_data.qry_pub.FieldByName('mc').AsString)
    else
      edtKdys.Text := '';
end;

{显示运输状态}
procedure TFrm_yszx_main.ShowStateInfo;
begin
  if FPatient.qxbz and FPatient.ksysbz then
  begin
    pnlState.Caption := '运输过程中消运输';
    pnlState.Color := clRed;
  end
  else
  if FPatient.qxbz and (not FPatient.ksysbz)then
  begin
    pnlState.Caption := '未开始就取消运输';
    pnlState.Color := clRed;
  end
  else
  if (not FPatient.qxbz) and FPatient.yswcbz then
  begin
    pnlState.Caption := '已完成运输';
    pnlState.Color := clMoneyGreen;
  end
  else
  if (not FPatient.qxbz) and FPatient.ksysbz then
  begin
    pnlState.Caption := '正在运输';
    pnlState.Color := clGreen;
  end
  else if (not FPatient.qxbz) and (not FPatient.ksysbz) then
  begin
    pnlState.Caption := '未安排运输人员';
    pnlState.Color := clHighlight;
  end;

  if not pnlState.Visible then
    pnlState.Visible := True;
end;

procedure TFrm_yszx_main.setBtnsInvisable;
begin
  if rzbtbtnPrint.Visible then
    rzbtbtnPrint.Visible := False;

  if rzbtbtnGiveup.Visible then
    rzbtbtnGiveup.Visible := False;

  if rzbtbtnCommit.Visible then
    rzbtbtnCommit.Visible := False;
end;

{取得初始的 时间过滤条件 当天的开始和结束时间点}
function TFrm_yszx_main.GetTimeCondition(startTm,endTm: TDateTimePicker):string;
begin
  Result := ' AND a.yysj>=''' + FormatDateTime(TimeFormat, startTm.DateTime) +
        ''' AND a.yysj<=''' + FormatDateTime(TimeFormat, endTm.DateTime) + '''';
end;

{设置默认时间 }
procedure TFrm_yszx_main.SetDefaultTime;
begin
  dtp1YMD.DateTime := getTimePoint(Frm_func.curr_date, tpBegin);
  dtp1HMS.DateTime := dtp1YMD.DateTime;
  dtp2YMD.DateTime := getTimePoint(Frm_func.curr_date, tpEnd);
  dtp2HMS.DateTime := dtp2YMD.DateTime;

  FTmConditionStr :=
    ' AND a.yysj>=''' +
    FormatDateTime(DateFormat, dtp1YMD.Date) + ' ' +
    FormatDateTime(TimeFormat, dtp1HMS.Date) +
    ''' AND a.yysj<=''' +
    FormatDateTime(DateFormat, dtp2YMD.DateTime) + ' ' +
    FormatDateTime(TimeFormat, dtp2HMS.Date) + ''''
end;

{设置病人信息的sql内容}
function TFrm_yszx_main.GetPatientSqlStr(Stats: TTransState):string;
begin
    Result := 'SELECT a.* FROM yszx_brys_zb a WHERE brszks=''' +
               pub_ksdm + '''' + FTmConditionStr +
               ConditionStr[EnumToInt(Stats)];
end;

{时间改变时 更新时间过滤字符串 并重新查询}
procedure TFrm_yszx_main.MyTimeChange(Sender: TObject);
begin
  FTmConditionStr :=
    ' AND a.yysj>=''' +
    FormatDateTime(DateFormat, dtp1YMD.Date) + ' ' +
    FormatDateTime(TimeFormat, dtp1HMS.Date) +
    ''' AND a.yysj<=''' +
    FormatDateTime(DateFormat, dtp2YMD.DateTime) + ' ' +
    FormatDateTime(TimeFormat, dtp2HMS.Date) + '''';

    RequeryWhenChange;
end;

procedure TFrm_yszx_main.SaveSelectStats(Stats: TTransState);
begin
  FStats := Stats;
end;

procedure TFrm_yszx_main.RequeryWhenChange;
begin
  qryPatsInfo.Close;
  qryPatsInfo.SQL.Text := GetPatientSqlStr(FStats);
  qryPatsInfo.Open;
end;

procedure TFrm_yszx_main.SetTimeBtnCaption;
begin
  if pnlTmPk.Visible then
    rzbtbtnTime.Caption := '显示时间'
  else
    rzbtbtnTime.Caption := '隐藏时间';
end;

procedure TFrm_yszx_main.SetInitInfoInForm;
begin
  redtRyzd.Text := '显示入院诊断' ;
  setBtnsInvisable;
  pnlState.Visible := False;
  edtysry1.Text := '谁送去检查';
  edtysry2.Text := '谁陪伴检查';
  edtysry3.Text := '谁送回病区';
end;

end.
