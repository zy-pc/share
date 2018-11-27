unit p_dzbl_yszddr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, EMRPAD30Lib_TLB, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB,
  ADODB, DBGridEhGrouping;

type
  Tfrm_dzbl_yszddr = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    qry_cx: TADOQuery;
    ds_cx: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    p_zyh: string;
    { Public declarations }
  end;

var
  frm_dzbl_yszddr: Tfrm_dzbl_yszddr;
  s_ysmc: string;

implementation

{$R *.dfm}

uses p_mbbj, p_dm, p_func, p_savemb;

procedure Tfrm_dzbl_yszddr.DBGridEh1DblClick(Sender: TObject);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename, mbdm: string;
  //frm:Tfrm_mbbj;
begin
  s_ysmc := qry_cx.FieldByName('ysmc').AsString;
  filename := GetCurrentDir + '\emrtemp';
  editmode := 'edit';
  try
    stream := TADOBlobStream.Create(qry_cx.FieldByName('ysnr') as TBlobField, bmRead);
    stream.Position := 0;
    stream1 := TFileStream.Create(filename, fmCreate);
    stream1.Position := 0;
    stream1.CopyFrom(stream, stream.Size);
  finally
    stream1.Free;
    stream.Free;
  end;
  if Panel2.ControlCount < 1 then
  begin
    qry_cx.Close;
    qry_cx.SQL.text := 'select a.ysmc,b.ysnr,b.xmlnr,' +
      'case when isnull(b.zyh,''未录入'')=''未录入'' then ''未录入'' else ''已录入'' end' +
      ' sflr from sys_dzbl_dyys a,sys_dzbl_ysb b' +
      ' where a.ysmc*=b.ysmc and b.zyh=' + '''' +
      p_zyh + '''';
    qry_cx.Open;
    qry_cx.Locate('ysmc', s_ysmc, []);
    frm_mbbj := Tfrm_mbbj.Create(self);
    frm_mbbj.Parent := Panel2;
    frm_mbbj.p_ysbj := '1';
    frm_mbbj.zt := 'edit';
    if qry_cx.FieldByName('ysnr').AsString <> '' then
    begin
      pub_filename := qry_cx.FieldByName('ysmc').AsString;
    end
    else
    begin
      pub_filename := '';
    end;
    frm_mbbj.p_ysmc := qry_cx.FieldByName('ysmc').asstring;
    frm_mbbj.p_zyh := p_zyh;
    frm_mbbj.BorderStyle := bsnone;
    frm_mbbj.Width := Panel2.Width;
    frm_mbbj.Align := alClient;
    frm_mbbj.Height := Panel2.Height;
    frm_mbbj.Position := poDefault;
    frm_mbbj.WindowState := wsmaximized;
    frm_mbbj.Visible := True;
    DBGridEh1.SetFocus;
    application.CreateForm(Tfrm_savemb, frm_savemb);
    frm_savemb.Show;
    frm_savemb.Close;
    frm_savemb.free;

  end
  else
  begin
    frm_mbbj.Free;
    qry_cx.Close;
    qry_cx.SQL.text := 'select a.ysmc,b.ysnr,b.xmlnr,' +
      'case when isnull(b.zyh,''未录入'')=''未录入'' then ''未录入'' else ''已录入'' end' +
      ' sflr from sys_dzbl_dyys a,sys_dzbl_ysb b' +
      ' where a.ysmc*=b.ysmc and b.zyh=' + '''' +
      p_zyh + '''';
    qry_cx.Open;
    qry_cx.Locate('ysmc', s_ysmc, []);
    frm_mbbj := Tfrm_mbbj.Create(self);
    frm_mbbj.Parent := Panel2;
    frm_mbbj.p_ysbj := '1';
    frm_mbbj.zt := 'edit';
    if qry_cx.FieldByName('ysnr').AsString <> '' then
    begin
      pub_filename := qry_cx.FieldByName('ysmc').AsString;
    end
    else
    begin
      pub_filename := '';
    end;
    frm_mbbj.p_ysmc := qry_cx.FieldByName('ysmc').asstring;
    frm_mbbj.p_zyh := p_zyh;
    frm_mbbj.BorderStyle := bsnone;
    frm_mbbj.Width := Panel2.Width;
    frm_mbbj.Align := alClient;
    frm_mbbj.Height := Panel2.Height;
    frm_mbbj.Position := poDefault;
    frm_mbbj.WindowState := wsmaximized;
    frm_mbbj.Visible := True;
    DBGridEh1.SetFocus;
    application.CreateForm(Tfrm_savemb, frm_savemb);
    frm_savemb.Show;
    frm_savemb.Close;
    frm_savemb.free;
  end;
  qry_cx.Locate('ysmc', s_ysmc, []);
  DBGridEh1.Enabled := false;
  DBGridEh1.Color := clScrollBar;

end;

procedure Tfrm_dzbl_yszddr.FormShow(Sender: TObject);
//var frm_mbbj:Tfrm_mbbj;
begin
  if Panel2.ControlCount < 1 then
  begin
    qry_cx.Close;
    qry_cx.SQL.text := 'select a.ysmc,b.ysnr,b.xmlnr,' +
      'case when isnull(b.zyh,''未录入'')=''未录入'' then ''未录入'' else ''已录入'' end' +
      ' sflr from sys_dzbl_dyys a,sys_dzbl_ysb b' +
      ' where a.ysmc*=b.ysmc and b.zyh=' + '''' +
      p_zyh + '''';
    qry_cx.Open;
    frm_mbbj := Tfrm_mbbj.Create(self);
    frm_mbbj.Parent := Panel2;
    frm_mbbj.p_ysbj := '1';
    frm_mbbj.BorderStyle := bsnone;
    frm_mbbj.Width := Panel2.Width;
    frm_mbbj.Align := alClient;
    frm_mbbj.Height := Panel2.Height;
    frm_mbbj.Position := poDefault;
    frm_mbbj.WindowState := wsmaximized;
    //frm_mbbj.Visible := True;
    DBGridEh1.SetFocus;
    application.CreateForm(Tfrm_savemb, frm_savemb);
    frm_savemb.Show;
    frm_savemb.Close;
    frm_savemb.free;

  end;

end;

end.
