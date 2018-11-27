unit p_hspbb_pb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, StdCtrls, Buttons,TypInfo,cxGridDBDataDefinitions,
  cxButtonEdit, cxCalc,StrUtils, DBGridEhGrouping, GridsEh, DBGridEh,
  cxGridBandedTableView, cxGridDBBandedTableView, cxTextEdit, Menus, ComCtrls;

type
  Tfrm_hspbb_pb = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    qry_hspbb_bc: TADOQuery;
    ds_hspbb_pb: TDataSource;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    DBGridEh2: TDBGridEh;
    qry_bczh1: TADOQuery;
    ds_bczh1: TDataSource;
    ADOQuery1: TADOQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Panel3: TPanel;
    GroupBox3: TGroupBox;
    hsly: TMemo;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    ksts: TMemo;
    qry_hbjl: TADOQuery;
    Panel1: TPanel;
    ad_hbjl: TADODataSet;
    cxGrid1DBBandedTableView1Column16: TcxGridDBBandedColumn;
    PopupMenu2: TPopupMenu;
    N2: TMenuItem;
    ad_hsly: TADODataSet;
    qry_hspbb_pb: TADOQuery;
    PopupMenu3: TPopupMenu;
    N3: TMenuItem;
    qry_ksts: TADOQuery;
    DBGridEh1: TDBGridEh;
    qry_hsly: TADOQuery;
    ds_hbjl: TDataSource;
    sp_jpbc: TADOStoredProc;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column9: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column10: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column11: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column12: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column13: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column14: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column15: TcxGridDBBandedColumn;
    N4: TMenuItem;
    DBGridEh3: TDBGridEh;
    sp_bctj: TADOStoredProc;
    ds_bctj: TDataSource;
    SP_SE_CWS: TADOStoredProc;
    SP_SE_BCZY: TADOStoredProc;
    Panel6: TPanel;
    N5: TMenuItem;
    qry_scbc: TADOQuery;
    N6: TMenuItem;
    qry_czy: TADOQuery;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    qry_hsly1: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBBandedTableView1Column1CompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBBandedTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBBandedTableView1Column16CompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);


  private
    { Private declarations }
     function xtcs(): integer;
  public
    { Public declarations }
       sfzhpb:Boolean;
       zhpbmc:string;
       function strToColor(s: string): TColor;
       procedure bcclick(sender:TObject);

  end;

var
  frm_hspbb_pb: Tfrm_hspbb_pb;
  cxx,cxy:integer;
  C:Array[0..100] of tpanel ;
  dqrq:string;


implementation
uses
p_hspbb_main,p_dm,p_func;

{$R *.dfm}

function Tfrm_hspbb_pb.xtcs(): integer;
const
{  pan_width = 50;
  pan_height = 70;
  leftspace = 10;
  bcspace = 6;
  topspace = 10;
  xb_left = 5;
  xb_top = 18;
  hljb_left = 23;
  hljb_top = 18;
  bch_left = 2;
  bch_top = 3;
  kb_left = 2;
  kb_top = 55;
  xm_left = 6;
  xm_top = 40;
  rowc = 50; }  //中心医院

  pan_width = 100;
  pan_height = 40;
  leftspace = 6;
  bcspace = 6;
  topspace = 6;
  xb_left = 45;
  xb_top = 3;
  hljb_left = 69;
  hljb_top = 3;
  brzt_left = 89 ;
  brzt_top = 3;
  bch_left = 2;
  bch_top = 3;
  kb_left = 2;
  wjz_top =90;
  wjz_left=2;
  kb_top = 90;
  xm_left = 6;
  xm_top = 40;
  ry_left = 6;
  ry_top =70;
  rowc = 50;

  fontsize=12;

var
    //多于空白
  modspace: integer;
  dt_bc: Tpanel;
  dt_bch, dt_brxm, dt_kb,dt_hldy,dt_brzt,dt_ryzd,dt_wjz: Tlabel;
  dt_img_xb, dt_img_hljb: Timage;
  dt_line:Tshape;
  bclb_color: array[1..rowc] of integer;
    //行的数量
  i, ii: integer;
    //列的数量
  j, jj: integer;
    //病床号的坐标
  x_bch, y_bch: integer;
  cw: integer;
  cws,n: integer;
  pbk: array[1..400] of TPanel;
//  f:textfile;

begin
//  assignfile(f,'c:\hsgzz.txt');
//  rewrite(f);
//  temp_sender1 := Panel2;
 { bclb_color[1] := $00D1D1CF;
  bclb_color[2] := $00E6E9EA;
  bclb_color[3] := $00B8A889;
  bclb_color[4] := $00A899A6;
  bclb_color[5] := clteal;
  bclb_color[6] := $0080FF00;
  bclb_color[7] := $00BCB485;
  bclb_color[8] := $00A786BB;
  bclb_color[9] := $00ACB18F;
  bclb_color[10] := $00ED5B54;
  bclb_color[11] := $00FF80FF;
  bclb_color[12] := $00E91675;
  bclb_color[13] := $00C08000;
  bclb_color[14] := $00FF8000;
  bclb_color[15] := $0080FF00;
  bclb_color[16] := $0040FF00;
  bclb_color[17] := $00AF509C;
  bclb_color[18] := $00667799;
  bclb_color[19] := $0080619E;
  bclb_color[20] := $0076A857;
  bclb_color[21] := rgb(238, 162, 173);
  bclb_color[22] := rgb(255, 182, 193);
  bclb_color[23] := rgb(224, 102, 255);
  bclb_color[24] := rgb(188, 210, 238);
  bclb_color[25] := rgb(162, 181, 205);
  bclb_color[26] := rgb(135, 206, 250);
  bclb_color[27] := rgb(150, 205, 205);
  bclb_color[28] := rgb(72, 209, 204);
  bclb_color[29] := rgb(118, 238, 198);
  bclb_color[30] := rgb(84, 255, 159);
  bclb_color[31] := rgb(154, 255, 154);
  bclb_color[32] := rgb(255, 211, 155);
  bclb_color[33] := rgb(222, 184, 135);
  bclb_color[34] := rgb(205, 175, 149);
  bclb_color[35] := rgb(125, 158, 192);
  bclb_color[36] := rgb(113, 198, 113);
  bclb_color[37] := rgb(142, 142, 56);
  bclb_color[38] := rgb(233, 150, 122);
  bclb_color[39] := rgb(255, 193, 56);
  bclb_color[40] := rgb(173, 255, 47);
  bclb_color[41] := rgb(255, 246, 143);
  bclb_color[42] := rgb(188, 238, 104);
  bclb_color[43] := rgb(180, 238, 180);
  bclb_color[44] := rgb(193, 255, 193);
  bclb_color[45] := rgb(64, 224, 208);
  bclb_color[46] := rgb(0, 199, 140);
  bclb_color[47] := rgb(151, 255, 255);
  bclb_color[48] := rgb(0, 206, 209);
  bclb_color[49] := rgb(135, 206, 250);
  bclb_color[50] := rgb(244, 244, 244);

    //处理床位数  开始
    //1.床位数
  if pub_bqdm <> '' then
  begin
    with sp_se_cws do
    begin
      close;
      Parameters.ParamByName('@qjdm').value := trim(pub_bqdm); //病区
      active := true;
    end;
    ii := sp_se_cws['cws'] div rowc;
    if sp_se_cws['cws'] / rowc > ii then
      ii := ii + 1;
    cws := sp_se_cws['cws'];
    sp_se_cws.Close;//****

        //2.病床占用
    with sp_se_bczy do
    begin
      close;
      Parameters.ParamByName('@qjdm').value := pub_bqdm; //病区
      Parameters.ParamByName('@plcx').value := 0; //病区
      Parameters.ParamByName('@hsdm').value := ''; //全科
      active := true;
    end;


        //生成可变数组
        //处理床位数  结束
        //求每一行病人数
    ii := (bcpocket.width - leftspace) div (pan_width + leftspace);
        //将放置panel2的余量平均费配到panel 空白
    if (bcpocket.width - leftspace) mod (pan_width + leftspace) <> 0 then
      modspace := ((bcpocket.width - leftspace) mod (pan_width + leftspace)) div ii;
        //以下生成床位在用图
    sp_se_bczy.First;
    i := 1;
    j := 1; //行数
    n := 0;
    while (not sp_se_bczy.eof) and (cws <> 0) do
    begin
//      writeln(f,formatdatetime('yyyy-mm-dd hh:mm:ss.zzz',now()));
      if i <= ii then //生成病床图
      begin
                //calmhawk
       n := strtoint(trim(sp_se_bczy.fieldbyname('plcx').asstring));
       pbk[n] := Tpanel.Create(self);
       pbk[n].Color := clBtnFace;
       pbk[n].width := pan_width + 6;
       pbk[n].height := pan_height + 6;
       pbk[n].left := (i - 1) * (pan_width) + i * (leftspace + modspace) - 3;
       pbk[n].top := (j - 1) * (pan_height) + j * topspace - 3;

        dt_bc := tpanel.create(self);
        dt_bc.name := 'bc' + trim(sp_se_bczy.fieldbyname('plcx').asstring);
{        if strtoint(trim(sp_se_bczy.fieldbyname('bclb').asstring))<=50 then
          dt_bc.color := bclb_color[strtoint(trim(sp_se_bczy.fieldbyname('bclb').asstring))]
        else  }
  {        dt_bc.color :=bclb_color[1];//rgb(243, 247, 248);//; bclb_color[50];

        dt_bc.caption := '';
        dt_bc.width := pan_width;
        dt_bc.height := pan_height;
        dt_bc.OnMouseDown := panel2.OnMouseDown;
                //calmhawk
        dt_bc.OnDblClick := panel2.OnDblClick;

        dt_bc.bevelwidth := 2;
        dt_bc.OnDragOver := panel2.OnDragOver;
        dt_bc.OnDragDrop := panel2.OnDragDrop;
        dt_bc.onexit := panel2.onexit;
        dt_bc.onclick := panel2.onclick;
        dt_bc.left := (i - 1) * (pan_width) + i * (leftspace + modspace);
        dt_bc.PopupMenu := popupmenu1;
        dt_bc.top := (j - 1) * (pan_height) + j * topspace; //画完病床

                //加入床号
        dt_bch := tlabel.create(self);
        dt_bch.name := 'ch' + trim(sp_se_bczy.fieldbyname('plcx').asstring);
        dt_bch.caption := trim(sp_se_bczy.fieldbyname('yybch').asstring);
        dt_bch.left := bch_left;
        dt_bch.top := bch_top;
        dt_bch.Font.name := '宋体';
        dt_bch.font.size := fontsize;
        dt_bch.font.color:=clnavy;
        dt_bch.Font.Style:=[fsbold];
        dt_bch.autosize := true;
        dt_bch.OnMouseDown := panel2.OnMouseDown;
                //calmhawk
        dt_bch.OnDblClick := panel2.OnDblClick;

        dt_bch.OnDragOver := panel2.OnDragOver;
        dt_bch.OnDragDrop := panel2.OnDragDrop;
        dt_bch.onclick := panel2.OnClick;
        dt_bch.PopupMenu := popupmenu1;
        dt_bc.insertcontrol(dt_bch);
                //加入科别标志
        dt_kb := tlabel.create(self);
        dt_kb.name := 'kb' + trim(sp_se_bczy.fieldbyname('plcx').asstring);
        dt_kb.caption :=trim(sp_se_bczy.fieldbyname('ksmc').asstring); //copy(trim(sp_se_bczy.fieldbyname('ksmc').asstring), 1, 2);
        dt_kb.left := kb_left + 5;
        dt_kb.top := kb_top;
                //      dt_kb.color:=clred;
        dt_kb.Font.name := '宋体';
        dt_kb.font.size := 10;//fontsize;
        dt_kb.Transparent := true;
        dt_kb.font.color := clblack;//rgb(0, 0, 130);;
        dt_kb.autosize := true;
        dt_kb.OnMouseDown := panel2.OnMouseDown;
                //calmhawk
        dt_kb.OnDblClick := panel2.OnDblClick;

        dt_kb.OnDragOver := panel2.OnDragOver;
        dt_kb.OnDragDrop := panel2.OnDragDrop;
        dt_kb.onclick := panel2.OnClick;
        dt_kb.PopupMenu := popupmenu1;
        dt_bc.insertcontrol(dt_kb);
                //加入姓名
        dt_brxm := tlabel.create(self);
        dt_brxm.name := 'br' + trim(sp_se_bczy.fieldbyname('plcx').asstring);
        dt_brxm.caption := trim(sp_se_bczy.fieldbyname('brxm').asstring);
        dt_brxm.left := xm_left;
        dt_brxm.top := xm_top;
        dt_brxm.Font.name := '宋体';
        dt_brxm.font.size := fontsize;
        if SP_SE_BCZY.FieldByName('jzfp').AsBoolean then
         begin
           dt_brxm.font.color := clmaroon;
         end
         else
         begin
        if sp_se_bczy.fieldbyname('yjze').asfloat - sp_se_bczy.fieldbyname('zfze').asfloat >= 0 then
          dt_brxm.font.color := clnavy//rgb(0, 0, 160)
        else
          dt_brxm.font.color := clred;
         end;


        dt_brxm.autosize := true;
        dt_brxm.OnMouseDown := panel2.OnMouseDown;
                //calmhawk
        dt_brxm.OnDblClick := panel2.OnDblClick;

        dt_brxm.OnDragOver := panel2.OnDragOver;
        dt_brxm.OnDragDrop := panel2.OnDragDrop;
        dt_brxm.OnClick := panel2.OnClick;
        dt_brxm.PopupMenu := popupmenu1;
        dt_bc.insertcontrol(dt_brxm);
 //划线
         dt_line := tshape.create(self);
        dt_line.name := 'L' + trim(sp_se_bczy.fieldbyname('plcx').asstring);
        dt_line.left := 0;
        dt_line.top := 22;
        dt_line.Width:=pan_width;
        dt_line.Height:=1;
        dt_line.Pen.Color:=clGreen;
        dt_line.OnMouseDown := panel2.OnMouseDown;
                //calmhawk
        dt_line.OnDragOver := panel2.OnDragOver;
        dt_line.OnDragDrop := panel2.OnDragDrop;
        dt_bc.insertcontrol(dt_line);

                        //加入病人状态
        dt_brzt := tlabel.create(self);
        dt_brzt.name := 'zt' + trim(sp_se_bczy.fieldbyname('plcx').asstring);
        if  trim(sp_se_bczy.fieldbyname('sfdcny').asstring)<>'' then
        dt_brzt.caption := trim(sp_se_bczy.fieldbyname('brzt').asstring)+';'+trim(sp_se_bczy.fieldbyname('sfdcny').asstring)
        else
        dt_brzt.caption := trim(sp_se_bczy.fieldbyname('brzt').asstring);
        dt_brzt.left := dt_brxm.left+dt_brxm.width;
        dt_brzt.top := dt_brxm.Top-8;
        dt_brzt.Font.name := '宋体';
        dt_brzt.font.size := fontsize;
        dt_brzt.font.color := clred;
        dt_brzt.Font.Style:=[fsbold];
        dt_brzt.autosize := true;
        dt_brzt.OnMouseDown := panel2.OnMouseDown;
                //calmhawk
        dt_brzt.OnDblClick := panel2.OnDblClick;

        dt_brzt.OnDragOver := panel2.OnDragOver;
        dt_brzt.OnDragDrop := panel2.OnDragDrop;
        dt_brzt.OnClick := panel2.OnClick;
        dt_brzt.PopupMenu := popupmenu1;
        dt_bc.insertcontrol(dt_brzt);



                //calmhawk
                //加选中标记
        bcpocket.InsertControl(pbk[n]);
        bcpocket.InsertControl(dt_bc);

        i := i + 1;
        sp_se_bczy.next;
//        writeln(f,formatdatetime('yyyy-mm-dd hh:mm:ss.zzz',now()));


      end
      else
      begin
        i := 1;
        j := j + 1;
      end;
    end;
  end;
//  closefile(f);
    //---calmhawk--2008-09-22---修改没有1号床时报错问题
  try
    sp_se_bczy.first;
    n := strtoint(trim(sp_se_bczy.fieldbyname('plcx').asstring));
  except

  end;
//  sp_se_bczy.Close;//***    }

end;


procedure Tfrm_hspbb_pb.bcclick(sender: TObject);
var
buttname,nameall,nameall1,lcaption,s,jbsc,jbsc2:string;
i,y:Integer;
jbsc1:Real;
begin
if pub_czyzw<>'04' then
begin
  application.MessageBox('只能由护士长排班', '提示', 0 + 16);
end
else
begin

for I := 1 to qry_hspbb_bc.RecordCount do
 begin
if sender=c[i] then
buttname:=c[i].Caption;
 end;

if frm_hspbb_main.qry_hspbb_rq.FieldByName('pbsd').AsBoolean then
begin
  if messagedlg('班次已经锁定，是否确定换班？',mtwarning,[mbyes,mbno],0)=mryes then
begin
 s:=trim(INPUTBOX('输入：','请输入换班原因：    ',''));
ad_hbjl.Close;
ad_hbjl.CommandText:='select * from zybl_hspbb_hbjl where 1=2';
ad_hbjl.Open;
ad_hbjl.Append;
ad_hbjl['czy']:=pub_czydm;
ad_hbjl['hbczy']:=qry_hspbb_pb.FieldByName('czydm').AsString;
ad_hbjl['ybc']:=cxGrid1DBBandedTableView1.DataController.GetValue(cxx,cxy);
ad_hbjl['xbc']:=buttname;
ad_hbjl['hbsj']:=dqrq;
ad_hbjl['czsj']:=DateToStr(now);
ad_hbjl['hbyy']:=s;
ad_hbjl['ksdm']:=pb_ksdm;
ad_hbjl['rqid']:=frm_hspbb_main.qry_hspbb_rq.FieldByName('id').asinteger;
ad_hbjl.Post;
//cxGrid1DBBandedTableView1.datacontroller.setvalue(cxx,cxy,buttname);
if buttname='加班' then
begin
  jbsc:=trim(INPUTBOX('输入：','请输入加班时间：    ',''));
  jbsc2:=StringReplace(jbsc,'.','',[]);
 if  TryStrToint(jbsc2,i) then
  cxGrid1DBBandedTableView1.Columns[cxy].EditValue:=buttname+jbsc
 else
 begin
    Application.MessageBox('请输入整数或小数，不要输入汉字！', '提示', 0 + 16);
    Exit;
 end;
end
else
begin
cxGrid1DBBandedTableView1.Columns[cxy].EditValue:=buttname;
end;

qry_hbjl.close;
qry_hbjl.SQL.clear;
qry_hbjl.sql.Add('SELECT a.*,b.mc czr,c.mc hbr FROM dbo.zybl_hspbb_hbjl a,zybl_hspbb_czy b,zybl_hspbb_czy c where a.ksdm=:ksdm and a.rqid=:rqid and a.czy=b.dm and a.hbczy=c.dm');
qry_hbjl.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hbjl.Parameters.ParamByName('rqid').Value:=frm_hspbb_main.qry_hspbb_rq.FieldByName('id').asinteger;
qry_hbjl.Open;

end
else
begin
  Exit;
end;
end
else
begin

if buttname='加班' then
begin
  jbsc:=trim(INPUTBOX('输入：','请输入加班时间：    ',''));
  jbsc2:=StringReplace(jbsc,'.','',[]);
 if  TryStrToint(jbsc2,i) then
  cxGrid1DBBandedTableView1.Columns[cxy].EditValue:=buttname+jbsc
 else
 begin
    Application.MessageBox('请输入整数或小数，不要输入汉字！', '提示', 0 + 16);
    Exit;
 end;
end
else
begin
cxGrid1DBBandedTableView1.Columns[cxy].EditValue:=buttname;
end;
//cxGrid1DBTableView1.datacontroller.setvalue(cxx+1,cxy+1,buttname);
if sfzhpb then
begin
  if ADOQuery1.locate('zhmc', zhpbmc, [loCaseInsensitive]) then
begin
nameall:='';
if ADOQuery1.FieldByName('1').AsString<>'' then
 nameall:=nameall+ADOQuery1.FieldByName('1').AsString+'^';
 if ADOQuery1.FieldByName('2').AsString<>'' then
 nameall:=nameall+ADOQuery1.FieldByName('2').AsString+'^';
 if ADOQuery1.FieldByName('3').AsString<>'' then
 nameall:=nameall+ADOQuery1.FieldByName('3').AsString+'^';
 if ADOQuery1.FieldByName('4').AsString<>'' then
 nameall:=nameall+ADOQuery1.FieldByName('4').AsString+'^';
 if ADOQuery1.FieldByName('5').AsString<>'' then
 nameall:=nameall+ADOQuery1.FieldByName('5').AsString+'^';
 if ADOQuery1.FieldByName('6').AsString<>'' then
 nameall:=nameall+ADOQuery1.FieldByName('6').AsString+'^';
 if ADOQuery1.FieldByName('7').AsString<>'' then
 nameall:=nameall+ADOQuery1.FieldByName('7').AsString+'^';

if Pos(buttname,nameall)>0 then
begin
 nameall:=LeftStr(nameall,Length(nameall)-length('^'));    //去掉最后一个-
 nameall:=Copy(nameall,pos(buttname,nameall)+length(buttname+'^'),1000);    //取当前班次后所有班次
     for y := cxy to 15 do
     begin
      if Pos('^',nameall)>0 then
         buttname:=LeftStr(nameall,Pos('^',nameall)-length('^'))
         else
         buttname:=nameall;
         if buttname<>'' then
         begin
         if cxy<13 then
          begin
       //  cxGrid1DBBandedTableView1.datacontroller.setvalue(cxx,cxy+2,buttname);
       //  cxGrid1DBBandedTableView1.datacontroller.Values[cxx,cxy+2]:=buttname;
         cxGrid1DBBandedTableView1.Columns[cxy+2].EditValue:=buttname;
          end;
         end
         else
         begin
           Break;
         end;
         nameall:=RightStr(nameall,Length(nameall)-length('^')-length(buttname));
         cxy:=cxy+2;
     end;
end;
       
end;
end;

end;
end;
Panel1.Visible:=false;

end;

procedure Tfrm_hspbb_pb.cxGrid1DBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   cxx:=cxGrid1DBBandedTableView1.Controller.FocusedRowIndex;     //行
cxy:=cxGrid1DBBandedTableView1.Controller.FocusedColumnIndex;
if (cxy<>2) and (cxy<>4) and (cxy<>6) and (cxy<>8) and (cxy<>10) and (cxy<>12) and (cxy<>14) then
begin
 Panel1.Visible:=false;
end;
end;

procedure Tfrm_hspbb_pb.cxGrid1DBBandedTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
 begin
   cxx:=cxGrid1DBBandedTableView1.Controller.FocusedRowIndex;     //行
cxy:=cxGrid1DBBandedTableView1.Controller.FocusedColumnIndex;   //列
if (cxy=2) or (cxy=3) then
  dqrq:=cxGrid1DBBandedTableView1.Bands[1].Caption;
  if (cxy=4) or (cxy=5) then
  dqrq:=cxGrid1DBBandedTableView1.Bands[2].Caption;
  if (cxy=6) or (cxy=7) then
  dqrq:=cxGrid1DBBandedTableView1.Bands[3].Caption;
  if (cxy=8) or (cxy=9) then
  dqrq:=cxGrid1DBBandedTableView1.Bands[4].Caption;
  if (cxy=10) or (cxy=11) then
  dqrq:=cxGrid1DBBandedTableView1.Bands[5].Caption;
  if (cxy=12) or (cxy=13) then
  dqrq:=cxGrid1DBBandedTableView1.Bands[6].Caption;
  if (cxy=14) or (cxy=15) then
  dqrq:=cxGrid1DBBandedTableView1.Bands[7].Caption;

dqrq:=Copy(dqrq,1,length('2016-11-01'));
if StrToDateTime(FormatDateTime('yyyy-mm-dd',now))>StrToDate(dqrq) then
 begin
    Application.MessageBox('不能修改历史排班记录','错误', mb_ok + mb_iconerror);
    Exit;
 end
 else
 begin

if (cxy=2) or (cxy=4) or (cxy=6) or (cxy=8) or (cxy=10) or (cxy=12) or (cxy=14) then
begin

//Panel1.Left:=cxy*65+100;
//Panel1.top:=380;
Panel1.Width:=300;
panel1.Left:=Mouse.CursorPos.X-frm_hspbb_main.panel3.Width  ;
panel1.top:=Mouse.CursorPos.y-frm_hspbb_main.panel1.Height  ;
Panel1.Visible:=True;

if Panel1.Top+panel1.Height>cxGrid1.Height then
 Panel1.Top:=cxGrid1.Height-panel1.Height;
 if Panel1.Left+panel1.Width>cxGrid1.Width then
 Panel1.Left:=cxGrid1.Width-panel1.Width



end
else
begin
Panel1.Visible:=false;
end;
end;
 end;

procedure Tfrm_hspbb_pb.cxGrid1DBBandedTableView1Column16CompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
 inherited;
 begin
 if ARow1.Values[0] = ARow2.Values[0]then
    AAreEqual := True
  else
  AAreEqual := False;

 end;
end;

procedure Tfrm_hspbb_pb.cxGrid1DBBandedTableView1Column1CompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
 inherited;
 begin
 if ARow1.Values[1] = ARow2.Values[1]then
    AAreEqual := True
  else
  AAreEqual := False;

 end;
end;

procedure Tfrm_hspbb_pb.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
   cxColumn: TcxGridColumn;
    ViewCaption: string;
    i,x:integer;
    name,bc:string;
begin
 //  cxColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('Test');
   if cxColumn = nil then
     Exit;
  if qry_hspbb_bc.RecordCount>0 then
 begin
   if SameText(AViewInfo.Item.Name,cxGrid1DBBandedTableView1Column2.name) then
   begin
       if AViewInfo.GridRecord.Values[2] = null then Exit;
     ViewCaption := AViewInfo.GridRecord.Values[2];
     qry_hspbb_bc.First;
     bc:=qry_hspbb_bc.FieldByName('bc').AsString;
     name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then
      begin
         ACanvas.Brush.Color := strToColor(name);
      end;
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
      qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
   end;

      if SameText(AViewInfo.Item.Name,cxGrid1DBBandedTableView1Column4.name) then
   begin
       if AViewInfo.GridRecord.Values[4] = null then Exit;
     ViewCaption := AViewInfo.GridRecord.Values[4];
     qry_hspbb_bc.First;
     bc:=qry_hspbb_bc.FieldByName('bc').AsString;
     name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then
      begin
         ACanvas.Brush.Color := strToColor(name);
      end;
        {    for x := 0 to qry_hspbb_bc.RecordCount - 1 do
      begin
        qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
         if ViewCaption=bc then
         ACanvas.Brush.Color := strToColor(name);
         qry_hspbb_bc.next;
      end;   }
     qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
      qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
   end;
      if SameText(AViewInfo.Item.Name,cxGrid1DBBandedTableView1Column6.name) then
   begin
       if AViewInfo.GridRecord.Values[6] = null then Exit;
     ViewCaption := AViewInfo.GridRecord.Values[6];
     qry_hspbb_bc.First;
     bc:=qry_hspbb_bc.FieldByName('bc').AsString;
     name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then
      begin
         ACanvas.Brush.Color := strToColor(name);
      end;
     qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
   end;
      if SameText(AViewInfo.Item.Name,cxGrid1DBBandedTableView1Column8.name) then
   begin
       if AViewInfo.GridRecord.Values[8] = null then Exit;
     ViewCaption := AViewInfo.GridRecord.Values[8];
     qry_hspbb_bc.First;
     bc:=qry_hspbb_bc.FieldByName('bc').AsString;
     name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then
      begin
         ACanvas.Brush.Color := strToColor(name);
      end;
     {       for x := 0 to qry_hspbb_bc.RecordCount - 1 do
      begin
        qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
         if ViewCaption=bc then
         ACanvas.Brush.Color := strToColor(name);
         qry_hspbb_bc.next;
      end;  }
     qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
   end;
      if SameText(AViewInfo.Item.Name,cxGrid1DBBandedTableView1Column10.name) then
   begin
       if AViewInfo.GridRecord.Values[10] = null then Exit;
     ViewCaption := AViewInfo.GridRecord.Values[10];
     qry_hspbb_bc.First;
     bc:=qry_hspbb_bc.FieldByName('bc').AsString;
     name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then
      begin
         ACanvas.Brush.Color := strToColor(name);
      end;
     qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
   end;
      if SameText(AViewInfo.Item.Name,cxGrid1DBBandedTableView1Column12.name) then
   begin
       if AViewInfo.GridRecord.Values[12] = null then Exit;
     ViewCaption := AViewInfo.GridRecord.Values[12];
     qry_hspbb_bc.First;
     bc:=qry_hspbb_bc.FieldByName('bc').AsString;
     name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then
      begin
         ACanvas.Brush.Color := strToColor(name);
      end;
     qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
   end;
      if SameText(AViewInfo.Item.Name,cxGrid1DBBandedTableView1Column14.name) then
   begin
       if AViewInfo.GridRecord.Values[14] = null then Exit;
     ViewCaption := AViewInfo.GridRecord.Values[14];
     qry_hspbb_bc.First;
     bc:=qry_hspbb_bc.FieldByName('bc').AsString;
     name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then
      begin
         ACanvas.Brush.Color := strToColor(name);
      end;
     qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
        qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
          qry_hspbb_bc.next;bc:=qry_hspbb_bc.FieldByName('bc').AsString; name:=qry_hspbb_bc.FieldByName('color').AsString;
    if ViewCaption=bc then    ACanvas.Brush.Color := strToColor(name);
   end;
 end;




end;

procedure Tfrm_hspbb_pb.DBGridEh2CellClick(Column: TColumnEh);
var
sl,i:Integer;
saveplace:TBookmark;
begin
ADOQuery1.close;
ADOQuery1.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
ADOQuery1.Open;
ADOQuery1.First;

sl:=ADOQuery1.RecordCount;
if sl>0 then
  begin
   if qry_bczh1.FieldByName('sfqy').AsBoolean then
     begin
      qry_bczh1.Edit;
      qry_bczh1['sfqy']:=0;
      qry_bczh1.Post;
     end
     else
     begin
     saveplace:=qry_bczh1.GetBookmark;
      qry_bczh1.Edit;
      qry_bczh1['sfqy']:=1;
      qry_bczh1.Post;
     for i := 0 to sl - 1 do
       begin
      qry_bczh1.locate('id', ADOQuery1.FieldByName('id').AsInteger, [loCaseInsensitive]);
      qry_bczh1.Edit;
      qry_bczh1['sfqy']:=0;
      qry_bczh1.Post;
      ADOQuery1.Next;
       end;
       qry_bczh1.GotoBookmark(saveplace);
     end;

  end
  else
  begin
  if qry_bczh1.FieldByName('sfqy').AsBoolean then
     begin
      qry_bczh1.Edit;
      qry_bczh1['sfqy']:=0;
      qry_bczh1.Post;
     end
    else
    begin
      qry_bczh1.Edit;
      qry_bczh1['sfqy']:=1;
      qry_bczh1.Post;
    end;

  end;
ADOQuery1.close;
ADOQuery1.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
ADOQuery1.Open;
if ADOQuery1.RecordCount=1 then
begin
sfzhpb:=True;
zhpbmc:=ADOQuery1.FieldByName('zhmc').AsString;
end;


end;

procedure Tfrm_hspbb_pb.FormShow(Sender: TObject);
var
i,l,k:Integer;
begin


Panel4.Height:=frm_hspbb_pb.Height-280;
cxGrid1.Width:=frm_hspbb_pb.Width-250;
if pub_czyzw='04' then
begin
//memo1.Enabled:=True;
ksts.Enabled:=True;
N3.Enabled:=True;
N4.Enabled:=True;
N1.Enabled:=True;
N5.Enabled:=True;
N6.Enabled:=True;
cxGrid1DBTableView1.OptionsData.Editing:=True;
end;
qry_hsly.close;
qry_hsly.SQL.Clear;
qry_hsly.SQL.Add('select  a.*,b.mc from zybl_hspbb_hsly a,zybl_hspbb_czy b where a.ksdm=:ksdm and a.rqid=:rqid and a.czy=b.dm order by a.id');
qry_hsly.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hsly.Parameters.ParamByName('rqid').Value:=frm_hspbb_main.qry_hspbb_rq.FieldByName('id').asinteger;
qry_hsly.Open;
qry_hsly.First;

while not qry_hsly.Eof do
begin
hsly.Lines.Add(qry_hsly.FieldByName('ly').AsString+'(留言人:'+qry_hsly.fieldbyname('mc').asstring+'   留言时间:'
+datetostr(qry_hsly.fieldbyname('lysj').AsDateTime)+')');
qry_hsly.next;
end;


qry_hsly1.close;
qry_hsly1.SQL.Clear;
qry_hsly1.SQL.Add('select  a.*,b.mc from zybl_hspbb_hsly a,zybl_hspbb_czy b where a.czy=:czy and a.rqid=:rqid and a.czy=b.dm order by a.id');
qry_hsly1.Parameters.ParamByName('czy').Value:=pub_czydm;
qry_hsly1.Parameters.ParamByName('rqid').Value:=frm_hspbb_main.qry_hspbb_rq.FieldByName('id').asinteger;
qry_hsly1.Open;

Memo1.Lines.Add(qry_hsly1.FieldByName('ly').AsString);




qry_hspbb_pb.close;
qry_hspbb_pb.Parameters.ParamByName('rqid').Value:=rqid;
qry_hspbb_pb.Open;

qry_hspbb_bc.close;
qry_hspbb_bc.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hspbb_bc.Open;

qry_hbjl.close;
qry_hbjl.SQL.clear;
qry_hbjl.sql.Add('SELECT a.*,b.mc czr,c.mc hbr FROM dbo.zybl_hspbb_hbjl a,zybl_hspbb_czy b,zybl_hspbb_czy c where a.ksdm=:ksdm and a.rqid=:rqid and a.czy=b.dm and a.hbczy=c.dm');
qry_hbjl.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hbjl.Parameters.ParamByName('rqid').Value:=frm_hspbb_main.qry_hspbb_rq.FieldByName('id').asinteger;
qry_hbjl.Open;

cxGrid1DBTableView1.OptionsView.DataRowHeight:=30;

if qry_hspbb_bc.RecordCount>0 then
begin
qry_hspbb_bc.First;
     for i := 1 to qry_hspbb_bc.RecordCount  do
      begin
       if i<=4 then
       begin
         l:=i-1;
         k:=0;
       end
       else
       begin
         k:=(i-1) div 4;
         l:=i-(k*4)-1;

       end;
              C[I]:=TPanel.Create(self);
              c[i].ParentBackground:=false;
              C[I].Name:='a'+inttostr(i);
              C[I].Caption:=qry_hspbb_bc.FieldByName('bc').AsString;
              C[I].parent:=panel1;
              C[i].ShowHint:=True;
              C[I].hint:=qry_hspbb_bc.FieldByName('bc').AsString;
              c[i].Color:=strtocolor(qry_hspbb_bc.FieldByName('color').AsString);
              c[i].Width:=75;
              C[i].Height:=40;
              c[i].Left:=l*73;
              c[i].top:= k*42;
              c[i].OnClick:=bcclick;
              qry_hspbb_bc.Next;
      end;
  Panel1.Height:=(k+1)*42;

// xtcs();
end;

qry_bczh1.close;
qry_bczh1.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_bczh1.Open;

ADOQuery1.close;
ADOQuery1.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
ADOQuery1.Open;
if ADOQuery1.RecordCount=1 then
begin
sfzhpb:=True;
zhpbmc:=ADOQuery1.FieldByName('zhmc').AsString;
end;

cxGrid1DBBandedTableView1.Bands[1].Caption:=frm_hspbb_main.pbsj.text+'(星期一)';
cxGrid1DBBandedTableView1.Bands[2].Caption:=DateToStr(strtodatetime(frm_hspbb_main.pbsj.text)+1)+'(星期二)';
cxGrid1DBBandedTableView1.Bands[3].Caption:=DateToStr(strtodatetime(frm_hspbb_main.pbsj.text)+2)+'(星期三)';
cxGrid1DBBandedTableView1.Bands[4].Caption:=DateToStr(strtodatetime(frm_hspbb_main.pbsj.text)+3)+'(星期四)';
cxGrid1DBBandedTableView1.Bands[5].Caption:=DateToStr(strtodatetime(frm_hspbb_main.pbsj.text)+4)+'(星期五)';
cxGrid1DBBandedTableView1.Bands[6].Caption:=DateToStr(strtodatetime(frm_hspbb_main.pbsj.text)+5)+'(星期六)';
cxGrid1DBBandedTableView1.Bands[7].Caption:=DateToStr(strtodatetime(frm_hspbb_main.pbsj.text)+6)+'(星期天)';

ksts.text:=frm_hspbb_main.qry_hspbb_rq.FieldByName('ksbz').AsString;

sp_bctj.close;
sp_bctj.Parameters.ParamByName('@ksdm').Value:=pb_ksdm;
sp_bctj.open;


end;


procedure Tfrm_hspbb_pb.N10Click(Sender: TObject);
begin
if cxGrid1DBBandedTableView1.Columns[cxy].EditValue<>'' then
 begin
cxy:=cxGrid1DBBandedTableView1.Controller.FocusedColumnIndex;   //列
cxGrid1DBBandedTableView1.Columns[cxy].EditValue:=cxGrid1DBBandedTableView1.Columns[cxy].EditValue+'Ⅱ';
 end;
end;

procedure Tfrm_hspbb_pb.N1Click(Sender: TObject);
begin
sp_jpbc.Close;
sp_jpbc.Parameters.ParamByName('@czydm').Value:=qry_hspbb_pb.FieldByName('czydm').AsString;
sp_jpbc.Parameters.ParamByName('@rqid').Value:=qry_hspbb_pb.FieldByName('rqid').AsInteger;
sp_jpbc.ExecProc;

qry_hspbb_pb.close;
qry_hspbb_pb.Parameters.ParamByName('rqid').Value:=rqid;
qry_hspbb_pb.Open;
end;

procedure Tfrm_hspbb_pb.N2Click(Sender: TObject);
begin
ad_hsly.close;
ad_hsly.CommandText:='select * from zybl_hspbb_hsly where rqid=:rqid and czy=:czy ';
ad_hsly.Parameters.ParamByName('rqid').Value:=frm_hspbb_main.qry_hspbb_rq.FieldByName('id').AsInteger;
ad_hsly.Parameters.ParamByName('czy').Value:=pub_czydm ;
ad_hsly.Open;
if ad_hsly.RecordCount>0 then
begin
ad_hsly.Edit;
end
else
begin
ad_hsly.Append;
end;
ad_hsly['czy']:=pub_czydm;
ad_hsly['ly']:=trim(memo1.Text);
ad_hsly['lysj']:=now;
ad_hsly['ksdm']:=pb_ksdm;
ad_hsly['rqid']:=frm_hspbb_main.qry_hspbb_rq.FieldByName('id').asinteger;
ad_hsly.Post;

end;

procedure Tfrm_hspbb_pb.N3Click(Sender: TObject);
begin
qry_ksts.Close;
qry_ksts.SQL.Clear;
qry_ksts.sql.Add('update zybl_hspbb_rq set ksbz=:bz where id=:rqid');
qry_ksts.Parameters.ParamByName('bz').Value:=Trim(ksts.Text);
qry_ksts.Parameters.ParamByName('rqid').Value:=frm_hspbb_main.qry_hspbb_rq.FieldByName('id').asinteger;
qry_ksts.ExecSQL;

end;

procedure Tfrm_hspbb_pb.N4Click(Sender: TObject);
begin
cxGrid1DBBandedTableView1.Columns[cxy].EditValue:='';
end;

procedure Tfrm_hspbb_pb.N5Click(Sender: TObject);
begin
qry_scbc.close;
qry_scbc.sql.clear;
qry_scbc.SQL.Add('delete from zybl_hspbb_pb where id=:id and jpbc=1 ') ;
qry_scbc.Parameters.ParamByName('id').Value:=qry_hspbb_pb.FieldByName('id').AsInteger;
qry_scbc.ExecSQL;

qry_hspbb_pb.close;
qry_hspbb_pb.Parameters.ParamByName('rqid').Value:=rqid;
qry_hspbb_pb.Open;
end;

procedure Tfrm_hspbb_pb.N6Click(Sender: TObject);
var
rydm:string;
begin
  rydm:=trim(INPUTBOX('输入：','请输入新增人员代码：    ',''));
  qry_czy.close;
  qry_czy.SQL.Clear;
  qry_czy.SQL.Add('select * from zybl_hspbb_czy where dm=:dm');
  qry_czy.Parameters.ParamByName('dm').Value:=rydm;
  qry_czy.Open;
  if qry_czy.RecordCount=0 then
  begin
    application.messagebox( '未找到代码对应的操作员！', '提示',mb_ok );
  end
  else
  begin
sp_jpbc.Close;
sp_jpbc.Parameters.ParamByName('@czydm').Value:=rydm;
sp_jpbc.Parameters.ParamByName('@rqid').Value:=qry_hspbb_pb.FieldByName('rqid').AsInteger;
sp_jpbc.ExecProc;

qry_hspbb_pb.close;
qry_hspbb_pb.Parameters.ParamByName('rqid').Value:=rqid;
qry_hspbb_pb.Open;
  end;

end;

procedure Tfrm_hspbb_pb.N7Click(Sender: TObject);
begin
if cxGrid1DBBandedTableView1.Columns[cxy].EditValue<>'' then
 begin
cxy:=cxGrid1DBBandedTableView1.Controller.FocusedColumnIndex;   //列
cxGrid1DBBandedTableView1.Columns[cxy].EditValue:=cxGrid1DBBandedTableView1.Columns[cxy].EditValue+'Ⅰ';
 end;

end;

procedure Tfrm_hspbb_pb.N8Click(Sender: TObject);
begin
if cxGrid1DBBandedTableView1.Columns[cxy].EditValue<>'' then
 begin
cxy:=cxGrid1DBBandedTableView1.Controller.FocusedColumnIndex;   //列
cxGrid1DBBandedTableView1.Columns[cxy].EditValue:=cxGrid1DBBandedTableView1.Columns[cxy].EditValue+'*';
 end;
end;

procedure Tfrm_hspbb_pb.N9Click(Sender: TObject);
begin
if cxGrid1DBBandedTableView1.Columns[cxy].EditValue<>'' then
 begin
cxy:=cxGrid1DBBandedTableView1.Controller.FocusedColumnIndex;   //列
cxGrid1DBBandedTableView1.Columns[cxy].EditValue:=cxGrid1DBBandedTableView1.Columns[cxy].EditValue+'^';
 end;
end;

function Tfrm_hspbb_pb.strToColor(s: string): TColor;
var
  clo: longint;
  sClo: string;
begin
    if IdentToColor( s,clo)then
    begin
      sClo := IntToStr(clo);
      Result := StrToInt64(sClo);
    end
    else
    begin
      Result := StrToInt64(s) ;
    end;
end;

end.
