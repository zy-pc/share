unit p_hzrsqd;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, Buttons, Db, DBTables, ExtCtrls, ComCtrls, Grids, DBGrids,
    ADODB, PrnDbgeh, DBGridEh, Qrctrls, QuickRpt, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
    cxGridCustomView, cxGrid, Mask, GridsEh, DBCtrls, DBGridEhGrouping;

type
    Tfrm_brhzqd = class( TForm )
        Panel3: TPanel;
        Label4: TLabel;
        Label3: TLabel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BBtn_tj: TBitBtn;
    BBtn_print: TBitBtn;
    BBtn_return: TBitBtn;
    ds_jztj: TDataSource;
    sp_jztj: TADOStoredProc;
    qry_bqdm: TADOQuery;
    ds_bqdm: TDataSource;
    QuickRep2: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel30: TQRLabel;
    QRShape4: TQRShape;
    DetailBand1: TQRBand;
    QRLabel34: TQRLabel;
    QRL_title2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    DBGridEh5: TDBGridEh;
        procedure BitBtn1Click( Sender: TObject );
        procedure FormKeyDown( Sender: TObject; var Key: Word;
            Shift: TShiftState );
    procedure BBtn_tjClick(Sender: TObject);
    procedure BBtn_printClick(Sender: TObject);
    procedure BBtn_returnClick(Sender: TObject);
    private
        { Private declarations }
    public
        zy_brxm, zy_zyh, zy_tmh: string;
        zd_print, DYYP: boolean;
        li: integer;
        ls_zyh,ls_tmh,ls_brxm:string;
        { Public declarations }
    end;

var
    frm_brhzqd: Tfrm_brhzqd;

    sfyl: boolean; // «∑Ò‘§¿¿

implementation
uses p_dm, p_func;
{$R *.DFM}

procedure Tfrm_brhzqd.BBtn_printClick(Sender: TObject);
begin
   QRLabel34.caption := pub_yymc;
  QuickRep2.Preview;
end;

procedure Tfrm_brhzqd.BBtn_returnClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_brhzqd.BBtn_tjClick(Sender: TObject);
var v_date: TDatetime;
    v_bqdm: String;
    I: Integer;
    v_FieldName: String;
begin
  v_date:= StrToDatetime(Formatdatetime('yyyy-mm-dd', DateTimePicker1.Date) + ' ' + FormatDatetime('hh:mm:ss', DateTimePicker2.Time));
  v_bqdm:= qry_bqdm.FieldByName('bqdm').AsString;

  with sp_jztj do
  begin
    Close;
    Parameters.ParamByName('@bqdm').Value:= v_bqdm;
    Parameters.ParamByName('@jzrq').Value:= v_date;
    Open;
  end;


end;

procedure Tfrm_brhzqd.BitBtn1Click( Sender: TObject );
begin
    close;
end;

procedure Tfrm_brhzqd.FormKeyDown( Sender: TObject; var Key: Word;
    Shift: TShiftState );
begin
    if ( key = VK_F12 ) and ( ssAlt in Shift ) then
        zd_print := true;
end;

end.

