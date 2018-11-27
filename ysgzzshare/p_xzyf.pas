unit p_xzyf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DB, ADODB;

type
  Tfrm_xzyf = class(TForm)
    frm_xzyf: TGroupBox;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    ComboBox2: TComboBox;
    qry_cx: TADOQuery;
    btn1: TButton;
    btn2: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
       yfdm : string;
    { Public declarations }
  end;

var
  frm_xzyf: Tfrm_xzyf;
  function func_zxyf():string;

implementation

uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_xzyf.btn1Click(Sender: TObject);
begin
    yfdm := Copy(ComboBox1.text,1,4)+','+Copy(ComboBox2.text,1,4);
    Close;
end;

procedure Tfrm_xzyf.btn2Click(Sender: TObject);
begin
    yfdm := '';
    Close;
end;

procedure Tfrm_xzyf.FormShow(Sender: TObject);
var i:Integer;
  prv_zyfdm: string;
begin
  ComboBox1.Items.Clear;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_ksdm where kssx=''02''';
  DM_data.qry_pub.Open;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox1.Items.Add( DM_data.qry_pub.FieldByName( 'dm' ).asstring + '_' + trim( DM_data.qry_pub.FieldByName( 'mc' ).asstring ) );
    DM_data.qry_pub.Next;
  end;
  //  prv_zyfdm := Trim( qry_cx.FieldByName( 'chyf' ).AsString );
  if pub_yydm <> '0020' then
  begin
    for I := 0 to ComboBox1.Items.Count - 1 do
    begin
      if Pos( pub_zyxyfdm, ComboBox1.Items[i] ) > 0 then
      begin
        ComboBox1.ItemIndex := i;
      end;
    end;
  end
  else
  begin
    if ( formatdatetime( 'hh:mm', frm_func.curr_date ) >= '07:50' ) and ( formatdatetime( 'hh:mm', frm_func.curr_date ) <= '17:50' ) then
    begin
      for I := 0 to ComboBox1.Items.Count - 1 do
      begin
        if Pos( pub_zyxyfdm, ComboBox1.Items[i] ) > 0 then
        begin
          ComboBox1.ItemIndex := i;
        end;
      end;
    end
    else
    begin
      for I := 0 to ComboBox1.Items.Count - 1 do
      begin
        if Pos( pub_zyxyfdm, ComboBox1.Items[i] ) < 1 then
        begin
          ComboBox1.ItemIndex := i;
        end;
      end;
    end;
  end;

  ComboBox2.Items.Clear;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_ksdm where kssx=''02'' or kssx=''04''';
  DM_data.qry_pub.Open;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox2.Items.Add( DM_data.qry_pub.FieldByName( 'dm' ).asstring + '_' + trim( DM_data.qry_pub.FieldByName( 'mc' ).asstring ) );
    DM_data.qry_pub.Next;
  end;
  with qry_cx do
  begin
    Close;
    SQL.Text := 'select * from sys_ksdm where dm =' + #39 + pub_ksdm + #39;
    Open;
  end;
  prv_zyfdm := Trim( qry_cx.FieldByName( 'chyf' ).AsString );
  if pub_yydm <> '0020' then
  begin
    for I := 0 to ComboBox2.Items.Count - 1 do
    begin
      if Pos( prv_zyfdm, ComboBox2.Items[i] ) > 0 then
      begin
        ComboBox2.ItemIndex := i;
      end;
    end;
  end
  else
  begin
    if ( formatdatetime( 'hh:mm', frm_func.curr_date ) >= '07:50' ) and ( formatdatetime( 'hh:mm', frm_func.curr_date ) <= '17:50' ) then
    begin
      for I := 0 to ComboBox2.Items.Count - 1 do
      begin
        if Pos( prv_zyfdm, ComboBox2.Items[i] ) > 0 then
        begin
          ComboBox2.ItemIndex := i;
        end;
      end;
    end
    else
    begin
      for I := 0 to ComboBox2.Items.Count - 1 do
      begin
        if Pos( prv_zyfdm, ComboBox2.Items[i] ) > 0 then
        begin
          ComboBox2.ItemIndex := i;
        end;
      end;
    end;
  end;

  if ( pub_yydm = '0015' ) or ( pub_yydm = '0013' ) or  ( pub_yydm = '0139' )  then
    for I := 0 to ComboBox2.Items.Count - 1 do
    begin
      if Pos( Copy( Trim( ComboBox1.Text ), 1, 4 ), ComboBox2.Items[i] ) > 0 then
      begin
        ComboBox2.ItemIndex := i;
      end;
    end;
end;


function func_zxyf():string;
var res : string;
begin
    Application.CreateForm(Tfrm_xzyf,frm_xzyf);
    frm_xzyf.ShowModal;
    res := frm_xzyf.yfdm;
    frm_xzyf.Free;
    Result:=res;
end;

end.
