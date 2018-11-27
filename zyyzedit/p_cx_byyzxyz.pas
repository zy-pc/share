unit p_cx_byyzxyz;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
    cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
    QuickRpt, QRCtrls, ComCtrls;

type
    Tfrm_cx_byyzxyz = class(TForm)
        ds_brxx: TDataSource;
        cmd_up_lszyyz: TADOCommand;
        sp_brxx: TADOStoredProc;
        Panel1: TPanel;
        rep_dryphz: TQuickRep;
        DetailBand1: TQRBand;
        QRDBText1: TQRDBText;
        QRDBText2: TQRDBText;
        QRDBText5: TQRDBText;
        QRDBText6: TQRDBText;
        QRDBText7: TQRDBText;
        QRDBText8: TQRDBText;
        QRDBText9: TQRDBText;
        QRDBText10: TQRDBText;
        QRDBText4: TQRDBText;
        QRGroup2: TQRGroup;
        QRDBText3: TQRDBText;
        QRShape3: TQRShape;
        QRLabel3: TQRLabel;
        QRLabel4: TQRLabel;
        QRLabel5: TQRLabel;
        QRLabel6: TQRLabel;
        QRShape4: TQRShape;
        QRLabel8: TQRLabel;
        QRLabel9: TQRLabel;
        QRLabel10: TQRLabel;
        QRLabel14: TQRLabel;
        QRLabel1: TQRLabel;
        QRLabel7: TQRLabel;
        QRDBText11: TQRDBText;
        PageHeaderBand1: TQRBand;
        QRLabel2: TQRLabel;
        QRShape1: TQRShape;
        QRShape2: TQRShape;
        QRLabel11: TQRLabel;
        QRExpr1: TQRExpr;
        QRShape5: TQRShape;
        QRSysData1: TQRSysData;
        QRLabel17: TQRLabel;
        QRLabel18: TQRLabel;
        QRLabel19: TQRLabel;
        QRLabel20: TQRLabel;
        QRBand1: TQRBand;
        QRShape6: TQRShape;
        Panel2: TPanel;
        Label2: TLabel;
        Label3: TLabel;
        Label4: TLabel;
        Button1: TButton;
        Button2: TButton;
        Button3: TButton;
        DateTimePicker1: TDateTimePicker;
        DateTimePicker2: TDateTimePicker;
        ComboBox1: TComboBox;
        qry_yz: TADOQuery;
        qry_pub: TADOQuery;
        ds_yzmx: TDataSource;
    QRDBText12: TQRDBText;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3brxm: TcxGridDBColumn;
    cxGridDBTableView3yzsx: TcxGridDBColumn;
    cxGridDBTableView3lb: TcxGridDBColumn;
    cxGridDBTableView3zxrq: TcxGridDBColumn;
    cxGridDBTableView3ysmc: TcxGridDBColumn;
    cxGridDBTableView3zxry: TcxGridDBColumn;
    cxGridDBTableView3xmmc: TcxGridDBColumn;
    cxGridDBTableView3sl: TcxGridDBColumn;
    cxGridDBTableView3dw: TcxGridDBColumn;
    cxGridDBTableView3ypyf: TcxGridDBColumn;
    cxGridDBTableView3ypyl: TcxGridDBColumn;
    cxGridDBTableView3yldw: TcxGridDBColumn;
    cxGridDBTableView3yytj: TcxGridDBColumn;
    cxGridDBTableView3tzrq: TcxGridDBColumn;
    cxGridDBTableView3tzry: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Button4: TButton;
    sp_yzmx: TADOStoredProc;
        procedure cxGridDBTableView3DblClick(Sender: TObject);
        procedure DateTimePicker2Change(Sender: TObject);
        procedure DateTimePicker1Change(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure Button1Click(Sender: TObject);
        procedure Button3Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
        procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
        procedure ComboBox1Change(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure tjlsyz(zxph: string);
    procedure Button4Click(Sender: TObject);
    private
        zyhlist: array of string;
    //brcount:integer;
    { Private declarations }
    public

        cxtmh, cxzyh, cxbrxm, cxkdys, cxsfbz, cxyzsx: string;
        cxkssj, cxjssj: tdatetime;

    { Public declarations }
    end;

var
    frm_cx_byyzxyz: Tfrm_cx_byyzxyz;

implementation
uses p_dm, p_func, p_yzinput;
{$R *.dfm}

procedure Tfrm_cx_byyzxyz.tjlsyz(zxph: string);
var
    yzid: integer;
    yzlist, xmbm, xmmc: string;
begin
//添加历史医嘱到当前医嘱编辑
    qry_pub.Close;
    qry_pub.SQL.Text := 'select xmdm from zybl_zyyz where ph=' + #39 + zxph + #39;
    qry_pub.Open;

    while not qry_pub.Eof do
    begin
        if frm_yzinput.find_current_yzxm(qry_pub.FieldByName('xmdm').AsString) <> 0 then
        begin
            showMessage('项目已存在，导入失败!');
            abort;
        end;
        qry_pub.Next;
    end;


    qry_yz.close;
    qry_yz.open;
        //if frm_yzinput.find_current_yzxm(xmbm) = 0 then
       // begin
    cmd_up_lszyyz.Parameters.ParamValues['@kdks'] := pub_ksdm;
    cmd_up_lszyyz.Parameters.ParamValues['@ph'] := sp_yzmx.FieldByName('ph').AsString;
    cmd_up_lszyyz.Parameters.ParamValues['@tmh'] := sp_yzmx.FieldByName('tmh').AsString;
    cmd_up_lszyyz.Parameters.ParamValues['@zyh'] := sp_yzmx.FieldByName('zyh').AsString;
    cmd_up_lszyyz.Parameters.ParamValues['@kdks'] := pub_ksdm;
    cmd_up_lszyyz.Parameters.ParamValues['@kdys'] := pub_czydm;
    cmd_up_lszyyz.Parameters.ParamValues['@yzsx'] := cxyzsx;
    cmd_up_lszyyz.Execute;
        //end;

    application.MessageBox('该批历史医嘱成功导入!', '提示信息', 48);
    frm_yzinput.refresh_yz;
    //except
        //dm_data.ado_mydata.RollbackTrans;
        //application.MessageBox('该批历史医嘱插入时出错!', '错误提示', 16);
   // end;

end;

procedure Tfrm_cx_byyzxyz.FormShow(Sender: TObject);
var
    li, brcount: integer;
begin
    sp_brxx.Active := false;
    sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
    sp_brxx.Parameters.ParamByName('@tmh').Value := '';
    sp_brxx.Open;

    rep_dryphz.Visible := false;
    cxsfbz := '3';
    cxkssj := frm_func.curr_date;
    cxjssj := frm_func.curr_date;
    datetimepicker1.DateTime := frm_func.curr_date;
    datetimepicker2.DateTime := frm_func.curr_date;

//添加住院病员列表
    brcount := sp_brxx.RecordCount;
    setlength(zyhlist, brcount);
    sp_brxx.First;
    li := 0;
    combobox1.Items.Clear;
    combobox1.Items.Add('全部');
    while not sp_brxx.Eof do
    begin
        combobox1.Items.Add(trim(sp_brxx.FieldByName('brxm').AsString));
        zyhlist[li] := sp_brxx.FieldByName('zyh').AsString;
        sp_brxx.Next;
        li := li + 1;
    end;
    cxgriddbtableview3.DataController.Groups.FullExpand;
    ComboBox1.ItemIndex := 0;
    cxzyh := '全部';
end;

procedure Tfrm_cx_byyzxyz.ComboBox1Change(Sender: TObject);
var
    i: integer;
begin
    i := combobox1.ItemIndex;
    if i > 0 then
    begin
        cxzyh := zyhlist[i - 1];
    end
    else
    begin
        cxzyh := '全部';
    end;
end;

procedure Tfrm_cx_byyzxyz.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    zyhlist := nil;
end;

procedure Tfrm_cx_byyzxyz.Button2Click(Sender: TObject);
begin
    qrlabel18.Caption := datetostr(cxkssj);
    qrlabel20.Caption := datetostr(cxjssj);
    rep_dryphz.Preview;
end;

procedure Tfrm_cx_byyzxyz.Button3Click(Sender: TObject);
begin
    close;
end;

procedure Tfrm_cx_byyzxyz.Button4Click(Sender: TObject);
begin
   frm_func.cxgridtoexcel(cxgrid3,2,'','','',TADOStoredProc.Create(self));
end;

procedure Tfrm_cx_byyzxyz.Button1Click(Sender: TObject);
begin
    sp_yzmx.Close;
    sp_yzmx.Parameters.ParamByName('@zyh').Value:=cxzyh;
    sp_yzmx.Parameters.ParamByName('@kssj').value := formatdatetime('yyyymmdd',DateTimePicker1.DateTime);
    sp_yzmx.Parameters.ParamByName('@jssj').value := formatdatetime('yyyymmdd',DateTimePicker2.DateTime);
    sp_yzmx.Open;
    cxgriddbtableview3.DataController.Groups.FullExpand;
end;

procedure Tfrm_cx_byyzxyz.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activeControl, true, true);
end;

procedure Tfrm_cx_byyzxyz.DateTimePicker1Change(Sender: TObject);
begin
    cxkssj := datetimepicker1.DateTime;
end;

procedure Tfrm_cx_byyzxyz.DateTimePicker2Change(Sender: TObject);
begin
    cxjssj := datetimepicker2.DateTime;
end;

procedure Tfrm_cx_byyzxyz.cxGridDBTableView3DblClick(Sender: TObject);
var
    txt, ph: string;
begin
    if sp_yzmx.Active then
    begin
        if sp_yzmx.RecordCount = 0 then abort;
        ph := sp_yzmx.FieldByName('ph').AsString;
        txt := '是否要增加批号:' + ph + '中所有医嘱项目?';
        if application.MessageBox(pchar(txt), '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idok then
            tjlsyz(ph);
    end;
end;

end.

