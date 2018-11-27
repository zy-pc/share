unit p_cx_hztj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, RzPanel, RzBckgnd, RzButton, cxTextEdit,
  RzDTP;

const
  {本科室发出的会诊请求信息查询语句 add by XML 2014-11-01}
  SendSqlStr=
    'SELECT a.sfjs Receive_flag,'+
    '       a.sqbqdm,'+
    '       RTRIM(c.bqmc) sqbqmc,'+
    '       d.zgys sqysdm,'+
    '       e.mc sqysmc,'+
    '       CONVERT(VARCHAR(16),a.sqsj,120) sqsj,'+
    '       a.bqdm hzbqdm,'+
    '       RTRIM(a.bqmc) hzbqmc,'+
    '       a.zymc hzzymc,'+
    '       b.hzys hzysdm,'+
    '       f.mc hzysmc,'+
    '       CONVERT(VARCHAR(16),b.jssj,120) hzsj,'+
    '       a.zyh,'+
    '       RTRIM(d.brxm) brxm, '+
    '       d.bch ' +
    'FROM zydzbl_hzts a ' +
    'LEFT JOIN zyyz_hzmx b ON a.zyh=b.zyh ' +
    'LEFT JOIN sys_bqdm c ON a.sqbqdm=c.bqdm ' +
    'LEFT JOIN zysf_zydj d ON a.zyh=d.zyh ' +
    'LEFT JOIN sys_czy e ON d.zgys=e.dm ' +
    'LEFT JOIN sys_czy f on b.hzys= f.dm ' +
    'WHERE a.sqsj >= :StartTime1 ' +
    '  AND a.sqsj <= :EndTime1 ' +
    '  AND a.sqbqdm = :bqdm1 ' +
    '  AND d.brxm IS NOT NULL ' +
    'UNION ' +
    'SELECT a.sfjs Receive_flag,'+
    '       a.sqbqdm,'+
    '       RTRIM(c.bqmc) sqbqmc,'+
    '       d.zgys sqysdm,'+
    '       e.mc sqysmc,'+
    '       CONVERT(VARCHAR(16),a.sqsj,120) sqsj,'+
    '       a.bqdm hzbqdm,'+
    '       RTRIM(a.bqmc) hzbqmc,'+
    '       a.zymc hzzymc,'+
    '       b.hzys hzysdm,'+
    '       f.mc hzysmc,'+
    '       CONVERT(VARCHAR(16),b.jssj,120) hzsj,'+
    '       a.zyh,'+
    '       RTRIM(d.brxm) brxm, '+
    '       d.bch ' +
    'FROM zydzbl_hzts a ' +
    'LEFT JOIN zyyz_hzmx b ON a.zyh=b.zyh ' +
    'LEFT JOIN sys_bqdm c ON a.sqbqdm=c.bqdm ' +
    'LEFT JOIN zysf_cydj d ON a.zyh=d.zyh ' +
    'LEFT JOIN sys_czy e ON d.zgys=e.dm ' +
    'LEFT JOIN sys_czy f on b.hzys= f.dm ' +
    'WHERE a.sqsj >= :StartTime2 ' +
    '  AND a.sqsj <= :EndTIme2 ' +
    '  AND a.sqbqdm = :bqdm2 ' +
    '  AND d.brxm IS NOT NULL';

    {本科室收到的会诊请求信息查询语句 add by XML 2014-11-04}
  ReceiveSqlStr =
    'SELECT a.sfjs Receive_flag,' +
    '       a.sqbqdm,' +
    '       RTRIM(c.bqmc) sqbqmc,' +
    '       a.zyh,' +
    '       d.bch,' +
    '       RTRIM(d.brxm) brxm,' +
    '       a.sqysdm, ' +
    '       e.mc sqysmc,' +
    '       CONVERT(VARCHAR(16), a.sqsj, 120) sqsj ,' +
    '       a.bqdm hzbqdm,'+
    '       a.bqmc hzbqmc,' +
    '       a.zymc hzzymc, ' +
    '       b.hzys hzysdm,' +
    '       f.mc hzysmc, ' +
    '       CONVERT(VARCHAR(16), b.jssj, 120) hzsj '+
    ' FROM zydzbl_hzts a ' +
    ' LEFT JOIN zyyz_hzmx b ON a.zyh = b.zyh ' +
    ' LEFT JOIN sys_bqdm c ON a.sqbqdm=c.bqdm ' +
    ' LEFT JOIN zysf_zydj d ON a.zyh=d.zyh ' +
    ' LEFT JOIN sys_czy e ON a.sqysdm=e.dm ' +
    ' LEFT JOIN sys_czy f ON b.hzys=f.dm '  +
    'WHERE  a.sqsj >= :StartTime1 '  +
    '    AND a.sqsj <= :EndTime1 ' +
    '    AND a.bqdm = :bqdm1 ' +
    '    AND d.brxm IS NOT NULL ' +
    'UNION ' +
    'SELECT a.sfjs Receive_flag,' +
    '       a.sqbqdm,' +
    '       RTRIM(c.bqmc) sqbqmc,' +
    '       a.zyh,' +
    '       d.bch,' +
    '       RTRIM(d.brxm) brxm,' +
    '       a.sqysdm, ' +
    '       e.mc sqysmc,' +
    '       CONVERT(VARCHAR(16), a.sqsj, 120) sqsj ,' +
    '       a.bqdm hzbqdm,'+
    '       a.bqmc hzbqmc,' +
    '       a.zymc hzzymc, ' +
    '       b.hzys hzysdm,' +
    '       f.mc hzysmc, ' +
    '       CONVERT(VARCHAR(16), b.jssj, 120) hzsj '+
    ' FROM zydzbl_hzts a ' +
    ' LEFT JOIN zyyz_hzmx b ON a.zyh = b.zyh ' +
    ' LEFT JOIN sys_bqdm c ON a.sqbqdm=c.bqdm ' +
    ' LEFT JOIN zysf_cydj d ON a.zyh=d.zyh ' +
    ' LEFT JOIN sys_czy e ON a.sqysdm=e.dm ' +
    ' LEFT JOIN sys_czy f ON b.hzys=f.dm '  +
    'WHERE  a.sqsj >= :StartTime2 '  +
    '    AND a.sqsj <= :EndTime2 ' +
    '    AND a.bqdm = :bqdm2 ' +
    '    AND d.brxm IS NOT NULL ';

type
  TCapationType = (ctSend, // 发送的请求
                   ctReceive //收到的请求
                   );

  Tfrm_cx_hztj = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    sp_cx_kshz: TADOStoredProc;
    ds_cx_kshz: TDataSource;
    sp_cx_yshz: TADOStoredProc;
    ds_cx_yshz: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    Button3: TButton;
    Button4: TButton;
    pnlConsultation: TPanel;
    pnlBtn: TRzPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    rzsprtrButtom: TRzSeparator;
    rzsprtrLeft: TRzSeparator;
    rzsprtrRight: TRzSeparator;
    rzbtbtnClose: TRzBitBtn;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    qryConsltInfo: TADOQuery;
    dsConsltDetails: TDataSource;
    cxGrid3DBTableView1Receive_flag: TcxGridDBColumn;
    cxGrid3DBTableView1sqbqdm: TcxGridDBColumn;
    cxGrid3DBTableView1sqbqmc: TcxGridDBColumn;
    cxGrid3DBTableView1sqysdm: TcxGridDBColumn;
    cxGrid3DBTableView1sqysmc: TcxGridDBColumn;
    cxGrid3DBTableView1sqsj: TcxGridDBColumn;
    cxGrid3DBTableView1hzbqdm: TcxGridDBColumn;
    cxGrid3DBTableView1hzbqmc: TcxGridDBColumn;
    cxGrid3DBTableView1hzzymc: TcxGridDBColumn;
    cxGrid3DBTableView1hzysdm: TcxGridDBColumn;
    cxGrid3DBTableView1hzysmc: TcxGridDBColumn;
    cxGrid3DBTableView1hzsj: TcxGridDBColumn;
    cxGrid3DBTableView1zyh: TcxGridDBColumn;
    cxGrid3DBTableView1brxm: TcxGridDBColumn;
    rzbtbtnPrint: TRzBitBtn;
    pnlTmPk: TPanel;
    lbl2: TLabel;
    lbl1: TLabel;
    dtp1YMD: TRzDateTimePicker;
    dtp1HMS: TRzDateTimePicker;
    dtp2YMD: TRzDateTimePicker;
    dtp2HMS: TRzDateTimePicker;
    rzbtbtnTime: TRzBitBtn;
    rzsprtrTop: TRzSeparator;
    cxGrid3DBTableView1bch: TcxGridDBColumn;
    RzBitBtnSndRecv: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure rzbtbtnCloseClick(Sender: TObject);
    procedure rzbtbtnTimeClick(Sender: TObject);
    procedure rzbtbtnPrintClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure RzBitBtnSndRecvClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FSndRecv: TCapationType;
    function  GetTimeStr(dtDate,dtTime: TRzDateTimePicker): string;
    procedure SetDefaultTimeRange;
    procedure QueryConsltInfo();
    procedure SetSqlStr(ct: TCapationType);
    procedure SetWindowCapation(ct: TCapationType);
  public
    { Public declarations }
  end;

var
  frm_cx_hztj: Tfrm_cx_hztj;

implementation
uses P_dm, p_func;

{$R *.dfm}

procedure Tfrm_cx_hztj.Button1Click(Sender: TObject);
begin
  sp_cx_kshz.Close;
  sp_cx_kshz.Parameters.Refresh;
  sp_cx_kshz.Parameters.ParamByName('@ksrq').Value := FormatDateTime('yyyyMMdd',
    DateTimePicker1.DateTime);
  sp_cx_kshz.Parameters.ParamByName('@jsrq').Value := FormatDateTime('yyyyMMdd',
    DateTimePicker2.DateTime);
  sp_cx_kshz.Open;

    sp_cx_yshz.Close;
  sp_cx_yshz.Parameters.Refresh;
  sp_cx_yshz.Parameters.ParamByName('@ksrq').Value := FormatDateTime('yyyyMMdd',
    DateTimePicker1.DateTime);
  sp_cx_yshz.Parameters.ParamByName('@jsrq').Value := FormatDateTime('yyyyMMdd',
    DateTimePicker2.DateTime);
  sp_cx_yshz.Open;
end;

procedure Tfrm_cx_hztj.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_cx_hztj.Button3Click(Sender: TObject);
begin
  Frm_func.cxgridtoexcel(cxGrid1, 3, '按科室统计会诊数据', '', '', sp_cx_kshz);
end;

procedure Tfrm_cx_hztj.Button4Click(Sender: TObject);
begin
  Frm_func.cxgridtoexcel(cxGrid2, 3, '按医生统计会诊数据', '', '', sp_cx_yshz);
end;

procedure Tfrm_cx_hztj.FormResize(Sender: TObject);
begin
  pnlTmPk.Top := pnlBtn.Top - pnlTmPk.Height;
end;

procedure Tfrm_cx_hztj.FormShow(Sender: TObject);
begin
//  DateTimePicker1.DateTime := Frm_func.curr_date;
//  DateTimePicker2.DateTime := Frm_func.curr_date;

  SetWindowCapation(FSndRecv);

  SetDefaultTimeRange;

  SetSqlStr(ctSend);
  QueryConsltInfo;
end;

procedure Tfrm_cx_hztj.rzbtbtnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_cx_hztj.rzbtbtnPrintClick(Sender: TObject);
begin
 // Frm_func.cxgridtoexcel(cxGrid3, 3, '会诊数据', '', '', qryConsltDetails);
end;

procedure Tfrm_cx_hztj.rzbtbtnTimeClick(Sender: TObject);
begin
  if pnlTmPk.Visible then
    rzbtbtnTime.Caption := '隐藏时间'
  else
    rzbtbtnTime.Caption := '显示时间';

  pnlTmPk.Visible := not pnlTmPk.Visible;  
end;

function Tfrm_cx_hztj.GetTimeStr(dtDate: TRzDateTimePicker; dtTime: TRzDateTimePicker):string;
begin
  Result := FormatDateTime('yyyy-MM-dd',dtDate.DateTime) + ' ' +
            FormatDateTime('HH:mm:ss',dtTime.DateTime) ;
end;

procedure Tfrm_cx_hztj.SetDefaultTimeRange;
begin
  dtp2YMD.DateTime := Frm_func.curr_date;
  dtp1YMD.DateTime := dtp1YMD.DateTime - 7;
end;

procedure Tfrm_cx_hztj.QueryConsltInfo;
begin
  qryConsltInfo.Close;
  qryConsltInfo.Parameters.ParamByName('bqdm1').Value := pub_bqdm;
  qryConsltInfo.Parameters.ParamByName('StartTime1').Value :=GetTimeStr(dtp1YMD,dtp1HMS);
  qryConsltInfo.Parameters.ParamByName('EndTime1').Value:= GetTimeStr(dtp2YMD,dtp2HMS);
  qryConsltInfo.Parameters.ParamByName('bqdm2').Value := pub_bqdm;
  qryConsltInfo.Parameters.ParamByName('StartTime2').Value :=GetTimeStr(dtp1YMD,dtp1HMS);
  qryConsltInfo.Parameters.ParamByName('EndTime2').Value:= GetTimeStr(dtp2YMD,dtp2HMS);
  qryConsltInfo.Open;
end;

procedure Tfrm_cx_hztj.RzBitBtn1Click(Sender: TObject);
begin
  QueryConsltInfo;
end;

procedure Tfrm_cx_hztj.RzBitBtnSndRecvClick(Sender: TObject);
begin
  if ctSend = FSndRecv then
  begin
    FSndRecv := ctReceive;
    RzBitBtnSndRecv.Caption := '查看发出的申请';
  end
  else
  begin
    FSndRecv := ctSend;
    RzBitBtnSndRecv.Caption := '查看收到的申请';
  end;

  SetWindowCapation(FSndRecv);

  SetSqlStr(FSndRecv);
  QueryConsltInfo;
end;

procedure Tfrm_cx_hztj.SetSqlStr(ct: TCapationType);
begin
  qryConsltInfo.Close;
  qryConsltInfo.SQL.Clear;

  if ct = ctSend then
    qryConsltInfo.SQL.Add(SendSqlStr)
  else
    qryConsltInfo.SQL.Add(ReceiveSqlStr);
end;

procedure Tfrm_cx_hztj.SetWindowCapation(ct: TCapationType);
begin
  if ct = ctSend then
    Caption := '【' + Trim(pub_bqmc) + '】发出的会诊申请信息及会诊反馈情况'
  else
    Caption := '【' + Trim(pub_bqmc) + '】收到的会诊申请信息及会诊响应情况';
end;
end.

