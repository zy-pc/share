unit p_twb;

interface

uses
    SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
    Buttons, ExtCtrls, StdCtrls, ComCtrls, Menus, DB, ADODB, ToolWin, ImgList,
    Grids, DBGrids, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
    cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
    cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
    cxGrid, cxSplitter, Printers, Mask, DBCtrlsEh, cxContainer, cxTextEdit,
    cxMaskEdit, cxDropDownEdit, cxCalendar;

type
    TDrawingTool = (dtLine, dtRectangle, dtEllipse, dtRoundRect);
    Tfrm_twb = class(TForm)
        StatusBar1: TStatusBar;
        ad_tw: TADODataSet;
        ImageList1: TImageList;
        PageControl1: TPageControl;
        TabSheet1: TTabSheet;
        TabSheet2: TTabSheet;
        ScrollBox1: TScrollBox;
        Image: TImage;
        ToolBar1: TToolBar;
        ToolButton1: TToolButton;
        ToolButton2: TToolButton;
        ToolButton3: TToolButton;
        ToolButton14: TToolButton;
        ToolButton12: TToolButton;
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
        Label7: TLabel;
        Label9: TLabel;
        Label11: TLabel;
        Label12: TLabel;
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
        b_add: TSpeedButton;
        SpeedButton1: TSpeedButton;
        Label1: TLabel;
        Label3: TLabel;
        mb0: TEdit;
        tw0: TEdit;
        hx0: TEdit;
        mb1: TEdit;
        tw1: TEdit;
        hx1: TEdit;
        mb2: TEdit;
        tw2: TEdit;
        hx2: TEdit;
        mb3: TEdit;
        tw3: TEdit;
        hx3: TEdit;
        mb4: TEdit;
        tw4: TEdit;
        hx4: TEdit;
        mb5: TEdit;
        tw5: TEdit;
        hx5: TEdit;
        tmpgrid: TDBGrid;
        ad_dele: TADOCommand;
        ad_tb: TADODataSet;
        ad_maxrq: TADODataSet;
        ad_hljl: TADODataSet;
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
        cxGrid1DBTableView1: TcxGridDBTableView;
        cxGrid1Level1: TcxGridLevel;
        cxGrid1: TcxGrid;
        ds_tw: TDataSource;
        cxGrid1DBTableView1jlrq: TcxGridDBColumn;
        cxGrid1DBTableView1sd: TcxGridDBColumn;
        cxGrid1DBTableView1mb: TcxGridDBColumn;
        cxGrid1DBTableView1tw: TcxGridDBColumn;
        cxGrid1DBTableView1hx: TcxGridDBColumn;
        ad_cgjl: TADODataSet;
        ad_cg: TADODataSet;
        ToolButton4: TToolButton;
        ToolButton5: TToolButton;
        ToolButton6: TToolButton;
        ToolButton7: TToolButton;
        ToolButton8: TToolButton;
        lrrq: TcxDateEdit;
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
    end;

var
    frm_twb: Tfrm_twb;
    zfcl1: array[1..10] of string = ('日        期', '患病日数', '术后日数', '每日时间', '小  便  量(ml)', '大  便 次 数',
        '输入液量(ml)', '饮  入  量(ml)', '血  压(mmhg)', '体     重(kg)');
    clsd: array[0..5] of integer;
    m_height, m_width: integer;
    da1, maxrq, minrq, nextrq, ksrq: Tdatetime;
    zy_zyh: string;

implementation

uses p_dm, p_func;

{$R *.dfm}

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
begin
    ad_cg.First;
    i := 1;
    while not ad_cg.Eof do
    begin
        image.Canvas.Font := b_first.Font;
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 78, formatdatetime('yy"年"mm"月"dd"日"', ad_cg.FieldByName('jlrq').asdatetime));
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 155, floattostr(ad_cg.FieldByName('xbl').AsFloat));
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 155 + 20, floattostr(ad_cg.FieldByName('dbcs').AsFloat));
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 155 + 40, floattostr(ad_cg.FieldByName('syl').AsFloat));
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 155 + 60, floattostr(ad_cg.FieldByName('yrl').AsFloat));
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 155 + 80, ad_cg.FieldByName('xy').Asstring);
        image.Canvas.TextOut(125 + (i - 1) * 6 * m_width, 105 * m_height + 155 + 100, floattostr(ad_cg.FieldByName('tz').AsFloat));
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
    rect.Bottom := (printer.PageWidth * Image.Height div Image.Width);
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
    x, y: integer;
    r: real;
begin
//处理体温
    image.Canvas.BRUSH.Style := bsSolid;
    image.Canvas.Brush.Color := color;
    image.Canvas.textout(hzx, hzy, hz);
    ad_tw.first;
    d1 := ad_tw.FieldByName('jlrq').AsDateTime;
    r := ad_tw.FieldByName(fieldname).Asfloat;
    y := round(155 + 105 * m_height - (r - begva) * step);
    x := 120 + trunc(ad_tw.fieldbyname('sd').asinteger * m_width / 4);
    image.Canvas.MoveTo(x, y);
    image.Canvas.BRUSH.Style := bsSolid;
    image.Canvas.Brush.Color := color;
    image.Canvas.Rectangle(x - 2, y - 2, x + 2, y + 2);
    ad_tw.Next;
    image.Canvas.Pen.Color := color;
    while not ad_tw.Eof do
    begin
        r := ad_tw.FieldByName(fieldname).Asfloat;
        y := round(155 + 105 * m_height - (r - begva) * step);
        x := 120 + trunc(ad_tw.fieldbyname('sd').asinteger * m_width / 4) +
            trunc(ad_tw.FieldByName('jlrq').asdatetime - d1) * m_width * 6;
        image.Canvas.LineTo(x, y);
        image.Canvas.brush.Style := bsSolid;
        image.Canvas.Brush.Color := color;
        image.Canvas.Rectangle(x - 2, y - 2, x + 2, y + 2);
        ad_tw.Next;
    end
end;

procedure Tfrm_twb.BitBtn1Click(Sender: TObject);
begin
    drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
    drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, cllime);
    drawline('呼吸', 'hx', 40, 260, m_height, 10, clfuchsia);

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
    image.Canvas.TextOut(480, 55, '住院号:' + sp_cx_zybrjbqk.FieldByName('zyh').AsString);
    i := 1;
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

    end;


    for x := 0 to 42 do
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
            if (i < 3) then
                s := ' ' + inttostr(4 * i)
            else
                s := inttostr(4 * i);
            if x < 42 then
                canvas.TextOut(120 + x * m_width + 1, 140, s);
            i := i + 1;
            if i > 3 then i := 1
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
            drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, cllime);
            drawline('呼吸', 'hx', 40, 260, m_height, 10, clfuchsia);
            drawcgjl;
        end;
    end;
end;

procedure Tfrm_twb.b_firstClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    da1 := sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime;
    ad_hljl.close;
    ad_hljl.CommandText := 'select * from zybl_rcjl where zyh=' + #39 + zy_zyh + #39 +
        ' and convert(char,jlrq,112)=' + #39 + formatdatetime('yyyymmdd', da1) + #39;
    ad_hljl.Open;
    ad_hljl.Open;
    ad_cgjl.Close;
    ad_cgjl.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_cgjl.Parameters.ParamByName('jlrq').Value := formatdatetime('yyyymmdd', da1);
    ad_cgjl.Open;
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
    ad_hljl.close;
    if formatdatetime('yyyymmdd', da1) <= formatdatetime('yyyymmdd', sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime) then
        da1 := sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime;
    ad_hljl.CommandText := 'select * from zybl_rcjl where zyh=' + #39 + zy_zyh + #39 +
        ' and convert(char,jlrq,112)=' + #39 + formatdatetime('yyyymmdd', da1) + #39;
    ad_hljl.Open;
    ad_hljl.Open;
    ad_cgjl.Close;
    ad_cgjl.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_cgjl.Parameters.ParamByName('jlrq').Value := formatdatetime('yyyymmdd', da1);
    ad_cgjl.Open;
    display_hljl_null;
    valuechange := false;
    display_hljl
end;

procedure Tfrm_twb.b_nextClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    da1 := da1 + 1;
    ad_hljl.close;
    if formatdatetime('yyyymmdd', da1) > formatdatetime('yyyymmdd', maxrq) then
        da1 := maxrq;
    ad_hljl.CommandText := 'select * from zybl_rcjl where zyh=' + #39 + zy_zyh + #39 +
        ' and convert(char,jlrq,112)=' + #39 + formatdatetime('yyyymmdd', da1) + #39;

    ad_hljl.Open;
    ad_hljl.Open;
    ad_cgjl.Close;
    ad_cgjl.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_cgjl.Parameters.ParamByName('jlrq').Value := formatdatetime('yyyymmdd', da1);
    ad_cgjl.Open;
    valuechange := false;
    display_hljl_null;
    display_hljl
end;

procedure Tfrm_twb.b_lastClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    da1 := maxrq;
    ad_hljl.close;
    ad_hljl.CommandText := 'select * from zybl_rcjl where zyh=' + #39 + zy_zyh + #39 +
        ' and convert(char,jlrq,112)=' + #39 + formatdatetime('yyyymmdd', da1) + #39;
    ad_hljl.Open;
    ad_cgjl.Close;
    ad_cgjl.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_cgjl.Parameters.ParamByName('jlrq').Value := formatdatetime('yyyymmdd', da1);
    ad_cgjl.Open;

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
            ad_hljl.close;
            ad_hljl.CommandText := 'select * from zybl_rcjl where zyh=' + #39 + zy_zyh + #39 +
                ' and convert(char,jlrq,112)=' + #39 + formatdatetime('yyyymmdd', da1) + #39;
            ad_hljl.Open;
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
begin
    if not checkerror then
    begin
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
        for i := 0 to 5 do
        begin
            if clsd[i] = 1 then
            begin
                change := true;
                if ad_hljl.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + inttostr(i * 4) + ':00:00'), [loCaseInsensitive]) then
                    ad_hljl.Edit
                else
                begin
                    ad_hljl.Append;
                    ad_hljl['jlrq'] := strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + inttostr(i * 4) + ':00:00');
                    ad_hljl['sd'] := inttostr(i * 4);
                    ad_hljl['zyh'] := zy_zyh;
                end;
                case i of
                    0:
                        begin
                            ad_hljl['mb'] := mb0.text;
                            ad_hljl['tw'] := tw0.text;
                            ad_hljl['hx'] := hx0.text;
                        end;
                    1:
                        begin
                            ad_hljl['mb'] := mb1.text;
                            ad_hljl['tw'] := tw1.text;
                            ad_hljl['hx'] := hx1.text;
                        end;
                    2:
                        begin
                            ad_hljl['mb'] := mb2.text;
                            ad_hljl['tw'] := tw2.text;
                            ad_hljl['hx'] := hx2.text;
                        end;
                    3:
                        begin
                            ad_hljl['mb'] := mb3.text;
                            ad_hljl['tw'] := tw3.text;
                            ad_hljl['hx'] := hx3.text;
                        end;
                    4:
                        begin
                            ad_hljl['mb'] := mb4.text;
                            ad_hljl['tw'] := tw4.text;
                            ad_hljl['hx'] := hx4.text;
                        end;
                    5:
                        begin
                            ad_hljl['mb'] := mb5.text;
                            ad_hljl['tw'] := tw5.text;
                            ad_hljl['hx'] := hx5.text;
                        end;
                end
            end
        end;
        if change then
        begin
            valuechange := false;
            ad_cgjl.UpdateBatch;
            ad_hljl.UpdateBatch;
            ad_tb.close;
            ad_tb.parameters.ParamByName('zyh').value := zy_zyh;
            ad_tb.Open;
            displayvalue;
        end
    end;
end;

procedure Tfrm_twb.b_cancelClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(dateTimeToStr(lrrq.date) + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    panel1.enabled := true;
    sp_cx_zybrjbqk.Close;
    ad_hljl.close;
    ad_tb.close;
    brxm.setfocus;

end;

function Tfrm_twb.checkerror: boolean;
begin
    result := true;
    if not strtore(mb0, '０时脉搏') then
        mb0.setfocus
    else
        if not strtore(mb1, '４时脉搏') then
            mb1.setfocus
        else
            if not strtore(mb2, '８时脉搏') then
                mb2.setfocus
            else
                if not strtore(mb3, '１２时脉搏') then
                    mb3.setfocus
                else
                    if not strtore(mb4, '１６时脉搏') then
                        mb4.setfocus
                    else
                        if not strtore(mb5, '２０时脉搏') then
                            mb5.setfocus
                        else
                            if not strtore(tw0, '０时体温') then
                                tw0.setfocus
                            else
                                if not strtore(tw1, '４时体温') then
                                    tw1.setfocus
                                else
                                    if not strtore(tw2, '８时体温') then
                                        tw2.setfocus
                                    else
                                        if not strtore(tw3, '１２时体温') then
                                            tw3.setfocus
                                        else
                                            if not strtore(tw4, '１６时体温') then
                                                tw4.setfocus
                                            else
                                                if not strtore(tw5, '２０时体温') then
                                                    tw5.setfocus
                                                else
                                                    if not strtore(hx0, '０时呼吸') then
                                                        hx0.setfocus
                                                    else
                                                        if not strtore(hx1, '４时呼吸') then
                                                            hx1.setfocus
                                                        else
                                                            if not strtore(hx2, '８时呼吸') then
                                                                hx2.setfocus
                                                            else
                                                                if not strtore(hx3, '１２时呼吸') then
                                                                    hx3.setfocus
                                                                else
                                                                    if not strtore(hx4, '１６时呼吸') then
                                                                        hx4.setfocus
                                                                    else
                                                                        if not strtore(hx5, '２０时呼吸') then
                                                                            hx5.setfocus
                                                                        else
                                                                            result := false;
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
    ad_hljl.first;
    while not ad_hljl.Eof do
    begin
        if ad_hljl.fieldbyname('mb').asfloat = 0 then
        begin
            ad_hljl.Last;
            result := true
        end
        else
            if ad_hljl.fieldbyname('tw').asfloat = 0 then
            begin
                ad_hljl.Last;
                result := true
            end
            else
                if ad_hljl.fieldbyname('hx').asfloat = 0 then
                begin
                    ad_hljl.Last;
                    result := true
                end;
        ad_hljl.Next;
    end;
end;

procedure Tfrm_twb.display_hljl;
var
    maxv, minv: real;
begin
    ad_tb.close;
    ad_tb.parameters.parambyname('zyh').value := zy_zyh;
    ad_tb.open;
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
    ad_hljl.First;
    lrrq.Date := da1;
    while not ad_hljl.Eof do
    begin
        if ad_hljl.FieldByName('sd').asinteger = 0 then
        begin
            tw0.text := floattostr(ad_hljl.FieldByName('tw').asfloat);
            mb0.text := floattostr(ad_hljl.FieldByName('mb').asfloat);
            hx0.text := floattostr(ad_hljl.FieldByName('hx').asfloat);
        end
        else
            if ad_hljl.FieldByName('sd').asinteger = 4 then
            begin
                tw1.text := floattostr(ad_hljl.FieldByName('tw').asfloat);
                mb1.text := floattostr(ad_hljl.FieldByName('mb').asfloat);
                hx1.text := floattostr(ad_hljl.FieldByName('hx').asfloat);
            end
            else
                if ad_hljl.FieldByName('sd').asinteger = 8 then
                begin
                    tw2.text := floattostr(ad_hljl.FieldByName('tw').asfloat);
                    mb2.text := floattostr(ad_hljl.FieldByName('mb').asfloat);
                    hx2.text := floattostr(ad_hljl.FieldByName('hx').asfloat);
                end
                else
                    if ad_hljl.FieldByName('sd').asinteger = 12 then
                    begin
                        tw3.text := floattostr(ad_hljl.FieldByName('tw').asfloat);
                        mb3.text := floattostr(ad_hljl.FieldByName('mb').asfloat);
                        hx3.text := floattostr(ad_hljl.FieldByName('hx').asfloat);
                    end
                    else
                        if ad_hljl.FieldByName('sd').asinteger = 16 then
                        begin
                            tw4.text := floattostr(ad_hljl.FieldByName('tw').asfloat);
                            mb4.text := floattostr(ad_hljl.FieldByName('mb').asfloat);
                            hx4.text := floattostr(ad_hljl.FieldByName('hx').asfloat);
                        end
                        else
                            if ad_hljl.FieldByName('sd').asinteger = 20 then
                            begin
                                tw5.text := floattostr(ad_hljl.FieldByName('tw').asfloat);
                                mb5.text := floattostr(ad_hljl.FieldByName('mb').asfloat);
                                hx5.text := floattostr(ad_hljl.FieldByName('hx').asfloat);
                            end;
        ad_hljl.next;
    end;
end;

procedure Tfrm_twb.display_hljl_null;
begin
    lrrq.date := da1;
    tw0.text := '0';
    mb0.text := '0';
    hx0.text := '0';
    tw1.text := '0';
    mb1.text := '0';
    hx1.text := '0';
    tw2.text := '0';
    mb2.text := '0';
    hx2.text := '0';
    tw3.text := '0';
    mb3.text := '0';
    hx3.text := '0';
    tw4.text := '0';
    mb4.text := '0';
    hx4.text := '0';
    tw5.text := '0';
    mb5.text := '0';
    hx5.text := '0';
    xbl.Text := '0';
    dbcs.Text := '0';
    sryl.Text := '0';
    yrl.Text := '0';
    xy.Text := '';
    tz.Text := '0';
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

    ad_cg.Close;
    ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', minrq);
    ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
    ad_cg.Open;

    for i := 0 to 3 do
        clsd[i] := 0;

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
        ad_hljl.close;
        ad_hljl.CommandText := 'select * from zybl_rcjl where zyh=' + #39 + zy_zyh + #39 +
            ' and convert(char,jlrq,112)=' + #39 + formatdatetime('yyyymmdd', da1) + #39;
        ad_hljl.Open;
        ad_cgjl.Close;
        ad_cgjl.Parameters.ParamByName('zyh').Value := zy_zyh;
        ad_cgjl.Parameters.ParamByName('jlrq').Value := formatdatetime('yyyymmdd', da1);
        ad_cgjl.Open;
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
            selectnext(activecontrol, true, true)
        else
            if (key >= #32) and (not (key in ['0'..'9', '.'])) then
            begin
                application.MessageBox('输入错误！', '提示', mb_ok + mb_iconwarning);
                (sender as Tedit).setfocus;
            end
end;

procedure Tfrm_twb.tw0Exit(Sender: TObject);
begin
    if ((sender as Tedit).text > '41') or ((sender as Tedit).text < '35') or (length((sender as Tedit).text) > 2) then
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
            drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, cllime);
            drawline('呼吸', 'hx', 40, 260, m_height, 10, clfuchsia);
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
            drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, cllime);
            drawline('呼吸', 'hx', 40, 260, m_height, 10, clfuchsia);
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
                drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, cllime);
                drawline('呼吸', 'hx', 40, 260, m_height, 10, clfuchsia);
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
            drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, cllime);
            drawline('呼吸', 'hx', 40, 260, m_height, 10, clfuchsia);
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

