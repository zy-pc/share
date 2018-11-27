unit p_print_qxlist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrm_print_qxlist = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    sp_cx_qxlist: TADOStoredProc;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QRShape4: TQRShape;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    qry_czy: TADOQuery;
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSysData1Print(sender: TObject; var Value: string);
    procedure QRLabel12Print(sender: TObject; var Value: string);
    procedure QRLabel3Print(sender: TObject; var Value: string);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText1Print(sender: TObject; var Value: string);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    tmp_dlmc: string;
    tmp_select: integer;
    { Private declarations }
  public
    cx_qxdm, cx_czydm, t_qxdldm: string;
    { Public declarations }
  end;

var
  frm_print_qxlist: Tfrm_print_qxlist;

implementation

uses p_dm;

{$R *.DFM}

procedure Tfrm_print_qxlist.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  j: integer;
begin
  MoreData := True;
  j := 1;
  if sp_cx_qxlist.Eof then
    MoreData := False;
  QRLabel4.Caption := '';
  QRLabel5.Caption := '';
  QRLabel7.Caption := '';
  QRLabel8.Caption := '';

  for j := 1 to 3 do
  begin
    if sp_cx_qxlist.Eof then break;
    case j of
      1: begin
          if (tmp_dlmc = '') or (tmp_dlmc <> trim(sp_cx_qxlist.FieldByName('qxdlmc').asstring)) then
            QrLabel8.Caption := trim(sp_cx_qxlist.FieldByName('qxdlmc').asstring)
          else
            if (Quickrep1.AvailableSpace < 50) and (Quickrep1.QRPrinter.PageNumber > 0) then
              QrLabel8.Caption := trim(sp_cx_qxlist.FieldByName('qxdlmc').asstring)
            else
              QrLabel8.Caption := '';
          if sp_cx_qxlist.FieldByName('syqx').asinteger = 0 then
            QRLabel4.caption := '□ ' + trim(sp_cx_qxlist.FieldByName('qxxlmc').asstring)
          else
            QRLabel4.caption := '√ ' + trim(sp_cx_qxlist.FieldByName('qxxlmc').asstring);
        end;
      2: begin
          if sp_cx_qxlist.FieldByName('syqx').asinteger = 0 then
            QRLabel5.caption := '□ ' + trim(sp_cx_qxlist.FieldByName('qxxlmc').asstring)
          else
            QRLabel5.caption := '√ ' + trim(sp_cx_qxlist.FieldByName('qxxlmc').asstring);
        end;
      3: begin
          if sp_cx_qxlist.FieldByName('syqx').asinteger = 0 then
            QRLabel7.caption := '□ ' + trim(sp_cx_qxlist.FieldByName('qxxlmc').asstring)
          else
            QRLabel7.caption := '√ ' + trim(sp_cx_qxlist.FieldByName('qxxlmc').asstring);
        end;
    end;
    QRShape1.Enabled := False;
    tmp_dlmc := trim(sp_cx_qxlist.FieldByName('qxdlmc').asstring);
    sp_cx_qxlist.Next;

    if tmp_dlmc <> trim(sp_cx_qxlist.FieldByName('qxdlmc').asstring) then
    begin
      QRShape1.Enabled := True;
      break;
    end;
    if sp_cx_qxlist.Eof then
      QRShape1.Enabled := True;
  end;
end;

procedure Tfrm_print_qxlist.QRSysData1Print(sender: TObject; var Value: string);
begin
  value := '打印时间：' + value;
end;

procedure Tfrm_print_qxlist.QRLabel12Print(sender: TObject; var Value: string);
begin
//  if trim(sp_cx_qxlist.FieldByName('ksmc').asstring) <> '' then
//  if Value = QRLabel12.Caption then
//    value := '所在科室：' + sp_cx_qxlist.FieldByName('ksmc').asstring;
end;

procedure Tfrm_print_qxlist.QRLabel3Print(sender: TObject;
  var Value: string);
begin
//  if trim(sp_cx_qxlist.FieldByName('czyxm').asstring) <> '' then
//  if Value = QRLabel3.Caption then
//    value := '被授权操作员：' + sp_cx_qxlist.FieldByName('czyxm').asstring;
end;

procedure Tfrm_print_qxlist.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  t_qxdldm := '';
  tmp_select := 0;
  ADOQuery1.close;
  ADOQuery1.open;
  if frm_print_qxlist.tag = 0 then
  begin
    ADOQuery1.filter := ' qxdldm=''' + cx_qxdm + '''';
    ADOQuery1.filtered := True;
  end
  else
    ADOQuery1.filtered := False;

end;

procedure Tfrm_print_qxlist.QRDBText1Print(sender: TObject;
  var Value: string);
begin
  Value := '系统功能模块:' + value;
end;

procedure Tfrm_print_qxlist.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  tmp_dlmc := '';
  sp_cx_qxlist.Close;
  if frm_print_qxlist.Tag <> 0 then
    cx_qxdm := ADOQuery1.fieldbyname('qxdldm').AsString;
  sp_cx_qxlist.Parameters.ParamByName('@qxdldm').value := cx_qxdm; //模块或权限大类代码
  sp_cx_qxlist.Parameters.ParamByName('@czydm').value := cx_czydm; // 操作员代码
  sp_cx_qxlist.open;
  if sp_cx_qxlist.RecordCount > 0 then
  begin
    QRGroup1.Enabled := True;
    if Trim(sp_cx_qxlist.FieldByName('ksmc').asstring) <> '' then
      QRLabel12.Caption := '所在科室：' + sp_cx_qxlist.FieldByName('ksmc').asstring;
    if Trim(sp_cx_qxlist.FieldByName('czyxm').asstring) <> '' then
      QRLabel3.Caption := '被授权操作员：' + sp_cx_qxlist.FieldByName('czyxm').asstring;
    sp_cx_qxlist.Filter := 'syqx=1 ';
    sp_cx_qxlist.Filtered := True;
    if frm_print_qxlist.Tag = 0 then
      tmp_select := sp_cx_qxlist.RecordCount
    else
      if t_qxdldm <> cx_qxdm then
      begin
        tmp_select := tmp_select + sp_cx_qxlist.RecordCount;
        QrLabel11.Caption := '    被授予权限：' + inttostr(tmp_select) + '项';
      end;
    if frm_print_qxlist.Tag = 0 then
    begin
      sp_cx_qxlist.Filtered := False;
      QrLabel11.Caption := '权限总数：' + inttostr(sp_cx_qxlist.RecordCount) + '项，被授予权限：' + inttostr(tmp_select) + '项';
      QrLabel1.Caption := sp_cx_qxlist.fieldbyname('mkmc').asstring + '权限审批表';
    end;
    if frm_print_qxlist.Tag <> 0 then
    begin
      QrLabel1.Caption := '医院信息系统权限审批表';
      sp_cx_qxlist.Filter := 'syqx=1 ';
      sp_cx_qxlist.Filtered := True;
    end;
    sp_cx_qxlist.First;
    t_qxdldm := ADOQuery1.fieldbyname('qxdldm').AsString;
  end
  else
    QRGroup1.Enabled := False;
end;

end.
