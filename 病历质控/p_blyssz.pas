unit p_blyssz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  Tfrm_blyssz = class(TForm)
    qry_blyssz: TADOQuery;
    ds_blyssz: TDataSource;
    btok: TBitBtn;
    btclose: TBitBtn;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label7: TLabel;
    editkszg: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Edit1: TEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    edtICU: TEdit;
    edthzys: TEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    procedure btokClick(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure btcloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure edtICUKeyPress(Sender: TObject; var Key: Char);
    procedure edthzysKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
  private
    kszg: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_blyssz: Tfrm_blyssz;

implementation
uses p_dm;
{$R *.dfm}

procedure Tfrm_blyssz.FormShow(Sender: TObject);
var
  zzys, zzysdm, zgys, zgysdm, brksdm: string;
begin
  zgys := '';
  zgysdm := '';
  zzys := '';
  zzysdm := '';

   // 取病人主管医生
  dm_data.qry_pub.Close;
  dm_data.qry_pub.sql.Text := 'select ys.dm,ys.mc,dj.ksdm from zysf_zydj dj,sys_czy ys where dj.zgys=ys.dm ' +
    ' and dj.zyh=' + '''' + pub_zyh + '''';
  dm_data.qry_pub.Open;
  zzys := trim(dm_data.qry_pub.FieldByName('mc').AsString);
  zzysdm := dm_data.qry_pub.FieldByName('dm').AsString;
  brksdm := dm_data.qry_pub.FieldByName('ksdm').AsString;
  edit1.Text := pub_brxm;
   //取科室负责人
  dm_data.qry_pub.Close;
  dm_data.qry_pub.sql.Text := 'select ys.dm,ys.mc from sys_ksdm ks,sys_czy ys where ks.kszg=ys.dm ' +
    ' and ks.dm=' + '''' + brksdm + '''';
  dm_data.qry_pub.Open;
  zgys := trim(dm_data.qry_pub.FieldByName('mc').AsString);
  zgysdm := dm_data.qry_pub.FieldByName('dm').AsString;
  editkszg.Text := zgys;
  if (pub_czyxm = zgys) or (pub_czyxm = zzys) or (pub_ksdm <> brksdm) then
  begin
    panel2.Enabled := true;
    panel1.Enabled := true;
  end
  else
  begin
    panel2.Enabled := false;
    panel1.Enabled := false;
    application.MessageBox('您不是该病人的主管医生,您也不是科室主管,您无权处理医生授权!', '', 0 + 48);
  end;
    //编辑病历医生表
  qry_blyssz.Close;
  qry_blyssz.Parameters.ParamByName('zyh').Value := pub_zyh;
  qry_blyssz.Open;
  if (Pos('手术', pub_ksmc) > 0) or (Pos('麻醉', pub_ksmc) > 0) then
  begin
    DBEdit3.ReadOnly := True;
    DBEdit4.ReadOnly := True;
    DBEdit5.ReadOnly := True;
  end;
  if qry_blyssz.IsEmpty then
  begin
    qry_blyssz.Append;
    qry_blyssz.FieldByName('tmh').AsString := pub_tmh;
    qry_blyssz.FieldByName('zyh').AsString := pub_zyh;
  end
  else
    qry_blyssz.Edit;
  if trim(qry_blyssz.FieldByName('zzys').AsString) = '' then
  begin
    qry_blyssz.FieldByName('zzys').AsString := zzys;
    qry_blyssz.FieldByName('zzysdm').AsString := zzysdm;
  end;
  if trim(qry_blyssz.FieldByName('zgys').AsString) = '' then
  begin
    qry_blyssz.FieldByName('zgys').AsString := zgys;
    qry_blyssz.FieldByName('zgysdm').AsString := zgysdm;
  end;
end;

procedure Tfrm_blyssz.btcloseClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_blyssz.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (dbedit3.Text <> '') then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.text := 'select dm,mc from sys_czy where ( pym like ' +
      '''' + '%' + trim(dbedit3.Text) + '%' + '''' +
      ' or dm like ' + '''' + '%' + trim(dbedit3.Text) + '%' + '''' +
      ' or mc like ' + '''' + '%' + trim(dbedit3.Text) + '%' + '''' +
      ' ) and ysbz=1 and ksdm = ' + '''' + pub_ksdm + '''';
    dm_data.qry_pub.Open;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的医生!', '注意', 16);
      dbedit3.Clear;
      dbedit3.SetFocus;
      abort;
    end
    else
      if dm_data.qry_pub.RecordCount = 1 then
      begin
        qry_blyssz.FieldByName('blys').AsString := dm_data.qry_pub['mc'];
        qry_blyssz.FieldByName('blysdm').AsString := dm_data.qry_pub['dm'];
        dbedit3.Text := dm_data.qry_pub['mc'];
        dbedit4.SetFocus;
      end
      else
      begin
        dbgrid1.tag := 1;
        dbgrid1.Visible := true;
        dbgrid1.SetFocus;
      end;
  end
  else
  begin
    if key = #13 then
      if application.MessageBox('是否要清除设置的病历医生?', '提示', 4 + 256 + 32) = 6 then
      begin
        qry_blyssz.FieldByName('blys').AsString := '';
        qry_blyssz.FieldByName('blysdm').AsString := '';
        dbedit3.Text := '';
      end;
  end;
end;

procedure Tfrm_blyssz.DBGrid1Exit(Sender: TObject);
begin
  dbgrid1.Visible := false;
end;

procedure Tfrm_blyssz.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (dbgrid1.tag = 1) then
  begin
    qry_blyssz.FieldByName('blys').AsString := dm_data.qry_pub['mc'];
    qry_blyssz.FieldByName('blysdm').AsString := dm_data.qry_pub['dm'];
    dbedit3.Text := dm_data.qry_pub['mc'];
    dbedit4.SetFocus;
  end;
  if (key = #13) and (dbgrid1.tag = 2) then
  begin
    qry_blyssz.FieldByName('zzys').AsString := dm_data.qry_pub['mc'];
    qry_blyssz.FieldByName('zzysdm').AsString := dm_data.qry_pub['dm'];
    dbedit4.Text := dm_data.qry_pub['mc'];
    dbedit5.SetFocus;
  end;
  if (key = #13) and (dbgrid1.tag = 3) then
  begin
    qry_blyssz.FieldByName('zgys').AsString := dm_data.qry_pub['mc'];
    qry_blyssz.FieldByName('zgysdm').AsString := dm_data.qry_pub['dm'];
    dbedit5.Text := dm_data.qry_pub['mc'];
    dbedit6.SetFocus;
  end;
  if (key = #13) and (dbgrid1.tag = 5) then
  begin
    qry_blyssz.FieldByName('ssys').AsString := dm_data.qry_pub['mc'];
    qry_blyssz.FieldByName('ssysdm').AsString := dm_data.qry_pub['dm'];
    dbedit6.Text := dm_data.qry_pub['mc'];
    dbedit9.SetFocus;
  end;
  if (key = #13) and (dbgrid1.tag = 6) then
  begin
    qry_blyssz.FieldByName('jfys').AsString :=
      trim(qry_blyssz.FieldByName('jfys').AsString) + ',' + dm_data.qry_pub['mc'];
    qry_blyssz.FieldByName('jfysdm').AsString :=
      trim(qry_blyssz.FieldByName('jfysdm').AsString) + ',' + dm_data.qry_pub['dm'];
    edthzys.SelectAll;
    edthzys.SetFocus;
  end;
  if (key = #13) and (dbgrid1.tag = 7) then
  begin
    qry_blyssz.FieldByName('hzys').AsString :=
      trim(qry_blyssz.FieldByName('hzys').AsString) + ',' + dm_data.qry_pub['mc'];
    qry_blyssz.FieldByName('hzysdm').AsString :=
      trim(qry_blyssz.FieldByName('hzysdm').AsString) + ',' + dm_data.qry_pub['dm'];
    btok.SetFocus;
  end;
  if (key = #13) and (dbgrid1.tag = 8) then
  begin
    qry_blyssz.FieldByName('mzysmc').AsString := dm_data.qry_pub['mc'];
    qry_blyssz.FieldByName('mzysdm').AsString := dm_data.qry_pub['dm'];
    DBedit9.Text := dm_data.qry_pub['mc'];
    edtICU.SelectAll;
    edtICU.SetFocus;
  end;
end;

procedure Tfrm_blyssz.edthzysKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (edthzys.Text <> '') then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.text := 'select dm,mc from sys_czy where (pym like ' +
      '''' + '%' + trim(edthzys.Text) + '%' + '''' +
      ' or dm like ' + '''' + '%' + trim(edthzys.Text) + '%' + '''' +
      ' or mc like ' + '''' + '%' + trim(edthzys.Text) + '%' + '''' +
      ') and ysbz =1 ';
    dm_data.qry_pub.Open;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的上级医生!', '注意', 16);
      edticu.Clear;
      edticu.SetFocus;
      abort;
    end
    else
      if dm_data.qry_pub.RecordCount = 1 then
      begin
        qry_blyssz.FieldByName('hzys').AsString :=
          trim(qry_blyssz.FieldByName('hzys').AsString) + ',' + dm_data.qry_pub['mc'];
        qry_blyssz.FieldByName('hzysdm').AsString :=
          trim(qry_blyssz.FieldByName('hzysdm').AsString) + ',' + dm_data.qry_pub['dm'];
        edthzys.SelectAll;
        edthzys.SetFocus;
      end
      else
      begin
        dbgrid1.tag := 7;
        dbgrid1.Visible := true;
        dbgrid1.SetFocus;
      end;
  end
  else
  begin
    if key = #13 then
      if application.MessageBox('是否要清除设置的会诊医生?', '提示', 4 + 256 + 32) = 6 then
      begin
        qry_blyssz.FieldByName('hzys').AsString := '';
        qry_blyssz.FieldByName('hzysdm').AsString := '';
        dbedit8.Text := '';
      end;
  end;
end;

procedure Tfrm_blyssz.edtICUKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (edticu.Text <> '') then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.text := 'select dm,mc from sys_czy where (pym like ' +
      '''' + '%' + trim(edticu.Text) + '%' + '''' +
      ' or dm like ' + '''' + '%' + trim(edticu.Text) + '%' + '''' +
      ' or mc like ' + '''' + '%' + trim(edticu.Text) + '%' + '''' +
      ') and ysbz =1 ';
    dm_data.qry_pub.Open;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的上级医生!', '注意', 16);
      edticu.Clear;
      edticu.SetFocus;
      abort;
    end
    else
      if dm_data.qry_pub.RecordCount = 1 then
      begin
        qry_blyssz.FieldByName('jfys').AsString :=
          trim(qry_blyssz.FieldByName('jfys').AsString) + ',' + dm_data.qry_pub['mc'];
        qry_blyssz.FieldByName('jfysdm').AsString :=
          trim(qry_blyssz.FieldByName('jfysdm').AsString) + ',' + dm_data.qry_pub['dm'];
        edthzys.SelectAll;
        edthzys.SetFocus;
      end
      else
      begin
        dbgrid1.tag := 6;
        dbgrid1.Visible := true;
        dbgrid1.SetFocus;
      end;
  end
  else
  begin
    if key = #13 then
      if application.MessageBox('是否要清除设置的ICU医生?', '提示', 4 + 256 + 32) = 6 then
      begin
        qry_blyssz.FieldByName('jfys').AsString := '';
        qry_blyssz.FieldByName('jfysdm').AsString := '';
        dbedit7.Text := '';
      end;
  end;
end;

procedure Tfrm_blyssz.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (dbedit4.Text <> '') then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.text := 'select dm,mc from sys_czy where (pym like ' +
      '''' + '%' + trim(dbedit4.Text) + '%' + '''' +
      ' or dm like ' + '''' + '%' + trim(dbedit4.Text) + '%' + '''' +
      ' or mc like ' + '''' + '%' + trim(dbedit4.Text) + '%' + '''' +
      ') and ysbz=1 and ksdm = ' + '''' + pub_ksdm + '''';
    dm_data.qry_pub.Open;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的上级医生!', '注意', 16);
      dbedit4.Clear;
      dbedit4.SetFocus;
      abort;
    end
    else
      if dm_data.qry_pub.RecordCount = 1 then
      begin
        qry_blyssz.FieldByName('zzys').AsString := dm_data.qry_pub['mc'];
        qry_blyssz.FieldByName('zzysdm').AsString := dm_data.qry_pub['dm'];
        dbedit4.Text := dm_data.qry_pub['mc'];
        dbedit5.SetFocus;
      end
      else
      begin
        dbgrid1.tag := 2;
        dbgrid1.Visible := true;
        dbgrid1.SetFocus;
      end;
  end
  else
  begin
    if key = #13 then
      if application.MessageBox('是否要清除设置的主管医生?', '提示', 4 + 256 + 32) = 6 then
      begin
        qry_blyssz.FieldByName('zzys').AsString := '';
        qry_blyssz.FieldByName('zzysdm').AsString := '';
        dbedit4.Text := '';
      end;
  end;
end;

procedure Tfrm_blyssz.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (dbedit5.Text <> '') then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.text := 'select dm,mc from sys_czy where (pym like ' +
      '''' + '%' + trim(dbedit5.Text) + '%' + '''' +
      ' or dm like ' + '''' + '%' + trim(dbedit5.Text) + '%' + '''' +
      ' or mc like ' + '''' + '%' + trim(dbedit5.Text) + '%' + '''' +
      ') and ysbz=1 and ksdm = ' + '''' + pub_ksdm + '''';
    dm_data.qry_pub.Open;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的上级医生!', '注意', 16);
      dbedit5.Clear;
      dbedit5.SetFocus;
      abort;
    end
    else
      if dm_data.qry_pub.RecordCount = 1 then
      begin
        qry_blyssz.FieldByName('zgys').AsString := dm_data.qry_pub['mc'];
        qry_blyssz.FieldByName('zgysdm').AsString := dm_data.qry_pub['dm'];
        dbedit5.Text := dm_data.qry_pub['mc'];
        dbedit6.SetFocus;
      end
      else
      begin
        dbgrid1.tag := 3;
        dbgrid1.Visible := true;
        dbgrid1.SetFocus;
      end;
  end
  else
  begin
    if key = #13 then
      if application.MessageBox('是否要清除设置的科室主管?', '提示', 4 + 256 + 32) = 6 then
      begin
        qry_blyssz.FieldByName('zgys').AsString := '';
        qry_blyssz.FieldByName('zgysdm').AsString := '';
        dbedit5.Text := '';
      end;
  end;
end;

procedure Tfrm_blyssz.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (dbedit6.Text <> '') then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.text := 'select dm,mc from sys_czy where (pym like ' +
      '''' + '%' + trim(dbedit6.Text) + '%' + '''' +
      ' or dm like ' + '''' + '%' + trim(dbedit6.Text) + '%' + '''' +
      ' or mc like ' + '''' + '%' + trim(dbedit6.Text) + '%' + '''' +
      ') and ysbz =1 ';
    dm_data.qry_pub.Open;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的手术医生!', '注意', 16);
      dbedit6.Clear;
      dbedit6.SetFocus;
      abort;
    end
    else
      if dm_data.qry_pub.RecordCount = 1 then
      begin
        qry_blyssz.FieldByName('ssys').AsString := dm_data.qry_pub['mc'];
        qry_blyssz.FieldByName('ssysdm').AsString := dm_data.qry_pub['dm'];
        dbedit6.Text := dm_data.qry_pub['mc'];
        dbedit9.SetFocus;
      end
      else
      begin
        dbgrid1.tag := 5;
        dbgrid1.Visible := true;
        dbgrid1.SetFocus;
      end;
  end
  else
  begin
    if key = #13 then
      if application.MessageBox('是否要清除设置的手术医生?', '提示', 4 + 256 + 32) = 6 then
      begin
        qry_blyssz.FieldByName('ssys').AsString := '';
        qry_blyssz.FieldByName('ssysdm').AsString := '';
        dbedit6.Text := '';
      end;
  end;
end;

procedure Tfrm_blyssz.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (DBEdit9.Text <> '') then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.text := 'select dm,mc from sys_czy where (pym like ' +
      '''' + '%' + trim(DBEdit9.Text) + '%' + '''' +
      ' or dm like ' + '''' + '%' + trim(DBEdit9.Text) + '%' + '''' +
      ' or mc like ' + '''' + '%' + trim(DBEdit9.Text) + '%' + '''' +
      ') and ysbz =1 ';
    dm_data.qry_pub.Open;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的麻醉医生!', '注意', 16);
      DBEdit9.Clear;
      DBEdit9.SetFocus;
      abort;
    end
    else
      if dm_data.qry_pub.RecordCount = 1 then
      begin
        qry_blyssz.FieldByName('mzysmc').AsString := dm_data.qry_pub['mc'];
        qry_blyssz.FieldByName('mzysdm').AsString := dm_data.qry_pub['dm'];
        DBEdit9.Text := dm_data.qry_pub['mc'];
        EdtIcu.SetFocus;
      end
      else
      begin
        dbgrid1.tag := 8;
        dbgrid1.Visible := true;
        dbgrid1.SetFocus;
      end;
  end
  else
  begin
    if key = #13 then
      if application.MessageBox('是否要清除设置的麻醉医生?', '提示', 4 + 256 + 32) = 6 then
      begin
        qry_blyssz.FieldByName('mzysdm').AsString := '';
        qry_blyssz.FieldByName('mzysmc').AsString := '';
        DBEdit9.Text := '';
      end;
  end;
end;

procedure Tfrm_blyssz.btokClick(Sender: TObject);
begin
  qry_blyssz.Post;
  dm_data.qry_pub.Close;
  dm_data.qry_pub.SQL.Text := 'update zydzbl_zydzblmx set blys=' + #39 + trim(dbedit3.Text) + #39 +
    ',zzys=' + #39 + trim(dbedit4.Text) + #39 +
    ',zgys=' + #39 + trim(dbedit5.Text) + #39 +
    ' where zyh=' + #39 + pub_zyh + #39;
  dm_data.qry_pub.ExecSQL;
  close;
end;

end.

