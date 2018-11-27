unit p_adddbdl_xm;
                       
interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, DBTables, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,
    ComCtrls, ADODB;

type
    TFrm_adddbdl_xm = class(TForm)
        Bevel1: TBevel;
        Panel1: TPanel;
        Edit1: TEdit;
        Label1: TLabel;
        b_cx: TBitBtn;
        DS_yp: TDataSource;
        b_ok: TBitBtn;
        SP_fyxm: TADOStoredProc;
        CheckBox1: TCheckBox;
        BitBtn1: TBitBtn;
        DBGrid1: TDBGrid;
        procedure Edit1KeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure DBGrid1DblClick(Sender: TObject);
        procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
            DataCol: Integer; Column: TColumn; State: TGridDrawState);
        procedure b_cxClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure b_okClick(Sender: TObject);
        procedure Edit1Change(Sender: TObject);
        procedure Edit2Change(Sender: TObject);
        procedure Edit2KeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure SP_fyxmAfterClose(DataSet: TDataSet);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    Frm_adddbdl_xm: TFrm_adddbdl_xm;

implementation

uses p_login, p_fyxmdb, p_dm;

{$R *.DFM}

procedure TFrm_adddbdl_xm.Edit1KeyDown(Sender: TObject;
    var Key: Word; Shift: TShiftState);
begin
    if key = 13 then b_cx.Click;
end;

procedure TFrm_adddbdl_xm.DBGrid1KeyDown(Sender: TObject;
    var Key: Word; Shift: TShiftState);
begin
    if key = 13 then DBGrid1DblClick(dbgrid1);
    if key = 27 then edit1.SetFocus;

end;

procedure TFrm_adddbdl_xm.DBGrid1DblClick(Sender: TObject);
begin
    b_ok.Click;
end;

procedure TFrm_adddbdl_xm.DBGrid1DrawColumnCell(
    Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
    State: TGridDrawState);
begin
    if (SP_fyxm.Active) and (SP_fyxm.RecordCount <> 0) then
    begin
        if SP_fyxm['qybz'] = '0' then
        begin
            dbgrid1.Canvas.brush.Color := cllime;
            dbgrid1.Canvas.Font.Color := clblue;
        end;
        dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);
    end;

end;

procedure TFrm_adddbdl_xm.b_cxClick(Sender: TObject);
begin
    sp_fyxm.close;
    sp_fyxm.Parameters.ParamByName('@pym').value := trim(edit1.text) + '%';
    edit1.TEXT := '';
    sp_fyxm.open;
    if SP_fyxm.RecordCount <> 0 then
    begin
        dbgrid1.Enabled := true;
        b_ok.Enabled := true;
        dbgrid1.SetFocus;
    end
    else
    begin
        SP_fyxm.close;
        application.MessageBox('没有满足条件的费用项目！', '提示', 16);
        dbgrid1.Enabled := false;
        edit1.SetFocus;
    end;
end;

procedure TFrm_adddbdl_xm.FormShow(Sender: TObject);
begin
    dxdm := '';
    edit1.SetFocus;
end;

procedure TFrm_adddbdl_xm.b_okClick(Sender: TObject);
begin
    dxdm := sp_fyxm['xmdm'];
    fydm := '';
    szdm := '';
{
IF CheckBox1.Checked Then
   MyBoo:='1'
Else
   MyBoo:='0';  }
    close;
end;

procedure TFrm_adddbdl_xm.Edit1Change(Sender: TObject);
begin
    SP_fyxm.close;
end;

procedure TFrm_adddbdl_xm.Edit2Change(Sender: TObject);
begin
    SP_fyxm.close;
end;

procedure TFrm_adddbdl_xm.Edit2KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
        b_cx.Click;
end;

procedure TFrm_adddbdl_xm.SP_fyxmAfterClose(DataSet: TDataSet);
begin
    b_ok.Enabled := false;
end;

end.
