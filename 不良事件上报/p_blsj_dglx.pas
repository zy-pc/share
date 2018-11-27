unit p_blsj_dglx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, DB, ADODB, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  Tfrm_blsj_dglx = class(TForm)
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    ADOStoredProc1: TADOStoredProc;
    Panel1: TPanel;
    Label2: TLabel;
    qry_ins: TADOQuery;
    ADODataSet1: TADODataSet;
    Label1: TLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    zf:Integer;
    prv_zyh :string;
    prv_sfwc :string;
    prv_id:string;
  end;

var
  frm_blsj_dglx: Tfrm_blsj_dglx;

implementation
uses
p_dm,p_func,p_blsj_hlsj;

{$R *.dfm}

procedure Tfrm_blsj_dglx.Button1Click(Sender: TObject);
var
i,bz:integer;
s:string;
begin
  bz:=0;
  aDOStoredProc1.First; //判断是否选择多个导管
  for i := 0 to ADOStoredProc1.RecordCount - 1 do
  begin
  if ADOStoredProc1.FieldByName('xzbz').AsBoolean=true then
    begin
      if bz=0 then
        bz:=1
      else
       if bz=1 then
       begin
          application.messagebox('一次上报只能选择一种导管类型！', '提示', mb_ok + mb_iconinformation);
          Abort;
       end;
        
    end;
    ADOStoredProc1.Next;
  end;

  ADOStoredProc1.UpdateBatch(arAll);
  aDOStoredProc1.First;
  s:='';
  for i := 0 to ADOStoredProc1.RecordCount - 1 do
  begin
  if ADOStoredProc1.FieldByName('xzbz').AsBoolean=true then
    begin
      if s='' then
        s:=s+trim(ADOStoredProc1.FieldByName('pfxx').AsString)
      else
        s:=s+';'+trim(ADOStoredProc1.FieldByName('pfxx').AsString);
    end;
    ADOStoredProc1.Next;
  end;
  frm_hlsj.gdmc.Text:=s;
  Close;
end;

procedure Tfrm_blsj_dglx.FormClose(Sender: TObject; var Action: TCloseAction);
var
i:Integer;
aa:string;
begin
  prv_zyh:='';
end;

procedure Tfrm_blsj_dglx.FormShow(Sender: TObject);
begin
  if prv_zyh<>'' then
  begin
    ADOStoredProc1.close;
    ADOStoredProc1.parameters.ParamByName('@zyh').value :=prv_zyh;
    ADOStoredProc1.parameters.ParamByName('@sjid').value :=prv_id;
    ADOStoredProc1.Open;
  end;
end;

end.
