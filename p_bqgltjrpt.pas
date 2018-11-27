unit p_zysftjrpt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Buttons, Grids, DBGrids, Db,
  DBTables, ADODB, DBGridEh, Menus, GridsEh;

type
  Tfrm_bqgltjrpt = class(TForm)
    star_date: TDateTimePicker;
    end_date: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    rbfymx: TRadioButton;
    rbfydl: TRadioButton;
    GroupBox2: TGroupBox;
    rbkdks: TRadioButton;
    rbczks: TRadioButton;
    GroupBox1: TGroupBox;
    rbjzsj: TRadioButton;
    rbqbsj: TRadioButton;
    Label3: TLabel;
    dbBoxfydl: TDBLookupComboBox;
    b_dy: TBitBtn;
    b_tj: TBitBtn;
    b_tc: TBitBtn;
    ds_fydl: TDataSource;
    ds_tjdl: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qry_fydl: TADOQuery;
    sp_czksdl: TADOStoredProc;
    sp_ksfydm: TADOStoredProc;
    DBGrid2: TDBGridEh;
    sp_kdksdl: TADOStoredProc;
    DBGrid1: TDBGridEh;
    rbkdys: TRadioButton;
    rbczys: TRadioButton;
    sp_kdysdl: TADOStoredProc;
    sp_czysdl: TADOStoredProc;
    ad_cxks: TADODataSet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label4: TLabel;
    procedure b_tcClick(Sender: TObject);
    procedure b_tjClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure b_dyClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumnEh);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    tjcs: string;
    tjsj: string;
    kslb: string;
    fylb: string;
    fydl: string;
    { Private declarations }
  public
    fydm: string;
    fymc: string;
    ksdm: string;
    ksmc: string;
    { Public declarations }
  end;

var
  frm_bqgltjrpt: Tfrm_bqgltjrpt;

implementation
uses p_dm, p_func, p_report, p_select, p_kskjkmsfmx, p_ksfyly, p_ksfyly_br;

{$R *.DFM}

procedure Tfrm_zysftjrpt.b_tcClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zysftjrpt.b_tjClick(Sender: TObject);
var
  i: integer;
begin
  if rbqbsj.Checked = true then tjsj := '1' else tjsj := '2';
  if rbkdks.Checked = true then
    kslb := '1'
  else
    if rbczks.checked = true then
      kslb := '2'
    else
      if rbkdys.checked = true then
        kslb := '3'
      else
        kslb := '4';

  if rbfydl.Checked = true then
  begin
    fylb := '1';
    dbgrid1.Visible := false;
    dbgrid2.Visible := true;
  end
  else
  begin
    fylb := '2';
    dbgrid1.Visible := true;
    dbgrid2.Visible := false;
  end;
  if (dbboxfydl.Text = '') and (fylb = '1') then
  begin
    application.MessageBox('请选择要统计的费用大类', '提示', 0 + 16);
    dbboxfydl.SetFocus;
    abort;
  end;
  if fylb = '1' then
  begin
    fydl := dbboxfydl.keyvalue;
    if tjcs = '' then
      tjcs := '1'
    else
      if tjcs = '1' then tjcs := '2';
  end
  else fydl := '';
  if kslb = '1' then
  begin
    try
      ds_tjdl.DataSet := sp_kdksdl;
      dbgrid1.columns[0].Title.caption := '开单科室';
      dbgrid1.Columns[0].fieldname := 'ksmc';
      sp_kdksdl.Active := false;
      sp_kdksdl.Parameters.ParamByName('@s_date').value := star_date.DateTime;
      sp_kdksdl.Parameters.ParamByName('@e_date').value := end_DATE.DateTime;
      sp_kdksdl.Parameters.ParamByName('@fylb').value := fylb;
      sp_kdksdl.Parameters.ParamByName('@fydl').value := fydl;
      sp_kdksdl.Parameters.ParamByName('@sjlb').value := tjsj;
      sp_kdksdl.Open;
    except
      application.MessageBox('统计费用大类超过限制，请调整大类项目', '提示', 0 + 16);
    end;
  end
  else
    if kslb = '2' then
    begin
      try
        ds_tjdl.DataSet := sp_czksdl;
        dbgrid1.columns[0].Title.caption := '处置科室';
        dbgrid1.Columns[0].fieldname := 'ksmc';
        sp_czksdl.Active := false;
        sp_czksdl.Parameters.ParamByName('@s_date').value := star_date.DateTime;
        sp_czksdl.Parameters.ParamByName('@e_date').value := end_DATE.DateTime;
        sp_czksdl.Parameters.ParamByName('@fylb').value := fylb;
        sp_czksdl.Parameters.ParamByName('@fydl').value := fydl;
        sp_czksdl.Parameters.ParamByName('@sjlb').value := tjsj;
        sp_czksdl.Open;
      except
        application.MessageBox('统计费用大类超过限制，请调整大类项目', '提示', 0 + 16);
      end
    end
    else
      if kslb = '3' then
      begin
        try
          ds_tjdl.DataSet := sp_kdysdl;
          dbgrid1.columns[0].Title.caption := '开单医生';
          dbgrid1.Columns[0].fieldname := 'ysxm';
          sp_kdysdl.Active := false;
          sp_kdysdl.Parameters.ParamByName('@s_date').value := formatdatetime('yyyy-mm-dd', star_date.DateTime);
          sp_kdysdl.Parameters.ParamByName('@e_date').value := formatdatetime('yyyy-mm-dd', end_DATE.DateTime);
          sp_kdysdl.Parameters.ParamByName('@fylb').value := fylb;
          sp_kdysdl.Parameters.ParamByName('@fydl').value := fydl;
          sp_kdysdl.Parameters.ParamByName('@sjlb').value := tjsj;
          sp_kdysdl.Open;
        except
          application.MessageBox('统计费用大类超过限制，请调整大类项目', '提示', 0 + 16);
        end;
      end
      else
        if kslb = '4' then
        begin
          try
            ds_tjdl.DataSet := sp_czysdl;
            dbgrid1.columns[0].Title.caption := '处置医生';
            dbgrid1.Columns[0].fieldname := 'ysxm';
            sp_czysdl.Active := false;
            sp_czysdl.Parameters.ParamByName('@s_date').value := formatdatetime('yyyy-mm-dd', star_date.DateTime);
            sp_czysdl.Parameters.ParamByName('@e_date').value := formatdatetime('yyyy-mm-dd', end_DATE.DateTime);
            sp_czysdl.Parameters.ParamByName('@fylb').value := fylb;
            sp_czysdl.Parameters.ParamByName('@fydl').value := fydl;
            sp_czysdl.Parameters.ParamByName('@sjlb').value := tjsj;
            sp_czysdl.Open;
          except
            application.MessageBox('统计费用大类超过限制，请调整大类项目', '提示', 0 + 16);
          end;
        end;
  if fylb = '1' then
  begin
    for i := 0 to dbgrid2.Columns.Count - 1 do
    begin
      dbgrid2.Columns[i].Title.Alignment := taCenter;
      dbgrid2.Columns[i].width := 70;
      if dbgrid2.Columns[i].Title.Caption = '合计' then
      begin
        dbgrid2.Columns[i].Color := claqua;
        dbgrid2.Columns[i].width := 80;
      end;
    end;
  end;

end;

procedure Tfrm_zysftjrpt.FormShow(Sender: TObject);
begin
  if qry_fydl.Active = false then qry_fydl.Open;
  star_date.DateTime := frm_func.curr_date;
  end_date.DateTime := frm_func.curr_date;
end;

procedure Tfrm_zysftjrpt.b_dyClick(Sender: TObject);
var kslb: string;
  v_tile: string;
  v_qzrq: string;
  v_zbr: string;
  v_zbrq: string;
  v_desc: string;
  v_Array: array[0..0] of Integer; //有序
begin
  v_qzrq := '起止日期:' + formatdatetime('yyyy"年"mm"月"dd"日"', star_date.datetime) + ' 至 ' + formatdatetime('yyyy"年"mm"月"dd"日"', end_date.datetime);
  v_zbr := '制表人:' + pub_czyxm;
  v_zbrq := '制表日期:' + formatdatetime('yyyy-mm-dd', frm_func.curr_date);
  if rbkdks.Checked then
    v_tile := pub_yymc + '住院收费报表[处方科室]'
  else
    if rbczks.Checked then
      v_tile := pub_yymc + '住院收费报表[处置科室]'
    else
      if rbkdys.Checked then
        v_tile := pub_yymc + '住院收费报表[处方医生]'
      else
        if rbczys.Checked then
          v_tile := pub_yymc + '住院收费报表[处置医生]';
  application.CreateForm(Tfrm_report, frm_report);
  with frm_report do
  begin
    if func_SetReport() then
    begin
      ReportTitle := v_tile;
      Reportdesc := v_desc;
      ReportBeginDate := v_qzrq;
      ReportZbr := v_zbr;
      ReportZbrq := v_zbrq;
      if rbfymx.Checked then //明细
        Preview(DBGrid1, v_Array)
      else //大项
        Preview(DBGrid2, v_Array);
    end;
    Free;
  end;
end;

procedure Tfrm_zysftjrpt.BitBtn1Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_select, frm_select);
  frm_select.select_grideh := dbgrid2;
  try
    frm_select.showmodal;
  finally
    frm_select.Free;
  end;
end;

procedure Tfrm_zysftjrpt.BitBtn2Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_kskjkmsfmx, frm_kskjkmsfmx);
  try
    frm_kskjkmsfmx.ShowModal;
  finally
    frm_kskjkmsfmx.free;
  end;
end;

procedure Tfrm_zysftjrpt.DBGrid1CellClick(Column: TColumnEh);
begin
  try
    if kslb = '1' then
    begin
      ksmc := sp_kdksdl['ksmc'];
      fymc := sp_kdksdl['mc' + copy(dbgrid1.SelectedField.FieldName, 3, 1)];
    end
    else
    begin
      ksmc := sp_czksdl['ksmc'];
      fymc := sp_czksdl['mc' + copy(dbgrid1.SelectedField.FieldName, 3, 1)];
    end;
    sp_ksfydm.Active := false;
    sp_ksfydm.Parameters.ParamByName('@sr_fymc').value := fymc;
    sp_ksfydm.Parameters.ParamByName('@sr_ksmc').value := ksmc;
    sp_ksfydm.open;
    fydm := sp_ksfydm['fydm'];
    ksdm := sp_ksfydm['ksdm'];
  except
  end;
end;

procedure Tfrm_zysftjrpt.N1Click(Sender: TObject);
begin
  if (rbkdks.Checked or rbczks.Checked) and rbfydl.Checked and ds_tjdl.DataSet.Active then
  begin
    ad_cxks.Close;
    ad_cxks.Parameters.ParamByName('mc').value := ds_tjdl.DataSet.fieldbyname('科室名称').asstring;
    ad_cxks.Open;
    application.CreateForm(Tfrm_fylycx, frm_fylycx);
    try
      frm_fylycx.sp_ksfyly.Parameters.ParamByName('@s_date').value := formatdatetime('yyyymmdd', star_date.DateTime);
      frm_fylycx.sp_ksfyly.Parameters.ParamByName('@e_date').value := formatdatetime('yyyymmdd', end_date.DateTime);
      frm_fylycx.sp_ksfyly.Parameters.ParamByName('@fydl').value := fydl;
      if rbkdks.Checked then
        frm_fylycx.sp_ksfyly.Parameters.ParamByName('@tjlb').value := 2;
      if rbczks.Checked then
        frm_fylycx.sp_ksfyly.Parameters.ParamByName('@tjlb').value := 1;
      frm_fylycx.sp_ksfyly.Parameters.ParamByName('@ksdm').value := ad_cxks.fieldbyname('dm').asstring;
      frm_fylycx.sp_ksfyly.Open;
      if rbkdks.Checked then
        frm_fylycx.label1.Caption := ds_tjdl.DataSet.fieldbyname('科室名称').asstring + '本统计区间:' +
          formatdatetime('yyyy"年"mm"月"dd"日"', star_date.DateTime) + '-' +
          formatdatetime('yyyy"年"mm"月"dd"日"', end_date.DateTime) + '完成开单收入' +
          floattostr(ds_tjdl.DataSet.fieldbyname('合计').asfloat) + #13 + '并由以下科室按以下费用处置完成';
      if rbczks.Checked then
        frm_fylycx.label1.Caption := ds_tjdl.DataSet.fieldbyname('科室名称').asstring + '本统计区间:' +
          formatdatetime('yyyy"年"mm"月"dd"日"', star_date.DateTime) + '-' +
          formatdatetime('yyyy"年"mm"月"dd"日"', end_date.DateTime) + '完成处置收入' +
          floattostr(ds_tjdl.DataSet.fieldbyname('合计').asfloat) + #13 + '并由以下科室按以下费用开单构成';
      frm_fylycx.ShowModal;
    finally
      frm_fylycx.free;
    end;
  end
end;

procedure Tfrm_zysftjrpt.N2Click(Sender: TObject);
var v_sjlb: string;
    v_ksrq, v_jsrq: TDateTime;
    I: Integer;
begin
  if ds_tjdl.DataSet.Active then
  begin
    if DBGrid2.DataSource.DataSet is TADOStoredProc then
      v_sjlb := TADOStoredProc(DBGrid2.DataSource.DataSet).Parameters.ParamByName('@sjlb').value
    else
      v_sjlb := '1';

    v_ksrq:= TADOStoredProc(DBGrid2.DataSource.DataSet).Parameters.ParamByName('@s_date').value;
    v_jsrq:= TADOStoredProc(DBGrid2.DataSource.DataSet).Parameters.ParamByName('@e_date').value;

    ad_cxks.Close;
    ad_cxks.Parameters.ParamByName('mc').value := ds_tjdl.DataSet.fieldbyname('科室名称').asstring;
    ad_cxks.Open;

    if v_sjlb = '1' then
    begin
      if (rbkdks.Checked or rbczks.Checked) and rbfydl.Checked then
      begin
        application.CreateForm(Tfrm_fylycx_br, frm_fylycx_br);
        try
          frm_fylycx_br.sp_ksfyly.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', star_date.DateTime);
          frm_fylycx_br.sp_ksfyly.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', end_date.DateTime);
          if rbkdks.Checked then
            frm_fylycx_br.sp_ksfyly.Parameters.ParamByName('@cxlb').value := 1;
          if rbczks.Checked then
            frm_fylycx_br.sp_ksfyly.Parameters.ParamByName('@cxlb').value := 2;
          frm_fylycx_br.sp_ksfyly.Parameters.ParamByName('@ksdm').value := ad_cxks.fieldbyname('dm').asstring;
          frm_fylycx_br.sp_ksfyly.Open;
          if rbkdks.Checked then
            frm_fylycx_br.label1.Caption := ds_tjdl.DataSet.fieldbyname('科室名称').asstring + '本统计区间:' +
              formatdatetime('yyyy"年"mm"月"dd"日"', star_date.DateTime) + '-' +
              formatdatetime('yyyy"年"mm"月"dd"日"', end_date.DateTime) + '完成开单收入' +
              floattostr(ds_tjdl.DataSet.fieldbyname('合计').asfloat) + #13 + '并由以下病人费用构成';
          if rbczks.Checked then
            frm_fylycx_br.label1.Caption := ds_tjdl.DataSet.fieldbyname('科室名称').asstring + '本统计区间:' +
              formatdatetime('yyyy"年"mm"月"dd"日"', star_date.DateTime) + '-' +
              formatdatetime('yyyy"年"mm"月"dd"日"', end_date.DateTime) + '完成处置收入' +
              floattostr(ds_tjdl.DataSet.fieldbyname('合计').asfloat) + #13 + '并由以下病人费用构成';
          frm_fylycx_br.ShowModal;
        finally
          frm_fylycx_br.free;
        end;
      end;
    end
    else
    begin
        application.CreateForm(Tfrm_fylycx_br, frm_fylycx_br);
        try
          frm_fylycx_br.DBGridEh1.DataSource:= frm_fylycx_br.ds_jsqd;
          frm_fylycx_br.label1.Caption:= ds_tjdl.DataSet.fieldbyname('科室名称').asstring + '本统计区间:' + FormatDatetime('yyyy-mm-dd', v_ksrq) + '-' +
                                         FormatDatetime('yyyy-mm-dd', v_jsrq) + '结算病人情况';
          frm_fylycx_br.qry_jsqd.Parameters.ParamByName('ksrq').Value:= FormatDatetime('yyyy-mm-dd', v_ksrq);
          frm_fylycx_br.qry_jsqd.Parameters.ParamByName('jsrq').Value:= FormatDatetime('yyyy-mm-dd', v_jsrq);
          frm_fylycx_br.qry_jsqd.Parameters.ParamByName('ksdm').Value:= ad_cxks.fieldbyname('dm').AsString;
          frm_fylycx_br.qry_jsqd.Open;
          for I := 0 to frm_fylycx_br.DBGridEh1.Columns.Count - 1 do
            frm_fylycx_br.DBGridEh1.Columns.Items[i].Width:= 80;
          frm_fylycx_br.ShowModal;
        finally
          frm_fylycx_br.Free;
        end;
    end;
  end;
end;
initialization
  RegisterClass(Tfrm_zysftjrpt);
end.

