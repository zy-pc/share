unit P_blps_blcy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ComCtrls, DB, ADODB;

type
  Tfrm_blps_blcy = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    ComboBox1: TComboBox;
    spb_select: TSpeedButton;
    Lab_sl: TLabel;
    edt_sl: TEdit;
    GroupBox2: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    ds_bl_list: TDataSource;
    qry_cy: TADOQuery;
    ds_cy: TDataSource;
    qry_ksdm: TADOQuery;
    sp_bl_list: TADOStoredProc;
    Label4: TLabel;
    ComboBox2: TComboBox;
    qry_ys: TADOQuery;
    UpDown1: TUpDown;
    BBtn_cy: TBitBtn;
    BBtn_save: TBitBtn;
    BBtn_Clear: TBitBtn;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    cmd_exec: TADOCommand;
    qry_cyid: TADOQuery;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    Label5: TLabel;
    tmh: TEdit;
    Button1: TButton;
    Button2: TButton;
    Panel4: TPanel;
    Button3: TButton;
    Button4: TButton;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    DateTimePicker3: TDateTimePicker;
    Label7: TLabel;
    DateTimePicker4: TDateTimePicker;
    Label8: TLabel;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BBtn_saveClick(Sender: TObject);
    procedure BBtn_ClearClick(Sender: TObject);
    procedure BBtn_cyClick(Sender: TObject);
    procedure sp_bl_listAfterOpen(DataSet: TDataSet);
    procedure spb_selectClick(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure proc_sjlr; //加入到抽样记录
    procedure proc_lscy; //历史抽样
    procedure proc_add_ks(v_dm: string); //列表加入科室
    procedure proc_add_ys(v_dm: string); //列表加入医生


    function func_getCyid: Integer; //获取抽样ID
  public
    { Public declarations }
    pub_zycy: string;
    pub_Zt: Integer;
    procedure proc_Set_Cyfw(v_lx: Integer = 0); //v_lx=0:科室可选;1.科室不可以选;
  end;

var
  frm_blps_blcy: Tfrm_blps_blcy;

implementation

uses p_dm, p_func;

{$R *.dfm}

procedure Tfrm_blps_blcy.proc_Set_Cyfw(v_lx: Integer = 0);
begin
  if v_lx = 0 then
    proc_add_ks('')
  else if v_lx = 1 then
    proc_add_ks(pub_ksdm);
end;

procedure Tfrm_blps_blcy.proc_sjlr;
begin
  if pub_zycy='ZY' then
  begin
    with qry_cy do
    begin
      Append;
      FieldByName('tmh').AsString := sp_bl_list.FieldByName('tmh').AsString;
      FieldByName('zyh').AsString := sp_bl_list.FieldByName('zyh').AsString;
      FieldByName('xm').AsString := sp_bl_list.FieldByName('brxm').AsString;
      FieldByName('blmc').AsString := '病历抽样';
      FieldByName('blid').AsString := '1';
      FieldByName('mbdm').AsString := '000';
      FieldByName('ksdm').AsString := sp_bl_list.FieldByName('ksdm').AsString;
      FieldByName('blys').AsString := sp_bl_list.FieldByName('blysdm').AsString;
      FieldByName('cyks').AsString := pub_ksdm;
      FieldByName('cyry').AsString := pub_czydm;
      FieldByName('cylx').AsInteger := 1; //1.质控中心抽样;2.科室抽样
      FieldByName('bz').AsBoolean := False;
      Post;
    end;
  end
  else
  begin
    with qry_cy do
    begin
      Append;
      FieldByName('tmh').AsString := sp_bl_list.FieldByName('tmh').AsString;
      FieldByName('zyh').AsString := sp_bl_list.FieldByName('zyh').AsString;
      FieldByName('xm').AsString := sp_bl_list.FieldByName('brxm').AsString;
      FieldByName('blmc').AsString :=sp_bl_list.FieldByName('blmc').AsString;
      FieldByName('blid').AsString := sp_bl_list.FieldByName('blid').AsString;
      FieldByName('mbdm').AsString := sp_bl_list.FieldByName('mbdm').AsString;
      FieldByName('ksdm').AsString := sp_bl_list.FieldByName('ksdm').AsString;
      FieldByName('blys').AsString := sp_bl_list.FieldByName('blysdm').AsString;
      FieldByName('cyks').AsString := pub_ksdm;
      FieldByName('cyry').AsString := pub_czydm;
      FieldByName('cylx').AsInteger := 1; //1.质控中心抽样;2.科室抽样
      FieldByName('bz').AsBoolean := False;
      Post;
    end;
  end;
end;

procedure Tfrm_blps_blcy.proc_lscy;
begin
  with qry_cy do
  begin
    Close;
    Parameters.ParamByName('cyry').Value := pub_czydm;
    Open;

    BBtn_Clear.Enabled := RecordCount > 0;
  end;
end;

procedure Tfrm_blps_blcy.proc_add_ks(v_dm: string);
var v_ksdm: string;
begin
  with qry_ksdm do
  begin
    Close;

    ComboBox1.Items.Clear;
    v_ksdm := v_dm + '%';

    if v_dm = '' then
      ComboBox1.Items.Add('<全部>');

    Parameters.ParamByName('ksdm').Value := v_ksdm;
    Open;

    while not Eof do
    begin
      ComboBox1.Items.Add(FieldByName('mc').AsString);
      Next;
    end;
    ComboBox1.ItemIndex := 0;
    ComboBox1.OnChange(Self);
  end;
end;

procedure Tfrm_blps_blcy.proc_add_ys(v_dm: string);
var v_ksdm: string;
begin
  with qry_ys do
  begin
    Close;

    ComboBox2.Items.Clear;
    v_ksdm := v_dm + '%';
   // if v_dm = '' then
      ComboBox2.Items.Add('<全部>');

    ParaMeters.ParamByName('ksdm').Value := v_ksdm;
    Open;
    while not Eof do
    begin
      ComboBox2.Items.Add(FieldByName('mc').AsString);
      Next;
    end;
    ComboBox2.ItemIndex := 0;
  end;
end;

function Tfrm_blps_blcy.func_getCyid: Integer;
begin
  with qry_cyid do
  begin
    Close;
    Open;
    if FieldByName('cyid').AsInteger = 0 then
      Result := 1
    else
      Result := FieldByName('cyid').AsInteger;
  end;
end;

procedure Tfrm_blps_blcy.FormShow(Sender: TObject);
begin
  if pub_zycy='ZY' then
  begin
    sp_bl_list.ProcedureName:='zydzbl_cx_blcy_zy';
    SpeedButton1.Visible:=False;
    SpeedButton2.Visible:=False;
  end;
  if pub_zycy='CY' then
  begin
    sp_bl_list.ProcedureName:='zydzbl_cx_blcy_cy';
    qry_cy.Close;
    qry_cy.SQL.Clear;
    qry_cy.SQL.Text:='select * from zydzbl_cyblps_cy where bz=0 and cyry=:cyry';
  end;
  proc_Set_Cyfw(pub_zt);

  DateTimePicker1.DateTime := frm_func.curr_date;
  DateTimePicker2.DateTime := DateTimePicker1.DateTime;
  DateTimePicker3.DateTime := frm_func.curr_date;
  DateTimePicker4.DateTime := DateTimePicker3.DateTime;

  proc_lscy; //历史抽样
  rb1Click(rb1);
end;

procedure Tfrm_blps_blcy.rb1Click(Sender: TObject);
begin
  Lab_sl.Visible := rb1.Checked;
  edt_sl.Visible := rb1.Checked;
  UpDown1.Visible := rb1.Checked;
end;

procedure Tfrm_blps_blcy.spb_selectClick(Sender: TObject);
var ksdm, ysdm: string;
begin
  if ComboBox1.ItemIndex = 0 then
    ksdm := '%'
  else
  begin
    qry_ksdm.Locate('mc', ComboBox1.Text, []);
    ksdm := qry_ksdm.FieldByName('dm').AsString;
  end;

  if ComboBox2.ItemIndex = 0 then
    ysdm := '%'
  else
  begin
    qry_ys.Locate('mc', ComboBox2.Text, []);
    ysdm := qry_ys.FieldByName('dm').AsString;
  end;

  with sp_bl_list do
  begin
    Close;
    Parameters.Refresh;
    Parameters.ParamByName('@tmh').Value := '';
    Parameters.ParamByName('@ksdm').Value := ksdm;
    Parameters.ParamByName('@ysdm').Value := ysdm;
    Parameters.ParamByName('@date1').Value := DateTimePicker1.DateTime;
    Parameters.ParamByName('@date2').Value := DateTimePicker2.DateTime;
    Parameters.ParamByName('@lx').Value := 0;
    Open;
    if RecordCount <= 0 then
      Application.MessageBox('错误提示:未检索到符合条件记录!', '错误提示', 16);
  end;
end;

procedure Tfrm_blps_blcy.SpeedButton1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure Tfrm_blps_blcy.SpeedButton2Click(Sender: TObject);
begin
  Panel4.Visible:=true;
end;

procedure Tfrm_blps_blcy.sp_bl_listAfterOpen(DataSet: TDataSet);
begin
  BBtn_cy.Enabled := not sp_bl_list.IsEmpty;
  BBtn_save.Enabled := not sp_bl_list.IsEmpty;
end;

procedure Tfrm_blps_blcy.BBtn_cyClick(Sender: TObject);
var sl, i, j: Integer;
  zyh, Blid: string;
begin
  if sp_bl_list.RecordCount < 1 then Exit;

  with sp_bl_list do
  begin
    if rb1.Checked then //随机抽样
    begin
      sl := strtoint(trim(edt_sl.Text));
      if sl <= 0 then
      begin
        Application.MessageBox('错误提示:请输入正确的数量!', '错误提示', 16);
        exit;
      end;
      I := 0;
      while i < sl do
      begin
        Randomize;
        J := Random(RecordCount);
        First;
        MoveBy(J);
        if zyh<>trim(Fieldbyname('zyh').asstring) then
        begin
          zyh := trim(Fieldbyname('zyh').asstring);
          //Blid := trim(Fieldbyname('blid').asstring);
          if not qry_cy.Locate('zyh', VarArrayOf([zyh]), []) then
            proc_sjlr;
          Inc(i, 1);
        end;
      end;
    end
    else if rb2.Checked then //手动抽样
    begin
      zyh := trim(Fieldbyname('zyh').asstring);
      //Blid := trim(Fieldbyname('blid').asstring);
      if not qry_cy.Locate('zyh', VarArrayOf([zyh]), []) then
        proc_sjlr;
    end
    else if rb3.Checked then //全部抽样
    begin
      First;
      while not Eof do
      begin
        zyh := trim(Fieldbyname('zyh').asstring);
        //Blid := trim(Fieldbyname('blid').asstring);
        if not qry_cy.Locate('zyh', VarArrayOf([zyh]), []) then
          proc_sjlr;
        Next;
      end;
    end;
  end;
end;

procedure Tfrm_blps_blcy.BBtn_ClearClick(Sender: TObject);
var sql_str: string;
begin
  if pub_zycy='CY' then
    sql_str := 'delete from zydzbl_cyblps_cy where bz=0 and cyry=' + #39 + pub_czydm + #39
  else
  begin
    sql_str := 'delete from zydzbl_blps_cy where bz=0 and cyry=' + #39 + pub_czydm + #39;
  end;
  with cmd_exec do
  begin
    dm_data.ado_mydata.BeginTrans;
    try
      CommandText := sql_str;
      Execute;
      dm_data.ado_mydata.CommitTrans;
      Application.MessageBox('提示:未评审历史抽样数据清除成功!', '提示', MB_ICONINFORMATION);
      proc_lscy; //历史抽样
    except
      dm_data.ado_mydata.RollbackTrans;
      Application.MessageBox('错误提示:未评审历史抽样数据清除失败!', '错误提示', 16);
    end;
  end;
end;

procedure Tfrm_blps_blcy.BBtn_saveClick(Sender: TObject);
var cyid: Integer;
begin
  cyid := func_getCyid; //获取抽样ID

  dm_data.ado_mydata.BeginTrans;
  try
    //为新抽样记录增加抽样ID
    with qry_cy do
    begin
      First;
      while not Eof do
      begin
        if rsNew in qry_cy.RecordStatus then
        begin
          Edit;
          FieldByName('cyid').AsInteger := cyid;
          Post;
        end;
        Next;
      end;
    end;
    //保存数据
    qry_cy.UpdateBatch();
    dm_data.ado_mydata.CommitTrans;
    Application.MessageBox('提示:抽样数据保存成功!', '提示', MB_ICONINFORMATION);
    BBtn_Clear.Enabled:=True;
  except
    dm_data.ado_mydata.RollbackTrans;
    Application.MessageBox('错误提示:抽样数据保存失败!', '错误提示', 16);
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_blps_blcy.Button1Click
  作者:      yangshuai
  日期:      2016.06.16
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_blps_blcy.Button1Click(Sender: TObject);
var ksdm, ysdm: string;
begin
  if ComboBox1.ItemIndex = 0 then
    ksdm := '%'
  else
  begin
    qry_ksdm.Locate('mc', ComboBox1.Text, []);
    ksdm := qry_ksdm.FieldByName('dm').AsString;
  end;

  if ComboBox2.ItemIndex = 0 then
    ysdm := '%'
  else
  begin
    qry_ys.Locate('mc', ComboBox2.Text, []);
    ysdm := qry_ys.FieldByName('dm').AsString;
  end;
  with sp_bl_list do
  begin
    Close;
    Parameters.Refresh;
    Parameters.ParamByName('@tmh').Value := tmh.text;
    Parameters.ParamByName('@ksdm').Value := ksdm;
    Parameters.ParamByName('@ysdm').Value := ysdm;
    Parameters.ParamByName('@date1').Value := DateTimePicker1.DateTime;
    Parameters.ParamByName('@date2').Value := DateTimePicker2.DateTime;
    Parameters.ParamByName('@lx').Value := 1;
    Open;
    if RecordCount <= 0 then
      Application.MessageBox('错误提示:未检索到符合条件记录!', '错误提示', 16);
  end;
  Panel3.Visible:=False;
end;

procedure Tfrm_blps_blcy.Button2Click(Sender: TObject);
begin
  Panel3.Visible:=False;
end;

procedure Tfrm_blps_blcy.Button3Click(Sender: TObject);
var ksdm, ysdm: string;
begin
  if ComboBox1.ItemIndex = 0 then
    ksdm := '%'
  else
  begin
    qry_ksdm.Locate('mc', ComboBox1.Text, []);
    ksdm := qry_ksdm.FieldByName('dm').AsString;
  end;

  if ComboBox2.ItemIndex = 0 then
    ysdm := '%'
  else
  begin
    qry_ys.Locate('mc', ComboBox2.Text, []);
    ysdm := qry_ys.FieldByName('dm').AsString;
  end;
  with sp_bl_list do
  begin
    Close;
    Parameters.Refresh;
    Parameters.ParamByName('@tmh').Value := '';
    Parameters.ParamByName('@ksdm').Value := ksdm;
    Parameters.ParamByName('@ysdm').Value := ysdm;
    Parameters.ParamByName('@date1').Value := DateTimePicker3.DateTime;
    Parameters.ParamByName('@date2').Value := DateTimePicker4.DateTime;
    Parameters.ParamByName('@lx').Value := 2;
    Open;
    if RecordCount <= 0 then
      Application.MessageBox('错误提示:未检索到符合条件记录!', '错误提示', 16);
  end;
  Panel4.Visible:=False;
end;

procedure Tfrm_blps_blcy.Button4Click(Sender: TObject);
begin
  Panel4.Visible:=False;
end;

procedure Tfrm_blps_blcy.ComboBox1Change(Sender: TObject);
begin
  if not qry_ksdm.Active then Exit;

  if ComboBox1.Text = '<全部>' then
    proc_add_ys('')
  else
  begin
    qry_ksdm.Locate('mc', ComboBox1.Text, []);
    proc_add_ys(Trim(qry_ksdm.FieldByName('dm').AsString));
  end;
end;

procedure Tfrm_blps_blcy.DBGrid1DblClick(Sender: TObject);
var zyh, blid: string;
begin
  if not sp_bl_list.Active then exit;
  if sp_bl_list.RecordCount < 1 then exit;

  if rb2.Checked then
    with sp_bl_list do
    begin
      zyh := trim(Fieldbyname('zyh').asstring);
      //Blid := trim(Fieldbyname('blid').asstring);
      if not qry_cy.Locate('zyh', VarArrayOf([zyh]), []) then
        proc_sjlr;
    end;
end;

end.

