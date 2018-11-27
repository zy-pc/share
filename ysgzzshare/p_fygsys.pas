unit p_fygsys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ADODB, DBCtrls;

type
  Tfrm_fygsys = class(TForm)
    labe1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ad_ysdm: TADODataSet;
    ds_ysdm: TDataSource;
    dbComboBox1: TComboBox;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    ComboBox2: TComboBox;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frm_fygsys: Tfrm_fygsys;

  implementation
uses p_dm,p_func,p_yzfyqd;
{$R *.dfm}

procedure Tfrm_fygsys.BitBtn1Click(Sender: TObject);
begin
frm_yzfyqd.ysdm:=copy(dbcombobox1.text,1,4);
frm_yzfyqd.xyf_dm:=copy(ComboBox1.text,1,4);
frm_yzfyqd.zyf_dm:=copy(ComboBox2.text,1,4);
if Trim(frm_yzfyqd.ysdm)='' then
begin
  ShowMessage('ÇëÑ¡ÔñÒ½Éú£¡');
  Abort;
end
else
self.Close;
end;

procedure Tfrm_fygsys.BitBtn2Click(Sender: TObject);
begin
frm_yzfyqd.ysdm:='';
self.Close;
end;

procedure Tfrm_fygsys.FormShow(Sender: TObject);
var i:Integer;
begin
//dbcombobox1.text:=ad_ysdm.fieldbyname('mc').asstring;
  if pub_yydm='0020' then
  begin
    if ( formatdatetime( 'hh:mm', frm_func.curr_date ) >= '07:50' ) and ( formatdatetime( 'hh:mm', frm_func.curr_date ) <= '17:50' ) then
    begin
      ComboBox1.Items.Clear;
      ComboBox2.Items.Clear;
    end
    else
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
      ComboBox1.Visible:=True;
      ComboBox2.Visible:=True;
      label5.Visible:=True;
      label8.Visible:=True;
      Label1.Visible:=True;
      for I := 0 to ComboBox1.Items.Count - 1 do
      begin
        if Pos( pub_zyxyfdm, ComboBox1.Items[i] ) > 0 then
        begin
          ComboBox1.ItemIndex := i;
        end;
      end;
      ComboBox2.ItemIndex:=0;
    end;
  end;
 
end;

end.





