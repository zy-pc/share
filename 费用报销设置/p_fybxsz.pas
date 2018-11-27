unit p_fybxsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SXComboBox, Grids, DBGrids, DB, ADODB, Menus;

type
  Tfrm_fybxsz = class( TForm )
    pnl1: TPanel;
    lbl1: TLabel;
    cbb1: TSXComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    dbgrd2: TDBGrid;
    pnl2: TPanel;
    lbl2: TLabel;
    qry_sz: TADOQuery;
    qry2: TADOQuery;
    ds1: TDataSource;
    ds2: TDataSource;
    qry_xxmdr: TADOQuery;
    pm1: TPopupMenu;
    N1: TMenuItem;
    procedure btn2Click( Sender: TObject );
    procedure btn1Click( Sender: TObject );
    procedure btn5Click( Sender: TObject );
    procedure btn3Click( Sender: TObject );
    procedure btn4Click( Sender: TObject );
    procedure N1Click( Sender: TObject );
    procedure dbgrd2DblClick( Sender: TObject );
    procedure qry_szAfterPost( DataSet: TDataSet );
    procedure dbgrd1DblClick( Sender: TObject );
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    prv_xgzt: Boolean;
    procedure proc_qhsz( fylb: string );
    procedure proc_checkxg;
    procedure save;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fybxsz: Tfrm_fybxsz;

implementation
uses p_dm;
{$R *.dfm}

procedure Tfrm_fybxsz.btn1Click( Sender: TObject );
begin
  qry_xxmdr.ExecSQL;
  Application.MessageBox( '更新完成。', '提示', MB_OK + MB_ICONINFORMATION );
end;

procedure Tfrm_fybxsz.btn2Click( Sender: TObject );
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'if  not exists (select * from dbo.syscolumns where id = object_id(N' + #39 +
    '[dbo].[zysf_sb_nhfymxdzb]' + #39 + ') and name=' + #39 + 'bxsm' + trim( cbb1.Value ) + #39 + ')';
  DM_data.qry_pub.SQL.Add( ' begin  select 0 jg end else begin select 1 jg end' );
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName( 'jg' ).AsInteger = 1 then
  begin
    Application.MessageBox( pchar( cbb1.text + '已有设置!' ), '提示', MB_OK + MB_ICONINFORMATION );
  end
  else
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'alter table dbo.zysf_sb_nhfymxdzb add bxsm' + trim( cbb1.Value ) + ' varchar(20)';
    DM_data.qry_pub.ExecSQL;
    proc_qhsz( trim( cbb1.Value ) );
  end;
end;

procedure Tfrm_fybxsz.btn3Click( Sender: TObject );
begin
  proc_qhsz( cbb1.Value );
  dbgrd1.Columns[2].ReadOnly := false;
  dbgrd1.SetFocus;
end;

procedure Tfrm_fybxsz.btn4Click( Sender: TObject );
begin
  save;
end;

procedure Tfrm_fybxsz.btn5Click( Sender: TObject );
begin
  if qry_sz.Active then
  begin
    qry_sz.Close;
    qry_sz.Open;
  end;
  dbgrd1.Columns[2].ReadOnly := true;
  prv_xgzt := false;
end;

procedure Tfrm_fybxsz.dbgrd1DblClick( Sender: TObject );
begin
  if qry2.Active and not dbgrd1.Columns[2].ReadOnly then
  begin
    qry_sz.Edit;
    qry_sz.FieldByName( 'bxsm' ).Value := '';
    qry_sz.Post;
  end;
end;

procedure Tfrm_fybxsz.dbgrd2DblClick( Sender: TObject );
begin
  if qry2.Active and not dbgrd1.Columns[2].ReadOnly then
  begin
    qry_sz.Edit;
    qry_sz.FieldByName( 'bxsm' ).Value := qry2.FieldByName( 'bxsm' ).AsString;
    qry_sz.Post;
    qry_sz.next;
    dbgrd1.SelectedIndex := 2;
  end;
end;

procedure Tfrm_fybxsz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  proc_checkxg;
end;

procedure Tfrm_fybxsz.N1Click( Sender: TObject );
begin
  qry2.Close;
  qry2.SQL.Text := 'select distinct bxsm' + trim( cbb1.Value ) + ' bxsm from zysf_sb_nhfymxdzb where sybz = 1 and ' +
    ' bxsm' + trim( cbb1.Value ) + ' is not null and bxsm' + trim( cbb1.Value ) + ' <> ' + #39 + #39;
  qry2.Open;
end;

procedure Tfrm_fybxsz.proc_qhsz( fylb: string );
begin
  proc_checkxg;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'if  not exists (select * from dbo.syscolumns where id = object_id(N' + #39 +
    '[dbo].[zysf_sb_nhfymxdzb]' + #39 + ') and name=' + #39 + 'bxsm' + trim( cbb1.Value ) + #39 + ')';
  DM_data.qry_pub.SQL.Add( ' begin  select 0 jg end else begin select 1 jg end' );
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName( 'jg' ).AsInteger = 0 then
  begin
    Application.MessageBox( '请先添加设置!', '提示', MB_OK + MB_ICONINFORMATION );
    exit;
  end;
  qry_sz.Close;
  qry_sz.SQL.Text := 'select yybm,fymc,bxsm' + trim( cbb1.Value ) + ' bxsm from zysf_sb_nhfymxdzb order by yybm';
  qry_sz.Open;
  n1.Click;
end;

procedure Tfrm_fybxsz.qry_szAfterPost( DataSet: TDataSet );
begin
  prv_xgzt := true;
end;

procedure Tfrm_fybxsz.proc_checkxg;
begin
  if prv_xgzt then
  begin
    if Application.MessageBox( '当前处于编辑状态是否保存？', '提示', MB_YESNO +
      MB_ICONINFORMATION ) = IDYES then
    begin
      save;
    end;
  end;
end;

procedure Tfrm_fybxsz.save;
begin
  qry_sz.UpdateBatch( arall );
  prv_xgzt := false;
  dbgrd1.Columns[2].ReadOnly := true;
  Application.MessageBox( '保存完成', '提示', MB_OK + MB_ICONINFORMATION );
end;
end.

