unit p_tzysf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Db, DBTables, Mask, Grids,
  DBGrids, Buttons, ComCtrls, ADODB, DBGridEh, GridsEh,
  ToolCtrlsEh, DBGridEhGrouping;

type
  Tfrm_tzysf = class(TForm)
    ds_zy_fymx: TDataSource;
    Bevel1: TBevel;
    bt_tf: TBitBtn;
    b_close: TBitBtn;
    Bevel2: TBevel;
    tmh: TEdit;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    sp_cx_fymx: TADOStoredProc;
    sp_in_tzysf: TADOStoredProc;
    DBGrid2: TDBGrid;
    g_empt: TDBGrid;
    brxm: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    qry_fydx: TADOQuery;
    ds_fydx: TDataSource;
    sp_cfbh: TADOStoredProc;
    sp_save: TADOStoredProc;
    qry_zydj: TADOQuery;
    qry_cf: TADOQuery;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    editsflb: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    fysl: TEdit;
    Label3: TLabel;
    sfje: TEdit;
    procedure bt_tfClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure editzyhKeyPress(Sender: TObject; var Key: Char);
    procedure editsflbKeyPress(Sender: TObject; var Key: Char);
    procedure b_closeClick(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sp_cx_fymxAfterScroll(DataSet: TDataSet);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure g_emptKeyPress(Sender: TObject; var Key: Char);
    procedure g_emptExit(Sender: TObject);
    procedure qry_fydxAfterScroll(DataSet: TDataSet);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure fyslExit(Sender: TObject);
    procedure fyslKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fyslEnter(Sender: TObject);
    procedure sfjeEnter(Sender: TObject);
    procedure DBGridEh2SelectionChanged(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure FormResize(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure Label7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tmhEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  var
    tffs: string; //---calmhawk---2011-07-24---退费方式:1 收费处退费 ，2 病区退费
    { Private declarations }
  procedure GetTotal;
  function zysf_tfy(id, zy_zyh, czydm, zy_fydm: string; zy_fysl: integer;
    zy_tfje, zy_zfje: double): string;
  public
    zy_zfzdmc: string;
    zy_txyfbz: boolean;
    zy_zyh: string;
    zy_tmh: string;
    zy_fydm: string;
    zy_fysl: integer;
    zy_fydj: real;
    zy_tfje: real;
    zy_zfje: real;
    zy_fybl: real;
  procedure locafymx;

{ Public declarations }
  end;

var
  frm_tzysf: Tfrm_tzysf;
  hsztfsj: Integer;

procedure pro_tzysf(_tffs, _tmh: string);

implementation

uses p_dm, p_func, p_login, p_main, p_tzysf_sq;

{$R *.DFM}

function Tfrm_tzysf.zysf_tfy(id, zy_zyh, czydm, zy_fydm: string; zy_fysl: integer;
  zy_tfje, zy_zfje: double): string;
begin
  with sp_in_tzysf do
  begin
    active := false;
    parameters.ParamByName('@id').value := id;
    parameters.ParamByName('@zyh').value := zy_zyh;
    parameters.ParamByName('@czydm').value := czydm;
    parameters.ParamByName('@fydm').value := zy_fydm;
    parameters.ParamByName('@fysl').value := zy_fysl;
    parameters.ParamByName('@tfje').value := zy_tfje;
    parameters.ParamByName('@zfje').value := zy_zfje;
    parameters.ParamByName('@sczt').value := '0';
    execproc;
  end;
  result := sp_in_tzysf.parameters.ParamByName('@sczt').value;
end;

procedure SortDBGridEh(Sender: TObject; ACol: Integer; Column: TColumnEh);
var
  FieldName, SortStr: string;
begin
  Screen.Cursor := crSQLWait;
  try
    if (Sender is TDBGridEh) and ((Sender as TDBGridEh).DataSource.DataSet <> nil) then
    begin
      if not ((Sender as TDBGridEh).DataSource.DataSet is TCustomADODataSet) then
        Exit;

      if not (Sender as TDBGridEh).DataSource.DataSet.Active then
        Exit;

      FieldName := Column.FieldName;

      if (Sender as TDBGridEh).DataSource.DataSet.FindField(FieldName).IsBlob then
        Exit;
      if (Sender as TDBGridEh).DataSource.DataSet.FieldByName(FieldName).FieldKind =
        fkData then
        SortStr := FieldName
      else if (Sender as TDBGridEh).DataSource.DataSet.FieldByName(FieldName).FieldKind =
        fkLookup then
        FieldName := (Sender as TDBGridEh).DataSource.DataSet.FieldByName(FieldName).KeyFields
      else
        FieldName := '';

      if (FieldName = '') or (Pos(';', FieldName) > 0) then Exit;
      case Column.Title.SortMarker of
        smNoneEh:
          begin
            Column.Title.SortMarker := smDownEh;
            TCustomADODataSet((Sender as TDBGridEh).DataSource.DataSet).Sort := FieldName + ' ASC';
          end;

        smUpEh:
          begin
            //Column.Title.SortMarker := smDownEh;
            TCustomADODataSet((Sender as TDBGridEh).DataSource.DataSet).Sort := FieldName + ' DESC';
          end;

        smDownEh:
          begin
            //Column.Title.SortMarker := smUpEh;
            TCustomADODataSet((Sender as TDBGridEh).DataSource.DataSet).Sort := FieldName + ' ASC'; ;
          end;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrm_tzysf.bt_tfClick(Sender: TObject);
var
  revalue, _cfbh, _tycfbh, dxdm, dxsj: string;
  i: Integer;
  jgsj: Integer;
  v_bqdm,fymc:string;
begin

  if qry_fydx.FieldByName('fyje').AsFloat <=0 then
  begin
  fymc:=qry_fydx.FieldByName('fymc').AsString+'费用已退完，请重新选择！！！';
  application.MessageBox(PChar(fymc), '提示', 0 + 16);
  fysl.SelectAll;
  fysl.SetFocus;
  qry_fydx.Close;
  qry_fydx.Open;
  end else
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text:='select bqdm from sys_bqzyfl a,sys_ksdm b where a.bqzydm=b.dm and rtrim(b.mc)='
  +''''+ trim(sp_cx_fymx.FieldByName('mc').asstring)+
  '''';
  DM_data.qry_pub.open;
  v_bqdm:= trim(DM_data.qry_pub.FieldByName('bqdm').AsString);
  if ('sys_bqgl' = username) then
  begin
    if v_bqdm <> trim(pub_bqdm) then
    begin
      application.MessageBox('本费用非本病区收费，不能退费！', '提示', 0 + 16);
      Exit;
    end;
  end;
  if (tffs = '2') and ((pub_yydm = '0015') or (pub_yydm = '0246')) then
  begin
    DM_data.qry_pub.close;
    if label1.Caption = '退打包项目' then
    begin
      DM_data.qry_pub.SQL.text := 'select datediff(minute,sfrq,getdate()) jgsj from zysf_zyfydx where id=' +
      sp_cx_fymx.FieldByName('id').asstring;
    end
    else
    begin
      DM_data.qry_pub.SQL.text := 'select datediff(minute,sfrq,getdate()) jgsj from zysf_zyfymx where id=' +
      sp_cx_fymx.FieldByName('id').asstring;
    end;
    DM_data.qry_pub.Open;
    jgsj := DM_data.qry_pub.FieldByName('jgsj').AsInteger;
    if jgsj > hsztfsj then
    begin
      if pub_yydm = '0246' then
      begin
        case Application.MessageBox('有已超过病区限定退费时间，是否向财务科申请退费？',
          '退费', MB_YESNO + MB_ICONQUESTION) of
          IDYES:
            begin
              DM_data.qry_pub.Close;
              DM_data.qry_pub.SQL.Text := 'select * from zysf_tfsq where fyid=' + sp_cx_fymx.FieldByName('id').asstring;
              DM_data.qry_pub.Open;
              if not DM_data.qry_pub.IsEmpty then
              begin
                Application.MessageBox('此费用已在退费申请清单中！', '医嘱', 
                  MB_OK + MB_ICONSTOP);
              end else begin
                DM_data.qry_pub.Append;
                DM_data.qry_pub.FieldByName('fyid').Value := sp_cx_fymx.FieldByName('id').AsInteger;
                DM_data.qry_pub.FieldByName('zyh').Value := zy_zyh;
                DM_data.qry_pub.FieldByName('sqczy').Value := pub_czydm;
                DM_data.qry_pub.Post;
                DM_data.qry_pub.UpdateBatch(arCurrent);
              end;

              if not Assigned(Frm_tzysf_sq) then
                Application.CreateForm(TFrm_tzysf_sq, Frm_tzysf_sq);
              Frm_tzysf_sq.Show(zy_zyh,tffs);
            end;
          IDNO:
            begin

            end;
        end;
      end else begin
        application.MessageBox('有已超过病区限定退费时间，请到收费处退费！', '提示', 0 + 16);
      end;
      Exit;
    end;
  end;
  if application.MessageBox('确定要退费吗？', '提示', 52) = 6 then
  begin
    if sp_cx_fymx.fieldbyname('tfbz').asboolean = true then
    begin
      application.MessageBox('已退费！不能再退！', '提示', 0 + 16);
      abort;
    end;
    if label1.Caption = '退明细项目' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select * from zysf_zyfymx where id=' + sp_cx_fymx.FieldByName('id').asstring;
      DM_data.qry_pub.Open;
      if (DM_data.qry_pub.FieldByName('bz').AsString = '确认') and (tffs = '2') then
      begin
        application.MessageBox('已确费！不能在护士站退费！', '提示', 0 + 16);
        Exit;
      end;
    end
    else
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select * from zysf_zyfydx where id=' + sp_cx_fymx.FieldByName('id').asstring;
      DM_data.qry_pub.Open;
      dxdm := DM_data.qry_pub.FieldByName('fydm').AsString;
      dxsj := FormatDateTime('yyyy-MM-dd HH:mm:ss', DM_data.qry_pub.FieldByName('sfrq').AsDateTime);
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select a.* from zysf_zyfymx a,sys_kjsfxm_db b  where a.fydm=b.fydm and ' +
        ' b.dxdm=' + '''' + dxdm + '''' + ' and convert(varchar,a.sfrq,120)=' + '''' + dxsj + ''' and a.zyh=' + '''' + zy_zyh + '''';
      DM_data.qry_pub.Open;
      if (DM_data.qry_pub.FieldByName('bz').AsString = '确认') and (tffs = '2') then
      begin
        application.MessageBox('已确费！不能在护士站退费！', '提示', 0 + 16);
        Exit;
      end;
    end;

    zy_zfje := zy_tfje * zy_fybl / 100;
    //------calmhawk---2011-07-23---退西药费
    if Trim(sp_cx_fymx.FieldByName('fydm').AsString) = pub_xyfdm then
    begin
      Application.MessageBox('西药费请到药房退！', '提示', MB_OK +
        MB_ICONWARNING);

      Exit;

      dm_data.Qry_pdzt.close;
      dm_data.Qry_pdzt.parameters.ParamByName('ksdm').value := pub_ksdm;
      dm_data.Qry_pdzt.open;
      if dm_data.qry_pdzt.FieldByName('pdzt').AsString = '1' then
      begin
        application.MessageBox('系统正在进行盘点，不能退西药费!', '注意', 16);
        abort;
      end;
      if application.MessageBox('请确认是否退西药费?', '注意', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
        abort;
      //病人合法性检测
      qry_zydj.close;
      qry_zydj.Parameters.ParamByName('zyh').value := zy_zyh;
      qry_zydj.open;
      if qry_zydj['cybz'] = true then
      begin
        application.MessageBox('该病人已办出院,不能退药!', '注意', 16);
        abort;
      end;
      _cfbh := sp_cx_fymx.FieldByName('cfbh').AsString;
      //处方合法性检测
      qry_cf.close;
      qry_cf.Parameters.ParamByName('cfbh').value := _cfbh;
      qry_cf.open;
      if qry_cf['tybz'] = true then
      begin
        application.MessageBox('该处方在操作期间已被其他人退药，不能重复!', '注意', 16);
        abort;
      end;
      qry_cf.close;
      sp_cfbh.close;
      sp_cfbh.ExecProc;
      _tycfbh := sp_cfbh.Parameters.parambyname('@cfbh').value;
      sp_save.close;
      sp_save.Parameters.ParamByName('@cfbh').value := _cfbh;
      sp_save.Parameters.ParamByName('@tycfbh').value := _tycfbh;
      sp_save.Parameters.ParamByName('@fyczy').value := pub_czydm;
      sp_save.Parameters.ParamByName('@ksdm').value := pub_ksdm;
      sp_save.Parameters.ParamByName('@sjbh').value := '';
      sp_save.Parameters.ParamByName('@sc_cg').value := -2; // -2 表示退西药费。
      sp_save.ExecProc;
      revalue := sp_save.Parameters.ParamByName('@sc_cg').value;
    end
    else
    begin
      if DBGrideh2.SelectedRows.Count > 1 then
      begin
        for I := 0 to DBGrideh2.SelectedRows.Count - 1 do
        begin
          DBGrideh2.DataSource.DataSet.bookmark := DBGrideh2.SelectedRows[I];
          revalue := zysf_tfy(sp_cx_fymx['id'], zy_zyh, pub_czydm, zy_fydm,
            zy_fysl, zy_tfje, zy_zfje);
          if revalue <> '1' then
          begin
            application.MessageBox(PChar('没有成功保存！' + #13 + revalue), '提示', 16);
            Exit;
          end;
        end;
      end else begin
        zy_fysl := StrToInt(fysl.Text);
        zy_tfje := StrToFloat(sfje.Text);
        revalue := zysf_tfy(sp_cx_fymx['id'], zy_zyh, pub_czydm, zy_fydm,
          zy_fysl, zy_tfje, zy_zfje);
        if revalue <> '1' then
        begin
          application.MessageBox(PChar('没有成功保存！' + #13 + revalue), '提示', 16);
          Exit;
        end;
      end;
    end;

    if revalue = '1' then
    begin
      application.MessageBox('成功保存！', '提示', 48);
      editsflb.Clear;
      editsflb.SetFocus;
      sfje.Clear;
      sp_cx_fymx.Close;
    end;
  end;
  bt_tf.Enabled := not sp_cx_fymx.isempty;
  qry_fydx.Close;
  qry_fydx.Open;
  end;
end;

procedure Tfrm_tzysf.Button1Click(Sender: TObject);
begin
  if not Assigned(Frm_tzysf_sq) then
    Application.CreateForm(TFrm_tzysf_sq, Frm_tzysf_sq);
  Frm_tzysf_sq.Show(zy_zyh,tffs);
end;

procedure Tfrm_tzysf.Button3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_tzysf.editzyhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then editsflb.SetFocus;
end;

procedure Tfrm_tzysf.editsflbKeyPress(Sender: TObject; var Key: Char);
var
  s: string;
begin
  if key = #13 then
  begin
    s := editsflb.text + '%';
    with dm_data.qry_pub do
    begin
      close;
      sql.Clear;
      sql.Add(' select *');
      sql.Add(' from sys_kjsfxm ');
      sql.Add(' where (pym like ' + '''' + s + '''');
      sql.Add(' or fymc like ' + '''' + s + '''');
      sql.Add(' or fydm like ' + '''' + s + '''');
      sql.Add(' or typym like ' + '''' + s + '''');
      sql.Add(' or szdm like ' + '''' + s + '''' + ')');
      sql.Add(' order  by szdm ');
      open;
    end;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      application.MessageBox('收费类别码输入错误！', '提示', 48);
      editsflb.SelectAll;
      editsflb.SetFocus;
      abort;
    end;
    if dm_data.qry_pub.RecordCount > 1 then
    begin
      g_empt.Left := editsflb.left;
      g_empt.Top := editsflb.top + editsflb.height;
      g_empt.Columns[2].visible := true;
      g_empt.Columns[0].fieldname := 'fymc';
      g_empt.Columns[0].title.Caption := '名称';
      g_empt.Columns[1].fieldname := 'pym';
      g_empt.Columns[1].title.Caption := '拼音码';
      g_empt.Columns[2].Visible := true;
      g_empt.Columns[2].fieldname := 'sfbz';
      g_empt.Columns[2].title.Caption := '价格';
      g_empt.Tag := 1; // 1表示GRID显示收费类别
      G_empt.visible := true;
      g_empt.SetFocus;
    end;
    if dm_data.qry_pub.RecordCount = 1 then
    begin
      editsflb.text := trim(dm_data.qry_pub.fieldbyname('fymc').asstring);
      zy_fydm := trim(dm_data.qry_pub.fieldbyname('fydm').asstring);
      if qry_fydx.Active then
        qry_fydx.Locate('fydm', zy_fydm, []);
    end;
  end;
end;

procedure Tfrm_tzysf.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_tzysf.tmhEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_tzysf.tmhKeyPress(Sender: TObject; var Key: Char);
var
  s, s1: string;
begin
  if key = #13 then
  begin
    if key > #127 then
      s1 := trim(tmh.text) + '%'
    else
    try
      s1 := formatex(strtoint(tmh.text), 9);
    except
      s1 := trim(tmh.text);
    end;
    s := s1;
    with dm_data.qry_pub do
    begin
      Close;
      SQL.clear;
      SQL.Text := 'select zydj.brxm,zydj.tmh,zydj.brxb,zydj.brnl,zydj.brdz,' +
        ' zydj.zyh,zydj.ksdm,fylb.zfzdmc,zydj.cybz,ksdm.mc ' +
        ' from zysf_zydj zydj,sys_fylb fylb,sys_ksdm ksdm' +
        ' where zydj.fylb=fylb.dm and zydj.ksdm=ksdm.dm and zydj.tmh<>' +
        #39 + '000000001' + #39 + ' and (zydj.tmh=' + #39 + s + #39 +
        ' or zydj.brxm like ' + #39 + '%' + s + '%' + #39 +
        ' or zydj.pym like ' + #39 + '%' + s + '%' + #39 +
        ' or zydj.bah like ' + #39 + '%' + s + '%' + #39 +
         ') and ' +
        ' jsbz=0 and cybz=0';

      open;
    end;
    if dm_data.qry_pub.IsEmpty then
    begin
      application.MessageBox('无此此卡号！', '提示', 0 + 16);
      tmh.SetFocus;
      tmh.SelectAll;
      abort;
    end
    else
      if dm_data.Qry_pub.RecordCount = 1 then
      begin
        if dm_data.Qry_pub.FieldByName('cybz').asboolean = true then
        begin
          application.MessageBox('该病人已办出院登记 不能退费用！', '提示', 0 + 16);
          tmh.SelectAll;
          tmh.SetFocus;
          abort;
        end;
        zy_zfzdmc := dm_data.qry_pub.fieldbyname('zfzdmc').asstring;
        zy_tmh := trim(dm_data.qry_pub.fieldbyname('tmh').asstring);
        zy_zyh := trim(dm_data.qry_pub.fieldbyname('zyh').asstring);
        qry_fydx.Close;
        if username = 'sys_bqgl' then
        begin
          qry_fydx.Parameters.ParamByName('zyh').value := zy_zyh;
          qry_fydx.Parameters.ParamByName('xyfdm').value := pub_xyfdm;
        end
        else
        begin
          qry_fydx.Parameters.ParamByName('zyh').value := zy_zyh;
        end;
        qry_fydx.Open;
        brxm.Text := trim(dm_data.qry_pub.fieldbyname('brxm').asstring);
        tmh.text := zy_tmh;
        editsflb.SetFocus;
      end
      else
      begin
        dbgrid2.top := 24;
        dbgrid2.Left := 31;
        dbgrid2.Visible := true;
        dbgrid2.SetFocus;
      end;
    fysl.Enabled := True;
    sfje.Enabled := True;
    
    frm_func.restorecolor(sender);
  end;
end;

procedure Tfrm_tzysf.FormShow(Sender: TObject);
var
  _SQL1: string;
begin
  tmh.SetFocus;
  if pub_tmhxsbz = false then
    tmh.PasswordChar := '*';
  //-----calmhawk---2011-07-23---添加判断，护士站可以退西药费。
  if username = 'sys_bqgl' then
  begin
    _SQL1 := 'SELECT fymx.zyh,fymx.fydm,sfxm.fymc,sfxm.dldm,sum(fymx.fyje) fyje,' +
      ' avg(sfxm.htfybl) htfybl,avg(sfxm.bxfybl) bxfybl,' +
      ' avg(sfxm.sbfybl) sbfybl,sbfybl01,sbfybl02,sbfybl03,sbfybl04,sbfybl05,sbfybl06,sbfybl07,sbfybl08 ' +
      ' FROM zysf_zyfydx fymx,sys_kjsfxm sfxm' +
      ' WHERE  fymx.fydm=sfxm.fydm and' +
      ' ((sfxm.dldm<>' + #39 + '0101' + #39 + '   and' +
      ' sfxm.dldm<>' + #39 + '0102' + #39 + ') or fymx.fydm=:xyfdm) and ' +
      ' fymx.zyh= :zyh ' +
      ' group by fymx.zyh,fymx.fydm,sfxm.fymc,sfxm.dldm,sbfybl01,sbfybl02,sbfybl03,sbfybl04,sbfybl05,sbfybl06,sbfybl07,sbfybl08' +
      ' order by fymc ';
  end
  else
  begin
    _SQL1 := 'SELECT fymx.zyh,fymx.fydm,sfxm.fymc,sfxm.dldm,sum(fymx.fyje) fyje,' +
      ' avg(sfxm.htfybl) htfybl,avg(sfxm.bxfybl) bxfybl,' +
      ' avg(sfxm.sbfybl) sbfybl,sbfybl01,sbfybl02,sbfybl03,sbfybl04,sbfybl05,sbfybl06,sbfybl07,sbfybl08 ' +
      ' FROM zysf_zyfydx fymx,sys_kjsfxm sfxm' +
      ' WHERE  fymx.fydm=sfxm.fydm and' +
      ' sfxm.dldm<>' + #39 + '0101' + #39 + '   and' +
      ' sfxm.dldm<>' + #39 + '0102' + #39 + ' and ' +
      ' fymx.zyh= :zyh ' +
      ' group by fymx.zyh,fymx.fydm,sfxm.fymc,sfxm.dldm,sbfybl01,sbfybl02,sbfybl03,sbfybl04,sbfybl05,sbfybl06,sbfybl07,sbfybl08' +
      ' order by fymc ';
  end;

  qry_fydx.Close;
  qry_fydx.SQL.Clear;
  qry_fydx.SQL.Add(_SQL1);
  qry_fydx.Parameters.ParamByName('zyh').Value := '';

  dm_data.qry_pub.Close;
  dm_data.qry_pub.SQL.Text := 'select * from sys_xt_kg';
  dm_data.qry_pub.Open;
  if Assigned(dm_data.qry_pub.FindField('hsztfsj')) then
  begin
    hsztfsj := dm_data.qry_pub.FindField('hsztfsj').AsInteger;
  end;  
end;

procedure Tfrm_tzysf.FormCreate(Sender: TObject);
begin
  tffs := '2';//病区 退费
end;

procedure Tfrm_tzysf.FormDestroy(Sender: TObject);
begin
  if not Assigned(Frm_tzysf_sq) then
    Frm_tzysf_sq.Free;
end;

procedure Tfrm_tzysf.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    editsflb.Clear;
    editsflb.Clear;
  end;
end;

procedure Tfrm_tzysf.FormResize(Sender: TObject);
begin
  Label7.Alignment := taCenter;
  Label7.Width := Self.Width;
  Label7.Top := Splitter1.Top + 10;
  Label8.Top := Splitter1.Top;
end;

procedure Tfrm_tzysf.sfjeEnter(Sender: TObject);
begin
  //sfje.ReadOnly := true;
end;

procedure Tfrm_tzysf.Splitter1Moved(Sender: TObject);
begin
  FormResize(nil);
end;

procedure Tfrm_tzysf.sp_cx_fymxAfterScroll(DataSet: TDataSet);
begin
  bt_tf.Enabled := not sp_cx_fymx.isempty;
  sfje.text := floattostr(sp_cx_fymx.fieldbyname('fyje').asfloat);
  if sp_cx_fymx.IsEmpty then
    bt_tf.Enabled := false
  else
  begin
    if sp_cx_fymx.fieldbyname('tfbz').asboolean = false then
      bt_tf.Enabled := true;
    zy_fysl := sp_cx_fymx.fieldbyname('fysl').asinteger;
    zy_tfje := sp_cx_fymx.fieldbyname('fyje').asfloat;
    zy_zfje := sp_cx_fymx.FieldByName('zfje').AsFloat;
    zy_fydj := zy_tfje / zy_fysl;
    fysl.text := inttostr(zy_fysl);
    sfje.text := floattostr(zy_tfje);
  end;
end;

procedure Tfrm_tzysf.DBGrid2Exit(Sender: TObject);
begin
  dbgrid2.Visible := false;
end;

procedure Tfrm_tzysf.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    tmh.SelectAll;
    tmh.SetFocus;
    abort;
  end;
  if key = #13 then
  begin
    if dm_data.Qry_pub.FieldByName('cybz').asboolean = true then
    begin
      application.MessageBox('该病人已办出院登记 不能退费用！', '提示', 0 + 16);
      tmh.SelectAll;
      tmh.SetFocus;
      abort;
    end;
    zy_zfzdmc := dm_data.qry_pub.fieldbyname('zfzdmc').asstring;
    zy_tmh := trim(dm_data.qry_pub.fieldbyname('tmh').asstring);
    zy_zyh := trim(dm_data.qry_pub.fieldbyname('zyh').asstring);
    brxm.Text := trim(dm_data.qry_pub.fieldbyname('brxm').asstring);
    tmh.text := zy_tmh;
    tmh.SetFocus;

    tmhKeyPress(tmh, key);
  end;
end;

procedure Tfrm_tzysf.g_emptKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key = #27) and (g_empt.Tag = 1)) then
  begin
    g_empt.Visible := false;
    editsflb.SelectAll;
    editsflb.SetFocus;
  end;

  if ((key = #13) and (g_empt.Tag = 1)) then
  begin
    editsflb.text := trim(dm_data.qry_pub.fieldbyname('fymc').asstring);
    zy_fydm := dm_data.qry_pub.fieldbyname('fydm').asstring;
    if qry_fydx.Active then
      qry_fydx.Locate('fydm', zy_fydm, []);
    DBGridEh1.SetFocus;
  end;
end;

procedure Tfrm_tzysf.Label7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Splitter1.Perform(WM_LBUTTONDOWN, 0, 0);
end;

procedure Tfrm_tzysf.Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Splitter1.Perform(WM_MOUSEMOVE, 0, 0);
end;

procedure Tfrm_tzysf.Label7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Splitter1.Perform(WM_LBUTTONUP, 0, 0);
end;

procedure Tfrm_tzysf.g_emptExit(Sender: TObject);
begin
  g_empt.Hide;
end;

procedure Tfrm_tzysf.locafymx;
begin
  sp_cx_fymx.Close;
  sp_cx_fymx.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_cx_fymx.parameters.ParamByName('@fyje').value := 0;
  sp_cx_fymx.parameters.ParamByName('@fydm').value := zy_fydm;
  if label1.Caption = '退打包项目' then
    sp_cx_fymx.parameters.ParamByName('@tflb').value := '打包'
  else
    sp_cx_fymx.parameters.ParamByName('@tflb').value := '明细';
  if pub_yydm = '0013' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from zysf_kjkmmx where kmdm=''0210'' and fydm=' +
      '''' + zy_fydm + '''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
      sp_cx_fymx.parameters.ParamByName('@tffs').value := StrToInt(tffs)
    else
      sp_cx_fymx.parameters.ParamByName('@tffs').value := 1;
  end
  else if pub_yydm = '0019' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from zysf_kjkmmx where kmdm=''0110'' and fydm=' +
      '''' + zy_fydm + '''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
      sp_cx_fymx.parameters.ParamByName('@tffs').value := StrToInt(tffs)
    else
      sp_cx_fymx.parameters.ParamByName('@tffs').value := 1;
  end
  else
    sp_cx_fymx.parameters.ParamByName('@tffs').value := StrToInt(tffs);
  sp_cx_fymx.open;
  DBGridEh2.Columns[6].Width:=75;

  if sp_cx_fymx.IsEmpty then
  begin
    application.MessageBox('没有找到符合条件的记录,或者已超过规定的退费时间!!!', '提示', 16);
    editsflb.SetFocus;
    sp_cx_fymx.Close;
  end;
end;

procedure Tfrm_tzysf.qry_fydxAfterScroll(DataSet: TDataSet);
begin
  sfje.ReadOnly := true;
  //fysl.ReadOnly := true;
  if trim(qry_fydx.fieldbyname('dldm').asstring) = '50' then
    label1.Caption := '退打包项目'
  else
  begin
    label1.Caption := '退明细项目';
    fysl.ReadOnly := false;
  end;
  if zy_zfzdmc = '' then
    zy_fybl := 100
  else
    zy_fybl := qry_fydx.fieldbyname(zy_zfzdmc).asfloat;
//   zy_fybl := 0;
  zy_fydm := qry_fydx.fieldbyname('fydm').asstring;
  editsflb.Text := qry_fydx.fieldbyname('fymc').asstring;
end;

procedure Tfrm_tzysf.DBGridEh1DblClick(Sender: TObject);
begin
  locafymx;
end;

procedure Tfrm_tzysf.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    locafymx;
  end;
end;

procedure Tfrm_tzysf.DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if sp_cx_fymx['tfbz'] = true then
  begin
    DBGridEh2.Canvas.Brush.Color := cllime;
    DBGridEh2.Canvas.Font.color := clblue;
  end;
  (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_tzysf.DBGridEh2SelectionChanged(Sender: TObject);
begin
  GetTotal;
end;

procedure Tfrm_tzysf.DBGridEh2TitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  SortDBGridEh(Sender, ACol, Column);
end;

procedure Tfrm_tzysf.fyslEnter(Sender: TObject);
begin
   //fysl.ReadOnly := true;
end;

procedure Tfrm_tzysf.fyslExit(Sender: TObject);
begin
  if (bt_tf.Focused or sfje.Focused or DBGridEh2.focused or dbgrideh1.Focused) then
  try
    zy_fysl := strtoint(fysl.Text);
    if zy_fysl <= 0 then
    begin
      application.MessageBox('请输入正确的费用数量', '提示', 0 + 16);
      fysl.SelectAll;
      fysl.SetFocus;
    end
    else
    begin
      if (pub_yydm = '0013')  then
      begin
        if zy_fysl > sp_cx_fymx.FieldByName('fysl').AsInteger then
        begin
          application.MessageBox('输入的费用数量大于单条明细数量，请按明细逐条退费！！', '提示', 0 + 16);
          fysl.SelectAll;
          fysl.SetFocus;
        end;
      end;
      zy_tfje := zy_fysl * zy_fydj;
      sfje.Text := floattostr(zy_tfje);
    end;
  except
    application.MessageBox('请输入正确的费用数量', '提示', 0 + 16);
    fysl.SelectAll;
    fysl.SetFocus;
  end
end;

procedure Tfrm_tzysf.fyslKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then sfje.SetFocus;
end;

//住院退费
//tffs: 1 住院收费处退费，2 病区退费

procedure pro_tzysf(_tffs, _tmh: string);
begin
  try
    application.createform(tfrm_tzysf, frm_tzysf);

    frm_tzysf.tmh.text := _tmh;
    frm_tzysf.tffs := _tffs;
    //    frm_tzysf.Top := 80;
    //    frm_tzysf.Left := 2;
    Application.OnMessage := nil;
    frm_tzysf.showmodal;
  finally
    frm_tzysf.free;
  end;
end;

procedure Tfrm_tzysf.GetTotal;
var
  I: Integer;
  BM: TBookmarkStr;
  zy_fysl: integer;
  zy_tfje: Real;
begin
  zy_fysl := 0;
  zy_tfje := 0;
  if DBGrideh2.SelectedRows.Count > 0 then
  begin
    //with DBGrideh2 do
    begin
//设了ROWSELECT为TRUE时用这个
      if DBGrideh2.Selection.SelectionType <> gstRecordBookmarks then Exit;
//    if Selection.SelectionType<>gstRectangle then Exit;
      //with DataSource.DataSet do
      begin
        try
          BM := DBGrideh2.DataSource.DataSet.Bookmark;
          DBGrideh2.DataSource.DataSet.DisableControls;
          for I := 0 to DBGrideh2.SelectedRows.Count - 1 do
          begin
            DBGrideh2.DataSource.DataSet.bookmark := DBGrideh2.SelectedRows[I];
            zy_fysl := zy_fysl + DBGrideh2.VisibleColumns[2].Field.AsInteger;
            zy_tfje := zy_tfje + DBGrideh2.VisibleColumns[3].Field.AsFloat;
          end;
        finally
          DBGrideh2.DataSource.DataSet.Bookmark := BM;
          DBGrideh2.DataSource.DataSet.EnableControls;
        end;
      end;
    end;
    Label7.Caption := '选择退费记录:' + IntToStr(DBGridEh2.SelectedRows.Count) + '条，'
      + '退费数量:' + inttostr(zy_fysl) + '，退费金额:' + Floattostr(zy_tfje) + '元';
    if DBGrideh2.SelectedRows.Count > 1 then
    begin
      fysl.Enabled := False;
      sfje.Enabled := False;
    end else begin
      fysl.Enabled := True;
      sfje.Enabled := True;
    end;
  end;
end;


initialization
  RegisterClass(Tfrm_tzysf);
end.

