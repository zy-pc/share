unit p_bqgl_bqxmsr;                                  

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
    cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
    QuickRpt, QRCtrls, ComCtrls;

type
    Tfrm_xmsr = class(TForm)
        GroupBox2: TGroupBox;
        Label2: TLabel;
        Label3: TLabel;
        Label1: TLabel;
        Button1: TButton;
        Button2: TButton;
        dtp_ks: TDateTimePicker;
        dtp_js: TDateTimePicker;
        Button3: TButton;
        Edit1: TEdit;
        cxGrid1: TcxGrid;
        cxGridDBTableView1: TcxGridDBTableView;
        cxGridDBColumn1: TcxGridDBColumn;
        cxGridDBColumn2: TcxGridDBColumn;
        cxGridDBColumn3: TcxGridDBColumn;
        cxGridDBColumn4: TcxGridDBColumn;
        cxGridLevel1: TcxGridLevel;
        RadioGroup1: TRadioGroup;
        qry_xmsrhz: TADOQuery;
        ADOQuery2: TADOQuery;
        ds_xmhz: TDataSource;
        DataSource2: TDataSource;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    tt: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    lb: TQRLabel;
    QRLabel8: TQRLabel;
    tjrq: TQRLabel;
    QRLabel10: TQRLabel;
    dyrq: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape2: TQRShape;
        procedure Button1Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure Button3Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
        procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    private
        zyhlist: array of string;
        cxz, cxfs: string;
    //brcount:integer;
    { Private declarations }
    public


    { Public declarations }
    end;

var
    frm_xmsr: Tfrm_xmsr;

implementation
uses p_dm, p_func;
{$R *.dfm}

procedure Tfrm_xmsr.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    zyhlist := nil;
end;

procedure Tfrm_xmsr.Button2Click(Sender: TObject);
begin
    tt.Caption := pub_ksmc +'病区收费项目收入';
    if RadioGroup1.ItemIndex = 0 then
    lb.Caption := '开单'
    else
      lb.Caption := '处置';
      tjrq.Caption := dateToStr(dtp_ks.date) + ' 到 '+ dateToStr(dtp_js.date);
      dyrq.Caption := dateToStr(frm_func.curr_date);
      QuickRep1.Preview;
end;

procedure Tfrm_xmsr.Button3Click(Sender: TObject);
begin
    close;
end;

procedure Tfrm_xmsr.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activeControl, true, true);
end;

procedure Tfrm_xmsr.FormShow(Sender: TObject);
begin
    QuickRep1.Visible := false;
    dtp_ks.DateTime := frm_func.curr_date;
    dtp_js.DateTime := frm_func.curr_date;
end;

procedure Tfrm_xmsr.Button1Click(Sender: TObject);
var temp: string;
begin
    if RadioGroup1.ItemIndex = 0 then
        temp := ' and a.kdks=' + pub_ksdm
    else
        temp := ' and a.czks=' + pub_ksdm;
    qry_xmsrhz.Close;
    qry_xmsrhz.SQL.Text := 'select b.fydm,b.fymc ,sum(fysl) fysl,sum(fyje) fyje,sum(ssje) ssje ' +
        ' from zysf_zyfymxz a,sys_kjsfxm b ' +
        ' where a.fydm = b.fydm  ' +
        temp;
    qry_xmsrhz.SQL.Add(' and datediff(day,a.sfrq,' + #39 + datetostr(dtp_ks.Date) + #39 + ')<=0 and datediff(day,a.sfrq,' + #39 + datetostr(dtp_js.Date) + #39 + ')>=0 ');
    if trim(Edit1.Text) <> '' then
    begin
        qry_xmsrhz.SQL.Add(' and (b.fydm=' + #39 + trim(Edit1.Text) + #39 + ' or b.fymc like ' + #39 + trim(Edit1.Text) + '%' + #39 + ' or b.pym like ' + #39 + trim(Edit1.Text) + '%' + #39 + ')')
    end;
    qry_xmsrhz.SQL.Add(' group by b.fydm,b.fymc ');
    qry_xmsrhz.Open;

end;

end.

