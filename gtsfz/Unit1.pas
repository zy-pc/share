unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, IDROCXLib_TLB, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    MyIdrOcx1: TMyIdrOcx;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);

begin

if MyIdrOcx1.GetState=0 then
if  MyIdrOcx1.ReadCard()=0 then
   MyIdrOcx1.Start;
   edit1.Text:= MyIdrOcx1.Name ; //姓名
   edit2.Text:= MyIdrOcx1.Sex;  //性别
   edit3.Text:= MyIdrOcx1.Nation;//民族
   edit4.Text:= MyIdrOcx1.Born;  //出生日期
   edit5.Text:= MyIdrOcx1.Address;  //地址
   edit6.Text:= MyIdrOcx1.CardNo;  //身份证号
   edit7.Text:= MyIdrOcx1.Police;  //发证机关
   edit8.Text:= MyIdrOcx1.Activity;//有效期
   MyIdrOcx1:=TMyIdrOcx.Create(self);
   MyIdrOcx1.Assign();
end;

end.
