unit p_tysq_zytycfhj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, Db, DBTables, Mask, DBCtrls,
  ADODB;

type
  TFrm_zytycfhj = class(TForm)
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel5: TPanel;
    Label10: TLabel;
    DBGrid2: TDBGrid;
    DBGrid4: TDBGrid;
    DS_ys: TDataSource;
    DS_zb: TDataSource;
    DS_mx: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    E_kc: TEdit;
    DS_yp: TDataSource;
    DBGrid5: TDBGrid;
    DS_ypbz: TDataSource;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DS_zydj: TDataSource;
    DBEdit3: TDBEdit;
    Qry_ys: TADOQuery;
    SP_yp: TADOStoredProc;
    SP_tyyp: TADOStoredProc;
    Qry_zb: TADOQuery;
    Qry_mx: TADOQuery;
    Qry_ypdm: TADOQuery;
    SP_cfbh: TADOStoredProc;
    Qry_ypbz: TADOQuery;
    qry_zydj: TADOQuery;
    SP_save: TADOStoredProc;
    Qry_mxcfbh: TStringField;
    Qry_mxxh: TIntegerField;
    Qry_mxypdm: TStringField;
    Qry_mxypdwid: TIntegerField;
    Qry_mxypdw: TStringField;
    Qry_mxypbzbl: TIntegerField;
    Qry_mxypsl: TBCDField;
    Qry_mxypdj: TBCDField;
    Qry_mxyplb: TStringField;
    Qry_mxhj: TFloatField;
    Qry_mxypmc: TStringField;
    Qry_mxypgg: TStringField;
    Panel11: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label11: TLabel;
    E_ys: TEdit;
    Edit4: TEdit;
    E_tmh: TEdit;
    Panel7: TPanel;
    Label14: TLabel;
    Label18: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel21: TPanel;
    Panel2: TPanel;
    Label4: TLabel;
    E_pym: TEdit;
    Panel6: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    E_cfh: TEdit;
    E_ye: TEdit;
    Panel8: TPanel;
    B_add: TBitBtn;
    b_cont: TBitBtn;
    b_save: TBitBtn;
    b_del: TBitBtn;
    b_delcf: TBitBtn;
    b_close: TBitBtn;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Qry_mxzfje: TFloatField;
    Qry_mxkccgj: TBCDField;
    Qry_mxsbfybl: TFloatField;
    Qry_mxhtfybl: TFloatField;
    Qry_mxbxfybl: TFloatField;
    DBGrid3: TDBGrid;
    Label19: TLabel;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    BITBTN1: TSpeedButton;
    ad_plcl: TADODataSet;
    Label20: TLabel;
    e_fydm: TEdit;
    Label21: TLabel;
    e_dyyf: TEdit;
    Button1: TButton;
    Button2: TButton;
    qry_yfdm: TADOQuery;
    qry_in_sqjl: TADOQuery;
    Qry_mxypph: TStringField;
    Qry_mxypxq: TDateTimeField;
    Qry_mxrkdh: TStringField;
    Qry_mxoldcfbh: TStringField;
    qry_ypsl: TADOQuery;
    procedure E_ysChange(Sender: TObject);
    procedure E_ysKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4Exit(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure B_addClick(Sender: TObject);
    procedure E_pymChange(Sender: TObject);
    procedure E_pymKeyPress(Sender: TObject; var Key: Char);
    procedure b_closeClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid5Exit(Sender: TObject);
    procedure DBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure b_contClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure b_delClick(Sender: TObject);
    procedure E_tmhKeyPress(Sender: TObject; var Key: Char);
    procedure b_delcfClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure b_saveClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid2Enter(Sender: TObject);
    procedure E_tmhChange(Sender: TObject);
    procedure Qry_mxCalcFields(DataSet: TDataSet);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure BITBTN1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure e_fydmExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    cfbh: string;
    xh: integer;
    cfzje, zfzje, ye: real;
    mode: integer; //mode=0 表示通常状态 =1 表示增加状态
    clrq: Tdatetime;
    procedure check; //数据合法性检测
    procedure brlr;
  public
    { Public declarations }
  end;

var
  Frm_zytycfhj: TFrm_zytycfhj;
   pldh, pub_pldh: string;
   yfzdmc:string;
   cflb:string;
   yfdm:string;
   Vypdm,Vypph:string;
implementation

uses p_dm, p_login, p_func;

{$R *.DFM}

procedure TFrm_zytycfhj.E_ysChange(Sender: TObject);
begin
  edit4.Clear;
end;

procedure TFrm_zytycfhj.E_ysKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qry_ys.close;
    qry_ys.Parameters.ParamByName('pym').value := '%' + trim(e_ys.text) + '%';
    qry_ys.open;
    if qry_ys.RecordCount = 0 then
    begin
      application.MessageBox('没有该医生资料!', '注意', 16);
      qry_ys.close;
      e_ys.Clear;
      e_ys.SetFocus;
      abort;
    end
    else
      if qry_ys.RecordCount = 1 then
      begin
        e_ys.Text := qry_ys['dm'];
        edit4.Text := qry_ys['mc'];
        Button1.Click;
        e_pym.SetFocus;
      end
      else
      begin
        dbgrid4.Visible := true;
        dbgrid4.Left := E_ys.Left;
        dbgrid4.Top := Panel1.Top + E_ys.Top + E_ys.Height;
        dbgrid4.SetFocus;
      end;
  end;
end;

procedure TFrm_zytycfhj.DBGrid4Exit(Sender: TObject);
begin
  dbgrid4.Visible := false;
end;

procedure TFrm_zytycfhj.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    e_ys.Text := qry_ys['dm'];
    edit4.Text := qry_ys['mc'];
    dbgrid4.Visible := false;
    Button1.Click;
    e_pym.SetFocus;
    abort;
  end
  else
    if key = #27 then
    begin
      e_ys.Clear;
      qry_ys.close;
      dbgrid4.Visible := false;
      e_ys.SetFocus;
      abort;
    end;
end;

procedure TFrm_zytycfhj.check;
begin
  if (qry_mx.State = dsinsert) or (qry_mx.State = dsedit) then
    if mode = 1 then
    begin
      try
        strtofloat(dbedit3.text);
      except
        dbedit3.text := '0';
      end;
      if pub_yydm = '0274' then  //南通医院
      begin
        if strtofloat(dbedit3.text) < 0 then
        begin
          application.MessageBox('退药数量必须为正数', '注意', 16);
          qry_mx.edit;
          qry_mx['ypsl'] := 0;
          dbedit3.SelectAll;
          dbedit3.SetFocus;
          abort;
        end;
      end else
      begin
        if strtofloat(dbedit3.text) >= 0 then
        begin
          application.MessageBox('退药数量必须为负数', '注意', 16);
          qry_mx.edit;
          qry_mx['ypsl'] := 0;
          dbedit3.SelectAll;
          dbedit3.SetFocus;
          abort;
        end;
      end;
      if abs(qry_mx.FieldByName('ypsl').asfloat) * qry_mx.FieldByName('ypbzbl').asfloat > sp_tyyp.FieldByName('ypsyzxsl').asfloat then
      begin
        application.MessageBox('退药数量不能超出以前使用数量!', '注意', 16);
        qry_mx['ypsl'] := 0;
        dbedit3.SelectAll;
        dbedit3.SetFocus;
        abort;
      end;
    end;
end;

procedure TFrm_zytycfhj.Button1Click(Sender: TObject);
begin
  if Qry_mx.RecordCount>0 then
  begin
    application.MessageBox('正在录入药品，请先保存!', '注意', 16);
    b_save.SetFocus;
    Exit;
  end;
  e_fydm.Text := pub_xyfdm;
  Label14.Visible := False;
  e_fydmExit(nil);
  
end;

procedure TFrm_zytycfhj.Button2Click(Sender: TObject);
begin
  if Qry_mx.RecordCount>0 then
  begin
    application.MessageBox('正在录入药品，请先保存!', '注意', 16);
    b_save.SetFocus;
    Exit;
  end;
  e_fydm.Text := pub_zychenydm;
  e_fydmExit(nil);
end;

procedure TFrm_zytycfhj.B_addClick(Sender: TObject);
begin
  mode := 0;
  sp_cfbh.close;
  sp_cfbh.ExecProc;
  cfbh := sp_cfbh.Parameters.parambyname('@cfbh').value;
  xh := 1;
  qry_zb.close;
  qry_zb.Parameters.ParamByName('cfbh').value := cfbh;
  qry_zb.open;
  qry_mx.close;
  qry_mx.Parameters.ParamByName('cfbh').value := cfbh;
  qry_mx.open;
  qry_zb.Append;
  qry_zb['cfbh'] := cfbh;
  qry_zb['hjrq'] := frm_func.curr_date();
  qry_zb['hjczy'] := pub_czydm;
  qry_zb['hjks'] := pub_ksdm;
  qry_zb['cybz'] := false;
  qry_zb['hybz'] := false;
  qry_zb['fybz'] := false;
  qry_zb['sfbz'] := false;
  qry_zb['cfzje'] := 0.00;
  qry_zb['zfzje'] := 0.00;
  qry_zb['cgzje'] := 0.00;
  qry_zb['cflb'] := 'ZY';
  qry_zb.Post;
  cfzje := 0.00;
  zfzje := 0.00;
  e_cfh.Text := cfbh;
  b_add.enabled := false;
  b_delcf.Enabled := true;
  panel1.Enabled := true;
  e_ys.Enabled := false;
  e_tmh.SetFocus;
end;

procedure TFrm_zytycfhj.E_pymChange(Sender: TObject);
begin
  sp_yp.close;
end;

procedure TFrm_zytycfhj.E_pymKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    sp_yp.close;
    sp_yp.Parameters.Refresh;
    sp_yp.Filtered := false;
    sp_yp.Parameters.ParamByName('@pym').value := trim(e_pym.text);
    sp_yp.Parameters.ParamByName('@ksdm').value := yfdm;
    sp_yp.Parameters.ParamByName('@lb').value := cflb;
    sp_yp.Parameters.ParamByName('@zyh').value :=trim(qry_zydj.fieldbyname('zyh').asstring);
    sp_yp.open;
    if sp_yp.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的药品资料!', '注意', 16);
      e_pym.SelectAll;
      e_pym.SetFocus;
      abort;
    end
    else
    begin
      dbgrid1.Enabled := true;
      dbgrid1.Visible := true;
      dbgrid1.SetFocus;
      abort;
    end;
  end
  else
    if key = #27 then
    begin
      e_pym.Clear;
      e_pym.SetFocus;
      abort;
    end;

end;

procedure TFrm_zytycfhj.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_zytycfhj.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  ypdm: string;
  yplb: string;
begin
  if key = #13 then
  begin
    if (qry_mx.State = dsedit) or (qry_mx.State = dsinsert) then
      qry_mx.Cancel;
    ypdm := sp_yp['ypdm'];
    if qry_mx.Locate('ypdm', ypdm, []) then
    begin
      application.MessageBox('已有该药品，不能重复输入!', '注意', 16);
      dbgrid1.SetFocus;
      abort;
    end;
    sp_tyyp.Locate('ypdm', ypdm, []);
    if sp_tyyp.Locate('ypdm', ypdm, []) = false then
    begin
      application.MessageBox('该病人未用过该药品,不能退该药品!', '注意', 16);
      abort;
    end;
    if sp_yp.FieldByName('lsj').asfloat = 0 then
    begin
      application.MessageBox('药品价格有误，不能划价!', '注意', 16);
      abort;
    end;
//    sp_yp.Filtered := false;
//    sp_yp.Filter := 'ypdm=' + '''' + ypdm + '''';
//    sp_yp.Filtered := true;
    panel1.Enabled := false;
    panel2.Enabled := false;
    panel4.Enabled := true;
    panel5.Enabled := false;
    b_cont.Enabled := true;
    b_del.Enabled := false;
    b_save.Enabled := true;
    mode := 1;
    qry_mx.Append;
    qry_mx['cfbh'] := cfbh;
    qry_mx['xh'] := xh;
    qry_mx['ypdm'] := ypdm;
    qry_mx['ypsl'] := 0;
    qry_mx['ypdw'] := sp_yp['ypdw'];
    qry_mx['ypdwid'] := sp_yp['dwid'];
    qry_mx['ypbzbl'] := sp_yp.fieldbyname('zhl').asfloat;
    qry_mx['ypdj'] := sp_yp.fieldbyname('lsj').asfloat;
    qry_mx['kccgj'] := sp_yp.fieldbyname('kccgj').asfloat;
    qry_mx['ypph'] := sp_yp.fieldbyname('ypph').AsString;
    qry_mx['ypxq'] := sp_yp.fieldbyname('ypxq').AsDateTime;
    qry_mx['rkdh'] := sp_yp.fieldbyname('rkdh').AsString;
    qry_mx['oldcfbh'] := sp_yp.fieldbyname('cfbh').AsString;
    e_kc.Text := floattostr(sp_tyyp.fieldbyname('ypsyzxsl').asfloat / sp_yp.fieldbyname('zhl').asfloat);
    cfzje := qry_zb.fieldbyname('cfzje').asfloat;
    zfzje := qry_zb.fieldbyname('zfzje').asfloat;
    yplb := '';
    if sp_yp['sfjsyp'] then
      yplb := yplb + ',精神';
    if sp_yp['sfdmyp'] then
      yplb := yplb + ',麻醉';
    if sp_yp['sfgzyp'] then
      yplb := yplb + ',贵重';
    if sp_yp['sfzfyp'] then
      yplb := yplb + ',自费';
    delete(yplb, 1, 1);
    qry_mx['yplb'] := yplb;
    qry_mx.Post;
    qry_zb.edit;
    dbedit3.SetFocus;
    if (pub_yydm = '0264') or (pub_yydm = '0263') then
    begin
      Vypdm := Trim(SP_yp.FieldByName('ypdm').AsString);
      Vypph := Trim(SP_yp.FieldByName('ypph').AsString);
    end;

  end
  else
    if key = #27 then
      e_pym.SetFocus;
end;

procedure TFrm_zytycfhj.FormShow(Sender: TObject);
begin
  BITBTN1.Visible := (pub_zyyftysfjrpl);
  if pub_zyyftysfjrpl then
    if pub_yydm = '0015' then
      BITBTN1.Visible := (pub_ksdm <> '0048');
  if pub_zytmhxsbz = false then
    e_tmh.PasswordChar := '*';
  b_add.SetFocus;
end;

procedure TFrm_zytycfhj.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qry_ypbz.close;
    qry_ypbz.Parameters.ParamByName('ypdm').value := qry_mx.fieldbyname('ypdm').asstring;
    qry_ypbz.open;
    qry_ypbz.Locate('ypdw', dbedit1.text, []);
    dbgrid5.Visible := true;
    dbgrid5.Top := Panel4.Top + DBEdit1.Top + DBEdit1.Height;
    DBGrid5.Left := DBEdit1.Left;
    dbgrid5.SetFocus;
    abort;
  end;
end;

procedure TFrm_zytycfhj.DBGrid5Exit(Sender: TObject);
begin
  dbgrid5.Visible := false;
end;

procedure TFrm_zytycfhj.DBGrid5KeyPress(Sender: TObject; var Key: Char);
var
  ypdj, bzbl, ypsl: real;
begin
  if key = #13 then
  begin
    ypdj := qry_mx.fieldbyname('ypdj').asfloat;
    bzbl := qry_mx.fieldbyname('ypbzbl').asfloat;
    ypsl := qry_mx.fieldbyname('ypsl').asfloat;
    qry_mx['ypdw'] := qry_ypbz.fieldbyname('ypdw').asstring;
    qry_mx['ypdwid'] := qry_ypbz.fieldbyname('id').asstring;
    qry_mx['ypbzbl'] := qry_ypbz.fieldbyname('bzbl').asfloat;
    qry_mx['ypdj'] := ypdj / bzbl * qry_ypbz.fieldbyname('bzbl').asfloat;
    e_kc.Text := floattostr(sp_tyyp.fieldbyname('ypsyzxsl').asfloat / qry_ypbz.fieldbyname('bzbl').asfloat);
    if strtofloat(e_ye.text) < 0 then
      e_ye.Font.Color := clred
    else
      e_ye.Font.Color := clblue;
    dbedit3.SetFocus;
  end;
  if key = #27 then
  begin
    dbgrid5.Visible := false;
    dbedit1.SetFocus;
  end;
end;

procedure TFrm_zytycfhj.e_fydmExit(Sender: TObject);
var
  _cflb: string; //处方类别
begin
    //------calmhawk----根据费用代码，划对应药房对应处方--------
  qry_yfdm.close;
  qry_yfdm.sql.text := 'select * from sys_kjsfxm where convert(char(2),dldm) = ' + #39 +
    '01' + #39 + ' and zyfy = 1 and yfzdmc <>' + #39 + #39;
  qry_yfdm.sql.Add(' and (fydm = ' + #39 + e_fydm.Text + #39);
  qry_yfdm.sql.Add(' or fymc like ' + #39 + '%' + e_fydm.Text + '%' + #39);
  qry_yfdm.sql.Add(' or pym like ' + #39 + '%' + e_fydm.Text + '%' + #39 + ')');
  qry_yfdm.open;
  if qry_yfdm.isempty then
  begin
    showMessage('项目对应药房类别未设置或不存在此药品费' + #13'请在系统维护程序中的系统管理设置项目对应药房类别!');
    exit;
  end;

  e_fydm.Text := trim(qry_yfdm.FieldByName('fymc').AsString);
  yfzdmc := trim(qry_yfdm.FieldByName('yfzdmc').AsString);
  _cflb := trim(qry_yfdm.FieldByName('cflb').AsString); //西药费,中成药,中草药
  if _cflb = '西药费' then
    cflb := 'ZY';
  if _cflb = '中草药' then
    cflb := 'ZC';
  if _cflb = '中成药' then
    cflb := 'ZN';
    //----------------------------------------------------------------
  qry_yfdm.close;
  qry_yfdm.sql.text := 'select * from sys_ksdm where dm = ' + '''' + pub_ksdm + '''';
  qry_yfdm.open;
  yfdm := trim(qry_yfdm.FieldByName(yfzdmc).AsString);
  if yfdm = '' then
  begin
    e_dyyf.Text := '';
    showMessage('科室未绑定药房' + ''#13'请在系统维护程序中的科室设置中绑定药房!');
    abort;
  end;
     //-----------------------------------------------
  qry_yfdm.close;
  qry_yfdm.sql.text := 'select * from sys_ksdm where dm = ' + '''' + yfdm + '''';
  qry_yfdm.open;
  e_dyyf.Text := qry_yfdm.FieldByName('mc').AsString;

end;

procedure TFrm_zytycfhj.b_contClick(Sender: TObject);
begin
  check; //数据合法性检测

  if (qry_mx.State = dsinsert) or (qry_mx.State = dsedit) then
    qry_mx.Post;
  if (qry_zb.State = dsinsert) or (qry_zb.State = dsedit) then
    qry_zb.Post;
  panel1.Enabled := true;
  panel2.Enabled := true;
  panel4.Enabled := false;
  panel5.Enabled := true;
  b_cont.Enabled := false;
  if qry_mx.RecordCount = 0 then
    b_del.Enabled := false
  else
    b_del.Enabled := true;
  xh := xh + 1;
  e_pym.SetFocus;
end;

procedure TFrm_zytycfhj.DBEdit3Exit(Sender: TObject);
begin
  if not dbedit1.focused then
    if qry_mx.Active then
    begin
      if pub_yydm <> '0274' then
      begin
        if qry_mx.FieldByName('ypsl').asfloat >= 0 then
        begin
          application.MessageBox('退药处方数量必须为负数!', '注意', 16);
          qry_mx['ypsl'] := 0;
          dbedit3.SelectAll;
          dbedit3.SetFocus;
          abort;
        end
        else
        begin
          if abs(qry_mx.FieldByName('ypsl').asfloat) * qry_mx.FieldByName('ypbzbl').asfloat > sp_yp.FieldByName('sysl').asfloat  then
          begin

            application.MessageBox('退药数量超出以前使用数量!', '注意', 16);
            {            qry_mx['ypsl']:=0;
                        dbedit3.SelectAll;
                        dbedit3.SetFocus;
                        abort;}
          end;
          if qry_zb.Active then
          begin
            qry_zb.Edit;
            qry_zb['cfzje'] := realtot(cfzje + qry_mx.fieldbyname('ypsl').asfloat * qry_mx.fieldbyname('ypdj').asfloat, 2);
            if trim(qry_zydj.fieldbyname('zfzdmc').asstring) <> '' then
            begin
              if qry_zydj.fieldbyname('ybndzje').asfloat - qry_zydj.fieldbyname('zfy').asfloat > 0 then
              begin
                if sp_yp.active then
                begin
                  if Assigned(qry_mx.FindField(trim(qry_zydj.fieldbyname('zfzdmc').asstring))) then
                    qry_zb['zfzje'] := realtot(zfzje + qry_mx.fieldbyname('ypsl').asfloat *
                      qry_mx.fieldbyname('ypdj').asfloat *
                      qry_mx.fieldbyname(trim(qry_zydj.fieldbyname('zfzdmc').asstring)).asfloat / 100, 2)
                  else
                    qry_zb['zfzje'] := realtot(zfzje + qry_mx.fieldbyname('ypsl').asfloat *
                      qry_mx.fieldbyname('ypdj').asfloat, 2)
                end;
              end
              else
                qry_zb['zfzje'] := realtot(zfzje + qry_mx.fieldbyname('ypsl').asfloat *
                  qry_mx.fieldbyname('ypdj').asfloat, 2);
            end
            else
              qry_zb['zfzje'] := realtot(zfzje + qry_mx.fieldbyname('ypsl').asfloat *
                qry_mx.fieldbyname('ypdj').asfloat, 2);
            qry_zb.Post;
            e_ye.text := floattostrf(qry_zydj['yjze'] + qry_zydj['zdjf'] -
              qry_zydj['zfze'] - qry_zb['zfzje'], fffixed, 18, 2);
            if strtofloat(e_ye.text) < 0 then
              e_ye.Font.Color := clred
            else
              e_ye.Font.Color := clblue;
            b_cont.Click;
          end;
        end;
      end else
      //南通医院     退药处方数量必须为正数
      begin
        if qry_mx.FieldByName('ypsl').asfloat < 0 then
        begin
          application.MessageBox('退药处方数量必须为正数!', '注意', 16);
          qry_mx['ypsl'] := 0;
          dbedit3.SelectAll;
          dbedit3.SetFocus;
          abort;
        end else
        begin
          if abs(qry_mx.FieldByName('ypsl').asfloat) * qry_mx.FieldByName('ypbzbl').asfloat > sp_yp.FieldByName('sysl').asfloat  then
          begin
            application.MessageBox('退药数量超出以前使用数量!', '注意', 16);
          end;
          if qry_zb.Active then
          begin
            qry_zb.Edit;
            qry_zb['cfzje'] := realtot(cfzje + qry_mx.fieldbyname('ypsl').asfloat * qry_mx.fieldbyname('ypdj').asfloat, 2);
            if trim(qry_zydj.fieldbyname('zfzdmc').asstring) <> '' then
            begin
              if qry_zydj.fieldbyname('ybndzje').asfloat - qry_zydj.fieldbyname('zfy').asfloat > 0 then
              begin
                if sp_yp.active then
                begin
                  if Assigned(qry_mx.FindField(trim(qry_zydj.fieldbyname('zfzdmc').asstring))) then
                    qry_zb['zfzje'] := realtot(zfzje + qry_mx.fieldbyname('ypsl').asfloat *
                      qry_mx.fieldbyname('ypdj').asfloat *
                      qry_mx.fieldbyname(trim(qry_zydj.fieldbyname('zfzdmc').asstring)).asfloat / 100, 2)
                  else
                    qry_zb['zfzje'] := realtot(zfzje + qry_mx.fieldbyname('ypsl').asfloat *
                      qry_mx.fieldbyname('ypdj').asfloat, 2)
                end;
              end
              else
                qry_zb['zfzje'] := realtot(zfzje + qry_mx.fieldbyname('ypsl').asfloat *
                  qry_mx.fieldbyname('ypdj').asfloat, 2);
            end
            else
              qry_zb['zfzje'] := realtot(zfzje + qry_mx.fieldbyname('ypsl').asfloat *
                qry_mx.fieldbyname('ypdj').asfloat, 2);
            qry_zb.Post;
            e_ye.text := floattostrf(qry_zydj['yjze'] + qry_zydj['zdjf'] -
              qry_zydj['zfze'] - qry_zb['zfzje'], fffixed, 18, 2);
            if strtofloat(e_ye.text) < 0 then
              e_ye.Font.Color := clred
            else
              e_ye.Font.Color := clblue;
            b_cont.Click;
          end;
        end;
      end;
    end;
end;

procedure TFrm_zytycfhj.b_delClick(Sender: TObject);
var
  msg: string;
begin
  mode := 0;
  if qry_mx.RecordCount = 0 then
    abort;
  msg := '是否删除药品' + '[ ' + qry_mx['ypmc'] + ' ]' + '的数据?';
  if application.MessageBox(pchar(msg), '注意', mb_yesno + mb_iconquestion) = idno then
    abort
  else
  begin
    qry_zb.edit;
    qry_zb['cfzje'] := realtot(qry_zb['cfzje'] - (qry_mx.FieldByName('ypsl').asfloat * qry_mx.FieldByName('ypdj').asfloat), 2);
    qry_zb['zfzje'] := realtot(qry_zb['zfzje'] - (qry_mx.FieldByName('zfje').asfloat), 2);
    qry_zb['cgzje'] := realtot(qry_zb['cgzje'] - (qry_mx.FieldByName('ypsl').asfloat *
      qry_mx.FieldByName('ypdj').asfloat *
      qry_mx.FieldByName('kccgj').asfloat), 2);
    qry_zb.post;
    e_ye.text := floattostrf(qry_zydj['yjze'] + qry_zydj['zdjf'] - qry_zydj['zfze'] - qry_zb['zfzje'], fffixed, 18, 2);
    if strtofloat(e_ye.text) < 0 then
      e_ye.Font.Color := clred
    else
      e_ye.Font.Color := clblue;
    qry_mx.Delete;
    if qry_mx.RecordCount = 0 then
    begin
      xh := 0;
      panel5.Enabled := false;
      b_del.Enabled := false;
      b_save.Enabled := false;
    end
    else
    begin
      qry_mx.DisableControls;
      qry_mx.First;
      xh := 0;
      while not qry_mx.Eof do
      begin
        qry_mx.Edit;
        xh := xh + 1;
        qry_mx['xh'] := xh;
        qry_mx.Post;
        qry_mx.Next;
      end;
      qry_mx.First;
      qry_mx.EnableControls;
    end;
    b_cont.Enabled := true;
    b_cont.SetFocus;
  end;
end;

procedure TFrm_zytycfhj.brlr;
var
  ls: string;
  ye: real;
begin
  if pub_zyyftysfjrpl then
  begin
    if pub_yydm = '0015' then
      if pub_ksdm = '0048' then
        Exit;
    if (bitbtn1.enabled = false) then
      bitbtn1.Enabled := true;
   // pub_bqdm := qry_zydj.fieldbyname('bqdm').asstring;
    ad_plcl.close;
    if pub_grcfbz then
      ad_plcl.commandtext := 'select * from zyxyf_pljlb a,sys_bqdm b where ' +
        'a.bqdm=b.bqdm and a.bqdm=' + #39 + pub_bqdm + #39 + ' and a.clbz=0 and czy=' +
        #39 + pub_czydm + #39 + ' and convert(char,clrq,112)=' + #39 + formatdatetime('yyyymmdd', frm_func.curr_date) + #39
    else
      ad_plcl.commandtext := 'select * from zyxyf_pljlb a,sys_bqdm b where ' +
        'a.bqdm=b.bqdm and a.bqdm=' + #39 + pub_bqdm + #39 + ' and a.clbz=0 and ' +
        ' convert(char,clrq,112)=' + #39 + formatdatetime('yyyymmdd', frm_func.curr_date) + #39;
    ad_plcl.open;
    if ad_plcl.IsEmpty then
    begin
      bitbtn1.caption := '建立批量(&T)';
      bitbtn1.Font.Color := clWindowText;
      pldh := '';
    end
    else
    begin
      bitbtn1.caption := '通知批量(&T)';
      bitbtn1.Font.Color := clred;
    end;
    if bitbtn1.caption = '通知批量(&T)' then
    begin
      ls := trim(ad_plcl.fieldbyname('bqmc').asstring);
      if Messagedlg('是否加入“' + ls + '”批量？', mtinformation, [mbYes, mbNo], 0) = mryes then
        pldh := ad_plcl.fieldbyname('pldh').asstring
      else
        pldh := '';
    end;
  end;
end;

procedure TFrm_zytycfhj.E_tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    try
      e_tmh.text := formatex(strtoint(trim(e_tmh.text)), 9);
    except
    end;
    qry_zydj.close;
    qry_zydj.SQL.clear;
    qry_zydj.SQL.Text := 'select dj.*,ks.mc ksmc,lb.mc fylbmc,lb.yjbz,lb.fyxz,lb.zfzdmc,dj.zgys,zgys.mc zgysmc ' +
      'from zysf_zydj dj,sys_ksdm ks,sys_fylb lb,zydzbl_blys blys,sys_czy zgys  ' +
      ' where (dj.bqdm='+''''+pub_bqdm+''''+' or isnull(blys.jfysdm,'''') in '+
      ' (select dm from sys_czy where ksdm in (select bqzydm from sys_bqzyfl where bqdm='+''''+pub_bqdm+''''+')))'+
      ' and dj.fylb=lb.dm and dj.zyh*=blys.zyh  and dj.zgys*=zgys.dm and  dj.ksdm=ks.dm and dj.tmh<>' +
      #39 + '00000001' + #39 + ' and (dj.tmh=' + #39 + trim(e_tmh.text) +
      #39 + ' or dj.brxm like ' + #39 + '%' + trim(e_tmh.text) + '%' + #39 +
      ' or dj.bah like ' + #39 + '%' + trim(e_tmh.text) + '%' + #39 +
      ' or (dj.ksdm in (select dm from sys_ksdm where pym like ' +
      #39 + copy(trim(e_tmh.text), 1, 2) + '%' + #39 + ') and dj.bch like ' +
      #39 + '%' + copy(trim(e_tmh.text), 3, 2) + #39 + '))';
    qry_zydj.open;
    qry_zydj.Filtered:=false;
    qry_zydj.Filter:='bqdm='+''''+pub_bqdm+'''';
    qry_zydj.Filtered:=true;
    if qry_zydj.RecordCount = 0 then
    begin
      application.MessageBox('没有该住院病人信息或该病人已办出院!', '注意', 16);
      e_ys.Enabled := false;
      panel2.Enabled := false;
      e_tmh.Clear;
      e_tmh.SetFocus;
      abort;
    end
    else
      if qry_zydj.RecordCount = 1 then
      begin
        ye := qry_zydj.fieldbyname('yjze').asfloat + qry_zydj.fieldbyname('zdjf').asfloat - qry_zydj.fieldbyname('zfze').asfloat;
        if ye < 0 then
          e_ye.Font.Color := clred
        else
          e_ye.Font.Color := clblue;
        ye := qry_zydj.fieldbyname('yjze').asfloat + qry_zydj.fieldbyname('zdjf').asfloat - qry_zydj.fieldbyname('zfze').asfloat;
        if ye < 0 then
          e_ye.Font.Color := clred
        else
          e_ye.Font.Color := clblue;
        e_ye.Text := floattostrf(ye, fffixed, 18, 2);
        e_ys.Enabled := true;
        panel2.Enabled := true;
        e_ys.SetFocus;
        e_tmh.text := trim(qry_zydj.fieldbyname('tmh').asstring);
        if pub_yydm='0271' then  //掇刀医院默认主治医师
        begin
          e_ys.Text :=  trim(qry_zydj.fieldbyname('zgys').asstring);
          edit4.Text :=  trim(qry_zydj.fieldbyname('zgysmc').asstring);
        end;
        sp_tyyp.close;
        sp_tyyp.Parameters.ParamByName('@zyh').value := trim(qry_zydj.fieldbyname('zyh').asstring);
        sp_tyyp.open;
        e_ys.SetFocus;
        brlr;
      end
      else
      begin
        dbgrid3.left := e_tmh.left;
        dbgrid3.top := e_tmh.top + e_tmh.height;
        dbgrid3.Visible := true;
        dbgrid3.SetFocus;
      end;
  end;
end;

procedure TFrm_zytycfhj.b_delcfClick(Sender: TObject);
begin
  if application.MessageBox('是否确认放弃本张处方？', '注意', mb_iconquestion + mb_okcancel + mb_defbutton2) = idcancel then
    abort
  else
  begin
    qry_zb.close;
    qry_mx.close;
    e_pym.Clear;
    e_kc.Clear;
    e_cfh.Clear;
    e_ye.Clear;
    b_cont.Enabled := false;
    b_save.Enabled := false;
    b_del.Enabled := false;
    b_delcf.Enabled := false;
    b_add.Enabled := true;
    panel1.Enabled := false;
    panel2.Enabled := false;
    panel4.Enabled := false;
    panel5.Enabled := false;
    b_add.SetFocus;
  end;
end;

procedure TFrm_zytycfhj.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    b_cont.SetFocus;
end;

procedure TFrm_zytycfhj.b_saveClick(Sender: TObject);
var
  zyh: string;
  fybz: boolean;
  cgzje: real;
  _ypzs_s: integer; //药品总数_收
  _ypzs_t: integer; //药品总数_退
  _cfzje_s: real; //处方问金额——收

begin
  if trim(e_tmh.Text) = '' then
  begin
    application.MessageBox('必须输入磁卡号!', '注意', 16);
    panel1.Enabled := true;
    e_tmh.SetFocus;
    abort;
  end;
  if edit4.Text = '' then
  begin
    application.MessageBox('必须输入处方医生!', '注意', 16);
    panel1.Enabled := true;
    e_ys.Enabled := true;
    e_ys.SetFocus;
    abort;
  end;

  zyh := qry_zydj['zyh'];

  //数据合法性检测
  check;
  if (pub_yydm = '0263') or (pub_yydm = '0264') then
  begin
    qry_ypsl.Close;
    qry_ypsl.Parameters.ParamByName('zyh').Value := zyh;
    qry_ypsl.Parameters.ParamByName('ypdm').Value := Vypdm;
    qry_ypsl.Parameters.ParamByName('ypph').Value := Vypph;
    qry_ypsl.Open;
    if Abs(StrToInt(DBEdit3.Text)) > qry_ypsl.FieldByName('sl').AsInteger then
    begin
      Application.MessageBox('该批次药品退药数量超过使用数量！','提示',64);
      Exit;
    end;
  end;

  if (qry_mx.State = dsinsert) or (qry_mx.State = dsedit) then
    qry_mx.Post;
  if qry_mx.RecordCount = 0 then
  begin
    application.MessageBox('没有药品明细数据!', '注意', 16);
    abort;
  end;
  qry_mx.First;
  xh := 0;
  cfzje := 0;
  zfzje := 0;
  cgzje := 0;
  _ypzs_t := 0;
  while not qry_mx.Eof do
  begin
    cfzje := cfzje + realtot(qry_mx['ypsl'] * qry_mx['ypdj'], 2);
    zfzje := zfzje + realtot(qry_mx['zfje'], 2);
    cgzje := cgzje + realtot(qry_mx['ypsl'] * qry_mx['ypbzbl'] * qry_mx['kccgj'], 2);
    //--calmhawk--
    _ypzs_t := _ypzs_t + qry_mx['ypsl'] * qry_mx['ypbzbl'];
    xh := xh + 1;
    qry_mx.Edit;
    qry_mx['xh'] := xh;
    qry_mx.Post;
    qry_mx.Next;
  end;
  //----calmhawk-2012-12-19----处理全退时因四舍五入产生的退不全或很成负数问题----
//  _ypzs_s := 0;
//  sp_tyyp.First;
//  while not sp_tyyp.Eof do
//  begin
//    _ypzs_s := _ypzs_s+sp_tyyp.FieldByName('ypsyzxsl').AsInteger;
//    sp_tyyp.Next;
//  end;
//  if abs(_ypzs_s) = abs(_ypzs_t)  then
//  begin
//      qry_yscfzje.Close;
//      qry_yscfzje.Parameters.ParamByName('zyh').Value := zyh;
//      qry_yscfzje.Open;
//      _cfzje_s := qry_yscfzje.FieldByName('cfzje').AsFloat;
//      cfzje := -1*_cfzje_s;
//      zfzje := -1*qry_yscfzje.FieldByName('zfzje').AsFloat;
//      cgzje := -1*qry_yscfzje.FieldByName('cgzje').AsFloat;
//  end;
  //--------------------------------------------------------------------- -------
  qry_zb.Edit;
  qry_zb['tmh'] := e_tmh.Text;
  qry_zb['zyh'] := qry_zydj['zyh'];
  qry_zb['kdks'] := qry_zydj['ksdm'];
  qry_zb['czks'] := yfdm;
  qry_zb['ysdm'] := Trim(E_ys.Text); //qry_ys['dm'];qry_ys['dm'];
  qry_zb['pldh'] := pldh;
  qry_zb['cfzje'] := cfzje;
  qry_zb['zfzje'] := zfzje;
  qry_zb['cgzje'] := cgzje;
  qry_zb['sfbz'] := false;
  qry_zb['fybz'] := false;
  qry_zb['cflb'] := cflb;
  qry_zb.Post;

  qry_in_sqjl.close;
  qry_in_sqjl.sql.text:='select * from zyxyf_shhjtcf where 1<>1';
  qry_in_sqjl.Open;
  qry_in_sqjl.Edit;
  qry_in_sqjl['zyh'] := qry_zydj['zyh'];
  qry_in_sqjl['cfbh'] := cfbh;
  qry_in_sqjl['tjczy'] := pub_czydm;
  qry_in_sqjl['tjrq'] := frm_func.curr_date;
  qry_in_sqjl['shbz'] := false;
  qry_in_sqjl['zfbz'] := false;
  qry_in_sqjl.Post;

  e_ye.text := floattostrf(qry_zydj['yjze'] + qry_zydj['zdjf'] - qry_zydj['zfze'] - qry_zb['zfzje'], fffixed, 18, 2);
  if strtofloat(e_ye.text) < 0 then
    e_ye.Font.Color := clred
  else
    e_ye.Font.Color := clblue;

  with dm_data do
  begin
    qry_pub.Close;
    qry_pub.sql.Clear;
    qry_pub.SQL.Add('select * from zysf_zydj where zyh=' + '''' + trim(zyh) + '''' + ' and cybz=0');
    qry_pub.open;
    if qry_pub.RecordCount = 0 then
    begin
      application.MessageBox('该病人在操作期间已办出院，不能输入处方!', '注意', 16);
      abort;
    end
    else
    begin
      e_ye.text := floattostrf(qry_pub['yjze'] + qry_pub['zdjf'] - qry_pub['zfze'] - qry_zb['zfzje'], fffixed, 18, 2);
      if strtofloat(e_ye.text) < 0 then
        e_ye.Font.Color := clred
      else
        e_ye.Font.Color := clblue;
    end;
    qry_pub.close;
  end;

  dm_data.ado_mydata.BeginTrans;
  try
    qry_zb.UpdateBatch;
    qry_mx.UpdateBatch;
    qry_in_sqjl.UpdateBatch;
    dm_data.ado_mydata.CommitTrans;
    Application.MessageBox('处方退药申请成功，等待药房审核处方下帐!请继续！', '提示', 48);
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox('处方保存失败！', '提示', 16);
    abort;
  end;

//  dm_data.Qry_pdzt.close;
//  dm_data.Qry_pdzt.parameters.ParamByName('ksdm').value := pub_ksdm;
//  dm_data.Qry_pdzt.open;
//  if dm_data.qry_pdzt['pdzt'] = true then
//    application.MessageBox('系统正在进行盘点，不能退药!', '注意', 16)
//  else //进行发药处理
//  begin
//    sp_save.close;
//    sp_save.Parameters.ParamByName('@cfbh').value := cfbh;
//    sp_save.Parameters.ParamByName('@fyczy').value := pub_czydm;
//    sp_save.Parameters.ParamByName('@ksdm').value := pub_ksdm;
//    sp_save.Parameters.ParamByName('@sjbh').value := string(get_sjh(pub_czydm));
//    sp_save.Parameters.ParamByName('@sc_cg').value := 0;
//    sp_save.ExecProc;
//    if sp_save.Parameters.ParamByName('@sc_cg').value = 1 then
//      application.MessageBox('退药数量超出历史使用数量,退药失败!', '注意', 16)
//    else
//      if sp_save.Parameters.ParamByName('@sc_cg').value = 2 then
//        application.MessageBox('处方退药失败!', '注意', 16)
//      else
//        Application.MessageBox('处方退药成功，处方已下帐!请继续！', '提示', 48);
//  end;
  e_pym.Clear;
  e_kc.Clear;
  qry_mx.close;
  panel1.Enabled := false;
  panel2.Enabled := false;
  panel4.Enabled := false;
  panel5.Enabled := false;
  b_add.Enabled := true;
  b_cont.Enabled := false;
  b_save.Enabled := false;
  b_delcf.Enabled := false;
  b_del.Enabled := false;
  cfzje := 0.00;
  zfzje := 0.00;
  xh := 0;
  mode := 0;
  b_add.SetFocus;
end;

procedure TFrm_zytycfhj.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if qry_mx.Active = true then
    if application.MessageBox('是否放弃当前处方的录入?', '注意', mb_iconquestion + mb_okcancel + mb_defbutton2) = idcancel then
      canclose := false;
end;

procedure TFrm_zytycfhj.DBGrid2Enter(Sender: TObject);
begin
  e_kc.Clear;
end;

procedure TFrm_zytycfhj.E_tmhChange(Sender: TObject);
begin
  e_ye.clear;
end;

procedure TFrm_zytycfhj.Qry_mxCalcFields(DataSet: TDataSet);
begin
  qry_mx['hj'] := qry_mx.fieldbyname('ypsl').asfloat * qry_mx.fieldbyname('ypdj').asfloat;
  if trim(qry_zydj.fieldbyname('zfzdmc').asstring) <> '' then
  begin
    if (qry_zydj.fieldbyname('ybndzje').asfloat - qry_zydj.fieldbyname('zfy').asfloat > 0) and
      (Assigned(qry_mx.FindField(trim(qry_zydj.fieldbyname('zfzdmc').asstring)))) then
    begin
      qry_mx['zfje'] := qry_mx['hj'] * qry_mx.fieldbyname(trim(qry_zydj.fieldbyname('zfzdmc').asstring)).asfloat / 100
    end
    else
    begin
      qry_mx['zfje'] := qry_mx['hj'];
    end;
  end
  else
    qry_mx['zfje'] := qry_mx['hj'];
end;

procedure TFrm_zytycfhj.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    ye := qry_zydj.fieldbyname('yjze').asfloat - qry_zydj.fieldbyname('zfze').asfloat;
    if ye < 0 then
      e_ye.Font.Color := clred
    else
      e_ye.Font.Color := clblue;
    ye := qry_zydj.fieldbyname('yjze').asfloat - qry_zydj.fieldbyname('zfze').asfloat;
    if ye < 0 then
      e_ye.Font.Color := clred
    else
      e_ye.Font.Color := clblue;
    e_ye.Text := floattostrf(ye, fffixed, 18, 2);
    e_ys.Enabled := true;
    panel2.Enabled := true;
    e_ys.SetFocus;
    e_tmh.text := trim(qry_zydj.fieldbyname('tmh').asstring);
    if pub_yydm='0271' then  //掇刀医院默认主治医师
    begin
      e_ys.Text :=  trim(qry_zydj.fieldbyname('zgys').asstring);
      edit4.Text :=  trim(qry_zydj.fieldbyname('zgysmc').asstring);
    end;
    sp_tyyp.close;
    sp_tyyp.Parameters.ParamByName('@zyh').value := trim(qry_zydj.fieldbyname('zyh').asstring);
    sp_tyyp.open;
    brlr;
    e_ys.SetFocus;
  end;
end;

procedure TFrm_zytycfhj.DBGrid3Exit(Sender: TObject);
begin
  dbgrid3.Visible := false;
end;

procedure TFrm_zytycfhj.BitBtn2Click(Sender: TObject);
begin
//  application.CreateForm(TFrm_zytycx, Frm_zytycx);
//  try
//    Frm_zytycx.ShowModal;
//  finally
//    Frm_zytycx.free;
//  end;
end;

procedure TFrm_zytycfhj.DBGrid1Exit(Sender: TObject);
begin
  dbgrid1.Visible := false;
end;

procedure TFrm_zytycfhj.BITBTN1Click(Sender: TObject);
begin
  if pub_zyyftysfjrpl then
  begin
    if bitbtn1.caption = '建立批量(&T)' then
    begin
      bitbtn1.caption := '通知批量(&T)';
      bitbtn1.Font.Color := clred;
      //pub_bqdm := qry_zydj.fieldbyname('bqdm').asstring;
      ad_plcl.close;
      if pub_grcfbz then
        ad_plcl.commandtext := 'select * from zyxyf_pljlb a,sys_bqdm b where ' +
          'a.bqdm=b.bqdm and a.bqdm=' + #39 + pub_bqdm + #39 + ' and a.clbz=0 and czy=' +
          #39 + pub_czydm + #39 + ' and convert(char,clrq,112)=' + #39 + formatdatetime('yyyymmdd', frm_func.curr_date) + #39
      else
        ad_plcl.commandtext := 'select * from zyxyf_pljlb a,sys_bqdm b where ' +
          'a.bqdm=b.bqdm and a.bqdm=' + #39 + pub_bqdm + #39 + ' and a.clbz=0 and ' +
          ' convert(char,clrq,112)=' + #39 + formatdatetime('yyyymmdd', frm_func.curr_date) + #39;
      ad_plcl.open;
      if ad_plcl.isempty then
      begin
        pub_pldh := get_sjh(pub_czydm);
        pldh := pub_pldh;
        clrq := frm_func.curr_date();
        ad_plcl.Append;
        ad_plcl['bqdm'] := pub_bqdm;
        ad_plcl['clrq'] := clrq;
        ad_plcl['czy'] := pub_czydm;
        ad_plcl['clbz'] := false;
        ad_plcl['pldh'] := pldh;
        ad_plcl.post;
        ad_plcl.close;
      end
      else
      begin
        pub_pldh := ad_plcl.fieldbyname('pldh').asstring;
        pldh := ad_plcl.fieldbyname('pldh').asstring;
        clrq := ad_plcl.fieldbyname('clrq').asdatetime;
        ad_plcl.close;
      end;
    end
    else
    begin
      bitbtn1.caption := '建立批量(&T)';
      bitbtn1.Font.Color := clblack;
    end
  end

end;
initialization
  RegisterClass(TFrm_zytycfhj);
end.

