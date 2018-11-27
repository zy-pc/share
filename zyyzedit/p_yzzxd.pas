unit p_yzzxd;

interface                                             

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
    cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
    QuickRpt, QRCtrls;

type
    Tfrm_yzzxd = class(TForm)
        GroupBox1: TGroupBox;
        GroupBox2: TGroupBox;
        Label1: TLabel;
        ComboBox1: TComboBox;
        Button2: TButton;
        Button3: TButton;
        cxGrid3: TcxGrid;
        cxGridDBTableView3: TcxGridDBTableView;
        cxGridLevel3: TcxGridLevel;
        sp_ypmx: TADOStoredProc;
        ds_ypmx: TDataSource;
        sp_brxx: TADOStoredProc;
        ds_brxx: TDataSource;
        rep_dryphz: TQuickRep;
        DetailBand1: TQRBand;
        QRGroup2: TQRGroup;
        QRDBText1: TQRDBText;
        PageHeaderBand1: TQRBand;
        QRLabel2: TQRLabel;
        QRLabel1: TQRLabel;
        QRDBText3: TQRDBText;
        QRShape1: TQRShape;
        QRShape2: TQRShape;
        QRShape3: TQRShape;
        QRLabel3: TQRLabel;
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
        cxGridDBTableView3zyh: TcxGridDBColumn;
        cxGridDBTableView3brxm: TcxGridDBColumn;
        cxGridDBTableView3id: TcxGridDBColumn;
        cxGridDBTableView3xmdm: TcxGridDBColumn;
        cxGridDBTableView3xmmc: TcxGridDBColumn;
        cxGridDBTableView3sl: TcxGridDBColumn;
        cxGridDBTableView3ypgg: TcxGridDBColumn;
        cxGridDBTableView3dw: TcxGridDBColumn;
        cxGridDBTableView3ypyf: TcxGridDBColumn;
        cxGridDBTableView3ypyl: TcxGridDBColumn;
        cxGridDBTableView3yldw: TcxGridDBColumn;
        cxGridDBTableView3yytj: TcxGridDBColumn;
        QRLabel4: TQRLabel;
        QRLabel7: TQRLabel;
        Label2: TLabel;
        ComboBox2: TComboBox;
    sp_ypmxzyh: TStringField;
    sp_ypmxbrxm: TStringField;
    sp_ypmxid: TAutoIncField;
    sp_ypmxxmdm: TStringField;
    sp_ypmxxmmc: TStringField;
    sp_ypmxsl: TIntegerField;
    sp_ypmxypgg: TStringField;
    sp_ypmxdw: TStringField;
    sp_ypmxypyf: TStringField;
    sp_ypmxypyl: TStringField;
    sp_ypmxyldw: TStringField;
    sp_ypmxyytj: TStringField;
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure Button1Click(Sender: TObject);
        procedure Button3Click(Sender: TObject);
        procedure Button2Click(Sender: TObject);
        procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
        procedure ComboBox1Change(Sender: TObject);
        procedure FormShow(Sender: TObject);
    private
        zyhlist: array of string;
        cxz: string;
    //brcount:integer;
    { Private declarations }
    public
        yzsx: string;

    { Public declarations }
    end;

var
    frm_yzzxd: Tfrm_yzzxd;

implementation
uses p_dm, p_func;
{$R *.dfm}

procedure Tfrm_yzzxd.FormShow(Sender: TObject);
var
    li, brcount: integer;
begin
    rep_dryphz.Visible := false;
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
    combobox1.Items.Add('全部病员');
    while not sp_brxx.Eof do
    begin
        combobox1.Items.Add(trim(sp_brxx.FieldByName('brxm').AsString));
        zyhlist[li] := sp_brxx.FieldByName('zyh').AsString;
        sp_brxx.Next;
        li := li + 1;
    end;
    cxgriddbtableview3.DataController.Groups.FullExpand;
    ComboBox1.ItemIndex := 0;
    ComboBox2.ItemIndex := 0;
end;

procedure Tfrm_yzzxd.ComboBox1Change(Sender: TObject);
var
    i: integer;
begin
    i := combobox1.ItemIndex;
    if i > 0 then
        cxz := zyhlist[i - 1]
    else
        cxz := pub_ksdm;
end;

procedure Tfrm_yzzxd.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    zyhlist := nil;
end;

procedure Tfrm_yzzxd.Button2Click(Sender: TObject);
begin

    if (trim(combobox1.Text) <> '') and (trim(combobox2.Text) <> '') then
    begin
        qrlabel7.Caption := datetostr(frm_func.curr_date);
        qrlabel12.Caption := pub_ksmc;
        rep_dryphz.Preview;
        cxgriddbtableview3.DataController.Groups.FullExpand;
    end
    else
        application.MessageBox('查询参数不完整!', '提示信息', 0 + 16);

end;

procedure Tfrm_yzzxd.Button3Click(Sender: TObject);
begin
    close;
end;

procedure Tfrm_yzzxd.Button1Click(Sender: TObject);
begin
    if (trim(combobox1.Text) <> '') and (trim(combobox2.Text) <> '') then
    begin
        if cxz = '' then
        begin
            cxz := pub_ksdm;
        end;
        yzsx := trim(combobox2.Text);
        sp_ypmx.Close;
        sp_ypmx.Parameters.ParamValues['@zyh'] := cxz;
        sp_ypmx.Parameters.ParamValues['@yzsx'] := yzsx;
        sp_ypmx.Open;
        cxgriddbtableview3.DataController.Groups.FullExpand;
    end
    else
        application.MessageBox('查询参数不完整!', '提示信息', 0 + 16);
end;

procedure Tfrm_yzzxd.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activeControl, true, true);
end;

end.
