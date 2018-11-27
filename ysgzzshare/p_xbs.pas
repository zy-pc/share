unit p_xbs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxLabel, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ADODB;

type
  Tfrm_xbs = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lr: TcxButton;
    cxButton2: TcxButton;
    ed_xbs: TEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    p_brjbxx: TPanel;
    xg: TcxButton;
    bc: TcxButton;
    sc: TcxButton;
    qry_xbs: TADOQuery;
    ds_xbs: TDataSource;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1czys: TcxGridDBColumn;
    cxGrid1DBTableView1czks: TcxGridDBColumn;
    cxGrid1DBTableView1nr: TcxGridDBColumn;
    cxGrid1DBTableView1czrq: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
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
    lab_xbs: TcxLabel;
    fq: TcxButton;
    qry_xg: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure lrClick(Sender: TObject);
    procedure bcClick(Sender: TObject);
    procedure ed_xbsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure xgClick(Sender: TObject);
    procedure scClick(Sender: TObject);
    procedure fqClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    xbs_tmh, xbs_brxm, xbs_brxb, xbs_brnl: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_xbs: Tfrm_xbs;
procedure proc_show_xbs(const v_tmh, v_brxm, v_brxb, v_brnl: string);

implementation
uses p_dm, p_func;
{$R *.dfm}

procedure proc_show_xbs(const v_tmh, v_brxm, v_brxb, v_brnl: string);
begin
  try
    application.CreateForm(TFrm_xbs, Frm_xbs);
    Frm_xbs.xbs_tmh := v_tmh;
    Frm_xbs.xbs_brxm := v_brxm;
    Frm_xbs.xbs_brxb := v_brxb;
    Frm_xbs.xbs_brnl := v_brnl;
    Frm_xbs.ShowModal;
  finally
    Frm_xbs.free;
  end;
end;

procedure Tfrm_xbs.lrClick(Sender: TObject);
begin
  if not qry_xbs.Active then
  begin
    qry_xbs.Close;
    qry_xbs.Parameters.ParamByName('tmh').Value := xbs_tmh;
    qry_xbs.Open;
  end;
  qry_xbs.Append;
  qry_xbs.FieldByName('tmh').AsString := xbs_tmh;
  qry_xbs.FieldByName('czys').AsString := pub_czydm;
  qry_xbs.FieldByName('czks').AsString := pub_ksdm;
  qry_xbs.FieldByName('czrq').AsDateTime := Frm_func.curr_date;
  ed_xbs.Enabled := True;
  bc.Enabled := True;
  fq.Enabled := True;
  ed_xbs.SetFocus;
end;

procedure Tfrm_xbs.scClick(Sender: TObject);
begin
  if not qry_xbs.Active then
  begin
    qry_xbs.Close;
    qry_xbs.Parameters.ParamByName('tmh').Value := xbs_tmh;
    qry_xbs.Open;
  end;
  if qry_xbs.RecordCount > 0 then
  begin
    if qry_xbs.FieldByName('czys').AsString <> pub_czydm then
    begin
      Application.MessageBox('该条病史不是您录入的,您无权删除!!!', '提示:', 0 + 48);
      lr.Enabled := True;
      lr.SetFocus;
    end
    else
      if Application.MessageBox(PChar('您将删除 ' + xbs_brxm + ' ' +
        qry_xbs.FieldByName('czrq').AsString + ' 的病史信息' + #13 + '此次操作不可恢复!!!确定继续吗?'),
        '提示', 4 + 256 + 32) = 6 then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'delete from sys_kyh_xbs where id=' + qry_xbs.FieldByName('id').asstring;
        DM_data.qry_pub.ExecSQL;
        qry_xbs.Close;
        qry_xbs.Parameters.ParamByName('tmh').Value := xbs_tmh;
        qry_xbs.Open;
        //qry_xbs.UpdateBatch( );
      end;
  end;
end;

procedure Tfrm_xbs.xgClick(Sender: TObject);
begin
  if not qry_xbs.Active then
  begin
    qry_xbs.Close;
    qry_xbs.Parameters.ParamByName('tmh').Value := xbs_tmh;
    qry_xbs.Open;
  end;
  if qry_xbs.FieldByName('czys').AsString <> pub_czydm then
  begin
    Application.MessageBox('该条病史不是您录入的,您无权删除!!!', '提示:', 0 + 48);
    lr.Enabled := True;
    lr.SetFocus;
  end
  else
  begin
    qry_xg.Close;
    qry_xg.SQL.Text := 'select * from sys_kyh_xbs where id=' + qry_xbs.FieldByName('id').AsString;
    qry_xg.Open;

    ed_xbs.Text := qry_xg.FieldByName('nr').AsString;
    qry_xg.Edit;
    ed_xbs.Enabled := True;
    ed_xbs.SetFocus;
  end;
end;

procedure Tfrm_xbs.bcClick(Sender: TObject);
begin
  if Trim(ed_xbs.Text) = '' then
  begin
    Application.MessageBox('请先录入现病史!!!', '提示:', 0 + 48);
    ed_xbs.SetFocus;
  end
  else
  begin
    //try
    if qry_xg.Active then
    begin
      qry_xg.FieldByName('nr').AsString := Trim(ed_xbs.Text);
      qry_xg.Post;
      qry_xg.UpdateBatch(arAll);
      qry_xbs.Close;
      qry_xbs.Open;
    end
    else
    begin
      qry_xbs.FieldByName('nr').AsString := Trim(ed_xbs.Text);
      qry_xbs.Post;
      qry_xbs.UpdateBatch(arAll);
    end;
    //except
    //  Application.MessageBox( '数据保存失败!!!', '错误:', 0 + 48 );
    //  ed_xbs.SetFocus;
    //end;
    frm_xbs.FormShow(Sender);
  end;
end;

procedure Tfrm_xbs.cxButton2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_xbs.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if not qry_xbs.Active then
  begin
    qry_xbs.Close;
    qry_xbs.Parameters.ParamByName('tmh').Value := xbs_tmh;
    qry_xbs.Open;
  end;
  ed_xbs.Text := qry_xbs.FieldByName('nr').AsString;

end;

procedure Tfrm_xbs.ed_xbsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Trim(ed_xbs.Text) = '' then
    bc.Enabled := False
  else
    bc.Enabled := True;
end;

procedure Tfrm_xbs.FormShow(Sender: TObject);
begin
  lab_xbs.Caption := '病员编号:' + xbs_tmh + ';姓名:' + xbs_brxm + ';性别:' + xbs_brxb + ';年龄:' + xbs_brnl;
  qry_xbs.Close;
  qry_xbs.Parameters.ParamByName('tmh').Value := xbs_tmh;
  qry_xbs.Open;
  if qry_xbs.RecordCount > 0 then
  begin
    xg.Enabled := True;
    sc.Enabled := True;
  end
  else
  begin
    xg.Enabled := False;
    sc.Enabled := False;
  end;
  ed_xbs.Enabled := False;
  bc.Enabled := False;
  fq.Enabled := False;
  lr.Enabled := True;
  lr.SetFocus;
end;

procedure Tfrm_xbs.fqClick(Sender: TObject);
begin
  frm_xbs.FormShow(Sender);
end;

end.
