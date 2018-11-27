unit bfkscwxg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  Tbfkscwxgc = class(TForm)
    Label1: TLabel;
    rb1: TRadioButton;
    rb2: TRadioButton;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bfkscwxgc: Tbfkscwxgc;

implementation

uses bfbbsjk;

{$R *.DFM}

procedure Tbfkscwxgc.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tbfkscwxgc.BitBtn1Click(Sender: TObject);
begin
  if (rb1.Checked=false) and (rb2.Checked=false) then
    abort;
  if MessageDlg('是否真的将原有床位数设置成现有床位数？',mtConfirmation,[mbYes,mbNo],1)=mrYes then
  begin
    if rb1.Checked then
    begin
      bfbbsjkc.ADODataSet1.edit;
      bfbbsjkc.ADODataSet1['BCS']:=strtoint(trim(edit1.text));
      bfbbsjkc.ADODataSet1.post;
    end;
    if rb2.Checked then
    begin
      bfbbsjkc.ADODataSet1.first;
      while not bfbbsjkc.ADODataSet1.Eof do
      begin
        bfbbsjkc.ADODataSet1.edit;
        bfbbsjkc.ADODataSet1['BCS']:=strtoint(trim(edit1.text));
        bfbbsjkc.ADODataSet1.post;
        bfbbsjkc.ADODataSet1.next;
      end;
    end;
    close;
  end;
end;

end.
