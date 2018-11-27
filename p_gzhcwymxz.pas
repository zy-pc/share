unit p_gzhcwymxz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, ADODB;

type
  Tfrm_gzhcwymxz = class( TForm )
    ds1: TDataSource;
    qry1: TADOQuery;
    pnl1: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    btn1: TButton;
    btn2: TButton;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    procedure FormShow( Sender: TObject );
    procedure FormKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure btn1Click( Sender: TObject );
    procedure btn2Click( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_gzhcwymxz: Tfrm_gzhcwymxz;
function func_gzhcwymxz( ypdm, ksdm,rkdh: string; var wym: string ): boolean;
implementation
uses p_dm;
var
  prv_qr: boolean = false;
{$R *.dfm}

function func_gzhcwymxz( ypdm, ksdm,rkdh: string; var wym: string ): boolean;
begin
  application.CreateForm( Tfrm_gzhcwymxz, frm_gzhcwymxz );
  try
    frm_gzhcwymxz.qry1.Close;
    frm_gzhcwymxz.qry1.Parameters.ParamByName( 'ypdm' ).Value := ypdm;
    frm_gzhcwymxz.qry1.Parameters.ParamByName( 'ksdm' ).Value := ksdm;
    frm_gzhcwymxz.qry1.Parameters.ParamByName( 'rkdh' ).Value := rkdh;
    frm_gzhcwymxz.qry1.Open;
    if frm_gzhcwymxz.qry1.RecordCount > 0 then
    begin
      frm_gzhcwymxz.ShowModal;
      if prv_qr then
      begin
        wym := frm_gzhcwymxz.qry1.FieldByName( 'wym' ).AsString;
      end;
      Result := prv_qr;
    end
    else
    begin
      result := true;
    end;
  finally
    frm_gzhcwymxz.free;
  end;
end;

procedure Tfrm_gzhcwymxz.btn1Click( Sender: TObject );
begin
  prv_qr := True;
  close;
end;

procedure Tfrm_gzhcwymxz.btn2Click( Sender: TObject );
begin
  prv_qr := false;
  close;
end;

procedure Tfrm_gzhcwymxz.FormKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 46 then
  begin
    btn2.Click;
  end;
end;

procedure Tfrm_gzhcwymxz.FormShow( Sender: TObject );
begin
  cxgrd1.SetFocus;
end;

end.

