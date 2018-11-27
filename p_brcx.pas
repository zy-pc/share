unit p_brcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, ToolWin, ExtCtrls, AppEvnts, ImgList, Buttons, StdCtrls,
  Db, DBTables, Grids, DBGrids, ADODB, DBCtrls, DBCGrids, Mask, DBGridEh,
  GridsEh, DBGridEhGrouping;

type
  TFrm_brcx = class(TForm)
    Panel1: TPanel;
    Label10: TLabel;
    lbmc: TEdit;
    brxm: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    bch: TEdit;
    Label8: TLabel;
    zyj: TEdit;
    zfy: TEdit;
    Label1: TLabel;
    syyj: TEdit;
    Label3: TLabel;
    ds_fyhz: TDataSource;
    ksmc: TEdit;
    Label5: TLabel;
    Label16: TLabel;
    ryrq: TDateTimePicker;
    zfze: TEdit;
    Label6: TLabel;
    sp_cx_brhz: TADOStoredProc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    ds_fymx: TDataSource;
    ds_cfmx: TDataSource;
    ds_cf: TDataSource;
    sp_cx_brhzmc1: TStringField;
    sp_cx_brhzje1: TBCDField;
    sp_cx_brhzje12: TBCDField;
    sp_cx_brhzmc2: TStringField;
    sp_cx_brhzje2: TBCDField;
    sp_cx_brhzje22: TBCDField;
    sp_cx_brhzmc3: TStringField;
    sp_cx_brhzje3: TBCDField;
    sp_cx_brhzje32: TBCDField;
    sp_cx_fymx: TADOStoredProc;
    sp_cx_cf: TADOStoredProc;
    sp_cx_cfmx: TADOStoredProc;
    ds_yjmx: TDataSource;
    sp_cx_yjmx: TADOStoredProc;
    Panel7: TPanel;
    B_prior: TSpeedButton;
    b_next: TSpeedButton;
    tmpgrid: TDBGrid;
    ds_zybrjbqk: TDataSource;
    b_continue: TBitBtn;
    sp_cx_zybrjbqk: TADOStoredProc;
    sp_cx_fymxsfrq: TDateTimeField;
    sp_cx_fymxfyje: TBCDField;
    sp_cx_fymxzfje: TBCDField;
    sp_cx_fymxfymc: TStringField;
    sp_cx_fymxmc: TStringField;
    sp_cx_fymxtfbz: TBooleanField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    sp_cx_yjmxyjcs: TIntegerField;
    sp_cx_yjmxyjje: TBCDField;
    sp_cx_yjmxbz: TStringField;
    sp_cx_yjmxfkfsmc: TStringField;
    sp_cx_yjmxczymc: TStringField;
    sp_cx_yjmxsjh: TStringField;
    sp_cx_yjmxsfrq: TDateTimeField;
    sp_cx_yjmxtfbz: TBooleanField;
    sp_cx_cftmh: TStringField;
    sp_cx_cfzyh: TStringField;
    sp_cx_cfcfbh: TStringField;
    sp_cx_cfcfzje: TBCDField;
    sp_cx_cfhjks: TStringField;
    sp_cx_cfhjrq: TDateTimeField;
    sp_cx_cfksmc: TStringField;
    sp_cx_cfysmc: TStringField;
    sp_cx_cfhjczy: TStringField;
    sp_cx_cfmxcfbh: TStringField;
    sp_cx_cfmxxh: TIntegerField;
    sp_cx_cfmxypdm: TStringField;
    sp_cx_cfmxypdwid: TIntegerField;
    sp_cx_cfmxypdw: TStringField;
    sp_cx_cfmxypbzbl: TIntegerField;
    sp_cx_cfmxypsl: TBCDField;
    sp_cx_cfmxypdj: TBCDField;
    sp_cx_cfmxkccgj: TBCDField;
    sp_cx_cfmxyplb: TStringField;
    sp_cx_cfmxypmc: TStringField;
    sp_cx_cfmxypje: TBCDField;
    sp_cx_cfmxypmc1: TStringField;
    sp_cx_cfmxypgg: TStringField;
    TabSheet5: TTabSheet;
    Panel4: TPanel;
    DBGrid4: TDBGrid;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBGrid5: TDBGrid;
    sp_cx_cl: TADOStoredProc;
    ds_cl: TDataSource;
    sp_cx_clmx: TADOStoredProc;
    ds_clmx: TDataSource;
    sp_tj: TADOStoredProc;
    ds_tj: TDataSource;
    DBGridEh3: TDBGridEh;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Panel2: TPanel;
    DBGrid3: TDBGrid;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    SP_yymx: TADOStoredProc;
    DS_yymx: TDataSource;
    DBGridEh4: TDBGridEh;
    sp_cx_fymxksmc: TStringField;
    sp_cx_cfsfrq: TDateTimeField;
    TabSheet8: TTabSheet;
    Panel8: TPanel;
    DBGrid6: TDBGrid;
    Panel9: TPanel;
    DBGrid7: TDBGrid;
    Panel10: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    sp_cx_zycf: TADOStoredProc;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    BCDField1: TBCDField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    DateTimeField2: TDateTimeField;
    ds_zycf: TDataSource;
    ds_zyyymx: TDataSource;
    sp_zyyymx: TADOStoredProc;
    ds_cx_zycfmx: TDataSource;
    sp_cx_zycfmx: TADOStoredProc;
    StringField8: TStringField;
    IntegerField1: TIntegerField;
    StringField9: TStringField;
    IntegerField2: TIntegerField;
    StringField10: TStringField;
    IntegerField3: TIntegerField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    StringField11: TStringField;
    StringField12: TStringField;
    BCDField5: TBCDField;
    StringField13: TStringField;
    StringField14: TStringField;
    sp_cx_zycfcfjl: TIntegerField;
    sp_cx_zycfzcfzje: TFloatField;
    sp_cx_fymxfydm: TStringField;
    sp_fymx: TADOStoredProc;
    Label7: TLabel;
    sp_cx_fymxtfrq: TDateTimeField;
    sp_cx_fymxfylb: TStringField;
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure sp_cx_clAfterScroll(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure sp_cx_cfAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure B_priorClick(Sender: TObject);
    procedure b_nextClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure brxmKeyPress(Sender: TObject; var Key: Char);
    procedure b_continueClick(Sender: TObject);
    procedure sp_cx_yjmxAfterScroll(DataSet: TDataSet);
    procedure sp_cx_brhzAfterScroll(DataSet: TDataSet);
    procedure sp_cx_cfmxAfterScroll(DataSet: TDataSet);
    procedure tmpgridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmpgridDblClick(Sender: TObject);
    procedure brxmExit(Sender: TObject);
    procedure sp_cx_zycfAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
  private
    { Private declarations }
    procedure displayvalue;
    procedure displaynull;
  public
    { Public declarations }
  end;

var
  Frm_brcx: TFrm_brcx;
  zy_zyh,zy_tmh: string;
implementation
uses p_dm,p_func, p_ICF,p_fydl_fymx;
{$R *.DFM}

procedure Tfrm_brcx.displayvalue;
var zy_zyh: string;
begin
  brxm.Text := sp_cx_zybrjbqk.fieldbyname('brxm').asstring;
  //ksmc.Text := sp_cx_zybrjbqk.fieldbyname('ksmc').asstring;
  if pub_yydm<>'0003' then
  begin
    if sp_cx_zybrjbqk.fieldbyname('cyrq').AsString = '' then
    begin
      ksmc.Text := inttostr(Trunc( StrToDateTime(FormatDateTime('yyyy-MM-dd 00:00:00',frm_func.curr_date)) -
      StrToDateTime(FormatDateTime('yyyy-MM-dd 00:00:00',sp_cx_zybrjbqk.fieldbyname('ryrq').AsDateTime))));
    end;
  end
  else
  begin
      ksmc.Text := sp_cx_zybrjbqk.FieldByName('zytss').asstring
  end;
  ryrq.datetime := sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime;
  bch.Text := sp_cx_zybrjbqk.fieldbyname('bch').asstring;
  lbmc.Text := sp_cx_zybrjbqk.fieldbyname('lbmc').asstring;
  zfze.Text := floattostr(sp_cx_zybrjbqk.fieldbyname('zfze').asfloat);
  zfy.Text := floattostr(sp_cx_zybrjbqk.fieldbyname('zfy').asfloat);
  zyj.Text := floattostr(sp_cx_zybrjbqk.fieldbyname('yjze').asfloat);
  syyj.Text := floattostr(sp_cx_zybrjbqk.fieldbyname('syyj').asfloat);
  zy_zyh := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    zy_tmh := sp_cx_zybrjbqk.fieldbyname('tmh').asstring;
  sp_cx_brhz.close;
  sp_cx_brhz.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_cx_brhz.open; //汇总费用

  sp_cx_fymx.Active := false;
  sp_cx_fymx.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_cx_fymx.Open; //费用明细
  sp_cx_fymx.first;

  with sp_tj do //费用明细汇总
  begin
    Close;
    Parameters.ParamByName('@zyh').Value:= zy_zyh;
    Open;
   end;

  SP_yymx.close;
  SP_yymx.Parameters.ParamByName('@zyh').value:=zy_zyh;
  SP_yymx.Parameters.ParamByName('@jsdh').value:='';
  SP_yymx.Parameters.ParamByName('@lb').value:=1;
  SP_yymx.open;//药品汇总


  sp_fymx.Active := false;
  sp_fymx.parameters.ParamByName('@tmh').value := zy_tmh;
  sp_fymx.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_fymx.Open;
  sp_fymx.first;


    sp_cx_cf.Active := false;
    sp_cx_cf.parameters.ParamByName('@zyh').value := zy_zyh;
    sp_cx_cf.Open;
    sp_cx_cf.First; //西药处方明细


//  if pub_yydm='0234' then
//  begin                                //20170223

    sp_cx_zycf.Active := false;
    sp_cx_zycf.Parameters.Refresh;
    sp_cx_zycf.parameters.ParamByName('@zyh').value := zy_zyh;
    sp_cx_zycf.Open;
    if sp_cx_zycf.IsEmpty then
    sp_cx_zycf.close
    else
    sp_cx_zycf.First; //中药处方明细
//  end;

  sp_cx_cl.Active := false;
  sp_cx_cl.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_cx_cl.Open;
  sp_cx_cl.First; //材料明细

  sp_cx_yjmx.Active := false;
  sp_cx_yjmx.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_cx_yjmx.Open; //缴款明细
  panel1.enabled := false;
      PageControl2.ActivePageIndex:=1;
    PageControl2.ActivePageIndex:=0;
end;

procedure Tfrm_brcx.displaynull;
begin
  brxm.Text := '';
  ksmc.Text := '';
  ryrq.datetime := date;
  bch.Text := '';
  lbmc.Text := '';
  zfze.Text := '0';
  zfy.Text := '0';
  zyj.Text := '0';
  syyj.Text := '0';
end;

procedure TFrm_brcx.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then close;
  if key = 112 then
    frm_brcx.pagecontrol1.ActivePageIndex := 0;
  if key = 113 then
    frm_brcx.pagecontrol1.ActivePageIndex := 1;
  if key = 114 then
    frm_brcx.pagecontrol1.ActivePageIndex := 2;
  if key = 115 then
    frm_brcx.pagecontrol1.ActivePageIndex := 3;
  if key = 116 then
    frm_brcx.pagecontrol1.ActivePageIndex := 4;
  if key = 123 then
    b_continue.Click;
  if key = 117 then
    B_prior.Click;
  if key = 118 then
    b_next.Click;
  if (sp_cx_zybrjbqk.Active) and (brxm.Focused=false) then
  begin
    if (key = 97) or (key = 49) then
      BitBtn1.Click;
    if (key = 98) or (key = 50) then
      BitBtn2.Click;
    if (key = 99) or (key = 51) then
      BitBtn3.Click;
    if (key = 100) or (key = 52) then
      BitBtn4.Click;
  end;
end;

procedure TFrm_brcx.FormShow(Sender: TObject);
begin
  if pub_yydm='0234' then
  begin
    TabSheet6.Caption:='西药明细';
    TabSheet8.Visible:=True;
  end;
  pagecontrol1.ActivePageIndex := 0;
  PageControl2.ActivePageIndex := 0;
  brxm.setfocus;
  if brxm.Text <>'' then
      pagecontrol1.SetFocus;
end;

procedure TFrm_brcx.sp_cx_cfAfterScroll(DataSet: TDataSet);
begin
  sp_cx_cfmx.close;
  sp_cx_cfmx.parameters.ParamByName('@cfbh').value := sp_cx_cf.fieldbyname('cfbh').asstring;
  sp_cx_cfmx.open;
  if sp_cx_cf.Bof then
  begin
    BitBtn1.Enabled := false;
    BitBtn2.Enabled := false;
    BitBtn3.Enabled := true;
    BitBtn4.Enabled := true;
  end
  else if sp_cx_cf.Eof then
  begin
    BitBtn3.Enabled := false;
    BitBtn4.Enabled := false;
    BitBtn1.Enabled := true;
    BitBtn2.Enabled := true;
  end
  else
  begin
    BitBtn1.Enabled := true;
    BitBtn2.Enabled := true;
    BitBtn3.Enabled := true;
    BitBtn4.Enabled := true;
  end;
end;

procedure TFrm_brcx.BitBtn1Click(Sender: TObject);
begin
  sp_cx_cf.First;
end;

procedure TFrm_brcx.BitBtn2Click(Sender: TObject);
begin
  if not sp_cx_cf.eof then sp_cx_cf.Next;
end;

procedure TFrm_brcx.BitBtn3Click(Sender: TObject);
begin
  if not sp_cx_cf.bof then sp_cx_cf.Prior;
end;

procedure TFrm_brcx.BitBtn4Click(Sender: TObject);
begin
  sp_cx_cf.last;
end;

procedure TFrm_brcx.TabSheet2Show(Sender: TObject);
begin
  b_next.visible := true;
  b_prior.visible := true;
    Label7.Visible:=false;
end;

procedure TFrm_brcx.TabSheet3Show(Sender: TObject);
begin
  b_next.visible := false;
  b_prior.visible := false;
  Label7.Visible:=false;
end;

procedure TFrm_brcx.B_priorClick(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex = 0 then
    if not sp_cx_brhz.bof then sp_cx_brhz.prior;
  if pagecontrol1.ActivePageIndex = 1 then
    if not sp_cx_fymx.bof then sp_cx_fymx.prior;
  if pagecontrol1.ActivePageIndex = 2 then
    if not sp_cx_cfmx.bof then sp_cx_cfmx.prior;
  if pagecontrol1.ActivePageIndex = 3 then
    if not sp_cx_clmx.bof then sp_cx_clmx.prior;
  if pagecontrol1.ActivePageIndex = 4 then
    if not sp_cx_yjmx.bof then sp_cx_yjmx.prior;
end;

procedure TFrm_brcx.DBGrid1DblClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_fydl_fymx, frm_fydl_fymx);
  if pub_yydm <> '0240' then
  begin
    try
      frm_fydl_fymx.dlmc := DBGrid1.SelectedField.Value;
      frm_fydl_fymx.sjxs(sp_fymx, ds_fymx);
      frm_fydl_fymx.ShowModal;
    finally
      frm_fydl_fymx.free;
      sp_fymx.Filtered := false;
    end;
  end
{  else
  begin
    try
      frm_fydl_fymx.dlmc := DBGrid1.SelectedField.Value;
      frm_fydl_fymx.d_zyh := zy_zyh;
      frm_fydl_fymx.sp_cx_zyfydl.Close;
      frm_fydl_fymx.sp_cx_zyfydl.parameters.Refresh;
      frm_fydl_fymx.sp_cx_zyfydl.Parameters.ParamByName('@zyh').Value := zy_zyh;
      frm_fydl_fymx.sp_cx_zyfydl.Parameters.ParamByName('@kmdm').Value := '';
      frm_fydl_fymx.sp_cx_zyfydl.Parameters.ParamByName('@table').Value := '1';
      frm_fydl_fymx.sp_cx_zyfydl.Open;
      frm_fydl_fymx.g_fy.DataSource := frm_fydl_fymx.ds_cx_zyfydl;
      //frm_fydl_fymx.g_fy.Columns[4].Visible := false;
      frm_fydl_fymx.ShowModal;
    finally
      frm_fydl_fymx.free;
    end;
  end;   }
end;

procedure TFrm_brcx.b_nextClick(Sender: TObject);
begin
  if pagecontrol1.ActivePageIndex = 0 then
    if not sp_cx_brhz.eof then sp_cx_brhz.next;
  if pagecontrol1.ActivePageIndex = 1 then
    if not sp_cx_fymx.eof then sp_cx_fymx.next;
  if pagecontrol1.ActivePageIndex = 2 then
    if not sp_cx_cfmx.eof then sp_cx_cfmx.next;
  if pagecontrol1.ActivePageIndex = 3 then
    if not sp_cx_clmx.eof then sp_cx_clmx.next;
  if pagecontrol1.ActivePageIndex = 4 then
    if not sp_cx_yjmx.eof then sp_cx_yjmx.next;
end;

procedure TFrm_brcx.TabSheet1Show(Sender: TObject);
begin
  b_next.visible := false;
  b_prior.visible := false;
    Label7.Visible:=True;
  Label7.Caption:='双击大项显示该大项下明细费用' ;

end;

procedure TFrm_brcx.TabSheet4Show(Sender: TObject);
begin
    b_next.visible := false;
  b_prior.visible := false;
  Label7.Visible:=false;
end;

procedure TFrm_brcx.TabSheet5Show(Sender: TObject);
begin
  Label7.Visible:=false;
end;

procedure TFrm_brcx.brxmExit(Sender: TObject);
var s: string;
  xnzk:TXNZK;
begin
    s := trim(brxm.Text);
    if s <> '' then
      if s[1] in ['0'..'9'] then
        s := stringofchar('0', 9 - length(s)) + s;

    xnzk := TXNZK.create(s);//创建虚拟转科对象

    brxm.Text := s;
    sp_cx_zybrjbqk.Close;
    sp_cx_zybrjbqk.Parameters.ParamByName('@tmh').value := trim(brxm.text);

    if xnzk.dstAreaCode = pub_bqdm then //如果虚拟转科的目的病区和pub_bqdm相同
       sp_cx_zybrjbqk.Parameters.ParamByName('@ksdm').value := xnzk.srcAreaCode
    else sp_cx_zybrjbqk.Parameters.ParamByName('@ksdm').value := pub_bqdm;
    sp_cx_zybrjbqk.Open;
    if sp_cx_zybrjbqk.IsEmpty then
    begin
      application.MessageBox('病人信息输入错误，' + #13 + #13 + '请确认输入的是病人的姓名或卡号或病床号', '错误', mb_ok + mb_iconerror);
      brxm.SetFocus;
    end
    else
      if sp_cx_zybrjbqk.RecordCount > 1 then
      begin
        tmpgrid.Visible := true;
        tmpgrid.top := brxm.top + brxm.Height;
        tmpgrid.left := brxm.left;
        tmpgrid.Visible := true;
        tmpgrid.setfocus;
      end
      else
        displayvalue;
end;

procedure TFrm_brcx.brxmKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then PageControl1.SetFocus;
end;

procedure TFrm_brcx.b_continueClick(Sender: TObject);
begin
  panel1.enabled := true;
  displaynull;
  brxm.setfocus;
  sp_cx_brhz.Close;
  sp_cx_zybrjbqk.close;
  sp_cx_fymx.close;
  sp_cx_cf.close;
  sp_cx_cfmx.Close;
  sp_cx_yjmx.close;
  sp_cx_cl.Close;
  sp_cx_clmx.close;
end;

procedure TFrm_brcx.sp_cx_yjmxAfterScroll(DataSet: TDataSet);
begin
  if sp_cx_yjmx.Bof then
  begin
    B_prior.Enabled := false;
    b_next.Enabled := true;
  end
  else if sp_cx_yjmx.Eof then
  begin
    b_next.Enabled := false;
    B_prior.Enabled := true;
  end
  else
  begin
    B_prior.Enabled := true;
    b_next.Enabled := true;
  end;
end;

procedure TFrm_brcx.sp_cx_zycfAfterScroll(DataSet: TDataSet);
begin
  sp_cx_zycfmx.close;
  sp_cx_zycfmx.Parameters.Refresh;
  sp_cx_zycfmx.parameters.ParamByName('@cfbh').value := sp_cx_zycf.fieldbyname('cfbh').asstring;
  sp_cx_zycfmx.open;
  if sp_cx_zycf.Bof then
  begin
    BitBtn9.Enabled := false;
    BitBtn10.Enabled := false;
    BitBtn11.Enabled := true;
    BitBtn12.Enabled := true;
  end
  else if sp_cx_zycf.Eof then
  begin
    BitBtn9.Enabled := false;
    BitBtn10.Enabled := false;
    BitBtn11.Enabled := true;
    BitBtn12.Enabled := true;
  end
  else
  begin
    BitBtn9.Enabled := true;
    BitBtn10.Enabled := true;
    BitBtn11.Enabled := true;
    BitBtn12.Enabled := true;
  end;
end;

procedure TFrm_brcx.sp_cx_brhzAfterScroll(DataSet: TDataSet);
begin
  if sp_cx_brhz.Bof then
  begin
    B_prior.Enabled := false;
    b_next.Enabled := true;
  end
  else if sp_cx_brhz.Eof then
  begin
    b_next.Enabled := false;
    B_prior.Enabled := true;
  end
  else
  begin
    B_prior.Enabled := true;
    b_next.Enabled := true;
  end;
end;

procedure TFrm_brcx.sp_cx_cfmxAfterScroll(DataSet: TDataSet);
begin
  if sp_cx_cfmx.Bof then
  begin
    B_prior.Enabled := false;
    b_next.Enabled := true;
  end
  else if sp_cx_cfmx.Eof then
  begin
    b_next.Enabled := false;
    B_prior.Enabled := true;
  end
  else
  begin
    B_prior.Enabled := true;
    b_next.Enabled := true;
  end;
end;

procedure TFrm_brcx.tmpgridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    displayvalue;
    tmpgrid.Visible := false;
  end
end;

procedure TFrm_brcx.tmpgridDblClick(Sender: TObject);
begin
  displayvalue;
  tmpgrid.Visible := false;
end;

procedure TFrm_brcx.sp_cx_clAfterScroll(DataSet: TDataSet);
begin
  sp_cx_clmx.close;
  sp_cx_clmx.parameters.ParamByName('@cfbh').value := sp_cx_cl.fieldbyname('cfbh').asstring;
  sp_cx_clmx.open;
  if sp_cx_cl.Bof then
  begin
    BitBtn5.Enabled := false;
    BitBtn6.Enabled := false;
    BitBtn7.Enabled := true;
    BitBtn8.Enabled := true;
  end
  else if sp_cx_cl.Eof then
  begin
    BitBtn7.Enabled := false;
    BitBtn8.Enabled := false;
    BitBtn5.Enabled := true;
    BitBtn6.Enabled := true;
  end
  else
  begin
    BitBtn5.Enabled := true;
    BitBtn6.Enabled := true;
    BitBtn7.Enabled := true;
    BitBtn8.Enabled := true;
  end;
end;

procedure TFrm_brcx.BitBtn5Click(Sender: TObject);
begin
  sp_cx_cl.First;
end;

procedure TFrm_brcx.BitBtn6Click(Sender: TObject);
begin
  if not sp_cx_cl.eof then sp_cx_cl.Next;
end;

procedure TFrm_brcx.BitBtn7Click(Sender: TObject);
begin
  if not sp_cx_cl.bof then sp_cx_cl.Prior;
end;

procedure TFrm_brcx.BitBtn8Click(Sender: TObject);
begin
  sp_cx_cl.last;
end;

end.

