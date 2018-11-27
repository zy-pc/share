unit p_brzh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, DBCtrls, Mask, DBCtrlsEh,
  cxButtons, ExtCtrls, DBGridEhGrouping, DB, ADODB, GridsEh, DBGridEh, ComCtrls,
  cxPC, cxControls, PrnDbgeh, cxStyles,Printers,PrViewEh;

type
  Tfrm_brzh = class(TForm)
    pnl1: TPanel;
    lbl3: TLabel;
    pnl2: TPanel;
    btn_sx: TcxButton;
    btn_dc: TcxButton;
    btn_dyyl: TcxButton;
    btn_tc: TcxButton;
    btn_dy: TcxButton;
    pnl3: TPanel;
    lbl1: TLabel;
    rb2: TRadioButton;
    rb1: TRadioButton;
    pnl4: TPanel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt3: TDBDateTimeEditEh;
    edt4: TDBDateTimeEditEh;
    pnl5: TPanel;
    lbl2: TLabel;
    pnl8: TPanel;
    chk1: TCheckBox;
    pnl9: TPanel;
    chk2: TCheckBox;
    stat1: TStatusBar;
    pnl10: TPanel;
    qry1: TADOQuery;
    ds1: TDataSource;
    cxPageControl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    cxtbsht2: TcxTabSheet;
    cxtbsht3: TcxTabSheet;
    cxtbsht4: TcxTabSheet;
    cxtbsht5: TcxTabSheet;
    dbgrdh1: TDBGridEh;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    pnl6: TPanel;
    lbl4: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    pnl7: TPanel;
    lbl5: TLabel;
    cbb3: TComboBox;
    lbl6: TLabel;
    edt1: TEdit;
    sp1: TADOStoredProc;
    ds2: TDataSource;
    qry_cob: TADOQuery;
    dbgrdh2: TDBGridEh;
    dbgrdh3: TDBGridEh;
    dbgrdh4: TDBGridEh;
    dbgrdh5: TDBGridEh;
    dbgrdh6: TDBGridEh;
    chk3: TCheckBox;
    lbl7: TLabel;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle5: TcxStyle;
    dlgSave1: TSaveDialog;
    dy: TPrintDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure dbgrdh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btn_tcClick(Sender: TObject);
    procedure cbb2Change(Sender: TObject);
    procedure btn_sxClick(Sender: TObject);
    procedure dbgrdh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrdh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrdh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrdh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxtbsht1Show(Sender: TObject);
    procedure cxtbsht2Show(Sender: TObject);
    procedure cxtbsht3Show(Sender: TObject);
    procedure cxtbsht4Show(Sender: TObject);
    procedure dbgrdh6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdh6DblClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn_dcClick(Sender: TObject);
    procedure btn_dyylClick(Sender: TObject);
    procedure btn_dyClick(Sender: TObject);
    procedure chk2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure zfzybrcx(zyh:String;lx:integer);    //病人查询
    procedure grid_hz(grid:TDBGridEh);
    function xzym:TDBGridEh;
  var
      id:Integer;
  end;

var
  frm_brzh: Tfrm_brzh;

implementation

{$R *.dfm}
uses p_dm,p_fphz,p_sfxhz,p_fyqd,p_yjmx,HmExcel;
function  Tfrm_brzh.xzym:TDBGridEh;
 var
  grd:TDBGridEh;
begin
  if  cxPageControl1.ActivePage=cxtbsht1  then
  begin
    grd:=dbgrdh1;
  end else
  if  cxPageControl1.ActivePage=cxtbsht2  then
  begin
    grd:=dbgrdh2;
  end else
  if  cxPageControl1.ActivePage=cxtbsht3  then
  begin
    grd:=dbgrdh3;
  end else
  if  cxPageControl1.ActivePage=cxtbsht4  then
  begin
    grd:=dbgrdh4;
  end else
  if  cxPageControl1.ActivePage=cxtbsht5  then
  begin
    grd:=dbgrdh5;
    Abort;
  end;
  Result:= grd;
end;



procedure Tfrm_brzh.zfzybrcx(zyh:String;lx:integer);
var bqmc,ksdm,brlx:string;
begin
  if Trim(cbb2.Text)='全部' then
    bqmc:=''
  else
  bqmc:=Trim(cbb2.Text);
  if Trim(cbb3.Text)='全部' then
    ksdm:=''
  else
  ksdm:=Trim(cbb3.Text);
  if Trim(cbb1.Text)='全部' then
    brlx:=''
  else
  brlx:=Trim(cbb1.Text);
  sp1.Close;
  sp1.Parameters.ParamByName('@bqmc').value:=bqmc;
  sp1.Parameters.ParamByName('@ksdm').value:=ksdm;
  sp1.Parameters.ParamByName('@brlx').value:=brlx;
  sp1.Parameters.ParamByName('@cyjsksrq').value:=StrToDate(edt3.text);
  sp1.Parameters.ParamByName('@cyjsjsrq').value:=StrToDate(edt4.text);
  sp1.Parameters.ParamByName('@lxsx').value:=lx;
  sp1.Parameters.ParamByName('@zyh').value:=zyh;
  sp1.Open;
end;



procedure Tfrm_brzh.btn1Click(Sender: TObject);
begin
try
  Application.CreateForm(tfrm_fphz,frm_fphz);
  if  (chk3.Checked) then
  begin
   frm_fphz.lx:=1;
   p_fphz.frm_fphz.lbl2.Caption:='全部数据';
  end else
  begin
    frm_fphz.lx:=0;
    if (sp1.Active) and (sp1.RecordCount>0) then
    begin
     p_fphz.frm_fphz.lbl2.Caption:='姓名：'+Trim(sp1.FieldByName('姓名').Value);
     frm_fphz.zyh:=Trim(sp1.FieldByName('zyh').Value);
     frm_fphz.edt3.Enabled:=False;
     frm_fphz.edt4.Enabled:=False;
    end
    else
    begin
      ShowMessage('请先选择病人');
      abort;
    end;
  end;
  frm_fphz.ShowModal;
finally
  frm_fphz.free;
end;
end;

procedure Tfrm_brzh.btn2Click(Sender: TObject);
begin
  try
    Application.CreateForm(tfrm_sfxhz,frm_sfxhz);
    if  (chk3.Checked) then
    begin
     frm_sfxhz.lx:=1;
     frm_sfxhz.lbl2.Caption:='全部数据';
    end else
    begin
      frm_sfxhz.lx:=0;
      if (sp1.Active) and (sp1.RecordCount>0) then
      begin
       frm_sfxhz.lbl2.Caption:='姓名：'+Trim(sp1.FieldByName('姓名').Value);
       frm_sfxhz.zyh:=Trim(sp1.FieldByName('zyh').Value);
       frm_sfxhz.edt3.Enabled:=False;
       frm_sfxhz.edt4.Enabled:=False;
      end
      else
      begin
        ShowMessage('请先选择病人');
        abort;
      end;
    end;
    frm_sfxhz.ShowModal;
  finally
    frm_sfxhz.free;
  end;
end;

procedure Tfrm_brzh.btn3Click(Sender: TObject);
begin
  try
    Application.CreateForm(tfrm_fyqd,frm_fyqd);
    if  (chk3.Checked) then
    begin
     frm_fyqd.lx:=1;
     frm_fyqd.lbl2.Caption:='全部数据';
    end else
    begin
      frm_fyqd.lx:=0;
      if (sp1.Active) and (sp1.RecordCount>0) then
      begin
       frm_fyqd.lbl2.Caption:='姓名：'+Trim(sp1.FieldByName('姓名').Value);
       frm_fyqd.zyh:=Trim(sp1.FieldByName('zyh').Value);
//       frm_fyqd.edt3.Enabled:=False;
//       frm_fyqd.edt4.Enabled:=False;
      end
      else
      begin
        ShowMessage('请先选择病人');
        abort;
      end;
    end;
    frm_fyqd.ShowModal;
  finally
    frm_fyqd.free;
  end;
end;

procedure Tfrm_brzh.btn4Click(Sender: TObject);
begin
   try
    Application.CreateForm(tfrm_yjmx,frm_yjmx);
    if  (chk3.Checked) then
    begin
     frm_yjmx.lx:=1;
     frm_yjmx.lbl2.Caption:='全部数据';
    end else
    begin
      frm_yjmx.lx:=0;
      if (sp1.Active) and (sp1.RecordCount>0) then
      begin
       frm_yjmx.lbl2.Caption:='姓名：'+Trim(sp1.FieldByName('姓名').Value);
       frm_yjmx.zyh:=Trim(sp1.FieldByName('zyh').Value);
       frm_yjmx.edt3.Enabled:=False;
       frm_yjmx.edt4.Enabled:=False;
      end
      else
      begin
        ShowMessage('请先选择病人');
        abort;
      end;
    end;
    frm_yjmx.ShowModal;
  finally
    frm_yjmx.free;
  end;
end;

procedure Tfrm_brzh.btn_dcClick(Sender: TObject);
var
  sd: TSaveDialog;
begin
  sd := TSaveDialog.Create(nil);
  try
    sd.Filter := '*.xls|*.xls';
    sd.fileName := '.xls';
    if sd.Execute then
    begin
      Screen.Cursor := crSQLWait;
      try
          if  ExpToExcel(xzym,' ',' ',sd.fileName) then
            ShowMessage('导出成功');
      finally
        Screen.Cursor := crDefault;
      end;
    end;
  finally
    sd.Free;
  end;
end;

procedure Tfrm_brzh.btn_dyClick(Sender: TObject);
begin
  dy.DBGridEh:=xzym;
    if rb1.Checked then
  begin
     printer.Orientation := poLandscape;
  end else
    printer.Orientation := poPortrait;
  if  chk1.Checked   then
  begin
    dy.Options:=[pghFitGridToPageWidth,pghColored,pghRowAutoStretch,pghOptimalColWidths];
  end else
  dy.Options:=[];
  dy.Print;
end;

procedure Tfrm_brzh.btn_dyylClick(Sender: TObject);
begin
   dy.DBGridEh:=xzym;
  if rb1.Checked then
  begin
     PrinterPreview.Orientation := poLandscape;
  end else
    PrinterPreview.Orientation := poPortrait;
  if  chk1.Checked   then
  begin
    dy.Options:=[pghFitGridToPageWidth,pghColored,pghRowAutoStretch,pghOptimalColWidths];
  end   
   else
  dy.Options:=[];
  dy.Preview;
end;

procedure Tfrm_brzh.btn_sxClick(Sender: TObject);
var i:Integer;
begin
  if edt1.Text='' then
  lbl7.Caption:='';
 if  cxPageControl1.ActivePage=cxtbsht1  then
 begin
   i:=1;
 end else
  if  cxPageControl1.ActivePage=cxtbsht2  then
 begin
   i:=2;
 end else
  if  cxPageControl1.ActivePage=cxtbsht3  then
 begin
   i:=3;
 end else
  if  cxPageControl1.ActivePage=cxtbsht4  then
 begin
   i:=4;
 end else
  if  cxPageControl1.ActivePage=cxtbsht5  then
 begin
   i:=5;
   Abort;
 end;
  if id=1 then
  begin
   zfzybrcx(edt1.Text,i);
  end;

end;

procedure Tfrm_brzh.btn_tcClick(Sender: TObject);
begin
 close;
end;

procedure Tfrm_brzh.cbb2Change(Sender: TObject);
begin
  if trim(cbb2.Text)<>'全部' then
  begin
    qry_cob.Filtered:=false;
    qry_cob.Filter:='bqmc='''+trim(cbb2.Text)+'''';
    qry_cob.Filtered:=True;
    cbb3.Clear;
    cbb3.Items.Append('全部');
    while not qry_cob.eof do
    begin
      cbb3.Items.Append(Trim(qry_cob.FieldByName('mc').Value));
      qry_cob.Next;
    end;
    cbb3.ItemIndex:=0;
  end
  else
  begin
    qry_cob.Filtered:=false;
    cbb3.Clear;
    cbb3.Items.Append('全部');
    while not qry_cob.eof do
    begin
      cbb3.Items.Append(Trim(qry_cob.FieldByName('mc').Value));
      qry_cob.Next;
    end;
    cbb3.ItemIndex:=0;
  end;
    btn_sxClick(nil);
end;

procedure Tfrm_brzh.chk2Click(Sender: TObject);
begin
 if chk2.Checked then
 begin
   dbgrdh1.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
   dbgrdh2.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
   dbgrdh3.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
   dbgrdh4.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
   dbgrdh5.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
 end else
 begin
   dbgrdh1.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   dbgrdh2.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   dbgrdh3.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   dbgrdh4.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
   dbgrdh5.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
 end;
end;

procedure Tfrm_brzh.cxtbsht1Show(Sender: TObject);
begin

if id=1 then
  zfzybrcx(edt1.Text,1);
end;

procedure Tfrm_brzh.cxtbsht2Show(Sender: TObject);
begin
if id=1 then
  zfzybrcx(edt1.Text,2);
end;

procedure Tfrm_brzh.cxtbsht3Show(Sender: TObject);
begin
if id=1 then
  zfzybrcx(edt1.Text,3);
end;

procedure Tfrm_brzh.cxtbsht4Show(Sender: TObject);
begin
if id=1 then
  zfzybrcx(edt1.Text,4);
end;

procedure Tfrm_brzh.dbgrdh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if sp1.FieldByName('类型').Value<>null then
  begin

     if  Pos('自费' ,sp1.FieldByName('lbmc').value)>0 then   //如果条件成立
     begin
       if ((sp1.FieldByName('预交金额').value+sp1.FieldByName('担保金额').value)-sp1.FieldByName('实收金额').value)<0 then
       begin                   //(预交金额+担保金额)-实收金额
          dbgrdh1.Canvas.Brush.Color:=clRed;         //行底色变色
          dbgrdh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
     end;

      if   Pos('医保',sp1.FieldByName('lbmc').value)>0  then   //如果条件成立
     begin           //(预交金额+担保金额)*4-实收金额
       if ((sp1.FieldByName('预交金额').value+sp1.FieldByName('担保金额').value)*4-sp1.FieldByName('实收金额').value)<0 then
       begin
          dbgrdh1.Canvas.Brush.Color:=clRed;         //行底色变色
          dbgrdh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
     end;

  end;

end;

procedure Tfrm_brzh.dbgrdh2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if sp1.FieldByName('类型').Value<>null then
  begin

     if  Pos('自费' ,sp1.FieldByName('lbmc').value)>0 then   //如果条件成立
     begin
       if ((sp1.FieldByName('预交金额').value+sp1.FieldByName('担保金额').value)-sp1.FieldByName('实收金额').value)<0 then
       begin                   //(预交金额+担保金额)-实收金额
          dbgrdh2.Canvas.Brush.Color:=clRed;         //行底色变色
          dbgrdh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
     end;

      if   Pos('医保',sp1.FieldByName('lbmc').value)>0  then   //如果条件成立
     begin           //(预交金额+担保金额)*4-实收金额
       if ((sp1.FieldByName('预交金额').value+sp1.FieldByName('担保金额').value)*4-sp1.FieldByName('实收金额').value)<0 then
       begin
          dbgrdh2.Canvas.Brush.Color:=clRed;         //行底色变色
          dbgrdh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
     end;

  end;
end;

procedure Tfrm_brzh.dbgrdh3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if sp1.FieldByName('类型').Value<>null then
  begin

     if  Pos('自费' ,sp1.FieldByName('lbmc').value)>0 then   //如果条件成立
     begin
       if ((sp1.FieldByName('预交金额').value+sp1.FieldByName('担保金额').value)-sp1.FieldByName('实收金额').value)<0 then
       begin                   //(预交金额+担保金额)-实收金额
          dbgrdh3.Canvas.Brush.Color:=clRed;         //行底色变色
          dbgrdh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
     end;

      if   Pos('医保',sp1.FieldByName('lbmc').value)>0  then   //如果条件成立
     begin           //(预交金额+担保金额)*4-实收金额
       if ((sp1.FieldByName('预交金额').value+sp1.FieldByName('担保金额').value)*4-sp1.FieldByName('实收金额').value)<0 then
       begin
          dbgrdh3.Canvas.Brush.Color:=clRed;         //行底色变色
          dbgrdh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
     end;

  end;
end;

procedure Tfrm_brzh.dbgrdh4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if sp1.FieldByName('类型').Value<>null then
  begin

     if  Pos('自费' ,sp1.FieldByName('lbmc').value)>0 then   //如果条件成立
     begin
       if ((sp1.FieldByName('预交金额').value+sp1.FieldByName('担保金额').value)-sp1.FieldByName('实收金额').value)<0 then
       begin                   //(预交金额+担保金额)-实收金额
          dbgrdh4.Canvas.Brush.Color:=clRed;         //行底色变色
          dbgrdh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
     end;

      if   Pos('医保',sp1.FieldByName('lbmc').value)>0  then   //如果条件成立
     begin           //(预交金额+担保金额)*4-实收金额
       if ((sp1.FieldByName('预交金额').value+sp1.FieldByName('担保金额').value)*4-sp1.FieldByName('实收金额').value)<0 then
       begin
          dbgrdh4.Canvas.Brush.Color:=clRed;         //行底色变色
          dbgrdh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
     end;

  end;
end;

procedure Tfrm_brzh.dbgrdh5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if sp1.FieldByName('类型').Value<>null then
  begin

     if  Pos('自费' ,sp1.FieldByName('lbmc').value)>0 then   //如果条件成立
     begin
       if ((sp1.FieldByName('预交金额').value+sp1.FieldByName('担保金额').value)-sp1.FieldByName('实收金额').value)<0 then
       begin                   //(预交金额+担保金额)-实收金额
          dbgrdh5.Canvas.Brush.Color:=clRed;         //行底色变色
          dbgrdh5.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
     end;

      if   Pos('医保',sp1.FieldByName('lbmc').value)>0  then   //如果条件成立
     begin           //(预交金额+担保金额)*4-实收金额
       if ((sp1.FieldByName('预交金额').value+sp1.FieldByName('担保金额').value)*4-sp1.FieldByName('实收金额').value)<0 then
       begin
          dbgrdh5.Canvas.Brush.Color:=clRed;         //行底色变色
          dbgrdh5.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
     end;

  end;
end;

procedure Tfrm_brzh.dbgrdh6DblClick(Sender: TObject);
begin
  edt1.text:=Trim(qry1.FieldByName('zyh').Value);
  dbgrdh6.Visible:=false;
  edt1.SetFocus;
  lbl7.caption:='姓名: '+Trim(qry1.FieldByName('brxm').Value)+'   条码号：'+Trim(qry1.FieldByName('tmh').Value);
  dbgrdh6.Visible:=false;
end;

procedure Tfrm_brzh.dbgrdh6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    edt1.text:=Trim(qry1.FieldByName('zyh').Value);
    dbgrdh6.Visible:=false;
    edt1.SetFocus;
    lbl7.caption:='姓名: '+Trim(qry1.FieldByName('brxm').Value)+'   条码号：'+Trim(qry1.FieldByName('tmh').Value);
    dbgrdh6.Visible:=false;

  end;
end;

procedure Tfrm_brzh.edt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    qry1.Close;
    qry1.sql.text:='  SELECT * FROM (  '  +
    'SELECT pym,tmh,zyh,brxm,brxb,ryzd,brdz,sfzhm,ryrq,cyrq,CASE cybz WHEN 1 THEN ''出院'' ELSE ''在院'' END sfcy FROM zysf_zydj   '  +
    'UNION  '    +
    'SELECT pym,tmh,zyh,brxm,brxb,ryzd,brdz,sfzhm,ryrq,cyrq,CASE cybz WHEN 1 THEN ''出院'' ELSE ''在院'' END sfcy FROM zysf_cydj  '  +
    'UNION  '  +
    'SELECT pym,tmh,zyh,brxm,brxb,ryzd,brdz,sfzhm,ryrq,cyrq,CASE cybz WHEN 1 THEN ''出院'' ELSE ''在院'' END sfcy FROM zyzc_zysf_cydj  '  +
    ') a WHERE pym LIKE ''%'+trim(edt1.text)+'%'' OR brxm LIKE ''%'+trim(edt1.text)+'%'' OR zyh LIKE ''%'+trim(edt1.text)+'%'' OR tmh LIKE ''%'+trim(edt1.text)+'%'' ORDER BY zyh desc';
    qry1.Open;
    if qry1.RecordCount>0 then
    begin
      dbgrdh6.Visible:=True;
      dbgrdh6.SetFocus;
    end else
    ShowMessage('没有检索到对应数据！请查看输入条件是否正确。');
  end;
end;

procedure Tfrm_brzh.FormCreate(Sender: TObject);
begin
 id:=0;
end;

procedure Tfrm_brzh.FormShow(Sender: TObject);
begin
  edt3.text:=FormatDateTime('yyyy-mm-dd',now());
  edt4.text:=FormatDateTime('yyyy-mm-dd',now());
  qry_cob.Close;
  qry_cob.sql.text:='SELECT * FROM  sys_fylb';
  qry_cob.Open;
  qry_cob.First;
  cbb1.Clear;
  cbb1.Items.Append('全部');
  while not qry_cob.eof do
  begin
    cbb1.Items.Append(Trim(qry_cob.FieldByName('mc').Value));
    qry_cob.Next;
  end;
  cbb1.ItemIndex:=0;


  qry_cob.Close;
  qry_cob.sql.text:='SELECT * FROM  sys_bqdm';
  qry_cob.Open;
  qry_cob.First;
  cbb2.Clear;
  cbb2.Items.Append('全部');
  while not qry_cob.eof do
  begin
    cbb2.Items.Append(Trim(qry_cob.FieldByName('bqmc').Value));
    qry_cob.Next;
  end;
  cbb2.ItemIndex:=0;


  qry_cob.Close;
  qry_cob.sql.text:='  SELECT a.dm,a.mc,b.bqdm,b.bqzydm,c.bqdm,c.bqmc FROM  sys_ksdm a '+
                     ' LEFT JOIN sys_bqzyfl b ON a.dm=b.bqzydm ' +
                     ' JOIN dbo.sys_bqdm c ON b.bqdm=c.bqdm  ' +
                     ' JOIN sys_kslb d ON a.kslb=d.dm WHERE d.mc like''%住院%''';
  qry_cob.Open;
  qry_cob.First;
  cbb3.Clear;
  cbb3.Items.Append('全部');
  while not qry_cob.eof do
  begin
    cbb3.Items.Append(Trim(qry_cob.FieldByName('mc').Value));
    qry_cob.Next;
  end;
  cbb3.ItemIndex:=0;
  grid_hz(dbgrdh1);
  grid_hz(dbgrdh2);
  grid_hz(dbgrdh3);
  grid_hz(dbgrdh4);
  grid_hz(dbgrdh5);
  stat1.Panels[3].Text:='操作员：'+pub_czyxm;
  id:=1;
end;
procedure Tfrm_brzh.grid_hz(grid:TDBGridEh);
begin
  grid.FooterRowCount := 1;
  grid.FooterColor := cl3DLight;
  grid.SumList.Active := True;
  grid.Columns[5].Footers.Add;
  grid.Columns[5].Footers[0].ValueType:=fvtSum; //合计
  grid.Columns[5].Footers[0].FieldName:='预交金额';
  grid.Columns[5].Footers[0].DisplayFormat:='#,###,###.00';
  grid.Columns[6].Footers.Add;
  grid.Columns[6].Footers[0].ValueType:=fvtSum; //字段值
  grid.Columns[6].Footers[0].FieldName:='已用金额';
  grid.Columns[6].Footers[0].DisplayFormat:='#,###,###.00';
  grid.Columns[10].Footers.Add;
  grid.Columns[10].Footers[0].ValueType:=fvtSum; //字段值
  grid.Columns[10].Footers[0].FieldName:='结存金额';
  grid.Columns[10].Footers[0].DisplayFormat:='#,###,###.00';
  grid.SumList.Active:=True;
end;

end.
