unit p_twb;

interface

uses
    SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
    Buttons, ExtCtrls, StdCtrls, ComCtrls, Menus, DB, ADODB, ToolWin, ImgList,
    Grids, DBGrids,GridsEh, DBGridEh, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,printers, variants;
type
  sssrq=array[0..5] of tdatetime;
type
    TDrawingTool = (dtLine, dtRectangle, dtEllipse, dtRoundRect);
    Tfrm_twb = class(TForm)
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
        Panel2: TPanel;
        Label13: TLabel;
        Label14: TLabel;
        Label15: TLabel;
        Label17: TLabel;
        Bevel1: TBevel;
        Bevel2: TBevel;
        b_first: TSpeedButton;
        b_prior: TSpeedButton;
        b_next: TSpeedButton;
        b_last: TSpeedButton;
        b_save: TSpeedButton;
        b_delete: TSpeedButton;
        b_cancel: TSpeedButton;
        SpeedButton1: TSpeedButton;
        tmpgrid: TDBGrid;
        ad_dele: TADOCommand;
        ad_tb: TADODataSet;
        ad_maxrq: TADODataSet;
        sp_cx_zybrjbqk: TADOStoredProc;
        ds_zybrjbqk: TDataSource;
        Panel3: TPanel;
        xbl: TEdit;
        Label8: TLabel;
        dbcs: TEdit;
        Label18: TLabel;
        sryl: TEdit;
        Label6: TLabel;
        yrl: TEdit;
        Label19: TLabel;
        xy: TEdit;
        Label20: TLabel;
        tz: TEdit;
        Label21: TLabel;
        ds_tw: TDataSource;
        ad_cgjl: TADODataSet;
        ad_cg: TADODataSet;
        lrrq: TcxDateEdit;
    mb0: TEdit;
    tw0: TEdit;
    hx0: TEdit;
    Label1: TLabel;
    sd: TDateTimePicker;
    Label3: TLabel;
    xl0: TEdit;
    wljw: TCheckBox;
    wcyy: TComboBox;
    Label7: TLabel;
    DBGridEh1: TDBGridEh;
    b_add: TSpeedButton;
    Label9: TLabel;
    Label11: TLabel;
    ssrq1: TcxDateEdit;
    ryrq1: TcxDateEdit;
    Label12: TLabel;
    cwfs: TComboBox;
    GroupBox1: TGroupBox;
    ScrollBox1: TScrollBox;
    Image: TImage;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton14: TToolButton;
    ToolButton12: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    qry_bbqbr: TADOQuery;
    ds_bqbr: TDataSource;
        procedure lrrqPropertiesChange(Sender: TObject);
        procedure SpeedButton1Click(Sender: TObject);
        procedure ToolButton14Click(Sender: TObject);
        procedure tmpgridDblClick(Sender: TObject);
        procedure tmpgridKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure tmpgridExit(Sender: TObject);
        procedure TabSheet2Show(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure ToolButton8Click(Sender: TObject);
        procedure ToolButton7Click(Sender: TObject);
        procedure ToolButton6Click(Sender: TObject);
        procedure ToolButton5Click(Sender: TObject);
        procedure xyKeyPress(Sender: TObject; var Key: Char);
        procedure tw0Exit(Sender: TObject);
        procedure mb0KeyPress(Sender: TObject; var Key: Char);
        procedure brxmKeyPress(Sender: TObject; var Key: Char);
        procedure b_cancelClick(Sender: TObject);
        procedure b_saveClick(Sender: TObject);
        procedure b_deleteClick(Sender: TObject);
        procedure b_addClick(Sender: TObject);
        procedure b_lastClick(Sender: TObject);
        procedure b_nextClick(Sender: TObject);
        procedure b_priorClick(Sender: TObject);
        procedure b_firstClick(Sender: TObject);
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
        procedure displayvalue;
        procedure displaynull;
        procedure display_hljl;
        procedure display_hljl_null;
        function checkerror: boolean;
        function strTOre(xx: Tedit; ss: string): boolean;
        function checkzero: boolean;
        procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure ryrq1KeyPress(Sender: TObject; var Key: Char);
    procedure ssrq1KeyPress(Sender: TObject; var Key: Char);
    procedure ad_cgjlAfterOpen(DataSet: TDataSet);
    procedure sdKeyPress(Sender: TObject; var Key: Char);
    procedure qry_bbqbrAfterScroll(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
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
        procedure drawline(hz, fieldname: string; hzx, hzy: integer; step: real; begva, color: integer);
        procedure drawxy(width, height: integer);
        procedure drawcgjl;
        procedure initssrq;

    end;

    function calcssts(rq:tdatetime):string;
  var
    frm_twb: Tfrm_twb;
    zfcl1: array[1..10] of string = ('日        期', '患病日数', '术后日数', '每日时间', '小  便  量(ml)', '大  便 次 数',
        '输入液量(ml)', '饮  入  量(ml)', '血  压(mmhg)', '体     重(kg)');
    clsd: array[0..5] of integer;
    m_height, m_width,sscs: integer;
    da1, maxrq, minrq, nextrq, ksrq: Tdatetime;
    zy_zyh: string;
    ssrq:sssrq;
 ///   ssts:array[0..5] of integer;

implementation

uses p_dm, p_func;

{$R *.dfm}
function calcssts(rq:tdatetime):string;
var
ssrqstr:string;
i:integer;
n:real;
begin
 ssrqstr:=floattostr(strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[0]))+1);
 for i:=1 to sscs-1 do
  begin
  n:=strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i]));
    if strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i]))>=0 then
    ssrqstr:=ssrqstr+'/'+ floattostr(strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i]))+1)
  end;
 result:=ssrqstr;
end;

procedure Tfrm_twb.displaynull;
begin
    brxm.Text := '';
    ksmc.Text := '';
    ryrq.datetime := date;
    bch.Text := '';
    lbmc.Text := '';
end;

procedure Tfrm_twb.drawcgjl;
var i: integer;
x,y:integer;
sd:real;
d1:tdatetime;
begin
    ad_cg.First;
    i := 1;
    d1 := strtodatetime(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('ryrq').AsDateTime));
    while not ad_cg.Eof do
    begin
        image.Canvas.Font := b_first.Font;
        image.Canvas.Brush.Style:=bsclear;
        image.canvas.brush.Color:=clwhite;
        image.Canvas.Font.Color:=clblack;

        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 78, formatdatetime('yy"年"mm"月"dd"日"', ad_cg.FieldByName('jlrq').asdatetime));
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 98,  ad_cg.FieldByName('ryts').asstring);//显示住院日期
        if ad_cg.FieldByName('ssts').asstring<>'0' then       
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 118, ad_cg.FieldByName('ssts').asstring);//显示手术日期
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 157, floattostr(ad_cg.FieldByName('xbl').AsFloat));
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 157 + 20, floattostr(ad_cg.FieldByName('dbcs').AsFloat));
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 157 + 40, floattostr(ad_cg.FieldByName('syl').AsFloat));
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 157 + 60, floattostr(ad_cg.FieldByName('yrl').AsFloat));
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 157 + 80, ad_cg.FieldByName('xy').Asstring);
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 157 + 100, floattostr(ad_cg.FieldByName('tz').AsFloat));
        //写入院日期
        if ad_cg.FieldByName('ryrq').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),1,2))-2
       else
         sd:=0;
         x := 120 + trunc(sd * m_width / 4) +
            trunc(strtodatetime(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('ryrq').asdatetime)) - d1) * m_width * 6;
            image.Canvas.Font.Color:=clred;
        with image.canvas do
        begin
          textout(x,157,'入');
          textout(x,177,'院');
          textout(x,197,'|');
          textout(x,210,'|');
          textout(x,230,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),1,2));
          textout(x,250,'时');
          if copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),4,2)<>'00' then
          begin
          textout(x,270,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),4,2));
          textout(x,290,'分');
          end;
        end;
        end;
        //写手术日期
        if ad_cg.FieldByName('ssrq').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),1,2))-2
       else
         sd:=0;
         x := 120 + trunc(sd * m_width / 4) +
            trunc(strtodatetime(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('ssrq').asdatetime)) - d1) * m_width * 6;
            image.Canvas.Font.Color:=clred;
        with image.canvas do
        begin
          textout(x,157,'手');
          textout(x,177,'术');
          textout(x,197,'|');
          textout(x,210,'|');
          textout(x,230,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),1,2));
          textout(x,250,'时');
          if copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),4,2)<>'00' then
          begin
          textout(x,270,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),4,2));
          textout(x,290,'分');
          end;
        end;
        end;
        image.Canvas.Pen.Width:=2;
        i := i + 1;
        ad_cg.Next;
    end
end;

procedure Tfrm_twb.imagePrint;
var
    rect: TRect;
begin
    rect.Left := 0;
    rect.Top := 0;
    rect.Right := printer.PageWidth;
    rect.Bottom :=printer.PageHeight;
    //(printer.PageWidth * Image.Height div Image.Width);
    Printer.BeginDoc;
    Printer.Canvas.StretchDraw(rect, Image.Picture.Graphic);
    Printer.EndDoc;
end;

procedure Tfrm_twb.jbxx;
begin

    try
        brxm.Text := FormatEx(strtoint(brxm.text), 9);
    except

    end;
    sp_cx_zybrjbqk.Close;
    sp_cx_zybrjbqk.Parameters.ParamByName('@tmh').value := trim(brxm.text);
    sp_cx_zybrjbqk.Parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_cx_zybrjbqk.Open;
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

procedure Tfrm_twb.drawline(hz, fieldname: string; hzx, hzy: integer; step: real; begva, color: integer);
var
    d1: Tdatetime;
    x, y,x1,y1,x2,y2,x3,y3,x4,y4,x_ls,y_ls: integer;
    r,r1: real;
    sd:real;
    mbxl:integer;
begin
//处理体温
    image.Canvas.Brush.Color := color;
    image.Canvas.Brush.Style := bssolid;
    image.Canvas.Pen.Width:=2;
    image.Canvas.textout(hzx, hzy, hz);
    ad_tw.first;
    r1:=0;
    d1 := strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').AsDateTime));
    mbxl:=0;
    if fieldname='mb' then
    r1:= ad_tw.FieldByName('xl').Asfloat;
    r := ad_tw.FieldByName(fieldname).Asfloat;

    y := round(155 + 105 * m_height - (r - begva) * step);
    if strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))>4 then
    sd:=strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60-2
    else
    sd:=0+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60;
    x := 120 + trunc( sd* m_width / 4)+trunc(m_width / 2);
    image.Canvas.Pen.Color := color;
    image.Canvas.BRUSH.Style := bssolid;
    image.Canvas.Brush.Color := color;
//    image.Canvas.Brush.Style := bssolid;
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
          image.Canvas.Ellipse(x - 4, y1 - 4, x + 4, y1 + 4);
      end
      else
    image.Canvas.Ellipse(x - 4, y - 4, x + 4, y + 4);
    image.Canvas.MoveTo(x, y);

    if fieldname='mb' then
    image.Canvas.Ellipse(x - 4, y1 - 4, x + 4, y1 + 4);
    x4:=x;y4:=y;
    ad_tw.Next;

    while not ad_tw.Eof do
    begin
        if fieldname='mb' then
        r1:= ad_tw.FieldByName('xl').Asfloat;
        r := ad_tw.FieldByName(fieldname).Asfloat;
        x_ls:=x;
        y_ls:=y;
        y := round(155 + 105 * m_height - (r - begva) * step);
        if fieldname='mb' then
        y1:= round(155 + 105 * m_height - (r1 - begva) * step);
       if strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))>2 then
        sd:=strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60-2
       else
        sd:=0+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60;
        x := 123 + trunc(sd * m_width / 4) +
            trunc(strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)) - d1) * m_width * 6;
        x1:=x;
        if fieldname<>'mb' then
        if trim(ad_tw.fieldbyname('sm').asstring)<>'物理降温' then
        if trim(ad_tw.fieldbyname('jcyy').asstring)<>''  then
        image.canvas.TextOut(x,y_ls,ad_tw.fieldbyname('jcyy').asstring)
        else
        if y_ls=0 then
        image.canvas.MoveTo(x,y)
        else
        image.Canvas.LineTo(x, y)
        else
        begin
        image.Canvas.pen.Color:=clred;
        image.Canvas.Pen.Style:=psdashdotdot;
        image.canvas.Pen.Width:=1;
        image.canvas.lineto(x_ls,y);
        end;
        image.Canvas.Pen.Style:=pssolid;
        image.Canvas.pen.Color:=color;
        image.canvas.Pen.Width:=2;
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
          image.Canvas.Ellipse(x - 4, y1 - 4, x + 4, y1 + 4);
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
          image.Canvas.LineTo(x, y);//**
          image.Canvas.moveto(x3,y3);
          image.Canvas.LineTo(x, y1);
          image.Canvas.brush.Style := bsclear;
          image.Canvas.Ellipse(x - 4, y1 - 4, x + 4, y1 + 4);
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
        image.Canvas.LineTo(x, y);//**
        image.Canvas.LineTo(x2, y2);//**
        image.Canvas.Brush.Color := color;
        image.Canvas.brush.Style := bsBDiagonal;
        image.Canvas.Polygon([Point(x4, y4), Point(x, y),
         Point(x2, y2),Point(x4, y4)]);

        image.Canvas.moveto(x, y);//**
        end
        else
        if trim(ad_tw.fieldbyname('jcyy').asstring)<>''  then
        image.canvas.TextOut(x,y_ls,ad_tw.fieldbyname('jcyy').asstring)
        else
        if y_ls=0 then
        image.canvas.MoveTo(x,y)
        else
        image.Canvas.LineTo(x, y);

        mbxl:=0;
        end;
        end;
    if trim(ad_tw.fieldbyname('jcyy').asstring)=''  then
    begin

    if trim(ad_tw.fieldbyname('sm').asstring)<>'物理降温' then
    begin
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
          image.Canvas.Ellipse(x - 4, y - 4, x + 4, y + 4);
      end
      else
      begin
        image.Canvas.Brush.Color := color;
        image.Canvas.brush.Style := bssolid;
        image.Canvas.Ellipse(x - 4, y - 4, x + 4, y + 4);
      end;
    end
    else
    begin
        image.Canvas.Brush.Color := clred;
        image.Canvas.brush.Style := bsclear;
        image.Canvas.Pen.Color := clred;
        image.Canvas.Pen.width := 1;
        image.Canvas.Ellipse(x_ls- 4, y - 4, x_ls + 4, y + 4);
        image.Canvas.MoveTo(x_ls,y_ls);
    end;
    end;
     image.Canvas.Pen.width := 1;
     image.Canvas.Pen.Color := color;
     ad_tw.Next;
    end
end;

procedure Tfrm_twb.initssrq;
var i:integer;
begin
ad_cgjl.DisableControls;
ad_cgjl.First;
i:=0;
while not ad_cgjl.Eof do
begin
 if ad_cgjl.FieldByName('ssrq').asdatetime<>0 then
  begin
   ssrq[i]:=ad_cgjl.FieldByName('ssrq').asdatetime;
   i:=i+1;
  end;
 ad_cgjl.Next;
end;
sscs:=i;
ad_cgjl.EnableControls;
end;

procedure Tfrm_twb.ad_cgjlAfterOpen(DataSet: TDataSet);
begin
initssrq;
end;

procedure Tfrm_twb.BitBtn1Click(Sender: TObject);
begin
    drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
    drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
    drawline('呼吸', 'hx', 40, 260, m_height, 10, clskyblue);
//    drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime);

end;

procedure Tfrm_twb.FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
begin
    if image.Canvas.Pixels[x, y] = clblue then
        StatusBar1.Panels[1].Text := Format('体温:%f,', [(105 * m_height + 155 - Y) / (m_height * 10) + 32]);
    if image.Canvas.Pixels[x, y] = cllime then
        StatusBar1.Panels[1].Text := Format('脉搏:%F,', [(105 * m_height + 155 - Y) / (m_height / 2) + 30]);
    if image.Canvas.Pixels[x, y] = clfuchsia then
        StatusBar1.Panels[1].Text := Format('呼吸:%f,', [(105 * m_height + 155 - Y) / m_height + 10]);
end;


procedure Tfrm_twb.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
begin
    if image.Canvas.Pixels[x, y] = clblue then
        StatusBar1.Panels[1].Text := Format('体温:%f,', [(105 * m_height + 155 - Y) / (m_height * 10) + 32]);
    if image.Canvas.Pixels[x, y] = cllime then
        StatusBar1.Panels[1].Text := Format('脉搏:%F,', [(105 * m_height + 155 - Y) / (m_height / 2) + 30]);
    if image.Canvas.Pixels[x, y] = clfuchsia then
        StatusBar1.Panels[1].Text := Format('呼吸:%f,', [(105 * m_height + 155 - Y) / m_height + 10]);

end;

procedure Tfrm_twb.BitBtn4Click(Sender: TObject);
begin
    drawxy(frm_twb.ClientWidth, frm_twb.ClientHeight);
    image.Width := frm_twb.ClientWidth;
    image.height := frm_twb.ClientHeight;
end;

procedure Tfrm_twb.BitBtn3Click(Sender: TObject);
begin
    drawxy(1024, 768);
    image.Width := 1024;
    image.height := 768;
end;

procedure Tfrm_twb.BitBtn2Click(Sender: TObject);
begin
    drawxy(frm_twb.ClientWidth, frm_twb.ClientHeight);
    image.Width := frm_twb.ClientWidth;
    image.height := frm_twb.ClientHeight;
end;

procedure Tfrm_twb.drawxy(width, height: integer);
var
    i, x, y: integer;
    s: string;
    Bitmap: TBitmap;
begin
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
    image.Canvas.Font.Size := 10;
    image.Canvas.TextOut(30, 55, '姓名:' + sp_cx_zybrjbqk.FieldByName('brxm').AsString);
    image.Canvas.TextOut(200, 55, '科别:' + sp_cx_zybrjbqk.FieldByName('ksmc').AsString);
    image.Canvas.TextOut(380, 55, '病床:' + sp_cx_zybrjbqk.FieldByName('bch').AsString);
    image.Canvas.TextOut(480, 55, '住院号:' + sp_cx_zybrjbqk.FieldByName('zyh').AsString);     //以上画页头
    i := 2;
    m_height := (height - 155 - 120) div 105;
    m_width := (width - 120 - 20) div 42;
    with image.canvas do
    begin
        MoveTo(30, 75);
        Rectangle(30, 75, 120 + 42 * m_width, 120 + 155 + 105 * m_height);
        for x := 1 to 4 do
        begin
            moveto(30, 75 + x * 20);
            lineto(120 + 42 * m_width, 75 + x * 20);
            textout(40, 78 + (x - 1) * 20, zfcl1[x])
        end;
        for x := 1 to 2 do
        begin
            moveto(30 + x * 30, 155);
            lineto(30 + x * 30, 155 + 105 * m_height);
        end;
        moveto(30, 105 * m_height + 155);
        lineto(120 + 42 * m_width, 105 * m_height + 155);
        for x := 1 to 6 do
        begin
            moveto(30, 105 * m_height + 155 + x * 20);
            lineto(120 + 42 * m_width, 105 * m_height + 155 + x * 20);
            textout(35, 105 * m_height + 155 + 2 + (x - 1) * 20, zfcl1[x + 4]);
        end;
        moveto(120, 75);
        lineto(120, 120 + 155 + 105 * m_height);

    end;           //以上画左边表列


    for x := 0 to 42 do   //写2，6，8，10等坐标数
    begin
        with image do
        begin
            if x mod 6 = 0 then
            begin
                Canvas.MoveTo(120 + X * m_width, 75);
                canvas.LineTo(120 + x * m_width, 105 * m_height + 155 + 120);
                canvas.pen.width := 1;
                canvas.Pen.Color := clred;
            end
            else
            begin
                Canvas.MoveTo(120 + X * m_width, 135);
                canvas.LineTo(120 + x * m_width, 105 * m_height + 155);
                canvas.pen.width := 1;
                canvas.Pen.Color := clblack;
            end;
            canvas.Font.Size := 7;
            if (i < 24) then
                s := ' ' + inttostr(i)
            else
                s := '2';
            if x < 42 then
                canvas.TextOut(120 + x * m_width + 3, 140, s);
            i := i + 4;
            if i > 24 then i := 2
        end
    end;
    canvas.Font.Size := 9;
    for y := 105 downto 0 do
    begin
        with image do
        begin
            Canvas.MoveTo(120, y * m_height + 155);
            if y mod 5 = 0 then
            begin
                canvas.pen.width := 1;
                canvas.Pen.Color := clred;
            end
            else
            begin
                canvas.pen.width := 1;
                canvas.Pen.Color := clblack;
            end;
            canvas.LineTo(42 * m_width + 120, y * m_height + 155);
        end
    end;
    for y := 105 downto 1 do
    begin
        if y mod 5 = 0 then
        begin
            if 40 + (105 - y + 1) * 2 <= 160 then
                image.canvas.textout(40, (y - 1) * m_height + 125, inttostr(40 + (105 - y) * 2));
            if 15 + (105 - y + 1) * 1 <= 60 then
                image.canvas.textout(70, (y - 1) * m_height + 125, inttostr(15 + (105 - y) * 1));
            if (y <= 80) and (y mod 10 = 0) then
                if ((80 - y) div 10 + 35 >= 35) and ((80 - y) div 10 + 35 <= 42) then
                    image.canvas.textout(100, (y - 1) * m_height + 125, inttostr((80 - y) div 10 + 35));
        end
    end;
    image.Canvas.Font.Size := 11;
    image.canvas.textout(40, 300, '脉');
    image.canvas.textout(40, 340, '搏');
    image.canvas.textout(70, 400, '呼');
    image.canvas.textout(70, 440, '吸');
    image.Canvas.Font.Size := 10;
    image.canvas.textout(92, 180, '体摄');
    image.canvas.textout(92, 200, '温氏');



end;

procedure Tfrm_twb.ToolButton2Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            drawxy(screen.Width, screen.Height);
            image.Width := screen.Width;
            image.height := screen.Height;
            ToolButton12.Click;
        end;
    end;
end;

procedure Tfrm_twb.ToolButton3Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            drawxy(1024, 768);
            image.Width := 1024;
            image.height := 768;
            ToolButton12.Click;
        end;
    end;
end;

procedure Tfrm_twb.ToolButton1Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            drawxy(frm_twb.ClientWidth, frm_twb.ClientHeight);
            image.Width := frm_twb.ClientWidth;
            image.height := frm_twb.ClientHeight;
            ToolButton12.Click;
        end;
    end;
end;

procedure Tfrm_twb.ToolButton12Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
         drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
         drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
         drawline('呼吸', 'hx', 40, 260, m_height, 10, clskyblue);
//         drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime);
         drawcgjl;
        end;
    end;
end;

procedure Tfrm_twb.b_firstClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    ad_tw.first;
    ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)),[]);
    valuechange := false;
    display_hljl_null;
    display_hljl
end;

procedure Tfrm_twb.b_priorClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    da1 := da1 - 1;
    if not ad_tw.bof then   
    ad_tw.Prior;
    ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',da1)),[]);
    display_hljl_null;
    valuechange := false;
    display_hljl
end;

procedure Tfrm_twb.b_nextClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    if Not ad_tw.eof then
     ad_tw.next;
    ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)),[]);
    valuechange := false;
    display_hljl_null;
    display_hljl
end;

procedure Tfrm_twb.b_lastClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    ad_tw.Last;
    ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)),[]);
    valuechange := false;
    display_hljl_null;
    display_hljl
end;

procedure Tfrm_twb.b_addClick(Sender: TObject);
begin
    if valuechange then
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
        application.MessageBox(pchar(formatdatetime('yy"年"mm"月"dd"日"', da1) + '输入未完成，不能增加！'), '提示', mb_ok + mb_iconwarning);

end;

procedure Tfrm_twb.b_deleteClick(Sender: TObject);
begin
    if formatdatetime('yyyymmdd', da1) = formatdatetime('yyyymmdd', maxrq) then
    begin
        if application.messagebox('是否删除数据？', '提示', mb_yesno + mb_iconquestion) = idyes then
        begin
            ad_dele.CommandText := 'delete zybl_rcjl where zyh=' + #39 + zy_zyh + #39 +
                ' and convert(char,jlrq,112)=' + #39 + formatdatetime('yyyymmdd', da1) + #39;
            ad_dele.Execute;
            da1 := da1 - 1;
            maxrq := maxrq - 1;
            ad_tb.close;
            ad_tb.parameters.ParamByName('zyh').value := zy_zyh;
            ad_tb.Open;
        end
    end
    else
    begin
        application.MessageBox('只能删除最后一天的数据！', '提示', mb_ok + mb_iconwarning);
    end

end;

procedure Tfrm_twb.b_saveClick(Sender: TObject);
var i: integer;
    change: boolean;
//    sbookmark:Tbookmark;
    sd_ls:string;
    jlrq:tdatetime;
begin
   jlrq:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',sd.time));
   sd_ls:=formatdatetime('hh:mm',sd.time);
    if not checkerror then
    begin
//        sbookmark:=ad_tb.GetBookmark;
        change := false;
        if ad_cgjl.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1)), [loCaseInsensitive]) then
            ad_cgjl.Edit
        else
            ad_cgjl.Append;
        ad_cgjl['jlrq'] := strtodatetime(formatdatetime('yyyy-mm-dd ', da1));
        ad_cgjl['zyh'] := zy_zyh;
        ad_cgjl['xbl'] := xbl.Text;
        ad_cgjl['dbcs'] := dbcs.Text;
        ad_cgjl['syl'] := sryl.Text;
        ad_cgjl['yrl'] := yrl.Text;
        ad_cgjl['xy'] := xy.Text;
        ad_cgjl['tz'] := tz.Text;
        ad_cgjl['ryts']:=strtodatetime(formatdatetime('yyyy-mm-dd',lrrq.date))-strtodatetime(formatdatetime('yyyy-mm-dd',minrq))+1 ;
        if sscs>0 then
         ad_cgjl['ssts']:=calcssts(strtodatetime(formatdatetime('yyyy-mm-dd',da1)));

        if ryrq1.date<>0 then
        ad_cgjl['ryrq'] := ryrq1.date;

        if ssrq1.date<>0 then
        begin
        ad_cgjl['ssrq'] := ssrq1.date;
        end;

        change := true;
        if ad_tw.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',sd.time) + ':00'), [loCaseInsensitive]) then
         begin
           ad_tw.Edit;
           if wljw.Checked then
           begin
            ad_tw['mb'] := '0';
            ad_tw['tw'] := tw0.text;
            ad_tw['hx'] :='0';
            ad_tw['xl'] :='0';
            ad_tw['sm'] :='物理降温';
            ad_tw['jcyy']:=wcyy.text;
            ad_tw['twfs'] :='';
           end
           else
           if wcyy.text<>'' then
           begin
            ad_tw['mb'] := '0';
            ad_tw['tw'] := '0';
            ad_tw['hx'] :='0';
            ad_tw['xl'] := '0';
            ad_tw['jcyy']:=wcyy.text;
            ad_tw['sm'] :='';
            ad_tw['twfs'] :='';
           end
           else
           begin
           ad_tw['mb'] := mb0.text;
           ad_tw['tw'] := tw0.text;
           ad_tw['hx'] := hx0.text;
           ad_tw['xl'] := xl0.text;
           ad_tw['jcyy']:='';
           ad_tw['sm'] :='';
           ad_tw['twfs'] :=cwfs.text;
           end;
        end
        else
          begin
           ad_tw.Append;
           ad_tw['jlrq'] := strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',sd.time) + ':00');
           ad_tw['sd'] := StrToInt(formatdatetime('hh',sd.time));
           ad_tw['zyh'] := zy_zyh;
           if wljw.Checked then
           begin
            ad_tw['mb'] := '0';
            ad_tw['tw'] := tw0.text;
            ad_tw['hx'] :='0';
            ad_tw['xl'] :='0';
            ad_tw['sm'] :='物理降温';
            ad_tw['jcyy']:=wcyy.text;
            ad_tw['twfs'] :='';
           end
           else
           if wcyy.text<>'' then
           begin
            ad_tw['mb'] := '0';
            ad_tw['tw'] := '0';
            ad_tw['hx'] :='0';
            ad_tw['xl'] := '0';
            ad_tw['jcyy']:=wcyy.text;
            ad_tw['sm'] :='';
            ad_tw['twfs'] :='';
           end
           else
           begin
           ad_tw['mb'] := mb0.text;
           ad_tw['tw'] := tw0.text;
           ad_tw['hx'] := hx0.text;
           ad_tw['xl'] := xl0.text;
           ad_tw['jcyy']:='';
           ad_tw['sm'] :='';
           ad_tw['twfs'] :=cwfs.text;
           end;

          end;

        if change then
        begin
            valuechange := false;
            ad_cgjl.UpdateBatch;
            ad_tw.UpdateBatch;
            initssrq;
            ad_tb.close;
            ad_tb.parameters.ParamByName('zyh').value := zy_zyh;
            ad_tb.Open;
            ad_tw.Locate('jlrq',jlrq,[]);
            ad_tw.next;
            if ad_tw.eof then
             begin
              if strtoint(copy(sd_ls,1,2))+4>=24 then
               begin
                 jlrq:=jlrq+1 ;
                 sd.time:=strtodatetime('02:00');
                 display_hljl_null;
               end
              else
               begin
                if strtoint(copy(sd_ls,1,2))+4>10  then
                 sd.time:=strtodatetime(inttostr(strtoint(copy(sd_ls,1,2))+4)+':00')
                else
                 sd.time:=strtodatetime('0'+inttostr(strtoint(copy(sd_ls,1,2))+4)+':00');
                 display_hljl_null;
                end
               end
               else
               display_hljl;
        end;
      sd.setfocus;
    end;
end;

procedure Tfrm_twb.b_cancelClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(dateTimeToStr(lrrq.date) + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    panel1.enabled := true;
    sp_cx_zybrjbqk.Close;
    ad_tb.close;
    brxm.setfocus;

end;

function Tfrm_twb.checkerror: boolean;
begin
    result := true;
    if not strtore(mb0, '０时脉搏') then
        mb0.setfocus
    else
      if not strtore(tw0, '０时体温') then
          tw0.setfocus
      else
        if not strtore(hx0, '０时呼吸') then
        hx0.SetFocus
         else
          result := false;
end;

procedure Tfrm_twb.ssrq1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    selectnext(activecontrol, true, true)

end;

function Tfrm_twb.strTOre(xx: Tedit; ss: string): boolean;
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

function Tfrm_twb.checkzero: boolean;
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


procedure Tfrm_twb.DBGrid1CellClick(Column: TColumn);
begin
    brxm.Text:=qry_bbqbr.FieldByName('tmh').AsString;
    if trim(brxm.Text) <> '' then
    begin
    jbxx;
    end;
end;

procedure Tfrm_twb.DBGridEh1CellClick(Column: TColumnEh);
begin
    display_hljl;
end;

procedure Tfrm_twb.display_hljl;
var
    maxv, minv: real;
begin
    ad_tb.close;
    ad_tb.parameters.parambyname('zyh').value := zy_zyh;
    ad_tb.open;
    ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)),[]);
    ad_tb.first;
    maxv := ad_tb.fieldbyname('mb').asinteger;
    minv := ad_tb.fieldbyname('mb').asinteger;
    while not ad_tb.Eof do
    begin
        if ad_tb.fieldbyname('mb').asinteger > maxv then
            maxv := ad_tb.fieldbyname('mb').asfloat;
        if ad_tb.fieldbyname('hx').asfloat > maxv then
            maxv := ad_tb.fieldbyname('hx').asfloat;
        if ad_tb.fieldbyname('tw').asfloat > maxv then
            maxv := ad_tb.fieldbyname('tw').asfloat;

        if ad_tb.fieldbyname('mb').asinteger > minv then
            minv := ad_tb.fieldbyname('mb').asfloat;
        if ad_tb.fieldbyname('hx').asfloat < minv then
            minv := ad_tb.fieldbyname('hx').asfloat;
        if ad_tb.fieldbyname('tw').asfloat < minv then
            minv := ad_tb.fieldbyname('tw').asfloat;
        ad_tb.next;
    end;
    xbl.Text := floattostr(ad_cgjl.FieldByName('xbl').asfloat);
    dbcs.Text := floattostr(ad_cgjl.FieldByName('dbcs').asfloat);
    sryl.Text := floattostr(ad_cgjl.FieldByName('syl').asfloat);
    yrl.Text := floattostr(ad_cgjl.FieldByName('yrl').asfloat);
    xy.Text := ad_cgjl.FieldByName('xy').asstring;
    tz.Text := floattostr(ad_cgjl.FieldByName('tz').asfloat);
    lrrq.Date := ad_tw.FieldByName('jlrq').asdatetime;
    if ad_cgjl.FieldByName('ryrq').asdatetime=0 then
     ryrq1.Date:=0
    else
    ryrq1.Date:=ad_cgjl.FieldByName('ryrq').asdatetime;
    if ad_cgjl.FieldByName('ssrq').asdatetime=0 then
      ssrq1.Date:=0
    else
    ssrq1.Date:=ad_cgjl.FieldByName('ssrq').asdatetime;

    if ad_tw.RecordCount>1 then
    sd.Time:=strtotime(ad_tw.FieldByName('sd').asstring+':00');
    tw0.text := floattostr(ad_tw.FieldByName('tw').asfloat);
    mb0.text := floattostr(ad_tw.FieldByName('mb').asfloat);
    hx0.text := floattostr(ad_tw.FieldByName('hx').asfloat);
    xl0.text := floattostr(ad_tw.FieldByName('xl').asfloat);
    if ad_tw.FieldByName('sm').asstring='物理降温' then
    wljw.Checked:=true
    else
    wljw.checked:=false;
    cwfs.text:=ad_tw.FieldByName('twfs').asstring;
    wcyy.text:=ad_tw.FieldByName('jcyy').asstring;

    
//    ad_tw.next;
end;

procedure Tfrm_twb.display_hljl_null;
begin
    lrrq.date := da1;
//    sd.time:=strtotime('00:00:00');
    tw0.text := '0';
    mb0.text := '0';
    hx0.text := '0';
    xl0.text := '0';
    wljw.checked:=false;
    cwfs.Text:='腋温';
    wcyy.Text:='';
    xbl.Text := '0';
    dbcs.Text := '0';
    sryl.Text := '0';
    yrl.Text := '0';
    xy.Text := '';
    tz.Text := '0';
    //lrrq.Date:=Now;
end;

procedure Tfrm_twb.brxmKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        jbxx;
end;

procedure Tfrm_twb.displayvalue;
var i: integer;
begin
    valuechange := false;
    brxm.Text := sp_cx_zybrjbqk.fieldbyname('brxm').asstring;
    ksmc.Text := sp_cx_zybrjbqk.fieldbyname('ksmc').asstring;
    ryrq.datetime := sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime;
    bch.Text := sp_cx_zybrjbqk.fieldbyname('bch').asstring;
    lbmc.Text := sp_cx_zybrjbqk.fieldbyname('lbmc').asstring;
    zy_zyh := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    panel1.enabled := false;
    ad_maxrq.Close;
    ad_maxrq.CommandText := 'select min(jlrq) jlrq from zybl_rcjl where zyh=' + #39 + zy_zyh + #39;
    ad_maxrq.Open;
    if not ad_maxrq.IsEmpty then
    begin
        minrq := ad_maxrq.fieldbyname('jlrq').asdatetime;
        nextrq := minrq + 6;
    end;
    ad_tw.Close;
    ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', minrq);
    ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
    ad_tw.Open;
    ad_cgjl.Close;
    ad_cgjl.Parameters.ParamByName('zyh').value:=zy_zyh;
    ad_cgjl.Open;
    ad_cg.Close;
    ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', minrq);
    ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
    ad_cg.Open;

    ad_maxrq.Close;
    ad_maxrq.CommandText := 'select max(jlrq) jlrq from zybl_rcjl where zyh=' + #39 + zy_zyh + #39;
    ad_maxrq.Open;
    if not ad_maxrq.IsEmpty then
    begin
        if ad_maxrq.fieldbyname('jlrq').asdatetime <> 0 then
            da1 := ad_maxrq.fieldbyname('jlrq').asdatetime
        else
            da1 := sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime;
        maxrq := da1;
        display_hljl
    end
end;

procedure Tfrm_twb.mb0KeyPress(Sender: TObject; var Key: Char);
begin
    if key in ['0'..'9', '.'] then
    begin
        clsd[(sender as Tedit).tag div 4] := 1;
        valuechange := true;
    end
    else
        if key = #13 then
        begin
         if (sender as Tedit).Name='mb0' then
          if xl0.Text='0' then
           xl0.text:=mb0.text;
           selectnext(activecontrol, true, true)
        end
        else
            if (key >= #32) and (not (key in ['0'..'9', '.'])) then
            begin
                application.MessageBox('输入错误！', '提示', mb_ok + mb_iconwarning);
                (sender as Tedit).setfocus;
            end
end;

procedure Tfrm_twb.qry_bbqbrAfterScroll(DataSet: TDataSet);
begin
    //brxm.setfocus;
    //pagecontrol1.ActivePageIndex := 0;

end;

procedure Tfrm_twb.ryrq1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    selectnext(activecontrol, true, true)

end;

procedure Tfrm_twb.sdKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  selectnext(activecontrol, true, true)

end;

procedure Tfrm_twb.tw0Exit(Sender: TObject);
begin
    if (strtofloat(tw0.text) > 41) or (strtofloat(tw0.text) < 35) then
    begin
        if application.MessageBox('体温数据异常，是否确认输入？', '提示', MB_YESNO + MB_ICONQUESTION) = idno then
            (sender as tedit).SetFocus;
    end

end;

procedure Tfrm_twb.xyKeyPress(Sender: TObject; var Key: Char);
begin
    if key in ['0'..'9', '.', '/'] then
    begin
        clsd[(sender as Tedit).tag div 4] := 1;
        valuechange := true;
    end
    else
        if key = #13 then
            selectnext(activecontrol, true, true)
        else
            if (key >= #32) and (not (key in ['0'..'9', '.', '/'])) then
            begin
                application.MessageBox('输入错误！', '提示', mb_ok + mb_iconwarning);
                (sender as Tedit).setfocus;
            end
end;

procedure Tfrm_twb.ToolButton5Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            ksrq := minrq;
            nextrq := minrq + 6;
            ad_tw.Close;
            ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_tw.Open;

            ad_cg.Close;
            ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_cg.Open;
            drawxy(frm_twb.ClientWidth, frm_twb.ClientHeight);
            image.Width := frm_twb.ClientWidth;
            image.height := frm_twb.ClientHeight;
            drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
            drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
            drawline('呼吸', 'hx', 40, 260, m_height, 10, clskyblue);
//            drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime); 
            drawcgjl;
        end;
    end;
end;

procedure Tfrm_twb.ToolButton6Click(Sender: TObject);
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
            ad_tw.Close;
            ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_tw.Open;

            ad_cg.Close;
            ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_cg.Open;
            drawxy(frm_twb.ClientWidth, frm_twb.ClientHeight);
            image.Width := frm_twb.ClientWidth;
            image.height := frm_twb.ClientHeight;
             drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
             drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
             drawline('呼吸', 'hx', 40, 260, m_height, 10, clskyblue);
//             drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime); 
            drawcgjl;
        end;
    end;
end;

procedure Tfrm_twb.ToolButton7Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            ksrq := nextrq + 1;
            nextrq := ksrq + 6;
            if ksrq <= maxrq then
            begin
                ad_tw.Close;
                ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
                ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
                ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
                ad_tw.Open;

                ad_cg.Close;
                ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
                ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
                ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
                ad_cg.Open;
                drawxy(frm_twb.ClientWidth, frm_twb.ClientHeight);
                image.Width := frm_twb.ClientWidth;
                image.height := frm_twb.ClientHeight;
                drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
                drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
                drawline('呼吸', 'hx', 40, 260, m_height, 10, clskyblue);
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

procedure Tfrm_twb.ToolButton8Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            ksrq := maxrq - 6;
            nextrq := maxrq;
            ad_tw.Close;
            ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_tw.Open;
            ad_cg.Close;
            ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_cg.Open;
            drawxy(frm_twb.ClientWidth, frm_twb.ClientHeight);
            image.Width := frm_twb.ClientWidth;
            image.height := frm_twb.ClientHeight;
            drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
            drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
            drawline('呼吸', 'hx', 40, 260, m_height, 10, clskyblue);
//            drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime);
            drawcgjl;
        end;
    end;
end;

procedure Tfrm_twb.FormShow(Sender: TObject);
begin
    brxm.setfocus;
    pagecontrol1.ActivePageIndex := 0;
    if trim(brxm.Text) <> '' then
    begin
    qry_bbqbr.close;
    qry_bbqbr.Parameters.ParamByName('bqdm').Value:=pub_bqdm;
    qry_bbqbr.Open;
    qry_bbqbr.Locate('tmh',Trim(brxm.text),[]);
    jbxx;
    end;

end;

procedure Tfrm_twb.TabSheet2Show(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if ad_tw.RecordCount > 0 then
        begin
            drawxy(frm_twb.ClientWidth, frm_twb.ClientHeight);
            image.Width := frm_twb.ClientWidth;
            image.height := frm_twb.ClientHeight;
            ToolButton12.Click;
        end;
    end;

end;

procedure Tfrm_twb.tmpgridExit(Sender: TObject);
begin
    tmpgrid.Visible := false;
    displayvalue;

end;

procedure Tfrm_twb.tmpgridKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
        mb0.SetFocus;
end;

procedure Tfrm_twb.tmpgridDblClick(Sender: TObject);
begin
    mb0.SetFocus;
end;

procedure Tfrm_twb.ToolButton14Click(Sender: TObject);
begin
    imagePrint;
end;

procedure Tfrm_twb.SpeedButton1Click(Sender: TObject);
begin
    imagePrint;
end;

procedure Tfrm_twb.lrrqPropertiesChange(Sender: TObject);
begin
    da1 := lrrq.Date;
end;

end.

