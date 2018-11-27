unit p_xhy_hyyjzf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  cxBlobEdit, cxButtonEdit, cxCalc, cxCheckComboBox, cxTimeEdit, cxCheckBox;

type
  Tfrm_xhy_hyyjzf = class( TForm )
    pnl1: TPanel;
    pnl2: TPanel;
    Label1: TLabel;
    pnl3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pnl4: TPanel;
    cxGrid_yjmxDBTableView1: TcxGridDBTableView;
    cxGrid_yjmxLevel1: TcxGridLevel;
    cxGrid_yjmx: TcxGrid;
    cxbut_zf: TcxButton;
    cxbut_tc: TcxButton;
    e_tmh: TEdit;
    e_brxm: TEdit;
    e_sfzhm: TEdit;
    e_zyj: TEdit;
    e_zfy: TEdit;
    e_syje: TEdit;
    sp_yjmxcx: TADOStoredProc;
    ds_yjmxcx: TDataSource;
    cxgrdbclmnGrid_yjmxDBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid_yjmxDBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid_yjmxDBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid_yjmxDBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid_yjmxDBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid_yjmxDBTableView1Column6: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet;
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
    cxgrid_xzlb: TcxGrid;
    cxgrid_xzlbDBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid2DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column4: TcxGridDBColumn;
    cxgrid_xzlbLevel1: TcxGridLevel;
    sp_up_tyj: TADOStoredProc;
    cxgrdbclmnGrid_yjmxDBTableView1Column7: TcxGridDBColumn;
    procedure e_tmhKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure e_brxmKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure e_syjeKeyPress( Sender: TObject; var Key: Char );
    procedure cxbut_tcClick( Sender: TObject );
    procedure e_tmhEnter( Sender: TObject );
    procedure cxGrid_yjmxDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
    procedure cxgrid_xzlbDBTableView1DblClick( Sender: TObject );
    procedure cxgrid_xzlbExit( Sender: TObject );
    procedure cxbut_zfClick( Sender: TObject );
    procedure cxGrid_yjmxDBTableView1DblClick( Sender: TObject );
    procedure cxgrid_xzlbDBTableView1KeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
  private
    procedure jz;
    procedure qk;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_xhy_hyyjzf: Tfrm_xhy_hyyjzf;

implementation
uses
  p_dm;
{$R *.dfm}

procedure Tfrm_xhy_hyyjzf.cxbut_tcClick( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_xhy_hyyjzf.cxbut_zfClick( Sender: TObject );
var
  zt: string;
begin
  if sp_yjmxcx.Active and ( sp_yjmxcx.RecordCount > 0 ) then
  begin
    if Application.MessageBox( PChar( 'ȷ����Ϣ:��ȷ��Ҫ��[' + Trim(DM_data.hy_jbxx.FieldByName( 'brxm' ).AsString )+
      ']��[' + sp_yjmxcx.FieldByName( 'yjje' ).AsString + 'Ԫ]Ԥ������������' ), 'ȷ����Ϣ', MB_YESNO + MB_ICONQUESTION ) = IDYES then
    begin
      if not sp_yjmxcx.FieldByName( 'tfbz' ).AsBoolean then
      begin
        sp_up_tyj.Close;
        sp_up_tyj.Parameters.ParamByName( '@tmh' ).Value := DM_data.hy_jbxx.FieldByName( 'tmh' ).AsString;
        sp_up_tyj.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
        sp_up_tyj.Parameters.ParamByName( '@id' ).Value := sp_yjmxcx.FieldByName( 'id' ).AsInteger;
        sp_up_tyj.Parameters.ParamByName( '@sczt' ).Value := '';
        try
          sp_up_tyj.ExecProc;
          zt := sp_up_tyj.Parameters.ParamByName( '@sczt' ).Value;
          if zt = '�ɹ�' then
          begin
            Application.MessageBox( '��ʾ:���ϳɹ���', '��ʾ', MB_OK );
            e_tmh.SetFocus;
          end
          else
          begin
            Application.MessageBox( Pchar( '��ʾ:ִ�й���ʧ�ܣ�ʧ��ԭ��:' + zt ), '��ʾ', MB_ICONHAND );
          end;
        except on e: Exception do
          begin
            Application.MessageBox( PChar( '��ʾ:��ִ�й���ʱʧ�ܣ�ʧ��ԭ��:' + e.Message ), '��ʾ', MB_ICONHAND );
          end;
        end;
      end
      else
      begin
        Application.MessageBox( '��ʾ:�Ѿ����ϵ�Ԥ���޷��ظ����ϣ�����', '��ʾ', MB_ICONHAND );
      end;
    end;
  end
  else
  begin
    Application.MessageBox( '��ʾ:δ���ҵ���Ҫ���ϵ�Ԥ����ϸ�����Ƚ��в�ѯ����', '��ʾ', MB_ICONHAND );
  end;
end;

procedure Tfrm_xhy_hyyjzf.cxgrid_xzlbDBTableView1DblClick( Sender: TObject );
begin
  if DM_data.hy_jbxx.Active and ( DM_data.hy_jbxx.RecordCount > 0 ) then
  begin
    jz;
    cxgrid_xzlb.Visible := False;
    cxGrid_yjmx.SetFocus;
  end;
end;

procedure Tfrm_xhy_hyyjzf.cxgrid_xzlbDBTableView1KeyDown( Sender: TObject;
  var Key: Word; Shift: TShiftState );
begin
  if key = 13 then
  begin
    if DM_data.hy_jbxx.Active and ( DM_data.hy_jbxx.RecordCount > 0 ) then
    begin
      jz;
      cxgrid_xzlb.Visible := False;
      cxGrid_yjmx.SetFocus;
    end;
  end;
end;

procedure Tfrm_xhy_hyyjzf.cxgrid_xzlbExit( Sender: TObject );
begin
  if DM_data.hy_jbxx.Active and ( DM_data.hy_jbxx.RecordCount > 0 ) then
  begin
    jz;
    cxgrid_xzlb.Visible := False;
    cxGrid_yjmx.SetFocus;
  end;
end;

procedure Tfrm_xhy_hyyjzf.cxGrid_yjmxDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
begin
  if AViewInfo.RecordViewInfo.GridRecord.Values[0] <> null then
    if AViewInfo.RecordViewInfo.GridRecord.Values[0] = '��' then
      ACanvas.Canvas.Brush.Color := clRed;
end;

procedure Tfrm_xhy_hyyjzf.cxGrid_yjmxDBTableView1DblClick( Sender: TObject );
begin
  if sp_yjmxcx.Active and ( sp_yjmxcx.RecordCount > 0 ) then
  begin
    cxbut_zf.Click;
  end;
end;

procedure Tfrm_xhy_hyyjzf.e_brxmKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  key := 0;
end;

procedure Tfrm_xhy_hyyjzf.e_syjeKeyPress( Sender: TObject; var Key: Char );
begin
  Key := #0;
end;

procedure Tfrm_xhy_hyyjzf.e_tmhEnter( Sender: TObject );
begin
  qk;
end;

procedure Tfrm_xhy_hyyjzf.e_tmhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    if Trim( e_tmh.Text ) <> '' then
    begin
      DM_data.hy_jbxx.Close;
      DM_data.hy_jbxx.Parameters.ParamByName( '@tmh' ).Value := Trim( e_tmh.Text );
      DM_data.hy_jbxx.Open;
      if DM_data.hy_jbxx.RecordCount = 1 then
      begin
        jz;
        sp_yjmxcx.Close;
        sp_yjmxcx.Parameters.ParamByName( '@tmh' ).Value := DM_data.hy_jbxx.FieldByName( 'tmh' ).AsString;
        sp_yjmxcx.Open;
        if sp_yjmxcx.RecordCount = 0 then
        begin
          Application.MessageBox( '��ʾ:�û�Ա�û���δ���й���ֵ������', '��ʾ', MB_ICONHAND );
        end;
        cxGrid_yjmx.SetFocus;
      end
      else
        if DM_data.hy_jbxx.RecordCount > 1 then
        begin
          cxgrid_xzlb.Visible := True;
          cxgrid_xzlb.Left := 100;
          cxgrid_xzlb.Top := 130;
          cxgrid_xzlb.SetFocus;
        end
        else
        begin
          Application.MessageBox( '��ʾ:δ�ܲ�ѯ����Ӧ���ݣ���ȷ�Ϻ��ڽ��в�ѯ��', '��ʾ', MB_ICONHAND );
        end;
    end;
  end;
end;

procedure Tfrm_xhy_hyyjzf.jz;
begin
  e_brxm.Text := DM_data.hy_jbxx.FieldByName( 'brxm' ).AsString;
  e_sfzhm.Text := DM_data.hy_jbxx.FieldByName( 'sfzhm' ).AsString;
  e_zyj.Text := FormatFloat( '0.00', DM_data.hy_jbxx.FieldByName( 'yjze' ).AsFloat );
  e_zfy.Text := FormatFloat( '0.00', DM_data.hy_jbxx.FieldByName( 'zfy' ).AsFloat );
  e_syje.Text := FormatFloat( '0.00', DM_data.hy_jbxx.FieldByName( 'syje' ).AsFloat );
end;

procedure Tfrm_xhy_hyyjzf.qk;
begin
  DM_data.hy_jbxx.Close;
  sp_yjmxcx.Close;
  e_tmh.Text := '';
  e_brxm.Text := '';
  e_sfzhm.Text := '';
  e_zyj.Text := '';
  e_zfy.Text := '';
  e_syje.Text := '';
end;

end.

