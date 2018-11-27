unit p_savemb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, DBCtrls;

type
  Tfrm_savemb = class(TForm)
    Label3: TLabel;
    editmbmc: TEdit;
    Label4: TLabel;
    Label6: TLabel;
    Editzyks: TEdit;
    b_save: TBitBtn;
    b_cancel: TBitBtn;
    qry_pub: TADOQuery;
    ds_pub: TDataSource;
    DBGrid1: TDBGrid;
    qry_mbmx: TADOQuery;
    Label7: TLabel;
    qry_psdx: TADOQuery;
    ds_zk: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    qry_sjjksz: TADOQuery;
    ds_sjjksz: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure b_cancelClick(Sender: TObject);
    procedure b_saveClick(Sender: TObject);
    procedure editmbmcExit(Sender: TObject);
    procedure mbsxExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure EditzyksChange(Sender: TObject);
    procedure EditzyksKeyPress(Sender: TObject; var Key: Char);
    procedure EditzyksExit(Sender: TObject);
    procedure EditzyksEnter(Sender: TObject);
    procedure checksavexm;
    procedure DBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    zykschange: boolean;
    { Public declarations }
  end;

var
  frm_savemb: Tfrm_savemb;

implementation
uses p_dm, p_mbbj, p_func;
{$R *.dfm}

procedure Tfrm_savemb.checksavexm;
begin
  if trim(pub_mbmc) = '' then
  begin
    application.MessageBox('模板名称不能为空!', '提示', 0 + 48);
    editmbmc.SelectAll;
    editmbmc.SetFocus;
    abort;
  end;
  if trim(pub_mbks) = '' then
  begin
    application.MessageBox('模板科室不能为空!', '提示', 0 + 48);
    editzyks.SelectAll;
    editzyks.SetFocus;
    abort;
  end;
  if (trim(pub_psdm) = '') and (editmode = 'add') then
  begin
    application.MessageBox('模板质控代码不能为空!', '提示', 0 + 48);
    DBLookupComboBox1.SetFocus;
    abort;
  end;
end;

procedure Tfrm_savemb.EditzyksEnter(Sender: TObject);
begin
  zykschange := false;
end;

procedure Tfrm_savemb.EditzyksExit(Sender: TObject);
begin
  if (not (b_save.Focused or b_cancel.Focused)) and (zykschange) then
  begin
    qry_pub.close;
    qry_pub.SQL.Clear;
    qry_pub.SQL.text := 'select dm,mc,pym from sys_ksdm where pym like ' +
      '''' + '%' + trim(editzyks.Text) + '%' + '''' +
      ' or dm like ' + '''' + '%' + trim(editzyks.Text) + '%' + '''' +
      ' or mc like ' + '''' + '%' + trim(editzyks.Text) + '%' + '''';
    qry_pub.Open;
    if qry_pub.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的科室!', '注意', 16);
      editzyks.Clear;
      editzyks.SetFocus;
      abort;
    end
    else
      if qry_pub.RecordCount = 1 then
      begin
        editzyks.Text := qry_pub['mc'];
        pub_mbks := qry_pub['dm'];
        DBLookupComboBox2.SetFocus;
      end
      else
      begin
        dbgrid1.tag := 2;
        dbgrid1.Visible := true;
        dbgrid1.top := editzyks.top + editzyks.Height + 10;
        dbgrid1.left := editzyks.Left; ;
        dbgrid1.SetFocus;
      end;
  end;
end;

procedure Tfrm_savemb.EditzyksKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['A'..'z', '0'..'9']) or (ord(key) > 127) then
    zykschange := true;
  if key = #13 then DBLookupComboBox2.SetFocus;

end;

procedure Tfrm_savemb.EditzyksChange(Sender: TObject);
begin
  if trim(editzyks.text) = '' then pub_mbks := '';
end;

procedure Tfrm_savemb.DBGrid1Exit(Sender: TObject);
begin
  dbgrid1.Visible := false;
end;

procedure Tfrm_savemb.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (dbgrid1.tag = 2) then
  begin
    editzyks.Text := qry_pub['mc'];
    pub_mbks := qry_pub['dm'];
    dbgrid1.Visible := false;
    DBLookupComboBox2.SetFocus;
  end;
end;

procedure Tfrm_savemb.DBLookupComboBox1Exit(Sender: TObject);
begin
  pub_psdm := qry_psdx.FieldByName('dm').AsString;
end;

procedure Tfrm_savemb.mbsxExit(Sender: TObject);
begin
  pub_mbsx := DBLookupComboBox2.KeyValue;
end;

procedure Tfrm_savemb.editmbmcExit(Sender: TObject);
begin
  pub_mbmc := editmbmc.Text;
end;

procedure Tfrm_savemb.b_saveClick(Sender: TObject);
var
  stream: TADOBlobStream;
  filename, mbmc: string;
begin
  dm_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text :='select * from sys_xt_xkg where name =''zydzbl_mb_zjqy'' ';
  DM_data.qry_pub.Open;

  frm_mbbj.EMRPad301.universalboolfunction('', '', 53, 0);
  frm_mbbj.EMRPad301.UniversalStringFunction('-1', '-1', '-1', '-1', '-1', '6');
  if copy(pub_mbdldm, 1, 2) = '12' then
  begin
    filename := GetCurrentDir + '\' + 'emrtemp.emk';
    frm_mbbj.EMRPad301.FileSaveAs(FileName, 2, 0);
    mbmc := pub_mbmc + '.emk';
  end
  else
  begin
    filename := GetCurrentDir + '\' + 'emrtemp.emr';
    frm_mbbj.EMRPad301.FileSaveAs(FileName, 1, 0);
    mbmc := pub_mbmc + '.emt';
  end;
  if (trim(pub_psdm) = '') and (copy(pub_mbdldm, 1, 2) <> '12') then
  begin
    application.MessageBox('书写质控代码不能为空!', '提示', 0 + 48);
    DBLookupComboBox1.SetFocus;
    abort;
  end;
  qry_mbmx.Close;
  qry_mbmx.Parameters.ParamByName('mbid').Value := pub_mbid;
  qry_mbmx.Open;
  if (editmode = 'add') or (editmode = 'azz') or (editmode = 'ezz') then qry_mbmx.Append;
  if editmode = 'edit' then qry_mbmx.edit;
  qry_mbmx['dm'] := pub_mbdldm;
  qry_mbmx['mbmc'] := pub_mbmc;
  qry_mbmx['mbsx'] := pub_mbsx;
  qry_mbmx['zyksgs'] := pub_mbks;
  qry_mbmx['mbczy'] := pub_czyxm;
  qry_mbmx['psdm'] := pub_psdm;
  qry_mbmx['wjmc'] := mbmc;
  qry_mbmx['pym'] := get_hz_pywb(pub_mbmc, 3);

  if (editmode = 'add') and (Trim(DM_data.qry_pub.FieldByName('value').AsString)='1' )then  //医院要求新建就直接启用
  begin
    qry_mbmx['qybz'] := 1;
    qry_mbmx['zybz'] :=1
  end;
  try
    stream := TADOBlobStream.Create(qry_mbmx.FieldByName('mbwj') as TBlobField, bmWrite);
    stream.LoadFromFile(filename);
  finally
    stream.Free;
  end;
  qry_mbmx.Post;
  if editmode = 'azz' then
    editmode := 'add'
  else
    if editmode = 'ezz' then
      editmode := 'edit';
  close;
end;

procedure Tfrm_savemb.b_cancelClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_savemb.FormShow(Sender: TObject);
begin
  editmbmc.Text := pub_mbmc;
  DBLookupComboBox2.KeyValue := pub_mbsx;
  DBLookupComboBox1.KeyValue := pub_psdm;
  editzyks.Text := pub_ksmc;
  qry_psdx.Open;
  qry_sjjksz.Open;
end;

end.
