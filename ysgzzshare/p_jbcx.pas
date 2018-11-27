unit p_jbcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls,
  ImgList, Grids, DBGrids, ComCtrls, Menus;

type
  Tfrm_jbcx = class( TForm )
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    ad_jbbm: TADODataSet;
    ds: TDataSource;
    ImageList1: TImageList;
    ds_jbbm1: TDataSource;
    DBGrid1: TDBGrid;
    ds_jbbm2: TDataSource;
    ad_jbcx: TADODataSet;
    Panel3: TPanel;
    TreeView1: TTreeView;
    qry_jbbm_tree: TADOQuery;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    ad_delete_zd: TADOCommand;
    procedure FormShow( Sender: TObject );
    procedure DBGrid1DblClick( Sender: TObject );
    procedure BitBtn1Click( Sender: TObject );
    procedure Edit1KeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid1KeyPress( Sender: TObject; var Key: Char );
    procedure TreeView1DblClick( Sender: TObject );
    procedure FormCreate( Sender: TObject );
    procedure N3Click( Sender: TObject );
  private
    { Private declarations }
    FTreeIsReady: Boolean;

    procedure Proc_CreateTree;
  public
    { Public declarations }
  end;

var
  frm_jbcx: Tfrm_jbcx;
procedure proc_show_jbxz( const v_czydm: string );
implementation
uses p_dm, P_mzblinput;
{$R *.DFM}

procedure proc_show_jbxz( const v_czydm: string );
begin
  if not Assigned( FRM_jbcx ) then
    Application.CreateForm( TFRM_jbcx, FRM_jbcx );
  FRM_jbcx.ad_jbbm.close;
  FRM_jbcx.ad_jbbm.Parameters.ParamByName( 'ysdm' ).value := pub_czydm;
  FRM_jbcx.Show;
end;

procedure Tfrm_jbcx.FormCreate( Sender: TObject );
begin
  FTreeIsReady := False;
end;

procedure Tfrm_jbcx.FormShow( Sender: TObject );
begin
  ad_jbbm.close;
  ad_jbbm.open;
  if not FTreeIsReady then
    Proc_CreateTree;
  dbgrid1.DataSource := ds_jbbm1;
  edit1.SetFocus;
end;

procedure Tfrm_jbcx.N3Click( Sender: TObject );
begin
  ad_delete_zd.commandtext := 'delete sys_jbsypl where ysdm=' + #39 +
    ad_jbbm.fieldbyname( 'ysdm' ).asstring + #39 +
    'and jbdm=' + #39 +
    ad_jbbm.fieldbyname( 'jbdm' ).asstring + #39;
  ad_delete_zd.Execute;
  ad_jbbm.close;
  ad_jbbm.open;
end;

procedure Tfrm_jbcx.Proc_CreateTree;
const
  ID_DEPT = 3;
var
  nLevel: Integer;
  pNodes: array[0..10] of TTreeNode;
  lpID, lpName: string;
begin
  with qry_jbbm_tree do
  begin
    Close;
    Open;
    pNodes[0] := nil;
    TreeView1.Items.Clear;
    TreeView1.Items.EndUpdate;
    while not Eof do
    begin
      lpID := Trim( FieldByName( 'mbm' ).AsString );
      lpName := Trim( FieldByName( 'jbbm' ).AsString ) + '_' + Trim( FieldByName( 'jbmc' ).AsString );
      nLevel := Length( lpID ) div ID_DEPT;
      pNodes[nLevel] := TreeView1.Items.AddChild( pNodes[nLevel - 1], lpName );
      Next;
    end;
  end;
  TreeView1.Items.BeginUpdate;
  FTreeIsReady := True;
end;

procedure Tfrm_jbcx.TreeView1DblClick( Sender: TObject );
var
  v_text, v_jbbm, v_jbmc: string;
begin
  v_text := Treeview1.Selected.Text;
  v_jbbm := Copy( v_text, 1, Pos( '_', Treeview1.Selected.Text ) - 1 );
  v_jbmc := Copy( v_text, Pos( '_', v_text ) + 1, Length( v_text ) );
  Iscrb := false;
  if ( pos( '-', v_jbbm ) = 0 ) and ( pos( '>', v_jbbm ) = 0 ) then
  begin
    qry_jbbm_tree.Locate( 'jbbm', v_jbbm, [] );
    if zdbz = 1 then
    begin
      Iscrb := qry_jbbm_tree.fieldbyname( 'crbsb' ).asboolean;
      frm_mzblinput.zyzdmc.text := v_jbmc;
      frm_mzblinput.zyzd.text := v_jbbm;
    end
    else
    begin
      if trim( frm_mzblinput.redtzd.text ) = '' then
        frm_mzblinput.redtzd.text := v_jbmc
      else
        frm_mzblinput.redtzd.text := trim( frm_mzblinput.redtzd.text ) + '，' + v_jbmc;
    end;
    frm_mzblinput.sp_up_jbsypl.close;
    frm_mzblinput.sp_up_jbsypl.Parameters.ParamByName( '@ysdm' ).value := pub_czydm;
    frm_mzblinput.sp_up_jbsypl.Parameters.ParamByName( '@jbdm' ).value := v_jbbm;
    frm_mzblinput.sp_up_jbsypl.ExecProc;
    self.hide;
  end;
end;

procedure Tfrm_jbcx.DBGrid1DblClick( Sender: TObject );
begin
  IsCRB := false;
  if zdbz = 1 then
  begin
    frm_mzblinput.zyzdmc.text := trim( dbgrid1.DataSource.DataSet.FieldByName( 'jbmc' ).asstring );
    frm_mzblinput.zyzd.text := trim( dbgrid1.DataSource.DataSet.FieldByName( 'jbbm' ).asstring );
    IsCRB := dbgrid1.DataSource.DataSet.FieldByName( 'crbsb' ).asboolean;
  end
  else
    if zdbz = 2 then
    begin
      if trim( frm_mzblinput.redtzd.text ) = '' then
        frm_mzblinput.redtzd.text := trim( dbgrid1.DataSource.DataSet.FieldByName( 'jbmc' ).asstring )
      else
        frm_mzblinput.redtzd.text := trim( frm_mzblinput.redtzd.text ) + '，' + trim( dbgrid1.DataSource.DataSet.FieldByName( 'jbmc' ).asstring );
    end
    else
    begin
      frm_mzblinput.zyzdmc.text := trim( dbgrid1.DataSource.DataSet.FieldByName( 'jbmc' ).asstring );
      frm_mzblinput.zyzd.text := trim( dbgrid1.DataSource.DataSet.FieldByName( 'jbbm' ).asstring );
      IsCRB := dbgrid1.DataSource.DataSet.FieldByName( 'crbsb' ).asboolean;
    end;

  frm_mzblinput.sp_up_jbsypl.close;
  frm_mzblinput.sp_up_jbsypl.Parameters.ParamByName( '@ysdm' ).value := pub_czydm;
  frm_mzblinput.sp_up_jbsypl.Parameters.ParamByName( '@jbdm' ).value := trim( dbgrid1.DataSource.DataSet.FieldByName( 'mbm' ).asstring );
  frm_mzblinput.sp_up_jbsypl.ExecProc;
  self.hide;
end;

procedure Tfrm_jbcx.BitBtn1Click( Sender: TObject );
begin
  ad_jbcx.Close;
  ad_jbcx.Parameters.ParamByName( 'jbmc' ).value := '%' + trim( edit1.text ) + '%';
  ad_jbcx.Parameters.ParamByName( 'pym' ).value := '%' + trim( edit1.text ) + '%';
  ad_jbcx.Open;
  if ad_jbcx.IsEmpty then
  begin
    application.MessageBox( '未找到疾病，请重新输入', '提示', mb_ok );
    edit1.setfocus;
  end
  else
  begin
    dbgrid1.DataSource := ds_jbbm2;
    dbgrid1.setfocus;
  end
end;

procedure Tfrm_jbcx.Edit1KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then BitBtn1.Click;
end;

procedure Tfrm_jbcx.DBGrid1KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    if trim( frm_mzblinput.redtzd.text ) = '' then
      frm_mzblinput.redtzd.text := trim( dbgrid1.DataSource.DataSet.FieldByName( 'jbmc' ).asstring )
    else
      frm_mzblinput.redtzd.text := trim( frm_mzblinput.redtzd.text ) + '，' + trim( dbgrid1.DataSource.DataSet.FieldByName( 'jbmc' ).asstring );
    frm_mzblinput.sp_up_jbsypl.close;
    frm_mzblinput.sp_up_jbsypl.Parameters.ParamByName( '@ysdm' ).value := pub_czydm;
    frm_mzblinput.sp_up_jbsypl.Parameters.ParamByName( '@jbdm' ).value := trim( dbgrid1.DataSource.DataSet.FieldByName( 'mbm' ).asstring );
    frm_mzblinput.sp_up_jbsypl.ExecProc;
    self.close;
  end;
end;

end.

