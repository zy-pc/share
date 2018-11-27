unit P_mztf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Db, DBTables, Mask, Grids, DBGrids, ADODB, XMLIntf, XMLDoc,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  Tfrm_mztf = class( TForm )
    DBGrid1: TDBGrid;
    ds_cxtf: TDataSource;
    sp_cxtf: TADOStoredProc;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    edit2: TEdit;
    Button3: TButton;
    Edit1: TEdit;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    Label_show: TLabel;
    qry_fymx: TADOQuery;
    sp_sqkh: TADOStoredProc;
    pnl1: TPanel;
    qry_sbjs: TADOQuery;
    dbgrd1: TDBGrid;
    ds_sbjs: TDataSource;
    lbl1: TLabel;
    ds1: TDataSource;
    dbgrd2: TDBGrid;
    qry1: TADOQuery;
    qry_cxqx: TADOQuery;
    ds_cxqx: TDataSource;
    Label1: TLabel;
    e_zzjfid: TEdit;
    CheckBox2: TCheckBox;
    IdHTTP1: TIdHTTP;
    sp_in_sjtf: TADOStoredProc;
    procedure Button1Click( Sender: TObject );
    procedure Button3Click( Sender: TObject );
    procedure Edit1KeyPress( Sender: TObject; var Key: Char );
    procedure edit2KeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid1KeyPress( Sender: TObject; var Key: Char );
    procedure Button2Click( Sender: TObject );
    procedure Edit1Enter( Sender: TObject );
    procedure Edit1Exit( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure sp_cxtfAfterScroll( DataSet: TDataSet );
  private
    { Private declarations }
    function func_IsYbFy( const v_tmh: string; var v_ybbh: string ): Boolean;
    function func_get_tmh( ): string;
    procedure proc_sjtf_yb( const v_tmh, v_sjbh: string );
    procedure proc_Check_yb( v_tmh: string );
    function tsb: boolean;
    function func_check_tfqx: Boolean;
  public
    { Public declarations }
    pub_ybtfbz: Boolean;
    pub_ybbh: string;
    pub_tyyzmm: string;
    v_yhpch, posh, pos_tkfs: string; //银行批次号
  end;

var
  frm_mztf: Tfrm_mztf;

implementation

uses p_func, p_dm, p_login, P_sb_dl, p_wait, p_mzsb, p_tyrydl, p_posxz, SuperObject, PosService, p_postkfs;

{$R *.DFM}

procedure Tfrm_mztf.Button1Click( Sender: TObject );
var
  zt, v_ybbh, v_yhh: string;
  v_sjbh: Integer;
begin
  v_yhpch := '-1';
  v_sjbh := 0;
  v_yhh := '';
  if not CheckBox2.Checked then
  begin
    if not TryStrToInt( Trim( edit1.Text ), v_sjbh ) then
    begin
      Application.MessageBox( '提示:请输入正确的收据编号!', '提示', MB_ICONInformation + MB_OK );
      Exit;
    end;
  end
  else
  begin
    Application.CreateForm( Tfrm_posxz, frm_posxz );
    try
      frm_posxz.ShowModal;
      posh := frm_posxz.posh;
    finally
      frm_posxz.Free;
    end;
    if posh = '2' then
    begin
      if Trim( e_zzjfid.Text ) = '' then
      begin
        Application.MessageBox( '提示:请输入正确的银行参考号！', '提示', MB_ICONHAND );
        Exit;
      end
      else
      begin
        v_yhpch := Trim( e_zzjfid.Text );
        try
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text := 'select * from mzsf_mzfymx a join ';
          DM_data.qry_pub.SQL.Add( '(select a.fph from yyt_zzjfzb a join yyt_zzjf b on a.zzjfid=b.id where SUBSTRING(b.yhjylsh,9,12)=:yhpch1 ' );
          DM_data.qry_pub.SQL.Add( 'union all ' );
          DM_data.qry_pub.SQL.Add( 'select fph from yyt_zzgh where SUBSTRING(yhjylsh,9,12)=:yhpch2 ) b on a.sjbh=fph and a.tfbz=1 ' );
          DM_data.qry_pub.Parameters.ParamByName( 'yhpch1' ).Value := v_yhpch;
          DM_data.qry_pub.Parameters.ParamByName( 'yhpch2' ).Value := v_yhpch;
          DM_data.qry_pub.Open;
          if DM_data.qry_pub.RecordCount > 0 then
          begin
            Application.MessageBox( '提示:该银行参考号下已存在退现金情况。无法进行银行退费操作！', '提示', MB_ICONHAND );
            Exit;
          end;
        except
          Application.MessageBox( '请检查银医通表补丁是否齐全！', '提示', MB_ICONHAND );
          Exit;
        end;
      end;
    end
    else
      if posh = '3' then
      begin
        if Trim( e_zzjfid.Text ) = '' then
        begin
          Application.MessageBox( '提示:请输入正确的银行参考号！', '提示', MB_ICONHAND );
          Exit;
        end
        else
        begin
          v_yhpch := Trim( e_zzjfid.Text );
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text := 'select ph from mzsf_mzfymx where sjbh=' + #39 + v_yhpch + #39;
          DM_data.qry_pub.Open;
          if DM_data.qry_pub.RecordCount = 0 then
          begin
            Application.MessageBox( '提示:未能找到该收据号所对应的收费批次号！', '提示', MB_ICONHAND );
            Exit;
          end;
          v_yhpch := DM_data.qry_pub.FieldByName( 'ph' ).AsString;
          e_zzjfid.Text := v_yhpch;
        end;
        v_yhh := '-2';
      end;
  end;

  if checkbox1.Checked then
    zt := '1'
  else
    zt := '0';

  sp_cxtf.close;
  sp_cxtf.parameters.ParamByName( '@czydm' ).value := pub_czydm;
  if v_yhh<>'' then
  begin
    sp_cxtf.parameters.ParamByName( '@yhh' ).value := v_yhh;
  end;
  sp_cxtf.parameters.ParamByName( '@sjbh' ).value := v_sjbh;
  sp_cxtf.Parameters.ParamByName( '@yhpch' ).Value := v_yhpch;
  sp_cxtf.parameters.ParamByName( '@brxm' ).value := trim( edit2.Text ) + '%';
  sp_cxtf.parameters.ParamByName( '@zt' ).value := zt;
  sp_cxtf.open;
  if sp_cxtf.RecordCount <= 0 then
  begin
    edit1.SetFocus;
    Exit;
  end
  else
  begin
    //遂宁中医院控制退费人员和收费人员必须一直
    if pub_yydm = '0234' then
      if sp_cxtf.FieldByName( 'sfczy' ).AsString <> pub_czydm then
      begin
        application.MessageBox( '此收据的收费人员不是您,本院规定您无权退费!', '系统提示', MB_ICONInformation + MB_OK );
        Exit;
      end;
    //检查退挂号费时是否有医嘱产生  如果有:不允许退费
    if sp_cxtf.fieldbyname( 'ghfbz' ).AsInteger <> -1 then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'select top 1 1 from mzdzbl_mzyz where zxbz=1'
        + ' and zyh=' + #39 + sp_cxtf.fieldbyname( 'tmh' ).asstring + #39
        + ' and convert(char(10),kdrq,120)=' + #39 + FormatDateTime( 'yyyy-MM-dd', sp_cxtf.fieldbyname( 'sfrq' ).AsDateTime ) + #39
        + ' and kdks=' + #39 + sp_cxtf.fieldbyname( 'ghkb' ).asstring + #39;
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.RecordCount > 0 then
      begin
        Application.MessageBox( '此病人当天已产生医嘱记录,不能退费', '系统提示',
          MB_OK + MB_ICONWARNING );
        Exit;
      end;
    end;
    if pub_ybtfbz then
    begin
      try
        if ( pub_yydm = '0108' ) or ( pub_yydm = '0022' ) then //蓬溪县医院及射洪县医院
          proc_Check_yb( Trim( sp_cxtf.FieldByName( 'tmh' ).AsString ) );

        qry_sbjs.close;
        qry_sbjs.Parameters.ParamByName( 'ph' ).value := sp_cxtf.FieldByName( 'ph' ).AsString;
        qry_sbjs.Open;
      except
      end;
    end;
    qry1.close;
    qry1.Parameters.ParamByName( 'ph' ).Value := sp_cxtf.FieldByName( 'ph' ).AsString;
    qry1.Open;
    button2.Enabled := true;
    dbgrid1.SetFocus;
  end;
end;

procedure Tfrm_mztf.Button3Click( Sender: TObject );
begin
  close;
end;

procedure Tfrm_mztf.Edit1KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then edit2.SetFocus;
end;

procedure Tfrm_mztf.edit2KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then button1.SetFocus;
end;

procedure Tfrm_mztf.FormShow( Sender: TObject );
var
  v_error: string;
begin
//医保信息处理开始------------------------------
//  if ( pub_yydm = '0108' ) or ( pub_yydm = '0022' ) then
//  begin
//    if pub_ybtfbz then
//    begin
//      Application.CreateForm( TFrm_wait, Frm_wait );
//      try
//        Frm_wait.Show;
//        Frm_wait.Refresh;
//      except
//        Frm_wait.Free;
//        Close;
//      end;
//      Pub_IsIni := False;
//      if pub_yydm = '0108' then pub_CardType_yb := ICCardType_4428;
//      if pub_yydm = '0022' then pub_CardType_yb := ICCardType_4442;
//      v_error := '';
//      if not Pub_IsIni then
//        Pub_IsIni := func_Ini_Func( pub_CardType_yb, v_error ); //接口初始化
//      if not Pub_IsIni then
//        Application.MessageBox( PChar( '错误提示:' + v_error + ',请与管理员联系!' ), '错误提示', 16 );
//      try //医保Oracle服务器连接
//        dm_data.Db_sb.connected := True;
//        if Assigned( frm_Wait ) then Frm_wait.Free;
//      except
//        Pub_IsIni := False;
//        Application.MessageBox( '提示:医保服务器连接失败,不能进行医保退费!', '提示', 16 );
//        Close;
//      end;
//
//      frm_sb_dl := Tfrm_sb_dl.Create( Self );
//      try
//        frm_sb_dl.pub_ybclfs := 1; //退费方式
//        frm_sb_dl.Show;
//        frm_sb_dl.Edit1.SetFocus;
//      except
//        frm_sb_dl.Free;
//        Application.MessageBox( '错误提示:读卡信息窗口打开失败!', '错误提示', 16 );
//        Close;
//      end;
//    end;
//  end;
//  //医保信息处理结束------------------------------
//  Edit1.SetFocus;
end;

function Tfrm_mztf.func_check_tfqx: Boolean;
var
  v_tfyzmm: string;
begin
  Result := True;
  qry_cxqx.Close;
  qry_cxqx.SQL.Text := 'select * from sys_xt_kg';
  qry_cxqx.Open;
  if not Assigned( qry_cxqx.FindField( 'mztf_tfyzmm' ) ) then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'alter table sys_xt_kg add mztf_tfyzmm varchar(20)';
    DM_data.qry_pub.ExecSQL;
    //更新开关表
    v_tfyzmm := '';
    Exit;
  end;
  v_tfyzmm := qry_cxqx.FieldByName( 'mztf_tfyzmm' ).AsString;
  if v_tfyzmm <> '' then
  begin
    //弹出登录框校验
    proc_show_mztyrydl;
    if v_tfyzmm <> pub_tyyzmm then
    begin
      Application.MessageBox( '输入的退费验证密码与系统设置不一致!', '系统提示',
        MB_OK + MB_ICONWARNING );
      Result := False;
    end;
  end;
end;

function Tfrm_mztf.func_get_tmh: string;
begin
  sp_sqkh.Active := False;
  sp_sqkh.Parameters.ParamByName( '@lstmh' ).value := '';
  sp_sqkh.ExecProc;
  Result := sp_sqkh.Parameters.ParamByName( '@lstmh' ).value;
end;

function Tfrm_mztf.func_IsYbFy( const v_tmh: string; var v_ybbh: string ): Boolean;
begin
  with dm_data.qry_pub do
  begin
    Close;
    SQL.Text := 'select * from mzsf_yb_mxz where bz = 0 and tmh=' + #39 + v_tmh + #39;
    Open;
    Result := ( RecordCount > 0 );
    if Result then
      v_ybbh := FieldByName( 'bh' ).AsString;
  end;
end;

procedure Tfrm_mztf.proc_Check_yb( v_tmh: string );
var
  v_ybbh: string;
begin
  if pub_ybtfbz then //医保退费
  begin
    v_ybbh := '';
    if func_IsYbFy( v_tmh, v_ybbh ) then //是医保收取费用
    begin
      if not ( ( v_ybbh = pub_ybbh ) or ( v_ybbh = '' ) ) then
        Application.MessageBox( '错误提示:此费用非当前刷卡病人费用!', '错误提示', 16 );
    end
    else
    begin
      Application.MessageBox( '错误提示:此费用是非医保费用，请用正常方式退费!', '错误提示', 16 );
      Close;
    end;
  end
  else
  begin
    if func_IsYbFy( v_tmh, v_ybbh ) then //是医保收取费用
    begin
      Application.MessageBox( '错误提示:此费用为医保收费费用,请用医保退费方式退费!', '错误提示', 16 );
      Close;
    end;
  end;
end;

procedure Tfrm_mztf.proc_sjtf_yb( const v_tmh, v_sjbh: string );
var
  v_fyzje_old, v_fyzje_new: Real;
  v_datetime: TDatetime; // , v_sfrq
  v_tmh_yb, v_tmh_new, v_czydm, v_czymc, v_msg: string; //医保条码号
begin
  v_fyzje_old := 0;
  v_fyzje_new := 0;
  v_msg := '';
  v_czydm := '';
  v_czymc := '';
  v_fyzje_new := 0;
  v_datetime := frm_func.curr_date;
  v_tmh_yb := frm_sb_dl.func_Read_tmh_yb( v_tmh ); //查询医保条码号
  //  v_sfrq := sp_cxtf.FieldByName( 'sfrq' ).AsDateTime; //查询收费日期
  v_fyzje_old := frm_sb_dl.func_Read_info_yb( v_tmh_yb, v_czydm, v_czymc ); //费用总金额

  qry_fymx.Close;
  if CheckBox1.Checked then
    qry_fymx.SQL.Text := 'select mx.*,km.fymc from mzsf_mzfymx_bf mx,sys_kjsfxm km where mx.fydm=km.fydm and mx.tfbz=0 and mx.sjbh<>' + #39 + v_sjbh + #39 + ' and tmh=' + #39 + v_tmh + #39
  else
    qry_fymx.SQL.Text := 'select mx.*,km.fymc from mzsf_mzfymx mx,sys_kjsfxm km where mx.fydm=km.fydm and mx.tfbz=0 and mx.sjbh<>' + #39 + v_sjbh + #39 + ' and tmh=' + #39 + v_tmh + #39;
  qry_fymx.Open;

  dm_data.db_sb.BeginTrans;
  try
    //退所有费用开始------------------------------------
    //写消费表总表
    if not frm_sb_dl.func_Write_grmzxf_tf( v_tmh_yb, v_datetime ) then
      raise Exception.Create( '错误提示:写入个人消费总表失败(yp_grmzxf,退)!' );
    //写消费明细表
    if not frm_sb_dl.func_Write_grmzxfmx_tf( v_tmh_yb, v_datetime ) then
      raise Exception.Create( '错误提示:写入消费明细表失败(yb_grmzyaop,退)!' );
    //退所有费用完成------------------------------------
    //收取除指定sjbh外费用开始--------------------------

    if qry_fymx.RecordCount > 0 then
    begin
      v_tmh_new := func_get_tmh( ); //获取门诊号
      qry_fymx.First;
      while not qry_fymx.Eof do //上传
      begin
        v_fyzje_new := v_fyzje_new + qry_fymx.FieldByName( 'fyzje' ).AsFloat;
        //写入处方表
        if not frm_sb_dl.func_Write_grmzcf_ex( v_tmh_new, qry_fymx.FieldByName( 'kdks' ).AsString, v_czydm, v_czymc ) then
          raise Exception.Create( '错误提示:写入处方表失败(yp_grmzcf)!' );
        if Trim( qry_fymx.FieldByName( 'cfbh' ).AsString ) <> '' then //写处方
        begin
          //入药品表
          if not frm_sb_dl.func_Write_grmzyaop( v_tmh_new, qry_fymx.FieldByName( 'cfbh' ).AsString, v_datetime, v_czydm, v_czymc ) then
            raise Exception.Create( '错误提示:写入药品表失败(yb_grmzyaop)!' );
        end
        else //写项目
          if not frm_sb_dl.func_Write_grmzxm( v_tmh_new, Trim( qry_fymx.FieldByName( 'fymc' ).AsString ), qry_fymx.FieldByName( 'fyzje' ).AsFloat, v_datetime, v_czydm, v_czymc ) then
            raise Exception.Create( '错误提示:项目写入药品表失败(yb_grmzyaop)!' );
        qry_fymx.Next;
      end;
      //写消费表信息
      if not frm_sb_dl.func_Write_grmzxf( v_tmh_new, v_fyzje_new, v_fyzje_new, v_datetime, v_czydm, v_czymc ) then
        raise Exception.Create( '错误提示:写入个人消费表失败(yp_grmzxf)!' );
    end;

    //收取除指定sjbh外费用结束--------------------------
    //提交
    frm_sb_dl.proc_Write_PayBack( v_tmh_yb, -abs( v_fyzje_old ), -abs( v_fyzje_old ), v_Datetime ); //退费
    if v_fyzje_new > 0 then //除退费收据外还有其它费用
    begin
      frm_sb_dl.func_Get_UserInfo( Trim( frm_sb_dl.edit1.Text ) ); //重新获取卡用户信息
      frm_sb_dl.Proc_Write_Update( v_tmh_new, v_tmh_new, v_fyzje_new, v_Datetime ); //收除sjbh对应费用
      frm_sb_dl.proc_update_tmh( v_tmh, v_tmh_new ); //更新HIS医保明细帐中对应医保中心cfbh
      if not frm_sb_dl.func_SendYbyyDataToYbzx_xf( v_tmh_new, False, v_msg ) then
        Application.MessageBox( Pchar( '提示:收费数据传送到医保中心失败!信息:' + v_msg ), '提示', MB_OK + MB_ICONINFORMATION );
    end;
    if not frm_sb_dl.func_SendYbyyDataToYbzx_xf( v_tmh_yb, True, v_msg ) then
      Application.MessageBox( Pchar( '提示:收费数据传送到医保中心失败!信息:' + v_msg ), '提示', MB_OK + MB_ICONINFORMATION );
    frm_sb_dl.func_Write_fymxz( v_tmh, v_fyzje_new - v_fyzje_old, 1 ); //写医保费用明细帐
    dm_data.db_sb.CommitTrans;
  except
    on E: Exception do
    begin
      dm_data.db_sb.RollbackTrans;
      //      frm_sb_dl.Proc_delete_sb_ex( v_tmh_yb, v_Datetime, True ); //失败删除相关退费数据
      //      frm_sb_dl.Proc_delete_sb_ex( v_tmh_new, v_Datetime, False ); //失败删除添加的除sjbh外的费用数据
      Application.MessageBox( Pchar( E.Message ), '错误提示', 16 );
      Abort;
    end;
  end;
  //--------------------------------------------------

end;

procedure Tfrm_mztf.sp_cxtfAfterScroll( DataSet: TDataSet );
begin
  try
    qry_sbjs.close;
    qry_sbjs.Parameters.ParamByName( 'ph' ).value := sp_cxtf.FieldByName( 'ph' ).AsString;
    qry_sbjs.Open;
  except
  end;
end;

procedure Tfrm_mztf.DBGrid1KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    button2.SetFocus;
  end;
end;

procedure Tfrm_mztf.Button2Click( Sender: TObject );
var
  zt, save_cg, pos_tffy: string;
  tffs: integer;
  t: Tstringlist;
  posje: Real;
  pos_bol, pos_tfbz: Boolean;
  xmlstr: string;
  jo: ISuperObject;
  srMDoc: TXMLDocument;
  scMDoc: TXMLDocument;
  aNode, aNode1, aNode2: IXMLNode;
begin
  if not sp_cxtf.Active then Exit;
  if sp_cxtf.RecordCount = 0 then exit;

  tffs := 0;
  zt := sp_cxtf.Parameters.ParamByName( '@zt' ).Value;
  //判断是否退药
  sp_cxtf.First;
  while not sp_cxtf.Eof do
  begin
    if ( trim( sp_cxtf['cfbh'] ) <> '' ) and
      ( ( trim( sp_cxtf['fydm'] ) = pub_xyfdm ) or ( trim( sp_cxtf['fydm'] ) = pub_mzxyfdm )
      or ( trim( sp_cxtf['fydm'] ) = pub_chaoydm ) or ( trim( sp_cxtf['fydm'] ) = pub_chenydm ) ) then
    begin
      tffs := 1;
      dm_data.qry_pub.Close;
      dm_data.qry_pub.SQL.Clear;
      if checkbox1.Checked then //检索备份
        dm_data.qry_pub.sql.Text := 'select * from mzxyf_cfzb_bf ' +
          ' where cfbh=' + '''' + sp_cxtf['cfbh'] + ''''
      else
        dm_data.qry_pub.sql.Text := 'select * from mzxyf_cfzb ' +
          ' where cfbh=' + '''' + sp_cxtf['cfbh'] + '''';
      dm_data.qry_pub.Open;

      if ( dm_data.Qry_pub['fybz'] = true ) and ( dm_data.Qry_pub['tybz'] = false ) then
      begin
        application.MessageBox( '此处方未退药，不能退费!', '系统提示', MB_ICONInformation + MB_OK );
        Exit;
      end;
    end;
    sp_cxtf.Next;
  end;
  //遂宁市中医院退费需录入开关表设置的管理人员代码和密码
  if not func_check_tfqx then
    Exit;

  //医保退费
  if ( pub_yydm = '0108' ) or ( pub_yydm = '0022' ) then //蓬溪县医院及射洪县中医院
    if pub_ybtfbz then //医保退费
      proc_sjtf_yb( Trim( sp_cxtf.FieldByName( 'tmh' ).AsString ), Trim( sp_cxtf.FieldByName( 'sjbh' ).AsString ) ); //医保根据收缴号退费
  if not tsb then
  begin
    exit;
  end;
  //--------------------------------------
  pos_bol := False;
  pos_tfbz := False;
  if CheckBox2.Checked then
  begin
    if posh = '3' then
    begin
      pos_tkfs := '';
      Application.CreateForm( Tfrm_postkfs, frm_postkfs );
      try
        frm_postkfs.ShowModal;
      finally
        frm_postkfs.Free;
      end;
      if pos_tkfs <> '' then
      begin
        if pos_tkfs = '2' then
        begin
          posje := 0.00;
          sp_cxtf.First;
          while not sp_cxtf.Eof do
          begin
            posje := posje + sp_cxtf.FieldByName( 'sszje' ).AsFloat;
            sp_cxtf.Next;
          end;
          IdHTTP1.Request.ContentType := 'application/json;charset=utf-8';
          IdHTTP1.Request.Method := 'POST';
          t := TStringList.Create;
          t.Clear;
          pos_tffy := StringReplace( FormatFloat( '0.00', posje ), '.', '', [rfReplaceAll] );
          pos_tffy := FormatEx( StrToInt( pos_tffy ), 12 );
          t.Add( '{"TransType":"REFUND","TokenID":"START_PAY","SerialNumber":"000001","PackageType":"0","Amount":"' + pos_tffy + '","OldTransDate":"' +
            FormatDateTime( 'yyyyMMdd', sp_cxtf.FieldByName( 'sfrq' ).AsDateTime ) + '","OldRefNo":"' + sp_cxtf.FieldByName( 'jyckh' ).AsString + '"}' );
          jo := SO( IdHTTP1.Post( 'http://localhost:44665/api/trade', t ) );
          while jo['PackageType'].AsString = '0' do
          begin
            srMDoc := TXMLDocument.Create( nil );
            srMDoc.Active := True;
            srMDoc.Version := '1.0';
            srMDoc.Encoding := 'GBK';
            srMDoc.standalone := 'yes';
            aNode := srMDoc.AddChild( 'ROOT' );
            aNode1 := aNode.AddChild( 'HEAD' );
            aNode1.AddChild( 'TradeName' ).Text := 'GetBankdata';
            aNode2 := aNode.AddChild( 'Data' );
            aNode2.AddChild( 'SETIOS8583' ).Text := jo['ISO8583'].AsString;
            scMDoc := TXMLDocument.Create( nil );
            scMDoc.Active := True;
            //此处进行WEB服务传送。
            xmlstr := GetIPosService.HisToBank( srMDoc.XML.Text );
            xmlstr := '<?xml version="1.0" encoding="GBK" standalone="yes"?>' + xmlstr;
            scMDoc.loadfromxml( xmlstr );
            t.Clear;
            t.Add( '{"TransType":"REFUND","TokenID":"START_PAY","SerialNumber":"000001","PackageType":"0","Amount":"' + pos_tffy + '","ISO8583":"' +
              scMDoc.DOMDocument.getElementsByTagName( 'AREA8583' )[0].childNodes[0].nodeValue + '","OldTransDate":"' +
              FormatDateTime( 'yyyyMMdd', sp_cxtf.FieldByName( 'sfrq' ).AsDateTime ) + '","OldRefNo":"' + sp_cxtf.FieldByName( 'jyckh' ).AsString + '"}' );
            jo := SO( IdHTTP1.Post( 'http://localhost:44665/api/trade', t ) );
            if ( jo['PackageType'].AsString = '1' ) and ( jo['ErrorCode'].AsString = '00' ) then
            begin
              pos_bol := True;
              pos_tfbz := True;
            end;
          end;
        end
        else
        begin
          IdHTTP1.Request.ContentType := 'application/json;charset=utf-8';
          IdHTTP1.Request.Method := 'POST';
          t := TStringList.Create;
          t.Clear;
          pos_tffy := StringReplace( FormatFloat( '0.00', sp_cxtf.FieldByName( 'sszje' ).AsFloat ), '.', '', [rfReplaceAll] );
          pos_tffy := FormatEx( StrToInt( pos_tffy ), 12 );
          t.Add( '{"TransType":"POSVOID","TokenID":"START_PAY","SerialNumber":"000001","PackageType":"0","OldTraceNo":"' + sp_cxtf.FieldByName( 'lsh' ).AsString + '"}' );
          jo := SO( IdHTTP1.Post( 'http://localhost:44665/api/trade', t ) );
          while jo['PackageType'].AsString = '0' do
          begin
            srMDoc := TXMLDocument.Create( nil );
            srMDoc.Active := True;
            srMDoc.Version := '1.0';
            srMDoc.Encoding := 'GBK';
            srMDoc.standalone := 'yes';
            aNode := srMDoc.AddChild( 'ROOT' );
            aNode1 := aNode.AddChild( 'HEAD' );
            aNode1.AddChild( 'TradeName' ).Text := 'GetBankdata';
            aNode2 := aNode.AddChild( 'Data' );
            aNode2.AddChild( 'SETIOS8583' ).Text := jo['ISO8583'].AsString;
            scMDoc := TXMLDocument.Create( nil );
            scMDoc.Active := True;
            //此处进行WEB服务传送。
            xmlstr := GetIPosService.HisToBank( srMDoc.XML.Text );
            xmlstr := '<?xml version="1.0" encoding="GBK" standalone="yes"?>' + xmlstr;
            scMDoc.loadfromxml( xmlstr );
            t.Clear;
            t.Add( '{"TransType":"POSVOID","TokenID":"START_PAY","SerialNumber":"000001","PackageType":"0","ISO8583":"' +
              scMDoc.DOMDocument.getElementsByTagName( 'AREA8583' )[0].childNodes[0].nodeValue + '","OldTraceNo":"' + sp_cxtf.FieldByName( 'lsh' ).AsString + '"}' );
            jo := SO( IdHTTP1.Post( 'http://localhost:44665/api/trade', t ) );
            if ( jo['PackageType'].AsString = '1' ) and ( jo['ErrorCode'].AsString = '00' ) then
            begin
              pos_bol := True;
              pos_tfbz := True;
            end;
          end;
        end;
        if ( pos_bol ) and ( pos_tfbz ) then
        begin
          sp_cxtf.First;
          sp_in_sjtf.Connection.BeginTrans;
          try
            while not sp_cxtf.Eof do
            begin
              save_cg := '0';
              sp_in_sjtf.Close;
              sp_in_sjtf.Parameters.ParamByName( '@cfbh' ).Value := sp_cxtf.FieldByName( 'cfbh' ).AsString;
              sp_in_sjtf.Parameters.ParamByName( '@zt' ).Value := zt;
              sp_in_sjtf.Parameters.ParamByName( '@sjbh' ).Value := sp_cxtf.FieldByName( 'sjbh' ).AsInteger;
              sp_in_sjtf.Parameters.ParamByName( '@tmh' ).Value := sp_cxtf.FieldByName( 'tmh' ).AsString;
              sp_in_sjtf.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
              sp_in_sjtf.Parameters.ParamByName( '@tffs' ).Value := tffs;
              sp_in_sjtf.Parameters.ParamByName( '@sczt' ).Value := '';
              sp_in_sjtf.ExecProc;
              save_cg := sp_in_sjtf.Parameters.ParamByName( '@sczt' ).Value;
              if save_cg <> '1' then
              begin
                sp_in_sjtf.Connection.RollbackTrans;
                if save_cg = 'e' then
                  application.MessageBox( '提示:处方未退药,不能退费!', '系统提示', MB_ICONInformation + MB_OK )
                else
                  application.MessageBox( '退费失败！', '系统提示', MB_ICONInformation + MB_OK );
                Exit;
              end;
              sp_cxtf.Next;
            end;
          except
            sp_in_sjtf.Connection.RollbackTrans;
            Application.MessageBox( '提示:医院退费失败！银行已退费成功！请联系网络人员进行处理', '提示', MB_ICONHAND );
          end;
          if save_cg = '1' then
          begin
            sp_in_sjtf.Connection.CommitTrans;
            pos_tfbz := False;
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text := 'exec jkk_zbsj_mz '''+sp_cxtf.FieldByName( 'tmh' ).AsString+'''';
            DM_data.qry_pub.ExecSQL;
            DM_data.qry_pub.Close;
            application.MessageBox( '退费成功！', '系统提示', MB_ICONInformation + MB_OK );
            with sp_cxtf do
            begin
              close;
              parameters.ParamByName( '@sjbh' ).value := trim( edit1.Text );
              parameters.ParamByName( '@brxm' ).value := trim( edit2.Text ) + '%';
              parameters.ParamByName( '@zt' ).value := zt;
              open;
            end;
            Edit1.SetFocus;
            if Assigned( frm_sb_dl ) then frm_sb_dl.Close;
            if pub_ybtfbz then Close;
          end;
        end;
        IdHTTP1.Disconnect;
      end
      else
      begin
        Application.MessageBox( '提示:请选择POS退款方式！', '提示', MB_ICONHAND );
      end;
    end
    else
      if posh <> '2' then
      begin
        pos_bol := True;
        pos_tfbz := True;
      end
      else
      begin
        Application.MessageBox( '提示:请勾选银行后进行查询操作进行退费。', '提示', MB_ICONHAND );
        pos_bol := False;
      end;
  end
  else
  begin
    pos_bol := True;
    pos_tfbz := True;
  end;
  if ( pos_bol ) and ( pos_tfbz ) then
  begin
    save_cg := mzsf_mztf( sp_cxtf['cfbh'], zt, sp_cxtf['sjbh'], sp_cxtf['tmh'], pub_czydm, tffs );
    if save_cg = '1' then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'exec jkk_zbsj_mz '''+sp_cxtf['tmh']+'''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.Close;
      application.MessageBox( '退费成功！', '系统提示', MB_ICONInformation + MB_OK );
      with sp_cxtf do
      begin
        close;
        parameters.ParamByName( '@sjbh' ).value := trim( edit1.Text );
        parameters.ParamByName( '@brxm' ).value := trim( edit2.Text ) + '%';
        parameters.ParamByName( '@zt' ).value := zt;
        open;
      end;
      Edit1.SetFocus;
      if Assigned( frm_sb_dl ) then frm_sb_dl.Close;
      if pub_ybtfbz then Close;
    end
    else
    begin
      if save_cg = 'e' then
        application.MessageBox( '提示:处方未退药,不能退费!', '系统提示', MB_ICONInformation + MB_OK )
      else
        application.MessageBox( '退费失败！', '系统提示', MB_ICONInformation + MB_OK )
    end;
  end;
end;

function Tfrm_mztf.tsb: boolean;
begin
  if qry_sbjs.Active and ( qry_sbjs.RecordCount > 0 ) then
  begin
    Result := func_pub_sbjs( '门诊退结算', sp_cxtf.FieldByName( 'ph' ).AsString + '|' + sp_cxtf.FieldByName( 'sjbh' ).AsString );
  end
  else
  begin
    Result := true;
  end;
end;

procedure Tfrm_mztf.Edit1Enter( Sender: TObject );
begin
  frm_func.changecolor( Sender );
end;

procedure Tfrm_mztf.Edit1Exit( Sender: TObject );
begin
  frm_func.restorecolor( Sender );
end;

end.

