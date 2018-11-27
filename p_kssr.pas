unit p_kssr;
                                                                                           
interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, ExtCtrls, ComCtrls, ToolWin, Grids, DBGridEh, ADODB, Db,
    Buttons, Mask, DBCtrls, DBGrids, Qrctrls, QuickRpt, GridsEh;

type
    Tfrm_kssr = class(TForm)
        Panel1: TPanel;
        Label1: TLabel;
        cbmn: TComboBox;
        cbnj: TComboBox;
        sp_tj: TADOStoredProc;
        ad_srbb: TADODataSet;
        DBGridEh1: TDBGridEh;
        BitBtn1: TBitBtn;
        BitBtn3: TBitBtn;
        ds_kssr: TDataSource;
        ad_srbbksdm: TStringField;
        ad_srbbksmc: TStringField;
        ad_srbbmzsr: TBCDField;
        ad_srbbzysr: TBCDField;
        ad_srbbkstz: TBCDField;
        ad_srbbkstj: TBCDField;
        ad_srbbsqtz: TBCDField;
        ad_srbbxqtj: TBCDField;
        ad_srbbybkk: TBCDField;
        ad_srbbtjyd: TStringField;
        ad_srbbhj: TFloatField;
        ad_srbbhj1: TFloatField;
        ad_srbbhj2: TFloatField;
        ad_ksdm: TADODataSet;
        ds_ks: TDataSource;
        QuickRep1: TQuickRep;
        QRBand1: TQRBand;
        QRBand2: TQRBand;
        QRBand3: TQRBand;
        QRBand4: TQRBand;
        bt: TQRLabel;
        tjyd: TQRLabel;
        QRLabel2: TQRLabel;
        QRLabel3: TQRLabel;
        QRLabel4: TQRLabel;
        QRLabel5: TQRLabel;
        QRLabel6: TQRLabel;
        QRLabel7: TQRLabel;
        QRLabel8: TQRLabel;
        QRLabel9: TQRLabel;
        QRLabel10: TQRLabel;
        QRDBText1: TQRDBText;
        QRDBText2: TQRDBText;
        QRDBText3: TQRDBText;
        QRDBText4: TQRDBText;
        QRDBText5: TQRDBText;
        QRDBText6: TQRDBText;
        QRDBText7: TQRDBText;
        QRDBText8: TQRDBText;
        QRDBText9: TQRDBText;
        QRLabel11: TQRLabel;
        QRLabel12: TQRLabel;
        QRLabel13: TQRLabel;
        dysj: TQRLabel;
        procedure FormCreate(Sender: TObject);
        procedure BitBtn1Click(Sender: TObject);
        procedure ad_srbbCalcFields(DataSet: TDataSet);
        procedure BitBtn3Click(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    frm_kssr: Tfrm_kssr;
    kjtj_ls, kjtz_ls, sqtz_ls, xqtj_ls, tbtz_ls: real;
    czf: string = '';

implementation
uses p_dm, p_func;
{$R *.DFM}

procedure Tfrm_kssr.FormCreate(Sender: TObject);
var
    year, day, month, i: word;
    s: string;
begin
    cbnj.Visible := true;
    cbmn.visible := true;
    cbmn.Items.clear;
    decodedate(date, year, month, day);
    for i := year downto year - 50 do
        cbmn.items.Add(inttostr(i));
    cbmn.text := inttostr(year);
    cbnj.Items.clear;
    for i := 1 to 12 do
    begin
        if i <= 9 then s := '0' + inttostr(i) + 'ÔÂ'
        else
            s := inttostr(i) + 'ÔÂ';
        cbnj.Items.add(s);
    end;
    cbnj.text := '01ÔÂ';
end;

procedure Tfrm_kssr.BitBtn1Click(Sender: TObject);
var
    mn, my: string;
begin
    mn := cbmn.Text;
    my := copy(cbnj.text, 1, 2);
    ad_srbb.close;
    ad_srbb.commandtext := 'select *,b.bqdm from cwk_kssrbb a,sys_bqzyfl b where a.ksdm*=b.bqzydm and tjyd=' + #39 + mn + my + #39 + ' order by bqdm';
    ad_srbb.open;
    dbgrideh1.setfocus;

end;

procedure Tfrm_kssr.ad_srbbCalcFields(DataSet: TDataSet);
begin
    ad_srbb['hj'] := ad_srbb.fieldbyname('mzsr').asfloat + ad_srbb.fieldbyname('zysr').asfloat +
        ad_srbb.fieldbyname('kstz').asfloat + ad_srbb.fieldbyname('sqtz').asfloat -
        ad_srbb.fieldbyname('kStj').asfloat - ad_srbb.fieldbyname('xqtj').asfloat -
        ad_srbb.fieldbyname('ybkk').asfloat;
    ad_srbb['hj1'] := ad_srbb.fieldbyname('mzsr').asfloat + ad_srbb.fieldbyname('zysr').asfloat;
    ad_srbb['hj2'] := ad_srbb.fieldbyname('kstz').asfloat + ad_srbb.fieldbyname('sqtz').asfloat -
        ad_srbb.fieldbyname('kStj').asfloat - ad_srbb.fieldbyname('xqtj').asfloat -
        ad_srbb.fieldbyname('ybkk').asfloat;
end;

procedure Tfrm_kssr.BitBtn3Click(Sender: TObject);
begin
    self.close;
end;

end.
