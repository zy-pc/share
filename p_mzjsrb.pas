unit p_mzjsrb;

interface

uses
  Windows,Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGridEh, Db, ADODB,Variants,
  Qrctrls, QuickRpt, GridsEh, Menus, cxLookAndFeelPainters, cxButtons, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, DBGridEhGrouping,
  ToolCtrlsEh;

type
  Tfrm_mzjsrb = class( TForm )
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    Panel2: TPanel;
    sp_cyjsrb: TADOStoredProc;
    ds_CYBRJS: TDataSource;
    BitBtn3: TBitBtn;
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRGroup1: TQRGroup;
    sp_sbqf: TADOStoredProc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    QuickRep2: TQuickRep;
    QRBand5: TQRBand;
    bt2: TQRLabel;
    dyrq1: TQRLabel;
    QRBand6: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand7: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRBand8: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    zbr1: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText16: TQRDBText;
    QRBand9: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRBand10: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRSysData3: TQRSysData;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    dtp2: TDateTimePicker;
    Label2: TLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRExpr10: TQRExpr;
    dyrq: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape2: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel30: TQRLabel;
    QRExpr13: TQRExpr;
    PageHeaderBand1: TQRBand;
    bt: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel10: TQRLabel;
    zbr: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText24: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    ds_sbqf: TDataSource;
    QRLabel33: TQRLabel;
    QRDBText25: TQRDBText;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
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
    cxgrdbtblvwGrid1DBTableView1Column14: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column15: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column16: TcxGridDBColumn;
    gltj: TQRLabel;
    gltj1: TQRLabel;
    cxgrdbtblvwGrid1DBTableView1Column17: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column18: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1Column19: TcxGridDBColumn;
    QuickRep3: TQuickRep;
    QRBand2: TQRBand;
    QRLabel34: TQRLabel;
    QRExpr23: TQRExpr;
    QRLabel35: TQRLabel;
    QRExpr29: TQRExpr;
    QRGroup2: TQRGroup;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape1: TQRShape;
    QRLabel50: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel52: TQRLabel;
    QRBand4: TQRBand;
    QRLabel53: TQRLabel;
    QRBand11: TQRBand;
    QRLabel56: TQRLabel;
    QRBand12: TQRBand;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel42: TQRLabel;
    N4: TMenuItem;
    QRBand1: TQRBand;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRShape3: TQRShape;
    QRlblcxdb: TQRLabel;
    QRDBcxdb: TQRDBText;
    QRExprcxdb: TQRExpr;
    QRExpr24cxdb: TQRExpr;
    Panel3: TPanel;
    Label3: TLabel;
    edt_Filter1: TEdit;
    edt_Filter2: TEdit;
    Button1: TButton;
    TabSheet3: TTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    DS_cyjsrb_hz: TDataSource;
    sp_cyjsrb_hz: TADOStoredProc;
    jmfy: TcxGridDBColumn;
    procedure dtp1Change( Sender: TObject );
    procedure BitBtn1Click( Sender: TObject );
    procedure BitBtn3Click( Sender: TObject );
    procedure QRDBText1Print( sender: TObject; var Value: string );
    procedure QRDBText10Print( sender: TObject; var Value: string );
    procedure FormShow( Sender: TObject );
    procedure N3Click( Sender: TObject );
    procedure N2Click( Sender: TObject );
    procedure N1Click( Sender: TObject );
    procedure cxgrdbtblvwGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
    procedure N4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    ExtColumnInited:boolean;
    { Private declarations }
    procedure AdjustPos; //遂宁中医院报表修改
  public
    { Public declarations }
  end;

var
  frm_mzjsrb: Tfrm_mzjsrb;

implementation
uses p_dm, p_func,p_zysf_print_service;
{$R *.DFM}

procedure Tfrm_mzjsrb.FormShow( Sender: TObject );
begin
  dtp1.date := now;
  dtp2.date := now;
  QuickRep1.Visible := false;
  QuickRep2.Visible := false;
  AdjustPos;
end;

procedure Tfrm_mzjsrb.N1Click( Sender: TObject );
var
  v_czymc,sbgltj,tjrq: string;
begin
  if pub_yydm<>'0261' then
  begin
  try
    if not sp_cyjsrb.Active then Exit;
    v_czymc := Trim( sp_cyjsrb.FieldByName( 'czyxm' ).AsString );

    gltj.Caption := cxgrdbtblvwGrid1DBTableView1.DataController.Filter.FilterCaption;
    if cxgrdbtblvwGrid1DBTableView1.DataController.filter.filtertext <> '' then
      sp_cyjsrb.Filter := 'czyxm=' + #39 + v_czymc + #39 + ' and ' + cxgrdbtblvwGrid1DBTableView1.DataController.filter.filtertext
    else
      sp_cyjsrb.Filter := 'czyxm=' + #39 + v_czymc + #39;
    sp_cyjsrb.Filtered := True;
    bt.Caption := trim( pub_yymc ) + ' ' + '出院病人结算费用明细';
    dyrq.Caption := '统计日期:' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp1.date )
      + ' 至 ' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp2.date );
    zbr.caption := '制表：' + pub_czyxm;
    QRLabel5.Caption := '社保单位:';
    QRDBText2.DataField := 'sbdw';
    sp_cyjsrb.Sort := 'sbdw';
    QRGroup1.Expression := 'sbdw';
    quickrep1.Preview;
    sp_cyjsrb.Sort := '';
    sp_cyjsrb.Filtered := False;
  finally
    if not sp_sbqf.IsEmpty then
    begin
      bt2.Caption := trim( pub_yymc ) + ' ' + '待结帐病人收（退）待结帐明细';
      dyrq1.Caption := '统计日期:' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp1.date )
        + ' 至 ' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp2.date );
      zbr1.caption := '制表：' + pub_czyxm;
      quickrep2.Preview;
    end;
  end;
  end else
  begin
    try
    if not sp_cyjsrb.Active then Exit;
    v_czymc := Trim( sp_cyjsrb.FieldByName( 'czyxm' ).AsString );

    sbgltj:= cxgrdbtblvwGrid1DBTableView1.DataController.Filter.FilterCaption;
    if cxgrdbtblvwGrid1DBTableView1.DataController.filter.filtertext <> '' then
      sp_cyjsrb.Filter := 'czyxm=' + #39 + v_czymc + #39 + ' and ' + cxgrdbtblvwGrid1DBTableView1.DataController.filter.filtertext
    else
      sp_cyjsrb.Filter := 'czyxm=' + #39 + v_czymc + #39;
    sp_cyjsrb.Filtered := True;
    tjrq :=  formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp1.date )
      + ' 至 ' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp2.date );
    frm_zysf_print_service.Printcybrjsmx_dy(sp_cyjsrb,sbgltj,tjrq);
    sp_cyjsrb.Sort := '';
    sp_cyjsrb.Filtered := False;
    finally
      if not sp_sbqf.IsEmpty then
      begin
        bt2.Caption := trim( pub_yymc ) + ' ' + '待结帐病人收（退）待结帐明细';
        dyrq1.Caption := '统计日期:' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp1.date )
          + ' 至 ' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp2.date );
        zbr1.caption := '制表：' + pub_czyxm;
        quickrep2.Preview;
      end;
    end;
  end;
end;

procedure Tfrm_mzjsrb.N2Click( Sender: TObject );
begin
  try
    sp_cyjsrb.Filtered := true;
    try
      sp_cyjsrb.Filter := cxgrdbtblvwGrid1DBTableView1.DataController.filter.filtertext;
    except
      sp_cyjsrb.Filter := '';
    end;
    gltj.Caption := cxgrdbtblvwGrid1DBTableView1.DataController.Filter.FilterCaption;
    bt.Caption := trim( pub_yymc ) + ' ' + '出院病人结算费用明细';
    dyrq.Caption := '统计日期:' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp1.date )
      + ' 至 ' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp2.date );
    zbr.caption := '制表：' + pub_czyxm;
    QRLabel5.Caption := '社保单位:';
    QRDBText2.DataField := 'sbdw';
    sp_cyjsrb.Sort := 'sbdw';
    QRGroup1.Expression := 'sbdw';
    quickrep1.Preview;
    sp_cyjsrb.Sort := '';
    sp_cyjsrb.Filtered := False;
  finally
    if not sp_sbqf.IsEmpty then
    begin
      bt2.Caption := trim( pub_yymc ) + ' ' + '待结帐病人收（退）待结帐明细';
      dyrq1.Caption := '统计日期:' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp1.date )
        + ' 至 ' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp2.date );
      zbr1.caption := '制表：' + pub_czyxm;
      quickrep2.Preview;
    end;
  end;
end;

procedure Tfrm_mzjsrb.N3Click( Sender: TObject );
begin
  try
    sp_cyjsrb.Filtered := true;
    try
      sp_cyjsrb.Filter := cxgrdbtblvwGrid1DBTableView1.DataController.filter.filtertext;
    except
      sp_cyjsrb.Filter := '';
    end;
    gltj1.Caption := cxgrdbtblvwGrid1DBTableView1.DataController.Filter.FilterCaption;

    bt.Caption := trim( pub_yymc ) + ' ' + '出院病人结算费用明细';
    dyrq.Caption := '统计日期:' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp1.date )
      + ' 至 ' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp2.date );
    zbr.caption := '制表：' + pub_czyxm;
    QRLabel5.Caption := '出院科室:';
    QRDBText2.DataField := 'ksmc';
    sp_cyjsrb.Sort := 'ksmc';
    QRGroup1.Expression := 'ksmc';
    quickrep1.Preview;
    sp_cyjsrb.Sort := '';
    sp_cyjsrb.Filtered := False;
  finally
    if not sp_sbqf.IsEmpty then
    begin
      bt2.Caption := trim( pub_yymc ) + ' ' + '待结帐病人收（退）待结帐明细';
      dyrq1.Caption := '统计日期:' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp1.date )
        + ' 至 ' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp2.date );
      zbr1.caption := '制表：' + pub_czyxm;
      quickrep2.Preview;
    end;
  end;
end;

procedure Tfrm_mzjsrb.N4Click(Sender: TObject);
begin
    QRLabel53.Caption := trim( pub_yymc )+ '出院病人结算费用明细';
    QRLabel36.Caption := '统计日期:' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp1.date )
      + ' 至 ' + formatdatetime( 'yyyy"年"mm"月"dd"日"', dtp2.date );
    QRLabel56.caption := '制表：' + pub_czyxm;
    QuickRep3.Preview;
end;

procedure Tfrm_mzjsrb.QRDBText10Print( sender: TObject; var Value: string );
begin
  if trim( value ) <> '' then
  begin
    value := formatdatetime( 'yy-mm-dd', strtodatetime( value ) );
  end;
end;

procedure Tfrm_mzjsrb.QRDBText1Print( sender: TObject; var Value: string );
begin
  if trim( value ) <> '' then
  begin
    value := formatdatetime( 'yy-mm-dd', strtodatetime( value ) );
  end;
end;

procedure Tfrm_mzjsrb.dtp1Change( Sender: TObject );
begin
  sp_cyjsrb.close;
end;

procedure Tfrm_mzjsrb.BitBtn1Click( Sender: TObject );
var
  I: Integer;
  newColumn:TcxGridDBColumn;
begin
  sp_cyjsrb.close;
  sp_cyjsrb.Parameters.ParamByName( '@ksrq' ).value := formatdatetime( 'yyyymmdd', dtp1.date );
  sp_cyjsrb.Parameters.ParamByName( '@jzrq' ).value := formatdatetime( 'yyyymmdd', dtp2.date );
  sp_cyjsrb.open;

  sp_cyjsrb_hz.close;
  sp_cyjsrb_hz.Parameters.Refresh;
  sp_cyjsrb_hz.Parameters.ParamByName( '@ksrq' ).value := formatdatetime( 'yyyymmdd', dtp1.date );
  sp_cyjsrb_hz.Parameters.ParamByName( '@jzrq' ).value := formatdatetime( 'yyyymmdd', dtp2.date );
  sp_cyjsrb_hz.open;

  sp_sbqf.close;
  sp_sbqf.Parameters.ParamByName( '@ksrq' ).value := formatdatetime( 'yyyymmdd', dtp1.date );
  sp_sbqf.Parameters.ParamByName( '@jzrq' ).value := formatdatetime( 'yyyymmdd', dtp2.date );
  sp_sbqf.open;
  if not ExtColumnInited then
  begin
    if sp_cyjsrb.Active then
    begin
      ExtColumnInited := True;
      for I := 0 to sp_cyjsrb.FieldCount - 1 do
      begin
        if Ord(sp_cyjsrb.Fields[i].FieldName[1])>128 then
        begin
          newColumn := cxgrdbtblvwGrid1DBTableView1.CreateColumn;
          newColumn.DataBinding.FieldName := sp_cyjsrb.Fields[i].FieldName;
          newColumn.ApplyBestFit();

          with (cxgrdbtblvwGrid1DBTableView1.DataController.Summary.FooterSummaryItems.Add as TcxGridDBTableSummaryItem)  do
          begin
            Column := newColumn;
            FieldName := sp_cyjsrb.Fields[i].FieldName;
            Format := '0.00';
            Kind := skSum;
            Position := spFooter;
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrm_mzjsrb.BitBtn3Click( Sender: TObject );
begin
  self.close;
end;

procedure Tfrm_mzjsrb.Button1Click(Sender: TObject);
begin
  with cxgrdbtblvwGrid1DBTableView1.DataController.Filter.Root do
  begin
    Clear;
    if edt_Filter1.Text<>'' then    
    AddItem(cxgrdbtblvwGrid1DBTableView1Column2, foGreaterEqual, edt_Filter1.Text, edt_Filter1.Text) ;
    if edt_Filter2.Text<>'' then
    AddItem(cxgrdbtblvwGrid1DBTableView1Column2, folessEqual, edt_Filter2.Text, edt_Filter2.Text) ;
  end;
  cxgrdbtblvwGrid1DBTableView1.DataController.Filter.Active := True ;
end;

procedure Tfrm_mzjsrb.cxgrdbtblvwGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
begin
  if not VarIsNull(AViewInfo.RecordViewInfo.GridRecord.Values[14])  then
  begin
    if strtofloat( AViewInfo.RecordViewInfo.GridRecord.Values[14] ) <> 0 then
    //if sp_cyjsrb['djzk'] <> 0 then
    begin
       ACanvas.Brush.Color := cllime;
    end;
  end;
end;

procedure Tfrm_mzjsrb.AdjustPos;
begin
  //只有遂宁中医院（0234） 出院病人结算明细 报表将统筹拆分成城乡大病和待结账
  if pub_yydm <> '0234' then
  begin
    QRShape2.Width := 828;
    QRLabel8.Left := QRlblcxdb.Left;
    QRLabel9.Left := QRLabel8.Left + 50;
    QRDBText8.Left := QRDBcxdb.Left;
    QRDBText9.Left := QRDBText8.Left + 62;
    QRExpr5.Left :=  QRExprcxdb.Left;
    QRExpr6.Left :=QRExpr5.Left + 62;
    QRExpr20.Left := QRExpr24cxdb.Left;
    QRExpr21.Left := QRExpr20.Left + 62;
    QRlblcxdb.Destroy; //城乡大病标题
    QRDBcxdb.Destroy;  //城乡大病费用
    QRExprcxdb.Destroy; //城乡大病费用统计
    QRExpr24cxdb.Destroy;//城乡大病费用统计
  end;
end;

initialization
  RegisterClass( Tfrm_mzjsrb );
end.

