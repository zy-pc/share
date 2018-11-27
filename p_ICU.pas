unit p_ICU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, Db, ADODB,
  QuickRpt, Qrctrls, DBGridEh, DBCtrls, GridsEh, cxControls, cxContainer,
  cxCheckListBox, cxDBCheckListBox, cxCheckBox;

type
  Tfrm_ICU_sjtj = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    BitBtn2: TBitBtn;
    TabSheet3: TTabSheet;
    ds_zkzcjl: TDataSource;
    TabSheet2: TTabSheet;
    sp_fydl_tj: TADOStoredProc;
    ds_fydl: TDataSource;
    sp_fymx: TADOStoredProc;
    ds_fymx: TDataSource;
    sp_zkzcjl: TADOStoredProc;
    TabSheet4: TTabSheet;
    sp_fydl_tj_fk: TADOStoredProc;
    ds_fydl_fk: TDataSource;
    BitBtn3: TBitBtn;
    TabSheet5: TTabSheet;
    ds_ksbr: TDataSource;
    DBGridEh1: TDBGridEh;
    Label3: TLabel;
    DBLB_ksdm: TDBLookupComboBox;
    ds_ksdm: TDataSource;
    qry_ksdm: TADOQuery;
    qry_ksbr: TADOQuery;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    Panel2: TPanel;
    Panel3: TPanel;
    TabSheet6: TTabSheet;
    DBGridEh6: TDBGridEh;
    sp_fydl_tj_kd: TADOStoredProc;
    ds_fydl_kd: TDataSource;
    TabSheet7: TTabSheet;
    DBGridEh7: TDBGridEh;
    sp_fydl_tj_fk_kd: TADOStoredProc;
    ds_fydl_fk_kd: TDataSource;
    qry_kmmx: TADOQuery;
    ds_kmmx: TDataSource;
    CLB4: TcxCheckListBox;
    Splitter1: TSplitter;
    CLB1: TcxCheckListBox;
    Splitter2: TSplitter;
    CLB2: TcxCheckListBox;
    Splitter3: TSplitter;
    CLB3: TcxCheckListBox;
    Splitter4: TSplitter;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    FL01: TQRLabel;
    FL02: TQRLabel;
    FL03: TQRLabel;
    FL04: TQRLabel;
    FL05: TQRLabel;
    FL06: TQRLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBLB_ksdmCloseUp(Sender: TObject);
    procedure qry_kmmxAfterOpen(DataSet: TDataSet);
    procedure CLB4Click(Sender: TObject);
    procedure CLB4ClickCheck(Sender: TObject; AIndex: Integer; APrevState,
      ANewState: TcxCheckBoxState);
    procedure CLB1Click(Sender: TObject);
    procedure CLB2Click(Sender: TObject);
    procedure CLB3Click(Sender: TObject);
    procedure CLB1ClickCheck(Sender: TObject; AIndex: Integer; APrevState,
      ANewState: TcxCheckBoxState);
    procedure CLB2ClickCheck(Sender: TObject; AIndex: Integer; APrevState,
      ANewState: TcxCheckBoxState);
    procedure CLB3ClickCheck(Sender: TObject; AIndex: Integer; APrevState,
      ANewState: TcxCheckBoxState);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ICU_sjtj: Tfrm_ICU_sjtj;

implementation

uses p_dm,p_func;

{$R *.DFM}

procedure Tfrm_ICU_sjtj.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_ICU_sjtj.BitBtn2Click(Sender: TObject);
var
  tmpstr: WideString;
  i: Integer;
begin
  if DBLB_ksdm.Text = '' then
  begin
    Application.MessageBox('请选择科室！', '操作提示', 16);
    DBLB_ksdm.SetFocus;
    Abort;
  end;
  if DTP2.Date < DTP1.Date then
  begin
    Application.MessageBox('开始日期不能大于结束日期！', '操作提示', 16);
    DTP1.SetFocus;
    Abort;
  end;
  tmpstr := '';
  if (pagecontrol1.ActivePageIndex = 1) or (pagecontrol1.ActivePageIndex = 2) then
  begin
    sp_zkzcjl.Close;
    sp_zkzcjl.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', DTP1.Date);
    sp_zkzcjl.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', DTP2.Date);
    sp_zkzcjl.Parameters.ParamByName('@ksdm').value := DBLB_ksdm.KeyValue;
    sp_zkzcjl.Open;
  end;
  if pagecontrol1.ActivePageIndex = 3 then
  begin
    if CLB1.Items.Count > 0 then
      for i := 1 to CLB1.Items.Count - 1 do
        if CLB1.Items[i].Checked = True then
          if tmpstr = '' then
            tmpstr := Copy(CLB1.Items[i].Text, 0, 4)
          else
            tmpstr := tmpstr + ';' + Copy(CLB1.Items[i].Text, 0, 4);
    if tmpstr = '' then
    begin
      Application.MessageBox('请选择统计费用大类！', '操作提示', 16);
      Abort;
    end;
    sp_fydl_tj.Close;
    sp_fydl_tj.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', DTP1.Date);
    sp_fydl_tj.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', DTP2.Date);
    sp_fydl_tj.Parameters.ParamByName('@ksdm').value := DBLB_ksdm.KeyValue;
    sp_fydl_tj.Parameters.ParamByName('@kmdm').value := tmpstr;
    sp_fydl_tj.Open;
  end;
  if pagecontrol1.ActivePageIndex = 4 then
  begin
    if CLB2.Items.Count > 0 then
      for i := 1 to CLB2.Items.Count - 1 do
        if CLB2.Items[i].Checked = True then
          if tmpstr = '' then
            tmpstr := Copy(CLB2.Items[i].Text, 0, 4)
          else
            tmpstr := tmpstr + ';' + Copy(CLB2.Items[i].Text, 0, 4);
    if tmpstr = '' then
    begin
      Application.MessageBox('请选择统计费用大类！', '操作提示', 16);
      Abort;
    end;
    sp_fydl_tj_fk.Close;
    sp_fydl_tj_fk.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', DTP1.Date);
    sp_fydl_tj_fk.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', DTP2.Date);
    sp_fydl_tj_fk.Parameters.ParamByName('@ksdm').value := DBLB_ksdm.KeyValue;
    sp_fydl_tj_fk.Parameters.ParamByName('@kmdm').value := tmpstr;
    sp_fydl_tj_fk.Open;
  end;
  if pagecontrol1.ActivePageIndex = 5 then
  begin
    if CLB3.Items.Count > 0 then
      for i := 1 to CLB3.Items.Count - 1 do
        if CLB3.Items[i].Checked = True then
          if tmpstr = '' then
            tmpstr := Copy(CLB3.Items[i].Text, 0, 4)
          else
            tmpstr := tmpstr + ';' + Copy(CLB3.Items[i].Text, 0, 4);
    if tmpstr = '' then
    begin
      Application.MessageBox('请选择统计费用大类！', '操作提示', 16);
      Abort;
    end;
    sp_fydl_tj_kd.Close;
    sp_fydl_tj_kd.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', DTP1.Date);
    sp_fydl_tj_kd.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', DTP2.Date);
    sp_fydl_tj_kd.Parameters.ParamByName('@ksdm').value := DBLB_ksdm.KeyValue;
    sp_fydl_tj_kd.Parameters.ParamByName('@kmdm').value := tmpstr;
    sp_fydl_tj_kd.Open;
  end;
  if pagecontrol1.ActivePageIndex = 6 then
  begin
    if CLB4.Items.Count > 0 then
      for i := 1 to CLB4.Items.Count - 1 do
        if CLB4.Items[i].Checked = True then
          if tmpstr = '' then
            tmpstr := Copy(CLB4.Items[i].Text, 0, 4)
          else
            tmpstr := tmpstr + ';' + Copy(CLB4.Items[i].Text, 0, 4);
    if tmpstr = '' then
    begin
      Application.MessageBox('请选择统计费用大类！', '操作提示', 16);
      Abort;
    end;
    sp_fydl_tj_fk_kd.Close;
    sp_fydl_tj_fk_kd.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', DTP1.Date);
    sp_fydl_tj_fk_kd.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', DTP2.Date);
    sp_fydl_tj_fk_kd.Parameters.ParamByName('@ksdm').value := DBLB_ksdm.KeyValue;
    sp_fydl_tj_fk_kd.Parameters.ParamByName('@kmdm').value := tmpstr;
    sp_fydl_tj_fk_kd.Open;
  end;

end;

procedure Tfrm_ICU_sjtj.FormCreate(Sender: TObject);
begin
  DTP1.Date := date() - 1;
  DTP2.Date := Date();
  Qry_ksdm.Close;
  Qry_ksdm.SQL.Clear;
  Qry_ksdm.SQL.Add('select dm,rtrim(mc) mc from sys_ksdm where sybz=1 and (dm=' + #39 + '0362' + #39 + ' or dm=' + #39 + '0401' + #39 + ')');
  Qry_ksdm.Open;
  qry_kmmx.Close;
  qry_kmmx.Open;
end;

procedure Tfrm_ICU_sjtj.BitBtn3Click(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 3 then
  begin
    if sp_fydl_tj.Active = False then
    begin
      Application.MessageBox('请点击统计按钮统计数据！', '操作提示', 16);
      Abort;
    end
    else
      if sp_fydl_tj.RecordCount <= 0 then
      begin
        Application.MessageBox('该时间范围内无数据！', '操作提示', 16);
        Abort;
      end;
    sp_fydl_tj.First;
    QRLabel1.Caption := DBLB_ksdm.Text + '(处置)费用分类清单';
  end
  else
    if PageControl1.ActivePageIndex = 4 then
    begin
      if sp_fydl_tj_fk.Active = False then
      begin
        Application.MessageBox('请点击统计按钮统计数据！', '操作提示', 16);
        Abort;
      end
      else
        if sp_fydl_tj_fk.RecordCount <= 0 then
        begin
          Application.MessageBox('该时间范围内无数据！', '操作提示', 16);
          Abort;
        end;
      sp_fydl_tj_fk.First;
      QRLabel1.Caption := DBLB_ksdm.Text + '(处置)费用分科分类清单';
    end
    else
      if PageControl1.ActivePageIndex = 5 then
      begin
        if sp_fydl_tj_kd.Active = False then
        begin
          Application.MessageBox('请点击统计按钮统计数据！', '操作提示', 16);
          Abort;
        end
        else
          if sp_fydl_tj_kd.RecordCount <= 0 then
          begin
            Application.MessageBox('该时间范围内无数据！', '操作提示', 16);
            Abort;
          end;
        sp_fydl_tj_kd.First;
        QRLabel1.Caption := DBLB_ksdm.Text + '(开单)费用分类清单';
      end
      else
        if PageControl1.ActivePageIndex = 6 then
        begin
          if sp_fydl_tj_fk_kd.Active = False then
          begin
            Application.MessageBox('请点击统计按钮统计数据！', '操作提示', 16);
            Abort;
          end
          else
            if sp_fydl_tj_fk_kd.RecordCount <= 0 then
            begin
              Application.MessageBox('该时间范围内无数据！', '操作提示', 16);
              Abort;
            end;
          sp_fydl_tj_fk_kd.First;
          QRLabel1.Caption := DBLB_ksdm.Text + '(开单)费用分科分类清单';
        end
        else
        begin
          ShowMessage('无需打印');
          Exit;
        end;
  QRLabel8.Caption := '统计时间从' + formatdatetime('yyyy"年"mm"月"dd"日"', DTP1.Date) + '到' + formatdatetime('yyyy"年"mm"月"dd"日"', DTP2.Date);
  QRLabel9.Caption := '制表人：' + pub_czyxm;
  QRLabel10.Caption := '打印时间：' + formatdatetime('yyyy"年"mm"月"dd"日"', Date);
  QuickRep1.Preview;
end;

procedure Tfrm_ICU_sjtj.PageControl1Change(Sender: TObject);
begin
  if (pagecontrol1.ActivePageIndex = 1) or (pagecontrol1.ActivePageIndex = 2) then
    Label1.Caption := '转科日期从'
  else
    Label1.Caption := '收费日期从';
  if (pagecontrol1.ActivePageIndex = 2) and (sp_fymx.Active = False) then
  begin
    Application.MessageBox('请统计转科记录后，双击记录显示该病人费用明细！', '操作提示', 16);
    PageControl1.ActivePageIndex := 1;
    Abort;
  end;
  if PageControl1.ActivePageIndex = 3 then
  begin
    CLB1.Items.Clear;
    CLB1.Items.Assign(CLB2.Items);
  end
  else
    if PageControl1.ActivePageIndex = 4 then
    begin
      CLB2.Items.Clear;
      CLB2.Items.Assign(CLB1.Items);
    end
    else
      if PageControl1.ActivePageIndex = 5 then
      begin
        CLB3.Items.Clear;
        CLB3.Items.Assign(CLB4.Items);
      end
      else
        if PageControl1.ActivePageIndex = 6 then
        begin
          CLB4.Items.Clear;
          CLB4.Items.Assign(CLB3.Items);
        end;
end;

procedure Tfrm_ICU_sjtj.FormShow(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex := 0;
  DBLB_ksdm.SetFocus;
end;

procedure Tfrm_ICU_sjtj.DBGridEh2DblClick(Sender: TObject);
begin
  if sp_zkzcjl.RecordCount <= 0 then Abort;
  sp_fymx.Close;
  sp_fymx.Parameters.ParamByName('@tmh').value := sp_zkzcjl['tmh'];
  sp_fymx.Parameters.ParamByName('@zyh').value := sp_zkzcjl['zyh'];
  sp_fymx.Parameters.ParamByName('@ksdm').value := DBLB_ksdm.KeyValue;
  sp_fymx.Open;
  pagecontrol1.ActivePageIndex := 2;
end;

procedure Tfrm_ICU_sjtj.DBLB_ksdmCloseUp(Sender: TObject);
begin
  if DBLB_ksdm.text = '' then Abort;
  sp_fydl_tj.Close;
  sp_zkzcjl.Close;
  sp_fymx.Close;
  sp_fydl_tj_fk.Close;
  Panel3.Caption := DBLB_ksdm.Text + '相关数据';
{  Tabsheet5.Caption := DBLB_ksdm.Text +'在床病人';
  Tabsheet3.Caption := DBLB_ksdm.Text +'转科记录';
  Tabsheet2.Caption := DBLB_ksdm.Text +'处置费用明细';
  Tabsheet1.Caption := DBLB_ksdm.Text +'处置费用统计';
  Tabsheet4.Caption := DBLB_ksdm.Text +'双向处置费用统计';  }
//  if pagecontrol1.ActivePageIndex = 0 then
  begin
    qry_ksbr.Close;
    Qry_ksbr.SQL.Clear;
    if DBLB_ksdm.KeyValue = '0362' then
    begin
      Qry_ksbr.SQL.Add('select a.tmh,a.zyh,a.brxm,a.brnl,a.sbkh,a.csrq,a.brzy,a.brxb,a.brsf,b.mc sfmc,a.brjg,c.mc jgmc, ');
      Qry_ksbr.SQL.Add(' a.brmz,d.mc mzmc, a.dwdh,a.brdz,a.dwyb,a.zkze,a.zfze,a.yjze-a.zfze syyj,a.dbr,');
      Qry_ksbr.SQL.Add(' a.dbrdz,a.nxrdh,a.hkyb,a.bch,a.ryzd,a.ksdm,f.mc ksmc,a.zgys,h.mc ysxm,a.zycs,');
      Qry_ksbr.SQL.Add(' a.fylb,e.mc lbmc,a.ryks,g.mc ryksmc,a.sfzhm,a.rybq,a.rytj,i.sm tjmc,a.ryrq,');
      Qry_ksbr.SQL.Add('  a.zdjf,a.yjze,a.zfy,a.ybndzje,a.ryczy,j.mc czyxm,a.bz,e.zfzdmc,e.yjbz,e.jzxe ,a.cyrq');
      Qry_ksbr.SQL.Add(' from zysf_zydj a, sys_sf b ,sys_jg c ,sys_mz d,sys_fylb e,sys_ksdm f,sys_ksdm g,sys_czy h,');
      Qry_ksbr.SQL.Add(' zysf_rytj i,sys_czy j');
      Qry_ksbr.SQL.Add(' where a.brsf*=b.dm and a.brjg*=c.dm and a.brmz*=d.dm and a.ksdm*=f.dm and a.fylb*=e.dm and ');
      Qry_ksbr.SQL.Add(' a.ryks*=g.dm and a.zgys*=h.dm and a.rytj*=i.dm and a.ryczy*=j.dm and a.ksdm=' + #39 + '0362' + #39 + ' and a.cybz=0 order by djrq,brxm');
    end
    else
    begin
      Qry_ksbr.SQL.Add('select a.tmh,a.zyh,a.brxm,a.brnl,a.sbkh,a.csrq,a.brzy,a.brxb,a.brsf,b.mc sfmc,a.brjg,c.mc jgmc, ');
      Qry_ksbr.SQL.Add(' a.brmz,d.mc mzmc, a.dwdh,a.brdz,a.dwyb,a.zkze,a.zfze,a.yjze-a.zfze syyj,a.dbr,');
      Qry_ksbr.SQL.Add(' a.dbrdz,a.nxrdh,a.hkyb,a.bch,a.ryzd,a.ksdm,f.mc ksmc,a.zgys,h.mc ysxm,a.zycs,');
      Qry_ksbr.SQL.Add(' a.fylb,e.mc lbmc,a.ryks,g.mc ryksmc,a.sfzhm,a.rybq,a.rytj,i.sm tjmc,a.ryrq,');
      Qry_ksbr.SQL.Add('  a.zdjf,a.yjze,a.zfy,a.ybndzje,a.ryczy,j.mc czyxm,a.bz,e.zfzdmc,e.yjbz,e.jzxe ,a.cyrq');
      Qry_ksbr.SQL.Add(' from zysf_zydj a, sys_sf b ,sys_jg c ,sys_mz d,sys_fylb e,sys_ksdm f,sys_ksdm g,sys_czy h,');
      Qry_ksbr.SQL.Add(' zysf_rytj i,sys_czy j');
      Qry_ksbr.SQL.Add(' where a.zyh in (select distinct zyh from zysf_zyfymxz where czks=' + #39 + '0401' + #39 + ') and ');
      Qry_ksbr.SQL.Add('  a.brsf*=b.dm and a.brjg*=c.dm and a.brmz*=d.dm and a.ksdm*=f.dm and a.fylb*=e.dm and ');
      Qry_ksbr.SQL.Add(' a.ryks*=g.dm and a.zgys*=h.dm and a.rytj*=i.dm and a.ryczy*=j.dm and a.cybz=0 order by djrq,brxm');
    end;
    Qry_ksbr.Open;
  end;
end;

procedure Tfrm_ICU_sjtj.qry_kmmxAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  if qry_kmmx.RecordCount > 0 then
  begin
    CLB1.Items.Clear;
    qry_kmmx.First;
    for i := 0 to qry_kmmx.RecordCount - 1 do
    begin
      CLB1.Items.Add;
      CLB1.Items[i].Text := Trim(qry_kmmx.fieldbyname('kmdm').AsString) + ' ' + Trim(qry_kmmx.fieldbyname('kmmc').AsString);
      CLB1.Items[i].Checked := True;
      qry_kmmx.Next;
    end;
    CLB2.Items.Assign(CLB1.Items);
    CLB3.Items.Assign(CLB1.Items);
    CLB4.Items.Assign(CLB1.Items);
  end;
end;

procedure Tfrm_ICU_sjtj.CLB4Click(Sender: TObject);
var
  i: integer;
begin
  if CLB4.Items[CLB4.ItemIndex].Checked = False then
    CLB4.Items[CLB4.ItemIndex].Checked := True
  else
    CLB4.Items[CLB4.ItemIndex].Checked := False;
  if CLB4.Selected[0] then
    for i := 0 to CLB4.Items.Count - 1 do
      CLB4.Items[i].Checked := CLB4.Items[0].checked;
end;

procedure Tfrm_ICU_sjtj.CLB4ClickCheck(Sender: TObject; AIndex: Integer;
  APrevState, ANewState: TcxCheckBoxState);
begin
  if CLB4.Items[CLB4.ItemIndex].Checked = False then
    CLB4.Items[CLB4.ItemIndex].Checked := True
  else
    CLB4.Items[CLB4.ItemIndex].Checked := False;
end;

procedure Tfrm_ICU_sjtj.CLB1Click(Sender: TObject);
var
  i: integer;
begin
  if CLB1.Items[CLB1.ItemIndex].Checked = False then
    CLB1.Items[CLB1.ItemIndex].Checked := True
  else
    CLB1.Items[CLB1.ItemIndex].Checked := False;
  if CLB1.Selected[0] then
    for i := 0 to CLB1.Items.Count - 1 do
      CLB1.Items[i].Checked := CLB1.Items[0].checked;
end;

procedure Tfrm_ICU_sjtj.CLB2Click(Sender: TObject);
var
  i: integer;
begin
  if CLB2.Items[CLB2.ItemIndex].Checked = False then
    CLB2.Items[CLB2.ItemIndex].Checked := True
  else
    CLB2.Items[CLB2.ItemIndex].Checked := False;
  if CLB2.Selected[0] then
    for i := 0 to CLB2.Items.Count - 1 do
      CLB2.Items[i].Checked := CLB2.Items[0].checked;
end;

procedure Tfrm_ICU_sjtj.CLB3Click(Sender: TObject);
var
  i: integer;
begin
  if CLB3.Items[CLB3.ItemIndex].Checked = False then
    CLB3.Items[CLB3.ItemIndex].Checked := True
  else
    CLB3.Items[CLB3.ItemIndex].Checked := False;
  if CLB3.Selected[0] then
    for i := 0 to CLB3.Items.Count - 1 do
      CLB3.Items[i].Checked := CLB3.Items[0].checked;
end;

procedure Tfrm_ICU_sjtj.CLB1ClickCheck(Sender: TObject; AIndex: Integer;
  APrevState, ANewState: TcxCheckBoxState);
begin
  if CLB1.Items[CLB1.ItemIndex].Checked = False then
    CLB1.Items[CLB1.ItemIndex].Checked := True
  else
    CLB1.Items[CLB1.ItemIndex].Checked := False;
end;

procedure Tfrm_ICU_sjtj.CLB2ClickCheck(Sender: TObject; AIndex: Integer;
  APrevState, ANewState: TcxCheckBoxState);
begin
  if CLB2.Items[CLB2.ItemIndex].Checked = False then
    CLB2.Items[CLB2.ItemIndex].Checked := True
  else
    CLB2.Items[CLB2.ItemIndex].Checked := False;

end;

procedure Tfrm_ICU_sjtj.CLB3ClickCheck(Sender: TObject; AIndex: Integer;
  APrevState, ANewState: TcxCheckBoxState);
begin
  if CLB3.Items[CLB3.ItemIndex].Checked = False then
    CLB3.Items[CLB3.ItemIndex].Checked := True
  else
    CLB3.Items[CLB3.ItemIndex].Checked := False;
end;

procedure Tfrm_ICU_sjtj.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I, J: integer;
  tmp_Data: TDataSource;
begin
  try
    MoreData := True;
    i := 1;
    j := 0;
    tmp_Data := TDataSource.Create(self);
    if PageControl1.ActivePageIndex = 3 then
      tmp_Data.DataSet := sp_fydl_tj
    else
      if PageControl1.ActivePageIndex = 4 then
        tmp_Data.DataSet := sp_fydl_tj_fk
      else
        if PageControl1.ActivePageIndex = 5 then
          tmp_Data.DataSet := sp_fydl_tj_kd
        else
          if PageControl1.ActivePageIndex = 6 then
            tmp_Data.DataSet := sp_fydl_tj_fk_kd;

    if tmp_Data.DataSet.Eof then
      MoreData := False;
    fl01.Caption := '';
    fl02.Caption := '';
    fl03.Caption := '';
    fl04.Caption := '';
    fl05.Caption := '';
    fl06.Caption := '';

    for i := 1 to 2 do
    begin
      if tmp_Data.DataSet.Eof then
        break;
      case I of
        1: begin
            fl01.Caption := tmp_Data.DataSet.FieldByName('科室名称').AsString;
            fl02.Caption := tmp_Data.DataSet.FieldByName('费用大类').Asstring;
            fl03.Caption := format('%8.2f', [tmp_Data.dataset.FieldByName('费用金额').Asfloat]);
          end;
        2:
          begin
            fl04.Caption := tmp_Data.DataSet.FieldByName('科室名称').AsString;
            fl05.Caption := tmp_Data.DataSet.FieldByName('费用大类').Asstring;
            fl06.Caption := format('%8.2f', [tmp_Data.dataset.FieldByName('费用金额').Asfloat]);
          end;
      end;
      if (j > 0) and (i = 2) then
      begin
        fl04.Caption := '';
        fl05.Caption := '';
        fl06.Caption := '';
      end;
      if ((Pos('合计', tmp_Data.DataSet.FieldByName('科室名称').AsString) > 0) or
        (Pos('小计', tmp_Data.DataSet.FieldByName('科室名称').AsString) > 0)) and (i = 1) then
      begin
        j := 1;
        Continue;
      end
      else
      begin
        j := 0;
        tmp_Data.DataSet.Next;
      end;
    end;
  finally
    tmp_Data.Free;
  end;
end;

end.

