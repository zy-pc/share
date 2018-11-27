unit P_sjqy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, Db, DBTables, ADODB, GridsEh, DBGridEh,
  Menus, cxLookAndFeelPainters, cxButtons, ExtCtrls, DBGridEhGrouping;

type
  TFrm_Sjqy = class(TForm)
    DS_Qry_SjUse: TDataSource;
    GroupBox2: TGroupBox;
    BBtn_Yes: TcxButton;
    BBtn_return: TcxButton;
    Qry_Sjuse: TADOQuery;
    Qry_Sjusemc: TStringField;
    Qry_Sjusesjzh: TIntegerField;
    Qry_Sjuseqybz: TBooleanField;
    Qry_Sjusesjlb: TStringField;
    Qry_Sjusesjqh: TIntegerField;
    Qry_Sjusesyls: TIntegerField;
    Qry_Sjuseused: TStringField;
    Panel1: TPanel;
    DBGrid_Sjmx: TDBGridEh;
    procedure DBGrid_SjmxKeyPress(Sender: TObject; var Key: Char);
    procedure BBtn_YesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Qry_SjuseCalcFields(DataSet: TDataSet);
    procedure BBtn_returnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Frm_Sjqy: TFrm_Sjqy;

implementation

uses p_dm, p_func;

{$R *.DFM}

procedure TFrm_Sjqy.DBGrid_SjmxKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
    BBtn_Yes.SetFocus;
end;

procedure TFrm_Sjqy.BBtn_YesClick(Sender: TObject);
var
  qy_return: string;
  sjqh: integer;
  sjlb: string;
begin
  try
    sjqh := qry_sjuse.fieldbyname('sjqh').asinteger;
    sjlb := qry_sjuse.fieldbyname('sjlb').asstring;
    qy_return := sys_sjqy(pub_czydm, sjlb, sjqh);
    if qy_return = '1' then
    begin
      qry_sjuse.close;
      qry_sjuse.parameters.ParamByName('sr_czydm').value := pub_czydm;
      Qry_Sjuse.Open;
      if (Qry_SjUse.IsEmpty) then
        BBtn_Yes.Enabled := False;
    end
    else
      ShowMessage(qy_return);
  except
    ShowMessage('操作失败，请联系管理员!');
  end;
  DBGrid_Sjmx.SetFocus;
end;

procedure TFrm_Sjqy.FormShow(Sender: TObject);
begin
  qry_sjuse.close;
  qry_sjuse.parameters.ParamByName('sr_czydm').value := pub_czydm;
  Qry_Sjuse.Open;
  if (Qry_SjUse.IsEmpty) then begin
    BBtn_Yes.Enabled := False;
  end;
end;

procedure TFrm_Sjqy.Qry_SjuseCalcFields(DataSet: TDataSet);
begin
  if qry_sjuse['qybz'] = true then
    qry_sjuse['used'] := '是'
  else
    qry_sjuse['used'] := '否';
end;

procedure TFrm_Sjqy.BBtn_returnClick(Sender: TObject);
begin
  close;
end;

end.

