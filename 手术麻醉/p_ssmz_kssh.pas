unit p_ssmz_kssh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  ComCtrls, StdCtrls, ADODB,p_dm, Menus, cxCheckBox;

type
  Tfrm_ssmz_kssh = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    Button1: TButton;
    dtp: TDateTimePicker;
    qry_sssq: TADOQuery;
    ds_ssap: TDataSource;
    btn_save: TButton;
    btn_edit: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    cxGrid1DBTableView1Column12: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ssmz_kssh: Tfrm_ssmz_kssh;

implementation

{$R *.dfm}

procedure Tfrm_ssmz_kssh.Button1Click(Sender: TObject);
begin
  qry_sssq.close;
  qry_sssq.SQL.text:='select a.*,b.mc ksmc from bqgl_ssap a,sys_ksdm b where '+
                     'a.zyks=b.dm and CONVERT(char(8),sssj,112)='''+
                     FormatDateTime('yyyyMMdd',dtp.DateTime)+''' and a.zyks='''+
                     pub_ksdm+''' order by ssj,sssx';
  qry_sssq.Open;
end;

procedure Tfrm_ssmz_kssh.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[0]=true then
    ACanvas.Canvas.Brush.Color:=clLime;

end;

procedure Tfrm_ssmz_kssh.FormShow(Sender: TObject);
begin
  dtp.Date:=Date;
  btn_save.Enabled := False;
  (cxGrid1.Views[0] as TcxGridDBTableView).OptionsData.Editing := False;  
end;

procedure Tfrm_ssmz_kssh.N1Click(Sender: TObject);
begin
  qry_sssq.Edit;
  qry_sssq.FieldByName('xsbz').Value := true;
  qry_sssq.Post;
  qry_sssq.UpdateBatch(arAll);
end;

procedure Tfrm_ssmz_kssh.N3Click(Sender: TObject);
begin
  qry_sssq.First;
  while not qry_sssq.Eof do begin
    qry_sssq.Edit;
    qry_sssq.FieldByName('xsbz').Value := true;
    qry_sssq.Post;
    qry_sssq.Next;
  end;
  qry_sssq.UpdateBatch(arAll);
end;

procedure Tfrm_ssmz_kssh.N4Click(Sender: TObject);
begin
  qry_sssq.Edit;
  qry_sssq.FieldByName('xsbz').Value := False;
  qry_sssq.Post;
  qry_sssq.UpdateBatch(arAll);
end;

procedure Tfrm_ssmz_kssh.btn_saveClick(Sender: TObject);
begin
  qry_sssq.UpdateBatch(arAll);

  Application.MessageBox('保存成功！', '提示', MB_OK + MB_ICONINFORMATION);

  (cxGrid1.Views[0] as TcxGridDBTableView).OptionsData.Editing := False;
  btn_edit.Enabled := True;
  btn_save.Enabled := False;
  PopupMenu1.AutoPopup:=True;
  dtp.Enabled:=True;
end;

procedure Tfrm_ssmz_kssh.btn_editClick(Sender: TObject);
begin
  if dtp.Date < date then begin
    Application.MessageBox('不能修改往日的手术！', '提示', MB_OK + 
      MB_ICONSTOP);
    exit;
  end;
  (cxGrid1.Views[0] as TcxGridDBTableView).OptionsData.Editing := True;
  btn_edit.Enabled := False;
  btn_save.Enabled := True;
  dtp.Enabled:=false;
  PopupMenu1.AutoPopup:=False;
end;

end.
