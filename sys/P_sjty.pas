unit P_sjty;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids,
  Mask, DBCtrls, ImgList, ADODB;

type
  Tfrm_sjty = class(TForm)
    Panel2: TPanel;
    b_ty: TBitBtn;
    B_close: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DBBox1: TDBLookupComboBox;
    ds_sjlb: TDataSource;
    DS_lymx: TDataSource;
    DS_czy: TDataSource;
    DBGrid3: TDBGrid;
    StatusBar1: TStatusBar;
    qry_sjlb: TADOQuery;
    Qry_lymx: TADOQuery;
    qry_czy: TADOQuery;
    procedure FormActivate(Sender: TObject);
    procedure b_tyClick(Sender: TObject);
    procedure DBGrid3Exit(Sender: TObject);
    procedure B_closeClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qry_sjlbAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sjty: Tfrm_sjty;

implementation
uses  p_dm,p_login;

{$R *.DFM}

procedure Tfrm_sjty.FormActivate(Sender: TObject);
begin
  qry_sjlb.open;
end;

procedure Tfrm_sjty.b_tyClick(Sender: TObject);
begin
  if (qry_lymx['tybz']=true) or (qry_lymx['sybh']=qry_lymx['sjzh']) then
  begin
    MessageDlg('已停用/已用完收据，不须再停用！',mtInformation,[mbok],0);
    abort;
  end;
  if application.MessageBox('是否确认停用该收据?','提示',mb_iconquestion+mb_okcancel+mb_defbutton2)=idcancel then
    abort;
  with dm_data.Qry_pub do
  begin
    close;
    sql.clear;
    sql.Text:='update sys_sjlymx set tybz=1,sjzh=sybh where '+
              ' lydh='+''''+trim(qry_lymx['lydh'])+'''';
    execsql;
  end;
  qry_lymx.close;
  qry_lymx.Parameters.parambyname('czydm').value:=qry_czy['dm'];
  qry_lymx.Parameters.parambyname('sjlb').value:=qry_sjlb['dm'];
  qry_lymx.open;
  b_ty.enabled:=false;
end;

procedure Tfrm_sjty.DBGrid3Exit(Sender: TObject);
begin
  dbgrid3.Visible:=false;
end;

procedure Tfrm_sjty.B_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_sjty.Edit1KeyPress(Sender: TObject; var Key: Char);
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
    end
    else if qry_czy.RecordCount=1 then
    begin
       edit1.Text:=qry_czy['dm'];
       edit2.Text:=qry_czy['mc'];
       qry_lymx.close;
       qry_lymx.Parameters.parambyname('czydm').value:=qry_czy['dm'];
       qry_lymx.Parameters.parambyname('sjlb').value:=qry_sjlb['dm'];
       qry_lymx.open;
       b_ty.Enabled:=not qry_lymx.IsEmpty;
       dbgrid1.SetFocus;
       abort;
    end
    else
    begin
      dbgrid3.Visible:=true;
      dbgrid3.SetFocus;
    end;
  end;
end;

procedure Tfrm_sjty.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    edit1.Text:=qry_czy['dm'];
    edit2.Text:=qry_czy['mc'];
    qry_lymx.close;
    qry_lymx.Parameters.parambyname('czydm').value:=qry_czy['dm'];
    qry_lymx.Parameters.parambyname('sjlb').value:=qry_sjlb['dm'];
    qry_lymx.open;
    b_ty.Enabled:=not qry_lymx.IsEmpty;
    dbgrid3.Visible:=false;
    dbgrid1.Enabled:=true;
    dbgrid1.setfocus;
  end;
end;

procedure Tfrm_sjty.Edit1Change(Sender: TObject);
begin
  edit2.Clear;
  qry_lymx.close;
end;

procedure Tfrm_sjty.FormShow(Sender: TObject);
begin
  qry_sjlb.open;
  dbbox1.keyvalue:=qry_sjlb['dm'];
  dbbox1.setfocus;
end;

procedure Tfrm_sjty.DBBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then edit1.SetFocus;
end;

procedure Tfrm_sjty.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if qry_lymx['tybz']=true then
  begin
    dbgrid1.Canvas.Brush.Color:=cllime;
    dbgrid1.Canvas.Font.color:=clblue;
  end;
  dbgrid1.DefaultDrawColumnCell(rect,datacol,column,state);
end;

procedure Tfrm_sjty.qry_sjlbAfterScroll(DataSet: TDataSet);
begin
  qry_lymx.close;
end;

end.
