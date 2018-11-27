unit P_mzgh_yspb;
//三个过程：mzgh_up_yspb,mzgh_cx_yspb,mzgh_cx_kspbqk

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,
  DBCtrlsEh, DBLookupEh, ActnList;

type
  TFRM_YSPB = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ysxm: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    CB12: TCheckBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    CB11: TCheckBox;
    CB22: TCheckBox;
    CB21: TCheckBox;
    Bevel3: TBevel;
    Bevel4: TBevel;
    CB31: TCheckBox;
    CB32: TCheckBox;
    Bevel5: TBevel;
    Bevel6: TBevel;
    CB41: TCheckBox;
    CB42: TCheckBox;
    Bevel7: TBevel;
    Bevel8: TBevel;
    CB51: TCheckBox;
    CB52: TCheckBox;
    Bevel9: TBevel;
    Bevel10: TBevel;
    CB61: TCheckBox;
    CB62: TCheckBox;
    Bevel11: TBevel;
    Bevel12: TBevel;
    sp_cx_ysbb: TADOStoredProc;
    sp_cx_ys: TADOStoredProc;
    sp_up_yspb: TADOStoredProc;
    ds_czyks: TDataSource;
    tempdbgrid1: TDBGrid;
    ksmc: TEdit;
    zcmc: TEdit;
    yzks: TEdit;
    Label7: TLabel;
    RS: TEdit;
    Label5: TLabel;
    ghfdm: TEdit;
    GroupBox7: TGroupBox;
    Bevel13: TBevel;
    Bevel14: TBevel;
    cb71: TCheckBox;
    cb72: TCheckBox;
    BitBtn3: TBitBtn;
    procedure ysxmExit(Sender: TObject);
    procedure tempdbgrid1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ysxmEnter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CB11Click(Sender: TObject);
    procedure tempdbgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ysxmKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    v_ysdm, v_ysmc, v_ksdm, v_ksmc, v_zcdm, v_zcmc: string;
    procedure displayvalue;
    procedure displayNULL;
    procedure yspbprocess;
  public
    { Public declarations }
  end;

var
  FRM_YSPB: TFRM_YSPB;
  pri_yzks: string;
  posi: integer;
  cb: array[1..14] of TCheckBox;
  yzlbe: array[1..12] of Tedit;
  ischange: boolean = false;
  recordchange: boolean;
implementation
uses P_dm;
{$R *.DFM}

procedure Tfrm_yspb.displayNULL;
var i: integer;
begin
  ysxm.text := '';
  ksmc.text := '';
  zcmc.text := '';
  ghfdm.text := '';
  YZKS.TEXT := '';
  BitBtn1.Enabled := False;
  BitBtn3.Enabled := False;
  BitBtn3.Caption := '清除当前医生排班情况';
  for i := 1 to 14 do
    cb[i].Checked := false;
end;

procedure Tfrm_yspb.displayvalue;
begin
  displaynull;
  v_ysdm := Trim(sp_cx_ys.Fieldbyname('ysdm').Asstring);
  v_ysmc := Trim(sp_cx_ys.Fieldbyname('ysmc').Asstring);
  v_ksdm := Trim(sp_cx_ys.FieldByName('ksdm').AsString);
  v_ksmc := Trim(sp_cx_ys.FieldByName('ksmc').AsString);
  v_zcdm := Trim(sp_cx_ys.FieldByName('zcdm').AsString);
  v_zcmc := Trim(sp_cx_ys.FieldByName('zcmc').AsString);
  ysxm.text := v_ysmc;
  ksmc.text := v_ksmc;
  zcmc.text := v_zcmc;
  yzks.Text := v_ksmc;
  rs.Text := Trim(sp_cx_ys.FieldByName('rs').AsString);
  ghfdm.Text := '普通:' + sp_cx_ys.fieldbyname('fymc').asstring +
    ';急诊:' + sp_cx_ys.fieldbyname('jzfymc').asstring;
  BitBtn1.Enabled := True;
  //xp注释掉，名字太长，影响美观
  //BitBtn3.Caption := '清除[' + v_ysmc + '][' + v_ksmc + ']排班情况';
  BitBtn3.Enabled := True;
  yspbprocess;
end;

procedure TFRM_YSPB.ysxmExit(Sender: TObject);
begin
  if not (bitbtn2.Focused) then
    if trim(ysxm.text) = '' then
    begin
      application.messagebox('医生代码输入错误，请重新输入', '提示', mb_ok + mb_iconinformation);
      ysxm.setfocus;
    end
    else
    begin
      ischange := false;
      sp_cx_ys.Close;
      sp_cx_ys.Parameters.ParamByName('@srm').value := trim(ysxm.Text);
      sp_cx_ys.Parameters.ParamByName('@kssx').value := '16';
      sp_cx_ys.Parameters.ParamByName('@czfs').value := 1;
      sp_cx_ys.Open;
      if sp_cx_ys.isempty then
      begin
        application.MessageBox('代码输入错误，请重新输入', '错误', mb_ok + mb_iconerror);
        ysxm.SetFocus;
      end
      else
        if sp_cx_ys.RecordCount > 1 then
        begin
          tempdbgrid1.left := ysxm.left;
          tempdbgrid1.top := panel1.top + ysxm.top + ysxm.Height;
          tempdbgrid1.visible := true;
          tempdbgrid1.SetFocus;
        end
        else
          if sp_cx_ys.recordcount = 1 then
            displayvalue;
    end;
end;

procedure TFRM_YSPB.ysxmKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    RS.SetFocus;
  end;
end;

procedure TFRM_YSPB.tempdbgrid1Exit(Sender: TObject);
begin
  tempdbgrid1.Visible := false;
  displayvalue;
end;

procedure TFRM_YSPB.tempdbgrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    RS.SetFocus;
  end;
end;

procedure Tfrm_yspb.yspbprocess;
var
  v_yzrq: string;
  c1, c2: char;
  i: integer;
begin
  sp_cx_ysbb.close;
  sp_cx_ysbb.Parameters.ParamByName('@srm').value := v_ysdm;
  sp_cx_ysbb.Parameters.ParamByName('@ksdm').value := v_ksdm;
  sp_cx_ysbb.open;
  sp_cx_ysbb.first;
  pri_yzks := sp_cx_ysbb.fieldbyname('ksdm').asstring;
  while not sp_cx_ysbb.eof do
  begin
    v_yzrq := trim(sp_cx_ysbb.fieldbyname('yzrq').asstring);
    c1 := v_yzrq[1];
    c2 := v_yzrq[2];
    case c1 of
      '1': case c2 of
          '1': if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb11.checked := true;
          '2': if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb12.checked := true;
        end;
      '2': case c2 of
          '1':
            if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb21.checked := true;
          '2':
            if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb22.checked := true;
        end;
      '3': case c2 of
          '1':
            if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb31.checked := true;
          '2':
            if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb32.checked := true;
        end;
      '4': case c2 of
          '1': if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb41.checked := true;
          '2': if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb42.checked := true;
        end;
      '5': case c2 of
          '1': if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb51.checked := true;
          '2': if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb52.checked := true;
        end;
      '6': case c2 of
          '1': if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb61.checked := true;
          '2': if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb62.checked := true;
        end;
      '7': case c2 of
          '1': if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb71.checked := true;
          '2': if sp_cx_ysbb.fieldbyname('qtbz').asboolean then cb72.checked := true;
        end;
    end;
    sp_cx_ysbb.next;
  end;
end;

procedure TFRM_YSPB.FormCreate(Sender: TObject);
begin
  cb[1] := cb11; cb[2] := cb12; cb[3] := cb21; cb[4] := cb22;
  cb[5] := cb31; cb[6] := cb32; cb[7] := cb41; cb[8] := cb42;
  cb[9] := cb51; cb[10] := cb52; cb[11] := cb61; cb[12] := cb62;
  cb[13] := cb71; cb[14] := cb72;
end;

procedure TFRM_YSPB.BitBtn1Click(Sender: TObject);
var i: integer;
  yzrq: string;
begin
  if Trim(RS.TEXT) = '' then
  begin
    application.MessageBox('请先输入人数！', '系统提示', mb_ok + mb_iconinformation);
    RS.SetFocus;
    Exit;
  end;
  i := 1;
  while i <= 14 do
  begin
    yzrq := '';
    yzrq := inttostr(trunc(i / 2 + 0.5));
    if i mod 2 = 0 then
      yzrq := yzrq + '2'
    else
      yzrq := yzrq + '1';
    sp_up_yspb.Close;
    sp_up_yspb.Parameters.ParamByName('@ysdm').value := v_ysdm;
    sp_up_yspb.Parameters.ParamByName('@ksdm').value := v_ksdm;
    sp_up_yspb.Parameters.ParamByName('@yzrq').value := yzrq;
    sp_up_yspb.Parameters.ParamByName('@ghfdm').value := ''; //不需要保存挂号费代码进排班表
    sp_up_yspb.Parameters.ParamByName('@zcdm').value := v_zcdm;
    sp_up_yspb.Parameters.ParamByName('@qtbz').value := cb[i].checked;
    sp_up_yspb.Parameters.ParamByName('@rs').value := STRTOINT(RS.TEXT);
    sp_up_yspb.Parameters.ParamByName('@ksmc').value := Trim(ksmc.Text);//增加科室的判断
    sp_up_yspb.Parameters.ParamByName('@sczt').value := 'a';
    sp_up_yspb.ExecProc;
    if sp_up_yspb.Parameters.ParamByName('@sczt').value = '1' then
      i := i + 1;
  end;
  application.MessageBox('数据已经正确保存！', '系统提示', mb_ok + mb_iconinformation);
  ysxm.setfocus;
end;

procedure TFRM_YSPB.ysxmEnter(Sender: TObject);
begin
  recordchange := false;
  displaynull;
end;

procedure TFRM_YSPB.BitBtn2Click(Sender: TObject);
begin
  self.close;
end;

procedure TFRM_YSPB.BitBtn3Click(Sender: TObject);
begin
  if application.MessageBox('确定清除？', '询问', mb_okcancel + mb_iconquestion) = idok then
  begin
    with DM_data do
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := ' delete mzgh_yspbb where ysdm=' + #39 + v_ysdm + #39 +
        ' and ksdm=' + #39 + v_ksdm + #39;
      qry_pub.ExecSQL;
    end;
    ysxm.SetFocus;
  end;
end;

procedure TFRM_YSPB.CB11Click(Sender: TObject);
begin
  if (sender as Tcheckbox).checked then
    (sender as Tcheckbox).font.color := clred
  else
    (sender as Tcheckbox).font.color := clblack;

end;

end.

