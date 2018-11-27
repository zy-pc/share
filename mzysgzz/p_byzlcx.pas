unit p_byzlcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, Db, ADODB,
  OleCtrls, SHDocVw, ComCtrls, Tabs, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxTextEdit,
  cxGridDBTableView, cxCheckBox,Variants;

type
  Tfrm_byzlcx = class(TForm)
    ds_byzl: TDataSource;
    sp_cx_zlxx: TADOStoredProc;
    ds_zlxx: TDataSource;
    ad_cx_bl: TADODataSet;
    pnl1: TPanel;
    lbl1: TLabel;
    edt_tmh: TEdit;
    lbl2: TLabel;
    dtp_ksrq: TDateTimePicker;
    dtp_jsrq: TDateTimePicker;
    lbl3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    pnl_list: TPanel;
    pnl_byzl: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    e_brxm: TDBEdit;
    e_xb: TDBEdit;
    e_nl: TDBEdit;
    e_jtzz: TDBEdit;
    webbrowser1: TWebBrowser;
    ts1: TTabSet;
    e_tmh: TDBEdit;
    b_bj: TBitBtn;
    b_bc: TBitBtn;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBTableView1tmh: TcxGridDBColumn;
    cxGrid3DBTableView1zdrq: TcxGridDBColumn;
    cxGrid3DBTableView1czysmc: TcxGridDBColumn;
    cxGrid3DBTableView1brxm: TcxGridDBColumn;
    cxGrid3DBTableView1brnl: TcxGridDBColumn;
    cxGrid3DBTableView1brxb: TcxGridDBColumn;
    cxGrid3DBTableView1jtzz: TcxGridDBColumn;
    cxGrid3DBTableView1yszd: TcxGridDBColumn;
    cxGrid3DBTableView1zyzdmc: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet;
    GridBandedTableViewStyleSheetMarinehighcolor: TcxGridBandedTableViewStyleSheet;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    Label6: TLabel;
    Label7: TLabel;
    e_cyzd: TEdit;
    ad_jbcx: TADODataSet;
    ds_jbbm: TDataSource;
    DBGrid_Jb: TDBGrid;
    ad_cx_zd: TADODataSet;
    ds_byzd: TDataSource;
    zyzd: TEdit;
    e_zyzd: TEdit;
    cxGrid3DBTableView1zyzd: TcxGridDBColumn;
    cxGrid3DBTableView1iscrb: TcxGridDBColumn;
    sp_cx_zlxxid: TIntegerField;
    sp_cx_zlxxtmh: TStringField;
    sp_cx_zlxxzdrq: TDateTimeField;
    sp_cx_zlxxczys: TStringField;
    sp_cx_zlxxczysmc: TStringField;
    sp_cx_zlxxczks: TStringField;
    sp_cx_zlxxbrxm: TStringField;
    sp_cx_zlxxbrnl: TStringField;
    sp_cx_zlxxbrxb: TStringField;
    sp_cx_zlxxjtzz: TStringField;
    sp_cx_zlxxyszd: TMemoField;
    sp_cx_zlxxzyzd: TStringField;
    sp_cx_zlxxzyzdmc: TStringField;
    sp_cx_zlxxiscrb: TBooleanField;
    sp_cx_zlxxysct: TMemoField;
    sp_cx_zlxxzybz: TStringField;
    cxGrid3DBTableView1ysct: TcxGridDBColumn;
    cxGrid3DBTableView1zybz: TcxGridDBColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ts1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure b_bjClick(Sender: TObject);
    procedure b_bcClick(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxGrid3DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure sp_cx_zlxxAfterOpen(DataSet: TDataSet);
    procedure pnl_byzlExit(Sender: TObject);
    procedure DBGrid_JbDblClick(Sender: TObject);
    procedure DBGrid_JbExit(Sender: TObject);
    procedure DBGrid_JbKeyPress(Sender: TObject; var Key: Char);
    procedure ad_cx_zdAfterOpen(DataSet: TDataSet);
    procedure zyzdKeyPress(Sender: TObject; var Key: Char);
    procedure zyzdExit(Sender: TObject);
    procedure e_zyzdKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    iscrb: Boolean;
    { Private declarations }
    v_tmh, v_rq: string;
    zt: Integer;
    procedure Proc_Show_blxx();
  public
    { Public declarations }
  end;

var
  frm_byzlcx: Tfrm_byzlcx;
  buffer: array[0..255] of char;
procedure Proc_Show_byzlcx(zt, mz_zyh: string;vksrq:TDateTime);
implementation
uses p_dm, p_func;
{$R *.DFM}

procedure Proc_Show_byzlcx(zt, mz_zyh: string;vksrq:TDateTime);
begin
  try
    application.CreateForm(Tfrm_byzlcx, frm_byzlcx);
    if zt = 'read' then
    begin
      frm_byzlcx.zt := 1;
    end
    else
    begin
      frm_byzlcx.zt := 0;
    end;
    frm_byzlcx.dtp_ksrq.DateTime:=vksrq;
    frm_byzlcx.edt_tmh.Text := mz_zyh;
    frm_byzlcx.ShowModal;
  finally
    frm_byzlcx.free;
  end;
end;

procedure Tfrm_byzlcx.ad_cx_zdAfterOpen(DataSet: TDataSet);
begin
  e_cyzd.Text := ad_cx_zd.FieldByName('yszd').AsString;
  zyzd.Text := ad_cx_zd.FieldByName('zyzd').AsString;
  iscrb := ad_cx_zd.FieldByName('iscrb').AsBoolean;
end;

procedure Tfrm_byzlcx.BitBtn1Click(Sender: TObject);
var
  v_bh_Str: string;
  v_ksrq, v_jsrq: string;
  v_bh_int: Integer;
begin
  v_bh_Str := Trim(edt_tmh.text);
  if Trim(v_bh_Str) <> '' then
  begin
    //    if length( v_bh_Str ) <= 9 then
    //    begin
    //      TryStrToInt( v_bh_Str, v_bh_int );
    //      v_bh_str := formatex( v_bh_int, 9 );
    //    end;
    v_bh_str := Trim(v_bh_Str);
  end;

  v_ksrq := FormatDateTime('yyyyMMdd', dtp_ksrq.DateTime);
  v_jsrq := FormatDateTime('yyyyMMdd', dtp_jsrq.DateTime);
  sp_cx_zlxx.Close;
  sp_cx_zlxx.Parameters.Refresh;
  sp_cx_zlxx.Parameters.ParamByName('@kh').value := v_bh_str;
  if Assigned(sp_cx_zlxx.Parameters.FindParam('@ksrq')) then
  begin
    sp_cx_zlxx.Parameters.ParamByName('@ksrq').Value := v_ksrq;
    sp_cx_zlxx.Parameters.ParamByName('@jsrq').Value := v_jsrq;
  end;
  if zt = 1 then
    sp_cx_zlxx.Parameters.ParamByName('@ysdm').Value := pub_czydm
  else
    sp_cx_zlxx.Parameters.ParamByName('@ysdm').Value := '';
  sp_cx_zlxx.Open;
  sp_cx_zlxx.First; //取第条数据
  ts1.TabIndex := 0;
end;

function DoRemoveDir(sDirName: string): Boolean;
var
  hFindFile: Cardinal;
  tfile: string;
  sCurDir: string;
  bEmptyDir: Boolean;
  FindFileData: WIN32_FIND_DATA;
begin

  //如果删除的是空目录,则置bEmptyDir为True
  //初始时,bEmptyDir为True
  bEmptyDir := True;
  //先保存当前目录
  sCurDir := GetCurrentDir;
  SetLength(sCurDir, Length(sCurDir));
  ChDir(sDirName);
  hFindFile := FindFirstFile('*.*', FindFileData);
  if hFindFile <> INVALID_HANDLE_VALUE then
  begin
    repeat
      tfile := FindFileData.cFileName;
      if (tfile = '.') or (tfile = '..') then
      begin
        bEmptyDir := bEmptyDir and True;
        Continue;
      end;
      //不是空目录,置bEmptyDir为False
      bEmptyDir := False;
      if FindFileData.dwFileAttributes =
        FILE_ATTRIBUTE_DIRECTORY then
      begin
        if sDirName[Length(sDirName)] <> '\' then
          DoRemoveDir(sDirName + '\' + tfile)
        else
          DoRemoveDir(sDirName + tfile);
        if not RemoveDirectory(PChar(tfile)) then
          result := false
        else
          result := true;
      end
      else
      begin
        if not DeleteFile(PChar(tfile)) then
          result := false
        else
          result := true;
      end;
    until FindNextFile(hFindFile, FindFileData) = false;
    //FindClose(hFindFile);
  end
  else
  begin
    ChDir(sCurDir);
    result := false;
    exit;
  end;
  //如果是空目录,则删除该空目录
  if bEmptyDir then
  begin
    //返回上一级目录
    ChDir('..');
    //删除空目录
    RemoveDirectory(PChar(sDirName));
  end;

  //回到原来的目录下
  ChDir(sCurDir);
  result := true;
end;

function DeleteDir(sDirName: string): Boolean;
begin
  if Length(sDirName) <= 0 then
    exit;
  //删除...
  Result := DoRemoveDir(sDirName) and RemoveDir(sDirName);
end;

procedure Tfrm_byzlcx.FormCreate(Sender: TObject);
var
  P: string;
begin
  {try
    P := 'c:\' + 'cookie'; //要写完整路径。
    if DirectoryExists(p) then
      DeleteDir(p);
    if not DirectoryExists(p) then
      if not CreateDir(p) then
        raise Exception.Create('Cannot create .\cookie');
  except
  end;}
end;

procedure Tfrm_byzlcx.FormShow(Sender: TObject);
begin
  if zt = 1 then
  begin
    b_bj.Visible := False;
    b_bc.Visible := False;
  end
  else
  begin
    b_bj.Visible := True;
    b_bc.Visible := True;
    b_bc.Enabled := False;
  end;
  e_tmh.ReadOnly := True;
  e_brxm.ReadOnly := True;
  e_xb.ReadOnly := True;
  e_nl.ReadOnly := True;
  e_jtzz.ReadOnly := True;
  e_zyzd.ReadOnly := True;
  e_cyzd.ReadOnly := True;
  cxGrid3.Align := alClient;
  webbrowser1.Align := alClient;
 // dtp_ksrq.DateTime := Frm_func.curr_date;
  dtp_jsrq.DateTime := Frm_func.curr_date;;
end;

procedure Tfrm_byzlcx.pnl_byzlExit(Sender: TObject);
begin
  if zt = 1 then
  begin
    b_bj.Visible := False;
    b_bc.Visible := False;
  end
  else
  begin
    b_bj.Visible := True;
    b_bc.Visible := True;
    b_bc.Enabled := False;
  end;
  e_tmh.ReadOnly := True;
  e_brxm.ReadOnly := True;
  e_xb.ReadOnly := True;
  e_nl.ReadOnly := True;
  e_jtzz.ReadOnly := True;
  e_zyzd.ReadOnly := True;
  e_cyzd.ReadOnly := True;
end;

procedure Tfrm_byzlcx.Proc_Show_blxx();
var
  v_sss: TstringList;
  v_file: string;
  v_gmsj: string;
  v_gmbz: Integer;

begin
  ad_cx_bl.close;
  ad_cx_bl.CommandText :='select id,bl from dzbl_brbl_all where tmh=:tmh and  CONVERT(CHAR(19),zdrq,120) =:zlrq';
  ad_cx_bl.Parameters.ParamByName('zlrq').Value := v_rq;
  ad_cx_bl.Parameters.ParamByName('tmh').Value := v_tmh;
  ad_cx_bl.Open;
  webbrowser1.navigate('about:blank');
  if ad_cx_bl.RecordCount > 0 then
  begin
    v_sss := TStringList.Create;
    v_file := 'C:\1.html';
    try
      v_sss.Add(ad_cx_bl.fieldbyname('bl').asstring);
      v_sss.SaveToFile(v_file);
    finally
      v_sss.free
    end;
    webbrowser1.Navigate(v_file);
  end;
  ad_cx_zd.close;
  ad_cx_zd.Parameters.ParamByName('tmh').Value := v_tmh;
  ad_cx_zd.Parameters.ParamByName('zlrq').Value := v_rq;
  ad_cx_zd.CommandText;
  ad_cx_zd.Open;
  if ad_cx_zd.RecordCount > 0 then
  begin
    iscrb := ad_cx_zd.FieldByName('iscrb').AsBoolean;
    zyzd.Text := Trim(ad_cx_zd.FieldByName('zyzd').AsString);
    e_zyzd.Text := Trim(ad_cx_zd.FieldByName('zyzdmc').AsString);
    e_cyzd.Text := Trim(ad_cx_zd.FieldByName('yszd').AsString);
  end;
end;

procedure Tfrm_byzlcx.sp_cx_zlxxAfterOpen(DataSet: TDataSet);
begin
  cxGrid3DBTableView1.DataController.Groups.FullExpand;
end;

procedure Tfrm_byzlcx.ts1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  if ts1.Tabs.Strings[NewTab] = '病员列表' then
    pnl_list.BringToFront
  else
    if ts1.Tabs.Strings[NewTab] = '病员资料' then
      pnl_byzl.BringToFront;
end;

procedure Tfrm_byzlcx.zyzdExit(Sender: TObject);
begin
  if trim(zyzd.text) <> '' then
  begin
    ad_jbcx.Close;
    ad_jbcx.Parameters.ParamByName('jbmc').value := '%' + trim(zyzd.text) + '%';
    ad_jbcx.Parameters.ParamByName('pym').value := '%' + trim(zyzd.text) + '%';
    ad_jbcx.Parameters.ParamByName('jbbm').value := trim(zyzd.text) + '%';
    ad_jbcx.Open;
    if ad_jbcx.IsEmpty then
    begin
      application.MessageBox('未找到疾病，请重新输入', '提示', mb_ok);
      zyzd.setfocus;
    end
    else
      if ad_jbcx.RecordCount > 1 then
      begin
        DBGrid_Jb.Visible := true;
        //        DBGrid_Jb.Top := 30;
        //        DBGrid_Jb.Left := 329;
        DBGrid_Jb.DataSource := ds_jbbm;
        DBGrid_Jb.setfocus;
      end
      else
      begin
        iscrb := ad_jbcx.FieldByName('crbsb').Asboolean;
        e_zyzd.Text := Trim(ad_jbcx.FieldByName('jbmc').AsString);
        zyzd.Text := Trim(ad_jbcx.FieldByName('jbbm').AsString);
        iscrb := ad_jbcx.FieldByName('crbsb').AsBoolean;
      end;
  end;
end;

procedure Tfrm_byzlcx.zyzdKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    e_zyzd.SetFocus;
end;

procedure Tfrm_byzlcx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_byzlcx.BitBtn3Click(Sender: TObject);
var
  TempEmptyParam :OleVariant; {---处理先打印历史病历再处置病人报错  author: zhangwancai---}
begin
  ad_cx_bl.close;
  ad_cx_bl.Parameters.ParamByName('tmh').Value := v_tmh;
  ad_cx_bl.Parameters.ParamByName('zlrq').Value := v_rq;
  ad_cx_bl.Open;
  if ad_cx_bl.RecordCount > 0 then
  begin
    TempEmptyParam :=Variants.EmptyParam;
    webbrowser1.ExecWB(6,1);
    Variants.EmptyParam := TempEmptyParam;
  end else
  begin
   Application.MessageBox('打印的电子病历无数据内容！', '警告', MB_OK +
     MB_ICONWARNING);
  end;
end;

procedure Tfrm_byzlcx.b_bjClick(Sender: TObject);
begin
  if ad_cx_zd.Active then
  begin
    if ad_cx_zd.State <> dsedit then
      ad_cx_zd.Edit;
    e_nl.ReadOnly := False;
    e_brxm.ReadOnly := False;
    e_jtzz.ReadOnly := False;
    e_zyzd.ReadOnly := False;
    e_cyzd.ReadOnly := False;
    zyzd.Enabled := True;
    b_bc.Enabled := True;
  end;
end;

procedure Tfrm_byzlcx.b_bcClick(Sender: TObject);
var
  _crb: string;
begin
  if iscrb then
    _crb := '1'
  else
    _crb := '0';
  if ad_cx_zd.State = dsEdit then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'select * from dzbl_brbl_last where tmh=' + #39 + v_tmh + #39 +
      ' and convert(char(19),zdrq,120)=' + #39 + v_rq + #39;
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.RecordCount > 0 then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'update dzbl_brbl_last set yszd=' + #39 + Trim(e_cyzd.Text) + #39 +
        ',iscrb=' + _crb + ',zyzd=' + #39 + Trim(zyzd.Text) + #39 + ',zyzdmc=' + #39 + Trim(e_zyzd.Text) + #39 +
        ' where tmh=' + #39 + v_tmh + #39 +
        ' and convert(char(19),zdrq,120)=' + #39 + v_rq + #39;
      DM_data.qry_pub.ExecSQL;
    end
    else
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'update dzbl_brbl set yszd=' + #39 + Trim(e_cyzd.Text) + #39 +
        ',iscrb=' + _crb + ',zyzd=' + #39 + Trim(zyzd.Text) + #39 + ',zyzdmc=' + #39 + Trim(e_zyzd.Text) + #39 +
        ' where tmh=' + #39 + v_tmh + #39 +
        ' and convert(char(19),zdrq,120)=' + #39 + v_rq + #39;
      DM_data.qry_pub.ExecSQL;
    end;
    ad_cx_zd.Post;
    ad_cx_zd.UpdateBatch(arall);
    e_nl.ReadOnly := True;
    e_brxm.ReadOnly := True;
    e_jtzz.ReadOnly := True;
    e_zyzd.ReadOnly := True;
    e_cyzd.ReadOnly := True;
    zyzd.Enabled := False;
    b_bj.Enabled := True;
    b_bc.Enabled := False;
    BitBtn1.Click;
  end;
end;

procedure Tfrm_byzlcx.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
  if sp_cx_zlxx.Active then
  begin
    v_tmh := Trim(sp_cx_zlxx.FieldByName('tmh').asstring);
    //ShowMessage(sp_cx_zlxx.FieldByName('iscrb').asstring);
    v_rq := FormatDateTime('yyyy-MM-dd hh:mm:ss', sp_cx_zlxx.FieldByName('zdrq').AsDateTime);
    Proc_Show_blxx();
    ts1.TabIndex := 1;
    webbrowser1.SetFocus;
  end;
end;

procedure Tfrm_byzlcx.cxGrid3DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if sp_cx_zlxx.Active then
    begin
      v_tmh := Trim(sp_cx_zlxx.FieldByName('tmh').asstring);
      v_rq := FormatDateTime('yyyy-MM-dd hh:mm:ss', sp_cx_zlxx.FieldByName('zdrq').AsDateTime);
      Proc_Show_blxx();
      ts1.TabIndex := 1;
      webbrowser1.SetFocus;
    end;
  end;
end;

procedure Tfrm_byzlcx.DBGrid_JbDblClick(Sender: TObject);
begin
  iscrb := ad_jbcx.FieldByName('crbsb').Asboolean;
  e_zyzd.Text := ad_jbcx.FieldByName('jbmc').AsString;
  zyzd.Text := ad_jbcx.FieldByName('jbbm').AsString;
  e_zyzd.SetFocus;
end;

procedure Tfrm_byzlcx.DBGrid_JbExit(Sender: TObject);
begin
  dbgrid_Jb.visible := false;
end;

procedure Tfrm_byzlcx.DBGrid_JbKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    iscrb := ad_jbcx.FieldByName('crbsb').Asboolean;
    zyzd.Text := ad_jbcx.FieldByName('jbbm').AsString;
    e_zyzd.Text := ad_jbcx.FieldByName('jbmc').AsString;
    e_zyzd.SetFocus;
  end;
end;

procedure Tfrm_byzlcx.e_zyzdKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    e_cyzd.SetFocus;
end;

end.
