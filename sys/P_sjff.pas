unit P_sjff;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids,
  Mask, DBCtrls, ImgList, ADODB;

type
  Tfrm_sjff = class(TForm)
    Panel5: TPanel;
    b_add: TBitBtn;
    BitBtn4: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    b_cancel: TBitBtn;
    b_save: TBitBtn;
    DBBox1: TDBLookupComboBox;
    ds_sjlb: TDataSource;
    DS_sjlymx: TDataSource;
    DS_lymx: TDataSource;
    DBGrid3: TDBGrid;
    DS_czy: TDataSource;
    StatusBar1: TStatusBar;
    qry_sjlb: TADOQuery;
    Qry_lymx: TADOQuery;
    Qry_sjlymx: TADOQuery;
    qry_czy: TADOQuery;
    SP_sjlyjc: TADOStoredProc;
    procedure b_addClick(Sender: TObject);
    procedure b_saveClick(Sender: TObject);
    procedure b_cancelClick(Sender: TObject);
    procedure DBGrid3Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sjff: Tfrm_sjff;

implementation
uses  p_dm,p_login, p_func;


{$R *.DFM}

procedure Tfrm_sjff.b_addClick(Sender: TObject);
begin
  b_add.enabled:=false;
  panel1.Enabled:=true;
  b_save.enabled:=true;
  b_cancel.enabled:=true;
  qry_sjlymx.close;
  qry_sjlymx.Parameters.ParamByName('lydh').value:='';
  qry_sjlymx.open;
  qry_sjlymx.append;
  qry_sjlymx['czrq']:=frm_func.curr_date;
  qry_sjlymx['czy']:=pub_czydm;
  dbbox1.keyvalue:=qry_sjlb['dm'];
  dbbox1.setfocus;
end;

procedure Tfrm_sjff.b_saveClick(Sender: TObject);
var
lydh:string;
mess:string;
begin
   if (trim(dbedit2.text)='') or (trim(dbedit3.text)='')   then begin
       application.MessageBox('收据起止号不能为空!','提示',0+16);
       dbedit2.SetFocus;
       abort;
   end;
   if qry_sjlymx.fieldbyname('sjqh').asinteger<=0 then
      begin
       application.MessageBox('请输入正确的收据起号!','提示',0+16);
       dbedit2.SetFocus;
       abort;
      end;
   if qry_sjlymx.fieldbyname('sjzh').asinteger<=0 then
      begin
       application.MessageBox('请输入正确的收据止号!','提示',0+16);
       dbedit3.SetFocus;
       abort;
      end;

   if edit2.text='' then
      begin
       application.MessageBox('必须输入领用人!','提示',0+16);
       edit1.SetFocus;
       abort;
      end;
   if qry_sjlymx.fieldbyname('sjqh').asinteger>qry_sjlymx.fieldbyname('sjzh').asinteger then
      begin
       application.MessageBox('收据起号不能大于收据止号!','提示',0+16);
       dbedit2.SetFocus;
       abort;
      end;
   sp_sjlyjc.close;
   sp_sjlyjc.Parameters.ParamByName('@sjlb').value:=qry_sjlb['dm'];
   sp_sjlyjc.Parameters.ParamByName('@sjqh').value:=qry_sjlymx.fieldbyname('sjqh').asinteger;
   sp_sjlyjc.Parameters.ParamByName('@sjzh').value:=qry_sjlymx.fieldbyname('sjzh').asinteger;
   sp_sjlyjc.Parameters.ParamByName('@zt').value:='aaaa';
   sp_sjlyjc.ExecProc;
   if trim(sp_sjlyjc.Parameters.ParamByName('@zt').value)<>'' then
      begin
       mess:=sp_sjlyjc.Parameters.ParamByName('@zt').value;
       application.MessageBox(pchar(mess),'提示',0+16);
       abort;
      end;
   lydh:=get_sjh(pub_czydm);
   qry_sjlymx['lydh']:=lydh;
   qry_sjlymx['sjlb']:=qry_sjlb['dm'];
   qry_sjlymx['lyr']:=qry_czy['dm'];
   qry_sjlymx['lyks']:=qry_czy['ksdm'];
   qry_sjlymx['sjsl']:=qry_sjlymx.fieldbyname('sjzh').asinteger-qry_sjlymx.fieldbyname('sjqh').asinteger+1;
   qry_sjlymx.post;
   qry_lymx.close;
   qry_lymx.Parameters.parambyname('czydm').value:=qry_czy['dm'];
   qry_lymx.open;
   b_save.enabled:=false;
   b_cancel.enabled:=false;
   b_add.enabled:=true;
   panel1.Enabled:=false;
   b_add.setfocus;
end;

procedure Tfrm_sjff.b_cancelClick(Sender: TObject);
begin
qry_lymx.close;
qry_sjlymx.cancel;
edit1.Clear;
b_save.enabled:=false;
b_cancel.enabled:=false;
b_add.enabled:=true;
panel1.Enabled:=false;
b_add.setfocus;
end;

procedure Tfrm_sjff.DBGrid3Exit(Sender: TObject);
begin
   dbgrid3.Visible:=false;
end;

procedure Tfrm_sjff.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   SelectNext(activeControl,true,true);
end;

procedure Tfrm_sjff.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_sjff.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then
        begin
         qry_czy.close;
         qry_czy.Parameters.parambyname('pym').value:='%'+trim(edit1.text)+'%';
         qry_czy.open;
         if Qry_czy.IsEmpty then
            begin
             application.MessageBox('无此操作员!','提示',0+16);
             edit1.SetFocus;
             abort;
            end;
         if qry_czy.RecordCount<>1 then
            begin
             dbgrid3.Visible:=true;
             dbgrid3.SetFocus;
            end
         else
            begin
               edit1.Text:=qry_czy['dm'];
               edit2.Text:=qry_czy['mc'];
               qry_lymx.close;
               qry_lymx.Parameters.parambyname('czydm').value:=qry_czy['dm'];
               qry_lymx.open;
               dbedit2.SetFocus;
            end;
      end;

end;

procedure Tfrm_sjff.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
       begin
         edit1.Text:=qry_czy['dm'];
         edit2.Text:=qry_czy['mc'];
         qry_lymx.close;
         qry_lymx.Parameters.parambyname('czydm').value:=qry_czy['dm'];
         qry_lymx.open;
         dbedit2.setfocus;
       end;
end;

procedure Tfrm_sjff.Edit1Change(Sender: TObject);
begin
edit2.Clear;
end;

procedure Tfrm_sjff.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfrm_sjff.FormShow(Sender: TObject);
begin
qry_sjlb.open;
end;

end.
