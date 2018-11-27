unit p_dzjcsqd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxLabel, ExtCtrls, ComCtrls, DB, ADODB;

type
  Tfrm_dzjcsqd = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    edt_tmh: TcxTextEdit;
    Label2: TLabel;
    edt_xm: TcxTextEdit;
    Label3: TLabel;
    edt_xb: TcxTextEdit;
    Label4: TLabel;
    edt_nl: TcxTextEdit;
    Label5: TLabel;
    edt_dz: TcxTextEdit;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edt_xmmc: TcxTextEdit;
    Label9: TLabel;
    edt_jcbw: TcxTextEdit;
    edt_sqys: TcxTextEdit;
    edt_jcmd: TcxMemo;
    Panel4: TPanel;
    edt_fzjc: TcxMemo;
    cxLabel4: TcxLabel;
    Panel1: TPanel;
    edt_zljg: TcxMemo;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    edt_ct: TcxMemo;
    cxLabel2: TcxLabel;
    Panel3: TPanel;
    edt_zs: TcxMemo;
    cxLabel3: TcxLabel;
    Button1: TButton;
    dtp_jcrq: TDateTimePicker;
    Label6: TLabel;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    zyh: string;
  end;

var
  frm_dzjcsqd: Tfrm_dzjcsqd;

implementation

uses
  p_dm;

{$R *.dfm}

procedure Tfrm_dzjcsqd.Button1Click(Sender: TObject);
begin
  if not ADOQuery1.Active then
  begin
    ADOQuery1.Close;
    ADOQuery1.sql.Text := 'select * from iHisOrder_mz where 1=2';
    ADOQuery1.Open;
  end;

  if ADOQuery1.Locate('yzxm', edt_xmmc.Text, []) then
  begin
    ADOQuery1.Edit;
  end else begin
    ADOQuery1.Append;
  end;

  ADOQuery1.FieldByName('zyh').Value := zyh;

  ADOQuery1.FieldByName('tmh').Value := edt_tmh.Text;
  ADOQuery1.FieldByName('brxm').Value := edt_xm.Text;
  ADOQuery1.FieldByName('brxb').Value := edt_xb.Text;
  ADOQuery1.FieldByName('brnl').Value := edt_nl.Text;
  ADOQuery1.FieldByName('brdz').Value := edt_dz.Text;

  ADOQuery1.FieldByName('jcrq').Value := dtp_jcrq.Date;

  ADOQuery1.FieldByName('zs').Value := edt_zs.Text;
  ADOQuery1.FieldByName('ct').Value := edt_ct.Text;
  ADOQuery1.FieldByName('zljg').Value := edt_zljg.Text;
  ADOQuery1.FieldByName('fzjc').Value := edt_fzjc.Text;

  ADOQuery1.FieldByName('jcmd').Value := edt_jcmd.Text;
  ADOQuery1.FieldByName('yzxm').Value := edt_xmmc.Text;
  ADOQuery1.FieldByName('jcbw').Value := edt_jcbw.Text;
  ADOQuery1.FieldByName('sqys').Value := edt_sqys.Text;
  ADOQuery1.Post;
  ADOQuery1.UpdateBatch(arCurrent);

  Self.ModalResult := mrOk;
end;

procedure Tfrm_dzjcsqd.FormCreate(Sender: TObject);
begin
  //username := 'sys_dzbl';
  edt_zs.Text := '';
  edt_ct.Text := '';
  edt_zljg.Text := '';
  edt_fzjc.Text := '';
  dtp_jcrq.Date := Now;
end;

procedure Tfrm_dzjcsqd.FormShow(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.sql.Text := Format('select * from iHisOrder_mz where tmh=''%s'' and ' +
    ' Convert(varchar(10),jcrq,23)=''%s''',
    [edt_tmh.Text, FormatDateTime('yyyy-MM-dd', dtp_jcrq.Date)]);
  ADOQuery1.Open;
  if not ADOQuery1.IsEmpty then
  begin
    if ADOQuery1.Locate('yzxm', edt_xmmc.Text, []) then
    begin
      edt_jcmd.Text := ADOQuery1.FieldByName('jcmd').AsString;
      edt_jcbw.Text := ADOQuery1.FieldByName('jcbw').AsString;
    end;

    edt_zs.Text := ADOQuery1.FieldByName('zs').AsString;
    edt_ct.Text := ADOQuery1.FieldByName('ct').AsString;
    edt_zljg.Text := ADOQuery1.FieldByName('zljg').AsString;
    edt_fzjc.Text := ADOQuery1.FieldByName('fzjc').AsString;
  end else begin
    edt_zs.Text := '';
    edt_ct.Text := '';
    edt_zljg.Text := '';
    edt_fzjc.Text := '';
  end;
  if Trim(edt_zs.Text) = '' then
    edt_zs.SetFocus
  else
    edt_jcmd.SetFocus;
end;

end.
