unit p_xhy_hysz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, cxLookAndFeelPainters, cxButtons, DB,
  ADODB;

type
  Tfrm_xhy_hysz = class( TForm )
    pnl1: TPanel;
    Label1: TLabel;
    pnl2: TPanel;
    pnl3: TPanel;
    cxbut_save: TcxButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cbb_fkcypj: TComboBox;
    cbb_czcypj: TComboBox;
    e_fksjlb: TEdit;
    e_czsjlb: TEdit;
    qry_pub: TADOQuery;
    procedure FormShow( Sender: TObject );
    procedure cbb_fkcypjKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cbb_czcypjKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure e_fksjlbKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure e_czsjlbKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cxbut_saveClick( Sender: TObject );
  private
    function yz: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_xhy_hysz: Tfrm_xhy_hysz;

implementation
uses
  p_dm;
{$R *.dfm}

procedure Tfrm_xhy_hysz.cbb_czcypjKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    e_fksjlb.SetFocus;
  end;
end;

procedure Tfrm_xhy_hysz.cbb_fkcypjKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    cbb_czcypj.SetFocus;
  end;
end;

procedure Tfrm_xhy_hysz.cxbut_saveClick( Sender: TObject );
begin
  if yz then
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select fkfplb,czfplb,yjsjdm,hyksjdm from hy_xtsz';
    try
      qry_pub.Open;
    except
      Application.MessageBox( '提示:数据库中缺少hy_xtsz表补丁！', '提示', MB_OKCANCEL );
      Exit;
    end;
    if qry_pub.RecordCount = 0 then
    begin
      qry_pub.Insert;
      qry_pub.FieldByName( 'fkfplb' ).Value := cbb_fkcypj.Text;
      qry_pub.FieldByName( 'czfplb' ).Value := cbb_czcypj.Text;
      qry_pub.FieldByName( 'yjsjdm' ).Value := Trim( e_czsjlb.Text );
      qry_pub.FieldByName( 'hyksjdm' ).Value := Trim( e_fksjlb.Text );
      qry_pub.Post;
      qry_pub.UpdateBatch( );
    end
    else
      if qry_pub.RecordCount = 1 then
      begin
        qry_pub.Edit;
        qry_pub.FieldByName( 'fkfplb' ).Value := cbb_fkcypj.Text;
        qry_pub.FieldByName( 'czfplb' ).Value := cbb_czcypj.Text;
        qry_pub.FieldByName( 'yjsjdm' ).Value := Trim( e_czsjlb.Text );
        qry_pub.FieldByName( 'hyksjdm' ).Value := Trim( e_fksjlb.Text );
        qry_pub.Post;
        qry_pub.UpdateBatch( );
      end
      else
      begin
        Application.MessageBox( '提示:数据库中hy_xtsz表数据超过系统数量！！！', '提示', MB_ICONHAND );
      end;
    Close;
  end;
end;

procedure Tfrm_xhy_hysz.e_czsjlbKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    cxbut_save.SetFocus;
  end;
end;

procedure Tfrm_xhy_hysz.e_fksjlbKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    e_czsjlb.SetFocus;
  end;
end;

procedure Tfrm_xhy_hysz.FormShow( Sender: TObject );
begin
  cbb_czcypj.SetFocus;
  qry_pub.Close;
  qry_pub.SQL.Text := 'select fkfplb,czfplb,yjsjdm,hyksjdm from hy_xtsz';
  try
    qry_pub.Open;
  except
    Application.MessageBox( '提示:数据库中缺少hy_xtsz表补丁！', '提示', MB_OKCANCEL );
    Exit;
  end;
  if qry_pub.RecordCount > 0 then
  begin
    if qry_pub.FieldByName( 'fkfplb' ).AsString = '白票' then
    begin
      cbb_fkcypj.ItemIndex := 0;
    end
    else
      if qry_pub.FieldByName( 'fkfplb' ).AsString = '正式票' then
      begin
        cbb_fkcypj.ItemIndex := 1;
      end;
    if qry_pub.FieldByName( 'czfplb' ).AsString = '白票' then
    begin
      cbb_czcypj.ItemIndex := 0;
    end
    else
      if qry_pub.FieldByName( 'czfplb' ).AsString = '正式票' then
      begin
        cbb_czcypj.ItemIndex := 1;
      end;
    e_fksjlb.Text := qry_pub.FieldByName( 'hyksjdm' ).AsString;
    e_czsjlb.Text := qry_pub.FieldByName( 'yjsjdm' ).AsString;
  end;
end;

function Tfrm_xhy_hysz.yz: Boolean;
var
  fkje, czje: Integer;
begin
  Result := False;
  if Trim( e_fksjlb.Text ) <> '' then
  begin
    try
      fkje := StrToInt( Trim( e_fksjlb.Text ) );
    except
      Application.MessageBox( '提示:请输入正确的发卡收据类别！', '提示', MB_ICONHAND );
      Exit;
    end;
  end;
  if Trim( e_czsjlb.Text ) <> '' then
  begin
    try
      czje := StrToInt( Trim( e_czsjlb.Text ) );
    except
      Application.MessageBox( '提示:请输入正确的发卡收据类别！', '提示', MB_ICONHAND );
      Exit;
    end;
  end;
  Result := True;
end;

end.

