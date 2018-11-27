unit p_yzcx;

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
    Tfrm_yzcx = class(TForm)
        GroupBox1: TGroupBox;
        GroupBox2: TGroupBox;
        Label1: TLabel;
        Label2: TLabel;
        ComboBox1: TComboBox;
        Button2: TButton;
        Button3: TButton;
        cxGrid3: TcxGrid;
        cxGridDBTableView3: TcxGridDBTableView;
        cxGridLevel3: TcxGridLevel;
        sp_yzmx: TADOStoredProc;
        ds_ypmx: TDataSource;
        sp_brxx: TADOStoredProc;
        ds_brxx: TDataSource;
        rep_dryphz: TQuickRep;
        DetailBand1: TQRBand;
        QRGroup2: TQRGroup;
        QRDBText1: TQRDBText;
        PageHeaderBand1: TQRBand;
        QRLabel2: TQRLabel;
        QRDBText2: TQRDBText;
        QRDBText3: TQRDBText;
        QRShape1: TQRShape;
        QRShape2: TQRShape;
        QRShape3: TQRShape;
        QRLabel3: TQRLabel;
        QRLabel4: TQRLabel;
        QRLabel5: TQRLabel;
        QRLabel6: TQRLabel;
        QRShape4: TQRShape;
        QRDBText5: TQRDBText;
        QRBand1: TQRBand;
        QRShape6: TQRShape;
        QRLabel8: TQRLabel;
        QRLabel9: TQRLabel;
        QRLabel10: TQRLabel;
        QRDBText6: TQRDBText;
        QRDBText7: TQRDBText;
        QRDBText8: TQRDBText;
        QRDBText9: TQRDBText;
        QRDBText4: TQRDBText;
        QRLabel11: TQRLabel;
        QRLabel12: TQRLabel;
        QRExpr1: TQRExpr;
        QRShape5: TQRShape;
        QRSysData1: TQRSysData;
        Button1: TButton;
        DateTimePicker1: TDateTimePicker;
        DateTimePicker2: TDateTimePicker;
        Label3: TLabel;
        Label4: TLabel;
        ComboBox2: TComboBox;
        qry_pub: TADOQuery;
        cxGridDBTableView3xmmc: TcxGridDBColumn;
        cxGridDBTableView3dw: TcxGridDBColumn;
        cxGridDBTableView3sl: TcxGridDBColumn;
        cxGridDBTableView3ypyf: TcxGridDBColumn;
        cxGridDBTableView3ypyl: TcxGridDBColumn;
        cxGridDBTableView3yldw: TcxGridDBColumn;
        cxGridDBTableView3yytj: TcxGridDBColumn;
        cxGridDBTableView3kdys: TcxGridDBColumn;
        cxGridDBTableView3shbz: TcxGridDBColumn;
        cxGridDBTableView3DBColumn1: TcxGridDBColumn;
        cxGridDBTableView3DBColumn2: TcxGridDBColumn;
        cxGridDBTableView3DBColumn3: TcxGridDBColumn;
        QRLabel13: TQRLabel;
        QRDBText10: TQRDBText;
        QRLabel14: TQRLabel;
        QRLabel17: TQRLabel;
        QRLabel18: TQRLabel;
        QRLabel19: TQRLabel;
        QRLabel20: TQRLabel;
        QRExpr2: TQRExpr;
        procedure ComboBox2Change(Sender: TObject);
        procedure DateTimePicker2Change(Sender: TObject);
        procedure DateTimePicker1Change(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure Button1Click(Sender: TObject);
        procedure Button3Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
        procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
        procedure ComboBox1Change(Sender: TObject);
        procedure FormShow(Sender: TObject);
    private
        zyhlist: array of string;
        cxzyh, cxyzsx: string;
        cxkssj, cxjssj: tdatetime;
    //brcount:integer;
    { Private declarations }
    public


    { Public declarations }
    end;

var
    frm_yzcx: Tfrm_yzcx;

implementation
uses p_dm, p_func;
{$R *.dfm}

procedure Tfrm_yzcx.FormShow(Sender: TObject);
var
    li, brcount: integer;
begin
    rep_dryphz.Visible := false;
    cxyzsx := '';
    cxzyh := pub_ksdm;
    cxkssj := frm_func.curr_date; ;
    cxjssj := frm_func.curr_date;
    datetimepicker1.DateTime := frm_func.curr_date;
    datetimepicker2.DateTime := frm_func.curr_date;

//添加住院病员列表
    sp_brxx.Active := false;
    sp_brxx.Parameters.ParamByName('@sr_ksdm').Value := pub_ksdm;
    sp_brxx.Open;
    brcount := sp_brxx.RecordCount;
//showmessage(inttostr(sp_brxx.RecordCount));
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
end;

procedure Tfrm_yzcx.ComboBox1Change(Sender: TObject);
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
        cxzyh := pub_ksdm;
    end;
end;

procedure Tfrm_yzcx.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    zyhlist := nil;
end;

procedure Tfrm_yzcx.Button2Click(Sender: TObject);
begin
    qrlabel12.Caption := pub_ksmc;
    qrlabel18.Caption := datetostr(cxkssj);
    qrlabel20.Caption := datetostr(cxjssj);
    rep_dryphz.Preview;
end;

procedure Tfrm_yzcx.Button3Click(Sender: TObject);
begin
    close;
end;

procedure Tfrm_yzcx.Button1Click(Sender: TObject);
begin
    qry_pub.Close;
    qry_pub.Parameters.ParamValues['cxksrq'] := cxkssj;
    qry_pub.Parameters.ParamValues['cxjsrq'] := cxjssj;
    qry_pub.Open;
//showmessage(inttostr(qry_pub.FieldByName('ts').AsInteger));
    if qry_pub.FieldByName('ts').AsInteger < 0 then
    begin
        application.MessageBox('查询提交时间输入有误!', '错误提示', 16);
        abort;
    end;
//showmessage(cxzyh+cxyzsx);
    sp_yzmx.Close;
    sp_yzmx.Parameters.ParamValues['@zyh'] := cxzyh;
    sp_yzmx.Parameters.ParamValues['@kssj'] := cxkssj;
    sp_yzmx.Parameters.ParamValues['@jssj'] := cxjssj;
    sp_yzmx.parameters.paramvalues['@yzsx'] := cxyzsx;
    sp_yzmx.Open;
    cxgriddbtableview3.DataController.Groups.FullExpand;
end;

procedure Tfrm_yzcx.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activeControl, true, true);
end;

procedure Tfrm_yzcx.DateTimePicker1Change(Sender: TObject);
begin
    cxkssj := datetimepicker1.DateTime;
end;

procedure Tfrm_yzcx.DateTimePicker2Change(Sender: TObject);
begin
    cxjssj := datetimepicker2.DateTime;
end;

procedure Tfrm_yzcx.ComboBox2Change(Sender: TObject);
begin
    case combobox2.ItemIndex of
        0: cxyzsx := '';
        1: cxyzsx := '长期';
        2: cxyzsx := '临时';
    end;
end;

end.
