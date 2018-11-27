{*******************************************************}
{                                                       }
{       住院预交 担保比例设置                           }
{                                                       }
{       沙雅县人民医院 在交预交是 根据病人类别按一定比例}
{       自动添加担保金额（自动计费）                    }
{*******************************************************}

unit p_zyyj_dbblsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBckgnd, ExtCtrls, RzPanel, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, cxTextEdit, RzButton, StdCtrls, Mask, RzEdit,
  RzLabel, cxSpinEdit;

type
  Tfrm_zyyj_dbblsz = class(TForm)
    rzsprtrLeft: TRzSeparator;
    rzsprtrTop: TRzSeparator;
    rzsprtrButtom: TRzSeparator;
    rzsprtrRight: TRzSeparator;
    pnl1: TRzPanel;
    pnl2: TRzPanel;
    pnlRecords: TRzPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ds_fylb: TDataSource;
    cxGrid1DBTableView1dm: TcxGridDBColumn;
    cxGrid1DBTableView1mc: TcxGridDBColumn;
    cxGrid1DBTableView1zyyjdbbl: TcxGridDBColumn;
    rzsprtr1: TRzSeparator;
    btnSave: TRzButton;
    RzGroupBox1: TRzGroupBox;
    edtSCBL: TRzEdit;
    edtMC: TRzEdit;
    edtDM: TRzEdit;
    lblDM: TRzLabel;
    lblmc: TRzLabel;
    lblBL: TRzLabel;
    btnClose: TRzButton;
    ad_fylb: TADODataSet;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    function Save(dm:string; value: Real):Boolean;
  public
    { Public declarations }
  end;

var
  frm_zyyj_dbblsz: Tfrm_zyyj_dbblsz;

implementation

uses
  p_dm, p_func;

{$R *.dfm}

procedure Tfrm_zyyj_dbblsz.btnCloseClick(Sender: TObject);
var
  v_bl: Real; //生成比例
begin
  try
    v_bl := StrToFloat(Trim(edtSCBL.Text));
  except
    Application.MessageBox('只能输入小数和整数', '提示', MB_OK + 
      MB_ICONINFORMATION);
    Exit;  
  end;
  
  if v_bl < 0.00 then
  begin
    Application.MessageBox('比例必须大于 或 等于 0', '提示', MB_OK + 
      MB_ICONINFORMATION);
    Exit;
  end;

  if not Save(edtDM.Text, v_bl) then Exit;

  ad_fylb.Refresh;
end;

procedure Tfrm_zyyj_dbblsz.btnSaveClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_zyyj_dbblsz.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if not ad_fylb.IsEmpty then
  begin
    edtDM.Text := ad_fylb['dm'];
    edtMC.Text := ad_fylb['mc'];
    edtSCBL.Text := ad_fylb.FieldByName('zyyjdbbl').AsString;
  end
  else
  begin
    edtDM.Clear;
    edtMC.Clear;
    edtSCBL.Clear;
  end;
end;

procedure Tfrm_zyyj_dbblsz.FormShow(Sender: TObject);
begin
  try
    ad_fylb.Open;
  except

  end;
end;

function Tfrm_zyyj_dbblsz.Save(dm:string; value: Real):Boolean;
begin

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text :=
      ' UPDATE  sys_fylb ' +
      ' SET     zyyjdbbl=' + QuotedStr(FloatToStr(value)) +
      ' WHERE   dm=' + QuotedStr(dm);
  try
    DM_data.qry_pub.ExecSQL;
    Result := True;
  except
    Result := False;
    Exception.Create('保存担保生成比例失败：' + DM_data.qry_pub.SQL.Text);
  end;
end;

end.
