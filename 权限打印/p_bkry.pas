unit p_bkry;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, Db, ADODB;

type
  Tfrm_bkry = class(TForm)
    DBGridEh1: TDBGridEh;
    pnl1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    bt_cx: TBitBtn;
    bt_print: TBitBtn;
    bt_close: TBitBtn;
    ds1: TDataSource;
    qry1: TADOQuery;
    qry_ksdm: TADOQuery;
    procedure bt_closeClick(Sender: TObject);
    procedure bt_printClick(Sender: TObject);
    procedure bt_cxClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    ksdm: string;
  public
    { Public declarations }
  end;

var
  frm_bkry: Tfrm_bkry;

implementation

uses p_print_qxlist, p_dm;

{$R *.DFM}

procedure Tfrm_bkry.bt_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_bkry.bt_printClick(Sender: TObject);
begin
  Application.createform(Tfrm_print_qxlist, frm_print_qxlist);
  try
    frm_print_qxlist.cx_qxdm := Copy(username, 5, 100);
    frm_print_qxlist.cx_czydm := qry1['dm'];
    frm_print_qxlist.QuickRep1.Preview;
  finally
    frm_print_qxlist.free;
  end;
end;

procedure Tfrm_bkry.bt_cxClick(Sender: TObject);
var
  ss: string;
begin
  if Trim(Edit1.Text) <> '' then
    ss := 'and (a.dm=''' + Trim(Edit1.Text) + ''' or a.mc like ''' + Trim(Edit1.Text)
      + '%' + ''' or a.pym like ''' + '%' + Trim(Edit1.Text) + '%' + ''')'
  else
    ss := '';
  qry1.Close;
  qry1.SQL.Clear;
  qry1.SQL.Add('select a.dm,a.mc,a.pym,isnull(a.czje,0.00) czje,a.sybz,a.ysbz,'
    + 'a.cfbz,a.mzcfbz,RTRIM(b.mc) zwmc,RTRIM(c.mc) zcmc from sys_czy a,sys_zwdm b,sys_zcdm c ');
  qry1.SQL.Add(' where a.ksdm=''' + ksdm + ''' and a.txbz=0 and a.zwbm*=b.dm and a.zcdm*=c.dm ');
  if ss <> '' then
    qry1.SQL.Add(ss);
  qry1.Open;
  DBGridEh1.SetFocus;
end;

procedure Tfrm_bkry.FormShow(Sender: TObject);
begin
  qry_ksdm.Close;
  qry_ksdm.Parameters.ParamByName('dm').Value := Trim(pub_czydm);
  qry_ksdm.Open;
  ksdm := qry_ksdm.FieldByName('ksdm').AsString;
  bt_cx.Click;
end;

procedure Tfrm_bkry.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then bt_cx.Click;
end;

end.
