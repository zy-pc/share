unit p_bqgl_clhj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, DBSumLst, Grids, DBGridEh, Mask, DBCtrls, StdCtrls,
  Buttons, DBGrids, ActnList, GridsEh, DBGridEhGrouping;
type
  THACKDBGRID = class( TCUSTOMGRID );
type
  Tfrm_clcfhj = class( TForm )
    Panel1: TPanel;
    Label1: TLabel;
    tmh: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ryzd: TEdit;
    zfy: TEdit;
    Label5: TLabel;
    bch: TEdit;
    Panel4: TPanel;
    ad_zycfmx: TADODataSet;
    sp_cx_xyjg: TADOStoredProc;
    sp_cx_zybrjbqk: TADOStoredProc;
    ds_ksdm: TDataSource;
    ds_zycfmx: TDataSource;
    ds_zybrjbqk: TDataSource;
    sp_get_cfbh: TADOStoredProc;
    ad_zycfmxcfbh: TStringField;
    ad_zycfmxxh: TIntegerField;
    ad_zycfmxypdm: TStringField;
    ad_zycfmxypdwid: TIntegerField;
    ad_zycfmxypdw: TStringField;
    ad_zycfmxypbzbl: TIntegerField;
    ad_zycfmxypsl: TBCDField;
    ad_zycfmxypdj: TBCDField;
    ad_zycfmxyplb: TStringField;
    ad_zycfmxypmc: TStringField;
    sp_cx_ypbz: TADOStoredProc;
    sp_cx_ypbzbzbl: TIntegerField;
    sp_cx_ypbzid: TAutoIncField;
    sp_cx_ypbzypdw: TStringField;
    ds_ypmc: TDataSource;
    ds_ypdw: TDataSource;
    ad_zycfmxzje: TCurrencyField;
    ad_zycfmxzfje: TCurrencyField;
    ActionList1: TActionList;
    jf: TAction;
    ad_zycfzb: TADODataSet;
    sp_cx_syje: TADOStoredProc;
    ad_ypdm: TADODataSet;
    ad_zycfmxypgg: TStringField;
    sp_save: TADOStoredProc;
    ksys_grid: TDBGrid;
    ds_ysks: TDataSource;
    sp_cx_xyjgypdm: TStringField;
    sp_cx_xyjgypmc: TStringField;
    sp_cx_xyjgpym: TStringField;
    sp_cx_xyjgypgg: TStringField;
    sp_cx_xyjgdwid: TIntegerField;
    sp_cx_xyjgypdw: TStringField;
    sp_cx_xyjgzhl: TIntegerField;
    sp_cx_xyjglsj: TBCDField;
    sp_cx_xyjgsybz: TStringField;
    sp_cx_xyjgkcsl: TBCDField;
    sp_cx_xyjgzxdwsl: TBCDField;
    sp_cx_xyjghtfybl: TBCDField;
    sp_cx_xyjgsbfybl: TBCDField;
    sp_cx_xyjgbxfybl: TBCDField;
    sp_cx_xyjgsfjsyp: TBooleanField;
    sp_cx_xyjgsfgzyp: TBooleanField;
    sp_cx_xyjgsfdmyp: TBooleanField;
    sp_cx_xyjgsfzfyp: TBooleanField;
    cfmx_input: TDBGridEh;
    ypdw_grid: TDBGrid;
    ypmc_grid: TDBGrid;
    ad_ksdm: TADODataSet;
    ad_zycfmxkccgj: TBCDField;
    ad_zycfmxsbfybl: TFloatField;
    ad_zycfmxhtfybl: TFloatField;
    ad_zycfmxbxfybl: TFloatField;
    sp_cx_xyjgkccgj: TBCDField;
    ad_zycfmxjlyp: TBooleanField;
    ad_zycfmxylyp: TBooleanField;
    ad_zycfmxjylyp: TStringField;
    Label8: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    KDYS: TEdit;
    Label18: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    syje: TEdit;
    Panel3: TPanel;
    zyty: TAction;
    Panel2: TPanel;
    B_ENTER: TBitBtn;
    B_FINAL: TBitBtn;
    B_giveup: TBitBtn;
    Label11: TLabel;
    e_bz: TEdit;
    Label12: TLabel;
    e_fylb: TEdit;
    cfbh: TEdit;
    Label9: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    tempgrid1: TDBGrid;
    Label15: TLabel;
    zdjf: TEdit;
    Label17: TLabel;
    zfze: TEdit;
    sp_cx_czyks: TADODataSet;
    qry_kdys: TADOQuery;
    sp_cx_zybrjbqktmh: TStringField;
    sp_cx_zybrjbqkzyh: TStringField;
    sp_cx_zybrjbqkbrxm: TStringField;
    sp_cx_zybrjbqksbkh: TStringField;
    sp_cx_zybrjbqkcsrq: TDateTimeField;
    sp_cx_zybrjbqkybndzje: TBCDField;
    sp_cx_zybrjbqkbrnl: TBCDField;
    sp_cx_zybrjbqksbdw: TStringField;
    sp_cx_zybrjbqkbrzy: TStringField;
    sp_cx_zybrjbqkbrxb: TStringField;
    sp_cx_zybrjbqkbrsf: TStringField;
    sp_cx_zybrjbqkbrjg: TStringField;
    sp_cx_zybrjbqkbrmz: TStringField;
    sp_cx_zybrjbqkdwdh: TStringField;
    sp_cx_zybrjbqkbrdz: TStringField;
    sp_cx_zybrjbqkdwyb: TStringField;
    sp_cx_zybrjbqkzkze: TBCDField;
    sp_cx_zybrjbqkzfze: TBCDField;
    sp_cx_zybrjbqkdbr: TStringField;
    sp_cx_zybrjbqkdbrdz: TStringField;
    sp_cx_zybrjbqknxrdh: TStringField;
    sp_cx_zybrjbqkhkyb: TStringField;
    sp_cx_zybrjbqkbch: TStringField;
    sp_cx_zybrjbqkryzd: TStringField;
    sp_cx_zybrjbqkksdm: TStringField;
    sp_cx_zybrjbqkzgys: TStringField;
    sp_cx_zybrjbqkzycs: TIntegerField;
    sp_cx_zybrjbqkfylb: TStringField;
    sp_cx_zybrjbqkryks: TStringField;
    sp_cx_zybrjbqksfzhm: TStringField;
    sp_cx_zybrjbqkrybq: TStringField;
    sp_cx_zybrjbqkrytj: TStringField;
    sp_cx_zybrjbqkryrq: TDateTimeField;
    sp_cx_zybrjbqksjyjze: TBCDField;
    sp_cx_zybrjbqkzdjf: TBCDField;
    sp_cx_zybrjbqkbqdm: TStringField;
    sp_cx_zybrjbqkyjze: TBCDField;
    sp_cx_zybrjbqkzfy: TBCDField;
    sp_cx_zybrjbqkybndzje_1: TBCDField;
    sp_cx_zybrjbqkryczy: TStringField;
    sp_cx_zybrjbqkbz: TStringField;
    sp_cx_zybrjbqkksmc: TStringField;
    sp_cx_zybrjbqkfylbmc: TStringField;
    sp_cx_zybrjbqkyjbz: TBooleanField;
    sp_cx_zybrjbqkzfzdmc: TStringField;
    sp_cx_zybrjbqkfyxz: TBCDField;
    sp_cx_zybrjbqkmc: TStringField;
    sp_cx_zybrjbqksyje: TBCDField;
    SBt_wjf: TSpeedButton;
    Act_wjf: TAction;
    ad_zycfmxsbfybl01: TFloatField;
    ad_zycfmxsbfybl02: TFloatField;
    procedure Act_wjfExecute( Sender: TObject );
    procedure SBt_wjfClick( Sender: TObject );
    procedure tempgrid1DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState );
    procedure tmhExit( Sender: TObject );
    procedure tempgrid1Exit( Sender: TObject );
    procedure tempgrid1KeyPress( Sender: TObject; var Key: Char );
    procedure cfmx_inputColExit( Sender: TObject );
    procedure ad_zycfmxCalcFields( DataSet: TDataSet );
    procedure ypmc_gridExit( Sender: TObject );
    procedure ypdw_gridExit( Sender: TObject );
    procedure cfmx_inputKeyPress( Sender: TObject; var Key: Char );
    procedure ad_zycfmxAfterInsert( DataSet: TDataSet );
    procedure B_FINALClick( Sender: TObject );
    procedure ad_zycfmxBeforePost( DataSet: TDataSet );
    procedure B_ENTERClick( Sender: TObject );
    procedure cfmx_inputExit( Sender: TObject );
    procedure kdysExit( Sender: TObject );
    procedure ksys_gridExit( Sender: TObject );
    procedure ad_zycfmxBeforeDelete( DataSet: TDataSet );
    procedure B_giveupClick( Sender: TObject );
    procedure tmhEnter( Sender: TObject );
    procedure jfExecute( Sender: TObject );
    procedure xgExecute( Sender: TObject );
    procedure ad_zycfmxAfterDelete( DataSet: TDataSet );
    procedure kdksEnter( Sender: TObject );
    procedure kdysEnter( Sender: TObject );
    procedure czksEnter( Sender: TObject );
    procedure czysEnter( Sender: TObject );
    procedure ggEnter( Sender: TObject );
    procedure sfbzEnter( Sender: TObject );
    procedure slEnter( Sender: TObject );
    procedure jeEnter( Sender: TObject );
    procedure ggExit( Sender: TObject );
    procedure sfbzExit( Sender: TObject );
    procedure ypdw_gridKeyPress( Sender: TObject; var Key: Char );
    procedure cfmx_inputKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cfmx_inputEnter( Sender: TObject );
    procedure ad_zycfmxAfterPost( DataSet: TDataSet );
    procedure FormShow( Sender: TObject );
    procedure KDYSKeyPress( Sender: TObject; var Key: Char );
    procedure tmhChange( Sender: TObject );
    procedure zytyExecute( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
    zy_tmh, ysorbq: string;
    clrq: Tdatetime;
    procedure displayvalue;
    procedure dispysks( tempedit: Tedit; dm: string; czfs: integer; var pri_var: string ); //显示医生科室
    procedure xyhjinit; //西药处方的初始化处理
    procedure ypmcprocess( sp_cx_jg: TADOStoredproc; ksdm: string; row: byte ); //西药划价处理材料查询
    procedure ypbzprocess; //处理包装单位
    //    procedure ypdmmcprocess(sp_cx_jg:tadostoredproc;row:byte); //处理材料名称代码
    procedure ypdmmcprocess; //处理材料名称代码
    procedure ypdwprocess; //处理材料单位和包装比例赋值
    procedure datasave( tablename: string ); //处理药存盘
    procedure kdyskdks( cledit: Tedit; var dm: string );
    procedure ysprocess( tempedit: Tedit; var pri_var: string );
    procedure ScreenCap( LeftPos, TopPos, RightPos, BottomPos: integer );
    procedure calCsum( col: integer );
    procedure brlr;
  end;

var
  frm_clcfhj: Tfrm_clcfhj;
  ph, xycf_bh, v_zyh, ksmc, v_ypmc, pri_kdks, pri_kdys, pri_czks, pri_czys, pri_fylb: string;
  ypmcxg, //表示材料名称有无改变
  qhbz, //表示是否马上求和 true 求和 false 不求
  ysksischange: boolean; //表示从开单科室出来时科室有无变化
  changedflag: boolean; //表示材料明细有无改变
  hjlb: integer; // 划价列标志，某列出错则将此列计如此变量否则次变量为-1
  csjls: integer;
  lostsender: Tobject;
  SavePlace: TBookmark;
  deletebz, cfbz, czwcg, insertflag, czcg, syjechanged, fydmlostfocus: boolean; //材料查找成功
  dispinit: boolean = false; //显示初始化
  cflr: boolean = false; //显示初始化
  yycfsj: boolean = false; //显示初始化
  kssj: tdatetime;
  zqbcbz: boolean; //zyfymx_ls保存正确时置此标志

implementation
uses P_dm, p_func, P_clhj_wjf, p_hjcltf;
{$R *.DFM}

procedure Tfrm_clcfhj.calCsum( col: integer );
var
  l_cfzje: real;
begin
  if not deletebz then
  begin
    ad_zycfmx.DisableControls;
    ad_zycfmx.First;
    cfmx_input.SumList.SumCollection.Items[col].SumValue := 0;
    while not ad_zycfmx.Eof do
    begin
      cfmx_input.SumList.SumCollection.Items[col].SumValue := cfmx_input.SumList.SumCollection.Items[col].SumValue +
        ad_zycfmx.FieldByName( cfmx_input.SumList.SumCollection.Items[col].FieldName ).AsFloat;
      ad_zycfmx.Next;
      l_cfzje := realtot( cfmx_input.SumList.SumCollection.Items[0].SumValue, 2 );
      label10.Caption := format( '￥%3.2f', [l_cfzje] );
    end;
    ad_zycfmx.EnableControls;
  end;
end;

procedure Tfrm_clcfhj.ScreenCap( LeftPos, TopPos, RightPos, BottomPos: integer );
var
  RectWidth, RectHeight: integer;
  SourceDC, DestDC, Bhandle: longint;
  Bitmap: TBitmap;
begin
  RectWidth := RightPos - LeftPos;
  RectHeight := BottomPos - TopPos;
  SourceDC := CreateDC( 'DISPLAY', '', '', nil );
{$R-}
  DestDC := CreateCompatibleDC( SourceDC );
  Bhandle := CreateCompatibleBitmap( SourceDC, RectWidth, RectHeight );
  SelectObject( DestDC, Bhandle );
  BitBlt( DestDC, 0, 0, RectWidth, RectHeight, SourceDC, LeftPos, TopPos, SRCCOPY );
  Bitmap := TBitmap.Create;
  Bitmap.Handle := BHandle;
  BitMap.SaveTofile( formatdatetime( 'yyyymmddhhnnss', frm_func.curr_date ) + '.bmp' );
  Bitmap.Free;
  DeleteDC( DestDC );
  ReleaseDC( Bhandle, SourceDC );
end;

procedure Tfrm_clcfhj.displayvalue;
begin
  dispinit := true;
  qhbz := false;
  b_giveup.enabled := true;
  tmh.text := sp_cx_zybrjbqk.fieldbyname( 'tmh' ).asstring;
  Edit1.text := sp_cx_zybrjbqk.fieldbyname( 'brxm' ).asstring;
  bch.text := sp_cx_zybrjbqk.fieldbyname( 'bch' ).asstring;
  ryzd.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'sjyjze' ).asfloat] );
  zfy.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat] );
  zdjf.Text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat] );
  zfze.Text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zfze' ).asfloat] );
  e_fylb.Text := sp_cx_zybrjbqk.fieldbyname( 'fylbmc' ).asstring;
  e_bz.Text := sp_cx_zybrjbqk.fieldbyname( 'bz' ).asstring;
  v_zyh := sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
  pri_kdks := sp_cx_zybrjbqk.fieldbyname( 'ksdm' ).asstring;
  if trim( sp_cx_zybrjbqk.fieldbyname( 'zgys' ).asstring ) <> '' then
    pri_kdys := sp_cx_zybrjbqk.fieldbyname( 'zgys' ).asstring;
  ph := get_sjh( pub_czydm );
  xyhjinit;
  brlr;
  kdys.setfocus;
end;

procedure Tfrm_clcfhj.tmhExit( Sender: TObject );
var
  ls: string;
begin
  frm_func.restorecolor( sender );
  ls := trim( tmh.text );
  if not ( B_FINAL.Focused ) and ( LS <> '' ) then
  begin
    with sp_cx_zybrjbqk do
    begin
      Close;
      parameters.ParamByName( '@tmh' ).value := trim( tmh.text );
      parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
      active := true;
    end;
    if sp_cx_zybrjbqk.isempty then
    begin
      Application.MessageBox( '错误提示:没有此病人或不在本病区！', '错误提示', 16 );
      tmh.setfocus;
    end
    else
      if sp_cx_zybrjbqk.recordcount > 1 then
      begin
        tempgrid1.left := tmh.left;
        tempgrid1.top := tmh.top + tmh.Height;
        tempgrid1.visible := true;
        tempgrid1.setfocus;
      end
      else
      begin
        //通过主管医生，查询默认开单医生(ygycxm,06-05-12)
        if ( sp_cx_zybrjbqk.FieldByName( 'zgys' ).AsString <> '' ) and
          ( Length( trim( sp_cx_zybrjbqk.FieldByName( 'zgys' ).AsString ) ) = 4 ) then
        begin
          qry_kdys.Locate( 'dm', sp_cx_zybrjbqk.FieldByName( 'zgys' ).AsString, [] );
          kdys.Text := qry_kdys.FieldByName( 'mc' ).AsString;
        end;
        //-------------------------------------------------
        displayvalue;
      end;
  end
  else
    if ( LS = '' ) and ( not ( b_final.focused or B_giveup.focused ) ) then
    begin
      Application.MessageBox( '请输入条码号或病床号或病人姓名！', '错误', 0 + 16 );
      tmh.setfocus;
    end;
end;

procedure Tfrm_clcfhj.tempgrid1Exit( Sender: TObject );
begin
  tmh.text := sp_cx_zybrjbqk['brxm'];
  tempgrid1.Visible := false;
  displayvalue;
end;

procedure Tfrm_clcfhj.tempgrid1KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    SelectNext( activeControl, true, true )
  else
    if ( key in ['A'..'z'] ) or ( key in ['0'..'9'] ) or ( ord( key ) > 127 ) then
      ysksischange := true;
end;

procedure Tfrm_clcfhj.xyhjinit;
begin
  //处理西药划价计费
 //产生处方号
  pri_czks := pub_ksdm;
  sp_get_cfbh.close;
  sp_get_cfbh.ExecProc;
  xycf_bh := sp_get_cfbh.parameters.parambyname( '@cfbh' ).value;
  cfbh.text := xycf_bh;
  qhbz := false;
  ad_zycfmx.Close;
  ad_zycfmx.Parameters.ParamByName( 'cfbh' ).value := xycf_bh;
  ad_zycfmx.open; //打开处方库
  ad_zycfmx.first;
  ds_ypmc.DataSet := sp_cx_xyjg;
  cfmx_input.SetFocus;
  cfmx_input.SelectedIndex := 0;
end;

procedure tfrm_clcfhj.ypmcprocess( SP_CX_JG: Tadostoredproc; ksdm: string; row: byte );
var
  ypsl: integer;
  myrect: trect;
begin
  if cfmx_input.SelectedIndex = 0 then //取材料名称
  begin
    begin
      sp_cx_jg.close;
      if trim( ad_zycfmx.fieldbyname( 'ypdm' ).asstring ) = '' then
        sp_cx_jg.Parameters.ParamByName( '@pym' ).value := ad_zycfmx['ypmc']
      else
        sp_cx_jg.Parameters.ParamByName( '@pym' ).value := ad_zycfmx['ypdm'];

      sp_cx_jg.Parameters.ParamByName( '@ksdm' ).value := ksdm;
      sp_cx_jg.Open;
      if ad_zycfmx.state = dsinsert then
        insertflag := true
      else
        insertflag := false;
      if sp_cx_jg.IsEmpty then
      begin
        messagedlg( '材料代码输入错误，请检查后重新输入！', mterror, [mbok], 0 );
        cfmx_input.setfocus;
        hjlb := 0;
        cfmx_input.selectedindex := 0;
        v_ypmc := '';
        czwcg := true;
      end //材料代码查找不成功
      else
        if sp_cx_jg.RecordCount = 1 then
        begin
          czwcg := false;
          panel2.enabled := true;
          hjlb := 2;
          ypdmmcprocess; //查找成功
        end
        else
          if ( sp_cx_jg.recordcount > 1 ) and ( v_ypmc <> trim( ad_zycfmx.fieldbyname( 'ypmc' ).asstring ) ) then
          begin
            ypmc_grid.visible := true;
            myrect := THACKDBGRID( cfmx_input ).cellrect( 0, THACKDBGRID( cfmx_input ).row );
            ypmc_grid.left := myrect.left;
            if myrect.Bottom + ypmc_grid.height > cfmx_input.height then
              ypmc_grid.top := myrect.top - ypmc_grid.Height
            else
              ypmc_grid.top := myrect.Bottom;
            panel2.enabled := true;
            czwcg := false;
            ypmc_grid.setfocus;
          end; //查找成功但个数大于一
    end
  end
  else
    if cfmx_input.selectedindex = 2 then
      hjlb := 4 //*************
    else
      if ( cfmx_input.SelectedIndex = 4 ) and ( trim( ad_zycfmx.fieldbyname( 'ypmc' ).asstring ) <> '' ) then
      begin
        if ad_zycfmx.fieldbyname( 'ypsl' ).asfloat <= 0 then
        begin
          hjlb := 4;
          cfmx_input.selectedindex := 5;
          messagedlg( '材料数量不正确，请输入正确数量', mterror, [mbok], 0 )
        end //首先判断材料数量为不为0 (材料库房不进行判断库存)
        else
        begin
          {          if (ad_zycfmx['ypsl'] * ad_zycfmx['ypbzbl'] > sp_cx_jg['zxdwsl']) and ((ad_zycfmx.State = dsedit) or (ad_zycfmx.State = dsinsert)) then
                    begin
                      messagedlg('材料库存数量不足', mterror, [mbok], 0);
                      hjlb := 4;
                      cfmx_input.selectedindex := 5;
                    end
                    else
                    begin}
          ad_zycfmx.append;
          hjlb := 0;
          //          end
        end;
      end
end;

procedure tfrm_clcfhj.ypbzprocess; //处理包装单位
begin
  cfmx_input.selectedindex := hjlb
end;

procedure Tfrm_clcfhj.ypdmmcprocess; //处理材料名称代码
var
  saveplace1: Tbookmark;
begin
  saveplace := ad_zycfmx.GetBookmark;
  if ad_zycfmx.state = dsinsert then
    insertflag := true
  else
    insertflag := false;
  //  if sp_cx_xyjg.fieldbyname('zxdwsl').asfloat > 0 then
  //  begin
  if trim( ad_zycfmx.FieldByName( 'ypdm' ).AsString ) = '' then
  begin
    ad_zycfmx.Edit;
    ad_zycfmx['ypdm'] := '';
  end;

  if not ( ad_zycfmx.Locate( 'ypdm', sp_cx_xyjg['ypdm'], [] ) ) then
  begin
    ad_zycfmx.GotoBookmark( saveplace );
    ad_zycfmx.edit;
    czwcg := false;
    ad_zycfmx['ypmc'] := trim( sp_cx_xyjg.fieldbyname( 'ypmc' ).asstring );
    ad_zycfmx['ypdm'] := trim( sp_cx_xyjg.fieldbyname( 'ypdm' ).asstring );
    ad_zycfmx['ypdw'] := trim( sp_cx_xyjg.fieldbyname( 'ypdw' ).asstring );
    ad_zycfmx['ypdj'] := sp_cx_xyjg.fieldbyname( 'lsj' ).asfloat;
    ad_zycfmx['ypbzbl'] := trim( sp_cx_xyjg.fieldbyname( 'zhl' ).asstring );
    ad_zycfmx['kccgj'] := sp_cx_xyjg.fieldbyname( 'kccgj' ).asfloat;
    ad_zycfmx['ypdwid'] := trim( sp_cx_xyjg.fieldbyname( 'dwid' ).asstring );
    if sp_cx_xyjg.fieldbyname( 'sfdmyp' ).asboolean then
      ad_zycfmx['yplb'] := '毒麻药品';
    ad_zycfmx['cfbh'] := xycf_bh;
    v_ypmc := trim( sp_cx_xyjg.fieldbyname( 'ypmc' ).asstring );
    ad_zycfmx['cfbh'] := xycf_bh;
    ypmc_grid.Visible := false;
    ad_zycfmx.FreeBookmark( saveplace ); /////////////
    cfmx_input.SetFocus;
    if pub_yfsfsybz then
      cfmx_input.SelectedIndex := 2
    else
      cfmx_input.SelectedIndex := 4;
    ad_zycfmx.AutoCalcFields := True; //设置自动计算 lookup field 值(ygycxm,06-06-02)
  end
  else
  begin
    saveplace1 := ad_zycfmx.getbookmark;
    if ad_zycfmx.CompareBookmarks( saveplace, saveplace1 ) <> 0 then
    begin
      application.MessageBox( '同一张处方,不能有重复材料', '错误', mb_ok + Mb_iconerror );
      cfmx_input.setfocus;
      cfbz := true;
      if insertflag then
        ad_zycfmx.Last
      else
        ad_zycfmx.GotoBookmark( saveplace );
      ad_zycfmx.FreeBookmark( saveplace ); /////////////
    end
    else
    begin
      cfmx_input.SetFocus;
      if pub_yfsfsybz then
        cfmx_input.SelectedIndex := 2
      else
        cfmx_input.SelectedIndex := 4;
    end;
    ypmc_grid.Visible := false;
    ad_zycfmx.FreeBookmark( saveplace1 );
  end;
  ypmc_grid.Visible := false;
  //  end
  //  else
  //  begin
  //    cfmx_input.setfocus;
  //    cfmx_input.SelectedIndex := 0;
  //    ypmc_grid.Visible := false;
  //    messagedlg('库存数量为零,请重新输入', mtinformation, [mbok], 0);
  //  end
end;

procedure Tfrm_clcfhj.ypdwprocess; //处理材料单位和包装比例赋值
begin

end;

procedure Tfrm_clcfhj.datasave( tablename: string );
var
  r, cgje, lsje, zfje: real;
begin

  if trim( pri_kdys ) = '' then
  begin
    application.MessageBox( '没有填入开单医生', '错误', mb_ok + mb_iconerror );
    kdys.SelectAll;
    kdys.setfocus;
    abort;
  end;
  cfmx_input.SumList.RecalcAll;
  r := strtofloat( cfmx_input.GetFooterValue( 0, cfmx_input.columns[5] ) );
  if r > 0 then
  begin
    if ad_zycfmx.Active then
    begin
      ad_zycfmx.First;
      ad_zycfmx.Filter := 'ypdm = ' + #39 + '' + #39 + ' or ypsl < 1';
      ad_zycfmx.Filtered := true;
      while not ad_zycfmx.IsEmpty do
      begin
        ad_zycfmx.Delete;
      end;
      ad_zycfmx.Filtered := false;
      if ad_zycfmx.RecordCount < 1 then
      begin
        Application.MessageBox( '明细不能为空!', '提示', MB_OK +
          MB_ICONINFORMATION );
        exit;
      end;
      ad_zycfmx.First;
      cgje := 0;
      lsje := 0;
      zfje := 0;
      while not ad_zycfmx.Eof do
      begin
        cgje := cgje + ad_zycfmx.fieldbyname( 'ypsl' ).asfloat * ad_zycfmx.fieldbyname( 'kccgj' ).asfloat * ad_zycfmx.fieldbyname( 'ypbzbl' ).asfloat;
        lsje := lsje + ad_zycfmx.fieldbyname( 'ypsl' ).asfloat * ad_zycfmx.fieldbyname( 'ypdj' ).asfloat;
        zfje := zfje + ad_zycfmx.fieldbyname( 'zfje' ).asfloat;
        ad_zycfmx.Next;
      end;
      try
        dm_data.ado_mydata.BeginTrans;
        ad_zycfmx.UpdateBatch( arall ); //西药住院处方名细处理完成
        ad_zycfmx.Close;
        ad_zycfmx.CommandText := 'select * from bqkf_zycfmx where cfbh=:cfbh';
        ad_zycfmx.Parameters.ParamByName( 'cfbh' ).Value := xycf_bh;
        ad_zycfmx.Open;

        ad_zycfzb.Close;
        ad_zycfzb.commandtext := 'select * from ' + tablename + ' where cfbh=' + #39 + xycf_bh + #39;
        ad_zycfzb.Open;
        if not ad_zycfmx.IsEmpty then
        begin
          if ad_zycfzb.isempty then
            ad_zycfzb.append
          else
            ad_zycfzb.edit;
          ad_zycfzb['tmh'] := sp_cx_zybrjbqk['tmh'];
          ad_zycfzb['zyh'] := sp_cx_zybrjbqk['zyh'];
          ad_zycfzb['cfbh'] := xycf_bh;
          ad_zycfzb['cfzje'] := realtot( lsje, 2 );
          ad_zycfzb['zfzje'] := realtot( zfje, 2 );
          ad_zycfzb['cgzje'] := cgje;
          ad_zycfzb['ysdm'] := pri_kdys;
          ad_zycfzb['hjczy'] := pub_czydm;
          ad_zycfzb['hjrq'] := frm_func.curr_date( );
          ad_zycfzb['kdks'] := pri_kdks;
          ad_zycfzb['czks'] := pri_czks;
          ad_zycfzb['hjks'] := pub_ksdm;
          ad_zycfzb['cflb'] := 'zy';
          ad_zycfzb['pldh'] := '';
          ad_zycfzb.post;
          ad_zycfzb.UpdateBatch( arall ); //西药住院处方总表处理完成
        end;
        dm_data.ado_mydata.CommitTrans;
        changedflag := false;
        zqbcbz := true;
      except on e: Exception do
        begin
          dm_data.ado_mydata.RollbackTrans;
          Application.MessageBox( PChar( '数据没有正确保存，请再次保存' + #13 + e.Message ), '错误', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR );
        end;
      end;

    end
    else
    begin
      Application.MessageBox( '空处方1', '错误', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR );
      cfmx_input.setfocus;
    end
  end;
end;

procedure Tfrm_clcfhj.ad_zycfmxCalcFields( DataSet: TDataSet );
begin
  //对每一种病人都设有ybndzje（记账限额），如果计费超过了记账限额，则所有费用计为自费
  begin
    ad_zycfmx['zje'] := ad_zycfmx.fieldbyname( 'ypsl' ).asfloat * ad_zycfmx.fieldbyname( 'ypdj' ).asfloat;
    if trim( sp_cx_zybrjbqk.fieldbyname( 'zfzdmc' ).asstring ) <> '' then
    begin
      if sp_cx_zybrjbqk.fieldbyname( 'ybndzje' ).asfloat - sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat > 0 then
        ad_zycfmx['zfje'] := ad_zycfmx.fieldbyname( 'zje' ).asfloat *
          ad_zycfmx.fieldbyname( trim( sp_cx_zybrjbqk.fieldbyname( 'zfzdmc' ).asstring ) ).asfloat / 100
      else
        ad_zycfmx['zfje'] := ad_zycfmx.fieldbyname( 'zje' ).asfloat;
    end
    else
      ad_zycfmx['zfje'] := ad_zycfmx.fieldbyname( 'zje' ).asfloat;
    if ad_zycfmx.fieldbyname( 'jlyp' ).asboolean then
      ad_zycfmx['jylyp'] := '甲类'
    else
      if ad_zycfmx.fieldbyname( 'ylyp' ).asboolean then
        ad_zycfmx['jylyp'] := '乙类'
      else
        ad_zycfmx['jylyp'] := '自费';
  end;
end;

procedure Tfrm_clcfhj.cfmx_inputColExit( Sender: TObject );
begin
  if ad_zycfmx.State <> dsBrowse then
    ypmcprocess( sp_cx_xyjg, pub_ksdm, 2 );
end;

procedure Tfrm_clcfhj.ypmc_gridExit( Sender: TObject );
begin
  ypdmmcprocess;
end;

procedure Tfrm_clcfhj.ypdw_gridExit( Sender: TObject );
begin
  ypdw_grid.Visible := false;
  cfmx_input.setfocus;
  cfmx_input.selectedindex := 4;
end;

procedure Tfrm_clcfhj.cfmx_inputKeyPress( Sender: TObject; var Key: Char );
var
  myrect: Trect;
begin

  if ( key in ['A'..'z', '0'..'9'] ) or ( ord( key ) > 127 ) then
  begin
    cfbz := true;
    changedflag := true;
  end
  else
    if ( key = ' ' ) and ( cfmx_input.SelectedIndex = 2 ) then
    begin
      sp_cx_ypbz.close;
      sp_cx_ypbz.Parameters.ParamByName( '@ypdm' ).value := ad_zycfmx['ypdm'];
      sp_cx_ypbz.Open;
      if sp_cx_ypbz.recordcount > 1 then
      begin
        ypdw_grid.visible := true;
        ypdw_grid.visible := true;
        myrect := THACKDBGRID( cfmx_input ).cellrect( 3, THACKDBGRID( cfmx_input ).row );
        ypdw_grid.left := myrect.left;
        if myrect.Bottom + ypdw_grid.height > cfmx_input.height then
          ypdw_grid.top := myrect.top - ypdw_grid.Height
        else
          ypdw_grid.top := myrect.Bottom;
        ypdw_grid.setfocus;
      end
      else
        messagedlg( '该材料只有一个包装', mtinformation, [mbok], 0 );
      //处理材料单位和包装比例
    end;
  if ( key = #13 ) and ( cfmx_input.SelectedIndex = 4 ) then //处理数量
  begin
    CFBZ := false;
    //病区库房不处理材料数量问题
    if ( ad_zycfmx.fieldbyname( 'ypsl' ).asfloat <= 0 ) or ( ( trunc( ad_zycfmx.fieldbyname( 'ypsl' ).asfloat ) - ad_zycfmx.fieldbyname( 'ypsl' ).asfloat ) * 1000 <> 0 ) then
    begin
      messagedlg( '材料数量不正确，请输入正确数量', mterror, [mbok], 0 );
      ad_zycfmx.edit;
      ad_zycfmx['ypsl'] := 0;
    end //首先判断材料数量为不为0
    else
//      if ( ad_zycfmx['ypsl'] * ad_zycfmx['ypbzbl'] > sp_cx_xyjg['zxdwsl'] ) and ( ( ad_zycfmx.State = dsedit ) or ( ad_zycfmx.State = dsinsert ) ) then
//      begin
//        messagedlg( '材料库存数量不足', mterror, [mbok], 0 );
//        ad_zycfmx.edit;
//        ad_zycfmx['ypsl'] := 0;
//      end
//      else
//      begin
        ad_zycfmx.append;
        cfmx_input.selectedindex := 0
//      end
  end
  else
  if ( key = #13 ) and ( cfmx_input.selectedfield.FieldName = 'ypmc' ) and ( trim( ad_zycfmx.fieldbyname( 'ypmc' ).asstring ) <> '' ) then //处理材料名称
    begin
      sp_cx_xyjg.close;
      cfbz := false;
      if ( trim( ad_zycfmx.fieldbyname( 'ypdm' ).asstring ) = '' ) or ( changedflag ) then
        sp_cx_xyjg.Parameters.ParamByName( '@pym' ).value := ad_zycfmx['ypmc']
      else
        sp_cx_xyjg.Parameters.ParamByName( '@pym' ).value := ad_zycfmx['ypdm'];
      sp_cx_xyjg.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
      sp_cx_xyjg.Open;
      changedflag := false;

      if sp_cx_xyjg.IsEmpty then
      begin
        messagedlg( '材料代码输入错误 或 该材料已没有库存，请检查后重新输入！', mterror, [mbok], 0 );
        cfmx_input.setfocus;
      end //材料代码查找不成功
      else
        if sp_cx_xyjg.RecordCount = 1 then
        begin
          ypdmmcprocess //查找成功
        end
        else
          if ( sp_cx_xyjg.recordcount > 1 ) and ( v_ypmc <> trim( ad_zycfmx.fieldbyname( 'ypmc' ).asstring ) ) then
          begin
            ypmc_grid.visible := true;
            myrect := cfmx_input.cellrect( 0, cfmx_input.row );
            //            ypmc_grid.left := myrect.left;
            //            if myrect.Bottom + ypmc_grid.height > cfmx_input.height then
            //              ypmc_grid.top := myrect.top - ypmc_grid.Height
            //            else
            //              ypmc_grid.top := myrect.Bottom;
            panel2.enabled := true;
            czwcg := false;
            ypmc_grid.setfocus;
          end; //查找成功但个数大于一
    end
    else
      if ( key = #13 ) and ( cfmx_input.selectedindex = 2 ) then
      begin
        cfmx_input.selectedindex := 4;
        cfbz := false;
      end;
end;

procedure Tfrm_clcfhj.ad_zycfmxAfterInsert( DataSet: TDataSet );
begin
  cfmx_input.selectedindex := 0;
  sp_cx_syje.close;
  sp_cx_syje.Parameters.ParamByName( '@zyh' ).value := sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
  sp_cx_syje.Open;
  if cfmx_input.GetFooterValue( 0, cfmx_input.columns[6] ) = '' then
    syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat + sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat -
      sp_cx_syje.fieldbyname( 'zfze' ).asfloat - strtofloat( cfmx_input.GetFooterValue( 0, cfmx_input.columns[6] ) )] )
  else
    syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat + sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat -
      sp_cx_syje.fieldbyname( 'zfze' ).asfloat - strtofloat( cfmx_input.GetFooterValue( 0, cfmx_input.columns[6] ) )] );
end;

procedure Tfrm_clcfhj.B_FINALClick( Sender: TObject );
begin
  close;
end;

procedure Tfrm_clcfhj.ad_zycfmxBeforePost( DataSet: TDataSet );
begin
  qhbz := true; //此初增加此标志是为了多表顺序操作时作求和处理
  if ( cfmx_input.SelectedIndex = 4 ) then
    if ad_zycfmx.fieldbyname( 'ypsl' ).asfloat <= 0 then
    begin
      messagedlg( '材料数量不正确，请输入正确数量', mterror, [mbok], 0 )
    end; //首先判断材料数量为不为0

  if ad_zycfmx.fieldbyname( 'xh' ).asinteger = 0 then
    if ad_zycfmx.RecNo = -1 then
      ad_zycfmx['XH'] := ad_zycfmx.RecordCount + 1
    else
      ad_zycfmx['XH'] := ad_zycfmx.RecNo + 1;
end;

procedure Tfrm_clcfhj.B_ENTERClick( Sender: TObject );
var
  i: integer;
  returnvalue: string;
  sffy: boolean;
  czje: real;
  v_ErrorID: string;
begin
  //写入zysf_zyfymx_ls
  //为各划价着手费标志
  //将临时表写入正式表
  //转入姓名处理下一人
  //b_enter.enabled:=true;
  czje := 0;
  b_enter.setfocus;
  if ad_zycfmx.state in [dsedit, dsinsert] then
    ad_zycfmx.post;
  if frm_func.Func_CheckPDZT( pub_ksdm ) then
  begin
    application.MessageBox( '系统正在进行盘点，不能发材料!', '注意', 16 );
    exit;
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
  zqbcbz := false;
  if strtofloat( cfmx_input.GetFooterValue( 0, cfmx_input.columns[5] ) ) > 0 then //总金额>0
  begin
    cfmx_input.SelectedIndex := 0;
    datasave( 'bqkf_zycfzb' );
    with sp_cx_syje do //查询余额
    begin
      close;
      Parameters.ParamByName( '@zyh' ).value := sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
      Open;
      syje.text := format( '%3.2f', [fieldbyname( 'yjze' ).asfloat + sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat -
        fieldbyname( 'zfze' ).asfloat - strtofloat( cfmx_input.GetFooterValue( 0, cfmx_input.columns[6] ) )] );
    end;
    b_enter.setfocus;
    i := 1;
    sffy := false;
    if ( trim( pri_kdks ) = '' ) or ( trim( pri_kdys ) = '' ) then
    begin
      lostsender := b_enter;
      if trim( pri_kdys ) = '' then
      begin
        application.MessageBox( '没有填入开单医生', '错误', mb_ok + mb_iconerror );
        kdys.setfocus;
        abort;
      end
    end;
    //病区划材料不进行收费下账判断
    {    if pub_fybz then //药房下帐
        begin
          application.MessageBox('系统设置为收费处记帐后下材料帐,处方保存成功!', '注意', 48);
          tmh.text := '';
          tmh.SetFocus;
          abort;
        end;}
    if zqbcbz then //处方已经正确保存
    begin
      if ( strtofloat( syje.text ) < 0 ) and ( not sffy ) then
      begin
        if application.messagebox( pchar( '病人账上资金不足，为方便你工作' + #13 + #13 +
          '                   是否使用超记金额记帐！' + #13 + #13 + '  处方号：' + xycf_bh ),
          '提示', mb_yesNo + mb_iconinformation + MB_DEFBUTTON2 ) = IDyes then
          czje := pub_cjje
        else
          czje := 0;
      end;
      if strtofloat( syje.text ) + czje >= 0 then
      begin
        sp_save.close;
        sp_save.Parameters.ParamByName( '@cfbh' ).value := xycf_bh;
        sp_save.Parameters.ParamByName( '@fyczy' ).value := pub_czydm;
        sp_save.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
        sp_save.Parameters.ParamByName( '@sjbh' ).value := string( get_sjh( pub_czydm ) );
        sp_save.Parameters.ParamByName( '@sc_cg' ).value := '0';
        sp_save.ExecProc;
        //        if sp_save.Parameters.ParamByName('@sc_cg').value = 1 then
        //          application.MessageBox('材料库存数不足,不能发药!', '注意', 16)
        //        else
        v_ErrorID := sp_save.Parameters.ParamByName( '@sc_cg' ).value;
        if v_ErrorID <> '0' then
          application.MessageBox( Pchar( '错误提示:处方发材料失败!' + #13 + '原因:' +
            v_ErrorID ), '错误提示', 16 )
        else
        begin
          application.MessageBox( '该处方发材料成功，处方已下帐!', '提示', 48 );
          yycfsj := true;
          tmh.SetFocus;
        end;
      end
      else
      begin
        if czje > 0 then
          application.MessageBox( '处方已保存，你的超记金额不足, 处方未下帐!', '提示', 0 + 48 )
        else
          application.MessageBox( '处方未下帐!', '提示', 0 + 48 );
        tmh.SetFocus;
      end;
    end;
  end;
end;

procedure Tfrm_clcfhj.cfmx_inputExit( Sender: TObject );
begin
  if changedflag then
    if not czwcg then
    begin
      if not ( ypmc_grid.focused or ypdw_grid.focused or b_giveup.focused ) then
      begin
        application.MessageBox( '数据没有保存，请选择结束当前划价或放弃！', '错误', MB_OK );
        CFMX_INPUT.SETFOCUS;
      end
    end
    else
      CFMX_INPUT.SETFOCUS;
end;

procedure Tfrm_clcfhj.kdysExit( Sender: TObject );
begin
  if ysksischange then
    ysprocess( kdys, pri_kdys )
  else
    cfmx_input.setfocus;
  cfmx_input.SelectedIndex := 0;
  frm_func.restorecolor( sender );
end;

procedure Tfrm_clcfhj.kdyskdks( cledit: Tedit; var dm: string );
begin
  cledit.text := sp_cx_czyks['mc'];
  dm := sp_cx_czyks['dm'];
  cfmx_input.SetFocus;
  ksys_grid.visible := false;
end;

procedure Tfrm_clcfhj.ksys_gridExit( Sender: TObject );
begin
  if ksys_grid.left = kdys.left then
    kdyskdks( kdys, pri_kdys )
end;

procedure tfrm_clcfhj.ysprocess( tempedit: Tedit; var pri_var: string );
begin
  sp_cx_czyks.Close;
  sp_cx_czyks.commandtext := 'select a.dm,a.mc,a.pym,a.ksdm,b.mc ksmc,a.zcdm,c.mc zcmc ' +
    ' from sys_czy a,sys_ksdm b,sys_zcdm c ' +
    ' where a.ksdm=b.dm and a.zcdm=c.dm and ' +
    ' a.ysbz=1 and cfbz=1 and ' +
    ' (a.pym like ' + #39 + '%' + trim( tempedit.Text ) + '%' + #39 +
    ' or a.mc like ' + #39 + '%' + trim( tempedit.Text ) + '%' + #39 + ')';
  sp_cx_czyks.Open;
  ysksischange := false;
  if sp_cx_czyks.IsEmpty then
  begin
    application.MessageBox( '医生代码输入错误或没有处方权，请重新输入', '错误', mb_ok + mb_iconerror );
    tempedit.Clear;
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
      ksys_grid.Columns[1].title.caption := '姓名';
      ksys_grid.Columns.add;
      ksys_grid.Columns[2].field := sp_cx_czyks.fieldlist[2];
      ksys_grid.Columns[2].title.caption := '拼音缩写';
      ksys_grid.left := tempedit.left;
      ksys_grid.top := tempedit.top + tempedit.Height;
      ksys_grid.visible := true;
      ksys_grid.setfocus;
    end
    else
      if sp_cx_czyks.recordcount = 1 then
      begin
        kdyskdks( tempedit, pri_var )
      end
end;

procedure Tfrm_clcfhj.zytyExecute( Sender: TObject );
begin
  try
    application.createform( Tfrm_hjcl_tf, frm_hjcl_tf );
    //    frm_fycl.tmh.text := tmh.text;

    frm_hjcl_tf.edt_bh.Text := tmh.Text;
    frm_hjcl_tf.showmodal;
  finally
    frm_hjcl_tf.free;
    //pub_td := 'a';
  end;

end;

procedure Tfrm_clcfhj.ad_zycfmxBeforeDelete( DataSet: TDataSet );
var
  saveplace2: tbookmark;
begin
  saveplace2 := ad_zycfmx.getbookmark;
  if ad_zycfmx.CompareBookmarks( saveplace, saveplace2 ) = 0 then
  begin
    czwcg := false;
    panel2.enabled := true;
  end;
end;

procedure Tfrm_clcfhj.B_giveupClick( Sender: TObject );
begin
  b_giveup.setfocus;
  tmh.text := '';
  tmh.setfocus;
end;

procedure Tfrm_clcfhj.tmhEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
  if ad_zycfmx.active then
    ad_zycfmx.close;
  bch.Text := '';
end;

procedure Tfrm_clcfhj.jfExecute( Sender: TObject );
begin
  if b_enter.enabled then
    B_ENTER.Click
end;

procedure Tfrm_clcfhj.xgExecute( Sender: TObject );
begin
  if b_giveup.enabled then
    B_giveup.Click
end;

procedure Tfrm_clcfhj.ad_zycfmxAfterDelete( DataSet: TDataSet );
begin
  sp_cx_syje.close;
  sp_cx_syje.Parameters.ParamByName( '@zyh' ).value := sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
  sp_cx_syje.Open;
  syje.text := format( '%3.2f', [sp_cx_syje.fieldbyname( 'yjze' ).asfloat + sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat -
    sp_cx_syje.fieldbyname( 'zfze' ).asfloat - strtofloat( cfmx_input.GetFooterValue( 0, cfmx_input.columns[6] ) )] );
end;

procedure Tfrm_clcfhj.dispysks( tempedit: Tedit; dm: string; czfs: integer; var pri_var: string );
begin
  if trim( dm ) <> '' then
  begin
    sp_cx_czyks.Close;
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

procedure Tfrm_clcfhj.kdksEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_clcfhj.kdysEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_clcfhj.czksEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_clcfhj.czysEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_clcfhj.ggEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_clcfhj.sfbzEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_clcfhj.slEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_clcfhj.jeEnter( Sender: TObject );
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_clcfhj.ggExit( Sender: TObject );
begin
  frm_func.restorecolor( sender );

end;

procedure Tfrm_clcfhj.sfbzExit( Sender: TObject );
begin
  frm_func.restorecolor( sender );
end;

procedure Tfrm_clcfhj.ypdw_gridKeyPress( Sender: TObject; var Key: Char );
var
  ypdj, cgdj, bzbl: real;
begin
  if key = #13 then
  begin
    cgdj := ad_zycfmx['kccgj'];
    ypdj := ad_zycfmx['ypdj'];
    bzbl := ad_zycfmx['ypbzbl'];
    ad_zycfmx.Edit;
    ad_zycfmx['ypdw'] := sp_cx_ypbz['ypdw'];
    ad_zycfmx['ypdwid'] := sp_cx_ypbz['id'];
    ad_zycfmx['ypbzbl'] := sp_cx_ypbz['bzbl'];
    ad_zycfmx['ypdj'] := ( ypdj / bzbl ) * sp_cx_ypbz['bzbl'];
    ad_zycfmx['kccgj'] := CGDJ;
    ypdw_grid.visible := false;
    cfmx_input.setfocus;
    //  ad_zycfmx.Post;
  end;
end;

procedure Tfrm_clcfhj.cfmx_inputKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
var
  i: integer;
begin
  if cfbz then
    ad_zycfmx.AutoCalcFields := False; //设置不自动计算 lookup field 值(ygycxm,06-06-02)
  if ( key = vk_down ) or ( key = vk_up ) or ( key = vk_left ) or ( key = vk_right ) or ( key = vk_tab ) then
    KEY := 0;
  if key = 27 then
  begin
    ad_zycfmx.delete;
    deletebz := true;
    ad_zycfmx.DisableControls;
    cfmx_input.SumList.Active := false;
    ad_zycfmx.First;
    for i := 1 to ad_zycfmx.RecordCount do
    begin
      ad_zycfmx.Edit;
      ad_zycfmx['XH'] := i;
      ad_zycfmx.next;
    end;
    ad_zycfmx.EnableControls;
    deletebz := false;
    cfmx_input.SumList.Active := true;
    ad_zycfmx.AfterPost( ad_zycfmx );
  end;
end;

procedure Tfrm_clcfhj.cfmx_inputEnter( Sender: TObject );
begin
  hjlb := 0
end;

procedure Tfrm_clcfhj.ad_zycfmxAfterPost( DataSet: TDataSet );
begin
  calCsum( 0 );
  calCsum( 1 );
end;

procedure Tfrm_clcfhj.FormShow( Sender: TObject );
begin
  //查询所有操作员,以备查询开单医生(ygycxm,06-05-12)
  qry_kdys.Open;
  //-------------------
  deletebz := false;
  tmh.setfocus;
  if trim( tmh.text ) <> '' then
    tmhExit( tmh );
end;

procedure Tfrm_clcfhj.KDYSKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    SelectNext( activeControl, true, true )
  else
    if ( key in ['A'..'z'] ) or ( key in ['0'..'9'] ) or ( ord( key ) > 127 ) then
      ysksischange := true;
end;

procedure Tfrm_clcfhj.brlr;
var
  ls: string;
  ye: real;
begin
  panel2.Caption := '';

  ye := sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asfloat
    + sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat
    - sp_cx_zybrjbqk.fieldbyname( 'zfze' ).asfloat;
  if ye < 0 then
    syje.Font.Color := clred
  else
    syje.Font.Color := clwhite;
  syje.Text := floattostrf( ye, fffixed, 18, 2 );
  if pub_cfbrfy = false then
  begin
    if ( sp_cx_zybrjbqk['fyxz'] = true ) and ( ye < 0 ) then
      application.MessageBox( '该病人已欠费，允许划价，但不能发材料!', '注意', 16 );
  end;
  zy_tmh := sp_cx_zybrjbqk.fieldbyname( 'tmh' ).asstring;
end;

procedure Tfrm_clcfhj.tmhChange( Sender: TObject );
begin
  pri_kdys := '';
  kdys.text := '';
end;

procedure Tfrm_clcfhj.tempgrid1DrawColumnCell( Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState );
begin
  with tempgrid1 do
  begin
    if DataSource.DataSet.FieldByName( 'syje' ).AsFloat > 0 then
    begin
      Canvas.Font.Color := ClBlack;
      Canvas.Brush.Color := clWindow;
    end
    else
    begin
      Canvas.Font.Color := clred;
      Canvas.Brush.Color := clWindow;
    end;
    //    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure Tfrm_clcfhj.SBt_wjfClick( Sender: TObject );
begin
  application.CreateForm( Tfrm_clhj_wjf, frm_clhj_wjf );
  try
    frm_clhj_wjf.Proc_tmh( tmh.Text );
    frm_clhj_wjf.ShowModal;
  finally
    frm_clhj_wjf.Free;
  end;
end;

procedure Tfrm_clcfhj.Act_wjfExecute( Sender: TObject );
begin
  SBt_wjf.Click;
end;

end.

