unit p_bqgl_ssapcx;
{-----------------------------------------------------------
---------------calmhawk---------2006-02-14------------------}

interface              

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxCalendar, Mask, DBCtrlsEh, cxGridLevel, cxClasses,
    cxGridCustomView, cxGridCustomTableView, cxGridTableView,
    cxGridDBTableView, cxGrid, Grids, DBGrids, ComCtrls, Db, ADODB, DBGridEh,
    PrnDbgeh, variants, GridsEh;

type
    Tfrm_ssapcx = class(TForm)
        GroupBox1: TGroupBox;
        Label7: TLabel;
        Label8: TLabel;
        Label9: TLabel;
        Label11: TLabel;
        Label12: TLabel;
        dtp1: TDateTimePicker;
        dtp2: TDateTimePicker;
        EditBR: TEdit;
        Button2: TButton;
        Editczy: TEdit;
        Button3: TButton;
        DBGridssmc: TDBGrid;
        DBGridfl: TDBGrid;
        DBGridczy: TDBGrid;
        DBGridbr: TDBGrid;
        Editssmc: TEdit;
        Label1: TLabel;
        DataSource1: TDataSource;
        DataSource2: TDataSource;
        Edit1: TEdit;
        ADOQuerySSAP: TADOQuery;
        ADOQuery: TADOQuery;
        DBGridEh1: TDBGridEh;
        PrintDBGridEh1: TPrintDBGridEh;
        procedure dtp2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure dtp1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
            DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
        procedure Button3Click(Sender: TObject);
        procedure EditczyKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure EditczyChange(Sender: TObject);
        procedure DBGridczyDblClick(Sender: TObject);
        procedure DBGridczyKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure EditczyExit(Sender: TObject);
        procedure DBGridczyExit(Sender: TObject);
        procedure EditssmcChange(Sender: TObject);
        procedure EditssmcExit(Sender: TObject);
        procedure EditssmcKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure DBGridssmcDblClick(Sender: TObject);
        procedure DBGridssmcExit(Sender: TObject);
        procedure DBGridssmcKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure Button2Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure EditBRChange(Sender: TObject);
        procedure EditBRExit(Sender: TObject);
        procedure EditBRKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure DBGridbrDblClick(Sender: TObject);
        procedure DBGridbrExit(Sender: TObject);
        procedure DBGridbrKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
    private
    { Private declarations }
        function info_search(cz: integer; dataTable: string; js: array of string; val: string; name: string; xz: string): string;
    public
    { Public declarations }

    end;

const SQL = 'select b.brxm,b.tmh,c.mc ksmc,b.brnl,b.brxb,a.zyh,ssrq,ssmc,sqzd,zdys,yz yzys,ez ezys,zghs,ssj,sssx,pzsssj,mzs mzsxm,mzfs,qxpzr,qxrq,xhhs,sqsssj,tzys,sslx,a.id,isnull(a.sssqr,0) sssqr,isnull(a.mzqr,0) mzqr' +
    ' from bqgl_ssap a,zysf_zydj b,sys_ksdm c' +
        ' where a.zyh=b.zyh and  b.ksdm=c.dm ';

var
    frm_ssapcx: Tfrm_ssapcx;
    temp0: string;
    czy: string; //操作员
    ss: string; //手术名称
    tmh: string; //病人条码号



implementation

uses p_func;

{$R *.DFM}

//<信息检索>
//方法说明: 参数: 'cz'(整数,操作:1 为无输入情况 : 2 为有输入情况) ;
//                'dataTable' (字符串,要查询的表名)
//                'js' (字符串数组,要查询的字段-- 如:mc...)
//                'val' (字符串: 要查询的字段的值--如:'calmhawk')
//                'name' (字符串: 要返回的字段名)
//                'xz' (字符串 : 附加的限制条件 -- 如: ' dldm like '+#39+'33%'+#39+' and ')

function Tfrm_ssapcx.info_search(cz: integer; dataTable: string; js: array of string; val: string; name: string; xz: string): string;
var i: integer;
    temp: string;
begin
    if cz = 1 then
    begin
        ADOQuery.Close;
        ADOQuery.SQL.Clear;
        temp := 'select * from ' + dataTable + ' where ' + xz + '1=1';
        ADOQuery.SQL.Add('select * from ' + dataTable + ' where ' + xz + '1=1');
        ADOQuery.Open;
    end;
    if cz = 2 then
    begin
        ADOQuery.Close;
        ADOQuery.SQL.Clear;
        temp := xz + '(';
        for i := Low(js) to High(js) do
        begin
            if i = Low(js) then
                temp := temp + js[i] + ' like ' + #39 + '%' + val + '%' + #39
            else
                temp := temp + ' or ' + js[i] + ' like ' + #39 + '%' + val + '%' + #39;
        end;

        ADOQuery.SQL.Add('select * from ' + dataTable + ' where ' + temp + ')');
        ADOQuery.Open;
        result := ADOQuery.fieldbyname(name).asstring;
    end;
    if cz = 3 then
    begin
        try
            result := ADOQuery.fieldbyname(name).asstring;
        except
            result := '';
        end;
    end;


end;

procedure Tfrm_ssapcx.EditczyKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    temp0 := trim(Editczy.Text);

    if ((key = 13) and (DBGridczy.Visible)) or ((key = 13) and (temp0 <> '')) then
    begin
        Editssmc.SetFocus;
        exit;
    end;
    if (key = 13) and (temp0 = '') then
    begin
        info_search(1, 'sys_czy', ['dm', 'pym', 'mc'], temp0, 'mc', '');
        DBGridczy.Visible := true;
    end;
    if (key = 13) and (temp0 <> '') then
    begin
        Editczy.text := info_search(2, 'sys_czy', ['dm', 'pym', 'mc'], temp0, 'mc', '');
    end;
    if key = 40 then //  '40' 方向键,下
    begin
        if temp0 = '' then
            info_search(1, 'sys_czy', ['dm', 'pym', 'mc'], temp0, 'mc', '')
        else
            info_search(2, 'sys_czy', ['dm', 'pym', 'mc'], temp0, 'mc', '');
        DBGridczy.Visible := true;
        DBGridczy.SetFocus;
    end;
end;

procedure Tfrm_ssapcx.EditczyChange(Sender: TObject);
begin
    temp0 := trim(Editczy.Text);
    info_search(2, 'sys_czy', ['dm', 'pym', 'mc'], temp0, 'mc', '');
    DBGridczy.Visible := true;
end;

procedure Tfrm_ssapcx.DBGridczyDblClick(Sender: TObject);
begin
    Editczy.Text := ADOQuery.fieldbyname('mc').asstring;
    DBGridczy.Visible := false;
end;

procedure Tfrm_ssapcx.DBGridczyKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
    begin
        Editczy.Text := ADOQuery.fieldbyname('mc').asstring;
        DBGridczy.Visible := false;
    end;
    if (key = 38) and (ADOQuery.bof) then //  '38' 方向键,上
    begin
        Editczy.SetFocus;
    end;
end;

procedure Tfrm_ssapcx.EditczyExit(Sender: TObject);
begin
    temp0 := trim(Editczy.text);
    if (temp0 <> '') and (not DBGridczy.Focused) then
    begin
                //-----------------------------------------------------------------
                //Editczy.text:= info_search(3,'sys_czy',['dm','pym','mc'],temp0,'mc','');
        Editczy.text := info_search(2, 'sys_czy', ['dm', 'pym', 'mc'], temp0, 'mc', '');
        DBGridczy.Visible := false;
    end else
        if not DBGridczy.Focused then
        begin
            DBGridczy.Visible := false;
        end;
end;

procedure Tfrm_ssapcx.DBGridczyExit(Sender: TObject);
begin
    DBGridczy.Visible := false;
    Editssmc.SetFocus;
end;

procedure Tfrm_ssapcx.EditssmcChange(Sender: TObject);
begin
    //手术名称
    temp0 := trim(Editssmc.Text);
    info_search(2, 'sys_kjsfxm', ['dldm', 'fymc', 'pym', 'typym', 'dymc'], temp0, 'fymc', ' dldm like ' + #39 + '33%' + #39 + ' and ');
    DBGridssmc.Visible := true;
end;

procedure Tfrm_ssapcx.EditssmcExit(Sender: TObject);
begin
//手术名称
    temp0 := trim(Editssmc.text);
    if (trim(Editssmc.text) <> '') and (not DBGridssmc.Focused) then
    begin
                //Editssmc.text:= info_search(3,'sys_kjsfxm',['dldm','fymc','pym','typym','dymc'],temp0,'fymc',' dldm like '+#39+'33%'+#39+' and ');
        Editssmc.text := info_search(2, 'sys_kjsfxm', ['dldm', 'fymc', 'pym', 'typym', 'dymc'], temp0, 'fymc', ' dldm like ' + #39 + '33%' + #39 + ' and ');
    end;
    if not DBGridssmc.Focused then
    begin
        DBGridssmc.Visible := false;
    end;

    temp0 := '';

end;

procedure Tfrm_ssapcx.EditssmcKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
//手术名称
    temp0 := Editssmc.Text;

    if ((key = 13) and (DBGridssmc.Visible)) or ((key = 13) and (temp0 <> '')) then
    begin
        EditBR.SetFocus;
        exit;
    end;
    if (key = 13) and (temp0 = '') then
    begin
        info_search(1, 'sys_kjsfxm', ['dldm', 'fymc', 'pym', 'typym', 'dymc'], temp0, 'fymc', ' dldm like ' + #39 + '33%' + #39 + ' and ');
        DBGridssmc.Visible := true;
    end;
    if (key = 13) and (temp0 <> '') then
    begin
                //Editssmc.text:=info_search(3,'sys_kjsfxm',['dldm','fymc','pym','typym','dymc'],temp0,'fymc',' dldm like '+#39+'33%'+#39+' and ');
        Editssmc.text := info_search(2, 'sys_kjsfxm', ['dldm', 'fymc', 'pym', 'typym', 'dymc'], temp0, 'fymc', ' dldm like ' + #39 + '33%' + #39 + ' and ');

    end;
    if key = 40 then //  '40' 方向键,下
    begin
        if temp0 = '' then
            info_search(1, 'sys_kjsfxm', ['dldm', 'fymc', 'pym', 'typym', 'dymc'], temp0, 'fymc', ' dldm like ' + #39 + '33%' + #39 + ' and ')
        else
            info_search(2, 'sys_kjsfxm', ['dldm', 'fymc', 'pym', 'typym', 'dymc'], temp0, 'fymc', ' dldm like ' + #39 + '33%' + #39 + ' and ');
        DBGridssmc.Visible := true;
        DBGridssmc.SetFocus;
    end;
end;

procedure Tfrm_ssapcx.DBGridssmcDblClick(Sender: TObject);
begin
    Editssmc.Text := ADOQuery.fieldbyname('fymc').asstring;
    DBGridssmc.Visible := false;
end;

procedure Tfrm_ssapcx.DBGridssmcExit(Sender: TObject);
begin
    DBGridssmc.Visible := false;
    EditBR.SetFocus;
end;

procedure Tfrm_ssapcx.DBGridssmcKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
    begin
        Editssmc.Text := ADOQuery.fieldbyname('fymc').asstring;
        DBGridssmc.Visible := false;
    end;
    if (key = 38) and (ADOQuery.bof) then //  '38' 方向键,上
    begin
        Editssmc.SetFocus;
    end;
end;

procedure Tfrm_ssapcx.Button2Click(Sender: TObject);
var tempi: string;
begin
       { ADOQuerySSAP.SQL:= SQL+' and zdys like '+#39+'%'+czy+ '%'+#39+
                                ' and ssmc like '+#39+'%'+ss+ '%'+#39+
                                ' and tmh like '+#39+'%'+ss+ '%'+#39+
                                ' and ssrq betwen'  }


 //查询
    ADOQuerySSAP.Close;
    ADOQuerySSAP.SQL.Clear;
    ADOQuerySSAP.SQL.Add(SQL);
//添加条件－　主刀医师
    if trim(Editczy.Text) <> '' then
        tempi := ' and zdys = ' + #39 + trim(Editczy.Text) + #39
    else
        tempi := '';

    ADOQuerySSAP.SQL.Add(tempi);

//添加条件－　手术名称
    if trim(Editssmc.Text) <> '' then
        tempi := ' and ssmc = ' + #39 + trim(Editssmc.Text) + #39
    else
        tempi := '';

    ADOQuerySSAP.SQL.Add(tempi);

{//添加条件－科室
if trim(ComboBoxKS.Text)<>'' then
    tempi := ' and czks = '+ #39+qks.fieldbyname('dm').asstring+#39
    else
    tempi := '';


ADOQuerySSAP.SQL.Add(tempi);}

//添加条件－日期

    ADOQuerySSAP.SQL.Add(' and convert(char,ssrq,112) >= ' + #39 + formatdatetime('yyyymmdd', dtp1.Date) + #39 + ' and convert(char,ssrq,112) <=' + #39 + formatdatetime('yyyymmdd', dtp2.Date) + #39);

//添加条件－病人
    if trim(Editbr.Text) <> '' then
        tempi := ' and brxm=' + #39 + trim(EditBR.Text) + #39
    else
        tempi := '';

    ADOQuerySSAP.SQL.Add(tempi);

    ADOQuerySSAP.Open;

end;

procedure Tfrm_ssapcx.FormShow(Sender: TObject);
begin
    dtp1.DateTime := frm_func.curr_date;
    dtp2.DateTime := frm_func.curr_date;
end;

procedure Tfrm_ssapcx.EditBRChange(Sender: TObject);
begin
    temp0 := trim(EditBR.Text);
    info_search(2, 'zysf_zydj', ['tmh', 'brxm'], temp0, 'brxm', '');
    DBGridbr.Visible := true;
end;

procedure Tfrm_ssapcx.EditBRExit(Sender: TObject);
begin
    temp0 := trim(EditBR.text);
    if (temp0 <> '') and (not DBGridbr.Focused) then
    begin
        EditBR.text := info_search(2, 'zysf_zydj', ['tmh', 'brxm'], temp0, 'brxm', '');
        DBGridbr.Visible := false;
    end else
        if not DBGridbr.Focused then
        begin
            DBGridbr.Visible := false;
        end;
end;

procedure Tfrm_ssapcx.EditBRKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    temp0 := EditBR.Text;

    if ((key = 13) and (DBGridbr.Visible)) or ((key = 13) and (temp0 <> '')) then
    begin
        Button2.SetFocus;
        exit;
    end;
    if (key = 13) and (temp0 = '') then
    begin
        info_search(1, 'zysf_zydj', ['tmh', 'brxm'], temp0, 'brxm', '');
        DBGridBR.Visible := true;
    end;
    if (key = 13) and (temp0 <> '') then
    begin
        EditBR.text := info_search(2, 'zysf_zydj', ['tmh', 'brxm'], temp0, 'brxm', '');
    end;
    if key = 40 then //  '40' 方向键,下
    begin
        if temp0 = '' then
            info_search(1, 'zysf_zydj', ['tmh', 'brxm'], temp0, 'brxm', '')
        else
            info_search(2, 'zysf_zydj', ['tmh', 'brxm'], temp0, 'brxm', '');
        DBGridBR.Visible := true;
        DBGridBR.SetFocus;
    end;
end;

procedure Tfrm_ssapcx.DBGridbrDblClick(Sender: TObject);
begin
    EditBR.Text := ADOQuery.fieldbyname('brxm').asstring;
    DBGridBR.Visible := false;
end;

procedure Tfrm_ssapcx.DBGridbrExit(Sender: TObject);
begin
    DBGridBR.Visible := false;
    Button2.SetFocus;
end;

procedure Tfrm_ssapcx.DBGridbrKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
    begin
        EditBR.Text := ADOQuery.fieldbyname('brxm').asstring;
        DBGridBR.Visible := false;
    end;
    if (key = 38) and (ADOQuery.bof) then //  '38' 方向键,上
    begin
        EditBR.SetFocus;
    end;
end;

procedure Tfrm_ssapcx.Button3Click(Sender: TObject);
begin
    PrintDBGridEh1.Print;
end;

procedure Tfrm_ssapcx.DBGridEh1DrawColumnCell(Sender: TObject;
    const Rect: TRect; DataCol: Integer; Column: TColumnEh;
    State: TGridDrawState);
begin
    if (ADOQuerySSAP.FieldByName('sssqr').AsString = '') then
        exit;
    if ADOQuerySSAP.FieldByName('sssqr').Value then
        DBGridEh1.Canvas.Brush.Color := clteal;
//    else
//        DBGridEh1.Canvas.Brush.Color := clwhite;
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_ssapcx.dtp1KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
        dtp2.SetFocus;
end;

procedure Tfrm_ssapcx.dtp2KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin

    if key = 13 then
        Editczy.SetFocus;
end;

end.

