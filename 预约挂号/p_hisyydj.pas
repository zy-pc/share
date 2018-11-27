unit p_hisyydj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBTables, Db, Grids, DBGrids, ComCtrls, ExtCtrls,
  DBCtrls, DBCGrids, Mask, ADODB, DBCtrlsEh, OleServer, grproLib_TLB, p_obj,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, DateUtils;

type
  Tfrm_hisyydj = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    brxm: TDBEdit;
    ds_dj: TDataSource;
    brdwdz: TDBEdit;
    sfzhm: TDBEdit;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ds_jbqk: TDataSource;
    jbqk_cx: TADODataSet;
    Label8: TLabel;
    Label25: TLabel;
    dbr: TDBEdit;
    brnl: TDBEdit;
    Panel2: TPanel;
    Label1: TLabel;
    tmh: TEdit;
    Panel3: TPanel;
    b_close: TBitBtn;
    b_save: TBitBtn;
    tempgrid: TDBGrid;
    Label7: TLabel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    Edit1: TEdit;
    qry_dj: TADODataSet;
    sp_cx_brqk: TADOStoredProc;
    b_cancel: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ysmc: TEdit;
    Label10: TLabel;
    Edit3: TEdit;
    sp_cx_yyzy: TADOStoredProc;
    ADOCommand1: TADOCommand;
    ds_cx_yyzy: TDataSource;
    Label11: TLabel;
    ghfje: TEdit;
    Label14: TLabel;
    zcfje: TEdit;
    sp_cx_yyys: TADOStoredProc;
    DBGrid3: TDBGrid;
    Label15: TLabel;
    czmz: TEdit;
    Label16: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    xqsj: TEdit;
    edit4: TEdit;
    sxw: TLabel;
    Label24: TLabel;
    ds_cx_yyys: TDataSource;
    ad_save: TADODataSet;
    Label26: TLabel;
    brxb: TDBEdit;
    brsf: TDBEdit;
    brjg: TDBEdit;
    brmz: TDBEdit;
    brzy: TDBEdit;
    Label27: TLabel;
    csrq: TDBEdit;
    brdh: TEdit;
    gp_ghddy: TGridppReport;
    sp_yyghdy: TADODataSet;
    SpeedButton1: TSpeedButton;
    Label28: TLabel;
    yysj: TcxDateEdit;
    qry_yysz: TADOQuery;
    sp_cx_yyjzxq: TADOStoredProc;
    yyzy: TComboBox;
    qry_yyzy: TADODataSet;
    procedure b_closeClick(Sender: TObject);
    procedure tempgridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tempgridExit(Sender: TObject);
    procedure b_saveClick(Sender: TObject);
    procedure zydj_yz;
    procedure tmhExit(Sender: TObject);
    procedure brdwdzExit(Sender: TObject);
    procedure tmhEnter(Sender: TObject);
    procedure brdhKeyPress(Sender: TObject; var Key: Char);
    procedure brdwdzEnter(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure hydj_yz;
    procedure yyzyEnter(Sender: TObject);
    procedure yyzyExit(Sender: TObject);
    procedure yyzyKeyPress(Sender: TObject; var Key: Char);
    procedure ysmcKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3Exit(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure tmhChange(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure brdhExit(Sender: TObject);
    procedure yyghdprint();
    procedure ysmcChange(Sender: TObject);
    procedure yysjKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure yyzyChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure b_cancelClick(Sender: TObject);
    procedure ysmcExit(Sender: TObject);
    procedure ysmcEnter(Sender: TObject);
  private
    { Private declarations }
    dqrq: string;
  public
    resultf: string;
    tempcom: Tcombobox;
    procedure finditems(tablename, numf, charf, resultf, info: string; tempcom: Tcombobox);
    procedure sx();
    function daytoweek(s: TDateTime): string;
    function yysjpd(s: TDateTime): Boolean;
    function yysxwpd(s: TDateTime): string;
    { Public declarations }
  end;
var
  frm_hisyydj: Tfrm_hisyydj;
  zy_brsf, bcrq, zy_brjg, zy_brmz, zy_khlb: string;
  zy_csrq: Tdatetime;
  yyghddy: TCusBb;
  res: string;
const
  yyghdydm = '021501';

implementation

uses p_dm, p_func;

{$R *.DFM}

function Tfrm_hisyydj.daytoweek(s: TDateTime): string;
var
  day: Integer;
begin
  day := DayOfWeek(s);
  if day = 1 then
    Result := '������';
  if day = 2 then
    Result := '����һ';
  if day = 3 then
    Result := '���ڶ�';
  if day = 4 then
    Result := '������';
  if day = 5 then
    Result := '������';
  if day = 6 then
    Result := '������';
  if day = 7 then
    Result := '������';
end;

function Tfrm_hisyydj.yysxwpd(s: TDateTime): string;
var
  k: Integer;
begin
  k := StrToInt(formatdatetime('HH', s));
  if k < 12 then
    Result := '����'
  else
    Result := '����'
end;

procedure Tfrm_hisyydj.yysjKeyPress(Sender: TObject; var Key: Char);
var
  s: TDateTime;
begin
  if Key = #13 then
  begin
    b_save.Enabled := False;
    s := yysj.Date;
    if s = -700000 then exit;
    if FormatDateTime('yyyy-MM-dd', s) <= formatdatetime('yyyy-MM-dd', Frm_func.curr_date) then
    begin
      Application.MessageBox('ԤԼʱ�������ڽ���', '', MB_OK +
        MB_ICONWARNING);
      Exit;
    end
    else
    begin
      if yysjpd(s) then
      begin
        if (daytoweek(s) <> Trim(sp_cx_yyys.FieldByName('yzrq').AsString)) then
        begin
          Application.MessageBox(PChar('��ԤԼ�����ں���ѡ����Ű�����ڲ�һ�£�ԤԼѡ���������: ' +
            daytoweek(s) + '������ѡ����Ű������ǣ� ' + sp_cx_yyys.FieldByName('yzrq').AsString),
            '', MB_OK + MB_ICONINFORMATION);
        end
        else
          if (yysxwpd(s) <> trim(sp_cx_yyys.FieldByName('sxw').AsString)) then
          begin
            Application.MessageBox(PChar('��ԤԼ������������ѡ���Ű�������粻һ�£���ԤԼ����: ' +
              yysxwpd(s) + '������ѡ���Ű���ǣ� ' + sp_cx_yyys.FieldByName('sxw').AsString),
              '', MB_OK + MB_ICONINFORMATION);
          end
          else
          begin
            bcrq := FormatDateTime('yyyy-MM-dd HH:mm', yysj.Date);
            b_save.Enabled := True;
            b_save.SetFocus;
            Label24.Caption := FormatDateTime('yyyy-MM-dd HH:mm', yysj.Date);
          end;
      end
      else
      begin
        Application.MessageBox('ԤԼʱ�䲻�ܴ���ԤԼ�Һ�ϵͳ���õ����ʱ��', '', MB_OK + MB_ICONWARNING);
        exit;
      end;
    end;
  end;
end;

function Tfrm_hisyydj.yysjpd(s: TDateTime): Boolean;
var
  k: TDateTime;
  j: Integer;
begin
  k := Frm_func.curr_date;
  qry_yysz.Close;
  qry_yysz.Open;
  j := qry_yysz.FieldByName('yyts').AsInteger;
  if s <= IncDay(k, j) then
    Result := True
  else
    Result := False;
end;

procedure Tfrm_hisyydj.yyghdprint();
begin
  if yyghddy = nil then
  begin
    yyghddy := TCusBb.Create;
    yyghddy.GetBbByDM(yyghddy, yyghdydm);
    gp_ghddy.LoadFromStr(yyghddy.nr);
  end;
  try
    sp_yyghdy.Close;
    sp_yyghdy.Open;
    sp_yyghdy.Filter := 'tmh = ' + ad_save.FieldByName('tmh').Value;
    sp_yyghdy.Filtered := True;
    gp_ghddy.ParameterByName('�绰����').Value := Trim(brdh.Text);
    gp_ghddy.ParameterByName('��ע').Value := Trim(Edit3.Text);
  except on e: Exception do
      Application.MessageBox(pchar(e.Message), '��ʾ', MB_OK + MB_ICONEXCLAMATION);
  end;
  res := frm_func.SetCReportXtcs(gp_ghddy);
  if res <> '1' then
    Application.MessageBox(PChar(res), '��ʾ', MB_OK + MB_ICONEXCLAMATION)
  else
    gp_ghddy.Print(False);
end;

procedure Tfrm_hisyydj.hydj_yz;
begin
  if trim(qry_dj.FieldByName('brxm').asstring) = '' then
  begin
    application.MessageBox('��������Ϊ�գ�', '��ʾ', 0 + 16);
    brxm.SelectAll;
    brxm.SetFocus;
    Exit;
  end;
  if trim(qry_dj.FieldByName('brxb').asstring) = '' then
  begin
    application.MessageBox('�Ա���Ϊ�գ�', '��ʾ', 0 + 16);
    brxb.SelectAll;
    brxb.SetFocus;
    Exit;
  end;
  if (length(trim(brnl.text)) = 0) then
  begin
    application.MessageBox('�����������', '��ʾ', 0 + 16);
    brnl.SetFocus;
    Exit;
  end;
  if trim(qry_dj.FieldByName('brsf').asstring) = '' then
  begin
    application.MessageBox('����ʡ��û���룡', '��ʾ', 0 + 16);
    brsf.SelectAll;
    brsf.SetFocus;
    Exit;
  end;
end;

procedure Tfrm_hisyydj.sx;
begin
  if not sp_cx_yyys.FieldByName('yyghfje').IsNull then
  begin
    ysmc.Text := sp_cx_yyys.FieldByName('ysmc').Value;
    czmz.Text := sp_cx_yyys.FieldByName('zcmc').Value;
    ghfje.Text := sp_cx_yyys.FieldByName('yyghfje').Value;
    zcfje.text := sp_cx_yyys.FieldByName('zcfje').Value;
    xqsj.Text := sp_cx_yyys.FieldByName('yzrq').Value;
    edit4.Text := sp_cx_yyys.FieldByName('sxw').Value;
    Edit3.SetFocus;
  end
  else
  begin
    sp_cx_yyys.Close;
    ysmc.SetFocus;
    //    Application.MessageBox('��ʾ:δ���ùҺŷѴ��룡ԤԼ�ҺŲ��ܳɹ�������д���ڽ���ԤԼ�Һţ�','��ʾ',MB_ICONHAND);
  end;
end;

procedure Tfrm_hisyydj.finditems(tablename, numf, charf, resultf, info: string; tempcom: Tcombobox);
var
  findfield, s: string;
begin
  s := trim(tempcom.Text);
  if s <> '' then
  begin
    if s[1] in ['0'..'9'] then
      findfield := numf
    else
      if s[1] in ['A'..'z'] then
        findfield := charf
      else
        findfield := resultf;
    jbqk_cx.close;
    if s[1] in ['0'..'9'] then
      jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ',* from ' + tablename + ' and ' + findfield + '=' + #39 + s + #39
    else
      if s[1] in ['A'..'z'] then
        jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ',* from ' + tablename + ' and upper(' + findfield + ') like ' + #39 + '%' + uppercase(s) + '%' + #39
      else
        jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ',* from ' + tablename + ' and upper(' + findfield + ') like ' + #39 + '%' + uppercase(s) + '%' + #39;
    jbqk_cx.Open;
    if jbqk_cx.IsEmpty then
    begin
      messagedlg('�����������û���ҵ���Ӧ��' + info + '��', mterror, [mbok], 0);
      tempcom.setfocus;
    end
    else
      if jbqk_cx.RecordCount = 1 then
        tempcom.text := jbqk_cx[resultf]
      else
      begin
        tempgrid.Columns.Clear;
        tempgrid.Columns.add;
        tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
        tempgrid.Columns[0].title.caption := '����';
        tempgrid.Columns.add;
        tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
        tempgrid.Columns[1].title.caption := info;
        if frm_hisyydj.Width - tempcom.left > tempgrid.Width then
          tempgrid.left := tempcom.left
        else
          tempgrid.left := tempcom.left + tempcom.Width - tempgrid.Width;
        if Panel1.Height - tempcom.top > tempgrid.Height then
          tempgrid.top := tempcom.top + tempcom.Height + Panel1.top + 1
        else
          tempgrid.top := tempcom.top - tempgrid.Height + Panel1.TOP;
        tempgrid.visible := true;
        tempgrid.setfocus;
      end;
  end
end;

procedure Tfrm_hisyydj.FormCreate(Sender: TObject);
begin
  //ԤԼ����
  qry_yyzy.Close;
  qry_yyzy.commandtext := 'select * from sys_ksdm where dm in ( select ksdm  from mzgh_yspbb ) ';
  qry_yyzy.Open;
  yyzy.Items.Clear;
  while not qry_yyzy.eof do
  begin
    yyzy.items.Add(trim(qry_yyzy.fieldbyname('mc').asstring));
    qry_yyzy.next;
  end;
end;

procedure Tfrm_hisyydj.zydj_yz;
begin
  if trim(qry_dj.FieldByName('fylb').asstring) = '' then
  begin
    application.MessageBox('����Ա�������ࡱ����Ϊ�գ�', '��ʾ', 0 + 16);
    brxm.SelectAll;
    brxm.SetFocus;
    abort;
  end;
  if trim(qry_dj.FieldByName('brxb').asstring) = '' then
  begin
    application.MessageBox('����Ա�Ա𡱲���Ϊ�գ�', '��ʾ', 0 + 16);
    brxb.SelectAll;
    brxb.SetFocus;
    abort;
  end;
  if (length(trim(brnl.text)) = 0) or (strtofloat(brnl.text) < 0) then
  begin
    application.MessageBox('����Ա���䡱�������', '��ʾ', 0 + 16);
    brnl.SetFocus;
    abort;
  end;
  if trim(brsf.text) = '' then
  begin
    application.MessageBox('����Աʡ�ݡ�����Ϊ�գ�', '��ʾ', 0 + 16);
    brdwdz.SetFocus;
    abort;
  end;
  if trim(brsf.text) = '' then
  begin
    application.MessageBox('����Աʡ�ݡ�����Ϊ�գ�', '��ʾ', 0 + 16);
    brdwdz.SetFocus;
    abort;
  end;
  if trim(brjg.text) = '' then
  begin
    application.MessageBox('����Ա���ᡱ����Ϊ�գ�', '��ʾ', 0 + 16);
    brdwdz.SetFocus;
    abort;
  end;
  if trim(brmz.text) = '' then
  begin
    application.MessageBox('����Ա���塱����Ϊ�գ�', '��ʾ', 0 + 16);
    brdwdz.SetFocus;
    abort;
  end;
end;

procedure Tfrm_hisyydj.b_cancelClick(Sender: TObject);
begin
  tmh.setfocus;
end;

procedure Tfrm_hisyydj.b_closeClick(Sender: TObject);
begin
  if qry_dj.Active then qry_dj.Close;
  if jbqk_cx.Active then jbqk_cx.Close;
  if sp_cx_brqk.Active then sp_cx_brqk.Close;
  close;
end;

procedure Tfrm_hisyydj.tempgridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then tempgrid.Visible := false;
  if ((key = 13) and (Length(yyzy.Text) <> 0)) then ysmc.SetFocus;

end;

procedure Tfrm_hisyydj.tempgridExit(Sender: TObject);
begin
  tempcom.text := jbqk_cx[resultf];
  tempgrid.Visible := false;
  tempcom.setfocus;
end;

procedure Tfrm_hisyydj.b_saveClick(Sender: TObject);
begin
  if trim(brdh.Text) = '' then
  begin
    Application.MessageBox('ԤԼ�Һű�������绰���룡������!', '��ʾ', 0 + 16);
    brdh.SetFocus;
  end
  else
  begin
    if bcrq = FormatDateTime('yyyy-MM-dd HH:mm', yysj.Date) then
    begin
      ad_save.Open;
      ad_save.Insert;
      ad_save['tmh'] := Trim(tmh.Text);
      ad_save['brxm'] := Trim(brxm.Text);
      ad_save['brxb'] := Trim(brxb.Text);
      ad_save['ghks'] := jbqk_cx['dm'];
      //sp_cx_yyzy.FieldByName( 'dm' ).AsString;
      ad_save['ghys'] := sp_cx_yyys.FieldByName('ysdm').AsString;
      ad_save['ghfdm'] := sp_cx_yyys.FieldByName('yyghfdm').AsString;
      ad_save['zcfdm'] := sp_cx_yyys.FieldByName('zcfdm').AsString;
      ad_save['yyrq'] := FormatDateTime('yyyy-MM-dd HH:mm', yysj.Date);
      ad_save['djrq'] := Frm_func.curr_date;
      ad_save['yylb'] := '1'; //ҽԺ����ԤԼΪ1������Ϊ2���绰Ϊ3��
      ad_save['sfbz'] := 0; //�շѱ�־
      ad_save['yxbz'] := 1; //ԤԼ��Ϣ�Ƿ���Ч
      ad_save['bz'] := Trim(Edit3.Text); //ԤԼ��ע��Ϣ
      ad_save['lxdh'] := Trim(brdh.Text);
      ad_save['czydm'] := pub_czydm;
      ad_save.post;
      dm_data.ado_mydata.BeginTrans;
      try
        ad_save.UpdateBatch;
        dm_data.ado_mydata.CommitTrans;
        Application.MessageBox('ԤԼ�ɹ�', '', MB_OK);
        //yyghdprint();ռʱ����ӡ
        tmh.Enabled := true;
        tmh.SetFocus;
      except
        dm_data.ado_mydata.RollbackTrans;
        application.MessageBox('ԤԼʧ�ܣ�������!', '��ʾ', 0 + 16);
      end;
    end
    else
    begin
      Application.MessageBox('��ʾ:ʱ��ͱ���ʱ�䲻��!����������!', '����', MB_ICONHAND);
      b_save.Enabled := False;
      yysj.SetFocus;
    end;
  end;
end;

procedure Tfrm_hisyydj.DBGrid3Exit(Sender: TObject);
begin
  DBGrid3.Visible := False;
  sx;
end;

procedure Tfrm_hisyydj.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    DBGrid3.Visible := False;
    sx;
  end;
end;

procedure Tfrm_hisyydj.tmhExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  if not (b_cancel.Focused or b_close.Focused) then
  begin
    if trim(tmh.text) = '' then
    begin
      application.MessageBox('�����뿨�ţ�', '��ʾ', 0 + 16);
      tmh.SetFocus;
      tmh.SelectAll;
      Abort;
    end;
    try
      tmh.text := FormatEx(strtoint(tmh.text), 9);
    except
      tmh.Text := '';
      tmh.SetFocus;
      Abort;
    end;
    qry_dj.Close;
    qry_dj.Commandtext := 'select * from sys_kyh a,mzsf_mzgh b  where b.sfbz=0 and yxbz=1  and  a.tmh*=b.tmh and a.tmh=' + #39 + trim(tmh.text) + #39 +
      ' and  yyrq< = ' + #39 + FormatDateTime('yyyy-MM-dd HH:mm', Frm_func.curr_date) + #39;
    qry_dj.Open;
    if qry_dj.RecordCount >= 3 then
    begin
      Application.MessageBox('�ò����Ѿ�ԤԼ����δ���ѣ��Ѿ����������������ϵ����Ա',
        '', MB_OK + MB_ICONWARNING);
      b_cancel.Click;
    end
    else
      if not qry_dj.IsEmpty then
      begin
        sp_cx_brqk.Close;
        sp_cx_brqk.Parameters.ParamByName('@tmh').value := trim(tmh.text);
        sp_cx_brqk.Open;
        brxm.Text := sp_cx_brqk.FieldByName('brxm').AsString;
        brxb.Text := sp_cx_brqk.fieldbyname('brxb').asstring;
        csrq.Text := sp_cx_brqk.FieldByName('csrq').AsString;
        brnl.Text := sp_cx_brqk.FieldByName('brnl').AsString;
        brsf.text := sp_cx_brqk.fieldbyname('sfmc').asstring;
        brjg.Text := sp_cx_brqk.FieldByName('jgmc').AsString;
        brmz.text := sp_cx_brqk.fieldbyname('mzmc').asstring;
        brzy.Text := sp_cx_brqk.FieldByName('brzy').AsString;
        sfzhm.Text := sp_cx_brqk.FieldByName('sfzhm').AsString;
        dbr.Text := sp_cx_brqk.FieldByName('dbr').AsString;
        brdwdz.text := sp_cx_brqk.FieldByName('brdz').AsString;
        brdh.text := Trim(sp_cx_brqk.FieldByName('brdh').AsString);
        b_cancel.Enabled := true;
        brdh.SetFocus;
        brdh.SelectAll;
      end
      else
      begin
        if application.MessageBox('��ȷ��������Ŀ����Ƿ���ȷ�������ԣ�', '��ʾ', mb_yesno + mb_iconquestion) = idno then
        begin
          Close;
        end
        else
        begin
          tmh.SetFocus;
          tmh.SelectAll;
        end;
      end;
  end;
end;

procedure Tfrm_hisyydj.brdwdzExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  if trim(brdwdz.text) <> '' then
  begin
    qry_dj.Edit;
    qry_dj['dbrdz'] := trim(brdwdz.text);
    qry_dj.Post;
  end;
end;

procedure Tfrm_hisyydj.Button1Click(Sender: TObject);
begin
  tmh.SetFocus;
end;

procedure Tfrm_hisyydj.tmhChange(Sender: TObject);
begin
  yyzy.Text := '';
  ysmc.Text := '';
  Edit3.Text := '';
  czmz.Text := '';
end;

procedure Tfrm_hisyydj.tmhEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  b_save.Enabled := false;
  b_cancel.Enabled := false;
  qry_dj.close;
  brxb.text := '';
  brsf.text := '';
  brjg.text := '';
  brzy.text := '';
  brmz.text := '';
  tmh.text := '';
  brdh.Text := '';
end;

procedure Tfrm_hisyydj.brdhExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  if not (b_cancel.Focused or b_close.Focused) then
  begin
    if Length(Trim(brdh.Text)) <> 11 then
    begin
      Application.MessageBox('����ԤԼ�������������ϵ�绰', '��ʾ', MB_OK + MB_ICONWARNING);
      brdh.SetFocus;
    end;
  end;
end;

procedure Tfrm_hisyydj.brdhKeyPress(Sender: TObject; var Key: Char);
begin
  if not ((key in ['0'..'9']) or (key = #8) or (key = '-') or (Key = #13)) then
    key := #0;
  if Key = #13 then
  begin
    if Length(brdh.Text) <> 11 then
      Application.MessageBox('�ֻ��������Ϊ11λ��Ч����', '��ʾ', MB_OK + MB_ICONWARNING)
    else
      yyzy.SetFocus
  end;
end;

procedure Tfrm_hisyydj.brdwdzEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  brdwdz.ImeName := pub_czysrf;
  brdwdz.ImeMode := imChinese;
end;

procedure Tfrm_hisyydj.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    yysj.SetFocus;
  end;
end;

procedure Tfrm_hisyydj.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then yyzy.SetFocus;
end;

procedure Tfrm_hisyydj.ysmcChange(Sender: TObject);
begin
  b_save.Enabled := False;
end;

procedure Tfrm_hisyydj.ysmcEnter(Sender: TObject);
begin
  sp_cx_yyys.Close;
  ysmc.Text := '';
  czmz.Text := '';
  ghfje.Text := '';
  zcfje.text := '';
  xqsj.Text := '';
  edit4.Text := '';
end;

procedure Tfrm_hisyydj.ysmcExit(Sender: TObject);
begin
  if (not (b_cancel.Focused or b_close.focused or DBGrid3.Focused)) then
  begin
    if ysmc.Text = '' then
    begin
      Application.MessageBox('��ʾ:δѡ��ԤԼҽ�����޷�����ԤԼ�Һţ�', '��ʾ', MB_ICONHAND);
      ysmc.SetFocus;
    end;
  end;
end;

procedure Tfrm_hisyydj.ysmcKeyPress(Sender: TObject; var Key: Char);
var
  s, k: string;
begin
  if Key = #13 then
  begin
    s := Trim(ysmc.Text);
    k := Trim(yyzy.Text);

    sp_cx_yyys.Close;
    sp_cx_yyys.Parameters.ParamByName('@ysdm').Value := s;
    sp_cx_yyys.Parameters.ParamByName('@ksdm').Value := Trim(yyzy.Text);
    sp_cx_yyys.Open;
    if sp_cx_yyys.IsEmpty then
    begin
      Application.MessageBox('��רҵû�и�ҽ�������������ҽ����Ϣ����ȷ��������', '��ʾ', MB_OK + MB_ICONWARNING);
      ysmc.SetFocus;
    end
    else
      if sp_cx_yyys.RecordCount = 1 then
      begin
        sx;
        Edit3.SetFocus;
      end
      else
      begin
        DBGrid3.Visible := True;
        DBGrid3.SetFocus;
      end;
  end;
end;

procedure Tfrm_hisyydj.yyzyChange(Sender: TObject);
begin
  ysmc.Text := '';
  czmz.Text := '';
  xqsj.Text := '';
  sxw.Caption := '';

end;

procedure Tfrm_hisyydj.yyzyEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
end;

procedure Tfrm_hisyydj.yyzyExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  if (not (b_cancel.Focused or b_close.focused)) then
  begin
    if yyzy.Text = '' then
    begin
      Application.MessageBox('��ʾ:��������ҽԺ���ҡ������޷�ѡ��ҽ����', '��ʾ', MB_ICONHAND);
      yyzy.SetFocus;
    end
    else
    begin
      resultf := 'mc';
      tempcom := yyzy;
      finditems('sys_ksdm where dm in (' + 'select ksdm  from mzgh_yspbb ' + ')', 'dm', 'pym', 'mc', '����Һ�רҵ', yyzy);
      ysmc.SetFocus;
    end;
  end
end;

procedure Tfrm_hisyydj.yyzyKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    if Length(yyzy.Text) = 0 then
    begin
      Application.MessageBox('������Һſ���', '', MB_OK + MB_ICONWARNING);
      yyzy.SetFocus;
    end
    else
      ysmc.SetFocus;
end;

end.
