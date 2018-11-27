unit p_brzh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  Tfrm_bqbrzh = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    qry_brcx: TADOQuery;
    qry_brcxbrxm: TStringField;
    qry_brcxbrxb: TStringField;
    qry_brcxfylb: TStringField;
    qry_brcxryrq: TDateField;
    qry_brcxryzd: TStringField;
    qry_brcxtmh: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_bqbrzh: Tfrm_bqbrzh;

implementation
uses p_dm;
{$R *.dfm}

procedure Tfrm_bqbrzh.BitBtn1Click(Sender: TObject);
begin

  if Application.MessageBox('是否要召回病人？','提示',MB_YESNO) = IDYES then
  begin
    with DM_data.qry_pub do
    begin
      Close;
      SQL.Clear;
      SQL.Add('update zysf_zydj set bqdm = ' + ''''+pub_bqdm + ''''+
             ',ksdm = ' + ''''+ pub_ksdm +'''' + 'where tmh = ' + '''' +
             qry_brcx.FieldByName('tmh').AsString + '''');
      ExecSQL;
    end;
    Application.MessageBox('病人召回成功！','提示', MB_OK);
  end else
    Exit;
  qry_brcx.Close;
  qry_brcx.Parameters.ParamByName('ksdm1').Value := pub_ksdm;
  qry_brcx.Parameters.ParamByName('ksdm2').Value := pub_ksdm;
  qry_brcx.Open;
end;

procedure Tfrm_bqbrzh.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_bqbrzh.BitBtn4Click(Sender: TObject);
begin
  qry_brcx.Close;
  qry_brcx.Parameters.ParamByName('ksdm1').Value := pub_ksdm;
  qry_brcx.Parameters.ParamByName('ksdm2').Value := pub_ksdm;
  qry_brcx.Open;
end;

procedure Tfrm_bqbrzh.FormShow(Sender: TObject);
begin
  qry_brcx.Close;
  qry_brcx.Parameters.ParamByName('ksdm1').Value := pub_ksdm;
  qry_brcx.Parameters.ParamByName('ksdm2').Value := pub_ksdm;
  qry_brcx.Open;
end;

end.
