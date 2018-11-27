unit DY_ResultFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  ADODB, StdCtrls, Buttons;

type
  TResult_frm = class(TForm)
    pnl1: TPanel;
    cxgrdbtblvwResult: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdResult: TcxGrid;
    dsResult: TDataSource;
    ADOdsResult: TADODataSet;
    btnPrView: TBitBtn;
    btnDesign: TBitBtn;
    btnPrint: TBitBtn;
    procedure btnPrViewClick(Sender: TObject);
    procedure btnDesignClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
    fSql: string;
    function GetField: string;
    procedure ShowGrid;
  public
    { Public declarations }
  end;
procedure ShowResult(sSql: string);
implementation
uses DY_PublicUnit, p_tycxsz,DY_Printfrm;
{$R *.dfm}

procedure ShowResult(sSql: string);
var
  Result_frm: TResult_frm;
begin
  Result_frm := TResult_frm.Create(Application);
  with Result_frm do
  begin
    fSql := sSql;
    ShowGrid;
    ShowModal;
    Free;
  end;
end;

procedure TResult_frm.btnPrViewClick(Sender: TObject);
begin
 PrintGrid(frm_tycxsz.SelectNode.Text,frm_tycxsz.SelectTableName,cxgrdbtblvwResult,frm_tycxsz.SelectQuyIndex,1);
end;

procedure TResult_frm.btnDesignClick(Sender: TObject);
begin
 PrintGrid(frm_tycxsz.SelectNode.Text,frm_tycxsz.SelectTableName,cxgrdbtblvwResult,frm_tycxsz.SelectQuyIndex,2);
end;

procedure TResult_frm.btnPrintClick(Sender: TObject);
begin
 PrintGrid(frm_tycxsz.SelectNode.Text,frm_tycxsz.SelectTableName,cxgrdbtblvwResult,frm_tycxsz.SelectQuyIndex,3);
end;

function TResult_frm.GetField: string;
begin
  Result := '';
  if frm_tycxsz.SelectField <> '' then
    Result := Result + frm_tycxsz.SelectField;
  if frm_tycxsz.SumField <> '' then
    if Result <> '' then
      Result := Result + ',' + frm_tycxsz.SumField
    else
      Result := Result + frm_tycxsz.SumField;
  if frm_tycxsz.JSField<>'' then
    if Result <> '' then
      Result := Result + ',' + frm_tycxsz.JSField
    else
      Result := Result + frm_tycxsz.JSField;

end;

procedure TResult_frm.ShowGrid;
var
  sFields, sCaption, sWidth, sFieldTemp, sSql, sTable, sZjField: string;
  ADOSetTmp: TADODataSet;
  i: Integer;
begin
  sCaption := '';
  sWidth := '';
  sZjField := frm_tycxsz.ZjField;
  sFields := GetField;
  sTable := frm_tycxsz.SelectTableName;
  ADOSetTmp := TADODataSet.Create(self);
  ADOSetTmp.LockType := ltReadOnly;
  
  for i := 1 to GetCommaStrCount(sFields) + 1 do
  begin
    sFieldTemp := (GetCommaStr(sFields, i));
    sFieldTemp:=Copy(sFieldTemp,2,Length(sFieldTemp)-2);
    sSql := 'Select Zdzwm,Zdkd from sys_tycx_dzb where Bywm=' + '''' + sTable + '''' +
      ' and ' + 'Zdywm=' + '''' + sFieldTemp + '''';
    openDataSet(ADOSetTmp, sSql);
    if not ADOSetTmp.IsEmpty then
      if length(sWidth) = 0 then
      begin
        sWidth := sWidth + ADOSetTmp.fieldByName('Zdkd').AsString;
        sCaption := sCaption + ADOSetTmp.fieldByName('Zdzwm').AsString;
      end
      else
      begin
        sWidth := sWidth + ',' + ADOSetTmp.fieldByName('Zdkd').AsString;
        sCaption := sCaption + ',' + ADOSetTmp.fieldByName('Zdzwm').AsString;
      end;
    ADOSetTmp.Close;
  end;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
  StrToGridField(cxgrdbtblvwResult, sFields, sCaption, sWidth, sZjField);
  ADOdsResult.Connection := ADOConnectionMain;
  ADOdsResult.Close;
  ADOdsResult.CommandText := fSql;
  ADOdsResult.Open;
end;
end.

