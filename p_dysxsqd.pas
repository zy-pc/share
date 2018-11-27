unit p_dysxsqd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, Mask, DBCtrlsEh, cxCheckBox, QRCtrls,
  QuickRpt, pBarCode,Printers;

type
  Tfrm_dysxsqd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    Button3: TButton;
    QuickRep3: TQuickRep;
    DetailBand2: TQRBand;
    QRImage3: TQRImage;
    QRDBText11: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    qrdbtxtbrxm: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    brcd1: TBarCode;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    ADOQuery2: TADOQuery;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    procedure RevertPrinter;
    procedure ChangePrinter;
    procedure proc_printtmh;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure proc_printtmh_1();
  private
     { Private declarations }
  public
    var p_tmh:string;
    var P_date:string;
    var p_zyh:string;
    { Public declarations }
  end;

var
  frm_dysxsqd: Tfrm_dysxsqd;
   v_IsPrinterJoin: Boolean;
    v_PrinterIndex_new: Integer;
    v_PrinterIndex_old: Integer;
implementation
  uses p_func,p_dm;
{$R *.dfm}

procedure Tfrm_dysxsqd.Button1Click(Sender: TObject);
begin
if Trim(Edit1.Text)='' then
begin
  Application.MessageBox('病人卡号不能为空！', '', MB_OK + MB_ICONINFORMATION);
end
else
begin
  p_zyh:=Edit1.Text;
  ADOQuery1.Close;
  p_date:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  ADOQuery1.SQL.Text:='select a.*,c.*,b.BLOOD_TYPE_NAME,case Rh when ''1'' then ''阴'' else'+
  ' ''阳'' end rh_zw,isnull(d.dyyxsq,convert(bit,0)) dyyxsq,rtrim(e.brxm)+''(''+rtrim(e.brnl)+rtrim(e.brxb)+'')'' brxm1 from BLOOD_APPLY a,'+
  'BLOOD_COMPONENT b,sys_ksdm c,blood_test d,zysf_zydj e,sys_kscwsz f'+
  ' where a.patient_id=e.zyh and e.zyh=f.zyh and a.DEPT_CODE=c.dm and (INP_NO='+#39+
  p_zyh+#39+'or (f.yybch='+#39+Edit1.text+#39+' and f.bqdm='+#39+pub_bqdm+#39+
  ')) and convert(varchar,TRANS_DATE,112)='+#39+p_date+#39+'and a.BLOOD_TYPE=b.BLOOD_TYPE and a.apply_num*=d.apply_num';
  ADOQuery1.Open;
end;

end;

procedure Tfrm_dysxsqd.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_dysxsqd.Button3Click(Sender: TObject);
var dyfs:Boolean;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  dyfs:=DM_data.qry_pub.FieldByName('sfqyydhsz').AsBoolean;
  if ADOQuery1.Active and (ADOQuery1.RecordCount>0) then
  begin
     try
       if dyfs<>true then
         proc_printtmh()  //打印条码号
       else
         proc_printtmh_1()
     except

     end;

  end;
  ADOQuery2.Close;
  ADOQuery2.SQL.Text:='select * from blood_test where APPLY_NUM='+#39+ADOQuery1.FieldByName('APPLY_NUM').asstring+#39;
  ADOQuery2.Open;
  if ADOQuery2.IsEmpty then
  begin
    ADOQuery2.Open;
    ADOQuery2.SQL.Text:='insert into  blood_test select '+
    #39+ADOQuery1.FieldByName('APPLY_NUM').asstring+#39+','+ #39 +
    ADOQuery1.FieldByName('patient_id').asstring+#39+','+'0,1';
    ADOQuery2.ExecSQL;
  end
  else
  begin
    ADOQuery2.Open;
    ADOQuery2.SQL.Text:='update blood_test set dyyxsq=1 where APPLY_NUM= '+
    #39+ADOQuery1.FieldByName('APPLY_NUM').asstring+#39;
    ADOQuery2.ExecSQL;
  end;
  Button1.Click;
  //RevertPrinter;
end;

procedure Tfrm_dysxsqd.proc_printtmh();
begin
      ChangePrinter;
      brcd1.BarCode:=Trim(ADOQuery1.FieldByName('APPLY_NUM').asstring);
      brcd1.Draw(QRImage3.Canvas,4,0,35,0);
      if v_IsPrinterJoin=True then
      if  QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
      begin
        QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
      end;
      QuickRep3.Print;
end;

procedure Tfrm_dysxsqd.proc_printtmh_1();
begin
      ChangePrinter;
      brcd1.BarCode:=Trim(ADOQuery1.FieldByName('APPLY_NUM').asstring);
      brcd1.Draw(QRImage1.Canvas,10,0,40,0);
      if v_IsPrinterJoin=true then
      begin
        if  QuickRep1.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
        begin
          QuickRep1.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
        end;
      end;
      QuickRep1.Print;
end;

procedure Tfrm_dysxsqd.ChangePrinter;
begin
    //判断是否使用打印关联方式及取得打印机序号
    try
        v_PrinterIndex_old := Printer.PrinterIndex;
        v_PrinterIndex_new := func_GetPrinterIndex( 3, v_IsPrinterJoin );
//        if v_IsPrinterJoin then
//        Proc_ChangePrinter( v_PrinterIndex_new, True );
    except
    end;
end;
procedure Tfrm_dysxsqd.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
      if AViewInfo.GridRecord.Values[8]=True then
      begin
        ACanvas.Canvas.brush.color := clGreen;
      end;
end;

procedure Tfrm_dysxsqd.RevertPrinter;
begin
    //还原原来默认打印机
    try
        if v_IsPrinterJoin then
            Proc_ChangePrinter( v_PrinterIndex_old, True );
    except
    end;
end;
procedure Tfrm_dysxsqd.DateTimePicker1Change(Sender: TObject);
begin
  p_zyh:=Edit1.Text;
  ADOQuery1.Close;
  p_date:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  ADOQuery1.SQL.Text:='select a.*,c.*,b.BLOOD_TYPE_NAME,case Rh when ''1'' then ''阴'' else'+
  ' ''阳'' end rh_zw,isnull(d.dyyxsq,convert(bit,0)) dyyxsq,rtrim(e.brxm)+''(''+rtrim(e.brnl)+rtrim(e.brxb)+'')'' brxm1 from BLOOD_APPLY a,'+
  'BLOOD_COMPONENT b,sys_ksdm c,blood_test d,zysf_zydj e,sys_kscwsz f'+
  ' where a.patient_id=e.zyh and e.zyh=f.zyh and a.DEPT_CODE=c.dm and (INP_NO='+#39+
  p_zyh+#39+'or (f.yybch='+#39+Edit1.text+#39+' and f.bqdm='+#39+pub_bqdm+#39+
  ')) and convert(varchar,TRANS_DATE,112)='+#39+p_date+#39+'and a.BLOOD_TYPE=b.BLOOD_TYPE and a.apply_num*=d.apply_num';
  ADOQuery1.Open;
end;

procedure Tfrm_dysxsqd.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
           Button1.Click;
  if not ( ( key in ['0'..'9', #8,'.'] ) ) then
  begin
    key := #0;
  end;

end;

procedure Tfrm_dysxsqd.FormShow(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Frm_func.curr_date;
  Edit1.text:=p_tmh;
  if Trim(Edit1.text)<>'' then
  begin
      Button1.Click;
  end;
  QuickRep3.Visible:=False;
  QuickRep1.Visible:=False;
end;
end.
