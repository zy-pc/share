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
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSysData1Print(sender: TObject; var Value: string);
    procedure QRLabel12Print(sender: TObject; var Value: string);
    procedure QRLabel11Print(sender: TObject; var Value: string);
    procedure QRLabel3Print(sender: TObject; var Value: string);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    tmp_dlmc: string;
    tmp_select: integer;
    { Private declarations }
  public
    cx_qxdm, cx_czydm: string;
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
  if (sp_cx_qxlist.Eof) then
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
  if trim(sp_cx_qxlist.FieldByName('ksmc').asstring) <> '' then
    value := '所在科室：' + sp_cx_qxlist.FieldByName('ksmc').asstring;
end;

procedure Tfrm_print_qxlist.QRLabel11Print(sender: TObject; var Value: string);
begin
  value := '模块权限数：' + inttostr(sp_cx_qxlist.RecordCount) + '项，被授予权限：' + inttostr(tmp_select) + '项';
end;

procedure Tfrm_print_qxlist.QRLabel3Print(sender: TObject;
  var Value: string);
begin
  if trim(sp_cx_qxlist.FieldByName('czyxm').asstring) <> '' then
    value := '被授权操作员：' + sp_cx_qxlist.FieldByName('czyxm').asstring;
end;

procedure Tfrm_print_qxlist.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  tmp_dlmc := '';
  tmp_select := 0;
  sp_cx_qxlist.Close;
  sp_cx_qxlist.Parameters.ParamByName('@qxdldm').value := cx_qxdm; //模块或权限大类代码
  sp_cx_qxlist.Parameters.ParamByName('@czydm').value := cx_czydm; // 操作员代码
  sp_cx_qxlist.open;
  if sp_cx_qxlist.RecordCount > 0 then
  begin
    sp_cx_qxlist.Filter := 'syqx=1';
    sp_cx_qxlist.Filtered := True;
    tmp_select := sp_cx_qxlist.RecordCount;
    sp_cx_qxlist.Filtered := False;
    sp_cx_qxlist.First;
    QrLabel1.Caption := sp_cx_qxlist.fieldbyname('mkmc').asstring + '权限审批表';
    QrLabel11.Caption := '权限总数：' + inttostr(sp_cx_qxlist.RecordCount) + '项，被授予权限：' + inttostr(tmp_select) + '项';
  end;
end;

end.
