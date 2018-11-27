unit p_xhy_hyztsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, cxLookAndFeelPainters, cxButtons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  cxCheckBox;

type
  Tfrm_xhy_hyztsz = class( TForm )
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    e_jstj: TEdit;
    cxbut_cx: TcxButton;
    cxbut_qy: TcxButton;
    cxbut_ty: TcxButton;
    cxbut_qkmm: TcxButton;
    cxbut_close: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sp_cx_hyxx: TADOStoredProc;
    ds_cx_hyxx: TDataSource;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxgrdbclmnGrid1DBTableView1Column12: TcxGridDBColumn;
    sp_up_tykyh: TADOStoredProc;
    pm_gn: TPopupMenu;
    mniN1: TMenuItem;
    mniN2: TMenuItem;
    mniN3: TMenuItem;
    procedure cxbut_closeClick( Sender: TObject );
    procedure e_jstjKeyPress( Sender: TObject; var Key: Char );
    procedure cxbut_cxClick( Sender: TObject );
    procedure cxbut_qkmmClick( Sender: TObject );
    procedure cxGrid1DBTableView1CustomDrawCell( Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean );
    procedure cxbut_tyClick( Sender: TObject );
    procedure cxbut_qyClick( Sender: TObject );
    procedure mniN1Click( Sender: TObject );
    procedure mniN2Click( Sender: TObject );
    procedure mniN3Click( Sender: TObject );
  private
    priv_tmh: string;
    procedure sx;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_xhy_hyztsz: Tfrm_xhy_hyztsz;

implementation
uses
  p_dm, p_func, p_xhy_tyyylr;
{$R *.dfm}

procedure Tfrm_xhy_hyztsz.cxbut_closeClick( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_xhy_hyztsz.cxbut_cxClick( Sender: TObject );
begin
  sp_cx_hyxx.Close;
  priv_tmh := Trim( e_jstj.Text );
  sp_cx_hyxx.Parameters.ParamByName( '@tmh' ).Value := '%' + priv_tmh + '%';
  sp_cx_hyxx.Open;
  if sp_cx_hyxx.RecordCount = 0 then
  begin
    Application.MessageBox( '提示:该检索条件未能查询到相关数据！', '提示', MB_OK );
    e_jstj.SetFocus;
  end;

end;

procedure Tfrm_xhy_hyztsz.cxbut_qkmmClick( Sender: TObject );
begin
  if sp_cx_hyxx.Active and ( sp_cx_hyxx.RecordCount > 0 ) then
  begin
    if Application.MessageBox( Pchar( '提示:确认清除[' + sp_cx_hyxx.FieldByName( 'tmh' ).AsString + ']的会员密码吗？' ), '提示', mb_yesno + mb_iconquestion ) = IDYES then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'UPDATE sys_kyh SET ma=' + #39 + #39 + ' WHERE tmh=' + #39 + sp_cx_hyxx.FieldByName( 'tmh' ).AsString + #39;
      try
        DM_data.qry_pub.ExecSQL;
        Application.MessageBox( '提示:清空密码成功！', '提示', MB_OK );
      except on e: Exception do
        begin
          Application.MessageBox( '提示:清空密码错误！清空失败', '提示', MB_ICONHAND );
        end;
      end;
      sx;
    end;
  end;
end;

procedure Tfrm_xhy_hyztsz.cxbut_qyClick( Sender: TObject );
var
  zt: string;
begin
  if sp_cx_hyxx.Active and ( sp_cx_hyxx.RecordCount > 0 ) then
  begin
    if sp_cx_hyxx.FieldByName( 'tybz' ).AsString = '1' then
    begin
      if Application.MessageBox( PChar( '提示:确定需要对[' + sp_cx_hyxx.FieldByName( 'tmh' ).AsString + ']进行启用操作吗？' ), '提示', mb_yesno + mb_iconquestion ) = IDYES then
      begin
        sp_up_tykyh.Close;
        sp_up_tykyh.Parameters.ParamByName( '@tmh' ).Value := sp_cx_hyxx.FieldByName( 'tmh' ).AsString;
        sp_up_tykyh.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
        sp_up_tykyh.Parameters.ParamByName( '@czlb' ).Value := 2;
        sp_up_tykyh.Parameters.ParamByName( '@tyyy' ).Value := '';
        sp_up_tykyh.Parameters.ParamByName( '@zt' ).Value := '';
        try
          sp_up_tykyh.ExecProc;
          zt := sp_up_tykyh.Parameters.ParamByName( '@zt' ).Value;
          if zt = '成功' then
          begin
            Application.MessageBox( '提示:启用用户成功！', '提示', MB_OK );
            sx;
          end
          else
          begin
            Application.MessageBox( Pchar( '提示:' + zt ), '提示', MB_ICONHAND );
          end;
        except on e: Exception do
          begin
            Application.MessageBox( PChar( '提示:启用会员失败！失败原因:' + e.Message ), '提示', MB_ICONHAND );
          end;
        end;
      end;
    end
    else
    begin
      Application.MessageBox( '提示:该会员未被停用！无法进行启用操作', '提示', MB_ICONHAND );
    end;
  end;
end;

procedure Tfrm_xhy_hyztsz.cxbut_tyClick( Sender: TObject );
begin
  if sp_cx_hyxx.Active and ( sp_cx_hyxx.RecordCount > 0 ) then
  begin
    if sp_cx_hyxx.FieldByName( 'tybz' ).AsString = '0' then
    begin
      Application.CreateForm( Tfrm_xhy_tyyylr, frm_xhy_tyyylr );
      try
        frm_xhy_tyyylr.tyyylr_tmh := sp_cx_hyxx.FieldByName( 'tmh' ).AsString;
        frm_xhy_tyyylr.tyyylr_brxm := sp_cx_hyxx.FieldByName( 'brxm' ).AsString;
        frm_xhy_tyyylr.ShowModal;
      finally
        sx;
        frm_xhy_tyyylr.Free;
      end;
    end
    else
    begin
      Application.MessageBox( '提示:已经停用的会员。无法重复停止！', '提示', MB_ICONHAND );
    end;
  end;
end;

procedure Tfrm_xhy_hyztsz.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
begin
  if AViewInfo.RecordViewInfo.GridRecord.Values[0] <> null then
    if AViewInfo.RecordViewInfo.GridRecord.Values[0] then
      ACanvas.Canvas.Brush.Color := clRed;
end;

procedure Tfrm_xhy_hyztsz.e_jstjKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    cxbut_cx.SetFocus;
  end;
end;

procedure Tfrm_xhy_hyztsz.mniN1Click( Sender: TObject );
begin
  cxbut_qkmm.Click;
end;

procedure Tfrm_xhy_hyztsz.mniN2Click( Sender: TObject );
begin
  cxbut_qy.Click;
end;

procedure Tfrm_xhy_hyztsz.mniN3Click( Sender: TObject );
begin
  cxbut_ty.Click;
end;

procedure Tfrm_xhy_hyztsz.sx;
begin
  sp_cx_hyxx.Close;
  sp_cx_hyxx.Parameters.ParamByName( '@tmh' ).Value := '%' + priv_tmh + '%';
  sp_cx_hyxx.Open;
end;

end.

