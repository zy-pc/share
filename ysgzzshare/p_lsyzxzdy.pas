unit p_lsyzxzdy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, ADODB, DB, GridsEh, DBGridEh, StdCtrls,
  p_obj, OleServer, grproLib_TLB, ActnList, DBGridEhGrouping;

type
  Tfrm_lsyzxzdy = class( TForm )
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    sp_zxjl_cq_dy: TADOStoredProc;
    ds_zxjl_cq_dy: TDataSource;
    ds_cx: TDataSource;
    qry_cx: TADOQuery;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRL_ys_ls: TQRLabel;
    QRL_dysj_ls: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    ksrq_ls: TQRLabel;
    kdys_ls: TQRLabel;
    zxryxm_ls: TQRLabel;
    zxsj_ls: TQRLabel;
    xmmc_ls: TQRLabel;
    ypyf_ls: TQRLabel;
    QRImage1: TQRImage;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    QRShape3: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRLabel13: TQRLabel;
    QRShape11: TQRShape;
    sp_cxxz: TADOStoredProc;
    GridppReport1: TGridppReport;
    qry_cx_sx: TADOQuery;
    edt_1: TEdit;
    ActionList1: TActionList;
    kx: TAction;
    zd: TAction;
    QRShape9: TQRShape;
    Button4: TButton;
    lbl4: TLabel;
    edt_4: TEdit;
    Label2: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn4: TButton;
    ComboBox1: TComboBox;
    edt_2: TEdit;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRBand2: TQRBand;
    QRShape4: TQRShape;
    QRL_yymc_ls: TQRLabel;
    QRL_brxm_ls: TQRLabel;
    QRL_tmh_ls: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRL_bch_ls: TQRLabel;
    xb_ls: TQRLabel;
    nl_ls: TQRLabel;
    zd_ls: TQRLabel;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRShape12: TQRShape;
    Button5: TButton;
    qry_dybz: TADOQuery;
    cmd_dybz: TADOCommand;
    Button6: TButton;
    Qry_lsyzxgbz: TADOQuery;
    procedure QRSubDetail2BeforePrint( Sender: TQRCustomBand;
      var PrintBand: Boolean );
    procedure QRSubDetail2NeedData( Sender: TObject; var MoreData: Boolean );
    procedure FormShow( Sender: TObject );
    procedure Button1Click( Sender: TObject );
    procedure DBGridEh1CellClick( Column: TColumnEh );
    procedure Button3Click( Sender: TObject );
    procedure Edit1KeyPress( Sender: TObject; var Key: Char );
    procedure Button2Click( Sender: TObject );
    procedure FormCreate( Sender: TObject );
    procedure kxExecute(Sender: TObject);
    procedure zdExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure pro_print_lsyz_sc;
    procedure pro_print_lsyz_sx(b_count: Integer);
    procedure pro_print_lsyz_zdy_sc(b_count: Integer);
    procedure pro_print_lsyz_qzdy(b_count:Integer);//全州
    procedure Button5Click(Sender: TObject);
    procedure GridppReport1PrintEnd(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    paper_size: integer;
    xsexh:string;
    { Public declarations }
  end;

var
  frm_lsyzxzdy: Tfrm_lsyzxzdy;
  v_zyh: string;
  v_brxm: string;
  v_bch: string;
  v_brxb: string;
  v_brnl: string;
  v_ryzd: string;
  v_tmh: string;
  v_bah:String;
  sfxse: string;
  lsyzdbb: TCusBb; //长期医嘱单报表对象
const
  cqyzdDm = '011002'; //陕西临时医嘱单报表代码
  lsyzdDm = '049804'; //四川临时医嘱单报表代码
implementation

{$R *.dfm}

uses p_dm, p_func;

procedure Tfrm_lsyzxzdy.btn4Click(Sender: TObject);
 var _count: Integer;
begin
  try
    _count := StrToInt( combobox1.Text )

  except
    ShowMessage( '开始行输入错误！' );
    Abort;

  end;
  if _count > qry_cx.RecordCount then
  begin
    ShowMessage( '开始行应该小于总行数！' );
    Abort;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzdyfs').AsBoolean=true then //南郑县人民医院 , 两当县人民医院
  begin
    pro_print_lsyz_sx( _count );
  end
  else
    pro_print_lsyz_zdy_sc( _count );
end;

procedure Tfrm_lsyzxzdy.Button1Click( Sender: TObject );
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='select * from sys_xt_kg';
DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzdyfs').AsBoolean=true then //南郑县人民医院 , 两当县人民医院
  begin
    pro_print_lsyz_sx(1);
  end
  else
  begin
   // if  (pub_yydm='0013') or (pub_yydm='0046') then   三台县人民医院采用自顶报表
    if   pub_yydm='0046' then
      pro_print_lsyz_sc
    else if pub_yydm='0257' then //全州妇幼保健院
       pro_print_lsyz_qzdy(1)
    else
    pro_print_lsyz_zdy_sc(1);
  end;
end;
//陕西

procedure Tfrm_lsyzxzdy.pro_print_lsyz_sx(b_count: Integer);
var  res, _field, _field1: string;
  cqyzdbb: TCusBb;
  I: Integer;
  qry_yzmx_temp: TADOQuery; //计算用临时数据集
  _fieldList: tstrings;
  j, _b_page: Integer; //_b_page 开始页
  hs:integer;
  vMemStream: TMemoryStream;
  vbmp:TBitmap;
  vFileName:string;
begin
  qry_cx.Filtered:=False;
  qry_cx.Filter:=' sfdy=1';
  qry_cx.Filtered:=true;
  hs:=qry_cx.RecordCount+1;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_xdhs values('''+v_zyh+''','+
                            IntToStr(hs)+',1'+')';
  DM_data.qry_pub.ExecSQL;
  qry_cx.Filtered:=False;

  if sfxse<>'新生儿' then
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2 from #lsb';
  DM_data.qry_pub.ExecSQL;
  qry_cx_sx.Close;
  _field := edt_1.Text;
  _field1:='fzph,kdrq rq,kdrq sj,xmmc,kdysmc,gysj qx,gysj,zxhsmc,ypyf';

  if sfxse <> '新生儿' then
    qry_cx_sx.SQL.text := 'select '+_field+' from zybl_lsyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where zyh=' + '''' + v_zyh + '''' + ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2'
  else
    qry_cx_sx.SQL.text := 'select '+_field+' from zybl_lsyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh=' + '''' + v_zyh + '''' + ' and isnull(jcff,'''')=''新生儿'') and  zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2';
  qry_cx_sx.Open;

//  if lsyzdbb = nil then
//  begin
    lsyzdbb := TCusBb.Create;
    lsyzdbb.GetBbByDM( lsyzdbb, cqyzdDm );

//  end;
  GridppReport1.LoadFromStr( lsyzdbb.nr );
  try
      //1、处理数据
  qry_yzmx_temp := TADOQuery.Create( nil );
  qry_yzmx_temp.close;
  qry_yzmx_temp.Connection := DM_data.ado_mydata;
  qry_yzmx_temp.LockType := ltBatchOptimistic;
  qry_yzmx_temp.SQL.Text := 'select ' + _field1 + ' from zybl_lsyz_dy_ls where 1=2';
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
    GridppReport1.ParameterByName( '姓名' ).Value := v_brxm;
    GridppReport1.ParameterByName( '性别' ).Value := v_brxb;
    GridppReport1.ParameterByName( '年龄' ).Value := v_brnl;
    GridppReport1.ParameterByName( '住院号' ).Value := v_tmh;
    if (pub_yydm='0204') then
    GridppReport1.ParameterByName( '病案号' ).Value := v_bah;
    GridppReport1.ParameterByName( '开始行' ).Value := b_count;
    GridppReport1.ParameterByName( '开始页' ).Value := _b_page;
    GridppReport1.DataSet := qry_cx_sx;
    //ShowMessage(v_bah);

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
    GridppReport1.PrintPreview( false );
  end;
end;

//四川
procedure Tfrm_lsyzxzdy.pro_print_lsyz_zdy_sc(b_count: Integer);
var  res, _field, _field1,px: string;
  cqyzdbb: TCusBb;
  I: Integer;
  qry_yzmx_temp: TADOQuery; //计算用临时数据集
  _fieldList: tstrings;
  j, _b_page: Integer; //_b_page 开始页
  hs,vRecordNum:integer;
  vMemStream: TMemoryStream;
  vbmp:TBitmap;
  vFileName:string;
begin
  if pub_yydm='0244' then       //龙江特殊处理医嘱单
  begin
    px:=',fzph asc,kdrq desc';
  end
  else
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
                            IntToStr(hs)+',1'+')';
  DM_data.qry_pub.ExecSQL;
  qry_cx.Filtered:=False;

  if sfxse<>'新生儿' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
      ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
    DM_data.qry_pub.ExecSQL;
  end
  else
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
      ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
    DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;
  if (pub_yydm='0015') or (pub_yydm='0004') then
    DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm from #lsb'
  else if (pub_yydm=HN_SYRMYY) then
    DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdks)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdks from #lsb'
  else  if (pub_yydm='0272')  or (pub_yydm='0271') then  //灌阳妇幼保健院
  begin
    if pub_dzqmsfqybz then   //电子签名判断
    begin
       DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdysdm,zxhsdm,tzrydm,sfshbz,shrydm,zxhssqmdm)'
                             +' select zyh,sx,id,ksrq,kdysmc_sqm,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdysdm,zxhsdm,tzrydm,sfshbz,shrydm,zxry from #lsb';
    end else
    begin
        DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2)'
                             +' select zyh,sx,id,ksrq,kdysmc_sqm,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2 from #lsb';
    end;
  end else
  begin
    if pub_dzqmsfqybz then   //电子签名判断
    begin
       DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdysdm,zxhsdm,tzrydm,sfshbz,shrydm,zxhssqmdm)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdysdm,zxhsdm,tzrydm,sfshbz,shrydm,zxry from #lsb';
    end else
    begin
        DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2 from #lsb';
    end;
  end;

  DM_data.qry_pub.ExecSQL;
  qry_cx_sx.Close;
  if (pub_yydm='0015') or (pub_yydm='0004') then
  begin
    _field := 'fzph,kdrq,case rtrim(fzph) when '''' then xmmc+'' ''+yytj+'' ''+ypyf else xmmc end xmmc,kdysmc,'+
              'case when left(gysj,4)=''已取消  '' then left(gysj,4) else '''' end qx,case when left(gysj,4)=''已取消  '' then'+
              ' substring(gysj,6,len(gysj)-5) else gysj end gysj,zxhsmc,rtrim(case rtrim(fzph) when '''' then '''' else yytj+ypyf end) ypyf,kdysdzqm,zxhsdzqm';
    _field1:='fzph,kdrq,xmmc,kdysmc,gysj qx,gysj,zxhsmc,ypyf,kdysdzqm,zxhsdzqm';
  end
  else if pub_yydm = '0244' then
  begin
      _field := edt_2.text + ',hdczy';
      _field1 := 'fzph,kdrq,xmmc,kdysmc,gysj qx,gysj,zxhsmc,ypyf,'''' hdczy';
      if sfxse <> '新生儿' then
        qry_cx_sx.SQL.text := 'select ' + _field + ' from zybl_lsyz_dy_ls a left join zyyz_hdyzmx on a.id=zyyzid where sfdy=1 and a.id in (select id from zybl_zyyz where zyh=' + '''' + v_zyh + '''' + ' and isnull(jcff,'''')<>''新生儿'') and  a.zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2'+px
      else
        qry_cx_sx.SQL.text := 'select ' + _field + ' from zybl_lsyz_dy_ls a left join zyyz_hdyzmx on a.id=zyyzid where sfdy=1 and a.id in (select id from zybl_zyyz where rtrim(czys)=' + '''' + xsexh + '''' + ' and zyh=' + '''' + v_zyh + '''' + ' and isnull(jcff,'''')=''新生儿'') and  a.zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2'+px;
  end
  else if pub_yydm=HN_SYRMYY then  //沙雅县人民医院0240
  begin
    _field1 := '*';
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh = '+ QuotedStr(v_zyh);
    DM_data.qry_pub.Open;
    vRecordNum := DM_data.qry_pub.RecordCount;
    if vRecordNum > 0 then
    begin
      if sfxse <> '新生儿' then
      qry_cx_sx.SQL.text :=
      ' SELECT  a.* ,e.brxm,e.brnl,e.brxb,e.bch,e.tmh,f.mc kdksmc' +
      ' FROM    zybl_lsyz_dy_ls a' +
      ' LEFT JOIN zybl_zyyz_yzzxqd_sqm b ON a.id = b.yzid AND a.gysj = SUBSTRING(CONVERT(VARCHAR(20), b.zxsj, 120),3, 14)' +
      ' LEFT JOIN sys_czy d ON b.zxry = d.dm' +
      ' LEFT JOIN zysf_zydj e ON a.zyh=e.zyh' +
      ' LEFT JOIN sys_ksdm f ON a.kdks=f.dm' +
      ' WHERE   a.id IN ( SELECT id FROM zybl_zyyz WHERE zyh = '+ QuotedStr(v_zyh)+' AND ISNULL(jcff, '''') <> ''新生儿'' )' +
      ' AND a.zyh = '+ QuotedStr(v_zyh)+' AND sx = ''临时''' + ' and sfdy=1 ' +
      ' ORDER BY xh2'
      else
      qry_cx_sx.SQL.text :=
      ' SELECT  a.* ,e.brxm,e.brnl,e.brxb,e.bch,e.tmh,f.mc kdksmc' +
      ' FROM    zybl_lsyz_dy_ls a' +
      ' LEFT JOIN zybl_zyyz_yzzxqd_sqm b ON a.id = b.yzid AND a.gysj = SUBSTRING(CONVERT(VARCHAR(20), b.zxsj, 120),3, 14)' +
      ' LEFT JOIN sys_czy d ON b.zxry = d.dm' +
      ' LEFT JOIN zysf_zydj e ON a.zyh=e.zyh' +
      ' LEFT JOIN sys_ksdm f ON a.kdks=f.dm' +
      ' WHERE   a.id IN ( SELECT id FROM zybl_zyyz WHERE zyh = '+ QuotedStr(v_zyh)+' AND ISNULL(jcff, '''') = ''新生儿'' )' +
      ' AND a.zyh = '+ QuotedStr(v_zyh)+' AND sx = ''临时''' + ' and sfdy=1 ' +
      ' ORDER BY xh2'
    end else
    begin
      if sfxse <> '新生儿' then
      qry_cx_sx.SQL.text :=
      ' SELECT  a.* ,e.brxm,e.brnl,e.brxb,e.bch,e.tmh,f.mc kdksmc' +
      ' FROM    zybl_lsyz_dy_ls a' +
      ' LEFT JOIN zybl_zyyz_yzzxqd_sqm b ON a.id = b.yzid AND a.gysj = SUBSTRING(CONVERT(VARCHAR(20), b.zxsj, 120),3, 14)' +
      ' LEFT JOIN sys_czy d ON b.zxry = d.dm' +
      ' LEFT JOIN zysf_cydj e ON a.zyh=e.zyh' +
      ' LEFT JOIN sys_ksdm f ON a.kdks=f.dm' +
      ' WHERE   a.id IN ( SELECT id FROM zybl_zyyz WHERE zyh = '+ QuotedStr(v_zyh)+' AND ISNULL(jcff, '''') <> ''新生儿'' )' +
      ' AND a.zyh = '+ QuotedStr(v_zyh)+' AND sx = ''临时''' + ' and sfdy=1 ' +
      ' ORDER BY xh2'
      else
      qry_cx_sx.SQL.text :=
      ' SELECT  a.* ,e.brxm,e.brnl,e.brxb,e.bch,e.tmh,f.mc kdksmc' +
      ' FROM    zybl_lsyz_dy_ls a' +
      ' LEFT JOIN zybl_zyyz_yzzxqd_sqm b ON a.id = b.yzid AND a.gysj = SUBSTRING(CONVERT(VARCHAR(20), b.zxsj, 120),3, 14)' +
      ' LEFT JOIN sys_czy d ON b.zxry = d.dm' +
      ' LEFT JOIN zysf_cydj e ON a.zyh=e.zyh' +
      ' LEFT JOIN sys_ksdm f ON a.kdks=f.dm' +
      ' WHERE   a.id IN ( SELECT id FROM zybl_zyyz WHERE zyh = '+ QuotedStr(v_zyh)+' AND ISNULL(jcff, '''') = ''新生儿'' )' +
      ' AND a.zyh = '+ QuotedStr(v_zyh)+' AND sx = ''临时''' + ' and sfdy=1 ' +
      ' ORDER BY xh2'
    end;
  end
  else
  begin
    _field := edt_2.text;
    _field1:='fzph,kdrq,xmmc,kdysmc,gysj qx,gysj,zxhsmc,ypyf';
  end;

  if (pub_yydm<>'0244') and (pub_yydm<>HN_SYRMYY) then
  begin
    if pub_dzqmsfqybz then    //电子签名判断
    begin
      if sfxse <> '新生儿' then
        qry_cx_sx.SQL.text := 'select a.id,'+_field+',b.qmtp as kdysmcqmtp ,c.qmtp as zxhsmcqmtp,d.qmtp as shryqmtp,e.qmtp as zxhssqmqmtp,isnull(a.bxdqtbz,0) bxdqtbz from ' +
        ' zybl_lsyz_dy_ls a left join sys_czy b on a.kdysdm = b.dm left join  sys_czy c  on a.zxhsdm=c.dm left join  sys_czy d on a.shrydm=d.dm'+
        ' left join  sys_czy e on a.zxhssqmdm=e.dm where sfdy=1 '+
        ' and a.id in (select id from zybl_zyyz where zyh=' + '''' + v_zyh +
         '''' + ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' + '''' +
         v_zyh + '''' + ' and sx=''临时''' + ' order by xh2'
      else
        qry_cx_sx.SQL.text := 'select a.id,'+_field+',b.qmtp as kdysmcqmtp ,c.qmtp as zxhsmcqmtp,d.qmtp as shryqmtp,isnull(a.bxdqtbz,0) bxdqtbz  from ' +
        ' zybl_lsyz_dy_ls a left join sys_czy b on a.kdysdm = b.dm left join  sys_czy c  on a.zxhsdm=c.dm left join  sys_czy d on a.shrydm=d.dm'+
        ' where  sfdy=1 and ' +
        ' a.id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+
        ' and zyh=' + '''' + v_zyh + '''' + ' and isnull(jcff,'''')=''新生儿'') '+
        ' and  zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2';
    end else
    begin
      if (pub_yydm='0263') or (pub_yydm='0264') or (pub_yydm='0261')then   //德阳肿瘤眼科医院
      begin
        _field :='fzph,kdrq,case rtrim(fzph) when '''' then xmmc+''''+yytj+''''+ypyf+'''' else xmmc '+
        'end xmmc,kdysmc,case when left(gysj,4)=''已取消'' then left(gysj,4) else '''' end qx, '+
        'case when left(gysj,4)=''已取消  '' then substring(gysj,6,len(gysj)-5) else gysj end gysj, '+
        'zxhsmc,rtrim(case rtrim(fzph) when '''' then '''' else yytj+ypyf end) ypyf';
        if sfxse <> '新生儿' then
        begin
          qry_cx_sx.SQL.text := 'select id,'+_field+
          ' from zybl_lsyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where zyh=' +
          '''' + v_zyh + '''' + ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' +
           '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2'
        end
        else
        begin
          qry_cx_sx.SQL.text := 'select id,'+_field+
          ' from zybl_lsyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where rtrim(czys)='+
          ''''+xsexh+''''+' and zyh=' + '''' + v_zyh + '''' +
           ' and isnull(jcff,'''')=''新生儿'') and  zyh=' + '''' + v_zyh +
           '''' + ' and sx=''临时''' + ' order by xh2';
        end;
      end else
      begin
        if sfxse <> '新生儿' then
          qry_cx_sx.SQL.text := 'select id,'+_field+',isnull(bxdqtbz,0) bxdqtbz  from ' +
            ' zybl_lsyz_dy_ls where  sfdy=1 '+
            ' and id in (select id from zybl_zyyz where zyh=' + '''' + v_zyh +
             '''' + ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' + '''' +
             v_zyh + '''' + ' and sx=''临时''' + ' order by xh2'
        else
          qry_cx_sx.SQL.text := 'select id,'+_field+',isnull(bxdqtbz,0) bxdqtbz  from ' +
          ' zybl_lsyz_dy_ls  where sfdy=1 and ' +
          ' id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+
          ' and zyh=' + '''' + v_zyh + '''' + ' and isnull(jcff,'''')=''新生儿'') '+
          ' and  zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2';
      end;
    end;
  end;
  //医嘱停止标志
  qry_lsyzxgbz.Close;
  qry_lsyzxgbz.SQL.Text :='';
  qry_lsyzxgbz.SQL.Text := 'UPDATE a SET a.bxdqtbz=1  FROM zybl_lsyz_dy_ls a,zybl_zyyz b  '
                            +'WHERE b.zyh='''+v_zyh+''' and a.zyh=b.zyh AND a.id=b.id '
                            +'AND a.sx=''临时'' '
                            +'AND ISNULL(a.gysj,'''')<>'''' AND ISNULL(b.bxdqtbz,0)=1';
  qry_lsyzxgbz.ExecSQL;
  qry_cx_sx.Open;

//  if lsyzdbb = nil then
//  begin
    lsyzdbb := TCusBb.Create;
    lsyzdbb.GetBbByDM( lsyzdbb, lsyzdDm );

//  end;
  GridppReport1.LoadFromStr( lsyzdbb.nr );
  try
      //1、处理数据
  qry_yzmx_temp := TADOQuery.Create( nil );
  qry_yzmx_temp.close;
  qry_yzmx_temp.Connection := DM_data.ado_mydata;
  qry_yzmx_temp.LockType := ltBatchOptimistic;

  if pub_yydm=HN_SYRMYY then
  begin
    qry_yzmx_temp.SQL.Text := 'select a.id,a.' + _field1 + ',b.brxm,b.brnl,b.brxb,b.bch,b.tmh,c.mc kdksmc from zybl_lsyz_dy_ls a ,zysf_zydj b, sys_ksdm c '+
    ' where a.zyh=b.zyh and a.kdks=c.dm  and 1=2';
  end else
  begin
    if pub_dzqmsfqybz then   //电子签名判断
    begin
      qry_yzmx_temp.SQL.Text := 'select a.id,' + _field1 + ',b.qmtp as kdysmcqmtp,b.qmtp  as zxhsmcqmtp from zybl_lsyz_dy_ls  a,sys_czy b  where a.kdysmc=b.mc and  1=2';
    end else
    begin
      qry_yzmx_temp.SQL.Text := 'select id,' + _field1 + ' from zybl_lsyz_dy_ls where 1=2';
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

      for I := 1 to b_count do
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
    if Assigned(GridppReport1.ParameterByName( '病区' )) then
    GridppReport1.ParameterByName( '病区' ).Value := pub_bqmc;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='select * from sys_kscwsz where rtrim(bcbh)='+''''+v_bch+
    ''''+' and bqdm='+''''+pub_bqdm+'''';
    DM_data.qry_pub.Open;
      if Assigned(GridppReport1.ParameterByName( '床号' )) then
    GridppReport1.ParameterByName( '床号' ).Value := DM_data.qry_pub.FieldByName('yybch').asstring;
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
//    if Assigned(GridppReport1.ControlByName('PictureBox1')) then
//    begin
//     if GridppReport1.DetailGrid.Recordset.Fields.IndexByName('qmtp') < 0 then
//     begin
//        GridppReport1.DetailGrid.Recordset.AddField( 'qmtp', grptString );
//     end;
//       GridppReport1.ControlByName('PictureBox1').AsPictureBox.DataField:= 'qmtp';
//    end;

    GridppReport1.DataSet := qry_cx_sx;


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
    GridppReport1.PrintPreview( false );
  end;

end;

//全州
procedure Tfrm_lsyzxzdy.pro_print_lsyz_qzdy(b_count: Integer);
var  res, _field, _field1,px: string;
  cqyzdbb: TCusBb;
  I: Integer;
  qry_yzmx_temp: TADOQuery; //计算用临时数据集
  _fieldList: tstrings;
  j, _b_page: Integer; //_b_page 开始页
  hs,vRecordNum:integer;
begin
  if pub_yydm='0244' then       //龙江特殊处理医嘱单
  begin
    px:=',fzph asc,kdrq desc';
  end
  else
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
                            IntToStr(hs)+',1'+')';
  DM_data.qry_pub.ExecSQL;
  qry_cx.Filtered:=False;

  if sfxse<>'新生儿' then
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;
  if (pub_yydm='0015') or (pub_yydm='0004') then
    DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdysdzqm,zxhsdzqm from #lsb1'
  else if (pub_yydm=HN_SYRMYY) then
    DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdks)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2,kdks from #lsb1'
  else
    DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2 from #lsb1';
  DM_data.qry_pub.ExecSQL;
  qry_cx_sx.Close;
  if (pub_yydm='0015') or (pub_yydm='0004') then
  begin
    _field := 'fzph,kdrq,case rtrim(fzph) when '''' then xmmc+'' ''+yytj+'' ''+ypyf else xmmc end xmmc,kdysmc,'+
              'case when left(gysj,4)=''已取消  '' then left(gysj,4) else '''' end qx,case when left(gysj,4)=''已取消  '' then'+
              ' substring(gysj,6,len(gysj)-5) else gysj end gysj,zxhsmc,rtrim(case rtrim(fzph) when '''' then '''' else yytj+ypyf end) ypyf,kdysdzqm,zxhsdzqm';
    _field1:='fzph,kdrq,xmmc,kdysmc,gysj qx,gysj,zxhsmc,ypyf,kdysdzqm,zxhsdzqm';
  end
  else if pub_yydm = '0244' then
  begin
      _field := edt_2.text + ',hdczy';
      _field1 := 'fzph,kdrq,xmmc,kdysmc,gysj qx,gysj,zxhsmc,ypyf,'''' hdczy';
      if sfxse <> '新生儿' then
        qry_cx_sx.SQL.text := 'select ' + _field + ' from zybl_lsyz_dy_ls a left join zyyz_hdyzmx on a.id=zyyzid where sfdy=1 and a.id in (select id from zybl_zyyz where zyh=' + '''' + v_zyh + '''' + ' and isnull(jcff,'''')<>''新生儿'') and  a.zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2'+px
      else
        qry_cx_sx.SQL.text := 'select ' + _field + ' from zybl_lsyz_dy_ls a left join zyyz_hdyzmx on a.id=zyyzid where sfdy=1 and a.id in (select id from zybl_zyyz where rtrim(czys)=' + '''' + xsexh + '''' + ' and zyh=' + '''' + v_zyh + '''' + ' and isnull(jcff,'''')=''新生儿'') and  a.zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2'+px;
  end
  else if pub_yydm=HN_SYRMYY then  //沙雅县人民医院0240
  begin
    _field1 := '*';
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh = '+ QuotedStr(v_zyh);
    DM_data.qry_pub.Open;
    vRecordNum := DM_data.qry_pub.RecordCount;
    if vRecordNum > 0 then
    begin
      if sfxse <> '新生儿' then
      qry_cx_sx.SQL.text :=
      ' SELECT  a.* ,e.brxm,e.brnl,e.brxb,e.bch,e.tmh,f.mc kdksmc' +
      ' FROM    zybl_lsyz_dy_ls a' +
      ' LEFT JOIN zybl_zyyz_yzzxqd_sqm b ON a.id = b.yzid AND a.gysj = SUBSTRING(CONVERT(VARCHAR(20), b.zxsj, 120),3, 14)' +
      ' LEFT JOIN sys_czy d ON b.zxry = d.dm' +
      ' LEFT JOIN zysf_zydj e ON a.zyh=e.zyh' +
      ' LEFT JOIN sys_ksdm f ON a.kdks=f.dm' +
      ' WHERE   a.id IN ( SELECT id FROM zybl_zyyz WHERE zyh = '+ QuotedStr(v_zyh)+' AND ISNULL(jcff, '''') <> ''新生儿'' )' +
      ' AND a.zyh = '+ QuotedStr(v_zyh)+' AND sx = ''临时''' + ' and sfdy=1 ' +
      ' ORDER BY xh2'
      else
      qry_cx_sx.SQL.text :=
      ' SELECT  a.* ,e.brxm,e.brnl,e.brxb,e.bch,e.tmh,f.mc kdksmc' +
      ' FROM    zybl_lsyz_dy_ls a' +
      ' LEFT JOIN zybl_zyyz_yzzxqd_sqm b ON a.id = b.yzid AND a.gysj = SUBSTRING(CONVERT(VARCHAR(20), b.zxsj, 120),3, 14)' +
      ' LEFT JOIN sys_czy d ON b.zxry = d.dm' +
      ' LEFT JOIN zysf_zydj e ON a.zyh=e.zyh' +
      ' LEFT JOIN sys_ksdm f ON a.kdks=f.dm' +
      ' WHERE   a.id IN ( SELECT id FROM zybl_zyyz WHERE zyh = '+ QuotedStr(v_zyh)+' AND ISNULL(jcff, '''') = ''新生儿'' )' +
      ' AND a.zyh = '+ QuotedStr(v_zyh)+' AND sx = ''临时''' + ' and sfdy=1 ' +
      ' ORDER BY xh2'
    end else
    begin
      if sfxse <> '新生儿' then
      qry_cx_sx.SQL.text :=
      ' SELECT  a.* ,e.brxm,e.brnl,e.brxb,e.bch,e.tmh,f.mc kdksmc' +
      ' FROM    zybl_lsyz_dy_ls a' +
      ' LEFT JOIN zybl_zyyz_yzzxqd_sqm b ON a.id = b.yzid AND a.gysj = SUBSTRING(CONVERT(VARCHAR(20), b.zxsj, 120),3, 14)' +
      ' LEFT JOIN sys_czy d ON b.zxry = d.dm' +
      ' LEFT JOIN zysf_cydj e ON a.zyh=e.zyh' +
      ' LEFT JOIN sys_ksdm f ON a.kdks=f.dm' +
      ' WHERE   a.id IN ( SELECT id FROM zybl_zyyz WHERE zyh = '+ QuotedStr(v_zyh)+' AND ISNULL(jcff, '''') <> ''新生儿'' )' +
      ' AND a.zyh = '+ QuotedStr(v_zyh)+' AND sx = ''临时''' + ' and sfdy=1 ' +
      ' ORDER BY xh2'
      else
      qry_cx_sx.SQL.text :=
      ' SELECT  a.* ,e.brxm,e.brnl,e.brxb,e.bch,e.tmh,f.mc kdksmc' +
      ' FROM    zybl_lsyz_dy_ls a' +
      ' LEFT JOIN zybl_zyyz_yzzxqd_sqm b ON a.id = b.yzid AND a.gysj = SUBSTRING(CONVERT(VARCHAR(20), b.zxsj, 120),3, 14)' +
      ' LEFT JOIN sys_czy d ON b.zxry = d.dm' +
      ' LEFT JOIN zysf_cydj e ON a.zyh=e.zyh' +
      ' LEFT JOIN sys_ksdm f ON a.kdks=f.dm' +
      ' WHERE   a.id IN ( SELECT id FROM zybl_zyyz WHERE zyh = '+ QuotedStr(v_zyh)+' AND ISNULL(jcff, '''') = ''新生儿'' )' +
      ' AND a.zyh = '+ QuotedStr(v_zyh)+' AND sx = ''临时''' + ' and sfdy=1 ' +
      ' ORDER BY xh2'
    end;
  end
  else
  begin
    _field := edt_2.text;
    _field1:='fzph,kdrq,xmmc,kdysmc,gysj qx,gysj,zxhsmc,ypyf';
  end;

  if (pub_yydm<>'0244') and (pub_yydm<>HN_SYRMYY) then
  begin
    if sfxse <> '新生儿' then
      qry_cx_sx.SQL.text := 'select id,'+_field+' from zybl_lsyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where zyh=' + '''' + v_zyh + '''' + ' and isnull(jcff,'''')<>''新生儿'') and  zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2'
    else
      qry_cx_sx.SQL.text := 'select id,'+_field+' from zybl_lsyz_dy_ls where sfdy=1 and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh=' + '''' + v_zyh + '''' + ' and isnull(jcff,'''')=''新生儿'') and  zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2';
  end;
  qry_cx_sx.Open;

//  if lsyzdbb = nil then
//  begin
    lsyzdbb := TCusBb.Create;
    lsyzdbb.GetBbByDM( lsyzdbb, lsyzdDm );

//  end;
  GridppReport1.LoadFromStr( lsyzdbb.nr );
  try
      //1、处理数据
  qry_yzmx_temp := TADOQuery.Create( nil );
  qry_yzmx_temp.close;
  qry_yzmx_temp.Connection := DM_data.ado_mydata;
  qry_yzmx_temp.LockType := ltBatchOptimistic;

  if pub_yydm=HN_SYRMYY then
  begin
    qry_yzmx_temp.SQL.Text := 'select a.id,a.' + _field1 + ',b.brxm,b.brnl,b.brxb,b.bch,b.tmh,c.mc kdksmc from zybl_lsyz_dy_ls a ,zysf_zydj b, sys_ksdm c '+
    ' where a.zyh=b.zyh and a.kdks=c.dm  and 1=2';
  end else
  begin
     qry_yzmx_temp.SQL.Text := 'select id,' + _field1 + ' from zybl_lsyz_dy_ls where 1=2';
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

      for I := 1 to b_count do
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
    GridppReport1.ParameterByName( '姓名' ).Value := v_brxm;
    GridppReport1.ParameterByName( '性别' ).Value := v_brxb;
    GridppReport1.ParameterByName( '年龄' ).Value := v_brnl;
    GridppReport1.ParameterByName( '住院号' ).Value := v_tmh;
    GridppReport1.ParameterByName( '开始行' ).Value := b_count;
    GridppReport1.ParameterByName( '开始页' ).Value := _b_page;
    GridppReport1.DataSet := qry_cx_sx;
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
    GridppReport1.PrintPreview( false );
  end;

end;

procedure Tfrm_lsyzxzdy.pro_print_lsyz_sc;
begin
  //  sp_cxxz.close;
//  sp_cxxz.Parameters.Refresh;
//  sp_cxxz.Parameters.ParamByName('@sr_ksdm').value:=pub_bqdm;
//  sp_cxxz.Open;
//
//  sp_cxxz.Filtered:=False;
//  sp_cxxz.Filter:='xkyz=''新医嘱'' and zyh='+''''+v_zyh+'''';
//  sp_cxxz.Filtered:=True;
//
//  if sp_cxxz.RecordCount>0 then
//  begin
//  ShowMessage('有未执行医嘱，请通知护士执行后再打印！');
//  Exit;
//  end;

  qry_cx.first;
  QRL_yymc_ls.Caption := pub_yymc + '临时医嘱记录单';
  if sfxse <> '新生儿' then
  begin
    QRL_brxm_ls.Caption := '姓名:' + v_brxm;
    QRL_tmh_ls.Caption := '住院号:' + v_tmh;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( v_bch ) + '''';
    DM_data.qry_pub.Open;
    QRL_bch_ls.Caption := '床号:' + DM_data.qry_pub.FieldByName( 'yybch' ).asstring;
    xb_ls.Caption := '性别:' + v_brxb;
    nl_ls.Caption := '年龄:' + v_brnl;
  end
  else
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select brxm,brxb,datediff(day,csrq,getdate()) nl from zysf_zydj_xse where zyh=' + '''' + v_zyh + ''''+
    ' and brnl='+xsexh;
    DM_data.qry_pub.Open;
    QRL_brxm_ls.Caption := '姓名:' + Trim( DM_data.qry_pub.FieldByName( 'brxm' ).asstring );
    QRL_tmh_ls.Caption := '住院号:' + v_tmh;
    xb_ls.Caption := '性别:' + trim( DM_data.qry_pub.FieldByName( 'brxb' ).asstring );
    nl_ls.Caption := '年龄:' + trim( v_brnl );
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( v_bch ) + '''';
    DM_data.qry_pub.Open;
    QRL_bch_ls.Caption := '床号:' + DM_data.qry_pub.FieldByName( 'yybch' ).asstring;
  end;
  if sfxse<>'新生儿' then
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2 from #lsb';
  DM_data.qry_pub.ExecSQL;
  zd_ls.Caption := '病区:' + pub_bqmc;
  QRL_dysj_ls.Caption := '                          ';
  qry_cx.Filtered := false;
  qry_cx.Filter := 'sfdy=1';
  qry_cx.Filtered := True;
  QuickRep2.Prepare;
  paper_size := 0;
 // QRL_ys_ls.Caption := '共' + IntToStr( QuickRep2.Printer.PageCount ) + '页';
  QRL_ys_ls.Caption := '';
  QuickRep2.Preview;
  qry_cx.Filtered := False;
end;

procedure Tfrm_lsyzxzdy.Button2Click( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_lsyzxzdy.Button3Click( Sender: TObject );
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

procedure Tfrm_lsyzxzdy.Button4Click(Sender: TObject);
var zgysdm,zgysxm:string;
begin
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
  DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end;

  sp_zxjl_cq_dy.Close;
  sp_zxjl_cq_dy.Parameters.Refresh;
  sp_zxjl_cq_dy.Parameters.ParamByName( '@zyh' ).Value := v_zyh;
  sp_zxjl_cq_dy.Parameters.ParamByName( '@fs' ).Value := 1;
  sp_zxjl_cq_dy.ExecProc;
DM_data.qry_pub.Close;
DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh='+''''+v_zyh+'''';
DM_data.qry_pub.Open;
zgysdm:= DM_data.qry_pub.FieldByName('zgys').AsString;
DM_data.qry_pub.Close;
DM_data.qry_pub.SQL.text:='select * from sys_czy where dm='+''''+zgysdm+'''';
DM_data.qry_pub.Open;
zgysxm:= DM_data.qry_pub.FieldByName('mc').AsString;

DM_data.qry_pub.Close;
if sfxse<>'新生儿' then
begin
  DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm'+
                   ' into #lsb '+
                   ' from zybl_lsyz_dy_ls a'+
                   ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.gysj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                   ' left join sys_czy d on b.zxry=d.dm'+
                   ' where a.id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'') and  a.zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2';
end
else
begin
 DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm'+
                   ' into #lsb '+
                   ' from zybl_lsyz_dy_ls a'+
                   ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.gysj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                   ' left join sys_czy d on b.zxry=d.dm'+
                   ' where a.id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'') and  a.zyh=' + '''' + v_zyh + '''' + ' and sx=''临时''' + ' order by xh2';
end;
 DM_data.qry_pub.ExecSQL;
 qry_cx.Close;
 qry_cx.SQL.text:='select * from #lsb order by xh2';
 qry_cx.Open;
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
  qry_cx.SQL.text:='select * from #lsb1 order by xh2';
  qry_cx.Open;
 end
 else
 begin
  qry_cx.Close;
  qry_cx.SQL.text:='select * from #lsb order by xh2';
  qry_cx.Open;
 end;
 if pub_yydm='0013' then
 begin
 qry_cx.First;
 while not qry_cx.eof do
 begin
 if (Pos('胰岛素',qry_cx.FieldByName('xmmc').asstring)>0) and  (Pos('备用',qry_cx.FieldByName('xmmc').asstring)>0) and
    (Pos('400',qry_cx.FieldByName('xmmc').asstring)>0)  then
    begin
    qry_cx.Edit;
    qry_cx.FieldByName('sfdy').AsBoolean:=False;
    qry_cx.post;
    end;
 qry_cx.Next;
 end;
 end;
qry_cx.First;
DBGridEh1.ReadOnly:=true;
end;

end;

procedure Tfrm_lsyzxzdy.Button5Click(Sender: TObject);
begin
qry_cx.first;
  QRL_yymc_ls.Caption := pub_yymc + '临时查房单';
  if sfxse <> '新生儿' then
  begin
    QRL_brxm_ls.Caption := '姓名:' + v_brxm;
    QRL_tmh_ls.Caption := '住院号:' + v_tmh;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( v_bch ) + '''';
    DM_data.qry_pub.Open;
    QRL_bch_ls.Caption := '床号:' + DM_data.qry_pub.FieldByName( 'yybch' ).asstring;
    xb_ls.Caption := '性别:' + v_brxb;
    nl_ls.Caption := '年龄:' + v_brnl;
  end
  else
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select brxm,brxb,datediff(day,csrq,getdate()) nl from zysf_zydj_xse where zyh=' + '''' + v_zyh + ''''+
    ' and brnl='+xsexh;
    DM_data.qry_pub.Open;
    QRL_brxm_ls.Caption := '姓名:' + Trim( DM_data.qry_pub.FieldByName( 'brxm' ).asstring );
    QRL_tmh_ls.Caption := '住院号:' + v_tmh;
    xb_ls.Caption := '性别:' + trim( DM_data.qry_pub.FieldByName( 'brxb' ).asstring );
    nl_ls.Caption := '年龄:' + trim( v_brnl );
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( v_bch ) + '''';
    DM_data.qry_pub.Open;
    QRL_bch_ls.Caption := '床号:' + DM_data.qry_pub.FieldByName( 'yybch' ).asstring;
  end;
  if sfxse<>'新生儿' then
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
    ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
  DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:= 'insert into zybl_lsyz_dy_ls(zyh,sx,id,ksrq,kdysmc,zxhsmc,'+
                             'tzrymc,tzrq,xmmc,ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2)'
                             +' select zyh,sx,id,ksrq,kdysmc,zxhsmc_sqm,tzrymc,tzrq,xmmc,'+
                             'ypyf,yytj,gysj,gg,kdrq,sl,dw,fzph,sfdy,xh1,xh2 from #lsb';
  DM_data.qry_pub.ExecSQL;
  zd_ls.Caption := '科室:' + pub_ksmc;
  QRL_dysj_ls.Caption := '                          ';
  qry_cx.Filtered := false;
  qry_cx.Filter := 'sfdy=1';
  qry_cx.Filtered := True;
  QuickRep2.Prepare;
  paper_size := 0;
 // QRL_ys_ls.Caption := '共' + IntToStr( QuickRep2.Printer.PageCount ) + '页';
 QRL_ys_ls.Caption := '';
  QuickRep2.Preview;
  qry_cx.Filtered := False;
end;

procedure Tfrm_lsyzxzdy.Button6Click(Sender: TObject);
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

procedure Tfrm_lsyzxzdy.ComboBox1Change(Sender: TObject);
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

procedure Tfrm_lsyzxzdy.DBGridEh1CellClick( Column: TColumnEh );
begin
  if DBGridEh1.SelectedIndex = 5 then
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
    Edit1.text := DBGridEh1.Columns[6].DisplayText;
    Edit1.SetFocus;
    Edit1.SelectAll;
  end
  else
    Edit1.text := DBGridEh1.Columns[6].DisplayText;
  Edit1.SetFocus;
  Edit1.SelectAll;
end;

procedure Tfrm_lsyzxzdy.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if  qry_cx.FieldByName( 'dybz' ).AsBoolean then
    DBGridEh1.Canvas.Brush.Color := clSkyBlue;

  if ( Rect.Top = DBGridEh1.CellRect( DBGridEh1.Col, DBGridEh1.Row ).Top ) and ( not ( gdFocused in State ) or not DBGridEh1.Focused ) then
    DBGridEh1.Canvas.Brush.Color := clAqua;
  DBGridEh1.DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_lsyzxzdy.Edit1KeyPress( Sender: TObject; var Key: Char );
begin
  if not ( ( key in ['0'..'9', #8] ) ) then
  begin
    key := #0;
  end;
end;

procedure Tfrm_lsyzxzdy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb'') is not null drop table #lsb';
  DM_data.qry_pub.ExecSQL;
   if (pub_yydm='0257') or  (pub_yydm='0272')  or (pub_yydm='0271') then
  begin
    DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb1'') is not null drop table #lsb1';
    DM_data.qry_pub.ExecSQL;
  end;
end;

procedure Tfrm_lsyzxzdy.FormCreate( Sender: TObject );
begin
  QuickRep2.Visible := False;
end;

procedure Tfrm_lsyzxzdy.FormShow( Sender: TObject );
var zgysdm,zgysxm,dzqmzd,px:string;
begin
  if pub_yydm='0244' then       //龙江特殊处理医嘱单
  begin
    px:=',fzph asc,kdrq desc';
  end
  else
  begin
    px:='';
  end;
  if (pub_yydm='0003') or (pub_yydm='0013') then
  begin
    if sfxse<>'新生儿' then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
        ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
      DM_data.qry_pub.ExecSQL;
    end
    else
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='delete from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
        ' and id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
      DM_data.qry_pub.ExecSQL;
    end;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select distinct * from zybl_zyyz_xdhs where zyh='+''''+
                      v_zyh+''''+' and sx=1 order by hs desc';
  DM_data.qry_pub.open;
  ComboBox1.Items.Clear;
  DM_data.qry_pub.First;
  while not  DM_data.qry_pub.Eof do
  begin
  ComboBox1.Items.Add(DM_data.qry_pub.FieldByName('hs').asstring);
  DM_data.qry_pub.Next;
  end;
  ComboBox1.ItemIndex:=0;

// if sfxse<>'新生儿' then
//  begin
//  DM_data.qry_pub.Close;
//  DM_data.qry_pub.SQL.text:='select * from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
//    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'')';
//  DM_data.qry_pub.open;
//  end
//  else
//  begin
//  DM_data.qry_pub.Close;
//  DM_data.qry_pub.SQL.text:='select * from zybl_lsyz_dy_ls where zyh='+''''+v_zyh+''''+
//    ' and id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'')';
//  DM_data.qry_pub.open;
//  end;
//  if DM_data.qry_pub.RecordCount<1 then
//  begin
  sp_zxjl_cq_dy.Close;
  sp_zxjl_cq_dy.Parameters.Refresh;
  sp_zxjl_cq_dy.Parameters.ParamByName('@zyh').Value:=v_zyh;
  sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value:=1;
  sp_zxjl_cq_dy.ExecProc;
//  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh='+''''+v_zyh+'''';
  DM_data.qry_pub.Open;
  zgysdm:= DM_data.qry_pub.FieldByName('zgys').AsString;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='select * from sys_czy where dm='+''''+zgysdm+'''';
  DM_data.qry_pub.Open;
  zgysxm:= DM_data.qry_pub.FieldByName('mc').AsString;
  if pub_yydm='0015' then
  begin
    dzqmzd:=',kdysdzqm,zxhsdzqm '
  end
  else
  begin
    dzqmzd:='';
  end;

  cmd_dybz.CommandText := 'update zybl_lsyz_dy_ls set dybz=1 where id in (select yzid from zybl_zyyz_dybz ) and sfdy=1 and zyh='''+v_zyh+'''';
  cmd_dybz.Execute;

  DM_data.qry_pub.Close;

  if (pub_yydm='0272') or (pub_yydm='0271') then //灌阳县妇幼保健院 ,掇刀医院修改
  begin
     DBGridEh1.Columns[1].FieldName:='kdysmc_sqm';
    if sfxse<>'新生儿' then
    begin
      DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm,b.zxry,'+
                 ' case when e.mc is null then '''' when charindex(e.mc,a.kdysmc)<1 then e.mc + char(13) else '''' end + isnull(a.kdysmc,'''') kdysmc_sqm '+
                 ' into #lsb '+
                 ' from zybl_lsyz_dy_ls a'+
                 ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.gysj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                 ' left join sys_czy d on b.zxry=d.dm'+
                 ' left join zybl_zyyz_yzys_sqm c on a.id=c.yzid and a.gysj=substring(convert(varchar(20),c.zxsj,120),3,14)'+
                 ' left join sys_czy e on c.zxry=e.dm '+
                 ' where a.id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'') and  a.zyh=' + '''' + v_zyh + '''' + ' and a.sx=''临时''' + ' order by xh2';
    end
    else
    begin
       DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm,b.zxry,'+
                 ' case when e.mc is null then '''' when charindex(e.mc,a.kdysmc)<1 then e.mc + char(13) else '''' end +isnull(a.kdysmc,'''') kdysmc_sqm '+
                 ' into #lsb '+
                 ' from zybl_lsyz_dy_ls a'+
                 ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.gysj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                 ' left join sys_czy d on b.zxry=d.dm'+
                 ' left join zybl_zyyz_yzys_sqm c on a.id=c.yzid and a.gysj=substring(convert(varchar(20),c.zxsj,120),3,14)'+
                 ' left join sys_czy e on c.zxry=e.dm '+
                 ' where a.id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'') and  a.zyh=' + '''' + v_zyh + '''' + ' and a.sx=''临时''' + ' order by xh2';
    end;
  end else  ///////////////////////////////////
  begin
    if sfxse<>'新生儿' then
    begin
      DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm,b.zxry '+
                 ' into #lsb '+
                 ' from zybl_lsyz_dy_ls a'+
                 ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.gysj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                 ' left join sys_czy d on b.zxry=d.dm'+
                 ' where a.id in (select id from zybl_zyyz where zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')<>''新生儿'') and  a.zyh=' + '''' + v_zyh + '''' + ' and a.sx=''临时''' + ' order by xh2';
    end
    else
    begin
       DM_data.qry_pub.SQL.Text:='select a.*,isnull(a.zxhsmc,'''')+case when d.mc is null then '''' when charindex(d.mc,a.zxhsmc)<1 then char(13)+d.mc else '''' end zxhsmc_sqm,b.zxry '+
                 ' into #lsb '+
                 ' from zybl_lsyz_dy_ls a'+
                 ' left join zybl_zyyz_yzzxqd_sqm b on a.id=b.yzid and a.gysj=substring(convert(varchar(20),b.zxsj,120),3,14)'+
                 ' left join sys_czy d on b.zxry=d.dm'+
                 ' where a.id in (select id from zybl_zyyz where rtrim(czys)='+''''+xsexh+''''+' and zyh='+''''+v_zyh+''''+' and isnull(jcff,'''')=''新生儿'') and  a.zyh=' + '''' + v_zyh + '''' + ' and a.sx=''临时''' + ' order by xh2';
    end;
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
  else
  begin
    qry_cx.Close;
    qry_cx.SQL.text:='select * from #lsb order by xh2'+px;
    qry_cx.Open;
  end;

 if pub_yydm='0013' then
 begin
 qry_cx.First;
 while not qry_cx.eof do
 begin
 if (Pos('胰岛素',qry_cx.FieldByName('xmmc').asstring)>0) and  (Pos('备用',qry_cx.FieldByName('xmmc').asstring)>0) and
    (Pos('400',qry_cx.FieldByName('xmmc').asstring)>0)  then
    begin
    qry_cx.Edit;
    qry_cx.FieldByName('sfdy').AsBoolean:=False;
    qry_cx.post;
    end;
 qry_cx.Next;
 end;
 end;
qry_cx.First;
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

procedure Tfrm_lsyzxzdy.GridppReport1PrintEnd(Sender: TObject);
begin
  qry_dybz.Close;
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
        qry_dybz.FieldByName('sx').AsString := '临时';
        qry_dybz.FieldByName('zyh').AsString := v_zyh;
        qry_dybz.Post;
      end;
    end;
    qry_cx_sx.Next;
  end;

  cmd_dybz.CommandText := 'update zybl_lsyz_dy_ls set dybz=1 where id in (select yzid from zybl_zyyz_dybz ) and sfdy=1 and zyh='''+v_zyh+'''';
  cmd_dybz.Execute;
  //医嘱是否打印标志
  qry_lsyzxgbz.Close;
  qry_lsyzxgbz.sql.text := '';
  qry_lsyzxgbz.sql.text := 'update zybl_lsyz_dy_ls set bxdqtbz=1 where id in (select yzid from zybl_zyyz_dybz ) and sfdy=1 and zyh='''+v_zyh+''' '
                      +'and ISNULL(gysj,'''')<>'''' ';
  qry_lsyzxgbz.ExecSQL;

  qry_lsyzxgbz.Close;
  qry_lsyzxgbz.sql.text := '';
  qry_lsyzxgbz.sql.text := 'UPDATE b SET b.bxdqtbz=1  FROM zybl_lsyz_dy_ls a,zybl_zyyz b  '
                          +'WHERE b.zyh='''+v_zyh+''' and a.zyh=b.zyh AND a.id=b.id '
                          +'AND a.sx=''临时'' '
                          +'AND ISNULL(a.gysj,'''')<>'''' AND ISNULL(a.bxdqtbz,0)=1';
  qry_lsyzxgbz.ExecSQL;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb'') is not null drop table #lsb';
  DM_data.qry_pub.ExecSQL;
      //修改打印临时医嘱后 报错 已经存在#lsb1 的问题
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb1'') is not null drop table #lsb1';
  DM_data.qry_pub.ExecSQL;

  self.FormShow(Self);
end;

procedure Tfrm_lsyzxzdy.kxExecute(Sender: TObject);
begin
  DBGridEh1.ReadOnly:=false;
end;

procedure Tfrm_lsyzxzdy.QRSubDetail2BeforePrint( Sender: TQRCustomBand;
  var PrintBand: Boolean );
begin
  //     if paper_size>27 then
  //      begin
  //        quickrep2.NewPage;
  //        paper_size:=0;
  //      end;
end;

procedure Tfrm_lsyzxzdy.QRSubDetail2NeedData( Sender: TObject; var MoreData: Boolean );
var
 I,hei: integer;
begin
  MoreData := True;
  i:=1;
  if qry_cx.Eof then
    MoreData := False;
  ksrq_ls.Caption:='';
  kdys_ls.Caption:='';
  zxryxm_ls.Caption:='';
  xmmc_ls.Caption:='';
  zxsj_ls.caption:='';
  ypyf_ls.caption:='';

  if not qry_cx.eof then
  begin
     ksrq_ls.Caption := qry_cx.FieldByName('ksrq').Asstring;
     kdys_ls.Caption := qry_cx.FieldByName('kdysmc').Asstring;
     zxryxm_ls.Caption := qry_cx.FieldByName('zxhsmc_sqm').Asstring;
//     rqry.Caption := trim(qry_cx.FieldByName('tzrymc').asstring)+' '+trim(qry_cx.FieldByName('tzrq').asstring);
//     zxsj_ls.Caption := sp_zxjl_ls_dy.FieldByName('gysj').Asstring;
     if ((length(qry_cx.FieldByName('xmmc').Asstring)*8) div 200)<=2 then
      paper_size:=paper_size+((length(qry_cx.FieldByName('gysj').Asstring)*8) div 46)
     else
      paper_size:=paper_size+((length(qry_cx.FieldByName('xmmc').Asstring)*8) div 200);
     if qry_cx.FieldByName('fzph').asstring<>'' then
     begin
      I:=(length(qry_cx.FieldByName('xmmc').Asstring)*8) div 200;
      QRImage1.enabled:=true;
      QRImage1.top:=1;
      QRImage1.left:=ypyf_ls.left-20;
      QRImage1.height:=i*ypyf_ls.height;
      ypyf_ls.top:= 1;
      ypyf_ls.Caption:=trim(qry_cx.FieldByName('yytj').asstring)+'  '+trim(qry_cx.FieldByName('ypyf').asstring);
      xmmc_ls.Width:=284;
      xmmc_ls.caption := qry_cx.FieldByName('xmmc').Asstring;
     end
     else
     begin
       QRImage1.enabled:=false;
       xmmc_ls.Width:=334;
       ypyf_ls.Caption:='';
       xmmc_ls.caption := qry_cx.FieldByName('xmmc').Asstring+'  '+trim(qry_cx.FieldByName('yytj').asstring)
        +'  '+trim(qry_cx.FieldByName('ypyf').asstring);
     end;
     zxsj_ls.Caption := qry_cx.FieldByName('gysj').Asstring;

     if (Pos('术后医嘱',qry_cx.FieldByName( 'xmmc' ).Asstring)>0) or (Pos('转入医嘱',qry_cx.FieldByName( 'xmmc' ).Asstring)>0)
     or (Pos('产后医嘱',qry_cx.FieldByName( 'xmmc' ).Asstring)>0) or  (Pos('重整医嘱',qry_cx.FieldByName( 'xmmc' ).Asstring)>0) then
    begin
      QRShape9.Enabled:=True;
      ksrq_ls.Enabled:=false;
      kdys_ls.Enabled:=false;
      zxsj_ls.Enabled:=false;
      zxryxm_ls.Enabled:=false;

    end
    else
    begin
      QRShape9.Enabled:=false;
      ksrq_ls.Enabled:=true;
      kdys_ls.Enabled:=true;
      zxsj_ls.Enabled:=true;
      zxryxm_ls.Enabled:=true;
    end;
     qry_cx.Next;

     if ksrq_ls.Height>xmmc_ls.Height then
     hei:=ksrq_ls.Height
     else
     hei:=xmmc_ls.Height;
     
     QRShape1.Height:=hei+32;
     QRShape3.Height:=hei+32;
     QRShape6.Height:=hei+32;
     QRShape7.Height:=hei+32;
//     QRShape9.Height:=hei+32;
     QRShape10.Height:=hei+32;
     QRShape11.Height:=hei+32;
  end;
end;

procedure Tfrm_lsyzxzdy.zdExecute(Sender: TObject);
begin
DBGridEh1.ReadOnly:=true;
end;

end.

