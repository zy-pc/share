unit p_mzghth;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ComCtrls, Buttons, ExtCtrls, Db, ADODB, Grids,
  DBGrids, DBCGrids;

type
  Tfrm_mzghth = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    SBar1: TStatusBar;
    ks: TEdit;
    zl: TEdit;
    ys: TEdit;
    ghf: TEdit;
    ssf: TEdit;
    sjh: TEdit;
    sp_cx_ghqk: TADOStoredProc;
    cbbl: TCheckBox;
    sp_up_ghth: TADOStoredProc;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sjhEnter(Sender: TObject);
    procedure sjhExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ssfExit(Sender: TObject);
    procedure ksEnter(Sender: TObject);
    procedure sjhKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mzghth: Tfrm_mzghth;
  frmtop: integer;
  pri_week, ysgcrs, czygcrs, fpzzh, fpqsh, fpdqh: integer;
  czyzfy: real;
  choicedoctor, pbbz, rskz: boolean;
  fpywbz: boolean = false;
  fplydhm, v_sxw, fydm, ghdhm, ghks, ksdm, ysdm: string;

implementation

uses p_dm, p_func;

{$R *.DFM}

procedure Tfrm_mzghth.BitBtn2Click(Sender: TObject);
begin
  self.close;
end;

procedure Tfrm_mzghth.FormKeyPress(Sender: TObject; var Key: Char);
begin
//  if key = #13 then selectnext(activecontrol, true, true);
end;

procedure Tfrm_mzghth.FormShow(Sender: TObject);
begin
  case dayofweek(frm_func.curr_date()) of
    2: frm_mzghth.Caption := frm_mzghth.caption + '--星期一';
    3: frm_mzghth.Caption := frm_mzghth.caption + '--星期二';
    4: frm_mzghth.Caption := frm_mzghth.caption + '--星期三';
    5: frm_mzghth.Caption := frm_mzghth.caption + '--星期四';
    6: frm_mzghth.Caption := frm_mzghth.caption + '--星期五';
    7: frm_mzghth.Caption := frm_mzghth.caption + '--星期六';
    1: frm_mzghth.Caption := frm_mzghth.caption + '--星期日';
  end;
  sbar1.Panels[1].text := pub_czyxm;
  BitBtn1.Enabled := False;
  sjh.SetFocus;
end;

procedure Tfrm_mzghth.sjhEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
  ks.text := '';
  zl.text := '';
  ys.text := '';
  ghf.text := '';
  ssf.text := '';
  cbbl.checked := false;
  fydm := '';
  ghdhm := '';
  ghks := '';
  ksdm := '';
  ysdm := '';
end;

procedure Tfrm_mzghth.sjhExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
  if not BitBtn2.Focused then
  begin
    if Trim(sjh.Text) = '' then
    begin
      BitBtn1.Enabled := False;
      sjh.setfocus;
      Abort;
    end;
    if not bitbtn2.focused then
      sp_cx_ghqk.close;
    sp_cx_ghqk.Parameters.ParamByName('@ghdhm').value := StrToInt(trim(sjh.text));
    sp_cx_ghqk.Open;
    if sp_cx_ghqk.IsEmpty then
    begin
      application.MessageBox('没有找到该挂号信息,请确认重新输入!', '提示', mb_ok + mb_iconinformation);
      sjh.text := '';
      BitBtn1.Enabled := False;
      sjh.setfocus;
    end
    else
    begin
      ks.text := trim(sp_cx_ghqk.fieldbyname('yzkb').asstring);
      zl.text := trim(sp_cx_ghqk.fieldbyname('lbmc').asstring);
      ys.text := trim(sp_cx_ghqk.fieldbyname('ysxm').asstring);
      ghf.text := floattostr(sp_cx_ghqk.fieldbyname('ghf').asfloat);
      ssf.text := floattostr(sp_cx_ghqk.fieldbyname('ssfy').asfloat);
      if sp_cx_ghqk.fieldbyname('blf').asfloat <> 0 then
        cbbl.checked := true;
    end;
  end;
end;

procedure Tfrm_mzghth.sjhKeyPress(Sender: TObject; var Key: Char);
begin
  if not ((key in ['0'..'9']) or (key = #8) or (key = #13)) then
    key := #0;
  if Key = #13 then
  begin
    BitBtn1.Enabled := True;
    BitBtn1.SetFocus;
  end;
end;

procedure Tfrm_mzghth.BitBtn1Click(Sender: TObject);
begin
  //检查是否有医嘱产生  如果有:不允许退费
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select top 1 1 from mzdzbl_mzyz where zxbz=1'
    + ' and zyh=' + #39 + sp_cx_ghqk.fieldbyname('bybh').asstring + #39
    + ' and convert(char(10),kdrq,120)=' + #39 + FormatDateTime('yyyy-MM-dd', sp_cx_ghqk.fieldbyname('sfrq').AsDateTime) + #39
    + ' and kdks=' + #39 + sp_cx_ghqk.fieldbyname('ghkb').asstring + #39;
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    Application.MessageBox('此病人当天已产生医嘱记录,不能退费', '系统提示',
      MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if application.messagebox('是否退费,请确认！', '提示', mb_yesno + mb_iconwarning) = id_yes then
  begin
    sp_up_ghth.Parameters.ParamByName('@cfbh').value := '';
    sp_up_ghth.Parameters.ParamByName('@zt').value := '0';
    sp_up_ghth.Parameters.ParamByName('@sjbh').value := trim(sjh.text);
    sp_up_ghth.Parameters.ParamByName('@tmh').value := '';
    sp_up_ghth.Parameters.ParamByName('@czydm').value := pub_czydm;
    sp_up_ghth.Parameters.ParamByName('@tffs').value := 3;
    sp_up_ghth.Parameters.ParamByName('@sczt').value := 'a';
    sp_up_ghth.execproc;
    if sp_up_ghth.parameters.parambyname('@sczt').value <> '1' then
    begin
      application.messagebox('退费未成功！,请重新退费！', '警告', mb_ok + mb_iconwarning);
      bitbtn1.setfocus;
    end
    else
    begin
      application.messagebox('成功退费！', '提示', mb_ok);
      sjh.Text := '';
      sjh.setfocus;
    end;
  end
  else
  begin
    sjh.Text := '';
    sjh.setfocus;
  end;
end;

procedure Tfrm_mzghth.ssfExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
end;

procedure Tfrm_mzghth.ksEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

end.

