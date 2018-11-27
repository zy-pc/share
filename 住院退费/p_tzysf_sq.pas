unit p_tzysf_sq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  Menus;

type
  TFrm_tzysf_sq = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    sp_in_tzysf: TADOStoredProc;
    N2: TMenuItem;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    zyh: string;
    tffs:string;
    { Private declarations }
    function zysf_tfy(id, zy_zyh, czydm, zy_fydm: string; zy_fysl: integer;
  zy_tfje, zy_zfje: double): string;
  public
    { Public declarations }
    procedure Show(zyh: string;tffs:string='2'); overload;
  end;

var
  Frm_tzysf_sq: TFrm_tzysf_sq;

implementation
uses
  p_dm;

{$R *.dfm}

function TFrm_tzysf_sq.zysf_tfy(id, zy_zyh, czydm, zy_fydm: string; zy_fysl: integer;
  zy_tfje, zy_zfje: double): string;
begin
  with sp_in_tzysf do
  begin
    active := false;
    parameters.Refresh;
    parameters.ParamByName('@id').value := id;
    parameters.ParamByName('@zyh').value := zy_zyh;
    parameters.ParamByName('@czydm').value := czydm;
    parameters.ParamByName('@fydm').value := zy_fydm;
    parameters.ParamByName('@fysl').value := zy_fysl;
    parameters.ParamByName('@tfje').value := zy_tfje;
    parameters.ParamByName('@zfje').value := zy_zfje;
    parameters.ParamByName('@sczt').value := '0';
    execproc;
  end;
  result := sp_in_tzysf.parameters.ParamByName('@sczt').value;
end;

procedure TFrm_tzysf_sq.N1Click(Sender: TObject);
begin
  if ADOQuery1.FieldByName('zt').AsString<>'待审批' then
  begin
    Application.MessageBox('单据已处理过！', '错误', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  if Application.MessageBox('确定作废此申请？', '退费', MB_OKCANCEL +
    MB_ICONQUESTION) = IDOK then
  begin
    dm_data.qry_pub1.Close;
    dm_data.qry_pub1.SQL.Text := 'update zysf_tfsq set zfbz=1,zfrq=getdate(),zfczy=''' +
      pub_czydm + ''' where id=' + ADOQuery1.FieldByName('id').AsString;
    dm_data.qry_pub1.ExecSQL;
    Application.MessageBox('作废申请成功！', '退费', MB_OK + MB_ICONINFORMATION);
    FormShow(nil);
  end;
end;

procedure TFrm_tzysf_sq.N2Click(Sender: TObject);
var
  revalue:string;
begin
  if ADOQuery1.FieldByName('zt').AsString<>'待审批' then
  begin
    Application.MessageBox('单据已处理过！', '错误', MB_OK + MB_ICONSTOP);
    Exit;
  end;

  if Application.MessageBox('确定要退费吗？', '退费', MB_OKCANCEL +
    MB_ICONQUESTION) = IDOK then
  begin
    revalue := zysf_tfy(ADOQuery1.FieldByName('fyid').AsString,
        ADOQuery1.FieldByName('zyh').AsString,
        ADOQuery1.FieldByName('sqczy').AsString,
        ADOQuery1.FieldByName('fydm').AsString,
        ADOQuery1.FieldByName('fysl').AsInteger,
        ADOQuery1.FieldByName('fyje').AsFloat,
        ADOQuery1.FieldByName('fyje').AsFloat);
    if revalue <> '1' then
    begin
      application.MessageBox(PChar('没有成功保存！' + #13 + revalue), '提示', 16);
    end else begin
      dm_data.qry_pub1.Close;
      dm_data.qry_pub1.SQL.Text := 'update zysf_tfsq set pzbz=1,pzrq=getdate(),pzczy=''' +
        pub_czydm + ''' where id=' + ADOQuery1.FieldByName('id').AsString;
      dm_data.qry_pub1.ExecSQL;

      Application.MessageBox('退费成功？', '提示', MB_OK + 
        MB_ICONINFORMATION);
      FormShow(nil);  
    end;
  end;
end;

procedure TFrm_tzysf_sq.PopupMenu1Popup(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to PopupMenu1.Items.Count - 1 do
  begin
    PopupMenu1.Items[i].Visible :=False;
    PopupMenu1.Items[i].Enabled := True;
  end;
  if not(ADOQuery1.Active and (ADOQuery1.RecordCount=0)) then
  begin
    n1.Visible := True;
    if tffs='1' then
      n2.Visible := true;
  end;

  if ADOQuery1.FieldByName('zt').AsString<>'待审批' then
  begin
    for I := 0 to PopupMenu1.Items.Count - 1 do
    begin
      PopupMenu1.Items[i].Enabled := False;
    end;
  end;
end;

procedure TFrm_tzysf_sq.Show(zyh: string;tffs:string='2');
begin
  Self.zyh := zyh;
  Self.tffs := tffs;
  Self.Show;
end;

procedure TFrm_tzysf_sq.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[3]='已通过' then
  begin
    ACanvas.Canvas.Brush.Color:=clGreen;
    ACanvas.Canvas.Font.Color:=clWhite;
  end else if AViewInfo.GridRecord.Values[3]='已作废' then
  begin
    ACanvas.Canvas.Brush.Color:=clMaroon;
    ACanvas.Canvas.Font.Color:=clWhite;
  end;
end;

procedure TFrm_tzysf_sq.FormShow(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'exec zysf_cx_tzysf_sq ''' + zyh + '''';
  ADOQuery1.Open;
end;

end.

