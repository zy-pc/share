unit P_brbqtz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  cxDropDownEdit, cxCalendar, Menus;

type
  Tfrm_bqbqtz = class(TForm)
    qry_brbq: TADOQuery;
    ds_brbq: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ds_bqtz: TDataSource;
    qry_bqtz: TADOQuery;
    qry_bqtzzyh: TStringField;
    qry_bqtzbrbq: TStringField;
    qry_bqtztmh: TStringField;
    qry_bqtzbrxm: TStringField;
    qry_bqtzbrxb: TStringField;
    qry_bqtzrybq: TStringField;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1brxb: TcxGridDBColumn;
    cxGrid1DBTableView1rybq: TcxGridDBColumn;
    cxGrid1DBTableView1brbq: TcxGridDBColumn;
    qry_bqtzsssj: TDateTimeField;
    qry_bqtzycczsj: TDateTimeField;
    qry_bqtzqjsj: TDateTimeField;
    cxGrid1DBTableView1sssj: TcxGridDBColumn;
    cxGrid1DBTableView1ycczsj: TcxGridDBColumn;
    cxGrid1DBTableView1qjsj: TcxGridDBColumn;
    qry_bqtzbch: TStringField;
    cxGrid1DBTableView1bch: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1brbqPropertiesCloseUp(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView1sssjPropertiesCloseUp(Sender: TObject);
    procedure cxGrid1DBTableView1ycczsjPropertiesCloseUp(Sender: TObject);
    procedure cxGrid1DBTableView1qjsjPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_bqbqtz: Tfrm_bqbqtz;

implementation
 uses p_dm,p_func;
{$R *.dfm}

procedure Tfrm_bqbqtz.cxGrid1DBTableView1brbqPropertiesCloseUp(Sender: TObject);
var
 zkxx:string;
begin
  qry_bqtz.Edit;
  try
    qry_bqtz.Post
  except
    application.MessageBox('其它人在更改此表数据，退出重新设置','提示',0+48);
  end;
  zkxx:=frm_func.func_in_blsjzkmx(trim(qry_bqtz['tmh']),trim(qry_bqtz['zyh']),'8');
  if zkxx<>'1' then
    application.messagebox(pchar(zkxx), '信息', mb_ok + mb_iconinformation);
end;

procedure Tfrm_bqbqtz.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if trim(AViewInfo.RecordViewInfo.GridRecord.Values[5]) = '病危病人' then
  begin
    ACanvas.Font.Color := clRed;
  end;
  if trim(AViewInfo.RecordViewInfo.GridRecord.Values[5]) = '病重病人' then
  begin
    ACanvas.Font.Color := clFuchsia;
  end;

end;

procedure Tfrm_bqbqtz.cxGrid1DBTableView1qjsjPropertiesCloseUp(Sender: TObject);
var
 zkxx:string;
begin
  qry_bqtz.Edit;
  try
    qry_bqtz.Post
  except
    application.MessageBox('其它人在更改此表数据，退出重新设置','提示',0+48);
  end;
  zkxx:=frm_func.func_in_blsjzkmx(trim(qry_bqtz['tmh']),trim(qry_bqtz['zyh']),'9');
  if zkxx<>'1' then
    application.messagebox(pchar(zkxx), '信息', mb_ok + mb_iconinformation);
end;

procedure Tfrm_bqbqtz.cxGrid1DBTableView1sssjPropertiesCloseUp(Sender: TObject);
var
 zkxx:string;
begin
  qry_bqtz.Edit;
  try
    qry_bqtz.Post
  except
    application.MessageBox('其它人在更改此表数据，退出重新设置','提示',0+48);
  end;
  zkxx:=frm_func.func_in_blsjzkmx(trim(qry_bqtz['tmh']),trim(qry_bqtz['zyh']),'6');
  if zkxx<>'1' then
    application.messagebox(pchar(zkxx), '信息', mb_ok + mb_iconinformation);
end;

procedure Tfrm_bqbqtz.cxGrid1DBTableView1ycczsjPropertiesCloseUp(
  Sender: TObject);
var
 zkxx:string;
begin
  qry_bqtz.Edit;
  try
    qry_bqtz.Post
  except
    application.MessageBox('其它人在更改此表数据，退出重新设置','提示',0+48);
  end;
  zkxx:=frm_func.func_in_blsjzkmx(trim(qry_bqtz['tmh']),trim(qry_bqtz['zyh']),'7');
  if zkxx<>'1' then
    application.messagebox(pchar(zkxx), '信息', mb_ok + mb_iconinformation);
end;

procedure Tfrm_bqbqtz.FormShow(Sender: TObject);
begin
  qry_brbq.Close;
  qry_brbq.Parameters.ParamByName('bqdm').Value:=pub_bqdm;
  qry_brbq.Open;
  qry_bqtz.Close;
  qry_bqtz.Parameters.ParamByName('bqdm').Value:=pub_bqdm;
  qry_bqtz.Open;
end;

end.
