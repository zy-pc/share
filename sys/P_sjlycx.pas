unit P_sjlycx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids,
  Mask, DBCtrls, ImgList, ADODB;

type
  Tfrm_sjlycx = class(TForm)
    Panel2: TPanel;
    b_ty: TBitBtn;
    B_close: TBitBtn;
    ds_sjlb: TDataSource;
    DS_czy: TDataSource;
    ds_lycx: TDataSource;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBBox1: TDBLookupComboBox;
    DTstar: TDateTimePicker;
    dtend: TDateTimePicker;
    CheckBox1: TCheckBox;
    DBGrid3: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ds_sycx: TDataSource;
    qry_sjlb: TADOQuery;
    qry_czy: TADOQuery;
    sp_lycx: TADOStoredProc;
    qry_sycx: TADOQuery;
    procedure b_saveClick(Sender: TObject);
    procedure DBGrid3Exit(Sender: TObject);
    procedure B_closeClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DTstarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure b_tyClick(Sender: TObject);
    procedure qry_sjlbAfterScroll(DataSet: TDataSet);
    procedure DTstarChange(Sender: TObject);
    procedure dtendChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure sp_lycxAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sjlycx: Tfrm_sjlycx;

implementation
uses  p_dm,p_login, p_func;


{$R *.DFM}

procedure Tfrm_sjlycx.b_saveClick(Sender: TObject);
begin
   if edit2.text='' then
      begin
       application.MessageBox('必须输入领用人!','提示',0+16);
       edit1.SetFocus;
       abort;
      end;
   b_ty.enabled:=true;
   b_ty.setfocus;
end;

procedure Tfrm_sjlycx.DBGrid3Exit(Sender: TObject);
begin
   dbgrid3.Visible:=false;
end;

procedure Tfrm_sjlycx.B_closeClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_sjlycx.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then
        begin
         qry_czy.close;
         qry_czy.sql.Clear;
         qry_czy.sql.text:='select * from sys_czy where pym like '+''''+ '%'+trim(edit1.text)+'%'+'''';
         qry_czy.open;
         if Qry_czy.IsEmpty then
            begin
             application.MessageBox('无此操作员!','提示',0+16);
             abort;
            end;
         if qry_czy.RecordCount=1 then
            begin
               edit1.Text:=qry_czy['dm'];
               edit2.Text:=qry_czy['mc'];
               checkbox1.SetFocus;
            end
         else
            begin
             dbgrid3.Visible:=true;
             dbgrid3.SetFocus;
            end;
      end;

end;

procedure Tfrm_sjlycx.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       begin
         edit1.Text:=qry_czy['dm'];
         edit2.Text:=qry_czy['mc'];
         checkbox1.SetFocus;
       end;

end;

procedure Tfrm_sjlycx.Edit1Change(Sender: TObject);
begin
sp_lycx.close;
edit2.Clear;
end;

procedure Tfrm_sjlycx.FormShow(Sender: TObject);
begin
  qry_sjlb.open;
  dbbox1.keyvalue:=qry_sjlb['dm'];
  dtstar.DateTime:=frm_func.curr_date;
  dtend.DateTime:=frm_func.curr_date;
  checkbox1.Checked:=true;
  dbbox1.setfocus;
end;

procedure Tfrm_sjlycx.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    b_ty.Enabled:=true;
    b_ty.SetFocus;
  end;
end;

procedure Tfrm_sjlycx.DBBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then edit1.SetFocus;
end;

procedure Tfrm_sjlycx.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if sp_lycx['tybz']=true then
      begin
         dbgrid1.Canvas.Brush.Color:=cllime;
         dbgrid1.Canvas.Font.color:=clblue;
      end;
      dbgrid1.DefaultDrawColumnCell(rect,datacol,column,state);
end;

procedure Tfrm_sjlycx.DTstarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then dtend.SetFocus;
end;

procedure Tfrm_sjlycx.b_tyClick(Sender: TObject);
var
 lyr:string;
 check:string;
begin
   if edit2.text='' then  lyr:='' else lyr:=qry_czy['dm'];
   if checkbox1.Checked=true then check:='1' else check:='0';
    sp_lycx.Close;
    sp_lycx.Parameters.ParamByName('@sjlb').value:=trim(dbbox1.keyvalue);
    sp_lycx.Parameters.ParamByName('@lyr').value:=lyr;
    sp_lycx.Parameters.ParamByName('@dtstar').value:=dtstar.DateTime;
    sp_lycx.Parameters.ParamByName('@dtend').value:=dtend.DateTime;
    sp_lycx.Parameters.ParamByName('@check').value:=check;
    sp_lycx.Open;
    if sp_lycx.IsEmpty then
    application.MessageBox('没有查询到相应的记录','提示',0+16);
end;

procedure Tfrm_sjlycx.qry_sjlbAfterScroll(DataSet: TDataSet);
begin
   sp_lycx.Close;
end;

procedure Tfrm_sjlycx.DTstarChange(Sender: TObject);
begin
sp_lycx.close;
end;

procedure Tfrm_sjlycx.dtendChange(Sender: TObject);
begin
sp_lycx.close;
end;

procedure Tfrm_sjlycx.CheckBox1Click(Sender: TObject);
begin
   sp_lycx.Close;
   if checkbox1.Checked=true then
     begin
       dtstar.Enabled:=false;
       dtend.Enabled:=false;
     end
   else
     begin
       dtstar.Enabled:=true;
       dtend.Enabled:=true;
     end;
end;

procedure Tfrm_sjlycx.sp_lycxAfterScroll(DataSet: TDataSet);
begin
     with qry_sycx do begin
         close;
         sql.clear;
         sql.Text:='select * from sys_sjsymx '+
            'where lydh='+''''+trim(sp_lycx['lydh'])+''''+
            ' order by sybh ';
         open;
     end;
end;

end.
