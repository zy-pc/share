unit P_fylbtz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, ADODB, Db, Buttons, GridsEh, DBGridEh,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, Registry, BASE64,
  p_balj, debugHandler, DBGridEhGrouping;

type
  Tfrm_fylbtz = class(TForm)
    Panel3: TPanel;
    Label27: TLabel;
    Bevel1: TBevel;
    Label40: TLabel;
    fylb: TEdit;
    tmh: TEdit;
    Label1: TLabel;
    xfylb: TComboBox;
    panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    sp_cx_zybrjbqk: TADOStoredProc;
    sp_up_brfylb: TADOStoredProc;
    ds_fylb_cx: TDataSource;
    fylb_cx: TADODataSet;
    ds_cx_byjbqk: TDataSource;
    tempgrid: TDBGrid;
    Label2: TLabel;
    sbdw: TComboBox;
    DBGrid1: TDBGrid;
    tempgrid1: TDBGrid;
    Label3: TLabel;
    sbzdfy: TEdit;
    DBGridEh1: TDBGridEh;
    qry_fylbtzmx: TADOQuery;
    ds_fylbtzmx: TDataSource;
    lbl_balj: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    sbkh: TEdit;
    Label6: TLabel;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    qry_dbzdm: TADOQuery;
    ds_dbz: TDataSource;
    edt_dbz: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure tmhExit(Sender: TObject);
    procedure tempgrid1Exit(Sender: TObject);
    procedure xfylbExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure tempgridExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure xfylbEnter(Sender: TObject);
    procedure xfylbChange(Sender: TObject);
    procedure sbdwExit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure tempgridKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbzdfyKeyPress(Sender: TObject; var Key: Char);
    procedure sbzdfyExit(Sender: TObject);
    procedure tempgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edt_dbzKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd1KeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd1Exit(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
  private
    zydjbalj,Fjzfpbrbz: Boolean;
    sys_baljIp: string;
    tcpThread: Tbalj_Tcp_conn;
  const
    Eol: string = #13#10;
    sys_baljPort: Integer = 7456;
    sys_baljSucc: string = '与 病案信息同步服务连接 成功！';
    sys_baljFail: string = '与 病案信息同步服务连接 失败！';
    { Private declarations }
procedure baljsjtb(Azyh: string);
public
    { Public declarations }
xfylbz: string;
gdbz: boolean;
  end;

var
  frm_fylbtz: Tfrm_fylbtz;
  fylbdm: string;
  zy_sbzdfy: Double;
  dbzdm:string;
implementation
uses p_dm, p_main, p_func,p_sfzhmyz;
{$R *.DFM}

procedure Tfrm_fylbtz.FormCreate(Sender: TObject);
begin
  gdbz := false;
  fylb_cx.Close;
  fylb_cx.commandtext := 'select * from sys_fylb where dyzysjbz = 1  order by dm';
  fylb_cx.Open;
  xfylb.Items.Clear;
  while not fylb_cx.eof do
  begin
    xfylb.items.Add(Trim(fylb_cx.FieldByName('mc').AsString));
    fylb_cx.next;
  end;
  fylb_cx.Close;
  fylb_cx.commandtext := 'select * from sys_jgdm order by dm';
  fylb_cx.Open;
  sbdw.Items.Clear;
  while not fylb_cx.eof do
  begin
    sbdw.items.Add(Trim(fylb_cx.FieldByName('mc').AsString));
    fylb_cx.next;
  end;
  bitbtn1.Enabled := false;
  bitbtn2.Enabled := false;
  bitbtn3.Enabled := false;
end;

procedure Tfrm_fylbtz.FormDestroy(Sender: TObject);
begin
  if Assigned(tcpThread) then
    tcpThread.Terminate;
end;

procedure Tfrm_fylbtz.tmhExit(Sender: TObject);
begin
  if(length(trim(tmh.text))=0) and (not bitbtn4.Focused) and (not bitbtn3.focused) then
  begin
    Application.MessageBox('未输入条码号！', '提示', 0 + 48);
    tmh.setfocus;
    abort;
  end;
  if (not bitbtn4.Focused) and (trim(tmh.text) <> '') then
  begin
    try
      tmh.text := formatex(strtoint(trim(tmh.text)), 9);
    except
    end;

    with sp_cx_zybrjbqk do
    begin
      Close;
      parameters.ParamByName('@tmh').value := trim(tmh.text);
      active := true;
    end;
    if sp_cx_zybrjbqk.isempty then
    begin
      Application.MessageBox('没有此病人！', '错误', 0 + 16);
      tmh.setfocus;
    end
    else
      if sp_cx_zybrjbqk.recordcount > 1 then
      begin
        tempgrid1.Columns.Clear;
        tempgrid1.Columns.add;
        tempgrid1.Columns[0].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('tmh');
        tempgrid1.Columns[0].title.caption := '条码号';
        tempgrid1.Columns[0].Width := 75;
        tempgrid1.Columns.add;
        tempgrid1.Columns[1].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brxm');
        tempgrid1.Columns[1].title.caption := '姓名';
        tempgrid1.Columns[1].Width := 80;
        tempgrid1.Columns.add;
        tempgrid1.Columns[2].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brxb');
        tempgrid1.Columns[2].title.caption := '性别';
        tempgrid1.Columns.add;
        tempgrid1.Columns[3].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brnl');
        tempgrid1.Columns[3].title.caption := '年龄';
        tempgrid1.Columns[3].Width := 40;
        tempgrid1.Columns.add;
        tempgrid1.Columns[4].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('ksmc');
        tempgrid1.Columns[4].title.caption := '住院科室';
        tempgrid1.Columns[4].Width := 90;
        tempgrid1.left := tmh.left;
        tempgrid1.top := tmh.top + tmh.Height;
        tempgrid1.visible := true;
        tempgrid1.setfocus;
      end
      else
      begin
        fylb.text := sp_cx_zybrjbqk['lbmc'];
        tmh.text := sp_cx_zybrjbqk['tmh'];
        edit1.text := sp_cx_zybrjbqk['zdjf'];
        edit2.text := sp_cx_zybrjbqk['brxm'];
        sbdw.text := Trim(sp_cx_zybrjbqk.FieldByName('sbdw').AsString);
        sbzdfy.Text := sp_cx_zybrjbqk['ybndzje'];
        sbkh.text := Trim(sp_cx_zybrjbqk['sbkh']);
        sp_up_brfylb.Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk['zyh'];
        sp_up_brfylb.Parameters.ParamByName('@fylb').value := sp_cx_zybrjbqk['fylb'];
        qry_fylbtzmx.Close;
        qry_fylbtzmx.Parameters.ParamByName('zyh').Value := sp_cx_zybrjbqk['zyh'];
        qry_fylbtzmx.Open;
        panel3.enabled := false;
        xfylbz := fylb.text;
        bitbtn2.Enabled := true;
        bitbtn2.setfocus;
        dbzdm := sp_cx_zybrjbqk.FieldByName('dbzdm').AsString;
        qry_dbzdm.Close;
        qry_dbzdm.SQL.Text := 'select dbzmc from sys_dbz where dm='+''''+ dbzdm +'''';
        qry_dbzdm.Open;
        edt_dbz.Text := qry_dbzdm.FieldByName('dbzmc').AsString ;
      end;
  end;
end;

procedure Tfrm_fylbtz.tmhKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then SelectNext(activeControl, true, true);
end;

procedure Tfrm_fylbtz.tempgrid1Exit(Sender: TObject);
begin
  tmh.text := sp_cx_zybrjbqk['tmh'];
  edit1.text := sp_cx_zybrjbqk['zdjf'];
  edit2.text := sp_cx_zybrjbqk['brxm'];
  fylb.text := sp_cx_zybrjbqk['lbmc'];
  sp_up_brfylb.Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk['zyh'];
  sp_up_brfylb.Parameters.ParamByName('@fylb').value := sp_cx_zybrjbqk['fylb'];
  sbzdfy.Text := sp_cx_zybrjbqk['ybndzje'];
  xfylbz := fylb.text;
  qry_fylbtzmx.Close;
  qry_fylbtzmx.Parameters.ParamByName('zyh').Value := sp_cx_zybrjbqk['zyh'];
  qry_fylbtzmx.Open;
  tempgrid1.Visible := false;
  fylb.text := sp_cx_zybrjbqk.fieldbyname('lbmc').asstring;
  panel3.Enabled:=false;
  bitbtn2.Enabled := true;
  bitbtn2.setfocus;
end;

procedure Tfrm_fylbtz.xfylbExit(Sender: TObject);
var
  findfield, s: string;
begin
  s := trim(xfylb.Text);
  if not ((bitbtn3.focused) or (bitbtn4.focused) or (s = '')) then
  begin
//    if (s <> xfylbz) and (s <> trim(fylb.text)) then
//    begin

      if s <> '' then
      begin
        if s[1] in ['0'..'9'] then
          findfield := 'dm'
        else if s[1] in ['A'..'Z', 'a'..'z'] then
          findfield := 'dm'
        else
          findfield := 'mc';
        fylb_cx.close;
        if s[1] in ['0'..'9'] then
          fylb_cx.commandtext := 'select dm,mc from sys_fylb where dyzysjbz = 1 and dm=' + #39 + stringofchar('0', 2 - length(s)) + s + #39
        else
          fylb_cx.commandtext := 'select dm,mc from sys_fylb where dyzysjbz = 1 and upper(' + findfield + ') like ' + #39 + '%' + uppercase(s) + '%' + #39;
        fylb_cx.Open;
        if fylb_cx.IsEmpty then
        begin
          messagedlg('代码输入错误，没有找到相应费用类别代码', mterror, [mbok], 0);
          xfylb.Text := '';
          xfylb.setfocus;
        end
        else if fylb_cx.recordcount = 1 then
        begin
          xfylb.text := fylb_cx['mc'];
          fylbdm := fylb_cx['dm'];
          sp_up_brfylb.parameters.ParamByName('@xfylb').value := fylb_cx['dm'];
          bitbtn1.enabled := true;
          if sbdw.Enabled then
            sbdw.setfocus
          else
            BitBtn1.SetFocus;  
        end
        else
        begin
          tempgrid.Columns[0].field := fylb_cx.fieldlist[0];
          tempgrid.Columns[0].title.caption := '代码';
          tempgrid.Columns[1].field := fylb_cx.fieldlist[1];
          tempgrid.Columns[1].title.caption := '名称';
          tempgrid.left := xfylb.left;
          tempgrid.top := xfylb.top + xfylb.Height;
          tempgrid.visible := true;
          tempgrid.setfocus;
        end;
        gdbz := true;
      end;
//    end else
//    begin
//      gdbz := false;
//    end;

  end
  else if not (bitbtn3.focused or bitbtn4.Focused) then
    xfylb.setfocus;
end;

procedure Tfrm_fylbtz.baljsjtb(Azyh: string);
begin
  if Assigned(tcpThread) then
    if not tcpThread.Senddata('Upd', Azyh) then
    begin
      ShowMessage('发送病案同步请求失败');
    end;
end;

procedure Tfrm_fylbtz.BitBtn1Click(Sender: TObject);
var s: string;
begin
   if pos('精准扶贫', xfylb.text)>0 then
  begin
    application.CreateForm(Tfrm_sfzhmyz, frm_sfzhmyz);
    try
      frm_sfzhmyz.ShowModal;
    finally
      frm_sfzhmyz.free;
      Fjzfpbrbz:= frm_sfzhmyz.jzfpbrbz;
    end;
  end;
  if Fjzfpbrbz = True  then
  begin
    if zydjbalj then
    begin
      baljsjtb(sp_cx_zybrjbqk['zyh']);
    end;



    if (sp_cx_zybrjbqk.Active) then
    begin
      TryStrToFloat(sp_cx_zybrjbqk.FieldByName('zdjf').asstring, zy_sbzdfy);
      if (zy_sbzdfy <> 0) then
      begin
        if Application.MessageBox(PChar('当前病人已经设置了欠费限额 ' + Edit1.Text + ' 元，' + #13#10 +
          '   更改费用类别后是否应用新的欠费额度？' + #13#10#13#10 +
          '点击“确定”欠费限额保留 ' + Edit1.text + ' 元。' + #13#10 +
          '点击“取消”欠费限额更改为 ' + sbzdfy.text + ' 元。'), '提示', MB_OKCANCEL +
          MB_ICONQUESTION) = IDNO then
        begin
          zy_sbzdfy := StrToFloat(Trim(sbzdfy.text));
        end;
      end else
      if Trim(sbzdfy.text) = '' then
        zy_sbzdfy := 0
      else
        zy_sbzdfy := StrToFloat(Trim(sbzdfy.text));
      if (edt_dbz.Text = '') then
      begin
         dbzdm := '';
      end;
      sp_up_brfylb.Parameters.ParamByName('@czy').value := pub_czydm;
      sp_up_brfylb.Parameters.ParamByName('@sbdw').value := sbdw.Text;
      sp_up_brfylb.Parameters.ParamByName('@ndzdjf').value := zy_sbzdfy;
      sp_up_brfylb.Parameters.ParamByName('@sbkh').value := sbkh.Text;
      sp_up_brfylb.Parameters.ParamByName('@dbzdm').value := dbzdm;
      sp_up_brfylb.Parameters.ParamByName('@sczt').value := 'A';
      sp_up_brfylb.execproc;
      s := sp_up_brfylb.Parameters.ParamByName('@sczt').value;
      if s <> '0' then
      begin
        messagedlg('保存未成功，请重新保存！'+s, mtinformation, [mbok], 0);
        bitbtn1.Enabled := true;
        bitbtn1.setfocus;
      end
      else
      begin
        gdbz := false;
        tmh.text := '';
        fylb.text := '';
        edit2.text:='';
        edit1.Text:='';
        xfylb.Text:='';
        sbdw.Text:='';
        sbkh.Text:='';
        edt_dbz.Text:='';
        sbzdfy.Text:='0';
        sp_cx_zybrjbqk.close;
        qry_fylbtzmx.Close;
        bitbtn1.Enabled := false;
        bitbtn2.enabled := false;
        bitbtn3.Enabled := false;
        tmh.SetFocus;
      end;
    end
    else
    begin
      tmh.setfocus;
    end;
  end else
  begin
    if zydjbalj then
    begin
      baljsjtb(sp_cx_zybrjbqk['zyh']);
    end;



    if (sp_cx_zybrjbqk.Active) then
    begin
      TryStrToFloat(sp_cx_zybrjbqk.FieldByName('zdjf').asstring, zy_sbzdfy);
      if (zy_sbzdfy <> 0) then
      begin
        if Application.MessageBox(PChar('当前病人已经设置了欠费限额 ' + Edit1.Text + ' 元，' + #13#10 +
          '   更改费用类别后是否应用新的欠费额度？' + #13#10#13#10 +
          '点击“确定”欠费限额保留 ' + Edit1.text + ' 元。' + #13#10 +
          '点击“取消”欠费限额更改为 ' + sbzdfy.text + ' 元。'), '提示', MB_OKCANCEL +
          MB_ICONQUESTION) = IDNO then
        begin
          zy_sbzdfy := StrToFloat(Trim(sbzdfy.text));
        end;
      end else
      if Trim(sbzdfy.text) = '' then
        zy_sbzdfy := 0
      else
        zy_sbzdfy := StrToFloat(Trim(sbzdfy.text));
      if (edt_dbz.Text = '') then
      begin
         dbzdm := '';
      end;
      sp_up_brfylb.Parameters.ParamByName('@czy').value := pub_czydm;
      sp_up_brfylb.Parameters.ParamByName('@sbdw').value := sbdw.Text;
      sp_up_brfylb.Parameters.ParamByName('@ndzdjf').value := zy_sbzdfy;
      sp_up_brfylb.Parameters.ParamByName('@sbkh').value := sbkh.Text;
      sp_up_brfylb.Parameters.ParamByName('@dbzdm').value := dbzdm;
      sp_up_brfylb.Parameters.ParamByName('@sczt').value := 'A';
      sp_up_brfylb.execproc;
      s := sp_up_brfylb.Parameters.ParamByName('@sczt').value;
      if s <> '0' then
      begin
        messagedlg('保存未成功，请重新保存！'+s, mtinformation, [mbok], 0);
        bitbtn1.Enabled := true;
        bitbtn1.setfocus;
      end
      else
      begin
        gdbz := false;
        tmh.text := '';
        fylb.text := '';
        edit2.text:='';
        edit1.Text:='';
        xfylb.Text:='';
        sbdw.Text:='';
        sbkh.Text:='';
        edt_dbz.Text:='';
        sbzdfy.Text:='0';
        sp_cx_zybrjbqk.close;
        qry_fylbtzmx.Close;
        bitbtn1.Enabled := false;
        bitbtn2.enabled := false;
        bitbtn3.Enabled := false;
        tmh.SetFocus;
      end;
    end
  end;
end;

procedure Tfrm_fylbtz.BitBtn2Click(Sender: TObject);
begin
  if messagedlg('费用类别的改变将可能改变当前病人的计费方式' + #13 + '并可能造成医院损失，请确认是否继续？', mtwarning, [mbyes, mbno], 0) = mryes then
  begin
    panel3.enabled := true;
    bitbtn3.enabled:=true;
    xfylb.setfocus;
  end;
end;

procedure Tfrm_fylbtz.BitBtn3Click(Sender: TObject);
begin
  tmh.text := '';
  fylb.text := '';
  edit2.text:='';
  edit1.Text:='';
  xfylb.Text:='';
  sbdw.Text:='';
  sbkh.Text:='';
  sbzdfy.Text:='0';
  bitbtn1.enabled:=false;
  bitbtn2.enabled:=false;
  bitbtn3.enabled:=false;
  tmh.setfocus;
  sp_cx_zybrjbqk.close;
  qry_fylbtzmx.Close;
end;

procedure Tfrm_fylbtz.tempgridExit(Sender: TObject);
begin
  xfylb.text := fylb_cx['mc'];
  fylbdm := fylb_cx['dm'];
  sp_up_brfylb.parameters.ParamByName('@xfylb').value := fylb_cx['dm'];
  tempgrid.Visible := false;
  bitbtn1.enabled := true;
  sbdw.setfocus;
end;

procedure Tfrm_fylbtz.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //if (dbgrd1.Visible=False) then


//  begin    if Trim(edt_dbz.Text) = '' then
//    if key = #13 then SelectNext(activeControl, true, true);
//  end;

end;

procedure Tfrm_fylbtz.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_fylbtz.dbgrd1Exit(Sender: TObject);
begin
   edt_dbz.Text:=qry_dbzdm['dbzmc'];
   dbzdm:=qry_dbzdm['dm'];
   dbgrd1.Visible := False;
   BitBtn1.SetFocus;
end;

procedure Tfrm_fylbtz.dbgrd1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
    bitbtn2.Enabled := true;
    bitbtn2.setfocus;
  end;
end;

procedure Tfrm_fylbtz.xfylbEnter(Sender: TObject);
begin
  xfylbz := xfylb.text;
end;

procedure Tfrm_fylbtz.xfylbChange(Sender: TObject);
begin
  bitbtn1.enabled := true;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from sys_fylb where rtrim(mc) =' + '''' +
    trim(xfylb.text) + '''';
  DM_data.qry_pub.Open;
  sbzdfy.Text := DM_data.qry_pub.FieldByName('csqfxe').asstring;
  
  if pos('自费', xfylb.text)>0 then
  begin
    sbdw.Text := '';
    sbdw.Enabled := False;

    sbkh.Text := '';
    sbkh.Enabled := False;
  end else begin
    sbdw.Enabled := True;
    sbkh.Enabled := True;
  end;
end;

procedure Tfrm_fylbtz.sbdwExit(Sender: TObject);
var
  s: string;
begin
  if (fylbdm = '03') or (fylbdm = '04') or (fylbdm = '07') or (fylbdm = '05') then
  begin
    s := trim(sbdw.Text);
    if not ((bitbtn3.focused) or (bitbtn4.focused) or (s = '')) then
    begin
      fylb_cx.close;
      if s[1] in ['0'..'9'] then
        fylb_cx.commandtext := 'select dm,mc from sys_jgdm where Convert(char,dm)=' + #39 +
          stringofchar('0', 2 - length(s)) + s + #39 + ' or mc=' + #39 + s + #39
      else
        fylb_cx.commandtext := 'select dm,mc from sys_jgdm where pym like ' + #39 + uppercase(s) + '%' + #39 + ' or mc like ' + #39 + '%' + uppercase(s) + '%' + #39;
      fylb_cx.Open;
      if fylb_cx.IsEmpty then
      begin
        messagedlg('代码输入错误，没有找到相应费用类别代码', mterror, [mbok], 0);
        sbdw.Text := '';
        sbdw.setfocus;
      end
      else if fylb_cx.recordcount = 1 then
      begin
        sbdw.text := Trim(fylb_cx.FieldByName('mc').AsString);
        bitbtn1.enabled := true;
        panel1.Visible := true;
        sbzdfy.SetFocus;
      end
      else
      begin
        dbgrid1.Columns[0].field := fylb_cx.fieldlist[0];
        dbgrid1.Columns[0].title.caption := '代码';
        dbgrid1.Columns[1].field := fylb_cx.fieldlist[1];
        dbgrid1.Columns[1].title.caption := '名称';
        dbgrid1.left := sbdw.left;
        dbgrid1.top := sbdw.top + xfylb.Height;
        dbgrid1.visible := true;
        dbgrid1.setfocus;
      end;
    end
    else
      if s = '' then
        if not ((bitbtn3.focused) or (bitbtn4.focused)) then
          sbdw.setfocus;
  end
  else
    //sbdw.text := '';
end;


procedure Tfrm_fylbtz.DBGrid1Exit(Sender: TObject);
begin
  sbdw.text := fylb_cx.FieldByName('mc').AsString;
  dbgrid1.Visible := false;
  sbzdfy.SetFocus;
end;

procedure Tfrm_fylbtz.tempgridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then tempgridExit(tempgrid);
end;

procedure Tfrm_fylbtz.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then DBGrid1Exit(DBGrid1);
end;


procedure Tfrm_fylbtz.edt_dbzKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qry_dbzdm.Close;
    qry_dbzdm.SQL.Text :=' select * from sys_dbz where pym like ' +
    #39 + '%' + trim(edt_dbz.text) + '%' + #39  + 'order by dm ' ;
    //qry_dbzdm.Parameters.ParamByName('pym').Value:='%'+trim(edt_dbz.text)+'%';
    qry_dbzdm.Open;
    if qry_dbzdm.IsEmpty then
    begin
      application.MessageBox('无此病种!','提示',0+16);
      edt_dbz.SetFocus;
      abort;
    end;
    if qry_dbzdm.RecordCount = 1 then
    begin
      edt_dbz.Text:=qry_dbzdm['dbzmc'];
      dbzdm:=qry_dbzdm['dm'];
      bitbtn1.setfocus;
    end else
    begin
      dbgrd1.Visible:=true;
//      qry_dbzdm.Active:= True;
      dbgrd1.SetFocus;
    end;
  end;
end;

procedure Tfrm_fylbtz.sbzdfyKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edt_dbz.SetFocus;
end;

procedure Tfrm_fylbtz.sbzdfyExit(Sender: TObject);
begin
//  try
//    zy_sbzdfy := strtofloat(trim(sbzdfy.text));
//    bitbtn1.setfocus;
//  except
//    application.messagebox('数据输入错误', '错误', mb_ok + mb_iconerror);
//    sbzdfy.setfocus;
//  end;
end;

procedure Tfrm_fylbtz.tempgrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    bitbtn2.Enabled := true;
    bitbtn2.setfocus;
  end;
end;

procedure Tfrm_fylbtz.FormShow(Sender: TObject);
begin
  if pub_tmhxsbz = false then
    tmh.PasswordChar := '*';
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select isnull(zydjbalj,0) zydjbalj from sys_xt_kg ';
  DM_data.qry_pub.open;
  zydjbalj := DM_data.qry_pub.FieldByName('zydjbalj').AsBoolean;
  zydjbalj := zydjbalj and (not withOutBaSvr);
  if zydjbalj then
  begin
    tcpThread := Tbalj_Tcp_conn.create(lbl_balj);
  end else
  begin
    lbl_balj.caption := '';
  end;
end;
initialization
  RegisterClass(Tfrm_fylbtz);
end.

