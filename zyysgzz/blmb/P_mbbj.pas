unit P_mbbj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, EMRPAD30Lib_TLB, ExtCtrls, StdCtrls, Buttons, Menus,
  ComCtrls, ToolWin, ImgList, DB, ADODB, ActnList;

type
  Tfrm_mbbj = class(TForm)
    Panel1: TPanel;
    EMRPad301: TEMRPad30;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N151: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    N80: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    N85: TMenuItem;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    N90: TMenuItem;
    N91: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N94: TMenuItem;
    N95: TMenuItem;
    N96: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N101: TMenuItem;
    N102: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    N105: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    N109: TMenuItem;
    N110: TMenuItem;
    N111: TMenuItem;
    N112: TMenuItem;
    N113: TMenuItem;
    N114: TMenuItem;
    N115: TMenuItem;
    N116: TMenuItem;
    N117: TMenuItem;
    N118: TMenuItem;
    N119: TMenuItem;
    N120: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    N121: TMenuItem;
    PopupMenu1: TPopupMenu;
    N122: TMenuItem;
    N123: TMenuItem;
    N124: TMenuItem;
    N125: TMenuItem;
    N126: TMenuItem;
    N127: TMenuItem;
    N128: TMenuItem;
    N129: TMenuItem;
    N130: TMenuItem;
    N131: TMenuItem;
    N132: TMenuItem;
    N133: TMenuItem;
    N134: TMenuItem;
    N135: TMenuItem;
    N136: TMenuItem;
    N137: TMenuItem;
    N138: TMenuItem;
    N139: TMenuItem;
    N140: TMenuItem;
    N141: TMenuItem;
    N142: TMenuItem;
    N143: TMenuItem;
    N144: TMenuItem;
    N145: TMenuItem;
    N146: TMenuItem;
    N147: TMenuItem;
    ToolbarImages: TImageList;
    StandardToolBar: TToolBar;
    OpenButton: TToolButton;
    SaveButton: TToolButton;
    PrintButton: TToolButton;
    ToolButton5: TToolButton;
    CutButton: TToolButton;
    CopyButton: TToolButton;
    PasteButton: TToolButton;
    UndoButton: TToolButton;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    deleteButton: TToolButton;
    closeButton: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton12: TToolButton;
    qry_keyword: TADOQuery;
    N148: TMenuItem;
    N149: TMenuItem;
    ToolButton4: TToolButton;
    N150: TMenuItem;
    ToolButton11: TToolButton;
    aaa1: TMenuItem;
    N79: TMenuItem;
    N152: TMenuItem;
    Memo1: TMemo;
    ActionList1: TActionList;
    zf: TAction;
    Action1: TAction;
    N153: TMenuItem;
    N154: TMenuItem;
    procedure N41Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure N149Click(Sender: TObject);
    procedure N148Click(Sender: TObject);
    procedure EMRPad301SelectKeyword(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure UndoButtonClick(Sender: TObject);
    procedure deleteButtonClick(Sender: TObject);
    procedure PasteButtonClick(Sender: TObject);
    procedure CutButtonClick(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
    procedure OpenButtonClick(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure closeButtonClick(Sender: TObject);
    procedure N147Click(Sender: TObject);
    procedure N146Click(Sender: TObject);
    procedure N145Click(Sender: TObject);
    procedure N143Click(Sender: TObject);
    procedure N142Click(Sender: TObject);
    procedure N141Click(Sender: TObject);
    procedure N140Click(Sender: TObject);
    procedure N139Click(Sender: TObject);
    procedure N138Click(Sender: TObject);
    procedure N137Click(Sender: TObject);
    procedure N135Click(Sender: TObject);
    procedure N134Click(Sender: TObject);
    procedure N133Click(Sender: TObject);
    procedure N132Click(Sender: TObject);
    procedure N131Click(Sender: TObject);
    procedure N130Click(Sender: TObject);
    procedure N129Click(Sender: TObject);
    procedure N128Click(Sender: TObject);
    procedure N127Click(Sender: TObject);
    procedure N126Click(Sender: TObject);
    procedure N124Click(Sender: TObject);
    procedure N122Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N120Click(Sender: TObject);
    procedure N119Click(Sender: TObject);
    procedure N118Click(Sender: TObject);
    procedure N116Click(Sender: TObject);
    procedure N115Click(Sender: TObject);
    procedure N114Click(Sender: TObject);
    procedure N113Click(Sender: TObject);
    procedure N112Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N108Click(Sender: TObject);
    procedure N107Click(Sender: TObject);
    procedure N106Click(Sender: TObject);
    procedure N105Click(Sender: TObject);
    procedure N104Click(Sender: TObject);
    procedure N103Click(Sender: TObject);
    procedure N102Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N100Click(Sender: TObject);
    procedure N99Click(Sender: TObject);
    procedure N97Click(Sender: TObject);
    procedure N95Click(Sender: TObject);
    procedure N94Click(Sender: TObject);
    procedure N93Click(Sender: TObject);
    procedure N92Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N89Click(Sender: TObject);
    procedure N87Click(Sender: TObject);
    procedure N86Click(Sender: TObject);
    procedure N85Click(Sender: TObject);
    procedure N84Click(Sender: TObject);
    procedure N83Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure N78Click(Sender: TObject);
    procedure N77Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure N75Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N151Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N53Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N150Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure aaa1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ToolButton13Click(Sender: TObject);
    procedure N79Click(Sender: TObject);
    procedure N152Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure zfExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure N154Click(Sender: TObject);
  private
    { Private declarations }
  public
    p_ysbj: string;
    zt: string;
    p_ysmc: string;
    p_zyh: string;
    { Public declarations }
  end;

var
  frm_mbbj: Tfrm_mbbj;

implementation
uses p_savemb, p_dm, p_micro, p_cxmb, p_blmb, p_func, p_dzbl_yszddr;
{$R *.dfm}


procedure Tfrm_mbbj.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if application.MessageBox('是否退出病历编辑？,请确认已保存才退出!', '退出系统', 4 + 256 + 32) = 6 then
  begin
    canclose := true;
  end
  else
    canclose := false;
end;

procedure Tfrm_mbbj.FormCreate(Sender: TObject);
begin
  p_ysbj := '0';
  zt := '';
end;

procedure Tfrm_mbbj.FormShow(Sender: TObject);
begin

  EMRPad301.UniversalBoolFunction(pub_dzblzcm, '', 98, pub_dzblzch);

  EMRPad301.Width := panel1.Width;
  EMRPad301.height := panel1.Height;
  if (editmode = 'edit') and (pub_filename <> '') then
    EMRPad301.FileOpen(GetCurrentDir + '\' + 'emrtemp', 0)
  else
    EMRPad301.FileNew;
  if (editmode = 'azz') or (editmode = 'ezz') then
    EMRPad301.EditPaste;

end;

procedure Tfrm_mbbj.N12Click(Sender: TObject);
var
  Path, FileName: string;
  f: TSearchRec;
begin
  if OpenDialog1.Execute then
    if OpenDialog1.Files.Count = 1 then
    begin
      if FindFirst(OpenDialog1.Files[0], faAnyFile, f) = 0 then
      begin
        Path := ExtractFileDir(OpenDialog1.Files[0]);
        FileName := ExtractFileName(f.Name);
        frm_mbbj.Caption := '电子病历编辑器V3.0 - ' + FileName;
        EMRPad301.FileOpen(path + '\' + filename, 0);
      end;
    end;
end;

procedure Tfrm_mbbj.N24Click(Sender: TObject);
begin
  if p_ysbj = '1' then
  begin
    frm_dzbl_yszddr.qry_cx.Locate('ysmc', s_ysmc, []);
    frm_dzbl_yszddr.DBGridEh1.Enabled := True;
    frm_mbbj.Visible := false;
    frm_mbbj.Visible := True;
    frm_dzbl_yszddr.DBGridEh1.Color := clWindow;
  end
  else
    close;
end;

procedure Tfrm_mbbj.ToolButton21Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_mbbj.N17Click(Sender: TObject);
begin
  EMRPad301.Print(0);
end;

procedure Tfrm_mbbj.N18Click(Sender: TObject);
begin
  EMRPad301.Print(1);
end;

procedure Tfrm_mbbj.N19Click(Sender: TObject);
begin
  EMRPad301.Print(2);
end;

procedure Tfrm_mbbj.N20Click(Sender: TObject);
begin
  EMRPad301.PageSetup;
end;

procedure Tfrm_mbbj.N21Click(Sender: TObject);
begin
  EMRPad301.FileSetPageNumber();
end;

procedure Tfrm_mbbj.N25Click(Sender: TObject);
begin
  EMRPad301.EditUnDo;
end;

procedure Tfrm_mbbj.N26Click(Sender: TObject);
begin
  EMRPad301.EditReDo;
end;

procedure Tfrm_mbbj.N28Click(Sender: TObject);
begin
  EMRPad301.EditCopy;
end;

procedure Tfrm_mbbj.N29Click(Sender: TObject);
begin
  EMRPad301.EditPaste;
end;

procedure Tfrm_mbbj.N30Click(Sender: TObject);
begin
  EMRPad301.EditCut;
end;

procedure Tfrm_mbbj.N31Click(Sender: TObject);
begin
  EMRPad301.EditDelete;
end;

procedure Tfrm_mbbj.N33Click(Sender: TObject);
begin
  EMRPad301.EditSelectAll;
end;

procedure Tfrm_mbbj.N35Click(Sender: TObject);
begin
  EMRPad301.EditFind;
end;

procedure Tfrm_mbbj.N36Click(Sender: TObject);
begin
  EMRPad301.EditReplace;
end;

procedure Tfrm_mbbj.N38Click(Sender: TObject);
begin
  EMRPad301.EditLineReadOnly;
end;

procedure Tfrm_mbbj.N39Click(Sender: TObject);
begin
  EMRPad301.EditLineEditMode;
end;

procedure Tfrm_mbbj.N42Click(Sender: TObject);
begin
  EMRPad301.ViewToolbar;
end;

procedure Tfrm_mbbj.N43Click(Sender: TObject);
begin
  EMRPad301.ViewStatusbar;
end;

procedure Tfrm_mbbj.N44Click(Sender: TObject);
begin
  EMRPad301.ViewLineIndex;
end;

procedure Tfrm_mbbj.N45Click(Sender: TObject);
begin
  EMRPad301.FontBold;
end;

procedure Tfrm_mbbj.N46Click(Sender: TObject);
begin
  EMRPad301.FontItalic;
end;

procedure Tfrm_mbbj.N47Click(Sender: TObject);
begin
  EMRPad301.FontUnderline;
end;

procedure Tfrm_mbbj.N49Click(Sender: TObject);
begin
  EMRPad301.FontSuperscript;
end;

procedure Tfrm_mbbj.N50Click(Sender: TObject);
begin
  EMRPad301.FontSubscript;
end;

procedure Tfrm_mbbj.N52Click(Sender: TObject);
begin
  EMRPad301.LineAlignLeft;
end;

procedure Tfrm_mbbj.N53Click(Sender: TObject);
begin
  EMRPad301.LineAlignCenter;
end;

procedure Tfrm_mbbj.N54Click(Sender: TObject);
begin
  EMRPad301.LineAlignRight;
end;

procedure Tfrm_mbbj.N56Click(Sender: TObject);
begin
  EMRPad301.LineSpaceSingle;
end;

procedure Tfrm_mbbj.N150Click(Sender: TObject);
begin
  pub_cxmblb := '2';
  application.CreateForm(Tfrm_cxmb, frm_cxmb);
  try
    frm_cxmb.ShowModal;
  finally
    frm_cxmb.free;
  end;
  EMRPad301.UniversalBoolFunction('', '', 1012, 0);
  EMRPad301.setfieldtext(-1, -1, -1, -1, pub_cxmbmc);
end;

procedure Tfrm_mbbj.N151Click(Sender: TObject);
begin
  EMRPad301.LineSpaceOnehalf;
end;

procedure Tfrm_mbbj.N152Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 20, -1);
  EMRPad301.UniversalBoolFunction('', '', 18, -1);
  application.MessageBox('你选中的表格将变成普通表格!', '提示', 0 + 48);
end;

procedure Tfrm_mbbj.N154Click(Sender: TObject);
var
  Path, FileName: string;
  f: TSearchRec;
begin
  if OpenDialog1.Execute then
    if OpenDialog1.Files.Count = 1 then
    begin
      if FindFirst(OpenDialog1.Files[0], faAnyFile, f) = 0 then
      begin
        Path := ExtractFileDir(OpenDialog1.Files[0]);
        FileName := ExtractFileName(f.Name);
        if not EMRPad301.UniversalBoolFunction(path + '\' + filename, '', 2001, 2) then
        begin
          Application.MessageBox('无效的替换文件', '错误', MB_ICONWARNING + MB_OK);
        end;
      end;
    end;
end;

procedure Tfrm_mbbj.N57Click(Sender: TObject);
begin
  EMRPad301.ParagraphBegin;
end;

procedure Tfrm_mbbj.N58Click(Sender: TObject);
begin
  EMRPad301.ParagraphEnd;
end;

procedure Tfrm_mbbj.N60Click(Sender: TObject);
begin
  EMRPad301.ParagraphFormat;
end;

procedure Tfrm_mbbj.N63Click(Sender: TObject);
begin
  EMRPad301.TableInsert;
end;

procedure Tfrm_mbbj.N64Click(Sender: TObject);
begin
  EMRPad301.TableInsertColLeft;
end;

procedure Tfrm_mbbj.N65Click(Sender: TObject);
begin
  EMRPad301.TableInsertColRight;
end;

procedure Tfrm_mbbj.N68Click(Sender: TObject);
begin
  EMRPad301.TableInsertRowTop;
end;

procedure Tfrm_mbbj.N69Click(Sender: TObject);
begin
  EMRPad301.TableInsertRowBottom;
end;

procedure Tfrm_mbbj.N70Click(Sender: TObject);
begin
  EMRPad301.TableDelete;
end;

procedure Tfrm_mbbj.N71Click(Sender: TObject);
begin
  EMRPad301.TableDeleteRow;
end;

procedure Tfrm_mbbj.N72Click(Sender: TObject);
begin
  EMRPad301.TableDeleteCol;
end;

procedure Tfrm_mbbj.N74Click(Sender: TObject);
begin
  EMRPad301.TableSelect;
end;

procedure Tfrm_mbbj.N75Click(Sender: TObject);
begin
  EMRPad301.TableSelectRow;
end;

procedure Tfrm_mbbj.N76Click(Sender: TObject);
begin
  EMRPad301.TableSelectCol;
end;

procedure Tfrm_mbbj.N77Click(Sender: TObject);
begin
  EMRPad301.TableMergeCell;
end;

procedure Tfrm_mbbj.N78Click(Sender: TObject);
begin
  EMRPad301.TableSplitCell;
end;

procedure Tfrm_mbbj.N79Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 20, 1);
  EMRPad301.UniversalBoolFunction('', '', 18, 1);
  application.MessageBox('你选中的表格将变成制式表格!', '提示', 0 + 48);
end;

procedure Tfrm_mbbj.N80Click(Sender: TObject);
begin
  EMRPad301.TableHideBorder;
end;

procedure Tfrm_mbbj.N82Click(Sender: TObject);
begin
  EMRPad301.TableProp;
end;

procedure Tfrm_mbbj.N83Click(Sender: TObject);
begin
  EMRPad301.TableColProp;
end;

procedure Tfrm_mbbj.N84Click(Sender: TObject);
begin
  EMRPad301.TableCellProp;
end;

procedure Tfrm_mbbj.N85Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(1);
end;

procedure Tfrm_mbbj.N86Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(2);
end;

procedure Tfrm_mbbj.N87Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(3);
end;

procedure Tfrm_mbbj.N89Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 42, 1);
  application.MessageBox('模板进入表单填写状态!', '提示', 0 + 48);
end;

procedure Tfrm_mbbj.N91Click(Sender: TObject);
begin
  EMRPad301.ShowRevisionHistory;
end;

procedure Tfrm_mbbj.N92Click(Sender: TObject);
begin
  EMRPad301.CleanUndoBuffer;
end;

procedure Tfrm_mbbj.N93Click(Sender: TObject);
begin
  EMRPad301.CleanClipboard;
end;

procedure Tfrm_mbbj.N94Click(Sender: TObject);
begin
  EMRPad301.InsertLine(true);
end;

procedure Tfrm_mbbj.N95Click(Sender: TObject);
begin
  EMRPad301.DeleteLines(-1, -1);
end;

procedure Tfrm_mbbj.N97Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 37, 0);
  application.CreateForm(Tfrm_micro, frm_micro);
  try
    frm_micro.ShowModal;
  finally
    frm_micro.free;
  end;
end;

procedure Tfrm_mbbj.N99Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1006, 0);
end;

procedure Tfrm_mbbj.N100Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1007, 0);
end;

procedure Tfrm_mbbj.N101Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1008, 0);
end;

procedure Tfrm_mbbj.N102Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1009, 0);
end;

procedure Tfrm_mbbj.N103Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1010, 0);
end;

procedure Tfrm_mbbj.N104Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1031, 0);
end;

procedure Tfrm_mbbj.N105Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1011, 0);
end;

procedure Tfrm_mbbj.N106Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1012, 0);
end;

procedure Tfrm_mbbj.N107Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1013, 0);
end;

procedure Tfrm_mbbj.N108Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1014, 0);
end;

procedure Tfrm_mbbj.N110Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1015, 0);
end;

procedure Tfrm_mbbj.N111Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1016, 0);
end;

procedure Tfrm_mbbj.N112Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1017, 0);
end;

procedure Tfrm_mbbj.N113Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1018, 0);
end;

procedure Tfrm_mbbj.N114Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1019, 0);
end;

procedure Tfrm_mbbj.N115Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1020, 0);
end;

procedure Tfrm_mbbj.N116Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1021, 0);
end;

procedure Tfrm_mbbj.N118Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 1022, 0);
end;

procedure Tfrm_mbbj.N119Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 36, 0);
end;

procedure Tfrm_mbbj.N120Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 38, 1);
end;

procedure Tfrm_mbbj.N11Click(Sender: TObject);
begin
  EMRPad301.FileNew;
end;

procedure Tfrm_mbbj.N14Click(Sender: TObject);
var
  FileName: string;
begin
  if SaveDialog1.Execute then
  begin
    FileName := SaveDialog1.FileName;
    EMRPad301.FileSaveAs(FileName, 0, 0);
  end;
end;

procedure Tfrm_mbbj.N16Click(Sender: TObject);
var
  FileName: string;
begin
  if OpenDialog1.Execute then
    if OpenDialog1.Files.Count = 1 then
    begin
      FileName := OpenDialog1.FileName;
      EMRPad301.FileInsert(FileName, 0);
    end
end;

procedure Tfrm_mbbj.N122Click(Sender: TObject);
begin
  N16.Click;
end;

procedure Tfrm_mbbj.N124Click(Sender: TObject);
begin
  N97.Click;
end;

procedure Tfrm_mbbj.N126Click(Sender: TObject);
begin
  N99.Click;
end;

procedure Tfrm_mbbj.N127Click(Sender: TObject);
begin
  N100.Click;
end;

procedure Tfrm_mbbj.N128Click(Sender: TObject);
begin
  N101.Click;
end;

procedure Tfrm_mbbj.N129Click(Sender: TObject);
begin
  N102.Click;
end;

procedure Tfrm_mbbj.N130Click(Sender: TObject);
begin
  N103.Click;
end;

procedure Tfrm_mbbj.N131Click(Sender: TObject);
begin
  N104.Click;
end;

procedure Tfrm_mbbj.N132Click(Sender: TObject);
begin
  N105.Click;
end;

procedure Tfrm_mbbj.N133Click(Sender: TObject);
begin
  N150.Click;
end;

procedure Tfrm_mbbj.N134Click(Sender: TObject);
begin
  N107.Click;
end;

procedure Tfrm_mbbj.N135Click(Sender: TObject);
begin
  N108.Click;
end;

procedure Tfrm_mbbj.N137Click(Sender: TObject);
begin
  N110.Click;
end;

procedure Tfrm_mbbj.N138Click(Sender: TObject);
begin
  N111.Click;
end;

procedure Tfrm_mbbj.N139Click(Sender: TObject);
begin
  N112.Click;
end;

procedure Tfrm_mbbj.N140Click(Sender: TObject);
begin
  N113.Click;
end;

procedure Tfrm_mbbj.N141Click(Sender: TObject);
begin
  N114.Click;
end;

procedure Tfrm_mbbj.N142Click(Sender: TObject);
begin
  N115.Click;
end;

procedure Tfrm_mbbj.N143Click(Sender: TObject);
begin
  N116.Click;
end;

procedure Tfrm_mbbj.N145Click(Sender: TObject);
begin
  N118.Click;
end;

procedure Tfrm_mbbj.N146Click(Sender: TObject);
begin
  N119.Click;
end;

procedure Tfrm_mbbj.N147Click(Sender: TObject);
begin
  N120.Click;
end;

procedure Tfrm_mbbj.aaa1Click(Sender: TObject);
begin
  N150.Click;
end;

procedure Tfrm_mbbj.Action1Execute(Sender: TObject);
begin
  EMRPad301.EditCopy;
end;

procedure Tfrm_mbbj.closeButtonClick(Sender: TObject);
begin
  if p_ysbj = '1' then
  begin
    frm_dzbl_yszddr.qry_cx.Locate('ysmc', s_ysmc, []);
    frm_dzbl_yszddr.DBGridEh1.Enabled := True;
    frm_mbbj.Visible := false;
    frm_mbbj.Visible := True;
    frm_dzbl_yszddr.DBGridEh1.Color := clWindow;
  end
  else
  begin
    EMRPad301.universalboolfunction('', '', 53, 0);
    EMRPad301.UniversalStringFunction('-1', '-1', '-1', '-1', '-1', '6');
    close;
  end;
end;

procedure Tfrm_mbbj.N13Click(Sender: TObject);
var
  stream: TADOBlobStream;
  streamhtml: TFileStream;
  filename, mbmc: string;
  i: Integer;

begin
  if p_ysbj = '1' then
  begin
    if zt = 'edit' then
    begin
      dm_data.qry_pub.close;
      dm_data.qry_pub.SQL.text := 'select * from sys_dzbl_ysb where zyh=' + '''' + p_zyh + '''' + ' and ysmc=' + '''' +
        p_ysmc + '''';
      dm_data.qry_pub.Open;
      if dm_data.qry_pub.IsEmpty then
        dm_data.qry_pub.Append
      else
        dm_data.qry_pub.Edit;
      dm_data.qry_pub.FieldByName('zyh').AsString := p_zyh;
      dm_data.qry_pub.FieldByName('ysmc').AsString := p_ysmc;
      EMRPad301.universalboolfunction('', '', 53, 0);
      EMRPad301.UniversalStringFunction('-1', '-1', '-1', '-1', '-1', '6');
      filename := GetCurrentDir + '\' + 'emrtemp.emk';
      EMRPad301.FileSaveAs(FileName, 2, 0);
      try
        stream := TADOBlobStream.Create(dm_data.qry_pub.FieldByName('ysnr') as TBlobField, bmWrite);
        stream.LoadFromFile(filename);
      finally
        stream.Free;
      end;
      filename := GetCurrentDir + '\' + 'stemp';
      EMRPad301.FileSaveAs(FileName + 'html', 5, 0);
      streamhtml := TFileStream.Create(filename + 'html', fmOpenRead);
      Memo1.Lines.LoadFromStream(streamhtml);
      while Pos(#13#10, Memo1.text) > 0 do
      begin
        Memo1.text := Copy(Memo1.text, 1, Pos(#13#10, Memo1.text) - 1) + '     ' +
          Copy(Memo1.text, Pos(#13#10, Memo1.text) + 2);
      end;
      dm_data.qry_pub.FieldByName('nrtext').AsString := Trim(Memo1.Text);
      dm_data.qry_pub.Post;
      dm_data.qry_pub.UpdateBatch(arall);
      streamhtml.Free;
      frm_dzbl_yszddr.DBGridEh1.Enabled := True;
      frm_dzbl_yszddr.DBGridEh1.Color := clWindow;
      frm_dzbl_yszddr.qry_cx.Locate('ysmc', s_ysmc, []);


    end;


  end
  else
  begin

    application.CreateForm(Tfrm_savemb, frm_savemb);
    try
      frm_savemb.ShowModal;
    finally
      frm_savemb.free;
    end;
  end;

end;

procedure Tfrm_mbbj.OpenButtonClick(Sender: TObject);
begin
  N12.Click;
end;

procedure Tfrm_mbbj.PrintButtonClick(Sender: TObject);
begin
  N17.Click;
end;

procedure Tfrm_mbbj.CopyButtonClick(Sender: TObject);
begin
  N28.Click;
end;

procedure Tfrm_mbbj.CutButtonClick(Sender: TObject);
begin
  N30.Click;
end;

procedure Tfrm_mbbj.PasteButtonClick(Sender: TObject);
begin
  N29.Click;
end;

procedure Tfrm_mbbj.deleteButtonClick(Sender: TObject);
begin
  N119.Click;
end;

procedure Tfrm_mbbj.UndoButtonClick(Sender: TObject);
begin
  N25.Click;
end;

procedure Tfrm_mbbj.zfExecute(Sender: TObject);
begin
  EMRPad301.EditPaste;
end;

procedure Tfrm_mbbj.ToolButton1Click(Sender: TObject);
begin
  N26.Click;
end;

procedure Tfrm_mbbj.SaveButtonClick(Sender: TObject);
begin
  N13.Click;
end;

procedure Tfrm_mbbj.EMRPad301SelectKeyword(Sender: TObject);
var
  ls_keyword: string;
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
begin
  filename := GetCurrentDir + '\ktemp.emk';
  ls_keyword := EMRPad301.GetFieldText(-1, -1, -1, -1, True);
  qry_keyword.Close;
  qry_keyword.Parameters.ParamByName('mbmc').Value := trim(ls_keyword);
  qry_keyword.Open;
  if not qry_keyword.IsEmpty then
  begin
    try
      stream := TADOBlobStream.Create(qry_keyword.FieldByName('mbwj') as TBlobField, bmRead);
      stream.Position := 0;
      stream1 := TFileStream.Create(filename, fmCreate);
      stream1.Position := 0;
      stream1.CopyFrom(stream, stream.Size);
    finally
      stream1.Free;
      stream.Free;
    end;
    EMRPad301.FileInsert(filename, 0);
  end;
end;

procedure Tfrm_mbbj.N148Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 42, 0);
  application.MessageBox('模板设成自由改写状态!', '提示', 0 + 48);
end;

procedure Tfrm_mbbj.N149Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('', '', 38, 0);
end;

procedure Tfrm_mbbj.ToolButton4Click(Sender: TObject);
begin
  N36.Click;
end;

procedure Tfrm_mbbj.ToolButton2Click(Sender: TObject);
begin
  N35.Click;
end;

procedure Tfrm_mbbj.ToolButton12Click(Sender: TObject);
begin
  N11.Click;
end;

procedure Tfrm_mbbj.ToolButton13Click(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('姓名', 'aaa', 35, 2);
end;

procedure Tfrm_mbbj.ToolButton3Click(Sender: TObject);
begin
  N44.Click;
end;

procedure Tfrm_mbbj.ToolButton6Click(Sender: TObject);
begin
  N42.Click;
end;

procedure Tfrm_mbbj.ToolButton7Click(Sender: TObject);
begin
  N63.Click;
end;

procedure Tfrm_mbbj.ToolButton8Click(Sender: TObject);
begin
  N16.Click;
end;

procedure Tfrm_mbbj.ToolButton9Click(Sender: TObject);
begin
  N150.Click;
end;

procedure Tfrm_mbbj.N41Click(Sender: TObject);
begin
  EMRPad301.insertfield('aa', 'ggg', 1, 2, 0);
end;


end.
