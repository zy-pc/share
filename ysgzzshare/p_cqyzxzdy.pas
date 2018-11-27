unit p_cqyzxzdy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, GridsEh, DBGridEh, QRCtrls, QuickRpt,
  p_obj, OleServer, grproLib_TLB, ActnList, DBGridEhGrouping;

type
  Tfrm_cqyzxzdy = class( TForm )
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    sp_zxjl_cq_dy: TADOStoredProc;
    ds_zxjl_cq_dy: TDataSource;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRL_ys_cq: TQRLabel;
    QRL_dysj_cq: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRL_yymc_cq: TQRLabel;
    QRL_brxm_cq: TQRLabel;
    QRL_tmh_cq: TQRLabel;
    sj1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    sj3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRL_bch_cq: TQRLabel;
    QRShape6: TQRShape;
    sj2: TQRLabel;
    QRShape7: TQRShape;
    sj4: TQRLabel;
    xb_cq: TQRLabel;
    nl_cq: TQRLabel;
    zd_cq: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    ksrq: TQRLabel;
    zxhsmc: TQRLabel;
    xmmc: TQRLabel;
    tzrq: TQRLabel;
    tzysmc: TQRLabel;
    zhhsmc: TQRLabel;
    ypyf: TQRLabel;
    zxzxsj: TQRLabel;
    zhzxsj: TQRLabel;
    kdysmc: TQRLabel;
    QRgrImage1: TQRImage;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button3: TButton;
    qry_cx: TADOQuery;
    ds_cx: TDataSource;
    QRsh1: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    sp_cxxz: TADOStoredProc;
    GridppReport1: TGridppReport;
    qry_cx_sx: TADOQuery;
    edt_1: TEdit;
    ActionList1: TActionList;
    kx: TAction;
    zd: TAction;
    QRShape4: TQRShape;
    Button4: TButton;
    lbl4: TLabel;
    edt_4: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    btn4: TButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button5: TButton;
    cmd_dybz: TADOCommand;
    qry_dybz: TADOQuery;
    Button6: TButton;
    Qry_xgbz: TADOQuery;
    btn_tzxd: TButton;
    procedure FormShow( Sender: TObject );
    procedure QRSubDetail1NeedData( Sender: TObject; var MoreData: Boolean );
    procedure Button1Click( Sender: TObject );
    procedure Button2Click( Sender: TObject );
    procedure DBGridEh1CellClick( Column: TColumnEh );
    procedure Edit1KeyPress( Sender: TObject; var Key: Char );
    procedure Button3Click( Sender: TObject );
    procedure FormCreate( Sender: TObject );
    procedure kxExecute(Sender: TObject);
    procedure zdExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure pro_print_cqyzzxd_sc;
    procedure pro_print_cqyzzxd_sx( b_count: Integer );
    procedure pro_print_cqyzzxd_zdy_sc( b_count: Integer );
    procedure Button5Click(Sender: TObject);
    procedure GridppReport1PrintEnd(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure pro_print_cqyzzxd_qzdy(b_count:Integer);
    procedure btn_tzxdClick(Sender: TObject);//全州
    function sqlyjcl(sqlyj:String):string;//对sql语句进行处理 过滤
  private
    { Private declarations }
    FdryzQueryStr:string;//当日医嘱查询字符串
  public
    { Public declarations }
    paper_size: integer;
    xsexh:string;
    property dryzQueryStr:string  read FdryzQueryStr write FdryzQueryStr;
  end;

var
  frm_cqyzxzdy: Tfrm_cqyzxzdy;
  v_zyh: string;
  v_brxm: string;
  v_bch: string;
  v_brxb: string;
  v_brnl: string;
  v_ryzd: string;
  v_tmh: string;
  v_bah:String;
  sfxse: string;
    _fzbh:string;//calmhawk-- 分组编号
  tzxxdybz,dykg:integer;//设置医嘱续打 只打印停止信息开关 0 为关闭 1为开启   dykg 判断是否开启续打印功能
    
   cqyzdbb: TCusBb; //长期医嘱单报表对象


const
  _const1 = 8;
  _const2 = 160;
  _const3 = 200;
  cqyzdDm = '011001'; //陕西长期医嘱单报表代码
  sccqyzdDm = '049803'; //陕西长期医嘱单报表代码

implementation

{$R *.dfm}
uses p_dm, p_func, p_yzinput;

procedure Tfrm_cqyzxzdy.btn4Click(Sender: TObject);
 var _count: Integer;
begin

    try
      _count := StrToInt( ComboBox1.Text )

    except
      ShowMessage( '开始行输入错误！' );
      Abort;

    end;
  if tzxxdybz<>1 then  //停止续打功能 对开始行 要求不进行提示
  begin
    if _count > qry_cx.RecordCount then
    begin
      ShowMessage( '开始行应该小于总行数！' );
      Abort;
    end;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzdyfs').AsBoolean=true then //南郑县人民医院 , 两当县人民医院
  begin
    pro_print_cqyzzxd_sx( _count );
  end
  else if pub_yydm='0257' then
      pro_print_cqyzzxd_qzdy(_count)
   else
    pro_print_cqyzzxd_zdy_sc( _count );
end;

procedure Tfrm_cqyzxzdy.btn_tzxdClick(Sender: TObject);
begin
  try
    tzxxdybz:=1;    //打开开关
    btn4Click(btn_tzxd);
    tzxxdybz:=0;    //关闭开关
  except
    tzxxdybz:=0;   //发生错误异常 关闭开关
    Abort;
  end;
end;

procedure Tfrm_cqyzxzdy.Button1Click( Sender: TObject );
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzdyfs').AsBoolean=true then //南郑县人民医院 , 两当县人民医院
  begin
    pro_print_cqyzzxd_sx(1);
  end
  else
  begin
   // if  (pub_yydm='0013') or (pub_yydm='0046') then
    if   pub_yydm='0046' then

      pro_print_cqyzzxd_sc
   else if pub_yydm='0257' then
      pro_print_cqyzzxd_qzdy(1)
   else
    pro_print_cqyzzxd_zdy_sc(1);
  end;

end;

procedure Tfrm_cqyzxzdy.Button2Click( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_cqyzxzdy.Button3Click( Sender: TObject );
begin
  if Trim( Edit1.text ) <> '' then
  begin
    qry_cx.Edit;
    qry_cx.FieldByName( 'xh2' ).AsInteger := StrToInt( Edit1.text );
    qry_cx.post;
    qry_cx.Requery( );
  end
  else
  begin
    ShowMessage( '序号不能为空,请输入数字!' );
    Edit1.SetFocus;
  end;
end;

procedure Tfrm_cqyzxzdy.Button4Click(Sender: TObject);
var zgysdm,zgysxm,px:string;
begin

  if pub_yydm='0244' then       //龙江特殊处理医嘱单
  begin
    px:=',fzph asc,kdrq desc';
  end
  else
  begin
    px:='';
  end;
if application.MessageBox( '恢复初始数据将丢失修改后数据，确定要恢复？', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idcancel then
Exit
else
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb'') is not null drop table #lsb';
  DM_data.qry_pub.ExecSQL;

  if pub_yydm='0257' then
  begin
    DM_data.qry_pub.SQL.text := 'drop table #lsb1';
    DM_data.qry_pub.ExecSQL;
  end;

  if sfxse<>'新生儿' then
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end;
  sp_zxjl_cq_dy.Close;
  sp_zxjl_cq_dy.Parameters.Refresh;
  sp_zxjl_cq_dy.Parameters.ParamByName( '@zyh' ).Value := v_zyh;
  sp_zxjl_cq_dy.Parameters.ParamByName( '@fs' ).Value := 0;
  sp_zxjl_cq_dy.ExecProc;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where zyh=' + '''' + v_zyh + '''';
  DM_data.qry_pub.Open;
  zgysdm := DM_data.qry_pub.FieldByName( 'zgys' ).AsString;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + zgysdm + '''';
  DM_data.qry_pub.Open;
  zgysxm := DM_data.qry_pub.FieldByName( 'mc' ).AsString;
  DM_data.qry_pub.Close;
  if sfxse<>'新生儿' then
  //qry_cx.SQL.text := 'select * from zybl_cqyz_dy_ls where id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'') and rtrim(kdysmc) in (select mc from sys_czy where cfbz=1) and zyh=' + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'
  begin
  DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when'+
                   ' charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm,isnull(a.zhhsmc,'''')+case when e.mc is null then '''' when charindex(e.mc,a.zhhsmc)<1 then char(13)+e.mc else '''' end  zhhsmc_sqm'+
                   ' into #lsb '+
                   ' from zybl_cqyz_dy_ls a'+
                   ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.min_jlsj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                   ' left join zybl_zyyz_yzzxqd_sqm c on a.id=c.yzid and a.max_jlsj=substring(convert(varchar(20),c.zxsj,120),3,14)'+
                   ' left join sys_czy d on b.zxry=d.dm'+
                   ' left join sys_czy e on c.zxry=e.dm'+
                   ' where a.id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')  and a.zyh=' + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2';



  end
  else
  DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when'+
                   ' charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm,isnull(a.zhhsmc,'''')+case when e.mc is null then '''' when charindex(e.mc,a.zhhsmc)<1 then char(13)+e.mc else '''' end  zhhsmc_sqm'+
                   ' into #lsb '+
                   ' from zybl_cqyz_dy_ls a'+
                   ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.min_jlsj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                   ' left join zybl_zyyz_yzzxqd_sqm c on a.id=c.yzid and a.max_jlsj=substring(convert(varchar(20),c.zxsj,120),3,14)'+
                   ' left join sys_czy d on b.zxry=d.dm'+
                   ' left join sys_czy e on c.zxry=e.dm'+
                   ' where a.id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+
                   ' and isnull(jcff,'''')=''新生儿'' and rtrim(czys)='+''''+xsexh+''''+')    and a.zyh=' +
                    '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2';

  DM_data.qry_pub.ExecSQL;

  if pub_yydm='0257' then
  begin
    DM_data.qry_pub.SQL.text := 'select b.kdys,c.ysbz,a.*  into #lsb1 from #lsb a '+
                            'join zybl_zyyz b on b.id=a.id  ' +
                            'join sys_czy c on b.kdys=c.dm order by xh2 ';
    DM_data.qry_pub.ExecSQL;
    DM_data.qry_pub.SQL.text := 'delete #lsb1 where ysbz=''0''';
    DM_data.qry_pub.ExecSQL;
    DM_data.qry_pub.Close;
    qry_cx.Close;
    qry_cx.SQL.text:='select * from #lsb1 order by xh2'+px;
    qry_cx.Open;
  end
  else
  begin
    qry_cx.Close;
    qry_cx.SQL.text:='select * from #lsb order by xh2'+px;
    qry_cx.Open;
  end;
  DBGridEh1.ReadOnly:=true;
end;
end;

procedure Tfrm_cqyzxzdy.Button5Click(Sender: TObject);
begin
  qry_cx.first;
  QRL_yymc_cq.Caption := pub_yymc + '长期查房单';
  if sfxse <> '新生儿' then
  begin
    QRL_brxm_cq.Caption := '姓名:' + Trim( v_brxm );
    QRL_tmh_cq.Caption := '住院号:' + Trim( v_tmh );
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( v_bch ) + '''';
    DM_data.qry_pub.Open;
    QRL_bch_cq.Caption := '床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
    xb_cq.Caption := '性别:' + trim( v_brxb );
    nl_cq.Caption := '年龄:' + trim( v_brnl );
  end
  else
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select brxm,brxb,datediff(day,csrq,getdate()) nl from zysf_zydj_xse where zyh=' + '''' + v_zyh + ''''+
    ' and brnl='+xsexh;
    DM_data.qry_pub.Open;
    QRL_brxm_cq.Caption := '姓名:' + Trim( DM_data.qry_pub.FieldByName( 'brxm' ).asstring );
    QRL_tmh_cq.Caption := '住院号:' + Trim( v_tmh );
    xb_cq.Caption := '性别:' + trim( DM_data.qry_pub.FieldByName( 'brxb' ).asstring );
    nl_cq.Caption := '年龄:' + trim( v_brnl );
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( v_bch ) + '''';
    DM_data.qry_pub.Open;
    QRL_bch_cq.Caption := '床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
  end;
  if sfxse<>'新生儿' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
    DM_data.qry_pub.ExecSQL;
  end
  else
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
    DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc,'+
                            'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2 from #lsb';
  DM_data.qry_pub.ExecSQL;
  zd_cq.Caption := '科室:' + pub_ksmc;
  QRL_dysj_cq.Caption := '                            ';
  sj1.caption := '日期' + ''#13'' + '时间';
  sj2.caption := '执行' + ''#13'' + '时间';
  sj3.caption := '日期' + ''#13'' + '时间';
  sj4.caption := '执行' + ''#13'' + '时间';
  qry_cx.Filtered := false;
  qry_cx.Filter := 'sfdy=1';
  qry_cx.Filtered := True;
  QuickRep1.Prepare;
  paper_size := 0;
  //QRL_ys_cq.Caption := '共' + IntToStr( QuickRep1.Printer.PageCount ) + '页';
  QRL_ys_cq.Caption :='';
  QuickRep1.preview;
  qry_cx.Filtered := False;
end;

procedure Tfrm_cqyzxzdy.Button6Click(Sender: TObject);
begin
   if button6.Caption='全选' then
    begin
      qry_cx.First;
      while not qry_cx.eof do
      begin
        qry_cx.Edit;
        qry_cx.FieldByName('sfdy').Value := true;
        qry_cx.Post;
        qry_cx.Next;
      end;
      qry_cx.First;
      button6.Caption:='全不选';
    end
    else
    begin
           qry_cx.First;
      while not qry_cx.eof do
      begin
        qry_cx.Edit;
        qry_cx.FieldByName('sfdy').Value := false;
        qry_cx.Post;
        qry_cx.Next;
      end;
      qry_cx.First;
      button6.Caption:='全选';
    end;
end;

procedure Tfrm_cqyzxzdy.ComboBox1Change(Sender: TObject);
var i:integer;
id:Integer;
begin
i:=0;
qry_cx.First;
while not qry_cx.eof do
begin
if qry_cx.FieldByName('sfdy').AsBoolean=true then
i:=i+1;
if i=StrToInt(ComboBox1.text) then
begin
Break;
end;
qry_cx.Next;
end;

end;

procedure Tfrm_cqyzxzdy.DBGridEh1CellClick( Column: TColumnEh );
begin
  if DBGridEh1.SelectedIndex = 10 then
  begin
    if qry_cx.FieldByName( 'sfdy' ).AsBoolean = true then
    begin
      qry_cx.Edit;
      qry_cx.FieldByName( 'sfdy' ).AsBoolean := False;
      qry_cx.post;
    end
    else
    begin
      qry_cx.Edit;
      qry_cx.FieldByName( 'sfdy' ).AsBoolean := true;
      qry_cx.post;
    end;
    Edit1.text := DBGridEh1.Columns[11].DisplayText;
    Edit1.SetFocus;
    Edit1.SelectAll;
  end
  else
    Edit1.text := DBGridEh1.Columns[11].DisplayText;
  Edit1.SetFocus;
  Edit1.SelectAll;
end;

procedure Tfrm_cqyzxzdy.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 //qry_cx['dybz'].as
  if qry_cx.FieldByName( 'dybz' ).AsBoolean then
    DBGridEh1.Canvas.Brush.Color := clSkyBlue;

  if ( Rect.Top = DBGridEh1.CellRect( DBGridEh1.Col, DBGridEh1.Row ).Top ) and ( not ( gdFocused in State ) or not DBGridEh1.Focused ) then
    DBGridEh1.Canvas.Brush.Color := clAqua;
  DBGridEh1.DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_cqyzxzdy.Edit1KeyPress( Sender: TObject; var Key: Char );
begin
  if not ( ( key in ['0'..'9', #8] ) ) then
  begin
    key := #0;
  end;

end;

procedure Tfrm_cqyzxzdy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb'') is not null drop table #lsb';
  DM_data.qry_pub.ExecSQL;
  if pub_yydm='0257' then
  begin
    DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb1'') is not null drop table #lsb1 ';
    DM_data.qry_pub.ExecSQL;
  end;
end;

procedure Tfrm_cqyzxzdy.FormCreate( Sender: TObject );
begin
  QuickRep1.Visible := False;
  try
    qry_xgbz.Close;
    qry_xgbz.sql.text := '';
    qry_xgbz.sql.text := 'SELECT yzxddykg FROM  sys_xt_kg';
    qry_xgbz.open;
    if qry_xgbz.FieldByName('yzxddykg').Value<>1 then
     begin
       btn_tzxd.Enabled:=False;
     end;
     dykg:=qry_xgbz.FieldByName('yzxddykg').Value;
  except
    ShowMessage('系统开关表缺乏控制开关yzxddykg， int类型');
  end;
end;

//---calmhawk---2011-06-22---长期医嘱执行清单-陕西

procedure Tfrm_cqyzxzdy.pro_print_cqyzzxd_sx( b_count: Integer );
var  res, _field, _field1: string;
  cqyzdbb: TCusBb;
  I: Integer;
  qry_yzmx_temp: TADOQuery; //计算用临时数据集
  _fieldList: tstrings;
  j, _b_page: Integer; //_b_page 开始页
  hs:Integer;
begin
  qry_cx.Filtered:=False;
  qry_cx.Filter:=' sfdy=1';
  qry_cx.Filtered:=true;
  hs:=qry_cx.RecordCount+1;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_xdhs values('''+v_zyh+''','+
                            IntToStr(hs)+',0'+')';
  DM_data.qry_pub.ExecSQL;
  qry_cx.Filtered:=False;

  if sfxse<>'新生儿' then
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc,'+
                            'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2 from #lsb';
  DM_data.qry_pub.ExecSQL;
  qry_cx_sx.Close;
  _field := edt_1.Text;
  if sfxse <> '新生儿' then
    qry_cx_sx.SQL.text := 'select '+_field+' from zybl_cqyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where zyh='
    + '''' + v_zyh + '''' +
    ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' +
     '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'
  else
    qry_cx_sx.SQL.text := 'select '+_field+' from zybl_cqyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where zyh='
    + '''' + v_zyh + '''' +' and rtrim(czys)='+''''+xsexh+''''+
    ' and isnull(jcff,'''')=''新生儿'') and  zyh='
    + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2';
  qry_cx_sx.Open;
  _field1 := 'fzph,ksrq,ksrq kssj,ksrq zxsj,xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,ksrq zhzxsj,tzysmc,zhhsmc,ypyf';
//  if cqyzdbb = nil then
//   begin
    cqyzdbb := TCusBb.Create;
    cqyzdbb.GetBbByDM( cqyzdbb, cqyzdDm );
//
//  end;
  GridppReport1.LoadFromStr( cqyzdbb.nr );
  try
      //1、处理数据
  qry_yzmx_temp := TADOQuery.Create( nil );
  qry_yzmx_temp.close;
  qry_yzmx_temp.Connection := DM_data.ado_mydata;
  qry_yzmx_temp.LockType := ltBatchOptimistic;
  qry_yzmx_temp.SQL.Text := 'select ' + _field1 + ' from zybl_cqyz_dy_ls where 1=2';
  qry_yzmx_temp.Open;
  //----------------------------------------------------------------------------
  //--------------calmhawk----------续打处理-------------------------
  if b_count > 1 then
  begin

    qry_cx_sx.First;
    _fieldList := TStringList.Create;
    _fieldList.Delimiter := ',';
    _fieldList.DelimitedText := _field1;

    for I := 0 to b_count - 1 do
    begin
      qry_yzmx_temp.Insert;
      for j := 0 to qry_cx_sx.FieldCount - 1 do
      begin
        if ( qry_yzmx_temp.Fields.FindField(qry_cx_sx.Fields[j].FieldName) <> nil) and  (qry_cx_sx.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value <> null ) then
          begin
            qry_yzmx_temp.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value := qry_cx_sx.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value;
          end;
      end;
      qry_yzmx_temp.Post;
    end;

  end;
  GridppReport1.DataSet := nil;
  GridppReport1.DataSet := qry_yzmx_temp;
  //GridppReport1.PrintPreview(false);

  //-----------------------------------------------------------------
  //找已打印页数
   //GridppReport1.PrintPreview(false);

  //从最后一页开始打印？
  //PrintRangeType为grprtSelectionPages时才有效。

  //GridppReport1.Printer.SelectionPrintPages := '';

  //GridppReport1.Printer.
   _b_page := strtoint(edt_4.Text);
  //----------------------------------------------------------------------------
  GridppReport1.DataSet := nil;

    GridppReport1.ParameterByName( '病区' ).Value := pub_bqmc;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='select * from sys_kscwsz where rtrim(bcbh)='+''''+v_bch+
    ''''+' and bqdm='+''''+pub_bqdm+'''';
    DM_data.qry_pub.Open;
    GridppReport1.ParameterByName( '床号' ).Value := DM_data.qry_pub.FieldByName('yybch').asstring;
    //GridppReport1.ParameterByName( '床号' ).Value := v_bch;
    GridppReport1.ParameterByName( '姓名' ).Value := v_brxm;
    GridppReport1.ParameterByName( '性别' ).Value := v_brxb;
    GridppReport1.ParameterByName( '年龄' ).Value := v_brnl;
    GridppReport1.ParameterByName( '住院号' ).Value := v_tmh;
    if (pub_yydm='0204') then
    GridppReport1.ParameterByName( '病案号' ).Value := v_bah;
    GridppReport1.ParameterByName( '开始行' ).Value := b_count;
    GridppReport1.ParameterByName( '开始页' ).Value := _b_page;
    GridppReport1.DataSet := qry_cx_sx;
 //   ShowMessage(v_bah);

  except on e: Exception do
      ShowMessage( e.Message );
  end;
  res := frm_func.SetCReportXtcs( GridppReport1 );
  if res <> '1' then
  begin
    ShowMessage( res );
  end
  else
  begin
    GridppReport1.PrintPreview(false);
  end;


end;


//四川


procedure Tfrm_cqyzxzdy.pro_print_cqyzzxd_zdy_sc( b_count: Integer );
var  res, _field, _field1: string;
  cqyzdbb: TCusBb;
  I: Integer;
  qry_yzmx_temp: TADOQuery; //计算用临时数据集
  _fieldList: tstrings;
  j, _b_page: Integer; //_b_page 开始页
  hs,vRecordNum:Integer;
  px:string;
begin
  if pub_yydm='0244' then       //龙江特殊处理医嘱单
  begin
    px:=',fzph asc,kdrq desc';
  end else
  begin
    px:='';
  end;
  vRecordNum := 0;
  qry_cx.Filtered:=False;
  qry_cx.Filter:=' sfdy=1';
  qry_cx.Filtered:=true;
  hs:=qry_cx.RecordCount+1;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_xdhs values('''+v_zyh+''','+
                            IntToStr(hs)+',0'+')';
  DM_data.qry_pub.ExecSQL;
  qry_cx.Filtered:=False;

  if sfxse<>'新生儿' then
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;
  if (pub_yydm='0272') or (pub_yydm='0271') then //灌阳妇幼保健院
  begin
    if pub_dzqmsfqybz then //电子签名判断
    begin
      if dykg=1 then
      begin
      DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,'
                            +'fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,dybz,kdysdm,zxhsdm,tzysdm,zhhsdm,sfshbz,shrydm,zxhssqmdm,hszxdy,ystzdy,hstzdy)'
                           +' select zyh,sx,id,ksrq,kdysmc_sqm,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc_sqm,'+
                          'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,1,kdysdm,zxhsdm,tzysdm,zhhsdm,sfshbz,shrydm,zxry,hszxdy,ystzdy,hstzdy'+' from #lsb';

      end else
      begin
      DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,'
                      +'fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,dybz,kdysdm,zxhsdm,tzysdm,zhhsdm,sfshbz,shrydm,zxhssqmdm)'
                     +' select zyh,sx,id,ksrq,kdysmc_sqm,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc_sqm,'+
                    'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,1,kdysdm,zxhsdm,tzysdm,zhhsdm,sfshbz,shrydm,zxry'+' from #lsb';

      end;
    end else
    begin
      if dykg=1 then
      begin
      DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,'
                            +'fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,dybz,hszxdy,ystzdy,hstzdy)'
                           +' select zyh,sx,id,ksrq,kdysmc_sqm,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc_sqm,'+
                          'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,1,hszxdy,ystzdy,hstzdy'+' from #lsb';

      end else
      begin
      DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,'
                            +'fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,dybz)'
                           +' select zyh,sx,id,ksrq,kdysmc_sqm,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc_sqm,'+
                          'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,1'+' from #lsb';

      end;
    end;
  end else
  begin
    if pub_dzqmsfqybz then //电子签名判断
    begin
      if dykg=1 then
      begin
      DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,'
                            +'fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,dybz,kdysdm,zxhsdm,tzysdm,zhhsdm,sfshbz,shrydm,zxhssqmdm,hszxdy,ystzdy,hstzdy)'
                           +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc,'+
                          'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,1,kdysdm,zxhsdm,tzysdm,zhhsdm,sfshbz,shrydm,zxry,hszxdy,ystzdy,hstzdy'+' from #lsb';

      end else
      begin
      DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,'
                      +'fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,dybz,kdysdm,zxhsdm,tzysdm,zhhsdm,sfshbz,shrydm,zxhssqmdm)'
                     +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc,'+
                    'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,1,kdysdm,zxhsdm,tzysdm,zhhsdm,sfshbz,shrydm,zxry'+' from #lsb';

      end;
    end else
    begin
      if dykg=1 then
      begin
      DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,'
                            +'fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,dybz,hszxdy,ystzdy,hstzdy)'
                           +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc,'+
                          'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,1,hszxdy,ystzdy,hstzdy'+' from #lsb';

      end else
      begin
      DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,'
                            +'fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,dybz)'
                           +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc,'+
                          'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,1'+' from #lsb';

      end;
    end;
  end;
//  DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,'
//                            +'fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,dybz,kdysdm,zxhsdm,tzysdm,zhhsdm)'
//                           +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc,'+
//                          'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,1,kdysdm,zxhsdm,tzysdm,zhhsdm'+' from #lsb';
//  end
//  else
//  begin
//    DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls'
//                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc,'+
//                            'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2 from #lsb';
//  end;
  DM_data.qry_pub.ExecSQL;
  qry_cx_sx.Close;
  _field := edt_1.Text;
  if (pub_yydm='0015') or (pub_yydm='0004') then
  begin
    _field:='fzph,ksrq,ksrq kssj,min_jlsj zxsj,case rtrim(fzph) when '''' then xmmc+'' ''+yytj+'' ''+ypyf'+
    ' else xmmc end xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,max_jlsj zhzxsj,tzysmc,zhhsmc,case rtrim(fzph) when '''' then '''' else replace(yytj+ypyf,''mi n'',''min'') end ypyf,'+
    'kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm';
    if sfxse <> '新生儿' then
    qry_cx_sx.SQL.text := 'select '+_field+' from zybl_cqyz_dy_ls a '+
    '  where '+
    ' sfdy=1 and id in (select id from zybl_zyyz where zyh='
    + '''' + v_zyh + '''' +
    ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' +
     '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'
    else
    qry_cx_sx.SQL.text := 'select '+_field+' from zybl_cqyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where zyh='
    + '''' + v_zyh + '''' +' and rtrim(czys)='+''''+xsexh+''''+
    ' and isnull(jcff,'''')=''新生儿'') and  zyh='
    + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2';
  end
  else if pub_yydm = '0244' then
  begin
      if sfxse <> '新生儿' then
        qry_cx_sx.SQL.text := 'select ' + _field + ',hdczy,hdczy_js from zybl_cqyz_dy_ls a left join zyyz_hdyzmx on a.id=zyyzid '
          + 'left join zyyz_hdyzmx_js on a.id=zyyzid_js where sfdy=1 and a.id in (select id from zybl_zyyz where zyh='
          + '''' + v_zyh + '''' +
          ' and isnull(jcff,'''')<>''新生儿'') and  a.zyh=' +
          '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'
      else
        qry_cx_sx.SQL.text := 'select ' + _field + ',hdczy,hdczy_js from zybl_cqyz_dy_ls a left join zyyz_hdyzmx on a.id=zyyzid '
          + 'left join zyyz_hdyzmx_js on a.id=zyyzid_js where sfdy=1 and a.id in (select id from zybl_zyyz where zyh='
          + '''' + v_zyh + '''' + ' and rtrim(czys)=' + '''' + xsexh + '''' +
          ' and isnull(jcff,'''')=''新生儿'') and  a.zyh='
          + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'+px;
  end
  else if pub_yydm=HN_SYRMYY then      //沙雅县人民医院0240
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh = '+ QuotedStr(v_zyh);
    DM_data.qry_pub.Open;
    vRecordNum := DM_data.qry_pub.RecordCount;
    if vRecordNum > 0 then
    begin
      if sfxse <> '新生儿' then
        qry_cx_sx.SQL.text :=
        'SELECT id, fzph,ksrq,ksrq kssj,min_jlsj zxsj,xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,' +
        'max_jlsj zhzxsj,tzysmc,zhhsmc,ypyf,b.mc kdksmc,c.brxm,c.bch,c.brnl,c.tmh,c.brxb ' +
        'FROM zybl_cqyz_dy_ls a ' +
        'INNER JOIN sys_ksdm b ON a.kdks=b.dm ' +
        'INNER JOIN zysf_zydj c ON c.zyh=a.zyh ' +
        'WHERE a.zyh=' + QuotedStr(v_zyh) + ' and sfdy=1 ' +
            'and a.id in (select id from zybl_zyyz where zyh='+ QuotedStr(v_zyh) +' and isnull(jcff,'''')<>''新生儿'') ' +
            'and sx=' +  QuotedStr('长期') +
        ' order by xh2'

      else
        qry_cx_sx.SQL.text :=
        'SELECT id, fzph,ksrq,ksrq kssj,min_jlsj zxsj,xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,' +
        'max_jlsj zhzxsj,tzysmc,zhhsmc,ypyf,b.mc kdksmc,c.brxm,c.bch,c.brnl,c.tmh,c.brxb ' +
        'FROM zybl_cqyz_dy_ls a ' +
        'INNER JOIN sys_ksdm b ON a.kdks=b.dm ' +
        'INNER JOIN zysf_zydj c ON c.zyh=a.zyh ' +
        'WHERE a.zyh=' + QuotedStr(v_zyh)  + ' and sfdy=1 ' +
            'and a.id in (select id from zybl_zyyz where zyh='+ QuotedStr(v_zyh) +' and isnull(jcff,'''')=''新生儿'') ' +
            'and sx=' +  QuotedStr('长期') +
        ' order by xh2';
    end else
    begin
      if sfxse <> '新生儿' then
        qry_cx_sx.SQL.text :=
        'SELECT id,fzph,ksrq,ksrq kssj,min_jlsj zxsj,xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,' +
        'max_jlsj zhzxsj,tzysmc,zhhsmc,ypyf,b.mc kdksmc,c.brxm,c.bch,c.brnl,c.tmh,c.brxb ' +
        'FROM zybl_cqyz_dy_ls a ' +
        'INNER JOIN sys_ksdm b ON a.kdks=b.dm ' +
        'INNER JOIN zysf_cydj c ON c.zyh=a.zyh ' +
        'WHERE a.zyh=' + QuotedStr(v_zyh) + ' and sfdy=1 ' +
            'and a.id in (select id from zybl_zyyz where zyh='+ QuotedStr(v_zyh) +' and isnull(jcff,'''')<>''新生儿'') ' +
            'and sx=' +  QuotedStr('长期') +
        ' order by xh2'

      else
        qry_cx_sx.SQL.text :=
        'SELECT id,fzph,ksrq,ksrq kssj,min_jlsj zxsj,xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,' +
        'max_jlsj zhzxsj,tzysmc,zhhsmc,ypyf,b.mc kdksmc,c.brxm,c.bch,c.brnl,c.tmh,c.brxb ' +
        'FROM zybl_cqyz_dy_ls a ' +
        'INNER JOIN sys_ksdm b ON a.kdks=b.dm ' +
        'INNER JOIN zysf_cydj c ON c.zyh=a.zyh ' +
        'WHERE a.zyh=' + QuotedStr(v_zyh)  + ' and sfdy=1 ' +
            'and a.id in (select id from zybl_zyyz where zyh='+ QuotedStr(v_zyh) +' and isnull(jcff,'''')=''新生儿'') ' +
            'and sx=' +  QuotedStr('长期') +
        ' order by xh2';

    end;
  end
  else
  begin
    if pub_dzqmsfqybz then //电子签名判断
    begin
      if sfxse <> '新生儿' then
      qry_cx_sx.SQL.text := 'select a.id,'+_field+',b.qmtp as kdysmcqmtp ,c.qmtp as zxhsmcqmtp, d.qmtp as tzysmcqmtp ,e.qmtp as zhhsmcqmtp,f.qmtp as shryqmtp,g.qmtp as zxhssqmqmtp,  '+
      ' isnull(a.bxdqtbz,0) bxdqtbz '+
      ' from zybl_cqyz_dy_ls a left join sys_czy b on a.kdysdm = b.dm left join sys_czy c on a.zxhsdm=c.dm '+
      ' left join sys_czy d on a.tzysdm = d.dm left join sys_czy e on a.zhhsdm = e.dm left join sys_czy f on a.shrydm = f.dm left join sys_czy g on a.zxhssqmdm = g.dm '+
      ' where sfdy=1 and a.id in (select id from zybl_zyyz where zyh='
      + '''' + v_zyh + '''' +
      ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' +
      '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'
      else
      qry_cx_sx.SQL.text := 'select a.id,'+_field+',b.qmtp as kdysmcqmtp ,c.qmtp as zxhsmcqmtp, d.qmtp as tzysmcqmtp ,e.qmtp as zhhsmcqmtp,f.qmtp as shryqmtp,g.qmtp as zxhssqmqmtp,  '+
      ' isnull(a.bxdqtbz,0) bxdqtbz '+
      ' from zybl_cqyz_dy_ls a left join sys_czy b on a.kdysdm = b.dm left join sys_czy c on a.zxhsdm=c.dm '+
      ' left join sys_czy d on a.tzysdm = d.dm left join sys_czy e on a.zhhsdm = e.dm left join sys_czy f on a.shrydm = f.dm left join sys_czy g on a.zxhssqmdm = g.dm '+
      ' where  sfdy=1 and a.id in (select id from zybl_zyyz where zyh='
      + '''' + v_zyh + '''' +' and rtrim(czys)='+''''+xsexh+''''+
      ' and isnull(jcff,'''')=''新生儿'') and  zyh='
      + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2';
    end else
    begin
      if (pub_yydm='0263') or (pub_yydm='0264') or( pub_yydm='0261') then  //德阳肿瘤眼科医院
      begin
        _field:='fzph,ksrq,ksrq kssj,min_jlsj zxsj,case rtrim(fzph) when '''' then xmmc+''''+yytj+''''+ypyf+'''' else xmmc end xmmc, '+
        'kdysmc,zxhsmc,tzrq ,tzrq tzsj,max_jlsj zhzxsj, '+
        'tzysmc,zhhsmc,case rtrim(fzph) when '''' then '''' else replace(yytj+ypyf,''min'',''min'') end ypyf' ;

        if sfxse <> '新生儿' then
        begin
        qry_cx_sx.SQL.text := 'select id,'+_field+' from zybl_cqyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where zyh='
        + '''' + v_zyh + '''' +
        ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' +
        '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2';
        end
        else
        begin
        qry_cx_sx.SQL.text := 'select id,'+_field+' from zybl_cqyz_dy_ls  where sfdy=1 and id in (select id from zybl_zyyz where zyh='
        + '''' + v_zyh + '''' +' and rtrim(czys)='+''''+xsexh+''''+
        ' and isnull(jcff,'''')=''新生儿'') and  zyh='
        + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2';
        end;
      end else
      begin
        if sfxse <> '新生儿' then
        qry_cx_sx.SQL.text := 'select id,'+_field+',isnull(bxdqtbz,0) bxdqtbz  from zybl_cqyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where zyh='
        + '''' + v_zyh + '''' +
        ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' +
        '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'
        else
        qry_cx_sx.SQL.text := 'select id,'+_field+',isnull(bxdqtbz,0) bxdqtbz from zybl_cqyz_dy_ls  where sfdy=1 and id in (select id from zybl_zyyz where zyh='
        + '''' + v_zyh + '''' +' and rtrim(czys)='+''''+xsexh+''''+
        ' and isnull(jcff,'''')=''新生儿'') and  zyh='
        + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2';
      end;
//      if sfxse <> '新生儿' then
//      qry_cx_sx.SQL.text := 'select id,'+_field+' from zybl_cqyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where zyh='
//      + '''' + v_zyh + '''' +
//      ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' +
//      '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'
//      else
//      qry_cx_sx.SQL.text := 'select id,'+_field+' from zybl_cqyz_dy_ls  where sfdy=1 and id in (select id from zybl_zyyz where zyh='
//      + '''' + v_zyh + '''' +' and rtrim(czys)='+''''+xsexh+''''+
//      ' and isnull(jcff,'''')=''新生儿'') and  zyh='
//      + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2';
    end;
  end;
  //续打标志
  qry_xgbz.Close;
  qry_xgbz.SQL.Text :='';
  qry_xgbz.SQL.Text := 'UPDATE a SET a.bxdqtbz=1  FROM zybl_cqyz_dy_ls a,zybl_zyyz b  '
                          +'WHERE b.zyh='''+v_zyh+''' and a.zyh=b.zyh AND a.id=b.id '
                          +'AND a.sx=''长期'' '
                          +'AND ISNULL(a.tzrq,'''')<>'''' AND ISNULL(b.bxdqtbz,0)=1';
  qry_xgbz.ExecSQL;
    //停止医嘱选择只打印停止人 日期等信息
   if tzxxdybz=1 then //默认情况tzxxdybz 为null   执行过后为0
   begin
     qry_cx_sx.SQL.text:=sqlyjcl(qry_cx_sx.SQL.text);  //对sql语句进行处理以后重新赋值给该控件
   end;
  qry_cx_sx.Open;
  if (pub_yydm='0271') and (frm_yzinput.ComboBox1.Text='未停止医嘱') then
  begin
    qry_cx_sx.Filtered:=false;
    qry_cx_sx.Filter:='(tzysmc='''') or (tzrq ='''')  or (tzrq =null) or (tzysmc=null) ';
    qry_cx_sx.Filtered:=True;
  end;
  
  if (pub_yydm='0015') or (pub_yydm='0004') then
    _field1 := 'fzph,ksrq,ksrq kssj,ksrq zxsj,xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,ksrq zhzxsj,tzysmc,zhhsmc,ypyf,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm'
  else
  if pub_yydm = '0244' then
  begin
    _field1 := 'fzph,ksrq,ksrq kssj,ksrq zxsj,xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,ksrq zhzxsj,tzysmc,zhhsmc,ypyf,'''' hdczy,'''' hdczy_js';
  end
  else
  if   pub_yydm='0261'  then
  begin
     _field1 := 'fzph,ksrq,ksrq kssj,ksrq zxsj,xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,ksrq zhzxsj,tzysmc,zhhsmc,ypyf';
  end
  else
    _field1 := 'fzph,ksrq,ksrq kssj,ksrq zxsj,xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,ksrq zhzxsj,tzysmc,zhhsmc,ypyf';
//  if cqyzdbb = nil then
//   begin
    cqyzdbb := TCusBb.Create;
    cqyzdbb.GetBbByDM( cqyzdbb,sccqyzdDm );
//
//  end;
  GridppReport1.LoadFromStr( cqyzdbb.nr );
  try
      //1、处理数据
  qry_yzmx_temp := TADOQuery.Create( nil );
  qry_yzmx_temp.close;
  qry_yzmx_temp.Connection := DM_data.ado_mydata;
  qry_yzmx_temp.LockType := ltBatchOptimistic;
  if pub_yydm=HN_SYRMYY then
  begin
      qry_yzmx_temp.SQL.Text := 'select a.id,a.' + _field1 + ',b.mc kdksmc,c.brxm,c.bch,c.brnl,c.tmh,c.brxb from zybl_cqyz_dy_ls a ,zysf_zydj c, sys_ksdm b '+
      ' where a.zyh=c.zyh and a.kdks=b.dm  and 1=2';
  end else
  begin
    if pub_dzqmsfqybz then //电子签名判断
    begin
      qry_yzmx_temp.SQL.Text := 'select a.id,' + _field1 + ',b.qmtp as kdysmcqmtp ,b.qmtp as zxhsmcqmtp, b.qmtp as tzysmcqmtp ,b.qmtp as zhhsmcqmtp,b.qmtp as shryqmtp'+
      ' from zybl_cqyz_dy_ls a,sys_czy b  where a.kdysmc=b.mc and  1=2';
    end else
    begin
      qry_yzmx_temp.SQL.Text := 'select id,' + _field1 + ' from zybl_cqyz_dy_ls where 1=2';
    end;

  end;

  qry_yzmx_temp.Open;
  //----------------------------------------------------------------------------
  //--------------calmhawk----------续打处理-------------------------
  if b_count > 1 then
  begin

    qry_cx_sx.First;
    _fieldList := TStringList.Create;
    _fieldList.Delimiter := ',';
    _fieldList.DelimitedText := _field1;

    for I := 0 to b_count do
    begin
      qry_yzmx_temp.Insert;
      for j := 0 to qry_cx_sx.FieldCount - 1 do
      begin
        if ( qry_yzmx_temp.Fields.FindField(qry_cx_sx.Fields[j].FieldName) <> nil) and  (qry_cx_sx.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value <> null ) then
        begin
          qry_yzmx_temp.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value := qry_cx_sx.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value;
        end;
//        qry_yzmx_temp.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value := qry_cx_sx.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value;
      end;
      qry_yzmx_temp.Post;
    end;

  end;
    GridppReport1.DataSet := nil;
    GridppReport1.DataSet := qry_yzmx_temp;
//    showmessage(IntToStr(qry_yzmx_temp.RecordCount));
//    GridppReport1.PrintPreview(false);

  //-----------------------------------------------------------------
  //找已打印页数
   //GridppReport1.PrintPreview(false);

  //从最后一页开始打印？
  //PrintRangeType为grprtSelectionPages时才有效。

  //GridppReport1.Printer.SelectionPrintPages := '';

  //GridppReport1.Printer.
    _b_page := strtoint(edt_4.Text);
  //----------------------------------------------------------------------------
    GridppReport1.DataSet := nil;
    if Assigned(GridppReport1.ParameterByName( '病区' )) then
    GridppReport1.ParameterByName( '病区' ).Value := pub_bqmc;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='select * from sys_kscwsz where rtrim(bcbh)='+''''+v_bch+
    ''''+' and bqdm='+''''+pub_bqdm+'''';
    DM_data.qry_pub.Open;
      if Assigned(GridppReport1.ParameterByName( '床号' )) then
    GridppReport1.ParameterByName( '床号' ).Value := DM_data.qry_pub.FieldByName('yybch').asstring;
    //GridppReport1.ParameterByName( '床号' ).Value := v_bch;
      if Assigned(GridppReport1.ParameterByName( '姓名' )) then
    GridppReport1.ParameterByName( '姓名' ).Value := v_brxm;
      if Assigned(GridppReport1.ParameterByName( '性别' )) then
    GridppReport1.ParameterByName( '性别' ).Value := v_brxb;
      if Assigned(GridppReport1.ParameterByName( '年龄' )) then
    GridppReport1.ParameterByName( '年龄' ).Value := v_brnl;
      if Assigned(GridppReport1.ParameterByName( '住院号' )) then
      begin
      if (pub_yydm = '0263') or (pub_yydm = '0264') then
       begin
          GridppReport1.ParameterByName( '住院号' ).Value := v_bah;
       end else
       begin
          GridppReport1.ParameterByName( '住院号' ).Value := v_tmh;
       end;
      end;
      if Assigned(GridppReport1.ParameterByName( '开始行' )) then
    GridppReport1.ParameterByName( '开始行' ).Value := b_count;
      if Assigned(GridppReport1.ParameterByName( '开始页' )) then
    GridppReport1.ParameterByName( '开始页' ).Value := _b_page;


        //停止医嘱选择只打印停止人 日期等信息
   if tzxxdybz=1 then //传入参数 局部打印 进行判断区分
   begin
      if Assigned(GridppReport1.ParameterByName( '局部打印' )) then
        GridppReport1.ParameterByName( '局部打印' ).Value := 1;   //停止续打给1
   end else
   begin
      if Assigned(GridppReport1.ParameterByName( '局部打印' )) then
        GridppReport1.ParameterByName( '局部打印' ).Value := 0;   //非停止续打给0
   end;

//    if Assigned(GridppReport1.ControlByName('PictureBox1')) then
//    begin
//     if GridppReport1.DetailGrid.Recordset.Fields.IndexByName('qmtp') < 0 then
//     begin
//        GridppReport1.DetailGrid.Recordset.AddField( 'qmtp', grptString );
//     end;
//       GridppReport1.ControlByName('PictureBox1').AsPictureBox.DataField:= 'qmtp';
//    end;
    GridppReport1.DataSet := qry_cx_sx;
//     showmessage(IntToStr(qry_cx_sx.RecordCount));
  except on e: Exception do
      ShowMessage( e.Message );
  end;
  res := frm_func.SetCReportXtcs( GridppReport1 );
  if res <> '1' then
  begin
    ShowMessage( res );
  end
  else
  begin
    GridppReport1.PrintPreview( False );

  end;


end;



function Tfrm_cqyzxzdy.sqlyjcl(sqlyj:String):string;
var sql_jq,cxyj:string;
begin
  cxyj:=copy(sqlyj,0,pos('from',sqlyj)-1)+',hszxdy,ystzdy,hstzdy ';
  sqlyj:=cxyj+copy(sqlyj,pos('from',sqlyj),Length(sqlyj));//替换查询语句总共多少行；
  Result :=sqlyj;
end;

procedure Tfrm_cqyzxzdy.pro_print_cqyzzxd_sc;
begin
  qry_cx.first;
  QRL_yymc_cq.Caption := pub_yymc + '长期医嘱记录单';
  if sfxse <> '新生儿' then
  begin
    QRL_brxm_cq.Caption := '姓名:' + Trim( v_brxm );
    QRL_tmh_cq.Caption := '住院号:' + Trim( v_tmh );
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( v_bch ) + '''';
    DM_data.qry_pub.Open;
    QRL_bch_cq.Caption := '床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
    xb_cq.Caption := '性别:' + trim( v_brxb );
    nl_cq.Caption := '年龄:' + trim( v_brnl );
  end
  else
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select brxm,brxb,datediff(day,csrq,getdate()) nl from zysf_zydj_xse where zyh=' + '''' + v_zyh + ''''+
    ' and brnl='+xsexh;
    DM_data.qry_pub.Open;
    QRL_brxm_cq.Caption := '姓名:' + Trim( DM_data.qry_pub.FieldByName( 'brxm' ).asstring );
    QRL_tmh_cq.Caption := '住院号:' + Trim( v_tmh );
    xb_cq.Caption := '性别:' + trim( DM_data.qry_pub.FieldByName( 'brxb' ).asstring );
    nl_cq.Caption := '年龄:' + trim( v_brnl );
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( v_bch ) + '''';
    DM_data.qry_pub.Open;
    QRL_bch_cq.Caption := '床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
  end;
  if sfxse<>'新生儿' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
    DM_data.qry_pub.ExecSQL;
  end
  else
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
    DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,xmmc,ypyf,yytj,tzrq,tzysmc,'+
                            'zhhsmc_sqm,gg,kdrq,sl,dw,fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2 from #lsb';
  DM_data.qry_pub.ExecSQL;
  zd_cq.Caption := '病区:' + pub_bqmc;
  QRL_dysj_cq.Caption := '                            ';
  sj1.caption := '日期' + ''#13'' + '时间';
  sj2.caption := '执行' + ''#13'' + '时间';
  sj3.caption := '日期' + ''#13'' + '时间';
  sj4.caption := '执行' + ''#13'' + '时间';
  qry_cx.Filtered := false;
  qry_cx.Filter := 'sfdy=1';
  qry_cx.Filtered := True;
  QuickRep1.Prepare;
  paper_size := 0;
  //QRL_ys_cq.Caption := '共' + IntToStr( QuickRep1.Printer.PageCount ) + '页';
  QRL_ys_cq.Caption :='';
  QuickRep1.preview;
  qry_cx.Filtered := False;
end;

procedure Tfrm_cqyzxzdy.FormShow( Sender: TObject );
var
  zgysdm, zgysxm: string;
  dzqmzd:string;
  field1,px:string;
begin
  if pub_yydm='0244' then       //龙江特殊处理医嘱单
  begin
    px:=',fzph asc,kdrq desc';
  end
  else
  begin
    px:='';
  end;
  if (pub_yydm='0003') or (pub_yydm='0013')  then
  begin
    if sfxse<>'新生儿' then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
        ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
      DM_data.qry_pub.ExecSQL;
    end
    else
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
        ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
      DM_data.qry_pub.ExecSQL;
    end;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select distinct * from zybl_zyyz_xdhs where zyh='+''''+
                      v_zyh+''''+' and sx=0 order by hs desc';
  DM_data.qry_pub.open;
  ComboBox1.Items.Clear;
  DM_data.qry_pub.First;
  while not  DM_data.qry_pub.Eof do
  begin
    ComboBox1.Items.Add(DM_data.qry_pub.FieldByName('hs').asstring);
    DM_data.qry_pub.Next;
  end;
  ComboBox1.ItemIndex:=0;
  sp_zxjl_cq_dy.Close;
  sp_zxjl_cq_dy.Parameters.Refresh;
  sp_zxjl_cq_dy.Parameters.ParamByName( '@zyh' ).Value := v_zyh;
  sp_zxjl_cq_dy.Parameters.ParamByName( '@fs' ).Value := 0;
  sp_zxjl_cq_dy.ExecProc;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where zyh=' + '''' + v_zyh + '''';
  DM_data.qry_pub.Open;
  zgysdm := DM_data.qry_pub.FieldByName( 'zgys' ).AsString;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + zgysdm + '''';
  DM_data.qry_pub.Open;
  zgysxm := DM_data.qry_pub.FieldByName( 'mc' ).AsString;
  DM_data.qry_pub.Close;
  if pub_yydm='0015' then
  begin
    dzqmzd:=',kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm ';
  end
  else
  begin
    dzqmzd:='';
  end;

  cmd_dybz.CommandText := 'update zybl_cqyz_dy_ls set dybz=1 where id in (select yzid from zybl_zyyz_dybz ) and sfdy=1 and zyh='''+v_zyh+'''';
  cmd_dybz.Execute;

  if (pub_yydm='0256') then
  begin
    field1:=' a.* ';
  end
  else
  begin

  end;
  if (pub_yydm='0272') or  (pub_yydm='0271') then //灌阳县妇幼保健院,荆门掇刀医院
  begin
     DBGridEh1.Columns[1].FieldName:='kdysmc_sqm';
     DBGridEh1.Columns[7].FieldName:='tzysmc_sqm';
    if sfxse<>'新生儿' then  //qry_cx.SQL.text := 'select * from zybl_cqyz_dy_ls where id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'') and rtrim(kdysmc) in (select mc from sys_czy where cfbz=1) and zyh=' + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'
    begin
    DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when'+
                     ' charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm,'+
                     ' isnull(a.zhhsmc,'''')+case when e.mc is null then '''' when charindex(e.mc,a.zhhsmc)<1 then char(13)+e.mc else '''' end  zhhsmc_sqm,b.zxry,'+
                     ' case when h.mc is null then '''' when charindex(h.mc,a.kdysmc)<1 then h.mc+char(13) else '''' end + isnull(a.kdysmc,'''') kdysmc_sqm,'+
                     ' isnull(a.tzysmc,'''')+case when i.mc is null then '''' when charindex(i.mc,a.tzysmc)<1 then char(13)+i.mc else '''' end tzysmc_sqm' +
                    // ' isnull(a.kdysmc,'''')+case when g.mc is null then '''' when charindex(g.mc,a.kdysmc)<1 then char(13)+g.mc else '''' end kdysmc_sqm '+
                     ' into #lsb '+
                     ' from zybl_cqyz_dy_ls a'+
                     ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.min_jlsj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                     ' left join zybl_zyyz_yzzxqd_sqm c on a.id=c.yzid and a.max_jlsj=substring(convert(varchar(20),c.zxsj,120),3,14)'+
                     ' left join sys_czy d on b.zxry=d.dm'+
                     ' left join sys_czy e on c.zxry=e.dm'+
                     ' left join zybl_zyyz_yzys_sqm f on a.id=f.yzid and a.min_jlsj=substring(convert(varchar(20),f.zxsj,120),3,14)'+
                     ' left join zybl_zyyz_yzys_sqm g on a.id=g.yzid and a.max_jlsj=substring(convert(varchar(20),g.zxsj,120),3,14)'+
                     ' left join sys_czy h on f.zxry=h.dm ' +
                     ' left join sys_czy i on g.zxry=i.dm ' +
                     ' where a.id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')  and a.zyh=' + '''' + v_zyh + '''' + ' and a.sx=''长期''' + ' order by xh2';

    end
    else
    DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when'+
                     ' charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm,'+
                     ' isnull(a.zhhsmc,'''')+case when e.mc is null then '''' when charindex(e.mc,a.zhhsmc)<1 then char(13)+e.mc else '''' end  zhhsmc_sqm,b.zxry,'+
                     ' case when h.mc is null then '''' when charindex(h.mc,a.kdysmc)<1 then h.mc+char(13) else '''' end +isnull(a.kdysmc,'''') kdysmc_sqm,'+
                     ' isnull(a.tzysmc,'''')+case when i.mc is null then '''' when charindex(i.mc,a.tzysmc)<1 then char(13)+i.mc else '''' end tzysmc_sqm' +
                     ' into #lsb '+
                     ' from zybl_cqyz_dy_ls a'+
                     ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.min_jlsj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                     ' left join zybl_zyyz_yzzxqd_sqm c on a.id=c.yzid and a.max_jlsj=substring(convert(varchar(20),c.zxsj,120),3,14)'+
                     ' left join sys_czy d on b.zxry=d.dm'+
                     ' left join sys_czy e on c.zxry=e.dm'+
                     ' left join zybl_zyyz_yzys_sqm f on a.id=f.yzid and a.min_jlsj=substring(convert(varchar(20),f.zxsj,120),3,14)'+
                     ' left join zybl_zyyz_yzys_sqm g on a.id=g.yzid and a.max_jlsj=substring(convert(varchar(20),g.zxsj,120),3,14)'+
                     ' left join sys_czy h on f.zxry=h.dm ' +
                     ' left join sys_czy i on g.zxry=i.dm ' +
                     ' where a.id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+
                     ' and isnull(jcff,'''')=''新生儿'' and rtrim(czys)='+''''+xsexh+''''+')    and a.zyh=' +
                      '''' + v_zyh + '''' + ' and a.sx=''长期''' + ' order by xh2';
  end else  ///////////////////////////////////////////////////////////////////////
  begin
    if sfxse<>'新生儿' then  //qry_cx.SQL.text := 'select * from zybl_cqyz_dy_ls where id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'') and rtrim(kdysmc) in (select mc from sys_czy where cfbz=1) and zyh=' + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'
    begin
    DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when'+
                     ' charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm,isnull(a.zhhsmc,'''')+case when e.mc is null then '''' when charindex(e.mc,a.zhhsmc)<1 then char(13)+e.mc else '''' end  zhhsmc_sqm,b.zxry'+
                     ' into #lsb '+
                     ' from zybl_cqyz_dy_ls a'+
                     ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.min_jlsj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                     ' left join zybl_zyyz_yzzxqd_sqm c on a.id=c.yzid and a.max_jlsj=substring(convert(varchar(20),c.zxsj,120),3,14)'+
                     ' left join sys_czy d on b.zxry=d.dm'+
                     ' left join sys_czy e on c.zxry=e.dm'+
                     ' where a.id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')  and a.zyh=' + '''' + v_zyh + '''' + ' and a.sx=''长期''' + ' order by xh2';

    end
    else
    DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when'+
                     ' charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm,isnull(a.zhhsmc,'''')+case when e.mc is null then '''' when charindex(e.mc,a.zhhsmc)<1 then char(13)+e.mc else '''' end  zhhsmc_sqm,b.zxry'+
                     ' into #lsb '+
                     ' from zybl_cqyz_dy_ls a'+
                     ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.min_jlsj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                     ' left join zybl_zyyz_yzzxqd_sqm c on a.id=c.yzid and a.max_jlsj=substring(convert(varchar(20),c.zxsj,120),3,14)'+
                     ' left join sys_czy d on b.zxry=d.dm'+
                     ' left join sys_czy e on c.zxry=e.dm'+
                     ' where a.id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+
                     ' and isnull(jcff,'''')=''新生儿'' and rtrim(czys)='+''''+xsexh+''''+')    and a.zyh=' +
                      '''' + v_zyh + '''' + ' and a.sx=''长期''' + ' order by xh2';

  end;
  DM_data.qry_pub.ExecSQL;


  if pub_yydm='0257' then
  begin
    DM_data.qry_pub.SQL.text := 'select b.kdys,c.ysbz,a.*  into #lsb1 from #lsb a '+
                                'join zybl_zyyz b on b.id=a.id  ' +
                                'join sys_czy c on b.kdys=c.dm order by xh2 ';
    DM_data.qry_pub.ExecSQL;
    DM_data.qry_pub.SQL.text := 'delete #lsb1 where ysbz=''0''';
    DM_data.qry_pub.ExecSQL;
    DM_data.qry_pub.Close;
    qry_cx.Close;
    qry_cx.SQL.text:='select * from #lsb1 order by xh2'+px;
    qry_cx.Open;
  end  
  else if (pub_yydm='0271') and (dryzQueryStr = '未停止医嘱') then
  begin
    qry_cx.Close;
    qry_cx.SQL.text:='select * from #lsb a  join zybl_zyyz b on b.id=a.id where b.tzbz=0 order by xh2'+px;
    qry_cx.Open;
  end else
  begin
    qry_cx.Close;
    qry_cx.SQL.text:='select * from #lsb order by xh2'+px;
    qry_cx.Open;
  end;



  DBGridEh1.ReadOnly:=true;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
//  if DM_data.qry_pub.FieldByName('yzdyfs').AsBoolean=true then //南郑县人民医院 , 两当县人民医院
//  begin
  lbl4.Visible:=True;
  edt_4.Visible:=True;
  Label2.Visible:=True;
  lbl2.Visible:=True;
  ComboBox1.Visible:=True;
  lbl3.Visible:=True;
  btn4.Visible:=True;
//  end
//  else
//  begin
//  lbl4.Visible:=false;
//  edt_4.Visible:=false;
//  Label2.Visible:=false;
//  lbl2.Visible:=false;
//  ComboBox1.Visible:=false;
//  lbl3.Visible:=false;
//  btn4.Visible:=false;
//  end;
end;

procedure Tfrm_cqyzxzdy.GridppReport1PrintEnd(Sender: TObject);
begin
  qry_dybz.SQL.Text := 'select *from zybl_zyyz_dybz where zyh='''+v_zyh+'''';
  qry_dybz.Open;

  qry_cx_sx.First;
  while not qry_cx_sx.Eof do
  begin
    if qry_cx_sx.FindField('id') <> nil then
    begin
      if not qry_dybz.Locate('yzid',qry_cx_sx.FieldByName('id').AsString,[]) then
      begin
        qry_dybz.Insert;
        qry_dybz.FieldByName('yzid').AsString := qry_cx_sx.FieldByName('id').AsString;
        qry_dybz.FieldByName('sx').AsString := '长期';
        qry_dybz.FieldByName('zyh').AsString := v_zyh;
        qry_dybz.Post;
      end;
    end;
    qry_cx_sx.Next;
  end;

   if dykg=1 then
   begin
    cmd_dybz.CommandText := 'UPDATE a SET a.dybz=1,a.hszxdy=b.hszxdy,a.ystzdy=b.ystzdy,a.hstzdy=b.hstzdy from '+
                            'zybl_cqyz_dy_ls a,(SELECT id,zxhsmc,tzysmc,zhhsmc, '+
                            'CASE WHEN len(zxhsmc)>0 THEN 1 ELSE 0 END hszxdy,  '+
                            'CASE WHEN len(tzysmc)>0 THEN 1 ELSE 0 END ystzdy,  '+
                            'CASE WHEN len(zhhsmc)>0 THEN 1 ELSE 0  END hstzdy  '+
                            'FROM zybl_cqyz_dy_ls where id in (select yzid from zybl_zyyz_dybz )  and sfdy=1 AND zyh='''+v_zyh+''') b  '+
                            'WHERE a.id=b.id AND a.id IN (select yzid from zybl_zyyz_dybz ) and a.sfdy=1 and a.zyh='''+v_zyh+'''';

   end else
   begin
    cmd_dybz.CommandText := 'update zybl_cqyz_dy_ls set dybz=1 where id in (select yzid from zybl_zyyz_dybz ) and sfdy=1 and zyh='''+v_zyh+'''';

   end;
    cmd_dybz.Execute;

    //更新标志
    qry_xgbz.Close;
    qry_xgbz.sql.text := '';
    qry_xgbz.sql.text := 'update zybl_cqyz_dy_ls set bxdqtbz=1 where id in (select yzid from zybl_zyyz_dybz ) and sfdy=1 and zyh='''+v_zyh+''' '
                        +'and ISNULL(tzrq,'''')<>'''' ';
    qry_xgbz.ExecSQL;

    qry_xgbz.Close;
    qry_xgbz.sql.text := '';
    qry_xgbz.sql.text := 'UPDATE b SET b.bxdqtbz=1 FROM zybl_cqyz_dy_ls a,zybl_zyyz b  '
                            +'WHERE b.zyh='''+v_zyh+''' and a.zyh=b.zyh AND a.id=b.id '
                            +'AND a.sx=''长期'' '
                            +'AND ISNULL(a.tzrq,'''')<>'''' AND ISNULL(a.bxdqtbz,0)=1';

    qry_xgbz.ExecSQL;
   if dykg=1 then
   begin
    qry_xgbz.Close;
    qry_xgbz.sql.text := '';
    qry_xgbz.sql.text := 'UPDATE b SET b.hszxdy=a.hszxdy,b.ystzdy=a.ystzdy,b.hstzdy=a.hstzdy  FROM zybl_cqyz_dy_ls a,zybl_zyyz b  '
                      +'WHERE b.zyh='''+v_zyh+''' and a.zyh=b.zyh AND a.id=b.id '
                      +'AND a.sx=''长期'' ';
    qry_xgbz.ExecSQL;
   end;


    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb'') is not null drop table #lsb';
    DM_data.qry_pub.ExecSQL;
    //修改打印长期医嘱后 报错 已经存在#lsb1 的问题
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb1'') is not null drop table #lsb1';
    DM_data.qry_pub.ExecSQL;

    Self.FormShow(Self);
end;

procedure Tfrm_cqyzxzdy.kxExecute(Sender: TObject);
begin
DBGridEh1.ReadOnly:=false;
end;

procedure Tfrm_cqyzxzdy.QRSubDetail1NeedData( Sender: TObject;
  var MoreData: Boolean );
var
  I, hei: integer;
begin
  MoreData := True;
  i := 1;
  if qry_cx.Eof then
    MoreData := False;
  ksrq.Caption := '';
  kdysmc.Caption := '';
  zxhsmc.Caption := '';
  xmmc.Caption := '';
  tzrq.Caption := '';
  tzysmc.Caption := '';
  zhhsmc.Caption := '';
  zxzxsj.caption := '';
  zhzxsj.caption := '';

  if not qry_cx.eof then
  begin
    ksrq.Caption := qry_cx.FieldByName( 'ksrq' ).Asstring;
    kdysmc.Caption := qry_cx.FieldByName( 'kdysmc' ).Asstring;
    zxhsmc.Caption := qry_cx.FieldByName( 'zxhsmc_sqm' ).Asstring;
    if ( ( length( qry_cx.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200 ) <= 2 then
      paper_size := paper_size + ( ( length( qry_cx.FieldByName( 'min_jlsj' ).Asstring ) * 8 ) div 46 )
    else
      paper_size := paper_size + ( ( length( qry_cx.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200 );
    if qry_cx.FieldByName( 'fzph' ).asstring <> '' then
    begin
      I := ( length( qry_cx.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
      qrgrimage1.enabled := true;
      qrgrimage1.Top := 1;
      qrgrimage1.left := ypyf.left - 20;
      qrgrimage1.height := i * ypyf.height;
      //ypyf.top := i * ypyf.height div 2;
      ypyf.top := 1;
      ypyf.Caption := trim( qry_cx.FieldByName( 'yytj' ).asstring ) + '  ' + trim( qry_cx.FieldByName( 'ypyf' ).asstring );
      xmmc.Width := 200;
      xmmc.caption := qry_cx.FieldByName( 'xmmc' ).Asstring;
    end
    else
    begin
      qrgrimage1.enabled := false;
      xmmc.Width := 257;
      ypyf.Caption := '';
      xmmc.caption := qry_cx.FieldByName( 'xmmc' ).Asstring + '  ' + trim( qry_cx.FieldByName( 'yytj' ).asstring )
        + '  ' + trim( qry_cx.FieldByName( 'ypyf' ).asstring );
    end;

//    if (Pos('术后',qry_cx.FieldByName( 'xmmc' ).Asstring)>0) or (Pos('转科',qry_cx.FieldByName( 'xmmc' ).Asstring)>0) or (Pos('分娩',qry_cx.FieldByName( 'xmmc' ).Asstring)>0) then
//    begin
//    xmmc.Color:=clRed;
//    end;
    tzrq.Caption := qry_cx.FieldByName( 'tzrq' ).Asstring;
    tzysmc.Caption := qry_cx.FieldByName( 'tzysmc' ).Asstring;
    zhhsmc.Caption := qry_cx.FieldByName( 'zhhsmc_sqm' ).Asstring;
    zxzxsj.Caption := qry_cx.FieldByName( 'min_jlsj' ).Asstring;
    zhzxsj.Caption := qry_cx.FieldByName( 'max_jlsj' ).Asstring;

    if (Pos('术后医嘱',qry_cx.FieldByName( 'xmmc' ).Asstring)>0) or (Pos('转入医嘱',qry_cx.FieldByName( 'xmmc' ).Asstring)>0)
        or (Pos('产后医嘱',qry_cx.FieldByName( 'xmmc' ).Asstring)>0)
        or (Pos('重整医嘱',qry_cx.FieldByName( 'xmmc' ).Asstring)>0)then
    begin
      QRShape4.Enabled:=True;
      ksrq.Enabled:=false;
      kdysmc.Enabled:=false;
      zxhsmc.Enabled:=false;
      zxzxsj.Enabled:=false;
      tzrq.Enabled:=false;
      tzysmc.Enabled:=false;
      zhhsmc.Enabled:=false;
      zhzxsj.Enabled:=false;
    end
    else
    begin
      QRShape4.Enabled:=false;
      ksrq.Enabled:=true;
      kdysmc.Enabled:=true;
      zxhsmc.Enabled:=true;
      zxzxsj.Enabled:=true;
      tzrq.Enabled:=true;
      tzysmc.Enabled:=true;
      zhhsmc.Enabled:=true;
      zhzxsj.Enabled:=true;
    end;
    qry_cx.Next;

    if ksrq.Height > xmmc.Height then
      hei := ksrq.Height
    else
      hei := xmmc.Height;


    QRsh1.Height := hei + 45;
    QRShape16.Height := hei + 45;
    QRShape19.Height := hei + 45;
    QRShape18.Height := hei + 45;
    QRShape20.Height := hei + 45;
    QRShape21.Height := hei + 45;
    QRShape22.Height := hei + 45;
    QRShape23.Height := hei + 45;
    QRShape24.Height := hei + 45;
    QRShape17.Height := hei + 45;
  end;
end;

//全州
procedure Tfrm_cqyzxzdy.pro_print_cqyzzxd_qzdy( b_count: Integer );
var  res, _field, _field1: string;
  cqyzdbb: TCusBb;
  I: Integer;
  qry_yzmx_temp: TADOQuery; //计算用临时数据集
  _fieldList: tstrings;
  j, _b_page: Integer; //_b_page 开始页
  hs,vRecordNum:Integer;
  px:string;
begin
    px:='';
  vRecordNum := 0;
  qry_cx.Filtered:=False;
  qry_cx.Filter:=' sfdy=1';
  qry_cx.Filtered:=true;
  hs:=qry_cx.RecordCount+1;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_xdhs values('''+v_zyh+''','+
                            IntToStr(hs)+',0'+')';
  DM_data.qry_pub.ExecSQL;
  qry_cx.Filtered:=False;

  if sfxse<>'新生儿' then
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_cqyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;

  DM_data.qry_pub.SQL.Text:= 'insert into zybl_cqyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,xmmc,ypyf,yytj,tzrq,tzysmc,zhhsmc,gg,kdrq,sl,dw,'
                            +'fzph,min_jlsj,max_jlsj,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm,tzysdzqm,tzhsdzqm,kdks,dybz,srypzbsl,mrypzbsl)'
                           +' select a.zyh,a.sx,a.id,a.ksrq,a.kdysmc,a.zxhsmc_sqm,a.xmmc,a.ypyf,a.yytj,a.tzrq,a.tzysmc,'
                          +'a.zhhsmc_sqm,a.gg,a.kdrq,a.sl,a.dw,a.fzph,a.min_jlsj,a.max_jlsj,a.sfdy,a.xh1,a.xh2,a.kdysdzqm,a.zxhsdzqm,a.tzysdzqm,a.tzhsdzqm,a.kdks,1,b.srsl,b.mrsl'+' from #lsb1 a join '
                          +'(select  id,fzph,srsl=stuff((select convert(varchar(10),srsl)+CHAR(10) from zybl_zyyz  where fzph=T.fzph and fzph<>''''  for xml path('''')), 1,0, ''''), '
                          +'mrsl=stuff((select convert(varchar(10),mrsl)+CHAR(10) from zybl_zyyz  where fzph =T.fzph and fzph<>''''  for xml path('''')), 1, 0,'''')  '
                          +' from zybl_zyyz T where fzph<>'''' union select ID,fzph,convert(varchar(10),srsl),convert(varchar(10),mrsl) from  zybl_zyyz where fzph=''''  ) b on a.id=b.id  ';

  DM_data.qry_pub.ExecSQL;
  qry_cx_sx.Close;
  _field := edt_1.Text;

  if sfxse <> '新生儿' then
    qry_cx_sx.SQL.text := 'select id,'+_field+' from zybl_cqyz_dy_ls  where sfdy=1 and id in (select id from zybl_zyyz where zyh='
    + '''' + v_zyh + '''' +
    ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' +
     '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2'
  else
    qry_cx_sx.SQL.text := 'select id,'+_field+' from zybl_cqyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where zyh='
    + '''' + v_zyh + '''' +' and rtrim(czys)='+''''+xsexh+''''+
    ' and isnull(jcff,'''')=''新生儿'') and  zyh='
    + '''' + v_zyh + '''' + ' and sx=''长期''' + ' order by xh2';

  qry_cx_sx.Open;
    _field1 := 'srypzbsl,mrypzbsl,fzph,ksrq,ksrq kssj,ksrq zxsj,xmmc,kdysmc,zxhsmc,tzrq ,tzrq tzsj,ksrq zhzxsj,tzysmc,zhhsmc,ypyf';
    cqyzdbb := TCusBb.Create;
    cqyzdbb.GetBbByDM( cqyzdbb,sccqyzdDm );
  GridppReport1.LoadFromStr( cqyzdbb.nr );
  try
      //1、处理数据
  qry_yzmx_temp := TADOQuery.Create( nil );
  qry_yzmx_temp.close;
  qry_yzmx_temp.Connection := DM_data.ado_mydata;
  qry_yzmx_temp.LockType := ltBatchOptimistic;
  if pub_yydm=HN_SYRMYY then
  begin
      qry_yzmx_temp.SQL.Text := 'select a.id,a.' + _field1 + ',b.mc kdksmc,c.brxm,c.bch,c.brnl,c.tmh,c.brxb from zybl_cqyz_dy_ls a ,zysf_zydj c, sys_ksdm b '+
      ' where a.zyh=c.zyh and a.kdks=b.dm  and 1=2';
  end else
  begin
    qry_yzmx_temp.SQL.Text := 'select id,' + _field1 + ' from zybl_cqyz_dy_ls where 1=2';
  end;

  qry_yzmx_temp.Open;
  //----------------------------------------------------------------------------
  //--------------calmhawk----------续打处理-------------------------
    if b_count >1 then
    begin

      qry_cx_sx.First;
      _fieldList := TStringList.Create;
      _fieldList.Delimiter := ',';
      _fieldList.DelimitedText := _field1;

      for I := 0 to b_count do
      begin
        qry_yzmx_temp.Insert;
        for j := 0 to qry_cx_sx.FieldCount - 1 do
        begin
          if ( qry_yzmx_temp.Fields.FindField(qry_cx_sx.Fields[j].FieldName) <> nil) and  (qry_cx_sx.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value <> null ) then
          begin
            qry_yzmx_temp.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value := qry_cx_sx.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value;
          end;
  //        qry_yzmx_temp.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value := qry_cx_sx.FieldByName( qry_cx_sx.Fields[j].FieldName ).Value;
        end;
        qry_yzmx_temp.Post;
      end;

    end;
    GridppReport1.DataSet := nil;
    GridppReport1.DataSet := qry_yzmx_temp;

//    GridppReport1.PrintPreview(false);

  //-----------------------------------------------------------------
  //找已打印页数
   //GridppReport1.PrintPreview(false);

  //从最后一页开始打印？
  //PrintRangeType为grprtSelectionPages时才有效。

  //GridppReport1.Printer.SelectionPrintPages := '';

  //GridppReport1.Printer.
    _b_page := strtoint(edt_4.Text);
  //----------------------------------------------------------------------------
    GridppReport1.DataSet := nil;
    GridppReport1.ParameterByName( '病区' ).Value := pub_bqmc;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='select * from sys_kscwsz where rtrim(bcbh)='+''''+v_bch+
    ''''+' and bqdm='+''''+pub_bqdm+'''';
    DM_data.qry_pub.Open;
    GridppReport1.ParameterByName( '床号' ).Value := DM_data.qry_pub.FieldByName('yybch').asstring;
    //GridppReport1.ParameterByName( '床号' ).Value := v_bch;
    GridppReport1.ParameterByName( '姓名' ).Value := v_brxm;
    GridppReport1.ParameterByName( '性别' ).Value := v_brxb;
    GridppReport1.ParameterByName( '年龄' ).Value := v_brnl;
    GridppReport1.ParameterByName( '住院号' ).Value := v_tmh;
    GridppReport1.ParameterByName( '开始行' ).Value := b_count;
    GridppReport1.ParameterByName( '开始页' ).Value := _b_page;
    GridppReport1.DataSet :=qry_cx_sx;
  except on e: Exception do
      ShowMessage( e.Message );
  end;
  res := frm_func.SetCReportXtcs( GridppReport1 );
  if res <> '1' then
  begin
    ShowMessage( res );
  end
  else
  begin

    GridppReport1.PrintPreview( true );
  end;


end;


procedure Tfrm_cqyzxzdy.zdExecute(Sender: TObject);
begin
DBGridEh1.ReadOnly:=true;
end;

end.

