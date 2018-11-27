unit p_bqgl_fycl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, DBSumLst, Grids, DBGridEh, Mask, DBCtrls, StdCtrls,
  Buttons, DBGrids, ActnList, GridsEh, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,VARIANTS, DBGridEhGrouping;
type
  THACKDBGRID = class( TCUSTOMGRID );
type
  Tfrm_fycl = class( TForm )
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    tmh: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    fylb: TEdit;
    zfy: TEdit;
    zyj: TEdit;
    Label5: TLabel;
    bch: TEdit;
    ad_zyfymx_ls: TADODataSet;
    sp_cx_sfxm: TADOStoredProc;
    sp_cx_zybrjbqk: TADOStoredProc;
    ds_sfmx: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    zzf: TEdit;
    syje: TEdit;
    B_ENTER: TBitBtn;
    B_FINAL: TBitBtn;
    ds_zybrjbqk: TDataSource;
    ad_zyfymx_lsid: TAutoIncField;
    ad_zyfymx_lstmh: TStringField;
    ad_zyfymx_lszyh: TStringField;
    ad_zyfymx_lskdks: TStringField;
    ad_zyfymx_lsczks: TStringField;
    ad_zyfymx_lskdys: TStringField;
    ad_zyfymx_lsczys: TStringField;
    ad_zyfymx_lsfydm: TStringField;
    ad_zyfymx_lsfysl: TIntegerField;
    ad_zyfymx_lsfyje: TBCDField;
    ad_zyfymx_lszkje: TBCDField;
    ad_zyfymx_lsssje: TBCDField;
    ad_zyfymx_lszfje: TBCDField;
    ad_zyfymx_lssfczy: TStringField;
    ad_zyfymx_lssfrq: TDateTimeField;
    ad_zyfymx_lssjbh: TStringField;
    ad_zyfymx_lscfbh: TStringField;
    ad_zyfymx_lstfbz: TBooleanField;
    ad_zyfymx_lstfczy: TStringField;
    ad_zyfymx_lstfrq: TDateTimeField;
    ad_zyfymx_lsjzbz: TBooleanField;
    ad_zyfymx_lsjsbz: TBooleanField;
    ad_zyfymx_lsjsdh: TStringField;
    ad_zyfymx_lsbz: TStringField;
    ad_zyfymx_lsfydmmc: TStringField;
    ad_sfxm: TADODataSet;
    ds_sfxm: TDataSource;
    ActionList1: TActionList;
    jshj: TAction;
    jf: TAction;
    zf: TAction;
    xg: TAction;
    ad_zycfzb: TADODataSet;
    sp_cx_syje: TADOStoredProc;
    sp_up_brfymxcl: TADOStoredProc;
    sp_cx_czyks: TADOStoredProc;
    ds_ysks: TDataSource;
    B_giveup: TBitBtn;
    Label13: TLabel;
    RYRQ: TEdit;
    ds_sp_sfxm: TDataSource;
    ds_cx_sfxm: TDataSource;
    Label15: TLabel;
    kdks: TEdit;
    Label16: TLabel;
    kdys: TEdit;
    Label17: TLabel;
    czks: TEdit;
    Label18: TLabel;
    czys: TEdit;
    ad_zyfymx_lsph: TStringField;
    ad_zyfymx_lssbfybl: TFloatField;
    ad_zyfymx_lsbxfybl: TFloatField;
    ad_zyfymx_lshtfybl: TFloatField;
    fydmgrid: TDBGrid;
    F5: TAction;
    F6: TAction;
    tempgrid1: TDBGrid;
    ksys_grid: TDBGrid;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Label6: TLabel;
    fydm: TEdit;
    Label7: TLabel;
    gg: TDBEdit;
    Label8: TLabel;
    sfbz: TEdit;
    Label9: TLabel;
    sl: TDBEdit;
    Label10: TLabel;
    je: TDBEdit;
    Label14: TLabel;
    bz: TEdit;
    Label19: TLabel;
    zdqf: TEdit;
    Label20: TLabel;
    Edit1: TEdit;
    Label21: TLabel;
    xmbz: TEdit;
    Panel4: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    cljf: TAction;
    ADOQuery1: TADOQuery;
    qry_delete_fyls: TADOQuery;
    ad_zyfymx_lssbfybl01: TFloatField;
    ad_zyfymx_lssbfybl02: TFloatField;
    ad_zyfymx_lsfysl1: TBCDField;
    CheckBox1: TCheckBox;
    cxDateEdit1: TcxDateEdit;
    qry_fylb: TADOQuery;
    BitBtn1: TBitBtn;
    ad_zyfymx_lssjfysl: TBCDField;
    sp_checkwpkc: TADOStoredProc;
    procedure czysKeyPress( Sender: TObject; var Key: Char );
    procedure kdysKeyPress( Sender: TObject; var Key: Char );
    procedure tmhExit( Sender: TObject );
    procedure tempgrid1Exit( Sender: TObject );
    procedure tempgrid1KeyPress( Sender: TObject; var Key: Char );
    procedure fydmExit( Sender: TObject );
    procedure slExit( Sender: TObject );
    procedure jeExit( Sender: TObject );
    procedure B_ENTERClick( Sender: TObject );
    procedure ad_zyfymx_lsAfterScroll( DataSet: TDataSet );
    procedure kdysExit( Sender: TObject );
    procedure czksExit( Sender: TObject );
    procedure czysExit( Sender: TObject );
    procedure ksys_gridExit( Sender: TObject );
    procedure kdksExit( Sender: TObject );
    procedure fydmEnter( Sender: TObject );
    procedure B_giveupClick( Sender: TObject );
    procedure tmhEnter( Sender: TObject );
    procedure jfExecute( Sender: TObject );
    procedure xgExecute( Sender: TObject );
    procedure fydmgridExit( Sender: TObject );
    procedure fydmgridEnter( Sender: TObject );
    procedure fylbEnter( Sender: TObject );
    procedure kdksEnter( Sender: TObject );
    procedure kdysEnter( Sender: TObject );
    procedure czksEnter( Sender: TObject );
    procedure czysEnter( Sender: TObject );
    procedure ggEnter( Sender: TObject );
    procedure sfbzEnter( Sender: TObject );
    procedure slEnter( Sender: TObject );
    procedure jeEnter( Sender: TObject );
    procedure fylbExit( Sender: TObject );
    procedure ggExit( Sender: TObject );
    procedure sfbzExit( Sender: TObject );
    procedure fydmgridDblClick( Sender: TObject );
    procedure B_FINALClick( Sender: TObject );
    procedure fydmgridKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure ad_zyfymx_lsBeforePost( DataSet: TDataSet );
    procedure ad_zyfymx_lsAfterPost( DataSet: TDataSet );
    procedure ad_zyfymx_lsAfterDelete( DataSet: TDataSet );
    procedure FormShow( Sender: TObject );
    procedure DBGridEh2KeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure F5Execute( Sender: TObject );
    procedure F6Execute( Sender: TObject );
    procedure slKeyPress( Sender: TObject; var Key: Char );
    procedure cljfExecute( Sender: TObject );
    procedure sfbzKeyPress( Sender: TObject; var Key: Char );
    procedure ksys_gridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    BIsSave: boolean; //保存
    FBhszfylrxs: Boolean; //护士站费用录入小数
    Fcrzyh:string;//传入住院号
    _tsbz,xzfy: Boolean; //calmhawk---提示标志。
    function DBGridRecordSize(mColumn: TColumn): Boolean;
    function DBGridAutoSize(mDBGrid: TDBGrid; mOffset: Integer = 5):Boolean;
  public
    { Public declarations }
    procedure displayvalue;
    procedure dispysks( tempedit: Tedit; dm: string; czfs: integer; var pri_var: string ); //显示医生科室
    procedure datasave( tablename: string ); //处理药存盘
    procedure sfxmwriteIn; //收费项目写入
    procedure kdyskdks( cledit: Tedit; var dm: string );
    procedure ksprocess( tempedit: Tedit; var pri_var: string );
    procedure ysprocess( tempedit: TEdit; var pri_var: string );
    procedure checksyje;
    procedure wscljf;
    function YZ_lr_wpcheck: Boolean;
    property BHSZFYLRXS:Boolean  read FBhszfylrxs;
    property crzyh:string  read Fcrzyh write Fcrzyh;
  end;

var
  frm_fycl: Tfrm_fycl;
  lskey, ph, xycf_bh, v_zyh, v_ypmc, pri_kdks, pri_kdys, pri_czks, pri_czys, pri_fylb: string;
  ypmcxg, //表示药品名称有无改变
  qhbz, //表示是否马上求和 true 求和 false 不求
  ysksischange: boolean; //表示从开单科室出来时科室有无变化
  changedflag: boolean; //表示药品明细有无改变
  hjlb: integer; // 划价列标志，某列出错则将此列计如此变量否则次变量为-1
  csjls: integer;
  lostsender: Tobject;
  SavePlace: TBookmark;
  ESCKEY, czwcg, insertflag, czcg, syjechanged, fydmlostfocus: boolean; //药品查找成功
  dispinit: boolean = false; //显示初始化
  dj:real;
implementation

uses P_dm, p_func, p_bqgl_clhj,Math, p_ICF;
{$R *.DFM}

procedure Tfrm_fycl.wscljf;
begin
  try
    application.createform( Tfrm_clcfhj, frm_clcfhj );
    frm_clcfhj.tmh.text := tmh.text;
    frm_clcfhj.showmodal;
  finally
    frm_clcfhj.free;
  end;
end;

procedure Tfrm_fycl.checksyje;
begin
  //对预交病人首先判断（前次剩余金额-本次发生金额）=syje.text+允许该
  //病人最大欠费金额+允许操作员能够处理的病员最大欠费 是否小于0 超过则不能继续记账
  // 如果（前次剩余金额-本次发生金额）=syje.text+允许操作员能够处理的病员最大欠费
  //如果小于0则需提示操作员。
  //如果（前次剩余金额-本次发生金额）=syje.text如果小于0则需提示操作员。
  //IF NOT B_ENTER.FOCUSED THEN
  if strtofloat( syje.text ) + sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat + pub_czje < 0 then
    if messagedlg( '计帐金额，已经超过此人最大记账金额，不能继续记账' + #13 + #13 + '是否作废此次记账？', mtwarning, [mbyes, mbno], 0 ) = mryes then
      //此次记账作废
    begin
      if ad_zyfymx_ls.state in [dsedit, dsinsert] then
        ad_zyfymx_ls.post;
      panel1.enabled := true;
      fydm.text := '';
      fydm.SetFocus;
      b_enter.Enabled := false;
      ad_zyfymx_ls.delete;
    end;
end;

procedure Tfrm_fycl.displayvalue;
begin
  dispinit := true;
  qhbz := false;
  tmh.text := sp_cx_zybrjbqk.fieldbyname( 'tmh' ).asstring;
  Edit1.text := sp_cx_zybrjbqk.fieldbyname( 'brxm' ).asstring;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_cx_zybrjbqk.fieldbyname( 'bch' ).asstring ) + '''';
  DM_data.qry_pub.Open;
  bch.text := DM_data.qry_pub.fieldbyname( 'yybch' ).asstring;
  fylb.text := sp_cx_zybrjbqk.fieldbyname( 'lbmc' ).asstring;
  RYRQ.TEXT := datetostr( sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asdatetime );
  zyj.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asfloat] );
  zfy.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat] );
  zzf.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zfze' ).asfloat] );
  if pub_yydm='0240' then
  begin
    syje.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asfloat - sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat] );
  end
  else
  begin
    syje.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asfloat - sp_cx_zybrjbqk.fieldbyname( 'zfze' ).asfloat] );
  end;

  bz.text := sp_cx_zybrjbqk.fieldbyname( 'ryzd' ).asstring;
  if sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat > 100000 then
    zdqf.text := '*********'
  else
    zdqf.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat] );
  v_zyh := sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
 // ad_zyfymx_ls.DisableControls;
  ph := get_sjh( pub_czydm );
  ad_zyfymx_ls.Close;
  ad_zyfymx_ls.commandtext := 'select * from zysf_zyfymx_ls where zyh=' + #39 + v_zyh + #39;
  ad_zyfymx_ls.open;
  _tsbz := false;
  while not ad_zyfymx_ls.Eof do
  begin
    ad_zyfymx_ls.Edit;
    ad_zyfymx_ls.FieldByName( 'ph' ).Value := ph;
    ad_zyfymx_ls.FieldByName( 'sfrq' ).Value := frm_func.curr_date;
    ad_zyfymx_ls.Post;
    ad_zyfymx_ls.Next;
  end;
  _tsbz := true;
//  ad_zyfymx_ls.EnableControls;
  pri_kdks := sp_cx_zybrjbqk.fieldbyname( 'ksdm' ).asstring;
  pri_kdys := sp_cx_zybrjbqk.fieldbyname( 'zgys' ).asstring;
  kdks.text := sp_cx_zybrjbqk.fieldbyname( 'ksmc' ).asstring;
  kdys.text := sp_cx_zybrjbqk.fieldbyname( 'ysxm' ).asstring;
  kdys.setfocus;

  qry_fylb.Close;
  qry_fylb.sql.clear;
  qry_fylb.sql.Add('SELECT * FROM dbo.zysf_zydj a,sys_fylb b WHERE a.fylb=b.dm AND b.xzfysfbz=1 AND a.zyh=:zyh');
  qry_fylb.Parameters.ParamByName('zyh').Value:=sp_cx_zybrjbqk.fieldbyname( 'zyh' ).AsString;
  qry_fylb.Open;
  if qry_fylb.RecordCount<>0 then
  begin
   xzfy:=True;
  end
  else
  begin
    xzfy:=False;
  end;

end;

procedure Tfrm_fycl.tmhExit( Sender: TObject );
var
  xnzk: TXNZK;
begin
  frm_func.restorecolor( sender );
  if ( length( tmh.text ) < 9 ) and ( trim( tmh.text ) <> '' ) then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select a.* from zysf_zydj a,sys_kscwsz b where a.zyh=b.zyh and b.yybch=' + '''' + trim( tmh.text ) + '''' +
      ' and a.cybz=0 and b.bqdm=' + '''' + pub_bqdm + ''' order by a.ryrq desc';
    DM_data.qry_pub.Open;
    if not DM_data.qry_pub.IsEmpty then
    begin
       tmh.text := DM_data.qry_pub.FieldByName( 'tmh' ).AsString;
       Fcrzyh := DM_data.qry_pub.FieldByName( 'zyh' ).AsString;
    end;
  end;
  if not ( B_FINAL.Focused ) and ( trim( tmh.text ) <> '' ) then
  begin
    tmh.text := copy( '000000000', 0, 9 - length( tmh.text ) ) + tmh.text;
    sp_cx_zybrjbqk.Filtered := False;
    with sp_cx_zybrjbqk do
    begin
      Close;
      parameters.ParamByName( '@tmh' ).value := trim( tmh.text );
      parameters.ParamByName( '@xm' ).value := trim( tmh.text );
      parameters.ParamByName( '@bch' ).value := trim( tmh.text );
      parameters.ParamByName( '@ksdm' ).value := pub_bqdm;
      parameters.ParamByName( '@zyh' ).value := trim(Fcrzyh);
      active := true;
    end;

    sp_cx_zybrjbqk.First;
    while not sp_cx_zybrjbqk.Eof do
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where cybz=0 and zyh=' + '''' + sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring + '''';
      DM_data.qry_pub.Open;
      if not DM_data.qry_pub.IsEmpty then
        Break;
      sp_cx_zybrjbqk.Next;
    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where cybz=0 and zyh=' + '''' + sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring + '''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      Application.MessageBox( '没有此病人,或已经出院！', '错误', 0 + 16 );
      tmh.SetFocus;
      Exit;
    end;

    //虚拟转科 检查
    xnzk := TXNZK.create(sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring);

    sp_cx_zybrjbqk.Filtered := False;
    sp_cx_zybrjbqk.Filter := ' zyh =' + '''' + sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring + '''';
    sp_cx_zybrjbqk.Filtered := true;
    sp_cx_zybrjbqk.First;
    if ( sp_cx_zybrjbqk.isempty ) or
      ( (not xnzk.Existing) and (sp_cx_zybrjbqk.FieldByName( 'bqdm' ).AsString <> pub_bqdm )) then
    begin
      Application.MessageBox( '没有此病人！', '错误', 0 + 16 );
      tmh.setfocus;
    end
    else
      if sp_cx_zybrjbqk.recordcount > 1 then
      begin
        tempgrid1.Columns.Clear;
        tempgrid1.Columns.add;
        tempgrid1.Columns[0].field := sp_cx_zybrjbqk.fieldlist[0];
        tempgrid1.Columns[0].title.caption := '条码号';
        tempgrid1.Columns.add;
        tempgrid1.Columns[1].field := sp_cx_zybrjbqk.fieldlist[2];
        tempgrid1.Columns[1].title.caption := '姓名';
        tempgrid1.left := tmh.left;
        tempgrid1.top := Panel4.Height + tmh.top + tmh.Height;
        tempgrid1.visible := true;
        tempgrid1.setfocus;
      end
      else
      begin
        displayvalue;
        Panel3.enabled := true;
        syj := sp_cx_zybrjbqk['yjbz'];
        kdys.setfocus;
      end;
  end
  else
    if ( trim( tmh.text ) = '' ) and ( not ( b_final.focused or B_giveup.focused ) ) then
    begin
      Application.MessageBox( '请输入条码号或病床号或病人姓名！', '错误', 0 + 16 );
      tmh.setfocus;
    end;

  BIsSave := false;
end;

procedure Tfrm_fycl.tempgrid1Exit( Sender: TObject );
begin
  tmh.text := sp_cx_zybrjbqk['brxm'];
  syj := sp_cx_zybrjbqk['yjbz'];
  tempgrid1.Visible := false;
  displayvalue;
  Panel3.Enabled := true;
  kdys.SetFocus;
end;

procedure Tfrm_fycl.tempgrid1KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    if tempgrid1.tag = 4 then
      fydm.setfocus
    else
    if not BIsSave then
    begin
      SelectNext( activeControl, true, true );
    end;
  end;
end;

procedure Tfrm_fycl.fydmExit( Sender: TObject );
var
  fydmstr: string;
begin

  if BIsSave or b_enter.Focused or B_giveup.Focused or ( trim( fydm.text ) = '' ) then
  begin
    abort;
  end;
  frm_func.restorecolor( sender );
  fydmstr := trim( fydm.text );
  ypmcxg := true;
  if not ( b_enter.Focused or b_final.Focused or dbgrideh2.Focused or b_giveup.focused
    or kdys.focused or kdks.focused or czks.Focused or czys.focused or B_giveup.focused or tmh.focused ) then
    sp_cx_sfxm.Close;
  sp_cx_sfxm.Parameters.ParamByName( '@fydm' ).value := fydmstr;
  sp_cx_sfxm.Parameters.ParamByName( '@fymc' ).value := fydmstr;
  sp_cx_sfxm.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_cx_sfxm.Parameters.ParamByName( '@pym' ).value := fydmstr;
  if xzfy then
  sp_cx_sfxm.Parameters.ParamByName( '@sfxz' ).value :=1
  else
  sp_cx_sfxm.Parameters.ParamByName( '@sfxz' ).value :=0 ;
  sp_cx_sfxm.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
  sp_cx_sfxm.Open;
  if sp_cx_sfxm.IsEmpty then
  begin
    application.MessageBox( '没有找到该收费项目，请验证无误后重新输入！', '错误',
      MB_OK + MB_ICONERROR );
    fydm.setfocus;
    czcg := false;
    fydmlostfocus := false;
  end
  else
    if sp_cx_sfxm.recordcount > 1 then
      fydmgrid.setfocus
    else
      if sp_cx_sfxm.recordcount = 1 then
      begin
        fydmstr := sp_cx_sfxm['fydm'];
        fydmlostfocus := false;
        if trim(sp_cx_sfxm.fieldbyname( 'zyksgs' ).asstring) <> '' then
          pri_czks := sp_cx_sfxm['zyksgs']
        else
        begin
          if pub_yydm='0003' then
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text:='select * from sys_ksdm where sybz=1 and rtrim(mc)='+''''+
                                    Trim(czks.text)+'''';
            DM_data.qry_pub.open;
            if DM_data.qry_pub.IsEmpty then
              pri_czks := pri_kdks
            else
              pri_czks := Trim(DM_data.qry_pub.FieldByName('dm').asstring);
            //pri_czks:=pri_kdks;
          end
          else if pub_yydm='0031' then   //镇巴县医院，没有绑定科室的项目处置科室根据处置处置人员得到
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text:='select ksdm from sys_czy where  rtrim(dm)='+''''+
                                    Trim(pri_czys)+'''';
            DM_data.qry_pub.open;
            if DM_data.qry_pub.IsEmpty then
              pri_czks := pri_kdks
            else
              pri_czks := Trim(DM_data.qry_pub.FieldByName('ksdm').asstring);
            //pri_czks:=pri_kdks;
          end
          else if pub_yydm='0250' then
          begin
            if pri_czks='' then
            begin
              pri_czks:=pri_kdks;
            end;
          end
          else
          begin
            pri_czks:=pri_kdks;
          end;
        end;
        sfxmwriteIn;
      end;
  if BIsSave then
  begin
    tmh.SetFocus;
    tmh.SelectAll;
  end;
//  fydm.Text := '';
end;


procedure Tfrm_fycl.datasave( tablename: string );
var
  i: integer;
begin
  dm_data.ado_mydata.BeginTrans;
  try
    dm_data.ado_mydata.CommitTrans;
    changedflag := false;
    fydm.text := '';
    fydm.SetFocus;
    b_enter.Enabled := true;
  except
    dm_data.ado_mydata.RollbackTrans;
    Application.MessageBox( '数据没有正确保存，请再次保存', '错误', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR )
  end;
end;

procedure Tfrm_fycl.sfxmwriteIn;
begin
  if not ad_zyfymx_ls.active then
  begin
    ad_zyfymx_ls.Close;
    ad_zyfymx_ls.commandtext := 'select * from zysf_zyfymx_ls where and ph=' + #39 + ph + #39 + ' and zyh=' + #39 + sp_cx_zybrjbqk['zyh'] + #39;
    ad_zyfymx_ls.open;
  end;
  if ( ad_zyfymx_ls.isempty ) or ( trim( ad_zyfymx_ls.FieldByName( 'fydm' ).asstring ) <> '' ) then
    ad_zyfymx_ls.append
  else
    if ( not ad_zyfymx_ls.isempty ) and ( trim( ad_zyfymx_ls.FieldByName( 'fydm' ).asstring ) = '' ) then
      ad_zyfymx_ls.edit;
  ad_zyfymx_ls['fydm'] := sp_cx_sfxm['fydm'];
  ad_zyfymx_ls['zyh'] := sp_cx_zybrjbqk['zyh'];
  ad_zyfymx_ls['tmh'] := sp_cx_zybrjbqk['tmh'];
  ad_zyfymx_ls['kdks'] := pri_kdks;
  ad_zyfymx_ls['kdys'] := pri_kdys;
//  if trim( sp_cx_sfxm.fieldbyname( 'zyksgs' ).asstring ) <> '' then
//    ad_zyfymx_ls['czks'] := sp_cx_sfxm['zyksgs']
//  else
//  begin
////    if pri_czks<>'' then
////    ad_zyfymx_ls['czks'] := pri_czks
////    else
////    ad_zyfymx_ls['czks'] := pri_kdks;
//    if pri_czys<>'' then
//    begin
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='select * from sys_czy where sybz=1 and dm='+''''+pri_czys+'''';
//      DM_data.qry_pub.Open;
//      ad_zyfymx_ls['czks'] := DM_data.qry_pub['ksdm'];
//    end
//    else
//    begin
//      ad_zyfymx_ls['czks'] := pri_kdks;
//    end;
//  end;
  if czys.Text='' then
  begin
    ad_zyfymx_ls['czys'] := pub_czydm; //roro
  end
  else
  begin
    ad_zyfymx_ls['czys'] := pri_czys; //roro
  end;
  
  ad_zyfymx_ls['czks'] := pri_czks;

  dispysks( czks, pri_czks, 2, pri_czks );
  //ad_zyfymx_ls['czys'] := pri_czys;

  ad_zyfymx_ls['sfczy'] := pub_czydm;
  ad_zyfymx_ls['cfbh'] := xycf_bh;
  ad_zyfymx_ls['sfrq'] := frm_func.curr_date( );
  ad_zyfymx_ls['ph'] := ph;
  sfbz.text := format( '%3.2f', [sp_cx_sfxm.fieldbyname( 'sfbz' ).asfloat] );

  if ( sp_cx_sfxm['sfbz'] > 0 ) and ( pub_sfsdsfbz ) then
  begin
    sfbz.ReadOnly := True;
    je.ReadOnly := true;
  end
  else
  begin
    sfbz.ReadOnly := false;
    je.ReadOnly := false;
  end;
  //sl.SetFocus;
// fydm.text := trim(sp_cx_sfxm['fymc']);
  xmbz.text := trim( sp_cx_sfxm.fieldbyname( 'bak' ).asstring );
end;

procedure Tfrm_fycl.slExit( Sender: TObject );
begin
if ad_zyfymx_ls.Active then
 begin
  frm_func.restorecolor( sender );
  if not FBhszfylrxs then
  begin
    if not ( b_final.Focused or fydm.Focused ) then
    begin
      if ( ad_zyfymx_ls.fieldbyname( 'fysl' ).asinteger > 0 ) and ( sl.Text <> '' ) then
      begin
        ad_zyfymx_ls.edit;
        ad_zyfymx_ls['fysl'] := strtofloat( sl.text );
        ad_zyfymx_ls['sjfysl'] :=strtofloat(sl.text);
        ad_zyfymx_ls['fyje'] := ad_zyfymx_ls['fysl'] * StrToFloat(sfbz.text);
        if trim( sp_cx_zybrjbqk.fieldbyname( 'zfzdmc' ).asstring ) <> '' then
        begin
          if sp_cx_zybrjbqk.fieldbyname( 'ybndzje' ).asfloat - sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat > 0 then /////-strtofloat(bcje.text)
            ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'] * ad_zyfymx_ls[trim( sp_cx_zybrjbqk.fieldbyname( 'zfzdmc' ).asstring )] / 100
          else
            ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'];
        end
        else
          ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fysl'] * strtofloat( sfbz.text );
      end
      else
      begin
        application.MessageBox( '数量为0，请核对无误后重新输入', '提示', MB_OK + MB_ICONINFORMATION );
        sl.SelectAll;
        sl.setfocus;
      end;
    end;
  end
  else
  begin
    if not (b_final.Focused or fydm.focused) then
    begin
      if (trim(sl.text)<>'') then
      begin
        if strtofloat(sl.text) > 0 then
        begin
          ad_zyfymx_ls.edit;
          ad_zyfymx_ls['fysl'] := ceil(strtofloat(sl.text));
          ad_zyfymx_ls['fysl1'] := strtofloat(sl.text);
          ad_zyfymx_ls['sjfysl'] :=strtofloat(sl.text) ;
          ad_zyfymx_ls['fyje'] := strtofloat(sl.text) * strtofloat(sfbz.text);
          if trim(sp_cx_zybrjbqk.fieldbyname('zfzdmc').asstring) <> '' then
          begin
            if sp_cx_zybrjbqk.fieldbyname('ybndzje').asfloat - sp_cx_zybrjbqk.fieldbyname('zfy').asfloat > 0 then /////-strtofloat(bcje.text)
              ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'] * ad_zyfymx_ls['sbfybl'] / 100
            else
              ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'];
          end
          else
            ad_zyfymx_ls['zfje'] := strtofloat(sl.text) * strtofloat(sfbz.text);
        end
        else
        begin
          application.MessageBox('数量等于或小于0，请核对无误后重新输入', '提示', MB_OK + MB_ICONINFORMATION);
          sl.setfocus;
        end;
      end
      else
      begin
        application.MessageBox('数量不能为空，请核对无误后重新输入', '提示', MB_OK + MB_ICONINFORMATION);
        sl.setfocus;
      end;
    end;
  end;
 end;
end;

procedure Tfrm_fycl.jeExit( Sender: TObject );
begin
  if ( ad_zyfymx_ls.FieldByName( 'fyje' ).AsFloat <= 0 ) then
  begin
    application.MessageBox( '注意:金额小于等于0!', '错误', mb_ok + mb_iconerror );
    Exit;
  end;
  frm_func.restorecolor( sender );
  if not ( b_final.Focused or fydm.focused or tmh.focused ) then
  begin
    if length( trim( je.text ) ) = 0 then
    begin
      application.MessageBox( '注意:金额不能为空!', '错误', mb_ok + mb_iconerror );
      je.SelectAll;
      je.setfocus;
      abort;
    end;
    if strtofloat( je.Text ) > 0 then
    begin
    //  fydm.setfocus;

      ad_zyfymx_ls.post;
      fydm.SetFocus;
     { sfbz.text:='';
      sl.Text:='';
      je.text:='';   }
      //   sp_cx_sfxm.close;
    end
    else
    begin
      application.MessageBox( '注意:金额为0!', '错误', mb_ok + mb_iconerror );
      je.SelectAll;
      je.setfocus;
    end;
  end
  else // 当金额为零又把输入点切换到费用代码，条码号，退出地方时，检查金额
  begin
    if ( ad_zyfymx_ls.FieldByName( 'fyje' ).AsFloat <= 0 ) then
      ad_zyfymx_ls.Delete;
  end;
end;

procedure Tfrm_fycl.BitBtn1Click(Sender: TObject);
begin
cljfExecute(sender);
end;

procedure Tfrm_fycl.B_ENTERClick( Sender: TObject );
var
  i: integer;
  returnvalue: string;
  zqbcbz: boolean; //zyfymx_ls保存正确时置此标志
begin
  //写入zysf_zyfymx_ls
  //为各划价着手费标志
  //将临时表写入正式表
  //转入姓名处理下一人
  ad_zyfymx_ls.First;
  while not ad_zyfymx_ls.eof do
  begin
    if ( ad_zyfymx_ls.FieldByName( 'fyje' ).AsFloat <= 0 ) then
    begin
      application.MessageBox( '注意:金额小于等于0!', '错误', mb_ok + mb_iconerror );
      Exit;
    end;
    ad_zyfymx_ls.Next;
  end;
  
  with dm_data.qry_pub do
  begin
    close;
    sql.clear;
    sql.text := 'select * from sys_jzzt';
    open;
  end;
  if dm_data.qry_pub['jzzt'] then
  begin
    application.MessageBox( '系统正在结转数据请稍候!', '提示', 0 + 48 );
    abort;
  end;
  if ( ad_zyfymx_ls.fieldbyname( 'fysl' ).asinteger = 0 ) or ( ad_zyfymx_ls.fieldbyname( 'fyje' ).asfloat = 0 ) then
  begin
    application.MessageBox( '数量或金额为0，请核对无误后重新输入', '提示', MB_OK + MB_ICONINFORMATION );
    sl.SetFocus;
  end
  else
  begin
    if ( ad_zyfymx_ls.state = dsedit ) or ( ad_zyfymx_ls.state = dsinsert ) then
      ad_zyfymx_ls.post;

    sp_cx_syje.close;
    sp_cx_syje.Parameters.ParamByName( '@zyh' ).value := sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
    sp_cx_syje.Open;
    if dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[2] ) = '0' then
    begin
      if pub_yydm<>'0240' then
      syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat -
        sp_cx_syje.fieldbyname( 'zfze' ).asfloat -
          ad_zyfymx_ls.fieldbyname( 'ZFje' ).asfloat] )
      else
        syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat -
        sp_cx_syje.fieldbyname( 'zfy' ).asfloat -
          ad_zyfymx_ls.fieldbyname( 'fyje' ).asfloat] )
    end
    else
    begin
      if pub_yydm<>'0240' then
      syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat -
        sp_cx_syje.fieldbyname( 'zfze' ).asfloat -
          strtofloat( dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[2] ) )] )
      else
        syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat -
        sp_cx_syje.fieldbyname( 'zfy' ).asfloat -
         strtofloat( dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[1] ) )] );

    end;
    b_enter.setfocus;
    i := 1;
    zqbcbz := false;

    if pub_yydm<>'0108' then
    begin
    ad_zyfymx_ls.First;
    while not ad_zyfymx_ls.eof do
    begin
      if (ad_zyfymx_ls.FieldByName('czks').asstring='0000') or
       (trim(ad_zyfymx_ls.FieldByName('czks').asstring)='')  then
      begin
        ad_zyfymx_ls.Edit;
        ad_zyfymx_ls.FieldByName('czks').asstring:=ad_zyfymx_ls.FieldByName('kdks').asstring;
        ad_zyfymx_ls.Post;
      end;
      ad_zyfymx_ls.Next;
    end;
    end
    else
    begin
    ad_zyfymx_ls.First;
    while not ad_zyfymx_ls.eof do
    begin
      if (trim(ad_zyfymx_ls.FieldByName('czks').asstring)='')  then
      begin
        ad_zyfymx_ls.Edit;
        ad_zyfymx_ls.FieldByName('czks').asstring:=ad_zyfymx_ls.FieldByName('kdks').asstring;
        ad_zyfymx_ls.Post;
      end;
      ad_zyfymx_ls.Next;
    end;
    end;

    dm_data.ado_mydata.BeginTrans;
    try
      ad_zyfymx_ls.UpdateBatch( arall );
      zqbcbz := true;
      dm_data.ado_mydata.CommitTrans;
    except
      dm_data.ado_mydata.RollbackTrans;
      Application.MessageBox( '数据没有正确保存，请再次选择计费功能保存', '错误', MB_ok + MB_DEFBUTTON1 + MB_ICONERROR )
    end;
             //宁安市人民医院判断第三方材料库存的方法  2016-9-30 zhangwancai
      if pub_yydm = '0262' then
      begin
        if not YZ_lr_wpcheck then  Exit;
      end;
    if zqbcbz then // //记入病人费用
      //( strtofloat( syje.text ) >= 0 ) or
      if ( strtofloat( syje.text ) + sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat + pub_czje >= 0 ) then
      begin
        sp_up_brfymxcl.close;
        sp_up_brfymxcl.Parameters.ParamByName( '@ph' ).value := ad_zyfymx_ls['ph'];
        sp_up_brfymxcl.Parameters.ParamByName( '@zyh' ).value := ad_zyfymx_ls['zyh'];
        sp_up_brfymxcl.Parameters.ParamByName( '@fyze' ).value := strtofloat( dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[1] ) );
        if CheckBox1.Checked then
        begin
           sp_up_brfymxcl.Parameters.ParamByName( '@csfyrq' ).value := cxDateEdit1.date;   //增加参数字段
        end
        else
        begin
           sp_up_brfymxcl.Parameters.ParamByName( '@csfyrq' ).value := Frm_func.curr_date;   //
        end;
        sp_up_brfymxcl.Parameters.ParamByName( '@zkje' ).value := 0;
        sp_up_brfymxcl.Parameters.ParamByName( '@zfje' ).value := strtofloat( dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[2] ) );
        ;
        sp_up_brfymxcl.Parameters.ParamByName( '@qtfybs' ).value := ad_zyfymx_ls.recordcount;
        sp_up_brfymxcl.Parameters.ParamByName( '@sczt' ).value := '';
        sp_up_brfymxcl.ExecProc;
        returnvalue := sp_up_brfymxcl.Parameters.ParamByName( '@sczt' ).value;
        if returnvalue = '1' then
        begin
          Application.MessageBox( '记费成功!!!', '提示', MB_ok + MB_DEFBUTTON1 + MB_ICONwarning );
          panel1.enabled := true;
          BIsSave := true;
          tmh.SetFocus;
          tmh.SelectAll;
          b_giveup.Enabled := false;
          b_enter.Enabled := false;
          abort;
        end
        else
        begin
          Application.MessageBox( '数据没有正确保存，请再次选择计费功能保存', '错误', MB_ok + MB_DEFBUTTON1 + MB_ICONERROR )
        end
      end
      else
      begin
        if (pub_yydm='0015')  or  (pub_yydm = '0136' )then  //石泉中医院0136
        begin
        if application.messagebox( '病人账上资金不足，不能计费，处方数据已经保存，但该药品不会发出' + #13 + #13 + '                      请病人补充资金或删除处方数据！' + #13 + #13 + '                              是否删除费用？',
          '提示', mb_yesNo + mb_iconinformation ) = IDyes then
          begin
          ad_zyfymx_ls.First;
          while ad_zyfymx_ls.RecordCount>1 do
          begin
          ad_zyfymx_ls.Delete;
          ad_zyfymx_ls.Next;
          end;
          ad_zyfymx_ls.Delete;
          ad_zyfymx_ls.UpdateBatch( arall );
          dbgrideh2.setfocus;
          end
        else
        begin
          panel1.enabled := true;
          tmh.SetFocus;
          tmh.SelectAll;
          b_enter.Enabled := false;
          b_giveup.Enabled := false;
        end;
         end
        else
        begin


         Application.MessageBox( '病人账上金额不足，不能计费！', '错误', MB_ok + MB_DEFBUTTON1 + MB_ICONERROR );
         ad_zyfymx_ls.First;
         while ad_zyfymx_ls.RecordCount>1 do
         begin
          ad_zyfymx_ls.Delete;
          ad_zyfymx_ls.Next;
         end;
         ad_zyfymx_ls.Delete;
         ad_zyfymx_ls.UpdateBatch( arall );
         dbgrideh2.setfocus;
        end;
      end
  end
end;

procedure Tfrm_fycl.ad_zyfymx_lsAfterScroll( DataSet: TDataSet );
begin
  if _tsbz then
  begin
    if not ( ( ad_zyfymx_ls.state = dsInsert ) or ( ad_zyfymx_ls.state = dsedit ) ) then
    begin
      if ad_zyfymx_ls.fieldbyname( 'kdys' ).asstring = '' then
        dispysks( kdys, sp_cx_zybrjbqk.fieldbyname( 'zgys' ).asstring, 1, pri_kdys )
      else
        dispysks( kdys, ad_zyfymx_ls.fieldbyname( 'kdys' ).asstring, 1, pri_kdys );
      if ad_zyfymx_ls.fieldbyname( 'kdks' ).asstring <> '' then
        dispysks( kdks, ad_zyfymx_ls.fieldbyname( 'kdks' ).asstring, 2, pri_kdks )
      else
        dispysks( kdks, sp_cx_zybrjbqk.fieldbyname( 'ksdm' ).asstring, 2, pri_kdks );
      if ad_zyfymx_ls.fieldbyname( 'czys' ).asstring <> '' then
        dispysks( czys, ad_zyfymx_ls.fieldbyname( 'czys' ).asstring, 1, pri_czys )
      else
        dispysks( czys, pri_czys, 1, pri_czys );
      if ad_zyfymx_ls.fieldbyname( 'czks' ).asstring <> '' then
        dispysks( czks, ad_zyfymx_ls.fieldbyname( 'czks' ).asstring, 2, pri_czks )
      else
        dispysks( czks, pri_czks, 2, pri_czks );
      try
      if (ad_zyfymx_ls['fyje']<>null) and (ad_zyfymx_ls['fysl']<>null) then
        sfbz.Text:=FloatToStr(ad_zyfymx_ls['fyje']/ad_zyfymx_ls['fysl']);
      except

      end;
    end;
    if ad_zyfymx_ls.isempty then
    begin
      b_giveup.enabled := false;
      B_ENTER.enabled := false;
      try
       if (ad_zyfymx_ls['fyje']<>null) and (ad_zyfymx_ls['fysl']<>null) then
        sfbz.Text:=FloatToStr(ad_zyfymx_ls['fyje']/ad_zyfymx_ls['fysl']);
      except

      end;
    end
    else
    begin
      b_giveup.enabled := true;
      B_ENTER.enabled := true;
      try
       if (ad_zyfymx_ls['fyje']<>null) and (ad_zyfymx_ls['fysl']<>null) then
        sfbz.Text:=FloatToStr(ad_zyfymx_ls['fyje']/ad_zyfymx_ls['fysl']);
      except

      end;
    end;
  end;
end;

procedure Tfrm_fycl.kdysExit( Sender: TObject );
var CTmpLikeStr,CTmpSql:String;
begin
  frm_func.restorecolor( sender );
  if (Trim(kdys.text)='') and (not B_FINAL.Focused) then
  begin
    application.MessageBox( '没有录入开单医生代码！', '错误', mb_ok + mb_iconerror );
    kdys.SetFocus;
    Exit;
  end;
  if not ysksischange then exit;
  CTmpLikeStr := '%'+trim(kdys.text)+'%';
  with dm_data.qry_pub do
  begin
    close;
    sql.Clear;
    CtmpSql:= ' select a.dm,a.mc,a.pym,a.ksdm,b.mc ksmc '
    +' from sys_czy a LEFT JOIN sys_ksdm b ON a.ksdm=b.dm '
    +' where a.sybz=1 and a.txbz=0 AND a.ysbz=1 '
    +' AND a.pym+a.mc+a.dm like '''+CTmpLikeStr+'''';
    sql.add(CtmpSQL);
    open;
  end;
  ysksischange := false;
  if dm_data.qry_pub.IsEmpty then
  begin
    application.MessageBox('医生代码输入错误！', '', 16);
    kdys.SelectAll;
    kdys.SetFocus;
    exit;
  end;
  if dm_data.qry_pub.RecordCount > 1 then
  begin
    ksys_grid.DataSource:=Dm_data.DS_pub;
    ksys_grid.width:=500;
    ksys_grid.Columns.Clear;
    ksys_grid.Columns.add;
    ksys_grid.Columns[0].fieldName := 'dm';
    ksys_grid.Columns[0].title.caption := '代码';
    ksys_grid.Columns.add;
    ksys_grid.Columns[1].fieldName := 'mc';
    ksys_grid.Columns[1].title.caption := '姓名';
    ksys_grid.Columns.add;
    ksys_grid.Columns[2].fieldName := 'pym';
    ksys_grid.Columns[2].title.caption := '拼音缩写';
    ksys_grid.Columns.add;
    ksys_grid.Columns[3].fieldName := 'ksmc';
    ksys_grid.Columns[3].title.caption := '科室名称';
    if ksys_grid.width + kdys.left > panel1.width then
      ksys_grid.left := kdys.left - ksys_grid.width + kdys.width
    else
      ksys_grid.left := kdys.left;
    ksys_grid.tag := kdys.tag;
    ksys_grid.top := kdys.top + kdys.Height;
    ksys_grid.visible := true;
    DBGridAutoSize(ksys_grid);
    ksys_grid.setfocus;
    exit;
  end;
  if dm_data.qry_pub.RecordCount = 1 then
  begin
    //kdyskdks( kdys, pri_kdys);
    kdys.Text:=dm_data.qry_pub.FieldByName('mc').AsString;
    pri_kdys:=dm_data.qry_pub.FieldByName('dm').AsString;
    ksys_grid.visible:=false;
  end;
end;

procedure Tfrm_fycl.kdyskdks( cledit: Tedit; var dm: string );
var
  sender: Tobject;
  ksdm:string;
begin
  cledit.text := sp_cx_czyks['mc'];
  dm := sp_cx_czyks['dm'];
  ksys_grid.visible := false;
  if cledit=czys then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='select * from sys_czy where sybz=1 and dm='+''''+dm+'''';
    DM_data.qry_pub.Open;
    ksdm:= DM_data.qry_pub.FieldByName('ksdm').AsString;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='select * from sys_ksdm where sybz=1 and dm='+''''+ksdm+'''';
    DM_data.qry_pub.Open;
    czks.text:=DM_data.qry_pub.FieldByName('mc').AsString;
    pri_czks:= DM_data.qry_pub.FieldByName('dm').AsString;
    if (ad_zyfymx_ls.State<>dsInsert) and  (ad_zyfymx_ls.State<>dsEdit)   then
    ad_zyfymx_ls.Edit;
    ad_zyfymx_ls['czks']:= pri_czks;
    ad_zyfymx_ls['czys']:= dm;
    ad_zyfymx_ls.Post;
  end;
  if cledit=czks then
  begin
    if (ad_zyfymx_ls.State<>dsInsert) and  (ad_zyfymx_ls.State<>dsEdit)   then
    ad_zyfymx_ls.Edit;
    ad_zyfymx_ls['czks']:= dm;
    ad_zyfymx_ls.Post;
  end;
  
end;

procedure Tfrm_fycl.czksExit( Sender: TObject );
begin
  frm_func.restorecolor( sender );
//  if ( pub_yydm = '0124' ) or ( pub_yydm = '0137' ) or ( pub_yydm = '0013' )
//      or (pub_yydm = '0031') then
    ysksischange := true;
  if ysksischange then
    ksprocess( czks, pri_czks );
end;

procedure Tfrm_fycl.czysExit( Sender: TObject );
begin
  frm_func.restorecolor( sender );
  if ysksischange then
    ysprocess( czys, pri_czys )
  else
    fydm.setfocus;
end;

procedure Tfrm_fycl.ksys_gridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGridRecordSize(Column);
end;

procedure Tfrm_fycl.ksys_gridExit( Sender: TObject );
begin
  if ksys_grid.tag = kdks.tag then
    kdyskdks( kdks, pri_kdks )
  else
    if ksys_grid.tag = kdys.tag then
    begin
      kdys.Text:=dm_data.qry_pub.FieldByName('mc').AsString;
      pri_kdys:=dm_data.qry_pub.FieldByName('dm').AsString;
      ksys_grid.visible:=false;
      czys.setfocus;
    end
    else
      if ksys_grid.tag = CZKS.tag then
      begin
        kdyskdks( CZKS, pri_CZKS );
        czys.setfocus;
      end

      else
        if ksys_grid.tag = CZYS.tag then
        begin
          kdyskdks( CZYS, pri_CZys );
          fydm.setfocus;
        end
end;

procedure tfrm_fycl.ysprocess( tempedit: TEdit; var pri_var: string );
begin
  ksys_grid.DataSource:=ds_ysks;
  sp_cx_czyks.Close;
  sp_cx_czyks.Parameters.ParamByName( '@srm' ).value := trim( tempedit.Text );
  sp_cx_czyks.Parameters.ParamByName( '@czfs' ).value := 1;
  sp_cx_czyks.Parameters.ParamByName( '@kssx' ).value := '09';
  sp_cx_czyks.Open;
  ysksischange := false;
  if sp_cx_czyks.IsEmpty then
  begin
    application.MessageBox( '医生代码输入错误，请重新输入', '错误', mb_ok + mb_iconerror );
    tempedit.setfocus;
  end
  else
    if sp_cx_czyks.recordcount > 1 then
    begin
      ksys_grid.width:=500;
      ksys_grid.Columns.Clear;
      ksys_grid.Columns.add;
      ksys_grid.Columns[0].field := sp_cx_czyks.fieldlist[0];
      ksys_grid.Columns[0].title.caption := '代码';
      ksys_grid.Columns.add;
      ksys_grid.Columns[1].field := sp_cx_czyks.fieldlist[1];
      ksys_grid.Columns[1].title.caption := '姓名';
      ksys_grid.Columns.add;
      ksys_grid.Columns[2].field := sp_cx_czyks.fieldlist[2];
      ksys_grid.Columns[2].title.caption := '拼音缩写';
      ksys_grid.Columns.add;
      ksys_grid.Columns[3].field := sp_cx_czyks.fieldlist[4];
      ksys_grid.Columns[3].title.caption := '科室名称';
      if ksys_grid.width + tempedit.left > panel1.width then
        ksys_grid.left := tempedit.left - ksys_grid.width + tempedit.width
      else
        ksys_grid.left := tempedit.left;
      ksys_grid.tag := tempedit.tag;
      ksys_grid.top := tempedit.top + tempedit.Height;
      ksys_grid.visible := true;
      DBGridAutoSize(ksys_grid);
      ksys_grid.setfocus;
    end
    else
      if sp_cx_czyks.recordcount = 1 then
      begin
        kdyskdks( tempedit, pri_var)
      end
end;

procedure tfrm_fycl.ksprocess( tempedit: Tedit; var pri_var: string);
begin
  sp_cx_czyks.Close;
  sp_cx_czyks.Parameters.ParamByName( '@srm' ).value := trim( tempedit.Text );
  sp_cx_czyks.Parameters.ParamByName( '@czfs' ).value := 2;
  sp_cx_czyks.Parameters.ParamByName( '@kssx' ).value := '09';
  sp_cx_czyks.Open;
  ysksischange := false;
  if sp_cx_czyks.IsEmpty then
  begin
    application.MessageBox( '科室代码输入错误，请重新输入', '错误', mb_ok + mb_iconerror );
    tempedit.setfocus;
  end
  else
    if sp_cx_czyks.recordcount > 1 then
    begin
      ksys_grid.Columns.Clear;
      ksys_grid.Columns.add;
      ksys_grid.Columns[0].field := sp_cx_czyks.fieldlist[0];
      ksys_grid.Columns[0].title.caption := '代码';
      ksys_grid.Columns.add;
      ksys_grid.Columns[1].field := sp_cx_czyks.fieldlist[1];
      ksys_grid.Columns[1].title.caption := '科室名称';
      ksys_grid.Columns.add;
      ksys_grid.Columns[2].field := sp_cx_czyks.fieldlist[2];
      ksys_grid.Columns[2].title.caption := '拼音缩写';
      ksys_grid.tag := tempedit.tag;
      ksys_grid.left := tempedit.left;
      ksys_grid.top := tempedit.top + tempedit.Height + Panel3.top;
      ksys_grid.visible := true;
      ksys_grid.setfocus;
    end
    else
      if sp_cx_czyks.recordcount = 1 then
      begin
        kdyskdks( tempedit, pri_var )

      end
end;

procedure Tfrm_fycl.kdksExit( Sender: TObject );
begin
  frm_func.restorecolor( sender );
  if ysksischange then ksprocess( kdks, pri_kdks );
end;

procedure Tfrm_fycl.fydmEnter( Sender: TObject );
begin
  czys.Text;
  b_giveup.enabled := true;
  frm_func.changecolor( sender );
  esckey := false;
  if not fydmlostfocus then
    FYDM.TEXT := '';
  if ( ( ad_zyfymx_ls.fieldbyname( 'fysl' ).asinteger = 0 ) or ( ad_zyfymx_ls.fieldbyname( 'fyje' ).asfloat = 0 ) ) and ( not ad_zyfymx_ls.IsEmpty ) then
    ad_zyfymx_ls.delete;
end;

procedure Tfrm_fycl.B_giveupClick( Sender: TObject );
begin
  if ad_zyfymx_ls.RecordCount > 0 then
  begin
    if application.messagebox( '是否清除临时表数据？', '提示', mb_yesNo + mb_iconinformation ) = IDyes then
    begin
      ad_zyfymx_ls.First;
      while not ad_zyfymx_ls.Eof do
      begin
        ad_zyfymx_ls.Delete;
      end;
      ad_zyfymx_ls.UpdateBatch( arall );
    end;
  end;
//  b_giveup.setfocus;
  B_ENTER.Enabled := false;
  b_giveup.Enabled := false;
  panel1.Enabled := true;
  fydm.text := '';
//  tmh.text := '';
  tmh.setfocus;
end;

procedure Tfrm_fycl.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
cxDateEdit1.Visible:=True
else
cxDateEdit1.Visible:=False;
end;

procedure Tfrm_fycl.tmhEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
  if ad_zyfymx_ls.active then ad_zyfymx_ls.close;
  bch.Text := '';
  fylb.Text := '';
  ryrq.Text := '';
  zfy.text := '0';
  zyj.text := '0';
  zzf.text := '0';
  syje.text := '0';
  fydm.Text := '';
  BIsSave := false;
  pri_czks:='';
  pri_czys:='';
  czks.text:='';
  czys.text:='';
end;

procedure Tfrm_fycl.jfExecute( Sender: TObject );
begin
  if b_enter.enabled then
  begin
    BIsSave := true;
    B_ENTER.SetFocus;
    B_ENTER.Click;
    tmh.SetFocus;
    tmh.SelectAll;
  end;
end;

procedure Tfrm_fycl.xgExecute( Sender: TObject );
begin
  if ad_zyfymx_ls.Active then
    if not ad_zyfymx_ls.IsEmpty then
    begin
      if ad_zyfymx_ls.state = dsBrowse then //如果为原来已经有的,则清除zysf_zyfymx_ls表对应记录
      begin
        qry_delete_fyls.Close;
        qry_delete_fyls.Parameters.ParamByName( 'id' ).Value := ad_zyfymx_ls.FieldByName( 'id' ).AsInteger;
        qry_delete_fyls.ExecSQL;
      end;
      ad_zyfymx_ls.Delete;
    end;
end;

procedure Tfrm_fycl.dispysks( tempedit: Tedit; dm: string; czfs: integer; var pri_var: string );
begin
  if trim( dm ) <> '' then
  begin
    sp_cx_czyks.Close;
    sp_cx_czyks.Parameters.Refresh;
    sp_cx_czyks.Parameters.ParamByName( '@srm' ).value := trim( dm );
    sp_cx_czyks.Parameters.ParamByName( '@czfs' ).value := czfs;
    sp_cx_czyks.Parameters.ParamByName( '@kssx' ).value := '09';
    sp_cx_czyks.Open;
    tempedit.text := sp_cx_czyks.fieldbyname( 'mc' ).asstring;
    pri_var := trim( dm );
  end
  else
  begin
    pri_var := '';
    tempedit.text := '';
  end;
end;

procedure Tfrm_fycl.fydmgridExit( Sender: TObject );
var
  fydmstr: string;
begin

  if not ( b_final.focused or fydm.Focused ) then
  begin
      fydmstr := sp_cx_sfxm['fydm'];
        fydmlostfocus := false;
        if trim(sp_cx_sfxm.fieldbyname( 'zyksgs' ).asstring) <> '' then
          pri_czks := sp_cx_sfxm['zyksgs']
        else
        begin
          if pub_yydm='0003' then
          begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='select * from sys_ksdm where sybz=1 and rtrim(mc)='+''''+
                                    Trim(czks.text)+'''';
          DM_data.qry_pub.open;
          if DM_data.qry_pub.IsEmpty then
            pri_czks := pri_kdks
          else
            pri_czks := Trim(DM_data.qry_pub.FieldByName('dm').asstring);
          end
          else if pub_yydm='0031' then   //镇巴县医院，没有绑定科室的项目处置科室根据处置处置人员得到
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text:='select ksdm from sys_czy where  rtrim(dm)='+''''+
                                    Trim(pri_czys)+'''';
            DM_data.qry_pub.open;
            if DM_data.qry_pub.IsEmpty then
              pri_czks := pri_kdks
            else
              pri_czks := Trim(DM_data.qry_pub.FieldByName('ksdm').asstring);
            //pri_czks:=pri_kdks;
          end
          else if pub_yydm='0250' then
          begin
            if pri_czks='' then
            begin
              pri_czks:=pri_kdks;
            end;
          end
          else
          begin
            pri_czks := pri_kdks;
          end;
        end;
    sfxmwriteIn;
    sl.SetFocus; //////
    fydmlostfocus := true;
  end;
end;

procedure Tfrm_fycl.fydmgridEnter( Sender: TObject );
begin
  fydmlostfocus := false;
end;

procedure Tfrm_fycl.fylbEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_fycl.kdksEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_fycl.kdysEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_fycl.czksEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_fycl.czysEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_fycl.ggEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_fycl.sfbzEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_fycl.slEnter( Sender: TObject );
begin

  frm_func.changecolor( sender );
  sl.text := '1';
  sl.SelectAll;
  sl.SetFocus;


  ad_zyfymx_ls.FieldByName( 'bz' ).Value := sp_cx_sfxm.FieldByName( 'sfbz' ).AsString;

end;

procedure Tfrm_fycl.jeEnter( Sender: TObject );
begin
  if ( ad_zyfymx_ls.FieldByName( 'bz' ).AsFloat <> 0 ) and ( pub_sfsdsfbz ) then
  begin
    je.ReadOnly := true;
  end
  else
  begin
    je.ReadOnly := false;
  end;
  frm_func.changecolor( sender );
end;

procedure Tfrm_fycl.fylbExit( Sender: TObject );
begin
  frm_func.restorecolor( sender );
end;

procedure Tfrm_fycl.ggExit( Sender: TObject );
begin
  frm_func.restorecolor( sender );

end;

procedure Tfrm_fycl.sfbzExit( Sender: TObject );
begin
  frm_func.restorecolor( sender );
  try
    if sfbz.Text='' then      //sfbz为空则必须输入费用代码
    fydm.SetFocus;
    
    if sl.Text <> '' then
    begin
      je.Text := floattostr( strtofloat( sl.Text ) * strtofloat( sfbz.Text ) );

    end;
  finally

  end;

end;

procedure Tfrm_fycl.sfbzKeyPress( Sender: TObject; var Key: Char );
begin
//  if sfbz.text='' then
//  begin
//   showmessage('输入费用代码!');
//   
//  end;
  if key = #13 then
  begin
    if tempgrid1.tag = 4 then
      fydm.setfocus
    else
      if not BIsSave then
      begin
        SelectNext( activeControl, true, true );
      end;
  end;

end;
{-----------------------------------------------
 function :YZ_lr_wpcheck;
 return :boolean;
 Author :zhangwancai;
 date : 2016-10-11
------------------------------------------------}
function Tfrm_fycl.YZ_lr_wpcheck: Boolean;
var
  kcbzbz: Integer;
  xsl, sl: Double;
  xmdm, xmmc, czks, wpmc: string;
begin
  result := False;
  kcbzbz := 0;
  try
    with sp_checkwpkc do
    begin
      close;
      parameters.parambyname('@tmh').value := v_zyh;
      parameters.parambyname('@czydm').value := pub_czydm;
      parameters.parambyname('@bz').value := 2;
      open;
      if recordcount = 0 then
      begin
        result := True;
        Exit;
      end;
    end;
    ad_zyfymx_ls.first;
    while not ad_zyfymx_ls.eof do
    begin

      xmdm := ad_zyfymx_ls.fieldbyname('fydm').asstring;
      czks := ad_zyfymx_ls.fieldbyname('czks').asstring;
      sp_checkwpkc.First;
      while not sp_checkwpkc.eof do
      begin
        if (xmdm = sp_checkwpkc.FieldByName('sfxmbm').asstring)
         and (czks =sp_checkwpkc.FieldByName('czks').asstring )
        then
        begin
          xsl := sp_checkwpkc.fieldbyname('wpxsl').asfloat;
          sl  := sp_checkwpkc.fieldbyname('sl').asfloat;
          wpmc := sp_checkwpkc.fieldbyname('wpmc').asstring;
          xmmc := sp_checkwpkc.fieldbyname('sfxmmc').asstring;
          if xsl - sl <0 then
          begin
            showmessage('项目['+xmmc+']的数量:'+floattostr(sl)+#13
                       +'物品['+wpmc+']的库存数量:'+floattostr(xsl)+#13
                       +'['+xmmc+']对应的物品['+wpmc+']库存数量不足！不允许保存！');
            kcbzbz := 1;
          end;
        end;
        if kcbzbz =1  then  break;
        sp_checkwpkc.next;
      end;
      if kcbzbz =1  then  break;
      ad_zyfymx_ls.next;
    end;
    if kcbzbz = 1 then Exit;
  except
    Exit;
  end;
  result := True;
end;

procedure Tfrm_fycl.fydmgridDblClick( Sender: TObject );
begin
  if not sp_cx_sfxm.IsEmpty then sl.setfocus;
end;

procedure Tfrm_fycl.B_FINALClick( Sender: TObject );
begin
  B_FINAL.setfocus;
  close;
end;

procedure Tfrm_fycl.fydmgridKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
var
  ls: integer;
begin
  ls := key;
  if key = 27 then
  begin
    fydm.setfocus;
    lskey := '';
  end
  else
    if key = 13 then
    begin
      if not BIsSave then
        SelectNext( activeControl, true, true );
      lskey := '';
    end
    else
      if ( ls >= 48 ) and ( ls <= 57 ) then
      begin
        lskey := lskey + inttostr( ls - 48 );
        if sp_cx_sfxm.Locate( 'fydm', lskey, [] ) then
        begin
          fydm.setfocus;
          lskey := '';
        end;
      end
      else
        if ( ls >= 96 ) and ( ls <= 105 ) then
        begin
          lskey := lskey + inttostr( ls - 96 );
          if sp_cx_sfxm.Locate( 'fydm', lskey, [] ) then
          begin
            fydm.setfocus;
            lskey := '';
          end;
        end;
end;

procedure Tfrm_fycl.ad_zyfymx_lsBeforePost( DataSet: TDataSet );
begin
  if trim( sp_cx_zybrjbqk.fieldbyname( 'zfzdmc' ).asstring ) <> '' then
  begin
    if sp_cx_zybrjbqk.fieldbyname( 'ybndzje' ).asfloat - sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat > 0 then /////-strtofloat(bcje.text)
      ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'] * ad_zyfymx_ls[trim( sp_cx_zybrjbqk.fieldbyname( 'zfzdmc' ).asstring )] / 100
    else
      ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'];
  end
  else
    ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'];
  if ad_zyfymx_ls.FieldByName('zfje').AsString='' then
  ad_zyfymx_ls['zfje']:=0;
  if trim( ad_zyfymx_ls.fieldbyname( 'czys' ).asstring ) = '' then
    ad_zyfymx_ls['czys'] := '0000';
end;

procedure Tfrm_fycl.ad_zyfymx_lsAfterPost( DataSet: TDataSet );
begin
  if _tsbz then
  begin
    try
      if dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[2] ) <> '0' then
      begin
        sp_cx_syje.Close;
        sp_cx_syje.Parameters.ParamByName( '@zyh' ).value := v_zyh;
        sp_cx_syje.open;
        zyj.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat] );
        zzf.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'zfze' ).asfloat +
          strtofloat( dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[2] ) )] );
        if pub_yydm<>'0240' then
        begin
          syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat -
          ( sp_cx_syje.fieldbyname( 'zfze' ).asfloat + strtofloat( dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[2] ) ) )] );
        end
        else
        begin
          syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat -
          ( sp_cx_syje.fieldbyname( 'zfy' ).asfloat + strtofloat( dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[1] ) ) )] );
        end;
        if not esckey then
          checksyje;
      end;
    except
    end;
  end;
end;

procedure Tfrm_fycl.ad_zyfymx_lsAfterDelete( DataSet: TDataSet );
begin
  try
    sp_cx_syje.Close;
    sp_cx_syje.Parameters.ParamByName( '@zyh' ).value := v_zyh;
    sp_cx_syje.open;
    zyj.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat] );
    zzf.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'zfze' ).asfloat +
      strtofloat( dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[2] ) )] );
    if pub_yydm<>'0240' then
    begin
    syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat - ( sp_cx_syje.fieldbyname( 'zfze' ).asfloat +
        strtofloat( dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[2] ) ) )] );
    end
    else
    begin
          syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat - ( sp_cx_syje.fieldbyname( 'zfy' ).asfloat +
        strtofloat( dbgrideh2.GetFooterValue( 1, dbgrideh2.columns[1] ) ) )] );
    end;
  except
  end;
end;

procedure Tfrm_fycl.FormCreate(Sender: TObject);
var myedit:tedit;
    v_left,v_top,v_width: Integer;
begin
  FBhszfylrxs := GetBoolSwitchValue('sys_xt_kg','hszfylrxs');
  if FBhszfylrxs then
  begin
    v_left  := sl.Left;
    v_top   := sl.top;
    v_width := sl.Width;
    FreeAndNil(sl);
    myedit:=tedit.create(self);
    with myedit do
    begin
      name:='sl';
      parent:=Panel3;
      left:=v_left;
      top:=v_top;
      width:=v_width;
      OnEnter:=slEnter;
      onexit:=slExit;
      OnKeyPress:=slKeyPress;
      color:=clAqua;
      text:='';
      TabOrder:=3;
    end;
  end;
end;

procedure Tfrm_fycl.FormShow( Sender: TObject );
begin
  pri_czks:='';
  pri_czys:='';
  lskey := '';
  tmh.Color := clwindow;
  if trim( tmh.text ) <> '' then
  begin
    tmh.setfocus;
    //tmhExit( tmh );
    kdys.SetFocus;
  end;
  if (pub_yydm = '0015') or  (pub_yydm = '0136' ) then  //石泉中医院
  begin
    sfbz.ReadOnly := false;
  end;
  if pub_yydm ='0262' then
  begin
    with fydmgrid.Columns.Add do
    begin
      Title.Caption :='数量';
      Title.Alignment := taCenter;
      Width := 50;
      FieldName :='QTXX';
    end;
  end;
  if FBhszfylrxs then
    with DBGridEh2.Columns.Add do
    begin
      Title.Caption := '数量';
      Width := 35;
      FieldName := 'fysl1';
    end;
end;

function Tfrm_fycl.DBGridAutoSize(mDBGrid: TDBGrid; mOffset: Integer): Boolean;
{ 返回数据网格自动适应宽度是否成功 }
var
  I: Integer;
begin
  Result := False;
  if not Assigned(mDBGrid) then Exit;
  if not Assigned(mDBGrid.DataSource) then Exit;
  if not Assigned(mDBGrid.DataSource.DataSet) then Exit;
  if not mDBGrid.DataSource.DataSet.Active then Exit;
  for I := 0 to mDBGrid.Columns.Count - 1 do
  begin
    if not mDBGrid.Columns[I].Visible then Continue;
    if Assigned(mDBGrid.Columns[I].Field) then
      mDBGrid.Columns[I].Width := Max(mDBGrid.Columns[I].Field.Tag,
        mDBGrid.Canvas.TextWidth(mDBGrid.Columns[I].Title.Caption)) + mOffset
    else mDBGrid.Columns[I].Width :=
      mDBGrid.Canvas.TextWidth(mDBGrid.Columns[I].Title.Caption) + mOffset;
    mDBGrid.Refresh;
  end;
  Result := True;
end;

procedure Tfrm_fycl.DBGridEh2KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 27 then
  begin
    if ad_zyfymx_ls.state = dsedit then
      ad_zyfymx_ls.Post;
    if not ad_zyfymx_ls.isempty then
    begin
      ad_zyfymx_ls.delete;
    end;
  end;
  if key = 46 then
  begin
    ad_zyfymx_ls.Delete;
  end;

end;

function Tfrm_fycl.DBGridRecordSize(mColumn: TColumn): Boolean;
begin
  Result := False;
  if not Assigned(mColumn.Field) then Exit;
  mColumn.Field.Tag := Max(mColumn.Field.Tag,
    TDBGrid(mColumn.Grid).Canvas.TextWidth(mColumn.Field.DisplayText));
  Result := True;
end;

procedure Tfrm_fycl.F5Execute( Sender: TObject );
begin
  fydm.SetFocus;
end;

procedure Tfrm_fycl.F6Execute( Sender: TObject );
begin
  DBGridEh2.SetFocus;
end;

procedure Tfrm_fycl.cljfExecute( Sender: TObject );
begin
  if pub_yydm<>'0131' then   //万源中医院取消F8记材料
  wscljf;
end;

procedure Tfrm_fycl.slKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    if not BIsSave then
      SelectNext( activeControl, true, true );
  end
  else
  if ( key = #27 ) and ( ( rsNew in ad_zyfymx_ls.RecordStatus ) or ( rsModified in ad_zyfymx_ls.RecordStatus ) ) then
  begin
    fydmlostfocus := true;
    esckey := true;
    if FBhszfylrxs then
    begin
      if sl.Text<>'' then
      begin
        ad_zyfymx_ls.FieldByName('fysl').asstring:=sl.Text ;
        ad_zyfymx_ls.FieldByName('fysl1').asstring:=sl.Text ;
      end
      else
      begin
        ad_zyfymx_ls.FieldByName('fysl').asstring:='0';
        ad_zyfymx_ls.FieldByName('fysl1').asstring:='0';
      end;
    end;
    ad_zyfymx_ls.post;
    ad_zyfymx_ls.delete;
   // fydm.SetFocus;
  end
  else
  if ( key in ['A'..'z'] ) or ( key in ['0'..'9'] ) or ( ord( key ) > 127 ) then
  begin
    ysksischange := true;
  end

end;

procedure Tfrm_fycl.kdysKeyPress( Sender: TObject; var Key: Char );
begin
  if key = chr(VK_RETURN) then
  begin
    if not BIsSave then
      SelectNext( activeControl, true, true );
      exit;
  end;
  if ( key in ['A'..'z'] ) or ( key in ['0'..'9'] ) or ( ord( key ) > 127 ) then
    ysksischange := true;
end;

procedure Tfrm_fycl.czysKeyPress( Sender: TObject; var Key: Char );
begin
  if key = chr(VK_RETURN) then
  begin
    if not BIsSave then
      SelectNext( activeControl, true, true );
      exit;
  end;
  if ( key in ['A'..'z'] ) or ( key in ['0'..'9'] ) or ( ord( key ) > 127 ) then
    ysksischange := true;
end;

end.

