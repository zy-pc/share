unit p_yjddy;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
    cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
    cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
    cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons,
    cxDropDownEdit, cxContainer, cxTextEdit, cxMaskEdit, cxCalendar, QRCtrls,
    QuickRpt, ADODB, GridsEh, DBGridEh;

type
    Tfrm_yjddy = class(TForm)
        Panel1: TPanel;
        Panel2: TPanel;
        sp_yjqrd: TADOStoredProc;
        ds_ypmx: TDataSource;
        Label1: TLabel;
        Label3: TLabel;
        Label4: TLabel;
        ksrq: TcxDateEdit;
        jzrq: TcxDateEdit;
        cxButton1: TcxButton;
        cxButton3: TcxButton;
        cxButton4: TcxButton;
        cxGrid3: TcxGrid;
        cxGridDBTableView3: TcxGridDBTableView;
        cxGridDBTableView3zyh: TcxGridDBColumn;
        cxGridDBTableView3brxm: TcxGridDBColumn;
        cxGridDBTableView3id: TcxGridDBColumn;
        cxGridDBTableView3xmdm: TcxGridDBColumn;
        cxGridDBTableView3xmmc: TcxGridDBColumn;
        cxGridDBTableView3sl: TcxGridDBColumn;
        cxGridLevel3: TcxGridLevel;
        cxGridDBTableView3Column1: TcxGridDBColumn;
        db_brxx: TDBGridEh;
        e_tmh: TEdit;
        sp_jbxx: TADOStoredProc;
        ds_jbxx: TDataSource;
        cxGridDBTableView3Column2: TcxGridDBColumn;
        cxGridDBTableView3Column3: TcxGridDBColumn;
        cxGridDBTableView3Column4: TcxGridDBColumn;
        cxGridDBTableView3Column5: TcxGridDBColumn;
        Panel3: TPanel;
        cxButton2: TcxButton;
        cxButton5: TcxButton;
        cxButton6: TcxButton;
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape11: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRGroup1: TQRGroup;
    QRShape8: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel25: TQRLabel;
    QRShape19: TQRShape;
    QRDBText12: TQRDBText;
    QRDBText18: TQRDBText;
    QRBand4: TQRBand;
    QRShape12: TQRShape;
    QRShape7: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel24: TQRLabel;
    QRDBText14: TQRDBText;
        procedure e_tmhExit(Sender: TObject);
        procedure e_tmhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure FormShow(Sender: TObject);
        procedure db_brxxDblClick(Sender: TObject);
        procedure db_brxxExit(Sender: TObject);
        procedure db_brxxKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure cxButton4Click(Sender: TObject);
        procedure cxButton1Click(Sender: TObject);
        procedure cxButton3Click(Sender: TObject);
        procedure cxGridDBTableView3CellClick(Sender: TcxCustomGridTableView;
            ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
            AShift: TShiftState; var AHandled: Boolean);
        procedure cxButton2Click(Sender: TObject);
        procedure cxButton5Click(Sender: TObject);
        procedure cxButton6Click(Sender: TObject);
        procedure sp_yjqrdAfterOpen(DataSet: TDataSet);
    procedure ksrqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure jzrqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    frm_yjddy: Tfrm_yjddy;

implementation

uses p_dm, p_func;

{$R *.dfm}

procedure Tfrm_yjddy.cxButton1Click(Sender: TObject);
var
    _zyh: string;
begin
    sp_yjqrd.Close;

    if trim(e_tmh.Text) = '' then
    begin
        _zyh := '';
    end
    else
    begin
        _zyh := trim(sp_jbxx.FieldByName('zyh').AsString);
    end;
    sp_yjqrd.Parameters.ParamValues['@bqdm'] := pub_bqdm;
    sp_yjqrd.Parameters.ParamValues['@zyh'] := _zyh;
    sp_yjqrd.Parameters.ParamValues['@ksrq'] := formatdatetime('yyyymmdd', ksrq.date);
    sp_yjqrd.Parameters.ParamValues['@jzrq'] := formatdatetime('yyyymmdd', jzrq.date);
    sp_yjqrd.Open;
end;

procedure Tfrm_yjddy.cxButton2Click(Sender: TObject);
begin
    if sp_yjqrd.Active then
    begin
        sp_yjqrd.DisableControls;
        sp_yjqrd.First;
        while not sp_yjqrd.Eof do
        begin
            sp_yjqrd.Edit;
            sp_yjqrd.FieldByName('xzbz').Value := 1;
            sp_yjqrd.Post;
            sp_yjqrd.Next;
        end;
        sp_yjqrd.EnableControls;
    end;
end;

procedure Tfrm_yjddy.cxButton3Click(Sender: TObject);
begin
    QRLabel25.Caption := pub_bqmc;
    QRLabel22.Caption := pub_yymc + '医技确认单';
    sp_yjqrd.Filtered := false;
    sp_yjqrd.Filter := 'xzbz = 1';
    sp_yjqrd.Filtered := true;
    QuickRep1.Preview;
    sp_yjqrd.Filtered := false;
    cxgriddbtableview3.DataController.Groups.FullExpand;
end;

procedure Tfrm_yjddy.cxButton4Click(Sender: TObject);
begin
    close;
end;

procedure Tfrm_yjddy.cxButton5Click(Sender: TObject);
begin
    if sp_yjqrd.Active then
    begin
        sp_yjqrd.DisableControls;
        sp_yjqrd.First;
        while not sp_yjqrd.Eof do
        begin
            sp_yjqrd.Edit;
            sp_yjqrd.FieldByName('xzbz').Value := 0;
            sp_yjqrd.Post;
            sp_yjqrd.Next;
        end;
        sp_yjqrd.EnableControls;
    end;
end;

procedure Tfrm_yjddy.cxButton6Click(Sender: TObject);
begin
    cxButton5.Click;    
    if sp_yjqrd.Active then
    begin
        sp_yjqrd.DisableControls;
        sp_yjqrd.Filtered := false;
        sp_yjqrd.Filter := ' czks <>' + #39 + pub_ksmc + #39;
        sp_yjqrd.Filtered := true;
        sp_yjqrd.First;
        while not sp_yjqrd.Eof do
        begin
            sp_yjqrd.Edit;
            sp_yjqrd.FieldByName('xzbz').Value := 1;
            sp_yjqrd.Post;
            sp_yjqrd.Next;
        end;
        sp_yjqrd.Filtered := false;
        sp_yjqrd.EnableControls;
    end;
end;

procedure Tfrm_yjddy.cxGridDBTableView3CellClick(Sender: TcxCustomGridTableView;
    ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
    AShift: TShiftState; var AHandled: Boolean);
begin
    if sp_yjqrd.Active then
    begin
        sp_yjqrd.Edit;
        sp_yjqrd.FieldByName('xzbz').Value := not sp_yjqrd.FieldByName('xzbz').Value;
        sp_yjqrd.Post;
    end;

end;

procedure Tfrm_yjddy.db_brxxDblClick(Sender: TObject);
begin
    ksrq.SetFocus;
end;

procedure Tfrm_yjddy.db_brxxExit(Sender: TObject);
begin
    db_brxx.Visible := false;
    e_tmh.Text := trim(sp_jbxx.FieldByName('bch').AsString) +
        trim(sp_jbxx.FieldByName('brxm').AsString);
end;

procedure Tfrm_yjddy.db_brxxKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
    begin
        ksrq.SetFocus;
    end;
end;

procedure Tfrm_yjddy.e_tmhExit(Sender: TObject);
begin
    if trim(e_tmh.Text) <> '' then
    begin
        sp_jbxx.Close;
        sp_jbxx.Parameters.ParamValues['@tmh'] := trim(e_tmh.Text);
        sp_jbxx.Parameters.ParamValues['@xm'] := trim(e_tmh.Text);
        sp_jbxx.Parameters.ParamValues['@bch'] := trim(e_tmh.Text);
        sp_jbxx.Parameters.ParamValues['@ksdm'] := pub_bqdm;
        sp_jbxx.Open;
        if sp_jbxx.RecordCount = 1 then
        begin
//            zyh := sp_jbxx.FieldByName('zyh').AsString;
//            tmh := sp_jbxx.FieldByName('tmh').AsString;
//            brxm := sp_jbxx.FieldByName('brxm').AsString;
            e_tmh.Text := trim(sp_jbxx.FieldByName('bch').AsString) +
                trim(sp_jbxx.FieldByName('brxm').AsString);

        end;
        if sp_jbxx.RecordCount > 1 then
        begin
            db_brxx.Visible := true;
            db_brxx.SetFocus;
        end;
        if sp_jbxx.RecordCount < 1 then
        begin
            e_tmh.SetFocus;
        end;
    end;
end;

procedure Tfrm_yjddy.e_tmhKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
    begin
        ksrq.SetFocus;
    end;
end;

procedure Tfrm_yjddy.FormShow(Sender: TObject);
begin
    ksrq.Date := frm_func.curr_date;
    jzrq.Date := frm_func.curr_date;
    QuickRep1.Visible := false;
end;

procedure Tfrm_yjddy.jzrqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 13 then
    begin
        cxbutton1.SetFocus;

    end;
end;

procedure Tfrm_yjddy.ksrqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = 13 then
    begin
        jzrq.SetFocus;

    end;
end;

procedure Tfrm_yjddy.sp_yjqrdAfterOpen(DataSet: TDataSet);
begin
    cxGridDBTableView3.DataController.Groups.FullExpand;
end;

end.

