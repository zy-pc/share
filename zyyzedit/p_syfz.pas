unit p_syfz;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
    cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
    QuickRpt, QRCtrls, cxGroupBox, cxMemo, cxDBEdit, ComCtrls,
    cxLookAndFeelPainters;

type
    Tfrm_syfz = class(TForm)
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
        cxGroupBox1: TcxGroupBox;
        dbm_fzsm: TcxDBMemo;
        qry_fzsm: TADOQuery;
        ds_fzsm: TDataSource;
        Button1: TButton;
        cxGridDBTableView3fzhm: TcxGridDBColumn;
        cxGridDBTableView3ph: TcxGridDBColumn;
        cxGridDBTableView3zyh: TcxGridDBColumn;
        cxGridDBTableView3bch: TcxGridDBColumn;
        cxGridDBTableView3brxm: TcxGridDBColumn;
        cxGridDBTableView3id: TcxGridDBColumn;
        cxGridDBTableView3xmdm: TcxGridDBColumn;
        cxGridDBTableView3xmmc: TcxGridDBColumn;
        cxGridDBTableView3fzsl: TcxGridDBColumn;
        cxGridDBTableView3ypgg: TcxGridDBColumn;
        cxGridDBTableView3dw: TcxGridDBColumn;
        cxGridDBTableView3ypyf: TcxGridDBColumn;
        cxGridDBTableView3ypyl: TcxGridDBColumn;
        cxGridDBTableView3yldw: TcxGridDBColumn;
        cxGridDBTableView3yytj: TcxGridDBColumn;
        Label2: TLabel;
        ComboBox2: TComboBox;
        qry_pub: TADOQuery;
        Memo1: TMemo;
        rep_dryphz: TQuickRep;
        DetailBand1: TQRBand;
        QRGroup2: TQRGroup;
        QRBand1: TQRBand;
        QRShape9: TQRShape;
        QRRichText1: TQRRichText;
        QRLabel22: TQRLabel;
        QRLabel23: TQRLabel;
        QRLabel24: TQRLabel;
        QRDBText28: TQRDBText;
        QRLabel30: TQRLabel;
        QRDBText29: TQRDBText;
        QRLabel31: TQRLabel;
        QRDBText30: TQRDBText;
        QRLabel32: TQRLabel;
        QRDBText31: TQRDBText;
        QRLabel33: TQRLabel;
        QRDBText32: TQRDBText;
        QRLabel34: TQRLabel;
        QRDBText33: TQRDBText;
        QRLabel35: TQRLabel;
        QRLabel36: TQRLabel;
        QRLabel37: TQRLabel;
        QRLabel38: TQRLabel;
        QRLabel39: TQRLabel;
        QRLabel40: TQRLabel;
        QRLabel41: TQRLabel;
        QRLabel42: TQRLabel;
        QRLabel43: TQRLabel;
        QRLabel44: TQRLabel;
        QRLabel45: TQRLabel;
        QRLabel46: TQRLabel;
        QRLabel47: TQRLabel;
        QRLabel48: TQRLabel;
        QRLabel49: TQRLabel;
        QRLabel50: TQRLabel;
        QRLabel51: TQRLabel;
        QRLabel52: TQRLabel;
        QRShape1: TQRShape;
        QRShape3: TQRShape;
        QRDBText12: TQRDBText;
        QRDBText16: TQRDBText;
        QRDBText21: TQRDBText;
        QRDBText22: TQRDBText;
        QRDBText23: TQRDBText;
        QRDBText24: TQRDBText;
        QRDBText25: TQRDBText;
        QRDBText26: TQRDBText;
        QRDBText27: TQRDBText;
        QRDBText34: TQRDBText;
        QRDBText35: TQRDBText;
        QRDBText36: TQRDBText;
        QRRichText2: TQRRichText;
        QRShape2: TQRShape;
        QRLabel1: TQRLabel;
        QRLabel2: TQRLabel;
        QRLabel3: TQRLabel;
        QRLabel4: TQRLabel;
        QRLabel5: TQRLabel;
        DateTimePicker1: TDateTimePicker;
        Label3: TLabel;
        procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
            var PrintBand: Boolean);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure Button3Click(Sender: TObject);
        procedure Button1Click(Sender: TObject);
        procedure ds_ypmxDataChange(Sender: TObject; Field: TField);
        procedure Button2Click(Sender: TObject);
        procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
        procedure ComboBox1Change(Sender: TObject);
        procedure FormShow(Sender: TObject);
    private
        zyhlist: array of string;
        cxz, ph: string;
        fzhm: integer;
    //brcount:integer;
    { Private declarations }
    public
        yzsx: string;
    { Public declarations }
    end;

var
    frm_syfz: Tfrm_syfz;

    ls: string;

implementation
uses p_dm, p_func;
{$R *.dfm}

procedure Tfrm_syfz.FormShow(Sender: TObject);
var
    li, brcount: integer;
begin
    rep_dryphz.Visible := false;
    datetimepicker1.DateTime := frm_func.curr_date;
//添加住院病员列表
    sp_brxx.Active := false;
    sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := pub_bqdm;
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
    combobox2.Text := yzsx;
    cxgriddbtableview3.DataController.Groups.FullExpand;

    ComboBox1.ItemIndex := 0;
    ComboBox2.ItemIndex := 0;

    cxz := pub_ksdm;
end;

procedure Tfrm_syfz.ComboBox1Change(Sender: TObject);
var
    i: integer;
begin
    i := combobox1.ItemIndex;
    if i > 0 then
        cxz := zyhlist[i - 1]
    else
        cxz := pub_ksdm;
end;

procedure Tfrm_syfz.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    zyhlist := nil;
end;

procedure Tfrm_syfz.Button2Click(Sender: TObject);

begin


    if (trim(combobox1.Text) <> '') and (trim(combobox2.Text) <> '') then
    begin
   {yzsx:=trim(combobox2.Text);
   sp_ypmx.Close;
   sp_ypmx.Parameters.ParamByName('@zyh').Value:=pub_ksdm;
   sp_ypmx.Parameters.ParamValues['@yzsx']:=yzsx;
   sp_ypmx.Open;}
//qrlabel7.Caption:=datetostr(frm_func.curr_date);
   //医院科室
        qrlabel36.Caption := pub_ksmc;
        qrlabel22.Caption := pub_yymc + '输液卡';
        qrlabel40.Caption := pub_ksmc;
        qrlabel23.Caption := pub_yymc + '输液卡';
   //日期
        qrlabel38.Caption := datetostr(frm_func.curr_date);
        qrlabel42.Caption := datetostr(frm_func.curr_date);

        rep_dryphz.Preview;
        cxgriddbtableview3.DataController.Groups.FullExpand;
    end
    else
        application.MessageBox('查询参数不完整!', '提示信息', 0 + 16);
end;

procedure Tfrm_syfz.ds_ypmxDataChange(Sender: TObject; Field: TField);
var
    curph: string;
    curfzhm: integer;
begin
    curph := sp_ypmx.FieldByName('ph').AsString;
    curfzhm := sp_ypmx.FieldByName('fzhm').AsInteger;

    if (curph <> ph) or (curfzhm <> fzhm) then
    begin
        ph := curph;
        fzhm := curfzhm;
        qry_fzsm.Close;
        qry_fzsm.SQL.Text := 'select * from zybl_zyyz_syfzsm where ph=' + #39 + ph + #39 + ' and fzhm=' + inttostr(fzhm);
        qry_fzsm.Open;
    end

end;

procedure Tfrm_syfz.Button1Click(Sender: TObject);
begin
//showmessage(cxz);
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
        sp_ypmx.Parameters.ParamValues['@yzsj'] := datetimepicker1.DateTime;
        sp_ypmx.Open;
        cxgriddbtableview3.DataController.Groups.FullExpand;
    end
    else
        application.MessageBox('查询参数不完整!', '提示信息', 0 + 16);
end;

procedure Tfrm_syfz.Button3Click(Sender: TObject);
begin
    close;
end;

procedure Tfrm_syfz.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activeControl, true, true);
end;

procedure Tfrm_syfz.QRGroup2BeforePrint(Sender: TQRCustomBand;
    var PrintBand: Boolean);
var
    fzsm, ls, str: string;
begin
//取出该病人分组执行批号
//    qry_pub.Close;
//    qry_pub.SQL.Text := 'select ph from zybl_zyyz_list where datediff(day,getdate(),kssj)<=0 and datediff(day,getdate(),yjjssj)>=0 and ypzxcs>0 and zyh=' + quotedstr(sp_ypmx.FieldByName('zyh').AsString);
//    qry_pub.Open;
//    ls := '';
//    while not qry_pub.Eof do
//    begin
//        if ls = '' then
//            ls := quotedstr(qry_pub.FieldByName('ph').AsString)
//        else
//            ls := ls + ',' + quotedstr(qry_pub.FieldByName('ph').AsString);
//        qry_pub.Next;
//    end;
//    if (ls <> '') and (ls <> null) then
//    begin
        qry_fzsm.Close;
        str := 'select * from zybl_zyyz_syfzsm where ph in (' + quotedstr(sp_ypmx.FieldByName('ph').AsString) + ') order by fzhm';
        qry_fzsm.SQL.Text := str;
        qry_fzsm.Open;
        memo1.Text := str;

        fzsm := '';
        qrrichtext1.Lines.Clear;
        qrrichtext2.Lines.Clear;
        qry_fzsm.First;
        while not qry_fzsm.Eof do
        begin
            ls := trim(qry_fzsm.FieldByName('fzsm').AsString);
    //memo1.Text:=qry_fzsm.SQL.Text;
            if ls <> '' then
            begin
                if fzsm = '' then
                    fzsm := qry_fzsm.FieldByName('fzhm').AsString + ' 组:' + trim(qry_fzsm.FieldByName('fzsm').AsString)
                else
                    fzsm := fzsm + #13 + qry_fzsm.FieldByName('fzhm').AsString + ' 组:' + trim(qry_fzsm.FieldByName('fzsm').AsString);
            end;
            qry_fzsm.Next;
        end;
        qrrichtext1.Lines.Add(fzsm);
        qrrichtext2.Lines.Add(fzsm);
    //end;

end;

end.

