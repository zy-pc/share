unit p_jszfcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB;

type
  Tfrm_jszfcx = class( TForm )
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    chk1: TCheckBox;
    btn1: TButton;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    chk2: TCheckBox;
    sp_jszfcx: TADOStoredProc;
    ds_jszfcx: TDataSource;
    cxgrdbtblvwGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column10: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column11: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column12: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column13: TcxGridDBColumn;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstylrpstry2: TcxStyleRepository;
    cxstyl2: TcxStyle;
    procedure btn1Click( Sender: TObject );
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jszfcx: Tfrm_jszfcx;

implementation
uses p_dm;
{$R *.dfm}

procedure Tfrm_jszfcx.btn1Click( Sender: TObject );
var
  prv_bhdr: Integer;
  prv_lssj: integer;
begin
  prv_bhdr := 0;
  prv_lssj := 0;
  if chk1.Checked then
  begin
    prv_bhdr := 1;
  end;
  if chk2.Checked then
  begin
    prv_lssj := 1;
  end;
  sp_jszfcx.Close;
  sp_jszfcx.Parameters.ParamByName( '@ksrq' ).Value := dtp1.DateTime;
  sp_jszfcx.Parameters.ParamByName( '@jsrq' ).Value := dtp2.DateTime;
  sp_jszfcx.Parameters.ParamByName( '@bhdr' ).Value := prv_bhdr;
  sp_jszfcx.Parameters.ParamByName( '@ls' ).Value := prv_lssj;
  sp_jszfcx.Open;
end;

procedure Tfrm_jszfcx.FormShow(Sender: TObject);
begin
  dtp1.DateTime := now;
  dtp2.DateTime := now;
end;

end.

