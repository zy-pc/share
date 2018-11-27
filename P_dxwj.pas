unit P_dxwj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, DBCtrls, ExtCtrls;

type
  Tfrm_dxwj = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qry_source: TADOQuery;
    DataSource1: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBMemo1: TDBMemo;
    qry_sourcedm: TStringField;
    qry_sourcembdm: TAutoIncField;
    qry_sourcembmc: TStringField;
    qry_sourcembsx: TStringField;
    qry_sourcemzksgs: TStringField;
    qry_sourcezyksgs: TStringField;
    qry_sourcembczy: TStringField;
    qry_sourcewjmc: TStringField;
    qry_sourcembwj: TBlobField;
    DBNavigator1: TDBNavigator;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    S1, S2: TADOBlobStream;
    F1, F2: TFileStream;
    procedure Proc_ReadFromDataSet(D: TDataSet; F: String);//D��Ҫ��д���ݼ�;F��Ҫ��д�ֶ���;
    procedure Proc_WriteToFile(S: TStream; FileName: String);//S��д���ļ�������Դ;FileName:д���ļ�·��������;
    Procedure Proc_ReadFromFile(FileName: String);//FileName:Ҫ��ȡ���ļ�·��������;
    Procedure Proc_WriteToDataSet(D: TDataSet; F: String);//D��Ҫ��д���ݼ�������д�����ݿ⣬д�뻹Ҫ�������ݼ�����д�룩;F��Ҫ��д�ֶ���;
  public
    { Public declarations }
  end;

var
  frm_dxwj: Tfrm_dxwj;

implementation
uses p_dm;
{$R *.dfm}

{ TForm1 }

procedure Tfrm_dxwj.Proc_ReadFromDataSet(D: TDataSet; F: String);
begin
  try
    S1:=TADOBlobStream.Create(D.FieldByName(F) As TBlobField,bmRead);
    S1.Position:=0;
  except
    S1.Free;
  end;
end;

procedure Tfrm_dxwj.Proc_WriteToFile(S: TStream; FileName: String);
begin
  try
    F1:= TFileStream.Create(FileName,fmCreate);
    F1.Position:= 0;
    F1.CopyFrom(S1,S1.Size);
  finally
    F1.Free;
    S1.Free;
  end;
end;

procedure Tfrm_dxwj.Proc_ReadFromFile(FileName: String);
begin
  Try
    F2:= TFileStream.Create(FileName,fmOpenRead);
    F2.Position:= 0;
  Except
    F2.Free;
  End;
end;

Procedure Tfrm_dxwj.Proc_WriteToDataSet(D: TDataSet; F: String);
begin
  try
    S2:=TADOBlobStream.Create(D.FieldByName(F) As TBlobField,bmRead);
    S2.Position:=0;
    S2.CopyFrom(F2, F2.Size);
  Finally
    S2.Free;
    F2.Free;
  end;
end;

procedure Tfrm_dxwj.BitBtn1Click(Sender: TObject);
begin
  Proc_ReadFromDataSet(qry_source,'��������');
end;

procedure Tfrm_dxwj.BitBtn2Click(Sender: TObject);
begin
  if S1.Size <=0 then exit;

  Proc_WriteToFile(S1,'D:\aa.txt');
  S1.Free;
end;

procedure Tfrm_dxwj.FormShow(Sender: TObject);
begin
  qry_source.Open;
end;


procedure Tfrm_dxwj.BitBtn3Click(Sender: TObject);
begin
  Proc_ReadFromFile('D:\aa.txt');
end;

procedure Tfrm_dxwj.BitBtn4Click(Sender: TObject);
begin
  Proc_WriteToDataSet(qry_source,'��������');
  qry_source.Post;
end;

end.
