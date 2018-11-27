unit p_yzsj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrm_yzsj = class(TForm)
    Label1: TLabel;
    yzzxsj: TcxDateEdit;
    btnOK: TBitBtn;
    btnCancle: TBitBtn;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_yzsj: Tfrm_yzsj;

implementation
    uses p_dm,p_func,p_yzzx,p_yzzxxse;
{$R *.dfm}

procedure Tfrm_yzsj.btnOKClick(Sender: TObject);
begin
yzsj:=yzzxsj.Date;
yzsjxse:=yzzxsj.Date;

 if pub_yydm='0266' then    //广元昭化 特殊需求
 begin
   if not Assigned(frm_yzzx) then
   begin
     frm_yzzxxse.sp_dryz.First; //执行非医嘱时，此窗口下的该控件没有执行过，进入该语句会报错
     while not frm_yzzxxse.sp_dryz.Eof do
     begin
       if frm_yzzxxse.sp_dryz.FieldByName('xz').Value then
       begin
          if trim(yzzxsj.Text) < frm_yzzxxse.sp_dryz.FieldByName('kdrq').Value then  //syczxsj
          begin
             ShowMessage('医嘱执行时间不允许在医嘱开始时间之前，请重新选择执行时间！');
             exit;
          end;
       end;
       frm_yzzxxse.sp_dryz.Next;
     end;
   end else
   begin
     frm_yzzx.sp_dryz.First; //执行非医嘱时，此窗口下的该控件没有执行过，进入该语句会报错
     while not frm_yzzx.sp_dryz.Eof do
     begin
       if frm_yzzx.sp_dryz.FieldByName('xz').Value then
       begin
          if trim(yzzxsj.Text) < frm_yzzx.sp_dryz.FieldByName('kdrq').Value then  //syczxsj
          begin
             ShowMessage('医嘱执行时间不允许在医嘱开始时间之前，请重新选择执行时间！');
             exit;
          end;
       end;
       frm_yzzx.sp_dryz.Next;
     end;
   end;
 end;
  fqyzxse:=false;
  fqyz := false;
  self.close;


end;

procedure Tfrm_yzsj.btnCancleClick(Sender: TObject);
begin
fqyzxse:=true;      //新生儿

//  20150325     添加缺少内容
//针对临时医嘱勾选过后，点了执行医嘱，
//出一个确认框，这个时候不点确认，点放弃，但是医嘱还是执行了
fqyz := True;
self.close;
end;

end.
