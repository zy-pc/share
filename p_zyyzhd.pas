unit p_zyyzhd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ADODB, cxCheckBox, cxDropDownEdit;

type
  Tfrm_zyyzhd = class( TForm )
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cxButton1: TcxButton;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    sp_cx_bqbrlb: TADOStoredProc;
    ds_cx_bqbrlb: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sp_cx_whdyzxx: TADOStoredProc;
    ds_cx_whdyzxx: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    qry_in_hdyzmx: TADOQuery;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    rb_kshd: TRadioButton;
    rb_jshd: TRadioButton;
    qry_in_hdyzmx_js: TADOQuery;
    procedure FormShow( Sender: TObject );
    procedure sp_cx_bqbrlbAfterScroll( DataSet: TDataSet );
    procedure cxButton2Click( Sender: TObject );
    procedure cxButton4Click( Sender: TObject );
    procedure cxButton3Click( Sender: TObject );
    procedure cxButton1Click( Sender: TObject );
    procedure cxGrid1DBTableView1EditValueChanged(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem );
    procedure rb_kshdClick( Sender: TObject );
  private
    procedure qxz( bol: Boolean );
    procedure sx;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zyyzhd: Tfrm_zyyzhd;

implementation
uses
  p_dm;
{$R *.dfm}

procedure Tfrm_zyyzhd.cxButton1Click( Sender: TObject );
begin
  sp_cx_bqbrlb.Close;
  sp_cx_bqbrlb.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
  sp_cx_bqbrlb.Parameters.ParamByName( '@zxsj' ).Value := '';
  sp_cx_bqbrlb.Open;
end;

procedure Tfrm_zyyzhd.cxButton2Click( Sender: TObject );
begin
  qxz( True );
end;

procedure Tfrm_zyyzhd.cxButton3Click( Sender: TObject );
var
  hdlb : Integer;
begin
  if Application.MessageBox( '提示:确定已经核对选中项目吗？', '提示', MB_YESNO ) = IDYES then
  begin
    if sp_cx_whdyzxx.Active and ( sp_cx_whdyzxx.RecordCount > 0 ) then
    begin
      sp_cx_whdyzxx.Filter := 'shbz=1';
      sp_cx_whdyzxx.Filtered := True;
      sp_cx_whdyzxx.First;
      if rb_kshd.Checked then
      begin
        hdlb := 0;
        while not sp_cx_whdyzxx.Eof do
        begin
          qry_in_hdyzmx.Close;
          qry_in_hdyzmx.Parameters.ParamByName( 'zyyzid' ).Value := sp_cx_whdyzxx.FieldByName( 'id' ).AsString;
          qry_in_hdyzmx.Parameters.ParamByName( 'zyh' ).Value := sp_cx_bqbrlb.FieldByName( 'zyh' ).AsString;
          qry_in_hdyzmx.Parameters.ParamByName( 'hdczy' ).Value := pub_czyxm;
          qry_in_hdyzmx.ExecSQL;
          sp_cx_whdyzxx.Next;
        end;
      end
      else
      begin
        hdlb := 1;
        while not sp_cx_whdyzxx.Eof do
        begin
          qry_in_hdyzmx_js.Close;
          qry_in_hdyzmx_js.Parameters.ParamByName( 'zyyzid' ).Value := sp_cx_whdyzxx.FieldByName( 'id' ).AsString;
          qry_in_hdyzmx_js.Parameters.ParamByName( 'zyh' ).Value := sp_cx_bqbrlb.FieldByName( 'zyh' ).AsString;
          qry_in_hdyzmx_js.Parameters.ParamByName( 'hdczy' ).Value := pub_czyxm;
          qry_in_hdyzmx_js.ExecSQL;
          sp_cx_whdyzxx.Next;
        end;
      end;
      sp_cx_whdyzxx.Filtered := False;
      Application.MessageBox( '提示:核对成功！', '提示', MB_OK );
      sp_cx_whdyzxx.Close;
      sp_cx_whdyzxx.Parameters.ParamByName( '@zyh' ).Value := sp_cx_bqbrlb.FieldByName( 'zyh' ).AsString;
      sp_cx_whdyzxx.Parameters.ParamByName( '@hdlb' ).Value := hdlb;
      sp_cx_whdyzxx.Open;
    end;
  end;
end;

procedure Tfrm_zyyzhd.cxButton4Click( Sender: TObject );
begin
  qxz( False );
end;

procedure Tfrm_zyyzhd.FormShow( Sender: TObject );
begin
  sp_cx_bqbrlb.Close;
  sp_cx_bqbrlb.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
  sp_cx_bqbrlb.Parameters.ParamByName( '@zxsj' ).Value := '';
  sp_cx_bqbrlb.Open;
end;

procedure Tfrm_zyyzhd.qxz( bol: Boolean );
begin
  if sp_cx_bqbrlb.RecordCount > 0 then
  begin
    if sp_cx_whdyzxx.RecordCount > 0 then
    begin
      sp_cx_whdyzxx.First;
      while not sp_cx_whdyzxx.Eof do
      begin
        sp_cx_whdyzxx.Edit;
        sp_cx_whdyzxx.FieldByName( 'shbz' ).Value := bol;
        sp_cx_whdyzxx.Post;
        sp_cx_whdyzxx.Next;
      end;
    end;
  end;
end;

procedure Tfrm_zyyzhd.rb_kshdClick( Sender: TObject );
begin
  sx;
end;

procedure Tfrm_zyyzhd.sp_cx_bqbrlbAfterScroll( DataSet: TDataSet );
begin
  sx;
end;

procedure Tfrm_zyyzhd.sx;
begin
  if sp_cx_bqbrlb.RecordCount > 0 then
  begin
    if rb_kshd.Checked then
    begin
      sp_cx_whdyzxx.Close;
      sp_cx_whdyzxx.Parameters.ParamByName( '@zyh' ).Value := sp_cx_bqbrlb.FieldByName( 'zyh' ).AsString;
      sp_cx_whdyzxx.Parameters.ParamByName( '@hdlb' ).Value := 0;
      sp_cx_whdyzxx.Open;
    end
    else
    begin
      sp_cx_whdyzxx.Close;
      sp_cx_whdyzxx.Parameters.ParamByName( '@zyh' ).Value := sp_cx_bqbrlb.FieldByName( 'zyh' ).AsString;
      sp_cx_whdyzxx.Parameters.ParamByName( '@hdlb' ).Value := 1;
      sp_cx_whdyzxx.Open;
    end;
  end;
end;

procedure Tfrm_zyyzhd.cxGrid1DBTableView1EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem );
var
  fzph: string;
  id: Integer;
  bol: Boolean;
begin
  if AItem.Index = 0 then
  begin
    id := Sender.Controller.FocusedRecordIndex;
    fzph := Sender.Items[9].editvalue;
    bol := not AItem.EditValue;
    if fzph <> '' then
    begin
      sp_cx_whdyzxx.First;
      while not sp_cx_whdyzxx.Eof do
      begin
        if sp_cx_whdyzxx.FieldByName( 'fzph' ).AsString = fzph then
        begin
          sp_cx_whdyzxx.Edit;
          sp_cx_whdyzxx.FieldByName( 'shbz' ).Value := bol;
          sp_cx_whdyzxx.Post;
        end;
        sp_cx_whdyzxx.Next;
      end;
    end
    else
    begin
      sp_cx_whdyzxx.Edit;
      sp_cx_whdyzxx.FieldByName( 'shbz' ).Value := bol;
      sp_cx_whdyzxx.Post;
    end;
    Sender.Controller.FocusedRecordIndex := id;
  end;
end;

end.

