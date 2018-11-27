unit p_cx_kyhjbxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridTableView, cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxTextEdit, cxContainer, cxLabel, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  Tfrm_cx_kyhjbxx = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edit_str: TcxTextEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
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
    cxStyle24: TcxStyle;
    ds_kyh: TDataSource;
    sp_cx_kyhjbxx: TADOStoredProc;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label1: TLabel;
    cxGridDBTableView1tmh: TcxGridDBColumn;
    cxGridDBTableView1brxm: TcxGridDBColumn;
    cxGridDBTableView1brxb: TcxGridDBColumn;
    cxGridDBTableView1brxx: TcxGridDBColumn;
    cxGridDBTableView1brgmyw: TcxGridDBColumn;
    cxGridDBTableView1brjwbs: TcxGridDBColumn;
    cxGridDBTableView1brjzs: TcxGridDBColumn;
    cxGridDBTableView1csrq: TcxGridDBColumn;
    cxGridDBTableView1brnl: TcxGridDBColumn;
    cxGridDBTableView1brsf: TcxGridDBColumn;
    cxGridDBTableView1brjg: TcxGridDBColumn;
    cxGridDBTableView1brmz: TcxGridDBColumn;
    cxGridDBTableView1brzy: TcxGridDBColumn;
    cxGridDBTableView1brdz: TcxGridDBColumn;
    cxGridDBTableView1fylb: TcxGridDBColumn;
    cxGridDBTableView1dbr: TcxGridDBColumn;
    cxGridDBTableView1dbrdz: TcxGridDBColumn;
    cxGridDBTableView1brdh: TcxGridDBColumn;
    cxGridDBTableView1sfzhm: TcxGridDBColumn;
    cxGridDBTableView1yjze: TcxGridDBColumn;
    cxGridDBTableView1zfy: TcxGridDBColumn;
    cxGridDBTableView1syje: TcxGridDBColumn;
    cxGridDBTableView1yhbl: TcxGridDBColumn;
    cxGridDBTableView1bz: TcxGridDBColumn;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridDBTableView1lb: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure edit_strKeyPress(Sender: TObject; var Key: Char);
    procedure sp_cx_kyhjbxxAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cx_kyhjbxx: Tfrm_cx_kyhjbxx;
procedure proc_get_kyhjbxx;
implementation
uses p_func, p_dm;
{$R *.dfm}

procedure proc_get_kyhjbxx;
begin
  application.CreateForm(Tfrm_cx_kyhjbxx, frm_cx_kyhjbxx);
  try
    frm_cx_kyhjbxx.showmodal;
  finally
    frm_cx_kyhjbxx.free;
  end;
end;

procedure Tfrm_cx_kyhjbxx.cxButton1Click(Sender: TObject);
begin
  if Trim(edit_str.Text) = '' then
  begin
    if Application.MessageBox('全部查询可能导致超时,是否查询全部?', '系统询问:', MB_YESNO + MB_ICONEXCLAMATION) = IDYES then
    begin
      sp_cx_kyhjbxx.Close;
      sp_cx_kyhjbxx.Parameters.ParamByName('@str').Value := '%%';
      sp_cx_kyhjbxx.Open;
    end;
  end
  else
  begin
    sp_cx_kyhjbxx.Close;
    sp_cx_kyhjbxx.Parameters.ParamByName('@str').Value := '%' + Trim(edit_str.Text) + '%';
    sp_cx_kyhjbxx.Open;
  end;
end;

procedure Tfrm_cx_kyhjbxx.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_cx_kyhjbxx.edit_strKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    cxButton1.SetFocus;
  end;
end;

procedure Tfrm_cx_kyhjbxx.sp_cx_kyhjbxxAfterScroll(DataSet: TDataSet);
begin
  cxGridDBTableView1.DataController.Groups.FullExpand;

end;

end.
