unit p_syddy_xn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, ADODB, DB, ComCtrls, Buttons, printers,
  QRCtrls, QuickRpt, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxCheckBox, pBarCode, HBarCode,IniFiles, RzTabs, cxTextEdit,
  DBGridEhGrouping;
type
  Tmyrect = record
    ph: string;
    top, left, right, bottom, sl, height: integer;
    yf, tj: string;
    gtop, gleft, gright, gbottom: integer;
  end;
type
  TTmyrect = array[0..1000] of Tmyrect;
  TTypeSearch = (tsInfusion,  // 输液项目
                tsInspection); //检验项目

type
  Tfrm_syddy_xn = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    ds_sybr: TDataSource;
    ds_ypqd: TDataSource;
    sp_dryz: TADOStoredProc;
    Label2: TLabel;
    dt_zxsj: TDateTimePicker;
    sp_yzsj: TADOStoredProc;
    ScrollBox1: TScrollBox;
    DBGridEh2: TDBGridEh;
    Timer1: TTimer;
    sp_sybr: TADOStoredProc;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qb: TCheckBox;
    Shape2: TShape;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Shape3: TShape;
    Shape4: TShape;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRL_yymc_cq: TQRLabel;
    QRL_brxm_cq: TQRLabel;
    sj1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape10: TQRShape;
    QRShape13: TQRShape;
    QRL_bch_cq: TQRLabel;
    xb_cq: TQRLabel;
    nl_cq: TQRLabel;
    sp_zxjl_cq_dy: TADOStoredProc;
    ny: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape19: TQRShape;
    DetailBand1: TQRBand;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    ksrq0: TQRLabel;
    xmmc0: TQRLabel;
    QRgrImage1: TQRImage;
    ypyf0: TQRLabel;
    kdysmc0: TQRLabel;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape17: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    kdysmc1: TQRLabel;
    ypyf1: TQRLabel;
    QRgrImage2: TQRImage;
    xmmc1: TQRLabel;
    ksrq2: TQRLabel;
    kdysmc2: TQRLabel;
    xmmc2: TQRLabel;
    QRgrImage3: TQRImage;
    ypyf2: TQRLabel;
    ksrq3: TQRLabel;
    kdysmc3: TQRLabel;
    xmmc3: TQRLabel;
    QRgrImage4: TQRImage;
    ypyf3: TQRLabel;
    ksrq4: TQRLabel;
    kdysmc4: TQRLabel;
    xmmc4: TQRLabel;
    QRgrImage5: TQRImage;
    ypyf4: TQRLabel;
    ksrq5: TQRLabel;
    kdysmc5: TQRLabel;
    xmmc5: TQRLabel;
    QRgrImage6: TQRImage;
    ypyf5: TQRLabel;
    ksrq6: TQRLabel;
    kdysmc6: TQRLabel;
    xmmc6: TQRLabel;
    QRgrImage7: TQRImage;
    ypyf6: TQRLabel;
    ksrq7: TQRLabel;
    kdysmc7: TQRLabel;
    xmmc7: TQRLabel;
    QRgrImage8: TQRImage;
    ypyf7: TQRLabel;
    ksrq8: TQRLabel;
    kdysmc8: TQRLabel;
    xmmc8: TQRLabel;
    QRgrImage9: TQRImage;
    ypyf8: TQRLabel;
    ksrq1: TQRLabel;
    QRShape46: TQRShape;
    sp_syjhzxd: TADOStoredProc;
    BitBtn10: TBitBtn;
    DBGridEh1: TDBGridEh;
    Button8: TButton;
    Button11: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    SpeedButton2: TSpeedButton;
    ComboBox3: TComboBox;
    rzpgcntrl: TRzPageControl;
    rztbshtInfusion: TRzTabSheet;
    rztbshtInspection: TRzTabSheet;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    sp_brxx: TADOStoredProc;
    sys_get_jyxh: TADOStoredProc;
    ADOStoredProc1: TADOStoredProc;
    ADOStoredProc2: TADOStoredProc;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh2ColWidthsChanged(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure sp_dryzAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure qbClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dt_zxsjChange(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure qyydhszdy;
    procedure qyydhszdy_xz;
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    zyh_zfc: string;
    procedure ChangePrinter;
    procedure ChangePrinter_syjhd;
    procedure ChangePrinter_sybq;
    procedure RevertPrinter;
    { Private declarations }
    function dofilterDBGridEh2(DataSet:TDataSet):Boolean;
    procedure dyjhd(_type: string);
  public
    { Public declarations }
    rectno: integer;
    prv_zyh:string;
    procedure createrect(var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer);
  end;

var
  frm_syddy_xn: Tfrm_syddy_xn;
  myrect: TTmyrect;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  x: integer;
  sfqyydhsz: Boolean;
  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  qhbz: string;

function findinarray(myrect: TTmyrect; zd: string): integer;
procedure initarray(myrect: TTmyrect);

implementation
uses p_dm, p_func, p_print_syfz, p_print_sybq, p_zysf_print_service,
      p_jydtmdy;
{$R *.dfm}

function findinarray(myrect: TTmyrect; zd: string): integer;
var
  i: integer;
  mark: boolean;
begin
  mark := true;
  i := 0;
  while (i < 99) and mark do
  begin
    if myrect[i].ph = zd then
    begin
      mark := false;
    end
    else
      i := i + 1;
  end;
  result := i;
end;

procedure initarray(myrect: TTmyrect);
var
  i: integer;
begin
  for i := 0 to 1000 do
  begin
    myrect[i].ph := '';
    myrect[i].top := 0;
    myrect[i].left := 0;
    myrect[i].right := 0;
    myrect[i].bottom := 0;
    myrect[i].sl := 1;
    myrect[i].yf := '';
    myrect[i].tj := '';
    myrect[i].gtop := 0;
    myrect[i].gleft := 0;
    myrect[i].gright := 0;
    myrect[i].gbottom := 0;
  end;
end;

procedure Tfrm_syddy_xn.BitBtn10Click(Sender: TObject);
var
  fzbh, yzid: string;
  sl, i: Integer;
begin
  BitBtn10.Enabled := False;
  ChangePrinter;
  if not sp_dryz.isempty then
  begin
    application.CreateForm(Tfrm_print_sybq, frm_print_sybq);
    try
      sp_sybr.DisableControls;
      if not qb.checked then
      begin
        sp_sybr.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname('zyh').asstring + #39;
        sp_sybr.filtered := true;
        sp_dryz.Filtered := false;
        sp_dryz.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname('zyh').asstring + #39;
        sp_dryz.filtered := true;
      end
      else
      begin
        sp_sybr.Filtered := false;
        sp_sybr.First;
        sp_dryz.Filtered := false;
        sp_dryz.First;
      end;
      sp_sybr.First;
      while not sp_dryz.eof do
      begin
        if Trim(sp_dryz.fieldbyname('fzph').asstring) = '' then
        begin
          fzbh := get_sjh(pub_czydm);
          yzid := Trim(sp_dryz.fieldbyname('yzid').asstring);
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' +
            ' where zyh=' + '''' + sp_dryz.fieldbyname('zyh').asstring + '''' +
            ' and id=' + yzid;
          DM_data.qry_pub.ExecSQL;
        end;
        sp_dryz.Next;
      end;
      sp_sybr.First;
      while not sp_sybr.eof do
      begin
        if sp_sybr.FieldByName('xzbz').AsBoolean = true then
        begin
          frm_print_sybq.dyrq.caption := '日期：' + formatdatetime('yyyy-mm-dd hh:mm:ss', frm_func.curr_date);
          frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime('yyyymmdd', dt_zxsj.date);
          frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime('yyyy-mm-dd', dt_zxsj.date);
          frm_print_sybq.sp_syfz.close;
          frm_print_sybq.sp_syfz.Parameters.ParamByName('@zyh').value := sp_sybr.fieldbyname('zyh').asstring;
          frm_print_sybq.sp_syfz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dt_zxsj.date);
          frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value := '';
          frm_print_sybq.sp_syfz.Parameters.ParamByName('@dyfs').value := 1;
          frm_print_sybq.sp_syfz.open;
          if not frm_print_sybq.sp_syfz.IsEmpty then
          begin
            if (pub_yydm <> '0051') then
            begin
              if pub_yydm = '0003' then
              begin
                frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
                frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname('brxm').asstring;
                if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：' + sp_sybr.fieldbyname('brnl').asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：' + sp_sybr.fieldbyname('tmh').asstring;
                qyydhszdy;
              end
              else if sfqyydhsz = true then
              begin
                frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
                frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname('brxm').asstring;
                if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：' + sp_sybr.fieldbyname('brnl').asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：' + sp_sybr.fieldbyname('tmh').asstring;
                qyydhszdy;
              end
              else
              begin
                if pub_yydm = '0015' then
                begin
                  frm_print_sybq.QRLabel11.Caption := sp_sybr.fieldbyname('brxm').asstring;
                  frm_print_sybq.QRLabel12.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '床';
                  frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname('brnl').asstring;
                  qyydhszdy_xz;
                end
                else if (pub_yydm = '0204') or (pub_yydm = '0246') then
                begin
                  frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname('brnl').asstring;
                  frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);

                  frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname('brxm').asstring;
                  frm_print_sybq.brxm1_1.Caption := sp_sybr.fieldbyname('brxm').asstring;
                  if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
                  begin
                    frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
                    frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname('bch').asstring) + '床(★)';
                  end
                  else
                  begin
                    frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring;
                    frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname('bch').asstring) + '床';
                  end;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
               // frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
    //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                  if v_IsPrinterJoin then
                    if frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                    begin
                      frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                    end;
                  if pub_yydm = '0246' then
                  begin
                    frm_print_sybq.QuickRep6.Page.Length := 31;
                    frm_print_sybq.QuickRep6.Page.Width := 52;
                frm_print_sybq.qr_bqmc.Top := frm_print_sybq.QuickRep6.Height -
                 frm_print_sybq.QRBand6.Height - frm_print_sybq.qr_bqmc.Height;
                    frm_print_sybq.qr_bqmc.Caption := pub_bqmc;
                  end;
                  frm_print_sybq.QuickRep6.print;
                end
                else
                begin
                  frm_print_sybq.brnl1.Caption := sp_sybr.fieldbyname('brnl').asstring;
                  frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);

                  frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname('brxm').asstring;
                  frm_print_sybq.brxm1.Caption := sp_sybr.fieldbyname('brxm').asstring;
                  if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
                  begin
                    frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
                    frm_print_sybq.bch1.Caption := sp_sybr.fieldbyname('bch').asstring + '床(★)';
                  end
                  else
                  begin
                    frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring;
                    frm_print_sybq.bch1.Caption := sp_sybr.fieldbyname('bch').asstring + '床';
                  end;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
    //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                  if v_IsPrinterJoin then
                    if frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                    begin
                      frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                    end;
                  if pub_yydm = '0229' then
                  begin
                    frm_print_sybq.QuickRep3.Page.Length := 32.5;
                    frm_print_sybq.QuickRep3.Margins.Bottom := 3;
                  end;
                  if pub_yydm = '0012' then //三台中医院姓名有5个字要打全
                  begin
                    frm_print_sybq.bch1.Left := 1;
                    frm_print_sybq.bch1.Width := 35; //frm_print_sybq.bch1.Width -14;
                    frm_print_sybq.brxm1.Left := 36; //frm_print_sybq.brxm1.Left -14;
                    frm_print_sybq.brxm1.Width := 72; //frm_print_sybq.brxm1.width + 14;
                    frm_print_sybq.brnl1.Font.Size := 7;
                    frm_print_sybq.brnl1.Left := 113; //frm_print_sybq.brnl1.Left+2;
                  end;
                  frm_print_sybq.QuickRep3.print;
                end;

              end;
            end
            else
            begin

              frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
              frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname('brxm').asstring;
              frm_print_sybq.brxm_1.Caption := sp_sybr.fieldbyname('brxm').asstring;
              if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
              begin
                frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
                frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
              end
              else
              begin
                frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring;
                frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname('bch').asstring;
              end;
            //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
            //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
            //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
//            end;
              if v_IsPrinterJoin = True then
                if frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
              frm_print_sybq.QuickRep2.print;
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> frm_print_sybq.QuickRep2.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
//            end;

            end;
          end;
          sp_sybr.Next;
        end
        else
        begin
          sp_sybr.Next;
        end;
      end;
    finally
      frm_print_sybq.Free;
      sp_sybr.EnableControls;
      sp_sybr.Filtered := false;
      sp_dryz.EnableControls;
      sp_dryz.Filtered := false;
      BitBtn10.Enabled := true;
    end;
  end;
  //RevertPrinter;

end;

procedure Tfrm_syddy_xn.BitBtn1Click(Sender: TObject);
var
  fzbh, yzid: string;
  i, sl: integer;
begin
  ChangePrinter;
  if not sp_dryz.isempty then
  begin
    application.CreateForm(Tfrm_print_sybq, frm_print_sybq);
    try
      sp_sybr.DisableControls;
      if not qb.checked then
      begin
        sp_sybr.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname('zyh').asstring + #39;
        sp_sybr.filtered := true;
        sp_dryz.Filtered := false;
        sp_dryz.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname('zyh').asstring + #39;
        sp_dryz.filtered := true;
      end
      else
      begin
        sp_sybr.Filtered := false;
        sp_sybr.First;
        sp_dryz.Filtered := false;
        sp_dryz.First;
      end;

      sp_sybr.First;
      while not sp_dryz.eof do
      begin
        fzbh := get_sjh(pub_czydm);
        yzid := Trim(sp_dryz.fieldbyname('yzid').asstring);
        if Trim(sp_dryz.fieldbyname('fzph').asstring) = '' then
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'update zybl_zyyz with(rowlock) set fzph=' + '''' + fzbh + '''' + ' where ' +
            'zyh=' + '''' + sp_dryz.fieldbyname('zyh').asstring + '''' +
            ' and id=' + yzid;
          DM_data.qry_pub.ExecSQL;
        end;
        sp_dryz.Next;
      end;


      while not sp_sybr.eof do
      begin
        frm_print_sybq.dyrq.caption := '日期：' + formatdatetime('yyyy-mm-dd hh:mm:ss', frm_func.curr_date);
        frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime('yyyymmdd', dt_zxsj.date);
        frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime('yyyy-mm-dd', dt_zxsj.date);
        frm_print_sybq.sp_syfz.close;
        frm_print_sybq.sp_syfz.Parameters.ParamByName('@zyh').value := sp_sybr.fieldbyname('zyh').asstring;
        frm_print_sybq.sp_syfz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dt_zxsj.date);
        frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value := '';
        frm_print_sybq.sp_syfz.Parameters.ParamByName('@dyfs').value := 1;
        frm_print_sybq.sp_syfz.open;
        if not frm_print_sybq.sp_syfz.IsEmpty then
        begin
          if (pub_yydm <> '0051') then
          begin
            if pub_yydm = '0003' then
            begin
//              frm_print_sybq.sp_syfz.First;
//              while not frm_print_sybq.sp_syfz.Eof do
//              begin
//
//                DM_data.qry_pub.close;
//                DM_data.qry_pub.SQL.Text:='select * from sys_ypyf where rtrim(mc)='+''''+
//                trim(frm_print_sybq.sp_syfz.FieldByName('ypyf').asstring)+'''';
//                DM_data.qry_pub.Open;
//                if DM_data.qry_pub.IsEmpty then
//                begin
//                  sl:=1;
//                end
//                else
//                begin
//                  sl:=DM_data.qry_pub.FieldByName('sl').AsInteger;
//                end;
//                for i := 0 to sl-1 do
//                begin
//                  ChangePrinter_sybq;
//                  frm_zysf_print_service.Printsyd( sp_sybr,frm_print_sybq.sp_syfz,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//                end;
//
//                frm_print_sybq.sp_syfz.Next;
//              end;
              frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
              frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname('brxm').asstring;
              if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
              begin
                frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '(★)';
              end
              else
              begin
                frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '床'
              end;
              frm_print_sybq.brnl.Caption := '年龄：' + sp_sybr.fieldbyname('brnl').asstring;
              frm_print_sybq.QRLabel8.Caption := '条码号：' + sp_sybr.fieldbyname('tmh').asstring;
              qyydhszdy;
            end
            else if sfqyydhsz = true then
            begin
              frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
              frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname('brxm').asstring;
              if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
              begin
                frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '(★)';
              end
              else
              begin
                frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '床'
              end;
              frm_print_sybq.brnl.Caption := '年龄：' + sp_sybr.fieldbyname('brnl').asstring;
              frm_print_sybq.QRLabel8.Caption := '条码号：' + sp_sybr.fieldbyname('tmh').asstring;
              qyydhszdy;
            end
            else
            begin
              if pub_yydm = '0015' then
              begin
                frm_print_sybq.QRLabel11.Caption := sp_sybr.fieldbyname('brxm').asstring;
                frm_print_sybq.QRLabel12.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '床';
                frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname('brnl').asstring;
                qyydhszdy_xz;
              end
              else if (pub_yydm = '0204') or (pub_yydm = '0246') then
              begin
                frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
                frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname('brnl').asstring;
                frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname('brxm').asstring;
                frm_print_sybq.brxm1_1.Caption := sp_sybr.fieldbyname('brxm').asstring;
                if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
                  frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname('bch').asstring) + '床(★)';
                end
                else
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring;
                  frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname('bch').asstring) + '床';
                end;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                //frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
    //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                if v_IsPrinterJoin = True then
                  if frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                  begin
                    frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                  end;
                if pub_yydm = '0246' then
                begin
                  frm_print_sybq.QuickRep6.Page.Length := 31;
                  frm_print_sybq.QuickRep6.Page.Width := 52;
                  //frm_print_sybq.QRBand7.Enabled := True;
                frm_print_sybq.qr_bqmc.Top := frm_print_sybq.QuickRep6.Height -
                 frm_print_sybq.QRBand6.Height - frm_print_sybq.qr_bqmc.Height;
                  frm_print_sybq.qr_bqmc.Caption := pub_bqmc;
                end;
                frm_print_sybq.QuickRep6.print;
              end
              else
              begin
                frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
                frm_print_sybq.brnl1.Caption := sp_sybr.fieldbyname('brnl').asstring;
                frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname('brxm').asstring;
                frm_print_sybq.brxm1.Caption := sp_sybr.fieldbyname('brxm').asstring;
                if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
                  frm_print_sybq.bch1.Caption := sp_sybr.fieldbyname('bch').asstring + '床(★)';
                end
                else
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring;
                  frm_print_sybq.bch1.Caption := sp_sybr.fieldbyname('bch').asstring + '床';
                end;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
    //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                if v_IsPrinterJoin = True then
                  if frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                  begin
                    frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                  end;
                if pub_yydm = '0229' then
                begin
                  frm_print_sybq.QuickRep3.Page.Length := 32.5;
                  frm_print_sybq.QuickRep3.Margins.Bottom := 3;
                end;
                frm_print_sybq.QuickRep3.print;
              end;


            end;
          end
          else
          begin
            frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
            frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname('brxm').asstring;
            frm_print_sybq.brxm_1.Caption := sp_sybr.fieldbyname('brxm').asstring;
            if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
            begin
              frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
              frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
            end
            else
            begin
              frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring;
              frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname('bch').asstring;
            end;
            //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
            //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
            //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
//            end;
            if v_IsPrinterJoin = True then
              if frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
              begin
                frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
            frm_print_sybq.QuickRep2.print;
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> frm_print_sybq.QuickRep2.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
//            end;
          end;
        end;
        sp_sybr.Next;
        Sleep(500);
      end;
    finally
      frm_print_sybq.Free;
      sp_sybr.EnableControls;
      sp_sybr.Filtered := false;
    end;
  end;
  //RevertPrinter;
end;

procedure Tfrm_syddy_xn.BitBtn2Click(Sender: TObject);
var
  yzid, fzbh: string;
  sl, i: Integer;
begin
  if (sp_sybr.IsEmpty) and (sp_dryz.IsEmpty) then
  begin
    ShowMessage('没有选择要打印的病人信息！');
    Exit;
  end;

  ChangePrinter;
  yzid := Trim(sp_dryz.fieldbyname('yzid').asstring);
  fzbh := get_sjh(pub_czydm);
  if Trim(sp_dryz.fieldbyname('fzph').asstring) = '' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'update zybl_zyyz with(rowlock) set fzph=' + '''' + fzbh + '''' + ' where ' +
      'zyh=' + '''' + sp_dryz.fieldbyname('zyh').asstring + '''' +
      ' and id=' + yzid;
    DM_data.qry_pub.ExecSQL;
  end;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value := pub_bqdm;
  sp_dryz.Parameters.ParamByName('@zyh').value := sp_sybr.FieldByName('zyh').asstring;
  sp_dryz.Parameters.ParamByName('@bz').value := '全部';
  sp_dryz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
  sp_dryz.Open;
  sp_dryz.Locate('yzid', yzid, []);
  if not sp_dryz.isempty then
  begin
    application.CreateForm(Tfrm_print_sybq, frm_print_sybq);

    frm_print_sybq.dyrq.caption := '日期：' + formatdatetime('yyyy-mm-dd', dt_zxsj.date);
    frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime('yyyyMMdd', dt_zxsj.date);
    frm_print_sybq.dyrq1.caption := Trim(frm_print_sybq.dyrq1.caption);
    //qr_sm
    //formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
    frm_print_sybq.sp_syfz.close;
    frm_print_sybq.sp_syfz.Parameters.Refresh;
    frm_print_sybq.sp_syfz.Parameters.ParamByName('@zyh').value := sp_dryz.fieldbyname('zyh').asstring;
    frm_print_sybq.sp_syfz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dt_zxsj.date);
    if Trim(sp_dryz.fieldbyname('fzph').asstring) = '' then
    begin
      frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value := sp_dryz.fieldbyname('yzid').asstring;
    end
    else
      frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value := sp_dryz.fieldbyname('fzph').asstring;
    frm_print_sybq.sp_syfz.Parameters.ParamByName('@dyfs').value := 1;
    frm_print_sybq.sp_syfz.open;
    sp_sybr.Locate('zyh', sp_dryz.FieldByName('zyh').asstring, []);
    if not frm_print_sybq.sp_syfz.IsEmpty then
    begin
      if (pub_yydm <> '0051') then
      begin
        if pub_yydm = '0003' then
        begin
          try
            frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
            frm_print_sybq.QRLabel1.Caption := sp_dryz.fieldbyname('brxm').asstring;
            if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
            begin
              frm_print_sybq.QRLabel2.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
            end
            else
            begin
              frm_print_sybq.QRLabel2.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床'
            end;
            frm_print_sybq.brnl.Caption := '年龄：' + sp_sybr.fieldbyname('brnl').asstring;
            frm_print_sybq.QRLabel8.Caption := '条码号：' + sp_dryz.fieldbyname('tmh').asstring;
            qyydhszdy;
          finally
            frm_print_sybq.Free;
          end;

        end
        else if sfqyydhsz = true then
        begin
          try
            frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
            frm_print_sybq.QRLabel1.Caption := sp_dryz.fieldbyname('brxm').asstring;
            if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
            begin
              frm_print_sybq.QRLabel2.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
            end
            else
            begin
              frm_print_sybq.QRLabel2.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床'
            end;
            frm_print_sybq.brnl.Caption := '年龄：' + sp_sybr.fieldbyname('brnl').asstring;
            frm_print_sybq.QRLabel8.Caption := '条码号：' + sp_dryz.fieldbyname('tmh').asstring;
            qyydhszdy;
          finally
            frm_print_sybq.Free;
          end;
        end
        else
        begin
          if pub_yydm = '0015' then
          begin
            try
              frm_print_sybq.QRLabel11.Caption := sp_dryz.fieldbyname('brxm').asstring;
              frm_print_sybq.QRLabel12.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床';
              frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname('brnl').asstring;
              qyydhszdy_xz;
            finally
              frm_print_sybq.Free;
            end;
          end
          else if (pub_yydm = '0204') or (pub_yydm = '0246') then
          begin
            try
              frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
              frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname('brnl').asstring;
              frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname('brxm').asstring;
              frm_print_sybq.brxm1_1.Caption := sp_dryz.fieldbyname('brxm').asstring;
              if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
              begin
                frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
                frm_print_sybq.bch1_1.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床(★)';
              end
              else
              begin
                frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring);
                frm_print_sybq.bch1_1.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床'
              end;
              //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
              //frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
              if v_IsPrinterJoin = True then
                if frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
              if pub_yydm = '0246' then
              begin
                frm_print_sybq.QuickRep6.Page.Length := 31;
                frm_print_sybq.QuickRep6.Page.Width := 52;
                //frm_print_sybq.QRBand7.Enabled := True;

                frm_print_sybq.qr_bqmc.Top := frm_print_sybq.QuickRep6.Height -
                 frm_print_sybq.QRBand6.Height - frm_print_sybq.qr_bqmc.Height;
                frm_print_sybq.qr_bqmc.Caption := pub_bqmc;
              end;
              frm_print_sybq.QuickRep6.print;
            finally
              frm_print_sybq.Free;
            end;
          end


          else
          begin
            try
              frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
              frm_print_sybq.brnl1.Caption := sp_sybr.fieldbyname('brnl').asstring;
              frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname('brxm').asstring;
              frm_print_sybq.brxm1.Caption := sp_dryz.fieldbyname('brxm').asstring;
              if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
              begin
                frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
                frm_print_sybq.bch1.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床(★)';
              end
              else
              begin
                frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring);
                frm_print_sybq.bch1.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床'
              end;
              //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
              //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
              if v_IsPrinterJoin = True then
                if frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
              if pub_yydm = '0229' then
              begin
                frm_print_sybq.QuickRep3.Page.Length := 32.5;
                frm_print_sybq.QuickRep3.Margins.Bottom := 3;
              end;
              if pub_yydm = '0012' then //三台中医院姓名有5个字要打全
              begin
                frm_print_sybq.bch1.Left := 1;
                frm_print_sybq.bch1.Width := 35; //frm_print_sybq.bch1.Width -14;
                frm_print_sybq.brxm1.Left := 36; //frm_print_sybq.brxm1.Left -14;
                frm_print_sybq.brxm1.Width := 72; //frm_print_sybq.brxm1.width + 14;
                frm_print_sybq.brnl1.Font.Size := 7;
                frm_print_sybq.brnl1.Left := 113; //frm_print_sybq.brnl1.Left+2;
              end;

              frm_print_sybq.QuickRep3.print;
            finally
              frm_print_sybq.Free;
            end;
          end;

        end;
      end
      else
      begin
        try
          frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);

          frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname('brxm').asstring;
          frm_print_sybq.brxm_1.Caption := sp_dryz.fieldbyname('brxm').asstring;
          if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
          begin
            frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
            frm_print_sybq.bch_1.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
          end
          else
          begin
            frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring);
            frm_print_sybq.bch_1.Caption := trim(sp_dryz.fieldbyname('bch').asstring);
          end;
          //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
          //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
          //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
          if v_IsPrinterJoin = True then
            if frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;
          frm_print_sybq.QuickRep2.print;
        finally
          frm_print_sybq.Free;
        end;
      end;
    end
    else
      frm_print_sybq.Free;
  end;
  //RevertPrinter;
end;

procedure Tfrm_syddy_xn.BitBtn3Click(Sender: TObject);
begin
  self.close;
end;

procedure Tfrm_syddy_xn.BitBtn8Click(Sender: TObject);
var
  yzid, fzbh: string;
  i, sl: Integer;
begin
  if (sp_sybr.IsEmpty) and (sp_dryz.IsEmpty) then
  begin
    ShowMessage('没有选择要打印的病人信息！');
    Exit;
  end;


  ChangePrinter;
  yzid := Trim(sp_dryz.fieldbyname('yzid').asstring);
  fzbh := get_sjh(pub_czydm);
  if Trim(sp_dryz.fieldbyname('fzph').asstring) = '' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' + ' where ' +
      'zyh=' + '''' + sp_dryz.fieldbyname('zyh').asstring + '''' +
      ' and id=' + yzid;
    DM_data.qry_pub.ExecSQL;
  end;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value := pub_bqdm;
  if True then

    sp_dryz.Parameters.ParamByName('@zyh').value := prv_zyh;
  sp_dryz.Parameters.ParamByName('@bz').value := '全部';
  sp_dryz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
  sp_dryz.Open;
  sp_dryz.Locate('yzid', yzid, []);
  if not sp_dryz.isempty then
  begin
    application.CreateForm(Tfrm_print_sybq, frm_print_sybq);

    frm_print_sybq.dyrq.caption := '日期：' + formatdatetime('yyyy-mm-dd', dt_zxsj.date);
    frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime('yyyymmdd', dt_zxsj.date);
    frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime('yyyy-mm-dd', dt_zxsj.date);
    //formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
    frm_print_sybq.sp_syfz.close;
    frm_print_sybq.sp_syfz.Parameters.ParamByName('@zyh').value := sp_dryz.fieldbyname('zyh').asstring;
    frm_print_sybq.sp_syfz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dt_zxsj.date);
    if Trim(sp_dryz.fieldbyname('fzph').asstring) = '' then
    begin
      frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value := sp_dryz.fieldbyname('yzid').asstring;
    end
    else
      frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value := sp_dryz.fieldbyname('fzph').asstring;
    frm_print_sybq.sp_syfz.Parameters.ParamByName('@dyfs').value := 2;
    frm_print_sybq.sp_syfz.open;
    if not frm_print_sybq.sp_syfz.IsEmpty then
    begin
      if (pub_yydm <> '0051') then
      begin
        if pub_yydm = '0003' then
        begin

//          DM_data.qry_pub.close;
//          DM_data.qry_pub.SQL.Text:='select * from sys_ypyf where rtrim(mc)='+''''+
//          trim(frm_print_sybq.sp_syfz.FieldByName('ypyf').asstring)+'''';
//          DM_data.qry_pub.Open;
//          if DM_data.qry_pub.IsEmpty then
//          begin
//            sl:=1;
//          end
//          else
//          begin
//            sl:=DM_data.qry_pub.FieldByName('sl').AsInteger;
//          end;
//          for i := 0 to sl-1 do
//          begin
//            ChangePrinter_sybq;
//            frm_zysf_print_service.Printsyd( sp_sybr,frm_print_sybq.sp_syfz,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//          end;
          try
            frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
            frm_print_sybq.QRLabel1.Caption := sp_dryz.fieldbyname('brxm').asstring;
            if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
            begin
              frm_print_sybq.QRLabel2.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
            end
            else
            begin
              frm_print_sybq.QRLabel2.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床'
            end;
            frm_print_sybq.brnl.Caption := '年龄：' + sp_sybr.fieldbyname('brnl').asstring;
            frm_print_sybq.QRLabel8.Caption := '条码号：' + sp_dryz.fieldbyname('tmh').asstring;
            qyydhszdy;
          finally
            frm_print_sybq.Free;
          end;

        end
        else if sfqyydhsz = true then
        begin
          try
            frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
            frm_print_sybq.QRLabel1.Caption := sp_dryz.fieldbyname('brxm').asstring;
            if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
            begin
              frm_print_sybq.QRLabel2.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
            end
            else
            begin
              frm_print_sybq.QRLabel2.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床'
            end;
            frm_print_sybq.brnl.Caption := '年龄：' + sp_sybr.fieldbyname('brnl').asstring;
            frm_print_sybq.QRLabel8.Caption := '条码号：' + sp_dryz.fieldbyname('tmh').asstring;
            qyydhszdy;
          finally
            frm_print_sybq.Free;
          end;
        end
        else
        begin
          if pub_yydm = '0015' then
          begin
            try
              frm_print_sybq.QRLabel11.Caption := sp_dryz.fieldbyname('brxm').asstring;
              frm_print_sybq.QRLabel12.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床';
              frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname('brnl').asstring;
              qyydhszdy_xz;
            finally
              frm_print_sybq.Free;
            end;
          end
          else if (pub_yydm = '0204') or (pub_yydm = '0246') then
          begin
            try
              frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
              frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname('brnl').asstring;
              frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname('brxm').asstring;
              frm_print_sybq.brxm1_1.Caption := sp_dryz.fieldbyname('brxm').asstring;
              if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
              begin
                frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
                frm_print_sybq.bch1_1.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床(★)';
              end
              else
              begin
                frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring);
                frm_print_sybq.bch1_1.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床';
              end;
              //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
              //frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
    //          if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //          begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //          end;
              if v_IsPrinterJoin = True then
                if frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
              if pub_yydm = '0246' then
              begin
                frm_print_sybq.QuickRep6.Page.Length := 31;
                frm_print_sybq.QuickRep6.Page.Width := 52;
                frm_print_sybq.qr_bqmc.Top := frm_print_sybq.QuickRep6.Height -
                 frm_print_sybq.QRBand6.Height - frm_print_sybq.qr_bqmc.Height;
                frm_print_sybq.qr_bqmc.Caption := pub_bqmc;
              end;
              frm_print_sybq.QuickRep6.print;
    //          if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> frm_print_sybq.QuickRep3.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
    //          begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
    //          end;
            finally
              frm_print_sybq.Free;
            end;
          end
          else
          begin
            try
              frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
              frm_print_sybq.brnl1.Caption := sp_sybr.fieldbyname('brnl').asstring;
              frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname('brxm').asstring;
              frm_print_sybq.brxm1.Caption := sp_dryz.fieldbyname('brxm').asstring;
              if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
              begin
                frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
                frm_print_sybq.bch1.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床(★)';
              end
              else
              begin
                frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring);
                frm_print_sybq.bch1.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '床';
              end;
              //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
              //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
    //          if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //          begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //          end;
              if v_IsPrinterJoin = True then
                if frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
              if pub_yydm = '0229' then
              begin
                frm_print_sybq.QuickRep3.Page.Length := 32.5;
                frm_print_sybq.QuickRep3.Margins.Bottom := 3;
              end;
              frm_print_sybq.QuickRep3.print;
    //          if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> frm_print_sybq.QuickRep3.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
    //          begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
    //          end;
            finally
              frm_print_sybq.Free;
            end;
          end;
        end
      end
      else
      begin
        try
          frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);

          frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname('brxm').asstring;
          frm_print_sybq.brxm_1.Caption := sp_dryz.fieldbyname('brxm').asstring;
          if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
          begin
            frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
            frm_print_sybq.bch_1.Caption := trim(sp_dryz.fieldbyname('bch').asstring) + '(★)';
          end
          else
          begin
            frm_print_sybq.bch.Caption := trim(sp_dryz.fieldbyname('bch').asstring);
            frm_print_sybq.bch_1.Caption := trim(sp_dryz.fieldbyname('bch').asstring);
          end;
          //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
          //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
          //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
//            end;
          if v_IsPrinterJoin = True then
            if frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;
          frm_print_sybq.QuickRep2.print;
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> frm_print_sybq.QuickRep2.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
//            end;
        finally
          frm_print_sybq.Free;
        end;
      end;
    end
    else
      frm_print_sybq.Free;
  end;
  //RevertPrinter;
end;

procedure Tfrm_syddy_xn.BitBtn9Click(Sender: TObject);
var
  fzbh, yzid: string;
  i, sl: Integer;
begin
  ChangePrinter;
  if not sp_dryz.isempty then
  begin
    application.CreateForm(Tfrm_print_sybq, frm_print_sybq);
    try
      sp_sybr.DisableControls;
      if not qb.checked then
      begin
        sp_sybr.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname('zyh').asstring + #39;
        sp_sybr.filtered := true;
        sp_dryz.Filtered := false;
        sp_dryz.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname('zyh').asstring + #39;
        sp_dryz.filtered := true;
      end
      else
      begin
        sp_sybr.Filtered := false;
        sp_sybr.First;
        sp_dryz.Filtered := false;
        sp_dryz.First;
      end;
      sp_sybr.First;
      while not sp_dryz.eof do
      begin
        fzbh := get_sjh(pub_czydm);
        yzid := Trim(sp_dryz.fieldbyname('yzid').asstring);
        if Trim(sp_dryz.fieldbyname('fzph').asstring) = '' then
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' + ' where ' +
            'zyh=' + '''' + sp_dryz.fieldbyname('zyh').asstring + '''' +
            ' and id=' + yzid;
          DM_data.qry_pub.ExecSQL;
        end;
        sp_dryz.Next;
      end;

      while not sp_sybr.eof do
      begin
        frm_print_sybq.dyrq.caption := '日期：' + formatdatetime('yyyy-mm-dd hh:mm:ss', frm_func.curr_date);
        frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime('yyyymmdd', dt_zxsj.date);
        frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime('yyyy-mm-dd', dt_zxsj.date);
        frm_print_sybq.sp_syfz.close;
        frm_print_sybq.sp_syfz.Parameters.ParamByName('@zyh').value := sp_sybr.fieldbyname('zyh').asstring;
        frm_print_sybq.sp_syfz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dt_zxsj.date);
        frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value := '';
        frm_print_sybq.sp_syfz.Parameters.ParamByName('@dyfs').value := 2;
        frm_print_sybq.sp_syfz.open;
        if not frm_print_sybq.sp_syfz.IsEmpty then
        begin
          if (pub_yydm <> '0051') then
          begin
            if pub_yydm = '0003' then
            begin
//              frm_print_sybq.sp_syfz.First;
//              while not frm_print_sybq.sp_syfz.Eof do
//              begin
//                DM_data.qry_pub.close;
//                DM_data.qry_pub.SQL.Text:='select * from sys_ypyf where rtrim(mc)='+''''+
//                trim(frm_print_sybq.sp_syfz.FieldByName('ypyf').asstring)+'''';
//                DM_data.qry_pub.Open;
//                if DM_data.qry_pub.IsEmpty then
//                begin
//                  sl:=1;
//                end
//                else
//                begin
//                  sl:=DM_data.qry_pub.FieldByName('sl').AsInteger;
//                end;
//                for i := 0 to sl-1 do
//                begin
//                  ChangePrinter_sybq;
//                  frm_zysf_print_service.Printsyd( sp_sybr,frm_print_sybq.sp_syfz,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//                end;
//
//                frm_print_sybq.sp_syfz.Next;
//              end;
              frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
              frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname('brxm').asstring;
              if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
              begin
                frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '(★)';
              end
              else
              begin
                frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '床'
              end;
              frm_print_sybq.brnl.Caption := '年龄：' + sp_sybr.fieldbyname('brnl').asstring;
              frm_print_sybq.QRLabel8.Caption := '条码号：' + sp_sybr.fieldbyname('tmh').asstring;
              qyydhszdy;
            end
            else if sfqyydhsz = true then
            begin
              frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
              frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname('brxm').asstring;
              if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
              begin
                frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '(★)';
              end
              else
              begin
                frm_print_sybq.QRLabel2.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '床'
              end;
              frm_print_sybq.brnl.Caption := '年龄：' + sp_sybr.fieldbyname('brnl').asstring;
              frm_print_sybq.QRLabel8.Caption := '条码号：' + sp_sybr.fieldbyname('tmh').asstring;
              qyydhszdy;
            end
            else
            begin
              if pub_yydm = '0015' then
              begin
                frm_print_sybq.QRLabel11.Caption := sp_sybr.fieldbyname('brxm').asstring;
                frm_print_sybq.QRLabel12.Caption := trim(sp_sybr.fieldbyname('bch').asstring) + '床';
                frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname('brnl').asstring;
                qyydhszdy_xz;
              end
              else if (pub_yydm = '0204') or (pub_yydm = '0246') then

              begin
                frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
                frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname('brnl').asstring;
                frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname('brxm').asstring;
                frm_print_sybq.brxm1_1.Caption := sp_sybr.fieldbyname('brxm').asstring;
                if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
                  frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname('bch').asstring) + '床(★)';
                end
                else
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring;
                  frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname('bch').asstring) + '床';
                end;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                //frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
    //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                if v_IsPrinterJoin = True then
                  if frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                  begin
                    frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                  end;
                if pub_yydm = '0246' then
                begin
                  frm_print_sybq.QuickRep6.Page.Length := 31;
                  frm_print_sybq.QuickRep6.Page.Width := 52;
                frm_print_sybq.qr_bqmc.Top := frm_print_sybq.QuickRep6.Height -
                 frm_print_sybq.QRBand6.Height - frm_print_sybq.qr_bqmc.Height;
                  frm_print_sybq.qr_bqmc.Caption := pub_bqmc;
                end;
                frm_print_sybq.QuickRep6.print;
              end
              else
              begin
                frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
                frm_print_sybq.brnl1.Caption := sp_sybr.fieldbyname('brnl').asstring;
                frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname('brxm').asstring;
                frm_print_sybq.brxm1.Caption := sp_sybr.fieldbyname('brxm').asstring;
                if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
                  frm_print_sybq.bch1.Caption := sp_sybr.fieldbyname('bch').asstring + '床(★)';
                end
                else
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring;
                  frm_print_sybq.bch1.Caption := sp_sybr.fieldbyname('bch').asstring + '床';
                end;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
    //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                if v_IsPrinterJoin = True then
                  if frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                  begin
                    frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                  end;
                if pub_yydm = '0229' then
                begin
                  frm_print_sybq.QuickRep3.Page.Length := 32.5;
                  frm_print_sybq.QuickRep3.Margins.Bottom := 3;
                end;
                frm_print_sybq.QuickRep3.print;
              end;



            end
          end
          else
          begin
            frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime('MM-dd', dt_zxsj.date);
            frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname('brxm').asstring;
            frm_print_sybq.brxm_1.Caption := sp_sybr.fieldbyname('brxm').asstring;
            if formatdatetime('yyyymmdd', frm_func.curr_date) > formatdatetime('yyyymmdd', dt_zxsj.date) then
            begin
              frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
              frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname('bch').asstring + '(★)';
            end
            else
            begin
              frm_print_sybq.bch.Caption := sp_sybr.fieldbyname('bch').asstring;
              frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname('bch').asstring;
            end;
            //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
            //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
            //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
//            end;
            if v_IsPrinterJoin = True then
              if frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
              begin
                frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
            frm_print_sybq.QuickRep2.print;
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> frm_print_sybq.QuickRep2.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
//            end;
          end;
        end;
        sp_sybr.Next;
      end;
    finally
      frm_print_sybq.Free;
      sp_sybr.EnableControls;
      sp_sybr.Filtered := false;
    end;
  end;
  //RevertPrinter;
end;

procedure Tfrm_syddy_xn.dyjhd(_type:string);
var
  ids:string;
begin
  ids := '';
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.eof do
  begin
    if (_type='全部') or sp_dryz.FieldByName('xzbz').AsBoolean then
      ids := ids + sp_dryz.FieldByName('yzid').AsString + ',';
    sp_dryz.Next;
  end;
  sp_dryz.EnableControls;
  if ids = '' then
  begin
    Application.MessageBox('你未选择打印内容！', '警告', MB_OK +
      MB_ICONWARNING);
    Exit;
  end;

  sp_syjhzxd.Filtered := False;
  sp_syjhzxd.Close;
  sp_syjhzxd.ProcedureName := 'zybl_cx_yzzxjl_print_dddy_zdybb';
  sp_syjhzxd.Parameters.Refresh;
  sp_syjhzxd.Parameters.ParamByName('@zyh').Value := ComboBox1.ItemIndex + 1;
  sp_syjhzxd.Parameters.ParamByName('@rq').Value := FormatDateTime('yyyyMMdd', dt_zxsj.DateTime);
  sp_syjhzxd.Parameters.ParamByName('@fzph_zh').Value := ids;
  sp_syjhzxd.Open;

  if not sp_syjhzxd.IsEmpty then
  begin
    ChangePrinter_syjhd;
    frm_zysf_print_service.Printsyjhd2(sp_syjhzxd, FormatDateTime('yyyy-MM-dd', dt_zxsj.DateTime));
  end;
end;

procedure Tfrm_syddy_xn.Button11Click(Sender: TObject);
var
  ids:string;
begin
  if Application.MessageBox(pchar('你将打印右边勾选的液体分组，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
    Exit;
  end;
  
  dyjhd('选择');
end;

procedure Tfrm_syddy_xn.Button8Click(Sender: TObject);
var
  ids: string;
begin
  if Application.MessageBox(pchar('你将打印以下列表的全部输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
    Exit;
  end;

  dyjhd('全部');
end;

procedure Tfrm_syddy_xn.qyydhszdy;
begin
  frm_print_sybq.QRLabel10.Caption := '科室：' + pub_bqmc;
    //frm_print_sybq.QRLabel5.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
  if v_IsPrinterJoin then
  begin
    if frm_print_sybq.QuickRep4.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
    begin
      frm_print_sybq.QuickRep4.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
    end;
  end;
  frm_print_sybq.QuickRep4.print;

end;

procedure Tfrm_syddy_xn.qyydhszdy_xz;
begin
  frm_print_sybq.QRImage3.Top := 3;
  frm_print_sybq.QRImage3.Left := 8;
  frm_print_sybq.QRImage3.width := 138;
  frm_print_sybq.QRImage3.Height := 24;
//      frm_print_sybq.brcd1.BarCode := frm_print_sybq.sp_syfz.FieldByName( 'fzph' ).AsString;
//      frm_print_sybq.brcd1.Height := frm_print_sybq.QRImage3.Height;
//      frm_print_sybq.brcd1.textshow := tsNone;
//      frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage3.Canvas,4,0,frm_print_sybq.QRImage3.Height,0);
  frm_print_sybq.QRLabel14.caption := '日期:' + formatdatetime('MM-dd', dt_zxsj.date);
      //frm_print_sybq.QRLabel15.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
  if v_IsPrinterJoin then
  begin
    if frm_print_sybq.QuickRep5.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
    begin
      frm_print_sybq.QuickRep5.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
    end;
  end;
  frm_print_sybq.QuickRep5.print;
end;



procedure Tfrm_syddy_xn.createrect(var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer);
var
  yzph: string;
  i, n: integer;
begin
  dataset_rect.DisableControls;
  rectno := 0;
  dataset_rect.first;
  initarray(myrect1);
  i := 1;
  while not dataset_rect.Eof do
  begin
    if dataset_rect.FieldByName('fzph').AsString <> '' then
    begin
      if (yzph <> '') and (myrect1[rectno].sl = 1) and (yzph <> dataset_rect.FieldByName('fzph').AsString) then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
        //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph := '';
      end;
      if yzph = dataset_rect.FieldByName('fzph').AsString then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i).bottom;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect(1, i).bottom;
        myrect1[rectno].sl := myrect1[rectno].sl + 1;

      end
      else
      begin
        rectno := rectno + 1;
        myrect1[rectno].sl := 1;
        myrect1[rectno].ph := dataset_rect.FieldByName('fzph').AsString;

        myrect1[rectno].left := grid_yzlr1.CellRect(x1, i).left;
        myrect1[rectno].right := grid_yzlr1.CellRect(x2, i).right;
        myrect1[rectno].top := grid_yzlr1.CellRect(x1, i).top;

        myrect1[rectno].Gleft := grid_yzlr1.CellRect(4, i).left;
        myrect1[rectno].Gright := grid_yzlr1.CellRect(x3, i).right;
        if grid_yzlr1.CellRect(x3, i).right = 0 then
          for n := 0 to x3 - 1 do
            myrect1[rectno].Gright := myrect1[rectno].Gright + grid_yzlr1.Columns[n].Width;
        myrect1[rectno].Gtop := grid_yzlr1.CellRect(1, i).top;
        myrect1[rectno].yf := dataset_rect.FieldByName('ypyf').AsString;
        myrect1[rectno].tj := dataset_rect.FieldByName('yytj').AsString;
        myrect1[rectno].height := grid_yzlr1.CellRect(x1, i).bottom - grid_yzlr1.CellRect(x1, i).top;
        yzph := dataset_rect.FieldByName('fzph').AsString;
      end;
    end
    else
    begin
      if (yzph <> '') and (myrect1[rectno].sl = 1) then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
        ;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
        //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph := '';
      end;
      if (yzph <> '') and (myrect1[rectno].sl > 1) then
        yzph := '';

    end;
    dataset_rect.Next;
    i := dataset_rect.RecNo;
  end;
  if yzph <> '' then
  begin
    myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i).bottom;
    ;
    myrect1[rectno].Gbottom := grid_yzlr1.CellRect(x1, i).bottom;
    //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
    yzph := '';
  end;
  dataset_rect.EnableControls;
end;


function Tfrm_syddy_xn.dofilterDBGridEh2(DataSet:TDataSet):Boolean;
var
  Tmpstr:string;
  Accept :Boolean;
  Tmpzyh:string;
begin
  DataSet.DisableControls;
  DataSet.Filtered := False;
  DataSet.First;
  while not DataSet.Eof do
  begin
    Accept := True;
    if Length(zyh_zfc)<>0 then
    begin
      if Pos(DataSet.FieldByName('zyh').AsString, zyh_zfc)=0 then
      begin
        Accept := False;
      end;
    end;
    
    if Accept //and (ComboBox1.ItemIndex>0)
    then
    begin
      Tmpstr := ComboBox1.Items[ComboBox1.ItemIndex];
      if Pos(Trim(DataSet.FieldByName('yytj').AsString),Tmpstr)>0 then
      begin
        Accept := True;
      end else begin
        Accept := False;
      end;
    end;
    if Accept and (ComboBox2.ItemIndex>0) then
    begin
      Tmpstr := ComboBox2.Items[ComboBox2.ItemIndex];     //长期临时
      if Trim(DataSet.FieldByName('yzsx').AsString)=Tmpstr then
      begin
        Accept := True;
      end else begin
        Accept := False;
      end;
    end;
    if Accept and (ComboBox3.ItemIndex>0) then
    begin
      Tmpstr := ComboBox3.Items[ComboBox3.ItemIndex];     //打印未打印
      if (Trim(DataSet.FieldByName('syjhddy').AsString)=Tmpstr) or
         (Trim(DataSet.FieldByName('syjhbqdy').AsString)=Tmpstr) then
      begin
        Accept := True;
      end else begin
        Accept := False;
      end;
    end;

    DataSet.Edit;
    if Accept then
    begin
      DataSet.FieldByName('filter').Value := 1;
    end else begin
      DataSet.FieldByName('filter').Value := 0;
    end;
    DataSet.Post;
    DataSet.Next;
  end;
  DataSet.First;
  DataSet.EnableControls;

  DataSet.Filter := 'filter=1';
  DataSet.Filtered := True;
  Result := Accept;
  createrect(myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13);
end;

procedure Tfrm_syddy_xn.DBGridEh1CellClick(Column: TColumnEh);
var
  zyh,tmh: string;
  achar: Char;
begin
  if (DBGridEh1.SelectedIndex <> 0) then
  begin
    Exit;
  end;
  if rzpgcntrl.ActivePageIndex = 0 then //输液项目
  begin
    if (sp_sybr.fieldbyname('xzbz').asboolean = false) and (DBGridEh1.SelectedIndex = 0) then
    begin
      zyh_zfc := zyh_zfc +','+ sp_sybr.fieldbyname('zyh').asstring;
    end
    else
    if (sp_sybr.fieldbyname('xzbz').asboolean = true) and (DBGridEh1.SelectedIndex = 0) then
    begin
      zyh_zfc := StringReplace(zyh_zfc, ',' + sp_sybr.fieldbyname('zyh').asstring, '', [rfReplaceAll]);
    end;
    dofilterDBGridEh2(sp_dryz)
  end;
end;

procedure Tfrm_syddy_xn.DBGridEh1DblClick(Sender: TObject);
var
  achar: Char;
begin
  if rzpgcntrl.ActivePageIndex = 1 then //检验项目
  begin
    tmh := sp_sybr.FieldByName('tmh').AsString;
    frm_jydtmdy.e_tmh.Text := Trim(tmh);
    achar := 'a';
    frm_jydtmdy.e_tmhKeyPress(Self,achar);
    frm_jydtmdy.b_cx.Click;
  end;
end;

procedure Tfrm_syddy_xn.DBGridEh2ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz.Active then
  begin
    if sp_dryz.RecordCount < 300 then
    begin
      createrect(myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13);
    end;
  end;

end;

procedure Tfrm_syddy_xn.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin
  if trim(sP_dryz.fieldbyname('yzsx').asstring) = '临时' then
  begin
    dbgrideh2.Canvas.Brush.Color := clwhite;
    dbgrideh2.Canvas.Font.Color := clGreen;
  end;

  if trim(sp_dryz.fieldbyname('fzph').asstring) <> '' then
  begin
    dbgrideh2.canvas.brush.color := $00E2BC6D;
    i := findinarray(myrect_cx, sp_dryz.fieldbyname('fzph').asstring);
    dbgrideh2.Canvas.pen.color := $00E2BC6D;
    dbgrideh2.Canvas.MoveTo(myrect_cx[i].left + 20, myrect_cx[i].top);
    dbgrideh2.Canvas.LineTo(myrect_cx[i].left, myrect_cx[i].Bottom);
    dbgrideh2.canvas.Rectangle(myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom);
    dbgrideh2.Canvas.pen.color := clred;
    dbgrideh2.Canvas.MoveTo(myrect_cx[i].left + 20, myrect_cx[i].top);
    dbgrideh2.Canvas.LineTo(myrect_cx[i].left, myrect_cx[i].Bottom);
    with dbgrideh2.Canvas do
    begin
      moveto(myrect_cx[I].gleft, myrect_cx[i].Gtop);
      lineto(myrect_cx[I].gright, myrect_cx[I].gtop);
      lineto(myrect_cx[I].gright, myrect_cx[I].gbottom);
      lineto(myrect_cx[I].gleft, myrect_cx[I].gbottom);
      lineto(myrect_cx[I].gleft, myrect_cx[i].Gtop);
    end;
    myrect1.Left := myrect_cx[i].left;
    myrect1.top := myrect_cx[i].top;
    myrect1.right := myrect_cx[i].right;
    myrect1.bottom := myrect_cx[i].bottom;
    dbgrideh2.Canvas.TextOut(myrect_cx[i].left + 20,
      myrect_cx[i].top + round(myrect_cx[i].height * ((myrect_cx[i].sl - 0.5) / 2)), myrect_cx[i].tj + #13 + myrect_cx[i].yf);
  end;
  (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_syddy_xn.dt_zxsjChange(Sender: TObject);
begin
  if qhbz = '2' then
  begin
    sp_dryz.close;
    sp_dryz.Parameters.ParamByName('@bqdm').value := pub_bqdm;
    sp_dryz.Parameters.ParamByName('@zyh').value := '';
    sp_dryz.Parameters.ParamByName('@bz').value := '全部';
    sp_dryz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
    sp_dryz.Open;

    sp_sybr.close;
    sp_sybr.Parameters.ParamByName('@bqdm').value := pub_bqdm;
    sp_sybr.Parameters.ParamByName('@zyh').value := '';
    sp_sybr.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
    sp_sybr.Open;
  end;
  zyh_zfc := '';
  dofilterDBGridEh2(sp_dryz);
end;

procedure Tfrm_syddy_xn.FormCreate(Sender: TObject);
begin
  QuickRep1.Visible := False;
end;

procedure Tfrm_syddy_xn.FormResize(Sender: TObject);
begin
  x := self.Width;
end;

procedure Tfrm_syddy_xn.FormShow(Sender: TObject);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  sfqyydhsz := DM_data.qry_pub.FieldByName('sfqyydhsz').AsBoolean;
  if (pub_yydm = '0003') or (pub_yydm = '0013') then
  begin
    Button8.Visible := false;
    Button11.Visible := false;
    DBGridEh2.Columns[25].Visible := false;
    DBGridEh2.Columns[24].Visible := false;
  end;
  qhbz := '1';
  zyh_zfc := '';

  {  qry_ypyf.Open;
    while not qry_ypyf.Eof do
    begin
    sxtj.Items.Add(trim(qry_ypyf.FieldByName('mc').AsString));
    qry_ypyf.Next;
    end;}
  //  cxgrid1dbtableview1.DataController.Groups.FullExpand;
  dbgrideh2.Left := 1;
  dbgrideh2.Top := 1;
  dt_zxsj.DateTime := frm_func.curr_date;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value := dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime := sp_yzsj.Parameters.ParamByName('@scyzsj').Value;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value := pub_bqdm;
  sp_dryz.Parameters.ParamByName('@zyh').value := prv_zyh;
  sp_dryz.Parameters.ParamByName('@bz').value := '全部';
  sp_dryz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
  try
    sp_dryz.Open;
  except
  end;

  dbgrideh2.Columns[0].Visible := true;
  dbgrideh2.Columns[1].Visible := true;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName('@bqdm').value := pub_bqdm;
  sp_sybr.Parameters.ParamByName('@zyh').value := prv_zyh;
  sp_sybr.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
  sp_sybr.Open;
  qhbz := '2';
  qb.Checked := (prv_zyh = '');

  //if pub_yydm = '0241' then //鹤岗
  begin
    try
      Application.CreateForm(Tfrm_jydtmdy, frm_jydtmdy);
      frm_jydtmdy.Parent := rztbshtInspection;
      frm_jydtmdy.Top := 0;
      frm_jydtmdy.Left := 0;
      frm_jydtmdy.Visible:=true;
      frm_jydtmdy.BorderStyle := bsNone;
      frm_jydtmdy.Width := DBGridEh2.Width;
      frm_jydtmdy.Height := DBGridEh2.Height;
      frm_jydtmdy.bb_exit.Visible := False;
    finally
    end;
  end;

  ADOQuery1.close;
  ADOQuery1.sql.text := 'select 1 from sysobjects where xtype=''u'' and name=''zybl_zyyz_zxddyfl'' ';
  ADOQuery1.open;
  if not ADOQuery1.IsEmpty then
  begin
    ADOQuery1.close;
    ADOQuery1.sql.text := 'select * from zybl_zyyz_zxddyfl';
    ADOQuery1.open;

    ComboBox1.Items.Clear;
    ADOQuery1.First;
    while not ADOQuery1.eof do
    begin
      ComboBox1.Items.Add(Trim(ADOQuery1.FieldByName('lbmc').AsString));
      ADOQuery1.Next;
    end;
    ADOQuery1.Close;
    ComboBox1.ItemIndex := 0;
  end;
  dofilterDBGridEh2(sp_dryz);
end;

procedure Tfrm_syddy_xn.qbClick(Sender: TObject);
begin
  prv_zyh := '';
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value := pub_bqdm;
  sp_dryz.Parameters.ParamByName('@zyh').value := '';
  sp_dryz.Parameters.ParamByName('@bz').value := '全部';
  sp_dryz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
  sp_dryz.Open;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName('@bqdm').value := pub_bqdm;
  sp_sybr.Parameters.ParamByName('@zyh').value := '';
  sp_sybr.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
  sp_sybr.Open;

  sp_sybr.DisableControls;
  sp_sybr.First;
  while not sp_sybr.eof do
  begin
    sp_sybr.Edit;
    sp_sybr.FieldByName('xzbz').AsBoolean := qb.Checked;
    sp_sybr.Post;
    sp_sybr.Next;
  end;
  sp_sybr.EnableControls;
  Exit;
  if prv_zyh = '' then
  begin
    if qb.checked then
    begin
      sp_dryz.Filtered := false;
      zyh_zfc := '';
      if sp_dryz.Active then
        createrect(myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13);
    end
    else
    begin
      zyh_zfc := '';
      sp_dryz.Filtered := false;
      sp_dryz.Filter := 'bch=' + #39 + sp_sybr.fieldbyname('bch').asstring + #39;
      sp_dryz.Filtered := true;
      if sp_dryz.Active then
        createrect(myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13);
    end;
  end
  else
  begin
    zyh_zfc := '';
    if qb.checked then
    begin
      sp_dryz.close;
      sp_dryz.Parameters.ParamByName('@bqdm').value := pub_bqdm;
      sp_dryz.Parameters.ParamByName('@zyh').value := '';
      sp_dryz.Parameters.ParamByName('@bz').value := '全部';
      sp_dryz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
      sp_dryz.Open;

      sp_sybr.close;
      sp_sybr.Parameters.ParamByName('@bqdm').value := pub_bqdm;
      sp_sybr.Parameters.ParamByName('@zyh').value := '';
      sp_sybr.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
      sp_sybr.Open;
      sp_dryz.Filtered := false;
      if sp_dryz.Active then
        createrect(myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13);
    end
    else
    begin
      sp_dryz.close;
      sp_dryz.Parameters.ParamByName('@bqdm').value := pub_bqdm;
      sp_dryz.Parameters.ParamByName('@zyh').value := prv_zyh;
      sp_dryz.Parameters.ParamByName('@bz').value := '全部';
      sp_dryz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
      sp_dryz.Open;

      sp_sybr.close;
      sp_sybr.Parameters.ParamByName('@bqdm').value := pub_bqdm;
      sp_sybr.Parameters.ParamByName('@zyh').value := prv_zyh;
      sp_sybr.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd', dT_zxsj.Date);
      sp_sybr.Open;
      if sp_dryz.Active then
        createrect(myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13);
    end;
  end;
  if qb.checked then
  begin
    zyh_zfc := '';
    sp_sybr.DisableControls;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      sp_sybr.Edit;
      sp_sybr.FieldByName('xzbz').AsBoolean := true;
      sp_sybr.Post;
      sp_sybr.Next;
    end;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      zyh_zfc := zyh_zfc + ' or ' + '(zyh =' + '''' + sp_sybr.fieldbyname('zyh').asstring + '''' + ')';
      sp_sybr.Next;
    end;
    sp_sybr.First;
    sp_sybr.EnableControls;
  end
  else
  begin
    sp_sybr.DisableControls;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      sp_sybr.Edit;
      sp_sybr.FieldByName('xzbz').AsBoolean := false;
      sp_sybr.Post;
      sp_sybr.Next;
    end;
    sp_sybr.First;
    zyh_zfc := '';
    if prv_zyh = '' then
    begin
      sp_dryz.Filtered := false;
      sp_dryz.Filter := 'zyh=''123123123123''';
      sp_dryz.Filtered := true;
    end;
    sp_sybr.EnableControls;
  end;
end;

procedure Tfrm_syddy_xn.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'yytj=''静滴''';
  sp_zxjl_cq_dy.Filtered := true;
  sp_zxjl_cq_dy.first;
end;

procedure Tfrm_syddy_xn.SpeedButton1Click(Sender: TObject);
begin
  OnShow(sender);
end;

procedure Tfrm_syddy_xn.sp_dryzAfterOpen(DataSet: TDataSet);
begin
  sp_dryz.Filtered := false;
  if sp_dryz.RecordCount * 30 > screen.Height - 70 then
    dbgrideh2.Height := sp_dryz.RecordCount * 30
  else
    dbgrideh2.Height := screen.Height - 70;
  if sp_dryz.RecordCount < 300 then
    createrect(myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13);
end;

procedure Tfrm_syddy_xn.ChangePrinter;
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(3, v_IsPrinterJoin);
//    if v_IsPrinterJoin then
//      Proc_ChangePrinter( v_PrinterIndex_new, True );
  except
  end;

end;

procedure Tfrm_syddy_xn.ChangePrinter_syjhd;
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(5, v_IsPrinterJoin);
    frm_zysf_print_service.v_PrinterIndex_new := func_GetPrinterIndex(5, v_IsPrinterJoin);
  except
  end;

end;

procedure Tfrm_syddy_xn.ComboBox1Change(Sender: TObject);
begin
  dofilterDBGridEh2(sp_dryz);
end;

procedure Tfrm_syddy_xn.ChangePrinter_sybq;
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(3, v_IsPrinterJoin);
    frm_zysf_print_service.v_PrinterIndex_new := func_GetPrinterIndex(3, v_IsPrinterJoin);
  except
  end;

end;

procedure Tfrm_syddy_xn.RevertPrinter;
begin
  //还原原来默认打印机
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, True);
  except
  end;
end;


end.

