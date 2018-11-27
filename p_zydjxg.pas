unit p_zydjxg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DBSumLst, Grids,
  DBGrids, ComCtrls, SXAgeBox, SXXzqhBox,p_Makvar_zysf,Variants, StrUtils,
  cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDBExtLookupComboBox;

type
  Tfrm_zydjxg = class( TForm )
    sp_cx_zybrjbqk: TADOStoredProc;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    jbqk_cx: TADODataSet;
    dstemp: TDataSource;
    sp_up_jbqk: TADOStoredProc;
    ds_cx_zybrjbqk: TDataSource;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    Label40: TLabel;
    sfzh: TEdit;
    sbkh: TEdit;
    brxm: TEdit;
    brmz: TComboBox;
    brjg: TComboBox;
    brsf: TComboBox;
    brxb: TComboBox;
    brzy: TComboBox;
    lxr: TEdit;
    dwdh: TEdit;
    lxrdh: TEdit;
    lxrdz: TEdit;
    bch: TEdit;
    rytj: TComboBox;
    rybq: TComboBox;
    ryks: TComboBox;
    zfy: TEdit;
    yjze: TEdit;
    zdjf: TEdit;
    bz: TEdit;
    ryczy: TEdit;
    ndybzje: TEdit;
    ksdm: TEdit;
    tempgrid: TDBGrid;
    zgys: TComboBox;
    zycs: TMaskEdit;
    dwyb: TEdit;
    jtyb: TEdit;
    hljb: TComboBox;
    fylb: TEdit;
    tmh: TEdit;
    tempgrid1: TDBGrid;
    b_fylb: TBitBtn;
    Label8: TLabel;
    ylje: TEdit;
    lbl2: TLabel;
    brnl: TSXAgeBox;
    lbl1: TLabel;
    csrq: TDateTimePicker;
    bvl1: TBevel;
    Label4: TLabel;
    bah: TEdit;
    brdz: TSXXzqhBox;
    Button1: TButton;
    ryrq: TDateTimePicker;
    rysj: TDateTimePicker;
    ryzd: TComboBox;
    Label10: TLabel;
    edt_jsr: TEdit;
    Label_pq: TLabel;
    cbb_pq: TComboBox;
    lbl_tsbs: TLabel;
    cbb_tsbs: TComboBox;
    chk_lgbr: TCheckBox;
    procedure tmhExit( Sender: TObject );
    procedure BitBtn4Click( Sender: TObject );
    procedure FormKeyPress( Sender: TObject; var Key: Char );
    procedure BitBtn2Click( Sender: TObject );
    procedure FormCreate( Sender: TObject );
    procedure brsfExit( Sender: TObject );
    procedure brjgExit( Sender: TObject );
    procedure brmzExit( Sender: TObject );
    procedure brzyExit( Sender: TObject );
    procedure ryksExit( Sender: TObject );
    procedure rytjExit( Sender: TObject );
    procedure BitBtn3Click( Sender: TObject );
    procedure tempgridExit( Sender: TObject );
    procedure zgysExit( Sender: TObject );
    procedure BitBtn1Click( Sender: TObject );
    procedure hljbExit( Sender: TObject );
    procedure tempgrid1Exit( Sender: TObject );
    procedure brxmExit( Sender: TObject );
    procedure brxbExit( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure dwdzExit( Sender: TObject );
    procedure dwybExit( Sender: TObject );
    procedure b_fylbClick( Sender: TObject );
    procedure yljeExit( Sender: TObject );
    procedure brnlExit( Sender: TObject );
    procedure csrqExit( Sender: TObject );
    procedure sfzhExit(Sender: TObject);
    procedure dwdhExit(Sender: TObject);
    procedure tempgrid1CellClick(Column: TColumn);
    procedure tempgrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tempgridDblClick(Sender: TObject);
    procedure tempgridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure csrqChange(Sender: TObject);
    procedure brxmEnter(Sender: TObject);
    procedure lxrEnter(Sender: TObject);
    procedure lxrExit(Sender: TObject);
    procedure lxrdzEnter(Sender: TObject);
    procedure ryzdEnter(Sender: TObject);
    procedure bzEnter(Sender: TObject);
    procedure brnlChange(Sender: TObject);
    procedure ryzdExit(Sender: TObject);
    procedure cbb_tsbsExit(Sender: TObject);
  private
    v_ryks:string;
    { Private declarations }
  public
    { Public declarations }
    resultf, sfdm: string;
    tempcom: Tcombobox;
    procedure displayvalue;
    procedure displaynull;
    procedure finditems( tablename, numf, charf, resultf, info: string; tempcom: Tcombobox );
    procedure checkerror;
  end;

var
  frm_zydjxg: Tfrm_zydjxg;

implementation
uses p_dm, p_func, P_zysf_fylbtz, p_czbah;
{$R *.DFM}

procedure Tfrm_zydjxg.tmhExit( Sender: TObject );
begin
  //frm_func.restorecolor( sender );
  if ( not ( bitbtn4.Focused or bitbtn3.focused or b_fylb.Focused ) ) and ( trim( tmh.text ) <> '' ) then
  begin
    try
      tmh.text := formatex( strtoint( tmh.text ), 9 );
    except
    end;
    with sp_cx_zybrjbqk do
    begin
      Close;
      parameters.ParamByName( '@tmh' ).value := trim( tmh.text );
      parameters.ParamByName( '@xm' ).value := trim( tmh.text );
      parameters.ParamByName( '@bch' ).value := trim( tmh.text );
      active := true;
    end;
    if sp_cx_zybrjbqk.isempty then
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
        tempgrid1.top := tmh.top + tmh.Height;
        tempgrid1.visible := true;
        tempgrid1.setfocus;
      end
      else
      begin
        displayvalue;
        panel3.enabled := false;
        bitbtn2.setfocus;
      end;
  end
  else
    if not ( bitbtn4.Focused or bitbtn3.Focused or b_fylb.Focused ) then
    begin
      Application.MessageBox( '请输入病员姓名、住院卡号或床号！', '错误', 0 + 16 );
      tmh.setfocus;
    end
end;

procedure Tfrm_zydjxg.displayvalue;
begin
  //显示值
  ylje.Text := trim( floattostr( sp_cx_zybrjbqk.fieldbyname( 'ylje' ).asfloat ) );
  brxm.text := trim( sp_cx_zybrjbqk.fieldbyname( 'brxm' ).asstring );
  brxb.text := trim( sp_cx_zybrjbqk.fieldbyname( 'brxb' ).asstring );
  csrq.DateTime := sp_cx_zybrjbqk.fieldbyname( 'csrq' ).asdatetime;
  brnl.Csrq := csrq.DateTime;
  sfzh.text := trim( sp_cx_zybrjbqk.fieldbyname( 'sfzhm' ).asstring );
  sbkh.text := trim( sp_cx_zybrjbqk.fieldbyname( 'sbkh' ).asstring );
  brzy.text := trim( sp_cx_zybrjbqk.fieldbyname( 'brzy' ).asstring );
  brsf.text := trim( sp_cx_zybrjbqk.fieldbyname( 'sfmc' ).asstring );
  brjg.text := trim( sp_cx_zybrjbqk.fieldbyname( 'jgmc' ).asstring );
  brmz.text := trim( sp_cx_zybrjbqk.fieldbyname( 'mzmc' ).asstring );
  brdz.text := trim( sp_cx_zybrjbqk.fieldbyname( 'brdz' ).asstring );
  dwdh.text := trim( sp_cx_zybrjbqk.fieldbyname( 'dwdh' ).asstring );
  dwyb.text := trim( sp_cx_zybrjbqk.fieldbyname( 'dwyb' ).asstring );
  lxr.text := trim( sp_cx_zybrjbqk.fieldbyname( 'dbr' ).asstring );
  lxrdh.text := trim( sp_cx_zybrjbqk.fieldbyname( 'nxrdh' ).asstring );
  lxrdz.text := trim( sp_cx_zybrjbqk.fieldbyname( 'dbrdz' ).asstring );

  jtyb.text := trim( sp_cx_zybrjbqk.fieldbyname( 'hkyb' ).asstring );
  bch.text := trim( sp_cx_zybrjbqk.fieldbyname( 'bch' ).asstring );
  ryzd.text := trim( sp_cx_zybrjbqk.fieldbyname( 'ryzd' ).asstring );
  ksdm.text := trim( sp_cx_zybrjbqk.fieldbyname( 'ksmc' ).asstring );
  zgys.text := trim( sp_cx_zybrjbqk.fieldbyname( 'ysxm' ).asstring );
  zycs.text := trim( sp_cx_zybrjbqk.fieldbyname( 'zycs' ).asstring );
  fylb.text := trim( sp_cx_zybrjbqk.fieldbyname( 'lbmc' ).asstring );
  ryks.text := trim( sp_cx_zybrjbqk.fieldbyname( 'ryksmc' ).asstring );
  v_ryks:= trim( sp_cx_zybrjbqk.fieldbyname( 'ryksmc' ).asstring );
  rybq.text := trim( sp_cx_zybrjbqk.fieldbyname( 'rybq' ).asstring );

  rytj.text := trim( sp_cx_zybrjbqk.fieldbyname( 'tjmc' ).asstring );

//  ryrq.Date := formatdatetime( 'yyyy-MM-dd',
//    sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asdatetime );
//  rysj.Time := formatdatetime( 'HH:mm:ss',
//    sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asdatetime );
  ryrq.Date :=sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asdatetime;
  rysj.Time :=sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asdatetime;

  zdjf.text := trim( sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asstring );
  yjze.text := trim( sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asstring );
  zfy.text := trim( sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asstring );
  hljb.text := trim( sp_cx_zybrjbqk.fieldbyname( 'hljbmc' ).asstring );
  ndybzje.text := floattostr( sp_cx_zybrjbqk.fieldbyname( 'ybndzje' ).asfloat );
  ryczy.text := trim( sp_cx_zybrjbqk.fieldbyname( 'czyxm' ).asstring );
  bz.text := trim( sp_cx_zybrjbqk.fieldbyname( 'bz' ).asstring );
  edt_jsr.text := trim( sp_cx_zybrjbqk.fieldbyname( 'jsr' ).asstring ); //介绍人
  bah.text := trim( sp_cx_zybrjbqk.fieldbyname( 'bah' ).asstring );
  if pub_yydm='0225' then
  begin
    if Trim(sp_cx_zybrjbqk.FieldByName('lgbr').AsString)='1' then
    begin
      chk_lgbr.Checked :=True;
    end
    else
    begin
      chk_lgbr.Checked :=False;
    end;
  end;
  
  if pub_yydm='0240' then //特殊标识
  begin
     cbb_tsbs.Text:= trim( sp_cx_zybrjbqk.fieldbyname( 'tsbsmc' ).asstring );
  end;

  if pub_yydm='0271' then
  begin
   cbb_pq.ItemIndex:= cbb_pq.Items.IndexOf(sp_cx_zybrjbqk.fieldbyname( 'Area' ).asstring); //片区
  end;
  //增加判断是否收费的情况
  if pub_yydm='0234' then

   with DM_data do
   begin
     qry_pub.Close;
     qry_pub.SQL.Text := 'select isnull(sum(fyje),0) fyje from zysf_zyfymx where zyh=' + #39 + trim(sp_cx_zybrjbqk.fieldbyname('zyh').asstring) + #39 ;
     qry_pub.Open;
     if qry_pub.FieldByName('fyje').AsFloat =0 then
       ryks.Enabled:=true
     else
       ryks.Enabled:=false;
   end;

  //赋值给保存参数
     sp_up_jbqk.parameters.ParamByName( '@brsf' ).value := sp_cx_zybrjbqk.fieldbyname( 'brsf' ).asstring;
     sp_up_jbqk.parameters.ParamByName( '@brjg' ).value := sp_cx_zybrjbqk.fieldbyname( 'brjg' ).asstring;
     sp_up_jbqk.parameters.ParamByName( '@brmz' ).value := sp_cx_zybrjbqk.fieldbyname( 'brmz' ).asstring;
     sp_up_jbqk.parameters.ParamByName( '@zgys' ).value := sp_cx_zybrjbqk.fieldbyname( 'zgys' ).asstring;
     sp_up_jbqk.parameters.ParamByName( '@fylb' ).value := sp_cx_zybrjbqk.fieldbyname( 'fylb' ).asstring;
     sp_up_jbqk.parameters.ParamByName( '@ryks' ).value := sp_cx_zybrjbqk.fieldbyname( 'ryks' ).asstring;
     sp_up_jbqk.parameters.ParamByName( '@rytj' ).value := sp_cx_zybrjbqk.fieldbyname( 'rytj' ).asstring;
     sp_up_jbqk.parameters.ParamByName( '@hljb' ).value := sp_cx_zybrjbqk.fieldbyname( 'hljb' ).asstring;



end;

procedure Tfrm_zydjxg.displaynull;
begin
  //显示值
  brxm.text := '';
  brxb.text := '';
  csrq.DateTime := now;
  sfzh.text := '';
  sbkh.text := '';
  brzy.text := '';
  brsf.text := '';
  brjg.text := '';
  brmz.text := '';
  brdz.text := '';
  dwdh.text := '';
  dwyb.text := '';
  lxr.text := '';
  lxrdh.text := '';
  lxrdz.text := '';
  bah.text := '';
  jtyb.text := '';
  bch.text := '';
  ryzd.text := '';
  ksdm.text := '';
  zgys.text := '';
  zycs.text := '1';
  fylb.text := '';
  ryks.text := '';
  rybq.text := '';

  rytj.text := '';
  ryrq.DateTime := Date ;
  zdjf.text := '';
  yjze.text := '0';
  zfy.text := '0';
  hljb.text := '1';
  ndybzje.text := '0';
  ryczy.text := '';
  bz.text := '';
  edt_jsr.Text :='';
end;

procedure Tfrm_zydjxg.BitBtn4Click( Sender: TObject );
begin
  //frm_jbqk.Caption:=sfdm;
  close;
end;

procedure Tfrm_zydjxg.FormKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    if (activeControl.classname='TDBGrid') or
       (activeControl.classname='TSXXzqhBox') then
      Exit;
    SelectNext( activeControl, true, true );
  end;
end;

procedure Tfrm_zydjxg.BitBtn2Click( Sender: TObject );
begin
  panel3.enabled := true;
  brxm.setfocus;
end;

procedure Tfrm_zydjxg.FormCreate( Sender: TObject );
begin
  if pub_yydm='0225' then
  begin
    chk_lgbr.Visible:=true;
  end;
  //加入职业
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from zysf_brzy order by dm';
  jbqk_cx.Open;
  brZY.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brzy.items.Add( trim(jbqk_cx.FieldByName('sm').AsString) );
    jbqk_cx.next;
  end;
  //加入省份
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_sf order by sypl';
  jbqk_cx.Open;
  brsf.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brsf.items.Add( trim(jbqk_cx.FieldByName('mc').AsString) );
    jbqk_cx.next;
  end;
  //加入籍贯                                        
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_jg order by sypl';
  jbqk_cx.Open;
  brjg.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brjg.items.Add( trim(jbqk_cx.FieldByName('mc').AsString) );
    jbqk_cx.next;
  end;
  //加入民族
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_mz order by sypl';
  jbqk_cx.Open;
  brmz.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brmz.items.Add( trim(jbqk_cx.FieldByName('mc').AsString) );
    jbqk_cx.next;
  end;
  //加入医生
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_czy  where ysbz=1 order by dm';
  jbqk_cx.Open;
  zgys.Items.Clear;
  while not jbqk_cx.eof do
  begin
    zgys.items.Add( trim(jbqk_cx.FieldByName('mc').AsString) );
    jbqk_cx.next;
  end;

  //特殊标识
  if  (pub_yydm = '0240') then  //沙雅县人民医院
  begin
    jbqk_cx.Close;
    jbqk_cx.commandtext := 'select * from sys_tsbs where sybz=1';
    jbqk_cx.Open;
    cbb_tsbs.Items.Clear;
    while not jbqk_cx.eof do
    begin
      cbb_tsbs.items.Add( jbqk_cx['mc'] );
      jbqk_cx.next;
    end;
  end;

  //加入费用类别
  {jbqk_cx.Close;
  jbqk_cx.commandtext:='select * from sys_fylb order by dm';
  jbqk_cx.Open;
  fylb.Items.Clear;
  while not jbqk_cx.eof do
  begin
  fylb.items.Add(jbqk_cx['mc']);
  jbqk_cx.next;
  end;}
  //加入护理级别
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_hljb order by dm';
  jbqk_cx.Open;
  ryks.Items.Clear;
  while not jbqk_cx.eof do
  begin
    hljb.items.Add( trim(jbqk_cx.FieldByName('mc').AsString) );
    jbqk_cx.next;
  end;

  //加入科室
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_ksdm where sybz=1 and kssx=' + #39 + '09' + #39;
  jbqk_cx.Open;
  ryks.Items.Clear;
  while not jbqk_cx.eof do
  begin
    ryks.items.Add( trim(jbqk_cx.FieldByName('mc').AsString) );
    jbqk_cx.next;
  end;
  //加入入院途径
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from zysf_rytj order by dm';
  jbqk_cx.Open;
  rytj.Items.Clear;
  while not jbqk_cx.eof do
  begin
    rytj.items.Add( trim(jbqk_cx.FieldByName('sm').AsString) );
    jbqk_cx.next;
  end;
  //入院诊断
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_jbbm order by jbbm';
  jbqk_cx.Open;
  ryzd.Items.Clear;
  while not jbqk_cx.eof do
  begin
    ryzd.items.Add( jbqk_cx['jbmc'] );
    jbqk_cx.next;
  end;
  jbqk_cx.Close;
end;

procedure Tfrm_zydjxg.brsfExit( Sender: TObject );
begin
  if trim( brsf.text ) = '' then brsf.text := '01';
  //frm_func.restorecolor( sender );
  resultf := 'mc';
  tempcom := brsf;
  finditems( 'sys_sf', 'dm', 'py', 'mc', '省份', brsf );
  sp_up_jbqk.parameters.ParamByName( '@brsf' ).value := jbqk_cx['dm'];
end;

procedure Tfrm_zydjxg.finditems( tablename, numf, charf, resultf, info: string; tempcom: Tcombobox );
var
  findfield, s: string;
  i: integer;
  MaxDm:Integer;
begin
  s := trim( tempcom.Text );
  if s <> '' then
  begin
    if s[1] in ['0'..'9'] then
      findfield := numf
    else
      if s[1] in ['A'..'Z', 'a'..'z'] then
        findfield := charf
      else
        findfield := resultf;
    jbqk_cx.close;
    if s[1] in ['0'..'9'] then
      jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ' from ' + tablename + ' where ' + findfield + '=' + #39 + s + #39
    else
      jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ' from ' + tablename + ' where upper(' + findfield + ') like ' + #39 + '%' + uppercase( s ) + '%' + #39;
    jbqk_cx.Open;
    if jbqk_cx.IsEmpty then
    begin
      if tablename='sys_jg' then
      begin
        case Application.MessageBox(PChar(s+' 不存在，是否现在添加？'), '提示',
          MB_YESNO + MB_ICONQUESTION) of
          IDYES:
            begin
              dm_data.qry_pub.Close;
              dm_data.qry_pub.SQL.Text := 'select * from sys_jg order by dm desc';
              dm_data.qry_pub.Open;
              MaxDm := dm_data.qry_pub.FieldByName('dm').AsInteger;
              dm_data.qry_pub.Insert;
              dm_data.qry_pub.FieldByName('dm').Value := MaxDm + 1;
              dm_data.qry_pub.FieldByName('mc').Value := s;
              dm_data.qry_pub.FieldByName('sypl').Value := '0';
              dm_data.qry_pub.Post;
              dm_data.qry_pub.UpdateBatch(arCurrent);
            end;
          IDNO:
            begin
              tempcom.setfocus;
            end;
        end;


      end else
      begin
        messagedlg( '代码输入错误，没有找到相应' + info, mterror, [mbok], 0 );
        tempcom.setfocus;
      end;
    end
    else
      if jbqk_cx.Active and (jbqk_cx.RecordCount = 1) then
        tempcom.text := trim( jbqk_cx.FieldByName(resultf).AsString )
      else
      begin
        tempgrid.Columns.Clear;
        tempgrid.Columns.add;
        tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
        tempgrid.Columns[0].title.caption := '代码';
        tempgrid.Columns.add;
        tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
        tempgrid.Columns[1].title.caption := '名称';
        tempgrid.left := tempcom.left;
        tempgrid.top := tempcom.top + tempcom.Height;
        tempgrid.visible := true;
        tempgrid.setfocus;
      end;
  end
end;

procedure Tfrm_zydjxg.brjgExit( Sender: TObject );
begin

  if trim( brjg.text ) = '' then brjg.text := '1';
  resultf := 'mc';
  tempcom := brjg;
  //frm_func.restorecolor( sender );
  finditems( 'sys_jg', 'dm', 'py', 'mc', '籍贯', brjg );
  sp_up_jbqk.parameters.ParamByName( '@brjg' ).value := jbqk_cx['dm'];

end;

procedure Tfrm_zydjxg.brmzExit( Sender: TObject );
begin
  if trim( brmz.text ) = '' then brmz.text := '1';
  resultf := 'mc';
  tempcom := brmz;
  finditems( 'sys_mz', 'dm', 'py', 'mc', '民族', brmz );
  sp_up_jbqk.parameters.ParamByName( '@brmz' ).value := jbqk_cx['dm'];
end;

procedure Tfrm_zydjxg.brnlChange(Sender: TObject);
var
  strBrnl:string;
  intBrnl,index:Integer;
begin

  /// 更改年龄显示内容
  /// 大于1周岁的患者，年龄仅显示岁数；
  /// 小于1周岁的婴幼儿年龄显示月数加天数；小于30天的婴儿，年龄仅显示天数
  if Pos('岁',brnl.Text)>0 then
  begin
    index := Pos('岁',brnl.Text);
    strBrnl := LeftStr(brnl.Text,index-1);
    intBrnl := StrToInt(strBrnl);
    if intBrnl > 0 then
    begin
      brnl.Text := strBrnl + '岁';
    end
    else
    begin
      strBrnl := MidStr(brnl.Text,index+2,Length(brnl.Text)-index-1);
      if Pos('月',strBrnl)>0 then
      begin
        index := Pos('月',strBrnl);
        intBrnl := StrToInt(LeftStr(strBrnl,index-1));
        if intBrnl = 0 then
        begin
          brnl.Text := MidStr(strBrnl,index+2,Length(strBrnl)-index-1)
        end
        else
        begin
          brnl.Text := strBrnl;
        end;
      end
    end;
  end
  else
  begin
    if Pos('月',brnl.Text)>0 then
    begin
      index := Pos('月',brnl.Text);
      strBrnl := LeftStr(brnl.Text,index-1);
      intBrnl := StrToInt(strBrnl);
      if intBrnl = 0 then
      begin
        brnl.Text := MidStr(brnl.Text,index+2,Length(brnl.Text)-index-1)
      end
    end
  end;
end;

procedure Tfrm_zydjxg.brnlExit( Sender: TObject );
begin
  csrq.DateTime := brnl.Csrq;
end;

procedure Tfrm_zydjxg.brzyExit( Sender: TObject );
begin
  if trim( brzy.text ) = '' then brzy.text := '1';
  resultf := 'sm';
  tempcom := brzy;
  finditems( 'zysf_brzy', 'dm', 'dm', 'sm', '职业', brzy );
  sp_up_jbqk.parameters.ParamByName( '@brzy' ).value := trim(jbqk_cx.FieldByName('sm').AsString);
end;

procedure Tfrm_zydjxg.Button1Click(Sender: TObject);
var
  s:string;
begin
  if zydjBahzdsc then
  begin
    Application.CreateForm(Tfrm_czbah, frm_czbah);
    try
      frm_czbah.ShowModal;
      if frm_czbah.ModalResult = mrOk then
      begin
        if zydjBahzdsc then
        begin
          s:=Trim(frm_czbah.ComboBox1.Text);
          if s='' then raise Exception.Create('必須选择病案类型！');

          frm_czbah.sp_get_bah.Close;
          frm_czbah.sp_get_bah.Parameters.refresh;
          frm_czbah.sp_get_bah.Parameters.ParamByName('@Rylx').Value := s;
          frm_czbah.sp_get_bah.Parameters.ParamByName('@OutBah').Value := '';
          frm_czbah.sp_get_bah.ExecProc;
          try
            s := frm_czbah.sp_get_bah.Parameters.ParamByName('@OutBah').Value ;
          Except
            raise Exception.Create('获取病案号出错（无返回值）！请联系管理人员！');
          end;
        end;
        bah.Text := s;
      end;
    finally
      frm_czbah.Free;
    end;
  end else begin
    bah.Enabled := True;
  end;
end;

procedure Tfrm_zydjxg.ryksExit( Sender: TObject );
var
  findfield, s: string;
  i: integer;
begin
  s := trim( ryks.Text );
  tempcom := ryks;
  if s <> '' then
  begin
    if s[1] in ['0'..'9'] then
      findfield := 'dm'
    else
      if s[1] in ['A'..'Z', 'a'..'z'] then
        findfield := 'pym'
      else
        findfield := 'mc';
    resultf := 'mc';
    jbqk_cx.close;
    if s[1] in ['0'..'9'] then
      jbqk_cx.commandtext := 'select dm,mc from sys_ksdm where ' + findfield + '=' + #39 + s + #39 + ' and kssx=' + #39 + '09' + #39 + 'and  sybz=1'
    else
      jbqk_cx.commandtext := 'select dm,mc from sys_ksdm where upper(' + findfield + ') like ' + #39 + '%' + uppercase( s ) + '%' + #39 + ' and kssx=' + #39 + '09' + #39 + ' and sybz=1';

    jbqk_cx.Open;
    if jbqk_cx.IsEmpty then
    begin
      messagedlg( '代码输入错误，没有找到相应科室代码', mterror, [mbok], 0 );
      ryks.setfocus;
    end
    else
      if jbqk_cx.recordcount = 1 then
        tempcom.text := jbqk_cx[resultf]
      else
      begin
        tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
        tempgrid.Columns[0].title.caption := '代码';
        tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
        tempgrid.Columns[1].title.caption := '名称';
        tempgrid.left := tempcom.left;
        tempgrid.top := tempcom.top + tempcom.Height;
        tempgrid.visible := true;
        tempgrid.setfocus;
      end;
    //**********
    sp_up_jbqk.parameters.ParamByName( '@ryks' ).value := jbqk_cx['dm'];
  end;
end;

procedure Tfrm_zydjxg.rytjExit( Sender: TObject );
begin
  resultf := 'sm';
  tempcom := rytj;
  finditems( 'zysf_rytj', 'dm', 'dm', 'sm', '入院途径', rytj );
  sp_up_jbqk.parameters.ParamByName( '@rytj' ).value := jbqk_cx['dm'];
end;

procedure Tfrm_zydjxg.ryzdEnter(Sender: TObject);
begin
  ryzd.ImeMode:=imOpen;
  ryzd.ImeName:=Trim(pub_czysrf);
end;

procedure Tfrm_zydjxg.ryzdExit(Sender: TObject);
begin
  resultf := 'jbmc';
  tempcom := ryzd;
  finditems( 'sys_jbbm', 'jbbm', 'pym', 'jbmc', '入院诊断', ryzd);
end;

procedure Tfrm_zydjxg.sfzhExit(Sender: TObject);
var                                                                 
  i:Integer;
begin
  //frm_func.restorecolor( sender );
  if not (length(sfzh.text) in [0,15,18]) then
  begin
    Application.MessageBox('身份证号长度不合法', '错误', MB_OK + MB_ICONSTOP);
    sfzh.SetFocus;
  end else begin
    for I := 1 to Length(sfzh.Text) do begin
      if not (sfzh.Text[i] in [#$30..#$39]) and
         (i<>Length(sfzh.Text)) then
      begin
        Application.MessageBox('身份证号内容不合法', '错误', MB_OK +
          MB_ICONSTOP);
        sfzh.SetFocus;
        Exit;
      end;
    end;
  end;

end;

procedure Tfrm_zydjxg.BitBtn3Click( Sender: TObject );
begin
  if messagedlg( '确实放弃当前修改？', mtwarning, [mbyes, mbno], 0 ) = mryes then
  begin
    displaynull;
    tmh.text := '';
    panel3.enabled := true;
    tmh.setfocus;
  end
end;

procedure Tfrm_zydjxg.tempgridExit( Sender: TObject );
begin
  if jbqk_cx.Active then
  begin
    tempcom.text := trim( jbqk_cx[resultf] );
    tempgrid.Visible := false;
    if tempcom.CanFocus then tempcom.setfocus;
  end;
end;

procedure Tfrm_zydjxg.tempgridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    dwdh.SetFocus;
end;

procedure Tfrm_zydjxg.zgysExit( Sender: TObject );
var
  findfield, s: string;
  i: integer;
begin
  tempcom := zgys;
  s := trim( zgys.Text );
  if s <> '' then
  begin
    if zgys.Items.IndexOf(s)>=0 then
    begin
      jbqk_cx.close;
      jbqk_cx.commandtext :='select * from sys_czy where mc='''+s+''' ';
      jbqk_cx.Open;
      if jbqk_cx.IsEmpty then
      begin
        messagedlg( '代码输入错误，没有找到医生或该医生不属于本科室！', mterror, [mbok], 0 );
        zgys.setfocus;
      end;
    end else begin
    if s[1] in ['0'..'9'] then
      findfield := 'dm'
    else
      if s[1] in ['A'..'Z', 'a'..'z'] then
        findfield := 'pym'
      else
        findfield := 'mc';
    resultf := 'mc';
    jbqk_cx.close;
    if s[1] in ['0'..'9'] then
      jbqk_cx.commandtext := 'select dm, ' + resultf + ' from sys_czy where ' +
       findfield + ' =' + #39 + '%' + s + '%' + #39 +
       ' and ysbz=1 and sybz = 1 and txbz=0 and ksdm=' + #39 +
       sp_cx_zybrjbqk.fieldbyname( 'ksdm' ).asstring + #39
    else
      jbqk_cx.commandtext := 'select dm, ' + resultf + ' from sys_czy where upper(' +
      findfield + ') like ' + #39 + '%' + uppercase( s ) + '%' + #39 +
      ' and sybz  = 1 and ysbz=1 and txbz=0 and ksdm=' + #39 +
      sp_cx_zybrjbqk.fieldbyname( 'ksdm' ).asstring + #39;
    jbqk_cx.Open;
    if jbqk_cx.IsEmpty then
    begin
      messagedlg( '代码输入错误，没有找到医生或该医生不属于本科室！', mterror, [mbok], 0 );
      zgys.setfocus;
    end
    else
      if jbqk_cx.RecordCount = 1 then
        zgys.text := jbqk_cx[resultf]
      else
      begin
        tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
        tempgrid.Columns[0].title.caption := '代码';
        tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
        tempgrid.Columns[1].title.caption := '名称';
        tempgrid.left := tempcom.left;
        tempgrid.top := tempcom.top + tempcom.Height;
        tempgrid.visible := true;
        tempgrid.setfocus;
      end;
    end;
    sp_up_jbqk.parameters.ParamByName( '@zgys' ).value := jbqk_cx['dm'];
  end
end;

procedure Tfrm_zydjxg.cbb_tsbsExit(Sender: TObject);
var
  findfield, s: string;
  i: integer;
begin
//  resultf := 'mc';
//  tempcom := cbb_tsbs;
//  finditems( 'sys_tsbs', 'dm', 'dm', 'mc', ' 特殊标识', cbb_tsbs );
//  sp_up_jbqk.parameters.ParamByName( '@tsbs' ).value := jbqk_cx['dm'];
  s := trim( cbb_tsbs.Text );
  tempcom := cbb_tsbs;
  if s <> '' then
  begin
    if s[1] in ['0'..'9'] then
      findfield := 'dm'
    else
//      if s[1] in ['A'..'Z', 'a'..'z'] then
//        findfield := 'pym'
//      else
        findfield := 'mc';
    resultf := 'mc';
    jbqk_cx.close;
    if s[1] in ['0'..'9'] then
      jbqk_cx.commandtext := 'select dm,mc from sys_tsbs where ' + findfield + '=' + #39 + s + #39 + 'and  sybz=1'
    else
      jbqk_cx.commandtext := 'select dm,mc from sys_tsbs where upper(' + findfield + ') like ' + #39 + '%' + uppercase( s ) + '%' + #39 +  ' and sybz=1';

    jbqk_cx.Open;
    if jbqk_cx.IsEmpty then
    begin
      messagedlg( '代码输入错误，没有找到相应科室代码', mterror, [mbok], 0 );
      cbb_tsbs.setfocus;
    end
    else
      if jbqk_cx.recordcount = 1 then
        tempcom.text := jbqk_cx[resultf]
      else
      begin
        tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
        tempgrid.Columns[0].title.caption := '代码';
        tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
        tempgrid.Columns[1].title.caption := '名称';
        tempgrid.left := tempcom.left;
        tempgrid.top := tempcom.top + tempcom.Height;
        tempgrid.visible := true;
        tempgrid.setfocus;
      end;
    //**********
    sp_up_jbqk.parameters.ParamByName( '@tsbs' ).value := jbqk_cx['dm'];
  end;
end;

procedure Tfrm_zydjxg.checkerror;
begin
  if trim( brxm.text ) = '' then
  begin
    application.MessageBox( '请输入病人姓名', '错误', mb_ok + mb_iconerror );
    brxm.SetFocus;
    abort;
  end;
  if trim( brxb.text ) = '' then
  begin
    application.MessageBox( '请输入病人性别', '错误', mb_ok + mb_iconerror );
    brxb.SetFocus;
    abort;
  end;
  if trim( brzy.text ) = '' then
  begin
    application.MessageBox( '请输入病人职业', '错误', mb_ok + mb_iconerror );
    brzy.SetFocus;
    abort;
  end;
  if trim( brsf.text ) = '' then
  begin
    application.MessageBox( '请输入病人省份', '错误', mb_ok + mb_iconerror );
    brsf.SetFocus;
    abort;
  end;
  if trim( brjg.text ) = '' then
  begin
    application.MessageBox( '请输入病人籍贯', '错误', mb_ok + mb_iconerror );
    brjg.SetFocus;
    abort;
  end;
  if trim( brmz.text ) = '' then
  begin
    application.MessageBox( '请输入病人民族', '错误', mb_ok + mb_iconerror );
    brmz.SetFocus;
    abort;
  end;
  if trim( brdz.text ) = '' then
  begin
    application.MessageBox( '请输入病人单位地址', '错误', mb_ok + mb_iconerror );
    brdz.SetFocus;
    abort;
  end;
  if pub_yydm <> '0132' then //2010-11-23盐亭肿瘤医院不检查联系人和联系人地址
  begin
    if trim( lxr.text ) = '' then
    begin
      application.MessageBox( '请输入联系人姓名', '错误', mb_ok + mb_iconerror );
      lxr.SetFocus;
      abort;
    end;
    if trim( lxrdz.text ) = '' then
    begin
      application.MessageBox( '请输入联系人地址', '错误', mb_ok + mb_iconerror );
      lxrdz.SetFocus;
      abort;
    end;
  end;
  if trim( ksdm.text ) = '' then
  begin
    application.MessageBox( '请输入住院科室', '错误', mb_ok + mb_iconerror );
    ksdm.SetFocus;
    abort;
  end;
   if (ryks.Text='') and  (ryks.Enabled = true) then
    begin
     application.MessageBox( '请输入入院科室', '错误', mb_ok + mb_iconerror );
     ryks.SetFocus;
     abort;
     end      
end;

procedure Tfrm_zydjxg.csrqChange(Sender: TObject);
begin
  keybd_event(vk_right,0,KEYEVENTF_EXTENDEDKEY,0);//值改变时模拟一次右键头实现日期连续输入
end;

procedure Tfrm_zydjxg.csrqExit( Sender: TObject );
begin
  brnl.Csrq := csrq.DateTime;
end;

procedure Tfrm_zydjxg.BitBtn1Click( Sender: TObject );
var
  k,xgbq: string;
  FSetting : TFormatSettings;
begin
  checkerror;
  if ( sp_cx_zybrjbqk.Active ) and ( trim( tmh.text ) <> '' ) then
  begin
    sp_up_jbqk.parameters.ParamByName( '@tmh' ).value := trim( sp_cx_zybrjbqk['tmh'] );
    sp_up_jbqk.parameters.ParamByName( '@zyh' ).value := trim( sp_cx_zybrjbqk['zyh'] );
    sp_up_jbqk.parameters.ParamByName( '@brxm' ).value := brxm.text;
    sp_up_jbqk.parameters.ParamByName( '@pym' ).value := GetPym(Trim(brxm.text));
    sp_up_jbqk.parameters.ParamByName( '@bah' ).value := bah.text;
    sp_up_jbqk.parameters.ParamByName( '@brxb' ).value := brxb.text;
    sp_up_jbqk.parameters.ParamByName( '@brzy' ).value := brzy.text;
    sp_up_jbqk.parameters.ParamByName( '@csrq' ).value := csrq.DateTime;
    sp_up_jbqk.parameters.ParamByName( '@brnl' ).value := brnl.text;
    sp_up_jbqk.parameters.ParamByName( '@sfzhm' ).value := sfzh.text;
    sp_up_jbqk.parameters.ParamByName( '@sbkh' ).value := sbkh.text;
    sp_up_jbqk.parameters.ParamByName( '@brdz' ).value := brdz.text;
    sp_up_jbqk.parameters.ParamByName( '@dwdh' ).value := dwdh.text;
    sp_up_jbqk.parameters.ParamByName( '@dwyb' ).value := dwyb.text;
    sp_up_jbqk.parameters.ParamByName( '@dbr' ).value := lxr.text;
    sp_up_jbqk.parameters.ParamByName( '@nxrdh' ).value := lxrdh.text;
    sp_up_jbqk.parameters.ParamByName( '@dbrdz' ).value := lxrdz.text;
    sp_up_jbqk.parameters.ParamByName( '@hkyb' ).value := jtyb.text;
    sp_up_jbqk.parameters.ParamByName( '@bch' ).value := bch.text;
    sp_up_jbqk.parameters.ParamByName( '@ryzd' ).value := ryzd.text;
    if pub_yydm = '0225' then
    begin
      if chk_lgbr.Checked = true then
      begin
        sp_up_jbqk.parameters.ParamByName('@lgbr').value := 1;
      end
      else
      begin
        sp_up_jbqk.parameters.ParamByName('@lgbr').value := 0;
      end;
    end;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.text:='select * from sys_bqzyfl where bqzydm='+''''+sp_up_jbqk.parameters.ParamByName( '@ryks' ).value+'''';
    DM_data.qry_pub.open;
    xgbq:= DM_data.qry_pub.FieldByName('bqdm').AsString;
    if trim( zycs.text ) <> '' then
      sp_up_jbqk.parameters.ParamByName( '@zycs' ).value := strtoint( trim( zycs.text ) )
    else
      sp_up_jbqk.parameters.ParamByName( '@zycs' ).value := 1;

    sp_up_jbqk.parameters.ParamByName( '@rybq' ).value := rybq.text;
    //sp_up_jbqk.parameters.ParamByName( '@ryrq' ).value := strtodatetime( ryrq.text );

    FSetting.ShortDateFormat := 'yyyy-MM-dd';
    FSetting.ShortTimeFormat := 'HH:mm:ss';
    FSetting.DateSeparator := '-';
    FSetting.TimeSeparator := ':';
    sp_up_jbqk.parameters.ParamByName( '@ryrq' ).value :=
           strtodatetime( formatdatetime( 'yyyy-MM-dd', ryrq.Date ) +
            ' ' + formatdatetime( 'HH:mm:ss', rysj.Time ), FSetting );
    sp_up_jbqk.parameters.ParamByName( '@zdjf' ).value := strtofloat( zdjf.text );
    sp_up_jbqk.parameters.ParamByName( '@ybndzje' ).value := strtofloat( ndybzje.text );
    //sp_up_jbqk.parameters.ParamByName('@zgys').value:=ryczy.text:=sp_cx_zybrjbqk.fieldbyname('czyxm').asstring;
    sp_up_jbqk.parameters.ParamByName( '@bz' ).value := bz.text;
    sp_up_jbqk.parameters.ParamByName( '@brnl' ).value := brnl.Text;
    sp_up_jbqk.parameters.ParamByName( '@jsr' ).value := edt_jsr.Text; //介绍人掇刀
    sp_up_jbqk.parameters.ParamByName( '@pq' ).value := cbb_pq.Text;   //片区掇刀
    //sp_up_jbqk.parameters.ParamByName( '@pym' ).value := '';
    sp_up_jbqk.parameters.ParamByName( '@sczt' ).value := 'a';

    sp_up_jbqk.ExecProc;
    k := sp_up_jbqk.Parameters.ParamByName( '@sczt' ).value;
    if sp_up_jbqk.Parameters.ParamByName( '@sczt' ).value <> '0' then
    begin
      messagedlg( '保存未成功，请重新保存！', mtinformation, [mbok], 0 );
      bitbtn1.setfocus;
    end
    else
    begin

    if (ryks.Enabled=true) and (ryks.text<>'') and (pub_yydm='0234') then         //清空安置床位开始zhangli
    if trim(ryks.text)<>v_ryks then     //如果入院科室修改了
    try
      begin
         with DM_data do
         begin
           qry_pub.Close;
           qry_pub.sql.clear;
           qry_pub.SQL.Text := 'update sys_kscwsz set zyh='+#39+#39 +
                           ' where zyh='+#39+trim(sp_cx_zybrjbqk['zyh'])+#39;
          qry_pub.ExecSQL;
          qry_pub.Close;
          qry_pub.SQL.Clear;
          qry_pub.sql.Text :=' update zysf_zydj set bch='+#39+#39 +
                             '  ,bqdm='+''''+xgbq+''''+',ksdm='+''''+sp_up_jbqk.parameters.ParamByName( '@ryks' ).value+''''+' where zyh='+#39+trim(sp_cx_zybrjbqk['zyh'])+#39;
          qry_pub.ExecSQL;
         end;

          showmessage('安置床位已清空！');
      end;
    except
        showmessage('清空床位失败！');
    end;                                                 //清空安置床位结束zhangli

      panel3.enabled := true;
      tmh.SetFocus;
      tmh.text := '';
      displaynull;
    end;

  end;
end;

procedure Tfrm_zydjxg.hljbExit( Sender: TObject );
begin
  resultf := 'mc';
  tempcom := hljb;
  finditems( 'sys_hljb', 'dm', 'dm', 'mc', '护理级别', hljb );
  sp_up_jbqk.parameters.ParamByName( '@hljb' ).value := jbqk_cx['dm'];
end;

procedure Tfrm_zydjxg.lxrdzEnter(Sender: TObject);
begin
  lxrdz.ImeMode:=imOpen;
  lxrdz.ImeName:=Trim(pub_czysrf);
end;

procedure Tfrm_zydjxg.lxrEnter(Sender: TObject);
begin
  lxr.ImeMode:=imOpen;
  lxr.ImeName:=Trim(pub_czysrf);
  //frm_func.changecolor( sender );
end;

procedure Tfrm_zydjxg.lxrExit(Sender: TObject);
begin
  lxr.ImeMode:=imClose;
end;

procedure Tfrm_zydjxg.tempgrid1CellClick(Column: TColumn);
begin
  brxm.SetFocus;
end;

procedure Tfrm_zydjxg.tempgrid1Exit( Sender: TObject );
begin
  tmh.text := sp_cx_zybrjbqk['tmh'];
  tempgrid1.Visible := false;
  displayvalue;
  bitbtn2.setfocus;
end;

procedure Tfrm_zydjxg.tempgrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=13 then
   brxm.SetFocus;
end;

procedure Tfrm_zydjxg.tempgridDblClick(Sender: TObject);
begin
  dwdh.SetFocus;
end;

procedure Tfrm_zydjxg.brxmEnter(Sender: TObject);
begin
  brxm.ImeMode:=imOpen;
  brxm.ImeName:=Trim(pub_czysrf);
end;

procedure Tfrm_zydjxg.brxmExit( Sender: TObject );
begin
  brxm.ImeMode:=imClose;
  //frm_func.restorecolor( sender );
end;

procedure Tfrm_zydjxg.brxbExit( Sender: TObject );
begin
  if (trim( brxb.text ) <> '男') and
     (trim( brxb.text ) <> '女') then brxb.text := '男';
  //frm_func.restorecolor( sender );
end;

procedure Tfrm_zydjxg.FormShow( Sender: TObject );
var
  yymc :string;
begin
  if pub_yydm='0240' then
  begin
    Label13.Caption:='单位地址';
    lbl_tsbs.Visible := True;
    cbb_tsbs.Visible := True;
    sp_up_jbqk.ProcedureName:='zysf_up_zybrjbqk';
    sp_up_jbqk.Parameters.Refresh;
  end;
  yymc:=Copy(pub_yymc,1,4);
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select * from sys_xzqh where qhmc like ''%'+yymc+'%''';
  DM_data.qry_pub.open;
  brdz.defaultXzqh:=Copy(DM_data.qry_pub.FieldByName('qhdm').asstring,1,2);
  brnl.SysDatetime := Frm_func.curr_date;
  tmh.Color := clwindow;
  ylje.ReadOnly := not zysfsffyylje;
  if trim( tmh.text ) <> '' then
  begin
    tmh.setfocus;
    tmhExit( tmh );
  end;
  if pub_tmhxsbz = false then
    tmh.PasswordChar := '*';

  if ( pub_yydm = '0132' ) or ( pub_yydm = '0136' ) then //0132	盐亭县肿瘤医院,0136 石泉县中医医院
  begin
    ryrq.Enabled := false;
  end;

  if zydjBahzdsc then
  begin
    bah.Enabled := False;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select 1 from sys_czy where dm='''+pub_czydm+
                                ''' and charindex(''ZYSFA08'',qxsm)>0';
    DM_data.qry_pub.Open;

    if (DM_data.qry_pub.IsEmpty) and (pub_czydm<>'9999') then
    begin
      button1.Visible:= False;
    end;
  end else begin
    button1.Visible:= False;
  end;
  if pub_yydm='0271' then //掇刀医院代码
  begin
   Label_pq.Visible := True;
   cbb_pq.Visible := True;
  end;
end;

procedure Tfrm_zydjxg.dwdhExit(Sender: TObject);
var
  i:Integer;
begin
  if pub_yydm='0240' then
  begin

  end
  else
  begin
    //frm_func.restorecolor( sender );
    for I := 1 to Length((Sender as Tedit).Text) do begin
      if not ((Sender as Tedit).Text[i] in [#$30..#$39,#$2B,#$2D]) then
      begin
        Application.MessageBox('电话号码内容不合法,只能是  0-9,-,+ ', '错误', MB_OK +
          MB_ICONSTOP);
        (Sender as Tedit).SetFocus;
        Exit;
      end;
    end;
  end;
end;

procedure Tfrm_zydjxg.dwdzExit( Sender: TObject );
begin
  //frm_func.restorecolor( sender );
  if ( length( trim( brdz.text ) ) > 0 ) and ( length( trim( lxrdz.text ) ) = 0 ) then
    lxrdz.Text := brdz.text;
end;

procedure Tfrm_zydjxg.dwybExit( Sender: TObject );
begin
  //frm_func.restorecolor( sender );
  if ( length( trim( dwyb.text ) ) > 0 ) and ( length( trim( jtyb.text ) ) = 0 ) then
    jtyb.Text := dwyb.text;
end;

procedure Tfrm_zydjxg.bzEnter(Sender: TObject);
begin
  bz.ImeMode:=imOpen;
  bz.ImeName:=Trim(pub_czysrf);
end;

procedure Tfrm_zydjxg.b_fylbClick( Sender: TObject );
begin
  application.CreateForm( Tfrm_zysf_fylbtz, frm_zysf_fylbtz );
  frm_zysf_fylbtz.tmh.Text := tmh.Text;
  try
    frm_zysf_fylbtz.ShowModal;
  finally
    frm_zysf_fylbtz.free;
  end;
end;

procedure Tfrm_zydjxg.yljeExit( Sender: TObject );
begin
    try
    with dm_data.Qry_pub do
    begin
      close;
      sql.Clear;
      sql.text := 'update zysf_zydj set ylje=' + trim( ylje.Text ) +
        ' where tmh=' + #39 + trim( sp_cx_zybrjbqk['tmh'] ) + #39;
      ExecSQL;
    end;
  except
    application.MessageBox( '预留金额输入错误', '', 0 + 16 );
  end;
end;
initialization
  RegisterClass( Tfrm_zydjxg );

end.

