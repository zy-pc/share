unit p_zdjf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGrids, ExtCtrls, ADODB, GridsEh,
  DBGridEh, DBGridEhGrouping;

type
  Tfrm_zdjf = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    tmh: TEdit;
    brxm: TEdit;
    zdjf: TEdit;
    b_save: TBitBtn;
    b_close: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    sp_up_zdjf: TADOStoredProc;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    ksmc: TEdit;
    Label5: TLabel;
    zyj: TEdit;
    Label6: TLabel;
    zzf: TEdit;
    Label7: TLabel;
    zfy: TEdit;
    Label8: TLabel;
    dbr: TEdit;
    Label9: TLabel;
    bz: TEdit;
    DBGridEh1: TDBGridEh;
    qry_tzmx: TADOQuery;
    ds_tzmx: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure b_saveClick(Sender: TObject);
    procedure zdjfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure b_closeClick(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbrKeyPress(Sender: TObject; var Key: Char);
    procedure tmhExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zdjf: Tfrm_zdjf;
  zy_zyh, zy_tmh: string;
implementation
uses p_dm, p_login, p_func;
{$R *.DFM}

procedure Tfrm_zdjf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then close;
end;

procedure Tfrm_zdjf.b_saveClick(Sender: TObject);
begin
  b_save.Enabled := false;
  try
    with sp_up_zdjf do
    begin
      close;
      parameters.ParamByName('@tmh').value := trim(tmh.text);
      parameters.ParamByName('@zyh').value := zy_zyh;
      parameters.ParamByName('@brxm').value := trim(dbr.Text);
      parameters.ParamByName('@czyxm').value := pub_czyxm;
      parameters.ParamByName('@zdjf').value := strtofloat(zdjf.text);
      parameters.ParamByName('@sczt').value := '0';
      ExecProc;
    end;
    if sp_up_zdjf.parameters.ParamByName('@sczt').value = '1' then
    begin
      application.MessageBox('成功!', '提示:', 0 + 48);
      tmh.text := '';
      zdjf.text := '';
      brxm.text := '';
      ksmc.text := '';
      zfy.text := '';
      zyj.text := '';
      zzf.text:='';
      dbr.text:='';
      bz.text:='';
      qry_tzmx.Close;
    end
    else
    begin
      application.MessageBox('失败!', '提示:', 0 + 16);
      abort;
    end;
  except
    application.MessageBox('非法操作!', '提示:', 0 + 16);
    abort;
  end;
  tmh.SetFocus;
end;

procedure Tfrm_zdjf.zdjfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    try
      strtofloat(zdjf.text);
    except
      application.MessageBox('非法操作', '提示:', 0 + 16);
      abort;
    end;
    if b_save.Enabled = true then b_save.SetFocus;
  end;
end;

procedure Tfrm_zdjf.tmhExit(Sender: TObject);
var
  key:char;
begin
  if not b_close.Focused then
  begin
    key:=#13;
    tmhKeyPress(Sender,key);
  end;
end;

procedure Tfrm_zdjf.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    try
      tmh.text := formatex(strtoint(tmh.text), 9);
    except
    end;
    zy_tmh := tmh.text;
    with dm_data.qry_pub do
    begin
      Close;
      SQL.clear;
      SQL.Text := 'select a.tmh,a.zyh,a.zdjf,a.brxm,a.brxb,a.brnl,b.mc ksmc,' +
        'a.dbr,a.bz,a.zfy,a.zfze,a.yjze,a.bz' +
        ' from zysf_zydj a,sys_ksdm b' +
        ' where a.ksdm=b.dm and a.tmh<>' + #39 + '000000001' + #39 +
        ' and (a.tmh=' + #39 + zy_tmh + #39 + ' or a.brxm like ' +
        #39 + '%' + zy_tmh + '%' + #39 + ' or a.pym like ' +
        #39 + '%' + zy_tmh + '%' + #39 + ' ) and ' +
        ' jsbz=0 and cybz=0';
      open;
    end;
    if dm_data.qry_pub.IsEmpty then
    begin
      application.MessageBox('无此卡号！', '提示', 0 + 16);
      tmh.SetFocus;
      tmh.SelectAll;
      abort;
    end
    else
      if dm_data.qry_pub.RecordCount = 1 then
      begin
        zy_zyh := dm_data.qry_pub.FieldByName('zyh').asstring;
        brxm.Text := dm_data.qry_pub.FieldByName('brxm').asstring;
        bz.Text := dm_data.qry_pub.FieldByName('bz').asstring;
        zdjf.Text := floattostr(dm_data.qry_pub.FieldByName('zdjf').asfloat);
        ksmc.Text := dm_data.qry_pub.FieldByName('ksmc').asstring;
        zyj.Text := floattostr(dm_data.qry_pub.FieldByName('yjze').asfloat);
        zfy.Text := floattostr(dm_data.qry_pub.FieldByName('zfy').asfloat);
        zzf.Text := floattostr(dm_data.qry_pub.FieldByName('zfze').asfloat);
        dbr.Text := dm_data.qry_pub.FieldByName('dbr').asstring;
        dbr.SetFocus;
        qry_tzmx.Close;
        qry_tzmx.Parameters.ParamByName('zyh').Value := zy_zyh;
        qry_tzmx.Open;
        b_save.Enabled := true;
      end
      else
      begin
        dbgrid2.left := tmh.left;
        dbgrid2.top := tmh.top + tmh.height + 1;
        dbgrid2.visible := true;
        dbgrid2.setfocus;
      end;
  end;
end;

procedure Tfrm_zdjf.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zdjf.DBGrid2Exit(Sender: TObject);
begin
  zy_zyh := dm_data.qry_pub.FieldByName('zyh').asstring;
  tmh.Text:= dm_data.qry_pub.FieldByName('tmh').asstring;
  brxm.Text := dm_data.qry_pub.FieldByName('brxm').asstring;
  bz.Text := dm_data.qry_pub.FieldByName('bz').asstring;
  zdjf.Text := floattostr(dm_data.qry_pub.FieldByName('zdjf').asfloat);
  ksmc.Text := dm_data.qry_pub.FieldByName('ksmc').asstring;
  zyj.Text := floattostr(dm_data.qry_pub.FieldByName('yjze').asfloat);
  zfy.Text := floattostr(dm_data.qry_pub.FieldByName('zfy').asfloat);
  zzf.Text := floattostr(dm_data.qry_pub.FieldByName('zfze').asfloat);
  dbr.Text := dm_data.qry_pub.FieldByName('dbr').asstring;
  dbr.SetFocus;
  qry_tzmx.Close;
  qry_tzmx.Parameters.ParamByName('zyh').Value := zy_zyh;
  qry_tzmx.Open;
  dbr.SetFocus;
  b_save.Enabled := true;
  dbgrid2.visible := false;
end;

procedure Tfrm_zdjf.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then DBGrid2Exit(sender);
end;

procedure Tfrm_zdjf.DBGrid2DblClick(Sender: TObject);
begin
  DBGrid2Exit(sender);
end;

procedure Tfrm_zdjf.FormShow(Sender: TObject);
begin
  if pub_tmhxsbz = false then
    tmh.PasswordChar := '*';
end;

procedure Tfrm_zdjf.dbrKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then zdjf.SetFocus;
end;
initialization
  RegisterClass(Tfrm_zdjf);
end.

