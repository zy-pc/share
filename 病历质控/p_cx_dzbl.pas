unit p_cx_dzbl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, OleCtrls, EMRPAD30Lib_TLB, Menus;

type
  Tfrm_cx_dzbl = class(TForm)
    qry_tree: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    edt_tmh: TEdit;
    edt_bllb: TEdit;
    BBtn_cx: TBitBtn;
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    qry_ksdm: TADOQuery;
    qry_dj: TADOQuery;
    ds_dj: TDataSource;
    ds_ksdm: TDataSource;
    DBGridEh2: TDBGridEh;
    treeview: TTreeView;
    EMRPad301: TEMRPad30;
    qry_bl_list: TADOQuery;
    qry_bl: TADOQuery;
    ds_bl_list: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure edt_tmhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_bllbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure treeviewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure treeviewDblClick(Sender: TObject);
    procedure treeviewExit(Sender: TObject);
    procedure BBtn_cxClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
  private
    { Private declarations }
    procedure Proc_CreateTree;
    procedure Proc_Selected_br;
    procedure Proc_Seek_brbl(const v_zyh, v_blid, v_fldm: string);
  public
    { Public declarations }
    pub_ksdm_Curr: Boolean; //只查当前科室
  end;

var
  frm_cx_dzbl: Tfrm_cx_dzbl;

implementation

uses p_dm;

{$R *.dfm}

procedure Tfrm_cx_dzbl.BBtn_cxClick(Sender: TObject);
var v_zyh, v_ksdm, v_bllb, v_wz: string;
begin
  v_zyh := '%';
  v_wz := '%';
  v_bllb := '%';
  if pub_ksdm_Curr then
    v_ksdm := pub_ksdm
  else
    v_ksdm := '%';
  if edt_tmh.Text <> '' then
    if qry_dj.Active then
    begin
      v_zyh := Trim(qry_dj.FieldByName('zyh').AsString);
      v_wz := Trim(qry_dj.FieldByName('wz').AsString);
    end;

  if Trim(edt_bllb.Text) <> '' then
    v_bllb := Trim(edt_bllb.Text);

  if not ((DBLookupComboBox1.Text = '<全部>') or (Trim(DBLookupComboBox1.Text) = '')) then
    v_ksdm := DBLookupComboBox1.KeyValue;

  qry_bl_list.Close;
  qry_bl_list.SQL.Clear;
  if (v_wz = 'ZY') or (v_wz = '%') then
    qry_bl_list.SQL.Add('select a.brxm,a.brnl,a.bch,b.mc ksmc,c.tmh,c.zyh,c.blid,c.fldm,c.blrq,c.blys,c.blmc,c.zzys,c.zgys' +
      ' from zysf_zydj a left join sys_ksdm b on a.ksdm=b.dm inner join zydzbl_zydzblmx c on a.zyh=c.zyh ' +
      ' where a.zyh like ' + #39 + v_zyh + #39 + ' and a.ksdm like ' + #39 + v_ksdm + #39 + ' and c.fldm like ' + #39 + v_bllb + #39);

  if (v_wz = 'CY') or (v_wz = '%') then
  begin
    if v_wz = '%' then
      qry_bl_list.SQL.Add(' union all ');

    qry_bl_list.SQL.Add('select a.brxm,a.brnl,a.bch,b.mc ksmc,c.tmh,c.zyh,c.blid,c.fldm,c.blrq,c.blys,c.blmc,c.zzys,c.zgys' +
      ' from zysf_cydj a left join sys_ksdm b on a.ksdm=b.dm inner join zydzbl_zydzblmx c on a.zyh=c.zyh ' +
      ' where a.zyh like ' + #39 + v_zyh + #39 + ' and a.ksdm like ' + #39 + v_ksdm + #39 + ' and c.fldm like ' + #39 + v_bllb + #39);
  end;

  if (v_wz = 'ZC') or (v_wz = '%') then
  begin
    if v_wz = '%' then
      qry_bl_list.SQL.Add(' union all ');
    qry_bl_list.SQL.Add('select a.brxm,a.brnl,a.bch,b.mc ksmc,c.tmh,c.zyh,c.blid,c.fldm,c.blrq,c.blys,c.blmc,c.zzys,c.zgys' +
      ' from zyzc_zysf_cydj a left join sys_ksdm b on a.ksdm=b.dm inner join zydzbl_zydzblmx c on a.zyh=c.zyh ' +
      ' where a.zyh like ' + #39 + v_zyh + #39 + ' and a.ksdm like ' + #39 + v_ksdm + #39 + ' and c.fldm like ' + #39 + v_bllb + #39);
  end;
  qry_bl_list.Open;
end;

procedure Tfrm_cx_dzbl.DBGridEh1DblClick(Sender: TObject);
begin
  if qry_bl_list.Active then
    if qry_bl_list.RecordCount > 0 then
    begin
      Proc_Seek_brbl(qry_bl_list.FieldByName('zyh').AsString, qry_bl_list.FieldByName('blid').AsString, Trim(qry_bl_list.FieldByName('fldm').AsString));
    end;
end;

procedure Tfrm_cx_dzbl.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if qry_bl_list.Active then
      if qry_bl_list.RecordCount > 0 then
      begin
        Proc_Seek_brbl(qry_bl_list.FieldByName('zyh').AsString, qry_bl_list.FieldByName('blid').AsString, Trim(qry_bl_list.FieldByName('fldm').AsString));
      end;
end;

procedure Tfrm_cx_dzbl.DBGridEh2DblClick(Sender: TObject);
begin
  Proc_Selected_br;
end;

procedure Tfrm_cx_dzbl.DBGridEh2Exit(Sender: TObject);
begin
  DBGrideh2.Visible := False;
end;

procedure Tfrm_cx_dzbl.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    Proc_Selected_br;
end;

procedure Tfrm_cx_dzbl.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    edt_bllb.SetFocus;
end;

procedure Tfrm_cx_dzbl.edt_bllbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    treeview.Visible := True;
    treeview.SetFocus;
  end;
end;

procedure Tfrm_cx_dzbl.edt_tmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var v_txt: string;
begin
  if key = 13 then
  begin
    v_txt := '%' + Trim(Edt_tmh.Text) + '%';
    qry_dj.Close;
    qry_dj.Parameters.ParamByName('tmh1').Value := v_txt;
    qry_dj.Parameters.ParamByName('tmh2').Value := v_txt;
    qry_dj.Parameters.ParamByName('tmh3').Value := v_txt;
    qry_dj.Parameters.ParamByName('bch1').Value := v_txt;
    qry_dj.Parameters.ParamByName('bch2').Value := v_txt;
    qry_dj.Parameters.ParamByName('bch3').Value := v_txt;
    qry_dj.Parameters.ParamByName('brxm1').Value := v_txt;
    qry_dj.Parameters.ParamByName('brxm2').Value := v_txt;
    qry_dj.Parameters.ParamByName('brxm3').Value := v_txt;
    qry_dj.Parameters.ParamByName('bah1').Value := v_txt;
    qry_dj.Parameters.ParamByName('bah2').Value := v_txt;
    qry_dj.Parameters.ParamByName('bah3').Value := v_txt;
    if pub_ksdm_Curr then
    begin
      qry_dj.Parameters.ParamByName('ksdm1').Value := pub_ksdm;
      qry_dj.Parameters.ParamByName('ksdm2').Value := pub_ksdm;
      qry_dj.Parameters.ParamByName('ksdm3').Value := pub_ksdm;
    end
    else
    begin
      qry_dj.Parameters.ParamByName('ksdm1').Value := '%';
      qry_dj.Parameters.ParamByName('ksdm2').Value := '%';
      qry_dj.Parameters.ParamByName('ksdm3').Value := '%';
    end;
    qry_dj.Open;
    if qry_dj.RecordCount > 1 then
    begin
      DBGrideh2.Visible := True;
      DBGrideh2.SetFocus;
    end
    else if qry_dj.RecordCount = 1 then
    begin
      Proc_Selected_br
    end
    else
      Application.MessageBox('提示:请输入正确的检查条件!', '提示', MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_cx_dzbl.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
  EMRPad301.UniversalBoolFunction('46772A-PCT6LE-2T002G-E0ZIJP', '', 98, 2006102911);
  PageControl1.ActivePage := TabSheet1;
  Proc_CreateTree;
  treeview.AutoExpand := true;
  qry_ksdm.Close;
  if pub_ksdm_Curr then
    qry_ksdm.Parameters.ParamByName('dm').Value := pub_ksdm
  else
    qry_ksdm.Parameters.ParamByName('dm').Value := '%';
  qry_ksdm.Open;
end;

procedure Tfrm_cx_dzbl.N1Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(3);
end;

procedure Tfrm_cx_dzbl.N2Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(1);
  EMRPad301.EditAutoRange;
  EMRPad301.SetDocumentMode(2);
end;

procedure Tfrm_cx_dzbl.N3Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(1);
  EMRPad301.Print(0);
  EMRPad301.SetDocumentMode(2);
end;

procedure Tfrm_cx_dzbl.N4Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(1);
  EMRPad301.Print(2);
  EMRPad301.SetDocumentMode(2);
end;

procedure Tfrm_cx_dzbl.N5Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(1);
  EMRPad301.Print(1);
  EMRPad301.SetDocumentMode(2);
end;

procedure Tfrm_cx_dzbl.N6Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(1);
  EMRPad301.PageSetup;
  EMRPad301.SetDocumentMode(2);
end;

procedure Tfrm_cx_dzbl.N8Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(1);
  EMRPad301.ViewLineIndex;
  EMRPad301.SetDocumentMode(2);
end;

procedure Tfrm_cx_dzbl.Proc_CreateTree;
const
  ID_DEPT = 3;
var
  nLevel: Integer;
  pNodes: array[0..10] of TTreeNode;
  lpID, lpName: string;
begin
  with qry_tree do
  begin
    Close;
    Open;
    pNodes[0] := nil;
    treeview.Items.Clear;
    while not Eof do
    begin
      lpID := Trim(FieldByName('dm').AsString);
      lpName := Trim(FieldByName('mc').AsString);
      lpID := '0' + lpID;
      nLevel := Length(lpID) div ID_DEPT;
      pNodes[nLevel] := treeview.Items.AddChild(pNodes[nLevel - 1], lpName);
      Next;
    end;
  end;
end;

procedure Tfrm_cx_dzbl.Proc_Seek_brbl(const v_zyh, v_blid, v_fldm: string);
var v_Stream: TADOBlobStream;
  v_FileStream: TFileStream;
  v_filename: string;
begin
  v_filename := GetCurrentDir + '\' + 'etemp';
  qry_bl.Close;
  qry_bl.Parameters.ParamByName('zyh').Value := v_zyh;
  qry_bl.Parameters.ParamByName('blid').Value := v_blid;
  qry_bl.Parameters.ParamByName('fldm').Value := v_fldm;
  qry_bl.Open;
  if qry_bl.RecordCount <= 0 then
    Application.MessageBox('提示:病历文件不存在!', '提示', MB_ICONINFORMATION)
  else
  begin
    try
      v_Stream := TADOBlobStream.Create(qry_bl.FieldByName('blwj') as TBlobField, bmRead);
      v_Stream.Position := 0;
      try
        v_FileStream := TFileStream.Create(v_filename, fmCreate);
        v_FileStream.Position := 0;
        v_FileStream.CopyFrom(v_Stream, v_Stream.Size);
      finally
        v_FileStream.Free;
      end;
    finally
      v_Stream.Free;
    end;
    EMRPad301.FileOpen(v_filename, 0);
    EMRPad301.SetDocumentMode(2);
    EMRPad301.UniversalBoolFunction('住院号', trim(qry_bl_list.FieldByName('tmh').AsString), 35, 2);
  end;
  PageControl1.ActivePage := TabSheet2;
end;

procedure Tfrm_cx_dzbl.Proc_Selected_br;
begin
  edt_tmh.Text := qry_dj.FieldByName('tmh').AsString;
  DBLookupComboBox1.SetFocus;
end;

procedure Tfrm_cx_dzbl.SpeedButton1Click(Sender: TObject);
begin
  treeview.Visible := True;
  treeview.SetFocus;
end;

procedure Tfrm_cx_dzbl.treeviewDblClick(Sender: TObject);
var v_str: string;
begin
  v_str := Trim(treeview.Selected.Text);
  qry_tree.Locate('mc', v_str, []);
  edt_bllb.Text := Trim(qry_tree.FieldByName('dm').AsString);
  BBtn_cx.SetFocus;
end;

procedure Tfrm_cx_dzbl.treeviewExit(Sender: TObject);
begin
  treeview.Visible := False;
end;

procedure Tfrm_cx_dzbl.treeviewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var v_str: string;
begin
  if key = 13 then
  begin
    v_str := Trim(treeview.Selected.Text);
    qry_tree.Locate('mc', v_str, []);
    edt_bllb.Text := Trim(qry_tree.FieldByName('dm').AsString);
    BBtn_cx.SetFocus;
  end;
end;

end.

