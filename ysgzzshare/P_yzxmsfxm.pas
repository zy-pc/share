unit P_yzxmsfxm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Buttons, StdCtrls, cxCheckBox;

type
  Tfrm_yzxmsfxm = class(TForm)
    qry_sfxm: TADOQuery;
    ds_sfxm: TDataSource;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    treKjsfdl: TTreeView;
    Panel1: TPanel;
    gcSfxm: TcxGrid;
    gvSfxm: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    b_AllSelect: TButton;
    btUnSelect: TButton;
    btClear: TButton;
    btExit: TBitBtn;
    btInput: TButton;
    gvSfxmColumn1: TcxGridDBColumn;
    cmd_yzxminput: TADOCommand;
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
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    procedure FormShow(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure treKjsfdlChange(Sender: TObject; Node: TTreeNode);
    procedure b_AllSelectClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure btInputClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations } Getfydm: string;
    pub_key: string;
    dldm: string;
  end;

var
  frm_yzxmsfxm: Tfrm_yzxmsfxm;

implementation
uses p_dm, p_func, p_yzsfxm;
{$R *.dfm}

procedure Tfrm_yzxmsfxm.btExitClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_yzxmsfxm.btInputClick(Sender: TObject);
var
  str: string;
begin
  qry_sfxm.First;
  while not qry_sfxm.Eof do
  begin
    if qry_sfxm.FieldValues['qybz'] then
    begin
      if Length(str) > 0 then
        str := str + ',' + #39 + qry_sfxm.FieldByName('fydm').AsString + #39
      else
        str := #39 + qry_sfxm.FieldByName('fydm').AsString + #39;
    end;
    qry_sfxm.Next;
  end;
  if Length(str) > 0 then
  begin
    cmd_yzxminput.CommandText := 'INSERT INTO sys_yzxm(dldm,xmdm,xmmc,pym,typym,dw,qybz,fydm,mzbz,zybz,zyks,mzks,hotkey) SELECT ' + #39 + frm_yzsfxm.dldm + #39 + ',fydm,' + frm_func.get_wsyjxbmsql('sys_yzxm', 'xmdm', 4) + ',pym,typym,dw,1,fydm,1,1,' + #39 + #39 + ',' + #39 +
      #39 + ',' + #39 + #39 + ' from sys_kjsfxm where fydm in (' + str + ')';
    dm_data.ado_mydata.BeginTrans;
    try
      cmd_yzxminput.Execute;
      dm_data.ado_mydata.CommitTrans;
      qry_sfxm.Requery();
    except
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox('导入数据失败', '提示', 0 + 16);
    end;

  end;
end;

procedure Tfrm_yzxmsfxm.btClearClick(Sender: TObject);
begin
  qry_sfxm.First;
  while not qry_sfxm.Eof do
  begin
    qry_sfxm.Edit;
    qry_sfxm.FieldValues['qybz'] := 0;
    qry_sfxm.Next;
  end;
end;

procedure Tfrm_yzxmsfxm.btUnSelectClick(Sender: TObject);
begin
  qry_sfxm.First;
  while not qry_sfxm.Eof do
  begin
    qry_sfxm.Edit;
    if qry_sfxm.FieldValues['qybz'] then
      qry_sfxm.FieldValues['qybz'] := 0
    else
      qry_sfxm.FieldValues['qybz'] := 1;
    qry_sfxm.Next;
  end;
end;

procedure Tfrm_yzxmsfxm.b_AllSelectClick(Sender: TObject);
begin
  qry_sfxm.First;
  while not qry_sfxm.Eof do
  begin
    qry_sfxm.Edit;
    qry_sfxm.FieldValues['qybz'] := 1;
    qry_sfxm.Next;
  end;
end;

procedure Tfrm_yzxmsfxm.FormShow(Sender: TObject);
var
  sqlstr: string;
const
  zp = '2222';
  zplbdm = 'dm';
  zplbmc = 'mc';
  zptable = 'sys_kjsfdl';
  zptableorder = 'dm';
begin
  sqlstr := 'select * from sys_kjsfdl where left(dm,2)<>' + #39 + '01' + #39 + ' order by dm';
  frm_func.Tree_db_create(treKjsfdl, zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr);
  cxGridDBColumn2.Options.Editing := false;
end;

procedure Tfrm_yzxmsfxm.treKjsfdlChange(Sender: TObject; Node: TTreeNode);
begin
  if treKjsfdl.selected <> nil then begin
    if treKjsfdl.selected.text <> '' then
    begin
      pub_key := trim(treKjsfdl.selected.text);
      pub_key := copy(pub_key, 1, pos('_', pub_key) - 1);
      dldm := pub_key;
      pub_key := copy(pub_key, 1, 2);


      qry_sfxm.close;
      qry_sfxm.Parameters.ParamByName('vdldm').value := dldm + '%';
      qry_sfxm.open;

      qry_sfxm.First;
      while not qry_sfxm.Eof do
      begin
        qry_sfxm.Edit;
        qry_sfxm.FieldValues['qybz'] := 0;
        qry_sfxm.Next;
      end;
      qry_sfxm.First;
    end else begin
      pub_key := '';
    end;

  end;
end;

end.
