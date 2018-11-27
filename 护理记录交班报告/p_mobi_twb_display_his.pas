unit p_mobi_twb_display_his;

interface

uses
    SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
    Buttons, ExtCtrls, StdCtrls, ComCtrls, Menus, DB, ADODB, ToolWin, ImgList,
    Grids, DBGrids,GridsEh, DBGridEh, printers, variants,
  QuickRpt, QRCtrls, DateUtils, ActnList, DBGridEhGrouping, PrnDbgeh,EhLibADO,PrViewEh;
type
  sssrq=array[0..5] of tdatetime;
type
    TDrawingTool = (dtLine, dtRectangle, dtEllipse, dtRoundRect);
    Tfrm_mobi_twb_display_his = class(TForm)
        StatusBar1: TStatusBar;
        ad_tw: TADODataSet;
        ImageList1: TImageList;
        PageControl1: TPageControl;
        TabSheet1: TTabSheet;
        Panel1: TPanel;
        Label10: TLabel;
        Label2: TLabel;
        Label4: TLabel;
        Label5: TLabel;
        Label16: TLabel;
        lbmc: TEdit;
        brxm: TEdit;
        bch: TEdit;
        ksmc: TEdit;
        ryrq: TDateTimePicker;
        tmpgrid: TDBGrid;
        ad_dele: TADOCommand;
        ad_tb: TADODataSet;
        ad_maxrq: TADODataSet;
        sp_cx_zybrjbqk: TADOStoredProc;
        ds_zybrjbqk: TDataSource;
        Panel3: TPanel;
        ds_tw: TDataSource;
        ad_cg: TADODataSet;
    ad_save_cgjl: TADOCommand;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Label29: TLabel;
    brzd: TEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton12: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton14: TToolButton;
    ToolButton9: TToolButton;
    ScrollBox1: TScrollBox;
    Image: TImage;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    SpeedButton1: TSpeedButton;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGridEh4: TDBGridEh;
    DBGridEh6: TDBGridEh;
    DBGridEh3: TDBGridEh;
    qry_rcl: TADOQuery;
    qry_hljldnr: TADOQuery;
    ds_hljld: TDataSource;
    ds_rcl: TDataSource;
    qry_hljld_xmdz: TADOQuery;
    qry_rclsc: TADOQuery;
    Panel2: TPanel;
    Button4: TButton;
    Button9: TButton;
    PrintDBGridEh1: TPrintDBGridEh;
    PrintDBGridEh2: TPrintDBGridEh;
        procedure ToolButton14Click(Sender: TObject);
        procedure tmpgridExit(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure ToolButton8Click(Sender: TObject);
        procedure ToolButton7Click(Sender: TObject);
        procedure ToolButton6Click(Sender: TObject);
        procedure ToolButton5Click(Sender: TObject);
        procedure brxmKeyPress(Sender: TObject; var Key: Char);
        procedure b_addClick(Sender: TObject);
        procedure ToolButton12Click(Sender: TObject);
        procedure ToolButton1Click(Sender: TObject);
        procedure ToolButton3Click(Sender: TObject);
        procedure ToolButton2Click(Sender: TObject);
        procedure BitBtn2Click(Sender: TObject);
        procedure BitBtn3Click(Sender: TObject);
        procedure BitBtn4Click(Sender: TObject);
        procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
        procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure BitBtn1Click(Sender: TObject);

        function strTOre(xx: Tedit; ss: string): boolean;
        function checkzero: boolean;
    procedure ToolButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tmpgridKeyPress(Sender: TObject; var Key: Char);
    procedure tmpgridDblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    private
        procedure jbxx;
        procedure imagePrint;
    { Private declarations }
    public
    { Public declarations }
        BrushStyle: TBrushStyle;
        PenStyle: TPenStyle;
        PenWide: Integer;
        Drawing: Boolean;
        Origin, MovePt: TPoint;
        DrawingTool: TDrawingTool;
        CurrentFile: string;
        valuechange: boolean; //判定是否有值改变
        procedure displayvalue;
        procedure drawline(hz, fieldname: string; hzx, hzy: integer; step: real; begva, color: integer);
        procedure drawxy(width, height: integer);
        procedure drawcgjl;
        procedure initssrq;
        procedure hljld;
        procedure rcl;
        procedure dkhljldrcl;


    end;

    function calcssts(rq:tdatetime):string;
    function convert0tob(a:string):string;

  var
    frm_mobi_twb_display_his: Tfrm_mobi_twb_display_his;
    zfcl1: array[1..11] of string = ('日        期', '患病日数', '术后日数', '每日时间', '小 便 量(ml)', '大 便 次 数',
        '输入量(ml)', '饮 入 量(ml)', '血压(mmhg)', '身高(cm)/体重(kg)','其它');
    clsd: array[0..5] of integer;
    m_height, m_width,sscs: integer;
    da1, maxrq, minrq, nextrq, ksrq: Tdatetime;
    zy_zyh: string;
    ssrq:sssrq;
    printername:string;
    printerstate:boolean;
    buffer: array[0..255] of char;
    pageno:integer;//页数

 ///   ssts:array[0..5] of integer;

implementation

uses p_dm, p_func, p_printerset_mobi_his,p_hljlddyrq;

{$R *.dfm}
procedure Tfrm_mobi_twb_display_his.dkhljldrcl;
begin
    qry_hljldnr.Close;
    qry_hljldnr.sql.clear;
    qry_hljldnr.sql.Add('select  CONVERT(varchar(100), jlrq, 20) jlrq1,*  from zybl_hljld_cy where zyh=:zyh union all select  CONVERT(varchar(100), jlrq, 20) jlrq1,*  from zybl_hljld where zyh=:zyh1   order by jlrq');
    qry_hljldnr.Parameters.ParamByName('zyh').Value:=zy_zyh;
    qry_hljldnr.Parameters.ParamByName('zyh1').Value:=zy_zyh;
    Frm_func.open_dataset(qry_hljldnr);
    qry_rcl.Close;
    qry_rcl.SQL.Clear;
    qry_rcl.SQL.Add('select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld_rcl_cy where zyh=:zyh union all select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld_rcl where zyh=:zyh1 order by jlrq');
    qry_rcl.Parameters.ParamByName('zyh').value:=zy_zyh;
    qry_rcl.Parameters.ParamByName('zyh1').value:=zy_zyh;
    Frm_func.open_dataset(qry_rcl);
end;


procedure Tfrm_mobi_twb_display_his.hljld;
var
i,a:Integer;
begin
      qry_hljld_xmdz.Close;
      qry_hljld_xmdz.sql.clear;
      qry_hljld_xmdz.SQL.Add('select * from zybl_hljld_xmdz where ksdm=:ksdm and id <100 order by xh');
      qry_hljld_xmdz.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
      Frm_func.open_dataset(qry_hljld_xmdz);
  qry_hljld_xmdz.First;
    a:=qry_hljld_xmdz.RecordCount;
    for I := 7 to a+6  do
     begin
dbgrideh4.Columns.Add;
dbgrideh4.Columns[i].fieldname:=qry_hljld_xmdz.FieldByName('hljld_name').AsString;
dbgrideh4.Columns[i].Title.caption:=qry_hljld_xmdz.FieldByName('hljld_caption').AsString;
dbgrideh4.Columns[i].Title.Font.Size:=10;
dbgrideh4.Columns[i].Title.Alignment:=taCenter;
dbgrideh4.Columns[i].Alignment:=taCenter;
dbgrideh4.Columns[i].width:=qry_hljld_xmdz.FieldByName('kd').AsInteger;
dbgrideh4.Columns[i].WordWrap:=True;
dbgrideh4.Columns[i].Font.Size:=10;
 dbgrideh4.RowHeight:=20;

  { if (qry_hljld_xmdz.FieldByName('hljld_name').AsString='bqgc') or (qry_hljld_xmdz.FieldByName('hljld_name').AsString='guanlu') then
   begin
   dbgrideh4.Columns[i].Font.Size:=8;
   end;            }
   qry_hljld_xmdz.Next;
     end;
     i:=a+7;
   dbgrideh4.Columns.Add;
dbgrideh4.Columns[i].fieldname:='bqgc';
dbgrideh4.Columns[i].Title.caption:='病情观察及措施';
dbgrideh4.Columns[i].Title.Font.Size:=10;
dbgrideh4.Columns[i].Title.Alignment:=taCenter;
dbgrideh4.Columns[i].Alignment:=taLeftJustify;
dbgrideh4.Columns[i].width:=200;
dbgrideh4.Columns[i].WordWrap:=True;
dbgrideh4.Columns[i].Font.Size:=10;


    i:=a+8;
dbgrideh4.Columns.Add;
dbgrideh4.Columns[i].fieldname:='czy';
dbgrideh4.Columns[i].Title.caption:='护士签名';
dbgrideh4.Columns[i].Title.Font.Size:=10;
dbgrideh4.Columns[i].Title.Alignment:=taCenter;
dbgrideh4.Columns[i].Alignment:=taCenter;
dbgrideh4.Columns[i].width:=50;
dbgrideh4.Columns[i].WordWrap:=True;
dbgrideh4.Columns[i].Font.Size:=10;

DBGridEh4.rowsizingallowed:=true;

end;

procedure Tfrm_mobi_twb_display_his.rcl;
var
i,a:integer;
begin
    qry_rclsc.Close;
    qry_rclsc.sql.clear;
    qry_rclsc.SQL.Add('select * from zybl_hljld_xmdz  where id>=100 and ksdm=:ksdm order by xh');
    qry_rclsc.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
    Frm_func.open_dataset(qry_rclsc);
 qry_rclsc.First;
    a:=qry_rclsc.RecordCount;
    for I := 1 to a  do
     begin
dbgrideh6.Columns.Add;
dbgrideh6.Columns[i].fieldname:=qry_rclsc.FieldByName('hljld_name').AsString;
dbgrideh6.Columns[i].Title.caption:=qry_rclsc.FieldByName('hljld_caption').AsString;
dbgrideh6.Columns[i].Title.Font.Size:=10;
dbgrideh6.Columns[i].Title.Alignment:=taCenter;
dbgrideh6.Columns[i].Alignment:=taCenter;
dbgrideh6.Columns[i].width:=qry_rclsc.FieldByName('kd').AsInteger;
dbgrideh6.Columns[i].WordWrap:=True;
dbgrideh6.Columns[i].Font.Size:=10;
dbgrideh6.RowHeight:=20;

qry_rclsc.Next;
end;
i:=a+1;
dbgrideh6.Columns.Add;
dbgrideh6.Columns[i].fieldname:='gdyl';
dbgrideh6.Columns[i].Title.caption:='管道引流';
dbgrideh6.Columns[i].Title.Font.Size:=10;
dbgrideh6.Columns[i].Title.Alignment:=taCenter;
dbgrideh6.Columns[i].Alignment:=taCenter;
dbgrideh6.Columns[i].width:=200;
dbgrideh6.Columns[i].WordWrap:=True;
dbgrideh6.RowHeight:=20;
dbgrideh6.Columns[i].Font.Size:=10;

i:=a+2;
dbgrideh6.Columns.Add;
dbgrideh6.Columns[i].fieldname:='czy';
dbgrideh6.Columns[i].Title.caption:='护士签名';
dbgrideh6.Columns[i].Title.Font.Size:=10;
dbgrideh6.Columns[i].Title.Alignment:=taCenter;
dbgrideh6.Columns[i].Alignment:=taCenter;
dbgrideh6.Columns[i].width:=50;
dbgrideh6.Columns[i].WordWrap:=True;
dbgrideh6.rowsizingallowed:=true;

end;


function calcssts(rq:tdatetime):string;
var
ssrqstr:string;
i:integer;
n:real;
begin
if strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[0]))>14 then
ssrqstr :=''
else
 ssrqstr:=floattostr(strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[0])));
 if ssrqstr<>'' then 
 if strtofloat(ssrqstr)<=0 then
 ssrqstr:='';

 for i:=1 to sscs-1 do
  begin
//    n:=strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i]));
    if strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i]))>0 then
    begin
    if strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i]))>14 then
    begin
    if ssrqstr<>'' then
    ssrqstr:=''
    end
    else
    begin
    if ssrqstr<>'' then   
    ssrqstr:= floattostr(strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i])))+'/'+ssrqstr
    else
    ssrqstr:= floattostr(strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i])));
    end;

    end;
  end;
 result:=ssrqstr;
end;

function convert0tob(a:string):string;
begin
  if a='0' then
   result:=''
   else
   result:=a;
end;

procedure Tfrm_mobi_twb_display_his.drawcgjl;
var i,i1,i2,i3,i4,wzhz,lxyw: integer;
x,y,x1:integer;
sd:real;
d1,d2,d3:tdatetime;
s1,s2:widestring;
jqwc:boolean;
wid,wid1:integer;//20个汉字宽度
s,s3:string;
sfss:boolean;
qsx:integer;
begin
 if pub_sfhtt then
  qsx:=150
 else
  qsx:=120;
//    ad_cg.First;
    wid :=image.Canvas.TextWidth('四川省绵阳市中心医院信息科');
    wid1:=image.Canvas.TextWidth('四川省绵阳市中心医院');
    ad_cg.DisableControls;

    ad_cg.Locate('jlrq_s', formatdatetime('yyyymmdd', ksrq), [loCaseInsensitive]);
    image.Canvas.Font.Size := 12;
    image.Canvas.Brush.Style:=bsclear;
    image.canvas.brush.Color:=clwhite;
    image.Canvas.Font.Color:=clblack;
    image.Canvas.TextOut(30, 55, '姓名:' + ad_cg.FieldByName('brxm').AsString);
    image.Canvas.TextOut(130, 55, '性别:' + ad_cg.FieldByName('brxb').AsString);
    image.Canvas.TextOut(230, 55, '年龄:' + ad_cg.FieldByName('brnl').AsString);//sp_twbr.FieldByName('brnl').AsString);
    image.Canvas.TextOut(330, 55, '科别:' + ad_cg.FieldByName('brks').AsString);
    image.Canvas.TextOut(510, 55, '病床:' + ad_cg.FieldByName('bch').AsString);
    image.Canvas.TextOut(610, 55, '住院号:' + sp_cx_zybrjbqk.FieldByName('tmh').AsString);     //以上画页头
    i := 1;
    d1 := strtodatetime(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('ryrq').AsDateTime));
    d2:=ad_cg.FieldByName('jlrq').asdatetime;
    while (not ad_cg.Eof) and (formatdatetime('yyyymmdd',ad_cg.FieldByName('jlrq').asdatetime)<=formatdatetime('yyyymmdd',nextrq)) do
    begin

        image.Canvas.Font := label4.Font;
        image.Canvas.Brush.Style:=bsclear;
        image.canvas.brush.Color:=clwhite;
        image.Canvas.Font.Color:=clblack;
        image.Canvas.Font.Size:=12;
        image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 78, formatdatetime('yy"年"mm"月"dd"日"', ad_cg.FieldByName('jlrq').asdatetime));
        image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 98,  ad_cg.FieldByName('ryts').asstring);//显示住院日期
        if ad_cg.FieldByName('ssts').asstring<>'0' then
        image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 118, ad_cg.FieldByName('ssts').asstring);//显示手术日期
        image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157, convert0tob(ad_cg.FieldByName('xbl').asstring));
        image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 20, ad_cg.FieldByName('dbcs').asstring);
        image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 40, convert0tob(ad_cg.FieldByName('syl').asstring));
        image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 60, convert0tob(ad_cg.FieldByName('yrl').asstring));
        image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 80, ad_cg.FieldByName('xy').Asstring);
        image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 100, convert0tob(ad_cg.FieldByName('tz').asstring));
        s1:=ad_cg.FieldByName('qt').asstring;
        if (image.Canvas.TextWidth(s1)<=wid) and (image.Canvas.TextWidth(s1)>wid1) then
        begin
          image.canvas.font.size :=9;
          image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 120, convert0tob(ad_cg.FieldByName('qt').asstring));
        end
        else
        if (image.Canvas.TextWidth(s1)>wid) then
        begin
//         s1:=ad_cg.FieldByName('qt').asstring;
         image.canvas.font.size :=9;
         s2:=s1;
         i4:=0;
         i3:=20;
         while image.Canvas.TextWidth(s1)>wid do
         begin
         i3:=1;
         jqwc:=false;
         wzhz:=0;
         lxyw:=0;
{         while ord(s1[i3])<128 do
          i3:=i3+1;}
         while  (not jqwc) do
         begin
         if ord(s1[i3])>128  then
         begin
         wzhz:=wzhz+1;
         lxyw:=0;
         end
         else
         lxyw:=lxyw+1;
         s3:=copy(s1,1,i3);
         if image.Canvas.TextWidth(s3)> wid then
         begin
          jqwc:=true;
         end;
         if not jqwc then
         i3:=i3+1;
         if jqwc then
         if not wzhz div 2=0 then
         i3:=i3-1;
         end;
         if lxyw>0 then
         i3:=i3-lxyw;
         image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 120+i4*13,convert0tob(copy(s1,1,i3)));
         delete(s1,1,i3);
//         image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 133,convert0tob(copy(s1,i3+1,50)));
         i4:=i4+1;
         end;
         image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 120+i4*13,convert0tob(s1));
        end
        else
         begin
         image.canvas.font.size := 12;
         image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 120, convert0tob(ad_cg.FieldByName('qt').asstring));
         end;
        //写入院日期
        image.Canvas.Font.Size:=10;
        x1:=0;
        if (ad_cg.FieldByName('ryrq').asdatetime<>0) and
             (formatdatetime('yyyymmdd',ad_cg.FieldByName('ryrq').asdatetime)>=formatdatetime('yyyymmdd',ksrq)) then
        begin
        if strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('ryrq').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
            image.Canvas.Font.Color:=clred;
        with image.canvas do
        begin
          textout(x,157,'入');
          textout(x,175,'院');
          textout(x,193,'于');
          textout(x,211,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),1,2));
          textout(x,229,'时');
          if copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),4,2)<>'00' then
          begin
          textout(x,247,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),4,2));
          textout(x,265,'分');
          end;
        end;
        x1:=x;
        end;
        //写手术日期

        sfss:=false;
        if ad_cg.FieldByName('ssrq').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('ssrq').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
            image.Canvas.Font.Color:=clred;
            sfss:=true;
         if (x1<>0) and (abs(x-x1)<15) then
           x:=x+16;
         x1:=x;
        with image.canvas do
        begin
          textout(x,157,'手');
          textout(x,175,'术');
          textout(x,193,'于');
          textout(x,211,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),1,2));
          textout(x,229,'时');
          if copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),4,2)<>'00' then
          begin
          textout(x,247,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),4,2));
          textout(x,265,'分');
          end;
        end;
        end;
        //写分娩日期
        if ad_cg.FieldByName('fmsj').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('fmsj').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('fmsj').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('fmsj').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
         if (x1<>0) and (abs(x-x1)<15) then
           x:=x+16;
         x1:=x;
            image.Canvas.Font.Color:=clblue;
        with image.canvas do
        begin
          textout(x,157,'分');
          textout(x,175,'娩');
          textout(x,193,'于');
          textout(x,211,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('fmsj').asdatetime),1,2));
          textout(x,229,'时');
          if copy(formatdatetime('hh:mm',ad_cg.fieldbyname('fmsj').asdatetime),4,2)<>'00' then
          begin
          textout(x,247,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('fmsj').asdatetime),4,2));
          textout(x,265,'分');
          end;
        end;
        end;
        //写出院日期
        if ad_cg.FieldByName('cyrq').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('cyrq').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('cyrq').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('cyrq').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
            image.Canvas.Font.Color:=clred;
         if (x1<>0) and (abs(x-x1)<15) then
           x:=x+16;
         x1:=x;
        with image.canvas do
        begin
          textout(x,157,'出');
          textout(x,175,'院');
          textout(x,193,'于');
          textout(x,211,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('cyrq').asdatetime),1,2));
          textout(x,229,'时');
          if copy(formatdatetime('hh:mm',ad_cg.fieldbyname('cyrq').asdatetime),4,2)<>'00' then
          begin
          textout(x,247,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('cyrq').asdatetime),4,2));
          textout(x,265,'分');
          end;
        end;
        end;
        //写死亡日期
        if ad_cg.FieldByName('swsj').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('swsj').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('swsj').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('swsj').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
            image.Canvas.Font.Color:=clred;
         if (x1<>0) and (abs(x-x1)<15) then
           x:=x+16;
         x1:=x;
        with image.canvas do
        begin
          textout(x,157,'死');
          textout(x,175,'亡');
          textout(x,193,'于');
          textout(x,211,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('swsj').asdatetime),1,2));
          textout(x,229,'时');
          if copy(formatdatetime('hh:mm',ad_cg.fieldbyname('swsj').asdatetime),4,2)<>'00' then
          begin
          textout(x,247,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('swsj').asdatetime),4,2));
          textout(x,265,'分');
          end;
        end;
        end;
        //写转出日期
        if ad_cg.FieldByName('zcrq').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('zcrq').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('zcrq').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('zcrq').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
            image.Canvas.Font.Color:=clred;
         if (x1<>0) and (abs(x-x1)<15) then
           x:=x+16;
         x1:=x;
        with image.canvas do
        begin
          textout(x,157,'转');
          textout(x,175,'科');
          i1:=0;i2:=0;
          s:=trim(ad_cg.fieldbyname('zcks').asstring)+'-->'+trim(ad_cg.fieldbyname('zrks').asstring);
          if x+length(s)*17>image.Width then
          textout(x-((length(s)*17) div 4),193,s)
          else
          textout(x,193,s);


  {        while i1<=length(s) do
          begin
            textout(x,157+(i2+1)*20,copy(s,i1+1,2));
            i1:=i1+2;
            i2:=i2+1;
          end; }
          i2:=3;
          textout(x,157+(i2+0)*18,'于');
          textout(x,157+(i2+1)*18,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('zcrq').asdatetime),1,2));
          textout(x,157+(i2+2)*18,'时');
          if copy(formatdatetime('hh:mm',ad_cg.fieldbyname('zcrq').asdatetime),4,2)<>'00' then
          begin
          textout(x,157+(i2+3)*18,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('zcrq').asdatetime),4,2));
          textout(x,157+(i2+4)*18,'分');
          end;
        end;
        end;
        image.Canvas.Pen.Width:=2;
        ad_cg.Next;
        i := DaysBetween(ad_cg.FieldByName('jlrq').asdatetime,d2)+1;

    end;
  image.Canvas.Font.Color:=clblack;
//  image.Canvas.textout(10,300+106 * m_height,'请注意：表头所标每一个时点位置，是紧邻该时点前竖线。');
  image.Canvas.TextOut(image.Width div 2,145 + 155 + 108 * m_height,'第'+inttostr((DaysBetween(minrq,ksrq) div 7)+1)+'页');
  ad_cg.EnableControls;
end;

procedure Tfrm_mobi_twb_display_his.imagePrint;
var
    rect: TRect;
begin
    
    rect.Left := 0;
    rect.Top := 0;

    rect.Right := printer.PageWidth;
    rect.Bottom :=printer.PageHeight;
    printer.PrinterIndex:=printer.Printers.IndexOf(printername);
    Printer.BeginDoc;
    Printer.Canvas.StretchDraw(rect, Image.Picture.Graphic);
    Printer.EndDoc;
end;

procedure Tfrm_mobi_twb_display_his.jbxx;
begin

    sp_cx_zybrjbqk.Close;
    sp_cx_zybrjbqk.Parameters.ParamByName('@tmh').value := trim(brxm.text);
    sp_cx_zybrjbqk.Parameters.ParamByName('@bqdm').value := pub_bqdm;

    frm_func.open_dataset(sp_cx_zybrjbqk);

    if sp_cx_zybrjbqk.IsEmpty then
    begin
        application.MessageBox('病人信息输入错误，' + ''#13'' + ''#13'' + '请确认输入的是病人的姓名或卡号或病床号', '错误', mb_ok + mb_iconerror);
        brxm.SetFocus;
    end
    else if sp_cx_zybrjbqk.RecordCount > 1 then
    begin
        tmpgrid.Visible := true;
        tmpgrid.top := brxm.top + brxm.Height;
        tmpgrid.left := brxm.left;
        tmpgrid.Visible := true;
        tmpgrid.setfocus;
    end
    else
       displayvalue;
end;

procedure Tfrm_mobi_twb_display_his.SpeedButton1Click(Sender: TObject);
begin
    speedbutton1.Enabled:=false;
    if brxm.Text<>'' then
        jbxx
    else
    begin
    application.MessageBox(pchar('请扫描病人腕带和输入住院号、床号，请重新输入！！！！'+char(13)),'提示',mb_ok+mb_iconinformation);
    brxm.setfocus;
    end;
    speedbutton1.Enabled:=true;
end;

procedure Tfrm_mobi_twb_display_his.drawline(hz, fieldname: string; hzx, hzy: integer; step: real; begva, color: integer);
var
    d1: Tdatetime;
    x, y,x1,y1,x2,y2,x3,y3,x4,y4,x_ls,y_ls,size,ry: integer;
    r,r1: real;
    sd:real;
    mbxl:integer;
    sfjc:boolean;
    qsx:integer;
begin
//处理体温
 if pub_sfhtt then
  qsx:=150
 else
  qsx:=120;
if not ad_tw.isempty then
 begin
   ad_tw.DisableControls;
   if ad_tw.Locate('jlrq_s',  formatdatetime('yyyymmdd',ksrq), [loPartialKey]) then
   begin
//     ad_tw.first;
    image.Canvas.Brush.Color := color;
    image.Canvas.Brush.Style := bssolid;
    image.Canvas.Pen.Width:=2;
    image.Canvas.Font.Color:=clwhite;
    image.Canvas.textout(hzx, hzy, hz);
//  ad_tw.first;
    r1:=0;
    d1 := strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').AsDateTime));
    mbxl:=0;
    if fieldname='mb' then
    r1:= ad_tw.FieldByName('xl').Asfloat;
    r := ad_tw.FieldByName(fieldname).Asfloat;
    y := round(155 + 105 * m_height - (r - begva) * step);
    if fieldname='mb' then
    y1:= round(155 + 105 * m_height - (r1 - begva) * step);
//    if strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))>4 then
    sd:=strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60-2 ;
//    else
//    sd:=0+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60;
 //   x := 120 + trunc( sd* m_width / 4)+trunc(m_width / 2);
    x := qsx + trunc( sd* m_width / 4)+trunc(m_width / 2);
    image.Canvas.Pen.Color := color;
    image.Canvas.BRUSH.Style := bssolid;
    image.Canvas.Brush.Color := color;
//    image.Canvas.Brush.Style := bssolid;
    if trim(ad_tw.fieldbyname('jcyy').asstring)<>''  then
     begin
      image.Canvas.Font.Color:=clblack;
      image.canvas.Brush.Style:=bsclear;
      image.canvas.TextOut(x-7,104 * m_height + 135,copy(ad_tw.fieldbyname('jcyy').asstring,1,2));
      image.canvas.TextOut(x-7,104 * m_height + 150,copy(ad_tw.fieldbyname('jcyy').asstring,3,2));
      sfjc:=true;
     end
    else
    begin
    if (fieldname='tw') and (ad_tw.FieldByName('twfs').asstring='腋温') then
     begin
       image.Canvas.moveto(x-4,y-4);
       image.canvas.LineTo(x+4,y+4);
       image.Canvas.moveto(x-4,y+4);
       image.canvas.LineTo(x+4,y-4);
     end
     else
    if (fieldname='tw') and (ad_tw.FieldByName('twfs').asstring='肛温') then
     begin
          image.Canvas.brush.Style := bsclear;
          image.Canvas.Ellipse(x - 3, y1 - 3, x + 3, y1 + 3);
      end
     else
    if  (fieldname='tw') and(ad_tw.fieldbyname('tw').asfloat<=35) then
     begin
      ry:= 155 + 105 * m_height - round((35 - begva) * step);
      image.Canvas.MoveTo(x, ry);
      image.Canvas.Font.Color:=clblack;
      image.canvas.Brush.Style:=bsclear;
      image.canvas.TextOut(x-7,ry,'不');
      image.canvas.TextOut(x-7,ry+15,'升');
      sfjc:=true;
     end
     else
      image.Canvas.Ellipse(x - 3, y - 3, x + 3, y + 3);
      image.Canvas.MoveTo(x, y);

    if fieldname='mb' then
    begin
    if y<>y1 then
     begin
     image.Canvas.brush.Style := bsclear;
     image.Canvas.Ellipse(x - 3, y1 - 3, x + 3, y1 + 3);
     image.Canvas.brush.Style := bssolid;
     image.Canvas.Ellipse(x - 3, y - 3, x + 3, y + 3);
     image.Canvas.Brush.Color := color;
     x2:=x;y2:=y1 ;
     x4:=x;y4:=y;
     mbxl:=1;
     end
     else
     begin
     image.Canvas.brush.Style := bssolid;
     image.Canvas.Ellipse(x - 3, y1 - 3, x + 3, y1 + 3);
     end;
    end;
    x4:=x;y4:=y;
    end;
    ad_tw.Next;

    while (not ad_tw.Eof) and (formatdatetime('yyyymmdd',ad_tw.FieldByName('jlrq').asdatetime)<=formatdatetime('yyyymmdd',nextrq)) do
    begin
      if not ((trim(ad_tw.fieldbyname('sm').asstring)='物理降温') and (fieldname<>'tw')) then
      begin
        if fieldname='mb' then
        r1:= ad_tw.FieldByName('xl').Asfloat;
        r := ad_tw.FieldByName(fieldname).Asfloat;
        x_ls:=x;
        y_ls:=y;
        y := round(155 + 105 * m_height - (r - begva) * step);
        if fieldname='mb' then
        y1:= round(155 + 105 * m_height - (r1 - begva) * step);
//       if strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))>4 then
//        sd:=strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60-2
//       else
        sd:=strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60-2;
        x := qsx + trunc(sd * m_width / 4) +
            trunc(strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)) - d1) * m_width * 6+m_width div 2;
        x1:=x;

        if fieldname<>'mb' then
        if trim(ad_tw.fieldbyname('sm').asstring)<>'物理降温' then
        if trim(ad_tw.fieldbyname('jcyy').asstring)<>''  then
        begin
        image.Canvas.Font.Color:=clblack;
        image.canvas.Brush.Style:=bsclear;
        image.canvas.TextOut(x-7,104 * m_height + 135,copy(ad_tw.fieldbyname('jcyy').asstring,1,2));
        image.canvas.TextOut(x-7,104 * m_height + 150,copy(ad_tw.fieldbyname('jcyy').asstring,3,2));
        sfjc:=true;
        end
        else
    if  (fieldname='tw') and(ad_tw.fieldbyname('tw').asfloat<=35) then
     begin
      ry:= 155 + 105 * m_height - round((35 - begva) * step);
      image.Canvas.MoveTo(x, ry);
      image.Canvas.Font.Color:=clblack;
      image.canvas.Brush.Style:=bsclear;
      image.canvas.TextOut(x-7,ry,'不');
      image.canvas.TextOut(x-7,ry+15,'升');
      sfjc:=true;
     end
     else
        if y_ls=0 then
        image.canvas.MoveTo(x,y)
        else
        begin
        if not sfjc then
        image.Canvas.LineTo(x,y)
        else
        image.Canvas.moveTo(x,y);
        sfjc:=false;
        end
        else
        begin
        if not sfjc then
        begin
        image.Canvas.pen.Color:=clred;
        image.Canvas.Pen.Style:=psdashdotdot;
        image.canvas.Pen.Width:=1;
        image.canvas.lineto(x_ls,y);
        end
        end;
        image.Canvas.Pen.Style:=pssolid;
        image.Canvas.pen.Color:=color;
        image.canvas.Pen.Width:=2;
//        sfjc:=false;
        x3:=x;y3:=y;
        if fieldname='mb' then
        begin
        if y<>y1 then
        begin
        if mbxl<>0 then
         begin
          image.Canvas.LineTo(x3,y3);
          image.Canvas.moveto(x2,y2);
          image.Canvas.LineTo(x,y1);
          image.Canvas.brush.Style := bsclear;
          image.Canvas.Ellipse(x - 3, y1 - 3, x + 3, y1 + 3);
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bssolid;
//          image.canvas.lineto(x,y);
          image.Canvas.MoveTo(x3,y3);
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bsBDiagonal;
          image.Canvas.Polygon([Point(x4, y4), Point(x, y),
          Point(x, y1), Point(x2, y2),Point(x4, y4)]);

          x2:=x;y2:=y1;
          x4:=x;y4:=y;
         end
         else
         begin
          if not sfjc then
           image.Canvas.LineTo(x,y)
          else
           image.Canvas.moveTo(x,y);

//          image.Canvas.LineTo(x, y);//**
          image.Canvas.moveto(x3,y3);
          image.Canvas.LineTo(x, y1);
          image.Canvas.brush.Style := bsclear;
          image.Canvas.Ellipse(x - 3, y1 - 3, x + 3, y1 + 3);
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bssolid;
          x2:=x;y2:=y1 ;
          x4:=x;y4:=y;
         end;
         mbxl:=mbxl+1;
        end
        else
        begin
        if mbxl>0 then
        begin
         if trim(ad_tw.fieldbyname('jcyy').asstring)='' then
         begin
          image.Canvas.LineTo(x, y);//**  划脉搏
          image.Canvas.LineTo(x2, y2);//**划心率
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bsBDiagonal;
          image.Canvas.Polygon([Point(x4, y4), Point(x, y),
          Point(x2, y2),Point(x4, y4)]);
          image.Canvas.moveto(x, y);//**
        end
        else
        begin
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bsBDiagonal;
          image.Canvas.Polygon([Point(x4, y4), Point(x4, y4),
          Point(x4, y4),Point(x4, y4)]);
          sfjc:=true;
        end;
        end
        else
        if trim(ad_tw.fieldbyname('jcyy').asstring)<>''  then
        begin
        image.Canvas.Font.Color:=clblack;
        image.canvas.Brush.Style:=bsclear;
        image.canvas.TextOut(x-7,104 * m_height + 135,copy(ad_tw.fieldbyname('jcyy').asstring,1,2));
        image.canvas.TextOut(x-7,104 * m_height + 150,copy(ad_tw.fieldbyname('jcyy').asstring,3,2));
        sfjc:=true;
        end
        else
        if y_ls=0 then
        image.canvas.MoveTo(x,y)
        else
        begin
        if not sfjc then
        image.Canvas.LineTo(x,y)
        else
        image.Canvas.moveTo(x,y);
        sfjc:=false;
        end;
        mbxl:=0;
        end;
        end;
    if trim(ad_tw.fieldbyname('jcyy').asstring)=''  then
    begin

    if trim(ad_tw.fieldbyname('sm').asstring)<>'物理降温' then
    begin
    if  (fieldname='tw') and(ad_tw.fieldbyname('tw').asfloat<=35) then
     begin

      ry:= 155 + 105 * m_height - round((35 - begva) * step);
      image.Canvas.MoveTo(x, ry);
      image.Canvas.Font.Color:=clblack;
      image.canvas.Brush.Style:=bsclear;
      image.canvas.TextOut(x-7,ry,'不');
      image.canvas.TextOut(x-7,ry+15,'升');
      sfjc:=true;

{       image.Canvas.Brush.Color := color;
       image.Canvas.brush.Style := bssolid;
       image.Canvas.Ellipse(x - 4, y - 4, x + 4, y + 4);
       image.Canvas.brush.Style := bsclear;
       image.Canvas.Font.Color:=color;
       size:=image.Canvas.Font.Size;
       image.Canvas.Font.Size:=20;
       image.canvas.TextOut(x-13,y,'↓');
       image.Canvas.MoveTo(x, y);
       image.Canvas.Font.Size:=size;     }
     end
    else
    if (fieldname='tw') and (ad_tw.FieldByName('twfs').asstring='腋温') then
     begin
       image.Canvas.moveto(x-4,y-4);
       image.canvas.LineTo(x+4,y+4);
       image.Canvas.moveto(x-4,y+4);
       image.canvas.LineTo(x+4,y-4);
       image.Canvas.MoveTo(x, y);
     end
     else
    if (fieldname='tw') and (ad_tw.FieldByName('twfs').asstring='肛温') then
     begin
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bsclear;
          image.Canvas.Ellipse(x - 3, y - 3, x + 3, y + 3);
      end
      else
      begin
        image.Canvas.Brush.Color := color;
        image.Canvas.brush.Style := bssolid;
        image.Canvas.Ellipse(x - 3, y - 3, x + 3, y + 3);
        if (ad_tw.FieldByName('syhxj').asboolean) and (fieldname='hx') then
        begin
        ry := round(155 + 105 * m_height - 20 * step);
        image.Canvas.brush.Style := bsclear;
        image.Canvas.Ellipse(x-8,ry-8,x+8,ry+8);
        image.Canvas.Font.Color:=clblack;
        image.canvas.TextOut(x-4,ry-8,'R');
        image.Canvas.MoveTo(x,y);
        end;
      end;
    end
    else
    begin
        image.Canvas.Brush.Color := clred;
        image.Canvas.brush.Style := bsclear;
        image.Canvas.Pen.Color := clred;
        image.Canvas.Pen.width := 1;
        image.Canvas.Ellipse(x_ls- 3, y - 3, x_ls + 3, y + 3);
        if y<=y_ls then
        begin
        image.canvas.Font.Color:=color;
        image.Canvas.TextOut(x_ls-4,y-14,'V');
        end;
        image.Canvas.MoveTo(x_ls,y_ls);

    end;
    end;
     image.Canvas.Pen.width := 1;
     image.Canvas.Pen.Color := color;
  end;/////
     ad_tw.Next;
    end;
 end;
 end;
 ad_tw.EnableControls;

end;

procedure Tfrm_mobi_twb_display_his.initssrq;

begin

end;

procedure Tfrm_mobi_twb_display_his.BitBtn1Click(Sender: TObject);
begin
    drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
    if pub_sfhtt then
    drawline('疼痛', 'tt', 40, 170,  m_height  ,-1, clblack);
    if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>6 then
    begin
    drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
    drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
    end;
//    drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime);

end;

procedure Tfrm_mobi_twb_display_his.FormCreate(Sender: TObject);
var
  P:String;
begin
// GetTempPath(sizeof(buffer),buffer);
  buffer:='d:\temp';
  P:='d:\temp';//要写完整路径。

//  if DirectoryExists(p) then
//  DeleteDir(p);
if not DirectoryExists(p) then
    if not CreateDir(p) then
    raise Exception.Create('Cannot create .\temp');

end;

procedure Tfrm_mobi_twb_display_his.FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
begin
    if image.Canvas.Pixels[x, y] = clblue then
        StatusBar1.Panels[1].Text := Format('体温:%f,', [(105 * m_height + 155 - Y) / (m_height * 10) + 32]);
    if image.Canvas.Pixels[x, y] = clred then
        StatusBar1.Panels[1].Text := Format('脉搏:%F,', [(105 * m_height + 155 - Y) / (m_height / 2) + 30]);
    if image.Canvas.Pixels[x, y] = clnavy then
        StatusBar1.Panels[1].Text := Format('呼吸:%f,', [(105 * m_height + 155 - Y) / m_height + 10]);
end;


procedure Tfrm_mobi_twb_display_his.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
begin
    if image.Canvas.Pixels[x, y] = clblue then
        StatusBar1.Panels[1].Text := Format('体温:%f,', [(105 * m_height + 155 - Y) / (m_height * 10) + 32]);
    if image.Canvas.Pixels[x, y] = clred then
        StatusBar1.Panels[1].Text := Format('脉搏:%F,', [(105 * m_height + 155 - Y) / (m_height / 2) + 30]);
    if image.Canvas.Pixels[x, y] = clnavy then
        StatusBar1.Panels[1].Text := Format('呼吸:%f,', [(105 * m_height + 155 - Y) / m_height + 10]);

end;

procedure Tfrm_mobi_twb_display_his.BitBtn4Click(Sender: TObject);
begin
    drawxy(frm_mobi_twb_display_his.ClientWidth, frm_mobi_twb_display_his.ClientHeight);
    image.Width := 941;
    image.height := 612;
end;

procedure Tfrm_mobi_twb_display_his.BitBtn3Click(Sender: TObject);
begin
    drawxy(941, 661);
    image.Width := 941;
    image.height := 661;
end;

procedure Tfrm_mobi_twb_display_his.BitBtn2Click(Sender: TObject);
begin
    drawxy(frm_mobi_twb_display_his.ClientWidth, frm_mobi_twb_display_his.ClientHeight);
    image.Width := 941;
    image.height :=661;
end;

procedure Tfrm_mobi_twb_display_his.drawxy(width, height: integer);
var
    i, x, y,qsx: integer;
    s: string;
    Bitmap: TBitmap;

begin
if pub_sfhtt then
 qsx:=150
else
 qsx:=120;
    Bitmap := nil;
    try
        Bitmap := TBitmap.Create;
        Bitmap.Width := width;
        Bitmap.Height := height;
        Image.Picture.Graphic := Bitmap;
    finally
        Bitmap.Free;
    end;
    image.Canvas.Font.Size := 24;
    image.Canvas.TextOut((width - image.canvas.TextWidth('体   温   表')) div 2, 10, '体   温   表');
    i := 2;
    image.Canvas.Font.Size := 12;
    m_height := (height - 155 - 120) div 106;
    m_width := (width - qsx - 20) div 42;
    with image.canvas do
    begin
        MoveTo(30, 75);
        Rectangle(30, 75, qsx + 42 * m_width, 140 + 155 + 108 * m_height);
        for x := 1 to 4 do
        begin
            moveto(30, 75 + x * 20);
            lineto(qsx + 42 * m_width, 75 + x * 20);
            textout(40, 76 + (x - 1) * 20, zfcl1[x])
        end;
        for x := 1 to 3 do
        begin
            moveto(30 + x * 30, 155);
            lineto(30 + x * 30, 155 + 106 * m_height);
        end;
        moveto(30, 106 * m_height + 155);
        lineto(qsx + 42 * m_width, 106 * m_height + 155);

        for x := 1 to 7 do
        begin
            moveto(30, 106 * m_height + 155 + x * 20);
            if x<7 then
              lineto(qsx + 42 * m_width, 106 * m_height + 155 + x * 20);
            if length(zfcl1[x+4])<=14 then
            textout(32, 106 * m_height + 154 + 2 + (x - 1) * 20, zfcl1[x + 4])
            else
            begin
             image.Canvas.Font.Size := 8;
             textout(32, 106 * m_height + 154 + 2 + (x - 1) * 20, zfcl1[x + 4]);
             image.Canvas.Font.Size := 12;
            end;
        end;
        moveto(qsx, 75);
        lineto(qsx, 120 + 155 + 106 * m_height);

    end;           //以上画左边表列


    for x := 0 to 42 do   //写2，6，8，10等坐标数
    begin
        with image do
        begin
            if x mod 6 = 0 then
            begin
                canvas.pen.width := 1;
                canvas.Pen.Color := $001607D1;
                Canvas.MoveTo(qsx + X * m_width, 75);
                canvas.LineTo(qsx + x * m_width, 108 * m_height + 155 + 140);
            end
            else
            begin
                canvas.pen.width := 1;
                canvas.Pen.Color := clblack;
                Canvas.MoveTo(qsx + X * m_width, 135);
                canvas.LineTo(qsx + x * m_width, 106 * m_height + 155);
            end;
            canvas.Font.Size := 7;
            if (i < 24) then
                s := ' ' + inttostr(i)
            else
                s := '2';
            if x < 42 then
                canvas.TextOut(qsx + x * m_width + 3, 140, s);
            i := i + 4;
            if i > 24 then i := 2
        end
    end;
    canvas.Font.Size := 9;
    for y := 105 downto 0 do
    begin
      if y mod 2=0 then
      begin
        with image do
        begin
            Canvas.MoveTo(qsx, y * m_height + 155);
           if y  = 50 then                  //每隔5个画一红色横线
            begin
                canvas.pen.width := 1;
                canvas.Pen.Color := $001607D1;;
            end
            else
           if y  = 34 then                  //每隔5个画一红色横线
            begin
                canvas.pen.width := 2;
                canvas.Pen.Color := $001607D1;;
            end
            else
            begin
                canvas.pen.width := 1;
                canvas.Pen.Color := clblack;
            end;
            canvas.LineTo(42 * m_width + qsx, y * m_height + 155);
        end
      end;
    end;
    for y := 105 downto 1 do
    begin
        if y mod 5 = 0 then
        begin
            if 40 + (105 - y + 1) * 2 <= 160 then
                image.canvas.textout(40, (y - 1) * m_height + 130, inttostr(40 + (105 - y) * 2));   //画脉搏
            if 15 + (105 - y + 1) * 1 <= 60 then
                image.canvas.textout(70, (y - 1) * m_height + 130, inttostr(15 + (105 - y) * 1));  //画呼吸
            if (y <= 80) and (y mod 10 = 0) then
                if ((80 - y) div 10 + 35 >= 35) and ((80 - y) div 10 + 35 <= 42) then
                    image.canvas.textout(100, (y - 1) * m_height + 130, inttostr((80 - y) div 10 + 35));  //画体温
            if pub_sfhtt then
            if ((105 - y+1) <= 10) then
                image.canvas.textout(130, (y+3) * m_height+130 , inttostr( (105-y)*2));  //画疼痛

        end
    end;
    image.Canvas.Brush.Style:=bsclear;
    image.canvas.brush.Color:=clwhite;
    image.Canvas.Font.Size := 11;
    image.canvas.textout(40, 300, '脉');
    image.canvas.textout(40, 340, '搏');
    image.canvas.textout(70, 370, '呼');
    image.canvas.textout(70, 400, '吸');
    image.Canvas.Font.Size := 9;
    image.canvas.textout(93, 190, '体摄');
    image.canvas.textout(93, 210, '温氏');
    if pub_sfhtt then
    image.canvas.textout(123, 210, '疼痛');
end;

procedure Tfrm_mobi_twb_display_his.ToolButton2Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            drawxy(screen.Width, screen.Height);
            image.Width := 941;
            image.height := 661;
            ToolButton12.Click;
        end;
    end;
end;

procedure Tfrm_mobi_twb_display_his.ToolButton3Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            drawxy(941, 661);
            image.Width := 941;
            image.height := 661;
            ToolButton12.Click;
        end;
    end;
end;

procedure Tfrm_mobi_twb_display_his.ToolButton1Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            drawxy(frm_mobi_twb_display_his.ClientWidth, frm_mobi_twb_display_his.ClientHeight);
            image.Width := 941;
            image.height := 661;
            ToolButton12.Click;
        end;
    end;
end;

procedure Tfrm_mobi_twb_display_his.ToolButton12Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
         ksrq:=minrq;
         nextrq := minrq + 6;
         drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
        if pub_sfhtt then
         drawline('疼痛', 'tt', 40, 170, m_height ,-1, clblack);
        if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>6 then
        begin
         drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
         drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
        end;
//         drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime);
         pageno:=1;
         drawcgjl;
        end;
    end;
end;

procedure Tfrm_mobi_twb_display_his.b_addClick(Sender: TObject);
begin
{    if valuechange then
        if application.messagebox(pchar(dateTostr(lrrq.Date) + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    valuechange := false;
    if not checkzero then
    begin
        if formatdatetime('yyyymmdd', da1) < formatdatetime('yyyymmdd', frm_func.curr_date) then
        begin
            da1 := maxrq;
            da1 := da1 + 1;
            maxrq := da1;
            display_hljl_null;
            mb0.SetFocus;
        end
        else
            application.MessageBox(pchar(formatdatetime('yy"年"mm"月"dd"日"', da1) + '已是最后一天，不能增加！'), '提示', mb_ok + mb_iconwarning);
    end
    else
        application.MessageBox(pchar(formatdatetime('yy"年"mm"月"dd"日"', da1) + '输入未完成，不能增加！'), '提示', mb_ok + mb_iconwarning);    }

end;

function Tfrm_mobi_twb_display_his.strTOre(xx: Tedit; ss: string): boolean;
var i: real;
begin
    try
        i := strtofloat(trim(xx.text));
        result := true;
    except
        application.MessageBox(pchar(ss + '输入错误！'), '提示', mb_ok + mb_iconwarning);
        result := false;
    end
end;

function Tfrm_mobi_twb_display_his.checkzero: boolean;
begin
    result := false;
   if not ad_tw.Eof then
    begin
        if ad_tw.fieldbyname('mb').asfloat = 0 then
          result := true
        else
            if ad_tw.fieldbyname('tw').asfloat = 0 then
                result := true
            else
                if ad_tw.fieldbyname('hx').asfloat = 0 then
                     result := true
      end;
end;


procedure Tfrm_mobi_twb_display_his.brxmKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13  then
    if brxm.Text<>'' then
        jbxx
    else
    begin
    application.MessageBox(pchar('请扫描病人腕带和输入住院号、床号，请重新输入！！！！'+char(13)),'提示',mb_ok+mb_iconinformation);
    brxm.setfocus;
    end;
end;

procedure Tfrm_mobi_twb_display_his.Button4Click(Sender: TObject);
var
s:string;
ss:string;
begin
   application.CreateForm(Tfrm_hljlddyrq,frm_hljlddyrq);
    frm_hljlddyrq.lb:=3;
    try
      frm_hljlddyrq.zy_zyh:=zy_zyh;
      frm_hljlddyrq.showmodal;
    finally
      frm_hljlddyrq.Free;
    end;



   s:='姓名:' + sp_cx_zybrjbqk.FieldByName('brxm').AsString+' 性别:' + sp_cx_zybrjbqk.FieldByName('brxb').AsString+' 年龄:' + sp_cx_zybrjbqk.FieldByName('brnl').AsString
    +' 科别:' + sp_cx_zybrjbqk.FieldByName('ksmc').AsString+ ' 病床:' + sp_cx_zybrjbqk.FieldByName('bch').AsString+' 住院号:' + sp_cx_zybrjbqk.FieldByName('tmh').AsString
    +' 入院诊断:' +sp_cx_zybrjbqk.fieldbyname('ryzd').asstring;


PrintDBGridEh1.DBGridEh:=DBGridEh4;
PrintDBGridEh1.Title.Text:='绵阳市中心医院护理记录单（一）';
PrintDBGridEh1.PageHeader.LeftText.Clear;
PrintDBGridEh1.PageHeader.LeftText.Add(s);
PrintDBGrideh1.PageHeader.Font.Name:='宋体';
PrintDBGrideh1.PageHeader.Font.Size:=10;
PrintDBGrideh1.PageHeader.RightText.Clear;
//PrintDBGrideh1.PageHeader.RightText.text:=formatdatetime('yyyy-mm-dd hh:mm:ss',Frm_func.curr_date);
PrintDBGridEh1.PageFooter.CenterText.Text:='第     页';
PrintDBGridEh1.PageFooter.rightText.Text:='签名                                         ';
//PrintDBGridEh1.PrinterSetupDialog;
DBGridEh4.RowHeight:=20;
PrinterPreview.Orientation:=poLandscape;


PrintDBGridEh1.Preview;
end;

procedure Tfrm_mobi_twb_display_his.Button9Click(Sender: TObject);
var
s:string;
begin
   application.CreateForm(Tfrm_hljlddyrq,frm_hljlddyrq);
    frm_hljlddyrq.lb:=2;
    try
      frm_hljlddyrq.zy_zyh:=zy_zyh;
      frm_hljlddyrq.showmodal;
    finally
      frm_hljlddyrq.Free;
    end;

   s:='姓名:' + sp_cx_zybrjbqk.FieldByName('brxm').AsString+' 性别:' + sp_cx_zybrjbqk.FieldByName('brxb').AsString+' 年龄:' + sp_cx_zybrjbqk.FieldByName('brnl').AsString
    +' 科别:' + sp_cx_zybrjbqk.FieldByName('ksmc').AsString+ ' 病床:' + sp_cx_zybrjbqk.FieldByName('bch').AsString+' 住院号:' + sp_cx_zybrjbqk.FieldByName('tmh').AsString
    +' 入院诊断:' +sp_cx_zybrjbqk.fieldbyname('ryzd').asstring;


PrintDBGridEh1.DBGridEh:=DBGridEh6;
PrintDBGridEh1.Title.Text:='绵阳市中心医院护理记录单（二）';
PrintDBGridEh1.PageHeader.LeftText.Clear;
PrintDBGridEh1.PageHeader.LeftText.Add(s);
PrintDBGrideh1.PageHeader.Font.Name:='宋体';
PrintDBGrideh1.PageHeader.Font.Size:=10;
PrintDBGrideh1.PageHeader.RightText.Clear;
//PrintDBGrideh1.PageHeader.RightText.text:=formatdatetime('yyyy-mm-dd hh:mm:ss',Frm_func.curr_date);
PrintDBGridEh1.PageFooter.CenterText.Text:='第     页';
PrintDBGridEh1.PageFooter.rightText.Text:='签名                                         ';
//PrintDBGridEh1.Page.
PrinterPreview.Orientation:=poLandscape;
PrintDBGridEh1.Preview;
end;

procedure Tfrm_mobi_twb_display_his.displayvalue;
var i: integer;
clbz:boolean;
begin
    pub_sfhtt:=sp_cx_zybrjbqk.FieldByName('sfhtt').asboolean;
    dm_data.qry_pub.Close;
    dm_data.qry_pub.SQL.Clear;
   dm_data.qry_pub.SQL.Add('select * from sys_bqzyfl where bqdm='+#39+pub_bqdm+#39);
    frm_func.open_dataset(dm_data.qry_pub);
    clbz:=false;
     clbz:=dm_data.qry_pub.locate('bqzydm',sp_cx_zybrjbqk.FieldByName('ksdm').AsString,[]);

     if not clbz then
      begin
       if application.MessageBox(pchar('请注意：'+char(13)+'病人：'+sp_cx_zybrjbqk.FieldByName('brxm').AsString+'是'+char(13)+'     '+
        sp_cx_zybrjbqk.fieldbyname('ksmc').asstring+'病人，是否继续处理？'),'提示',MB_ICONQUESTION+mb_yesno+mb_defbutton2)=idyes then
        clbz:=true
       else
        clbz:=false;
      end
     else
      clbz:=true;
 if clbz then
  begin
    valuechange := false;
    brxm.Text := sp_cx_zybrjbqk.fieldbyname('brxm').asstring;
    ksmc.Text := sp_cx_zybrjbqk.fieldbyname('ksmc').asstring;
    ryrq.datetime := sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime;
    bch.Text := sp_cx_zybrjbqk.fieldbyname('bch').asstring;
    lbmc.Text := sp_cx_zybrjbqk.fieldbyname('lbmc').asstring;
    brzd.Text := sp_cx_zybrjbqk.fieldbyname('ryzd').asstring;
    zy_zyh := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    ad_maxrq.Close;
    ad_maxrq.CommandText := 'select min(jlrq) jlrq from zybl_rcjl_cy where zyh=' + #39 + zy_zyh + #39;
     frm_func.open_dataset(ad_maxrq);
    if not ad_maxrq.IsEmpty then
    begin
        minrq := ad_maxrq.fieldbyname('jlrq').asdatetime;
        nextrq := minrq + 6;
    end;
    ad_maxrq.Close;
    ad_maxrq.CommandText := 'select max(jlrq) jlrq from zybl_rcjl_cy where zyh=' + #39 + zy_zyh + #39;
     frm_func.open_dataset(ad_maxrq);
    if not ad_maxrq.IsEmpty then
    maxrq := ad_maxrq.fieldbyname('jlrq').asdatetime
    else
    maxrq:=minrq;
    ad_maxrq.Close;
    ad_maxrq.CommandText := 'select max(jlrq) jlrq from zybl_cgjl_cy where zyh=' + #39 + zy_zyh + #39;
    frm_func.open_dataset(ad_maxrq);
    if not ad_maxrq.IsEmpty then
     begin
      if maxrq<ad_maxrq.fieldbyname('jlrq').asdatetime then
      maxrq:= ad_maxrq.fieldbyname('jlrq').asdatetime;
     end;
    ksrq:=minrq;
    ad_tw.Close;
    ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', minrq);
    ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', maxrq);
     frm_func.open_dataset(ad_tw);
    ad_cg.Close;
    ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', minrq);
    ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', maxrq);
     frm_func.open_dataset(ad_cg);
    ad_tw.Last;
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            drawxy(frm_mobi_twb_display_his.ClientWidth, frm_mobi_twb_display_his.ClientHeight);
            image.Width := 941;
            image.height := 661;
            ToolButton12.Click;
        end;
    end;
  end;
 dkhljldrcl;
end;


procedure Tfrm_mobi_twb_display_his.ToolButton5Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            ksrq := minrq;
            nextrq := minrq + 6;
{            ad_tw.Close;
            ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_tw.Open;

            ad_cg.Close;
            ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_cg.Open; }
            drawxy(frm_mobi_twb_display_his.ClientWidth, frm_mobi_twb_display_his.ClientHeight);
            image.Width := 941;
            image.height := 661;
            drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
            if pub_sfhtt then
            drawline('疼痛', 'tt', 40, 170, m_height, -1, clblack);
            if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>6 then
            begin
            drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
            drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
            end;
//            drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime); 
            drawcgjl;
        end;
    end;
end;

procedure Tfrm_mobi_twb_display_his.ToolButton6Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            ksrq := nextrq - 14;
            nextrq := nextrq - 7;
            if ksrq < minrq then
            begin
                ksrq := minrq;
                nextrq := minrq + 6;
            end;
{            ad_tw.Close;
            ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_tw.Open;

            ad_cg.Close;
            ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_cg.Open; }
            drawxy(frm_mobi_twb_display_his.ClientWidth, frm_mobi_twb_display_his.ClientHeight);
            image.Width := 941;
            image.height := 661;
            drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
            if pub_sfhtt then
            drawline('疼痛', 'tt', 40, 170, m_height , -1, clblack);
            if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>6 then
            begin
             drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
             drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
            end;
//             drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime); 
            drawcgjl;
        end;
    end;
end;

procedure Tfrm_mobi_twb_display_his.ToolButton7Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            ksrq := nextrq + 1;
            nextrq := ksrq + 6;
            if formatdatetime('yyyymmdd',ksrq) <= formatdatetime('yyyymmdd',maxrq) then
            begin
{                ad_tw.Close;
                ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
                ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
                ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
                ad_tw.Open;

                ad_cg.Close;
                ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
                ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
                ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
                ad_cg.Open;      }
                drawxy(frm_mobi_twb_display_his.ClientWidth, frm_mobi_twb_display_his.ClientHeight);
                image.Width := 941;
                image.height := 661;
                drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
                if pub_sfhtt then
                drawline('疼痛', 'tt', 40, 170, m_height, -1, clblack);
                if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>6 then
                begin
                drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
                drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
                end;
//                drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime);
                drawcgjl;
            end
            else
            begin
                nextrq := nextrq - 7;
                ksrq := nextrq - 7;
            end
        end;
    end;
end;

procedure Tfrm_mobi_twb_display_his.ToolButton8Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            ksrq := maxrq - 6;
            nextrq := maxrq;
{            ad_tw.Close;
            ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_tw.Open;
            ad_cg.Close;
            ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_cg.Open;    }
            drawxy(frm_mobi_twb_display_his.ClientWidth, frm_mobi_twb_display_his.ClientHeight);
            image.Width := 941;
            image.height := 661;
            drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
            if pub_sfhtt then
            drawline('疼痛', 'tt', 40, 170, m_height, -1, clblack);
            if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>6 then
            begin
            drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
            drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
            end;
//            drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime);
            drawcgjl;
        end;
    end;
end;

procedure Tfrm_mobi_twb_display_his.ToolButton9Click(Sender: TObject);
begin
  application.createform(TFrm_printerset_mobi_his, Frm_printerset_mobi_his);
  try
    Frm_printerset_mobi_his.showmodal;
  finally
    Frm_printerset_mobi_his.free;
  end;
  ad_tw.First;
  ad_cg.First;
  ksrq:=minrq;
  nextrq:=minrq+6;
    if (printerstate) and (printername<>'') then
     begin
     while formatdatetime('yyyymmdd',ksrq) <= formatdatetime('yyyymmdd',maxrq) do
     begin
      drawxy(frm_mobi_twb_display_his.ClientWidth, frm_mobi_twb_display_his.ClientHeight);
//      drawcgjl;
      image.Width := 941;
      image.height := 661;
      drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
       if pub_sfhtt then
      drawline('疼痛', 'tt', 40, 170, m_height, -1, clblack);
      if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>6 then
      begin
      drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
      drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
      end;
      drawcgjl;
      qrimage1.Top:=0;
      qrimage1.left:=0;
      qrimage1.Height:=941;
      qrimage1.Width:=661;
      image.Picture.SaveToFile(buffer+'\1.bmp');
      qrimage1.Picture.LoadFromFile(buffer+'\1.bmp');
      quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf(printername);
      try
      quickrep1.print;
      finally
       ksrq:=nextrq+1;
       nextrq:=ksrq+6;
      end;
     end;
     end
    else
    if printername='' then
    application.MessageBox('请选择打印机','提示',mb_ok);

end;

procedure Tfrm_mobi_twb_display_his.FormShow(Sender: TObject);
begin
    pagecontrol1.ActivePageIndex := 0;
    brxm.setfocus;
    if trim(brxm.Text) <> '' then
    begin
        jbxx;
    end;
    quickrep1.Visible:=false;
    hljld;
    rcl;

end;

procedure Tfrm_mobi_twb_display_his.tmpgridDblClick(Sender: TObject);
begin
bch.SetFocus;
end;

procedure Tfrm_mobi_twb_display_his.tmpgridExit(Sender: TObject);
begin
    tmpgrid.Visible := false;
    displayvalue;

end;

procedure Tfrm_mobi_twb_display_his.tmpgridKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
bch.setfocus;
end;

procedure Tfrm_mobi_twb_display_his.ToolButton14Click(Sender: TObject);
begin
  application.createform(TFrm_printerset_mobi_his, Frm_printerset_mobi_his);
  try
    Frm_printerset_mobi_his.showmodal;
  finally
    Frm_printerset_mobi_his.free;
  end;
    if (printerstate) and (printername<>'') then
     begin
      qrimage1.Top:=0;
      qrimage1.left:=0;
      qrimage1.Height:=941;
      qrimage1.Width:=661;
      image.Picture.SaveToFile(buffer+'\1.bmp');
      qrimage1.Picture.LoadFromFile(buffer+'\1.bmp');
      quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf(printername);
      quickrep1.print;
     end
    else
    if printername='' then
    application.MessageBox('请选择打印机','提示',mb_ok);
end;

end.

