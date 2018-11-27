unit p_kstj;
                                                                
interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ComCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls, Db, ADODB, Grids, DBGridEh,
    Buttons, DBCGrids, DBGrids, GridsEh;

type
    Tfrm_kstj = class(TForm)
        PageControl1: TPageControl;
        TabSheet1: TTabSheet;
        TabSheet3: TTabSheet;
        TabSheet5: TTabSheet;
        Panel2: TPanel;
        Label9: TLabel;
        Label10: TLabel;
        dtp1: TDateTimePicker;
        dtp2: TDateTimePicker;
        BitBtn1: TBitBtn;
        BitBtn2: TBitBtn;
        sp_cx_srhz: TADOStoredProc;
        sp_cx_srmx: TADOStoredProc;
        sp_cx_zchz: TADOStoredProc;
        sp_cx_zcmx: TADOStoredProc;
        sp_cx_szbr: TADOStoredProc;
        sp_cx_rcyrs: TADOStoredProc;
        ds_srhz: TDataSource;
        ds_srmx: TDataSource;
        ds_zchz: TDataSource;
        ds_zcmx: TDataSource;
        ds_cryrs: TDataSource;
        ds_szbr: TDataSource;
        DBCtrlGrid1: TDBCtrlGrid;
        DBText1: TDBText;
        DBText2: TDBText;
        sp_cx_zchzksmc: TStringField;
        sp_cx_zchzckdw: TStringField;
        sp_cx_zchzzje: TBCDField;
        TabSheet6: TTabSheet;
        DBGridEh5: TDBGridEh;
        sp_cx_sbzj: TADOStoredProc;
        ds_sbzj: TDataSource;
        GroupBox1: TGroupBox;
        DBGridEh1: TDBGridEh;
        GroupBox2: TGroupBox;
        DBGridEh2: TDBGridEh;
        GroupBox3: TGroupBox;
        DBGridEh3: TDBGridEh;
        GroupBox4: TGroupBox;
        DBGridEh4: TDBGridEh;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBText3: TDBText;
    TabSheet2: TTabSheet;
    dbgrid1: TDBGridEh;
    ds_tjdl: TDataSource;
    sp_tjdl: TADOStoredProc;
        procedure BitBtn1Click(Sender: TObject);
        procedure BitBtn2Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    frm_kstj: Tfrm_kstj;

implementation
uses p_dm;
{$R *.DFM}

procedure Tfrm_kstj.BitBtn1Click(Sender: TObject);
var
i: integer;
begin
    sp_cx_rcyrs.close;
    sp_cx_rcyrs.Parameters.ParamByName('@ksdm').value := pub_bqdm;
    sp_cx_rcyrs.Parameters.ParamByName('@kssj').value := formatdatetime('yyyymmdd', dtp1.Date);
    sp_cx_rcyrs.Parameters.ParamByName('@jssj').value := formatdatetime('yyyymmdd', dtp2.Date);
    sp_cx_rcyrs.open;

    sp_cx_srhz.close;
    sp_cx_srhz.Parameters.ParamByName('@ksdm').value := pub_bqdm;
    sp_cx_srhz.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', dtp1.Date);
    sp_cx_srhz.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', dtp2.Date);
    sp_cx_srhz.open;

    sp_cx_srmx.close;
    sp_cx_srmx.Parameters.ParamByName('@ksdm').value := pub_bqdm;
    sp_cx_srmx.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', dtp1.Date);
    sp_cx_srmx.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', dtp2.Date);
    sp_cx_srmx.open;

    sp_cx_zchz.close;
    sp_cx_zchz.Parameters.ParamByName('@ksdm').value := pub_bqdm;
    sp_cx_zchz.Parameters.ParamByName('@kssj').value := dtp1.Date;
    sp_cx_zchz.Parameters.ParamByName('@jssj').value := dtp2.Date;
    sp_cx_zchz.open;

    sp_cx_zcmx.close;
    sp_cx_zcmx.Parameters.ParamByName('@ksdm').value := pub_bqdm;
    sp_cx_zcmx.Parameters.ParamByName('@kssj').value := dtp1.Date;
    sp_cx_zcmx.Parameters.ParamByName('@jssj').value := dtp2.Date;
    sp_cx_zcmx.open;

    sp_cx_szbr.close;
    sp_cx_szbr.Parameters.ParamByName('@ksdm').value := pub_bqdm;
    sp_cx_szbr.Parameters.ParamByName('@kssj').value := dtp1.Date;
    sp_cx_szbr.Parameters.ParamByName('@jssj').value := dtp2.Date;
    sp_cx_szbr.open;

    sp_cx_sbzj.close;
    sp_cx_sbzj.Parameters.ParamByName('@bqdm').value := pub_bqdm;
    sp_cx_sbzj.Parameters.ParamByName('@VarDate').value := dtp2.Date;
    sp_cx_sbzj.Parameters.ParamByName('@varYzj').value := 0;
    sp_cx_sbzj.Parameters.ParamByName('@varnzj').value := 0;
    sp_cx_sbzj.open;
    
    try
    dbgrid1.columns[0].Title.caption := '开单医生';
    dbgrid1.Columns[0].fieldname := 'ysxm';
    sp_tjdl.Active := false;
    sp_tjdl.Parameters.Refresh;
    sp_tjdl.Parameters.ParamByName('@s_date').value := formatdatetime('yyyy-mm-dd', dtp1.DateTime);
    sp_tjdl.Parameters.ParamByName('@e_date').value := formatdatetime('yyyy-mm-dd', dtp2.DateTime);
    sp_tjdl.Parameters.ParamByName('@fylb').value := '1';
    sp_tjdl.Parameters.ParamByName('@fydl').value := '01';
    sp_tjdl.Parameters.ParamByName('@sjlb').value := '1';
    sp_tjdl.Parameters.ParamByName('@bqdm').value := pub_bqdm;
    sp_tjdl.Open;
    except
    application.MessageBox('统计费用大类超过限制，请调整大类项目', '提示', 0 + 16);
    end;
    for i := 0 to dbgrid1.Columns.Count - 1 do
    begin
      dbgrid1.Columns[i].Title.Alignment := taCenter;
      dbgrid1.Columns[i].width := 70;
      if dbgrid1.Columns[i].Title.Caption = '合计' then
      begin
        dbgrid1.Columns[i].Color := claqua;
        dbgrid1.Columns[i].width := 80;
      end;
    end;

end;

procedure Tfrm_kstj.BitBtn2Click(Sender: TObject);
begin
    self.close;
end;

procedure Tfrm_kstj.FormShow(Sender: TObject);
begin
    dtp1.date := IncMonth(date, -1);
    dtp2.date := date;
    pagecontrol1.activepage := TabSheet1;
end;

end.
