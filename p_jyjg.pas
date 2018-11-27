unit p_jyjg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, ToolWin, ExtCtrls, AppEvnts, ImgList, Buttons, StdCtrls,
  Db, DBTables, Grids, DBGrids, ADODB, DBCtrls, DBCGrids, Mask, DBGridEh,
  GridsEh, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TFrm_jyjg = class(TForm)
    btn1: TButton;
    lbl1: TLabel;
    edtbrtmh: TEdit;
    lbl2: TLabel;
    edtbrzyh: TEdit;
    lbl3: TLabel;
    edtbrxm: TEdit;
    lbl4: TLabel;
    edtfylb: TEdit;
    lbl5: TLabel;
    edtryzd: TEdit;
    qry1: TADOQuery;
    lbl6: TLabel;
    edtbrnl: TEdit;
    DBGridEh1: TDBGridEh;
    lbl7: TLabel;
    qry2: TADOQuery;
    ds1: TDataSource;
    sp1: TADOStoredProc;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    _code:string;
    { Public declarations }
  end;

var
  Frm_jyjg: TFrm_jyjg;

implementation
  uses p_dm, p_login, p_func, p_dzbl_main, p_blyssz, p_yzinput, p_psbz_ps, p_yzinput_xse,
  P_cx_psqk, P_blps_ps, P_blps_blcy, p_xsedj, p_bqgl_cydycfhj, p_zybl_ypxmsz,
  P_TreeView_ctwh, P_mbwh, p_brcx, P_jbqk, p_kstj, p_blmb, p_jfxmsz, p_bqgl_cfhj,
  p_kssr, p_zybrhkcx, p_bqgl_bqyssr, p_bqgl_bqxmsr, p_bqgl_ssapcx, p_zyyzdysz, p_yzinput_lishi,
  p_bqgl_sssq, p_zyztcx, p_cx_dzbl, p_bqcwaz, p_yzzt, P_bqzk, P_brbqtz, p_zybrfb_zt,
  P_ysblzkts, P_BQZC, P_kszkfxsj, p_brcy, p_zysf_fybl, p_bqgl_zxypyz, p_yzzx, p_yytjbdfy, p_yxqk,
  p_zyzsjsz, p_mmyz, p_blzk_xxtj, p_dtkdy, p_ssmz_kssh, p_yszx_ysfs,p_bqgl_cfhj_hsz,p_wjztx,p_hisyydj,
  p_qtyshz,P_balrkjm, balr,p_lclj_xz;
{$R *.dfm}

procedure TFrm_jyjg.btn1Click(Sender: TObject);
var
tmh:string;
begin
   tmh:=Trim(edtbrtmh.Text);
   qry1.Close;
   qry1.SQL.Clear;
   qry1.SQL.Text:='select * from dzbl_jysqd where tmh='+'''' + tmh + ''' and jgbz=1 and xsbz=0';
   qry1.Open;
   while not qry1.Eof do
   begin
   qry1.Edit;
   qry1.FieldByName('xsbz').Value:='1';
   qry1.Post;
   qry1.Next;
   end;
  //πÿ±’∏√“≥√Ê
  Close;
end;

procedure TFrm_jyjg.FormCreate(Sender: TObject);
begin
  _code:='';
end;

procedure TFrm_jyjg.FormShow(Sender: TObject);
begin
  qry2.Close;
  qry2.Parameters.ParamByName('@ksdm').Value:=pub_bqdm;
  qry2.Parameters.ParamByName('@tmh').Value:=Trim(edtbrtmh.Text);
  qry2.Open;
  if _code<>'' then
  begin
    qry2.Filtered:=false;
    qry2.Filter:='barcode='+''''+_code+'''';
    qry2.Filtered:=True;
  end;
//  sp1.Close;
//  sp1.Parameters.ParamByName('@ksdm').Value:=pub_bqdm;
//  sp1.Parameters.ParamByName('@tmh').Value:=Trim(edtbrtmh.Text);
//  sp1.Open;
end;

end.
