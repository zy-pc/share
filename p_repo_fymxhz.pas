unit p_repo_fymxhz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB;

type
  Tfrm_repo_fymxhz = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    m_bt: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    m_zyh: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    m_xm: TQRLabel;
    m_xb: TQRLabel;
    m_sfzl: TQRLabel;
    m_zyts: TQRLabel;
    m_nl: TQRLabel;
    m_bq: TQRLabel;
    m_ch: TQRLabel;
    m_ryrj: TQRLabel;
    m_cysj: TQRLabel;
    m_yj: TQRLabel;
    m_fyhj: TQRLabel;
    m_ye: TQRLabel;
    m_dyrq: TQRLabel;
    sp_fyhz: TADOStoredProc;
    QRShape4: TQRShape;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    my_bt: TQRLabel;
    my_zyh: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    my_xm: TQRLabel;
    my_xb: TQRLabel;
    my_nl: TQRLabel;
    my_bq: TQRLabel;
    my_hzcfs: TQRLabel;
    my_jehj: TQRLabel;
    my_ypzs: TQRLabel;
    QRBand2: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape7: TQRShape;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand4: TQRBand;
    QRLabel57: TQRLabel;
    my_dyrq: TQRLabel;
    QRShape8: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    my_jlhj: TQRLabel;
    my_ylhj: TQRLabel;
    my_zfhj: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText9: TQRDBText;
    sp_yyhz: TADOStoredProc;
    QRLabel23: TQRLabel;
    QRDBText15: TQRDBText;
    sp_hz: TADOStoredProc;
    procedure QRDBText5Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_fymxhz: Tfrm_repo_fymxhz;

implementation

uses p_dm;

{$R *.dfm}

procedure Tfrm_repo_fymxhz.QRDBText5Print(sender: TObject; var Value: string);
begin
    //value :=  
end;

end.
