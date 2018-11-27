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

 if pub_yydm='0266' then    //��Ԫ�ѻ� ��������
 begin
   if not Assigned(frm_yzzx) then
   begin
     frm_yzzxxse.sp_dryz.First; //ִ�з�ҽ��ʱ���˴����µĸÿؼ�û��ִ�й�����������ᱨ��
     while not frm_yzzxxse.sp_dryz.Eof do
     begin
       if frm_yzzxxse.sp_dryz.FieldByName('xz').Value then
       begin
          if trim(yzzxsj.Text) < frm_yzzxxse.sp_dryz.FieldByName('kdrq').Value then  //syczxsj
          begin
             ShowMessage('ҽ��ִ��ʱ�䲻������ҽ����ʼʱ��֮ǰ��������ѡ��ִ��ʱ�䣡');
             exit;
          end;
       end;
       frm_yzzxxse.sp_dryz.Next;
     end;
   end else
   begin
     frm_yzzx.sp_dryz.First; //ִ�з�ҽ��ʱ���˴����µĸÿؼ�û��ִ�й�����������ᱨ��
     while not frm_yzzx.sp_dryz.Eof do
     begin
       if frm_yzzx.sp_dryz.FieldByName('xz').Value then
       begin
          if trim(yzzxsj.Text) < frm_yzzx.sp_dryz.FieldByName('kdrq').Value then  //syczxsj
          begin
             ShowMessage('ҽ��ִ��ʱ�䲻������ҽ����ʼʱ��֮ǰ��������ѡ��ִ��ʱ�䣡');
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
fqyzxse:=true;      //������

//  20150325     ���ȱ������
//�����ʱҽ����ѡ���󣬵���ִ��ҽ����
//��һ��ȷ�Ͽ����ʱ�򲻵�ȷ�ϣ������������ҽ������ִ����
fqyz := True;
self.close;
end;

end.
