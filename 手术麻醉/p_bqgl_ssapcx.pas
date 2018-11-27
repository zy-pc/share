unit p_bqgl_ssapcx;

interface              

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxCalendar, Mask, DBCtrlsEh, cxGridLevel, cxClasses,
    cxGridCustomView, cxGridCustomTableView, cxGridTableView,
    cxGridDBTableView, cxGrid, Grids, DBGrids, ComCtrls, Db, ADODB, DBGridEh,
    PrnDbgeh, variants, GridsEh, Menus,Printers, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxTimeEdit, OleCtrls,
  grproLib_TLB,ComObj, OleServer, ExcelXP, ExtCtrls, Math, DBGridEhGrouping;

type
  {ҽ����Ϣ}
  TDoctorInfo = record
    Code: string[4]; //����
    Name: string;    //����
  end;
  {������Ϣ}
  TOfficeInfo = record
    Code: string[4]; //����
    Name: string;    //����
  end;

  TWhoSend =(
    wsSurgeon,   //����ҽ��
    wsOperName,  //�������� Operation Name
    wsAppliOfc,  //����������� Application Office
    wsPatient    //����
  );

  Tfrm_ssapcx = class(TForm)
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    EditBR: TEdit;
    Button2: TButton;
    Editczy: TEdit;
    Button3: TButton;
    dbg: TDBGrid;
    Editssmc: TEdit;
    Label1: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    editOfc: TEdit;
    qrySSAP: TADOQuery;
    ADOQuery: TADOQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Label2: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column17: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    cxGrid1DBTableView1Column12: TcxGridDBColumn;
    cxGrid1DBTableView1Column16: TcxGridDBColumn;
    cxGrid1DBTableView1Column13: TcxGridDBColumn;
    cxGrid1DBTableView1Column14: TcxGridDBColumn;
    cxGrid1DBTableView1Column15: TcxGridDBColumn;
    cxGrid1DBTableView1Column18: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Column19: TcxGridDBColumn;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    N3: TMenuItem;
    N4: TMenuItem;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    DBGridEh1: TDBGridEh;
    cxgrdbclmnGrid1DBTableView1Column20: TcxGridDBColumn;
    procedure dtp2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dtp1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure EditczyKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
    procedure EditczyExit(Sender: TObject);
    procedure EditssmcExit(Sender: TObject);
    procedure EditssmcKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
    procedure dbgDblClick(Sender: TObject);
    procedure dbgKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditBRExit(Sender: TObject);
    procedure EditBRKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure editOfcExit(Sender: TObject);
    procedure editOfcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure dtp2Change(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
  { Private declarations }
    FStartDt: TDateTime;
    FEndDt: TDateTime;
    FAppliOfc: TOfficeInfo; //�����������
    FSurgeon: TDoctorInfo;//����ҽ��
    FOperName:string; //��������
    FPatientName:string; //��������
    FBCheckFlag: Boolean; //�Ƿ���Ҫ��������˱�־
    procedure SetStartDt(dt: TDateTime);
    procedure SetEndDt(dt: TDateTime);
    procedure setAppliOfc(Code : string;Name: string);
    procedure setSurgeon(Code : string;Name: string);
    procedure SetOprName(Name: string);
    procedure SetPatientName(Name: string);
    procedure SetCheckFlag;
    function info_search(cz: integer; dataTable: string; js: array of string; val: string; name: string; xz: string): string;
    procedure queryList(edt:TEdit;sql:string;whoSend:TWhoSend);

    {ֵ��ҽ����Ϣ���� ADD BY XML 2014-11-12}
    function IsSameDate(DateBegin,DateEnd: TDateTime):Boolean;{�Ƿ�ͬһ��}
    procedure ShowMedicalPermanence(ADateTime: TDateTime);{��ʾֵ��ҽ��}
    procedure ClearMedicalPermanence;{���ֵ��ҽ��}

    //BCheck True/False ���������/����Ҫ���
    function GetQrySqlStr(BCheck:Boolean=False):string;

    {��ѯ����������Ϣ}
    procedure QueryOperations;
  public
  { Public declarations }

  end;

const SQL = 'select * from bqgl_ssap a,zysf_zydj b,sys_ksdm c '+
            'where a.zyh=b.zyh and  b.ksdm=c.dm and xsbz=1';

var
  frm_ssapcx: Tfrm_ssapcx;
  temp0: string;
  czy: string; //����Ա
  ss: string; //��������
  tmh: string; //���������



implementation

uses p_dm, p_func;
var FormTitle:String;
  edtQry:TEdit;

{$R *.DFM}

procedure Tfrm_ssapcx.SetStartDt(dt: TDateTime);
begin
  FStartDt := dt;
end;

procedure Tfrm_ssapcx.SetEndDt(dt: TDateTime);
begin
  FEndDt := dt;
end;

procedure Tfrm_ssapcx.setAppliOfc(Code: string; Name: string);
begin
  FAppliOfc.Name := Trim(Name);
  FAppliOfc.Code := Trim(Code);
end;

procedure Tfrm_ssapcx.setSurgeon(Code: string; Name: string);
begin
  FSurgeon.Code := Trim(code);
  FSurgeon.Name := Trim(Name);
end;

procedure Tfrm_ssapcx.SetOprName(Name: string);
begin
  FOperName := Trim(Name);
end;

procedure Tfrm_ssapcx.setPatientName(Name: string);
begin
  FPatientName := Trim(Name);
end;

procedure Tfrm_ssapcx.SetCheckFlag;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select ss_sqkzrsh from sys_xt_kg_tyjf';
  try
    DM_data.qry_pub.Open;
    FBCheckFlag := DM_data.qry_pub.FieldByName('ss_sqkzrsh').AsBoolean;
  except
    raise Exception.Create('ϵͳ����:sys_xt_kg_tyjf.ss_sqkzrsh[bit default(0)]����');
  end;
end;

function Tfrm_ssapcx.info_search(cz: integer; dataTable: string; js: array of string; val: string; name: string; xz: string): string;
var
  i: integer;
  temp: string;
begin
  if cz = 1 then
  begin
    ADOQuery.Close;
    ADOQuery.SQL.Clear;
    temp := 'select * from ' + dataTable + ' where ' + xz + '1=1';
    ADOQuery.SQL.Add('select * from ' + dataTable + ' where ' + xz + '1=1');
    ADOQuery.Open;
  end;
  if cz = 2 then
  begin
    ADOQuery.Close;
    ADOQuery.SQL.Clear;
    temp := xz + '(';
    for i := Low(js) to High(js) do
    begin
      if i = Low(js) then
        temp := temp + js[i] + ' like ' + #39 + '%' + val + '%' + #39
      else
        temp := temp + ' or ' + js[i] + ' like ' + #39 + '%' + val + '%' + #39;
    end;
    ADOQuery.SQL.Add('select * from ' + dataTable + ' where ' + temp + ')');
    ADOQuery.Open;
    result := ADOQuery.fieldbyname(name).asstring;
  end;
  if cz = 3 then
  begin
    try
      result := ADOQuery.fieldbyname(name).asstring;
    except
      result := '';
    end;
  end;
end;

procedure Tfrm_ssapcx.queryList(edt:TEdit;sql:string;whoSend:TWhoSend);
begin
  edtQry:=edt;
  ADOQuery.Close;
  ADOQuery.SQL.Text := sql;
  ADOQuery.Open;
  if ADOQuery.RecordCount = 0 then begin
    Application.MessageBox('û���ҵ���Ӧ�����ݣ�', '����', MB_OK +
      MB_ICONSTOP);
    Exit;
  end
  else if ADOQuery.RecordCount = 1 then
  begin
    edt.Text:= trim(ADOQuery.FieldByName('����').AsString);
    case whoSend of
      wsSurgeon:
        setSurgeon(ADOQuery.FieldByName('����').AsString, ADOQuery.FieldByName('����').AsString);
      wsOperName:
        SetOprName(ADOQuery.FieldByName('����').AsString);
      wsAppliOfc:
        setAppliOfc(ADOQuery.FieldByName('����').AsString, ADOQuery.FieldByName('����').AsString);
      wsPatient:
        begin
          SetPatientName(ADOQuery.FieldByName('����').AsString);
          Self.Caption:=FormTitle+'   ������������'+FPatientName+'��';
        end;
    end;
  end
  else
  begin
    dbg.Left := edt.Left;
    dbg.Top := edt.Top + edt.Height;
    dbg.Visible := True;
    dbg.BringToFront;
    dbg.SetFocus;
  end;
end;


procedure Tfrm_ssapcx.N1Click(Sender: TObject);
begin

  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='update bqgl_ssap set ysztxbz=0 where id='+
                            qrySSAP.FieldByName('id').asstring;
  DM_data.qry_pub.ExecSQL;
  Application.MessageBox('��ʾ��ȡ����', '��ʾ', MB_OK + MB_ICONINFORMATION);
end;

procedure Tfrm_ssapcx.N3Click(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
end;

procedure Tfrm_ssapcx.N4Click(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.Groups.FullCollapse;
end;

procedure Tfrm_ssapcx.EditczyKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
if key = 13 then
  Editssmc.SetFocus;
end;

procedure Tfrm_ssapcx.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
//    if (qrySSAP.FieldByName('sssqr').AsString = '') then
//        exit;
//    if qrySSAP.FieldByName('sssqr').Value then
//        DBGridEh1.Canvas.Brush.Color := clteal;
//    else
//        DBGridEh1.Canvas.Brush.Color := clwhite;
//    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_ssapcx.EditczyExit(Sender: TObject);
begin
  if trim(Editczy.Text)='' then setSurgeon('','')
  else queryList(Editczy,
        'select dm ����,mc ���� from sys_czy where dm+pym+mc like ''%'+
        trim(Editczy.Text)+'%''', wsSurgeon);
end;

procedure Tfrm_ssapcx.EditssmcExit(Sender: TObject);
begin
  //��������
  if trim(Editssmc.Text)='' then SetOprName('')
  else
    queryList(Editssmc,
     'select fydm ����,fymc ���� from sys_kjsfxm where left(dldm,2)=''33'' and fydm+pym+fymc like ''%'+
     trim(Editssmc.Text)+'%''', wsOperName);
end;

procedure Tfrm_ssapcx.EditssmcKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
if key = 13 then
  editOfc.SetFocus;
end;

procedure Tfrm_ssapcx.dbgDblClick(Sender: TObject);
begin
  edtQry.Text:= trim(ADOQuery.FieldByName('����').AsString);
  if edtQry = Editssmc then
  begin
    SetOprName(ADOQuery.FieldByName('����').AsString,);
    editOfc.SetFocus;
  end else if edtQry = editOfc then
  begin
    setAppliOfc(ADOQuery.FieldByName('����').AsString,ADOQuery.FieldByName('����').AsString);
    EditBR.SetFocus;
  end else if edtQry = EditBR then
  begin
    SetPatientName(ADOQuery.FieldByName('����').AsString);
    Self.Caption:=FormTitle+'   ������������'+trim(EditBR.Text)+'��';
    button2.SetFocus;
  end else if edtQry = editczy then
  begin
    setSurgeon(ADOQuery.FieldByName('����').AsString,ADOQuery.FieldByName('����').AsString);
    Editssmc.SetFocus;
  end;
  dbg.Visible := false;
end;

procedure Tfrm_ssapcx.dbgKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = VK_RETURN then
    begin
      dbgDblClick(nil);
    end;
end;

procedure Tfrm_ssapcx.Button1Click(Sender: TObject);
Var
  ExcelApp: Variant;
  AInt1, ALines, i, n: Integer;
  AValue, APath: String;
  GroupedName, GroupedValue:string;
Begin
  If SaveDialog1.Execute Then APath := SaveDialog1.FileName else exit;
  Try
    ALines := 1;
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Add;
    ExcelApp.WorkSheets[1].Activate;

    For AInt1 := 0 To cxGrid1DBTableView1.VisibleColumnCount -1  Do Begin
      ExcelApp.Cells[ALines, AInt1 + 1].Value := cxGrid1DBTableView1.VisibleColumns[AInt1].Caption;
    End;
    ALines := ALines + 1;
    For I := 0 To cxGrid1DBTableView1.ViewData.RowCount - 1 Do Begin
      If Not cxGrid1DBTableView1.ViewData.Rows[i].ExpandOnDblClick Then Begin  //����
        For n := 0 To cxGrid1DBTableView1.VisibleColumnCount -1  Do Begin
          if cxGrid1DBTableView1.ViewData.Rows[i].Values[cxGrid1DBTableView1.VisibleColumns[n].Index]<>NULL then begin
            AValue := String(cxGrid1DBTableView1.ViewData.Rows[i].Values[cxGrid1DBTableView1.VisibleColumns[n].Index]);
          end else begin
            AValue := '';
          end;
          ExcelApp.Cells[ALines, n + 1].NumberFormatLocal := '@';
          ExcelApp.Cells[ALines, n + 1].Value := trim(AValue);
        End;
      End else begin
        GroupedName := cxGrid1DBTableView1.GroupedColumns[0].VisibleCaption;
        if cxGrid1DBTableView1.ViewData.Rows[i].values[0]<>NULL then begin
          GroupedValue := cxGrid1DBTableView1.ViewData.Rows[i].values[0];
        end else begin
          GroupedValue := '';
        end;
        ExcelApp.Cells[ALines, 1].NumberFormatLocal := '@';
        ExcelApp.Cells[ALines, 1].Value := trim(GroupedName) + ' : ' + trim(GroupedValue) ;
      end;
      ALines := ALines + 1;
    End;
    ExcelApp.ActiveWorkBook.Saveas(APath);
    ExcelApp.Visible := True;
  Finally
    ExcelApp.WorkBooks.Close;
    ExcelApp.quit;
  End;
End;                                

procedure Tfrm_ssapcx.Button2Click(Sender: TObject);
begin
  {��ʾֵ��ҽ��}{����һ�첻��ʾ}
  if IsSameDate(dtp1.DateTime,dtp2.DateTime) then
    ShowMedicalPermanence(dtp1.DateTime)
  else
    ClearMedicalPermanence;
  
  {��ѯ��������}
  QueryOperations;

end;

procedure Tfrm_ssapcx.FormCreate(Sender: TObject);
begin
  FAppliOfc.Code := '';
  FAppliOfc.Name := '';
  FSurgeon.Code := '';
  FSurgeon.Name := '';
  FOperName := '';
  FPatientName := '';
end;

procedure Tfrm_ssapcx.FormShow(Sender: TObject);
begin
  dtp1.DateTime := Frm_func.curr_date;
  dtp2.DateTime := dtp1.DateTime;
  SetStartDt(dtp1.DateTime);
  SetEndDt(dtp1.DateTime);
  ShowMedicalPermanence(dtp1.DateTime);
  
  SetCheckFlag;
end;

procedure Tfrm_ssapcx.editOfcExit(Sender: TObject);
begin
  if trim(editOfc.Text)='' then setAppliOfc('','')
  else queryList(editOfc,
       'select dm ����,mc ���� from sys_ksdm where dm+pym+mc like ''%'+
       trim(editOfc.Text)+'%''', wsAppliOfc);
end;

procedure Tfrm_ssapcx.editOfcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then EditBR.SetFocus;
end;

procedure Tfrm_ssapcx.EditBRExit(Sender: TObject);
begin
if trim(EditBR.Text)='' then SetPatientName('')
else queryList(EditBR,
   'select tmh ����,brxm ����,ksdm ���Ҵ��� from zysf_zydj where tmh+pym+brxm like ''%'+
   trim(EditBR.Text)+'%''', wsPatient);
end;

procedure Tfrm_ssapcx.EditBRKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
if key = 13 then
  Button2.SetFocus;
end;

procedure Tfrm_ssapcx.Button3Click(Sender: TObject);
var
  tmp:TPrinterOrientation;
begin
  tmp:=Printer.Orientation;
  Printer.Orientation:=polandscape;
  PrintDBGridEh1.DBGridEh.Columns[5].Visible:=false;
  PrintDBGridEh1.DBGridEh.Columns[6].Visible:=false;
  PrintDBGridEh1.DBGridEh.Columns[13].Visible:=false;
  PrintDBGridEh1.Print;
  Printer.Orientation:=tmp;
  PrintDBGridEh1.DBGridEh.Columns[5].Visible:=true;
  PrintDBGridEh1.DBGridEh.Columns[6].Visible:=true;
  PrintDBGridEh1.DBGridEh.Columns[13].Visible:=true;

end;

procedure Tfrm_ssapcx.dtp1Change(Sender: TObject);
begin
  FStartDt := dtp1.DateTime;
end;

procedure Tfrm_ssapcx.dtp1KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
        dtp2.SetFocus;
end;

procedure Tfrm_ssapcx.dtp2Change(Sender: TObject);
begin
  FEndDt := dtp2.DateTime;
end;

procedure Tfrm_ssapcx.dtp2KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then Editczy.SetFocus;
end;

function Tfrm_ssapcx.IsSameDate(DateBegin: TDateTime; DateEnd: TDateTime):Boolean;
begin
  Result := Abs(DateBegin - DateEnd) < 1;
end;

procedure Tfrm_ssapcx.ShowMedicalPermanence(ADateTime: TDateTime);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'exec bqgl_ssap_cx_zbys ''' + FormatDateTime('yyyyMMdd',ADateTime)+'''';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
  begin
    {ֵ��ҽ��1}
    Edit2.Text := DM_data.qry_pub.FieldByName('ysdm').AsString;
    Edit3.Text := DM_data.qry_pub.FieldByName('mc1').AsString;
    Edit12.Text := DM_data.qry_pub.FieldByName('dh1').AsString;
    {ֵ��ҽ��2}
    Edit4.Text := DM_data.qry_pub.FieldByName('ysdm2').AsString;
    Edit5.Text := DM_data.qry_pub.FieldByName('mc2').AsString;
    Edit13.Text := DM_data.qry_pub.FieldByName('dh2').AsString;
    {ֵ��ҽ��3}
    Edit6.Text := DM_data.qry_pub.FieldByName('ysdm3').AsString;
    Edit7.Text := DM_data.qry_pub.FieldByName('mc3').AsString;
    Edit14.Text := DM_data.qry_pub.FieldByName('dh3').AsString;
    {ֵ��ҽ��4}
    Edit8.Text := DM_data.qry_pub.FieldByName('ysdm4').AsString;
    Edit9.Text := DM_data.qry_pub.FieldByName('mc4').AsString;
    Edit15.Text := DM_data.qry_pub.FieldByName('dh4').AsString;
    {ֵ��ҽ��5}
    Edit10.Text := DM_data.qry_pub.FieldByName('ysdm5').AsString;
    Edit11.Text := DM_data.qry_pub.FieldByName('mc5').AsString;
    Edit16.Text := DM_data.qry_pub.FieldByName('dh5').AsString;
  end else
  begin
    ClearMedicalPermanence;
  end;
end;

procedure Tfrm_ssapcx.ClearMedicalPermanence;
begin
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Edit9.Clear;
  Edit10.Clear;
  Edit11.Clear;
  Edit12.Clear;
  Edit13.Clear;
  Edit14.Clear;
  Edit15.Clear;
  Edit16.Clear;
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_ssapcx.cxGrid1DBTableView1CustomDrawCell
  ����:      yangshuai
  ����:      2016.12.23
  ����:      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_ssapcx.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if qrySSAP.FieldByName('ysztxbz').AsBoolean = True then //����
  begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clblue;
  end
end;

procedure Tfrm_ssapcx.QueryOperations;
begin
  qrySSAP.Close;
  qrySSAP.SQL.Text := GetQrySqlStr(FBCheckFlag);
  qrySSAP.Open;
end;

function Tfrm_ssapcx.GetQrySqlStr(BCheck: Boolean = False):string;
var
    CheckStr:string;
begin
  if BCheck then CheckStr := 'and xsbz=1 ' else CheckStr := '';

  Result :=
   'SELECT CONVERT(CHAR(16), a.sssj, 120) sssj ,' +
          'a.* ,' +
          'c.mc ksmc ' +
   'FROM   bqgl_ssap a ,' +
          'zysf_zydj b ,' +
          'sys_ksdm c ' +
   'WHERE  a.zyh = b.zyh ' +
          'AND b.ksdm = c.dm ' +
          CheckStr +
          'AND qxbz = 0 ' +
          'AND ISNULL(ssqx, 0) = 0 ' +
          'AND CONVERT(CHAR(8), sssj, 112) >='''+FormatDateTime('yyyymmdd',FStartDt) + ''' ' +
          'AND CONVERT(CHAR(8), sssj, 112) <='''+FormatDateTime('yyyymmdd',FEndDt) + ''' ' +
          'AND a.zdys LIKE ''%' + FSurgeon.Name + '%'' ' +
          'AND a.ssmc LIKE ''%' + FOperName + '%'' ' +
          'AND a.brxm LIKE ''%' + FPatientName + '%'' ' +
          'AND a.sssqks LIKE ''%' + FAppliOfc.Code + '%'' ' +
   'UNION ' +
   'SELECT CONVERT(CHAR(16), a.sssj, 120) sssj ,' +
          'a.* ,' +
          'c.mc ksmc ' +
   'FROM   bqgl_ssap a ,' +
          'zysf_zydj b ,' +
          'sys_ksdm c ' +
   'WHERE  a.zyh = b.zyh ' +
          'AND b.ksdm = c.dm ' +
          CheckStr +
          'AND qxbz = 0 ' +
          'AND ISNULL(ssqx, 0) = 0 ' +
          'AND CONVERT(CHAR(8), sssj, 112) >='''+FormatDateTime('yyyymmdd',FStartDt) + ''' ' +
          'AND CONVERT(CHAR(8), sssj, 112) <='''+FormatDateTime('yyyymmdd',FEndDt) + ''' ' +
          'AND a.zdys LIKE ''%' + FSurgeon.Name + '%'' ' +
          'AND a.ssmc LIKE ''%' + FOperName + '%'' ' +
          'AND a.brxm LIKE ''%' + FPatientName + '%'' ' +
          'AND a.sssqks LIKE ''%' + FAppliOfc.Code + '%'' ' +
   'ORDER BY ssj , sssx'
end;

end.

