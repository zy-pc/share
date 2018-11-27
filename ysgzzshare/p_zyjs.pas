unit p_zyjs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Spin, p_dm, ComCtrls, cxCheckBox, cxControls, cxContainer,
  cxEdit, cxGroupBox;

type
  Tfrm_zyjs = class(TForm)
    Label1: TLabel;
    b_ok: TButton;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    cb_jyd: TCheckBox;
    cb_jyf: TCheckBox;
    cb_wjjg: TCheckBox;
    cb_sjjg: TCheckBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    edt_jyf: TSpinEdit;
    edt_jyd: TSpinEdit;
    edt_wjjg: TSpinEdit;
    edt_sjjg: TSpinEdit;
    lbl_jyd: TLabel;
    lbljyf: TLabel;
    lbl_wjjg: TLabel;
    lbl_sjjg: TLabel;
    UpDown1: TUpDown;
    cb_zj: TCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    cb_jf: TComboBox;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    rb1: TRadioButton;
    rb2: TRadioButton;
    e_sl: TEdit;
    e_yl: TEdit;
    cb_yf: TComboBox;
    RadioButton1: TRadioButton;
    GroupBox3: TGroupBox;
    Memo2: TMemo;
    cxGroupBox1: TcxGroupBox;
    cb_zao: TcxCheckBox;
    cb_zhong: TcxCheckBox;
    cb_wan: TcxCheckBox;
    Label2: TLabel;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    Label3: TLabel;
    Labe_use: TLabel;
    edt_useday: TEdit;
    UpDown2: TUpDown;
    Combo_useday: TComboBox;
    edt_js: TEdit;
    pnlAddingWater: TPanel;
    lblWater: TLabel;
    edtWater: TEdit;
    lblUnit: TLabel;
    edtSoup: TEdit;
    lblRight: TLabel;
    lblSoup: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edt_mjsyts: TEdit;
    cbb_yldw: TComboBox;





    procedure b_okClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edt_jsChange(Sender: TObject);
    procedure cb_jyfClick(Sender: TObject);
    procedure edt_jydKeyPress(Sender: TObject; var Key: Char);
    procedure edt_jsExit(Sender: TObject);
    procedure edt_jsKeyPress(Sender: TObject; var Key: Char);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure cb_yfChange(Sender: TObject);
    procedure cb_zaoClick(Sender: TObject);
    procedure cb_zhongClick(Sender: TObject);
    procedure cb_wanClick(Sender: TObject);
  private
    zycfsl: Integer; //��ҩ����ҩƷ����
    { Private declarations }
  public
    v_cfjl: Integer;
    { Public declarations }
    pub_cfje: Real; //��ҩ���Ŵ������
    pub_fyje: Real; //�����ܽ��
  end;

var
  frm_zyjs: Tfrm_zyjs;

implementation
uses p_func;

{$R *.DFM}

procedure Tfrm_zyjs.b_okClick(Sender: TObject);
var
  s1, _jf, _yf, _zzw: string;
  _js: integer;
begin
  try
    _js := strtoint(trim(edt_js.text));
  except
    application.messagebox('��ҩ������������������������룡', '����', mb_ok + mb_iconerror);
    exit;
  end;
  _jf := Trim(cb_jf.text);
  if _jf = '' then
  begin
    application.messagebox('������巨��', '������ʾ', mb_ok + mb_iconerror);
    cb_jf.SetFocus;
    exit;
  end;
  _yf := Trim(cb_yf.text);
  if _yf = '' then
  begin
    application.messagebox('�������÷���', '������ʾ', mb_ok + mb_iconerror);
    cb_yf.SetFocus;
    exit;
  end;
  s1 := '';
  s1:=trim(edt_js.text) + '��' ;
//  if cb_zj.Checked = True then
//    s1 := s1+'�Լ�';
  if s1 <> '' then s1 := '[' + s1 + ']';

//�޸Ľ���Ҫ �Լ� �ı�עд��[]֮��
    if cb_zj.Checked = True then
     s1 := s1+'�Լ�,';

  // if s1<> ''  then
   if pub_yydm='0012' then
  begin
    if  (pos('�Լ�',s1)=0) and (trim(cb_jf.Text)<>'���') then
    begin
      if length(trim(SpinEdit1.Text))=0 then
        s1:='00'+trim(SpinEdit1.Text)+'_'+'��'+SpinEdit1.Text+'�� ,'+s1
      else if length(trim(SpinEdit1.Text))=1  then
        s1:='0'+trim(SpinEdit1.Text)+'_'+'��'+SpinEdit1.Text+'�� ,'+s1
      else if length(trim(SpinEdit1.Text))=2  then
        s1:=trim(SpinEdit1.Text)+'_'+'��'+SpinEdit1.Text+'�� ,'+s1;
    end;
  end;




  if rb1.checked then zyff := '�ڷ� ';
  if rb2.checked then zyff := '���� ';


  zyjs := IntToStr(_js);
  _zzw := '';
  if cb_zao.Checked then
  begin
    _zzw := _zzw + '��';
  end;
  if cb_zhong.Checked then
  begin
    _zzw := _zzw + '��';
  end;
  if cb_wan.Checked then
  begin
    _zzw := _zzw + '��';
  end;

  if rb1.Checked then
  begin
    if pub_yydm = '0067' then
    begin
      zyff := s1 + zyjs + '��,ÿ'+trim(edt_mjsyts.Text)+'��1��,' + _jf + ',' + trim(e_yl.text) +
              Trim(cbb_yldw.Text) +',��' + _zzw + trim(e_sl.text) + '��' + _yf
    end
    else
    if pub_yydm='0012' then
    begin
      zyff := s1 + _jf +  ',' + zyff + ',' + _yf + trim(e_sl.text) + '��/��,' +
              trim(e_yl.text) + Trim(cbb_yldw.Text) +'/��.' + '��' + trim(edt_useday.text) +
              trim(Combo_useday.text);
    end
    else
    begin
      zyff := s1 + _jf + ',' + zyff + ',' + _yf +',ÿ'+trim(edt_mjsyts.Text)+'��1��,'+ trim(e_sl.text) + '��/��,'
              + trim(e_yl.text) + Trim(cbb_yldw.Text) +'/��.'
    end;
  end;


  //2014��7��24��,�������޸ģ����õ���ϸ��עҲҪ��ʾ����
  if rb2.Checked then
  begin
     zyff := s1 + _jf +  ',' + zyff + ',' + _yf + trim(e_sl.text) + '��/��,' +
              trim(e_yl.text) + Trim(cbb_yldw.Text) +'/��.' + '��' + trim(edt_useday.text) +
              trim(Combo_useday.text);
  end;
  
//  if pub_yydm='0012' then
//  begin
//    if rb2.Checked then
//    begin
//      zyff := s1 + _jf +  ',' + zyff + ',' + _yf + trim(e_sl.text) + '��/��,' +
//              trim(e_yl.text) + 'ml/��.' + '��' + trim(edt_useday.text) +
//              trim(Combo_useday.text);
//    end;
//  end;
  if trim(Memo2.Text) <> '' then
  begin
    zyff := zyff + '<tsbz>' + trim(Memo2.Text) + '</tsbz>';
  end;

  if pub_yydm = '0151' then // ��ï�� 2014-07-16 ��ҩ��ˮȡ֭ ��Ա�������ҽԺ
  begin
    if Trim(edtWater.Text) <> '' then
    begin
      zyff := zyff + '����ˮ' + Trim(edtWater.Text) + 'ML;';
    end;
    if Trim(edtSoup.Text) <> '' then
    begin
      zyff := zyff + 'ȡ֭' + Trim(edtSoup.Text) + 'ML;';
    end;
  end;

  self.ModalResult := mrOk;
end;

procedure Tfrm_zyjs.cb_jyfClick(Sender: TObject);
var
  twcName: string;
  Edt: TSpinEdit;
begin
  twcName := (Sender as TCheckBox).Name;
  twcName := StringReplace(twcName, 'cb', 'edt', []);
  Edt := Self.FindComponent(twcName) as TSpinEdit;
  if Edt <> nil then
  begin
    Edt.Enabled := (Sender as TCheckBox).Checked;
  end;
end;

procedure Tfrm_zyjs.cb_wanClick(Sender: TObject);
var
  _cs: Integer;
begin
  if cb_wan.Checked then
    _cs := 1
  else
    _cs := 0;
  if cb_zhong.Checked then
    _cs := _cs + 1;
  if cb_zao.Checked then
    _cs := _cs + 1;
  e_sl.Text := IntToStr(_cs);

end;

procedure Tfrm_zyjs.cb_yfChange(Sender: TObject);
begin
  if pos('��', trim(cb_yf.text)) > 0 then
    rb1.Checked := True
  else
    rb2.Checked := True;
end;

procedure Tfrm_zyjs.cb_zaoClick(Sender: TObject);
var
  _cs: Integer;
begin
  if cb_zao.Checked then
    _cs := 1
  else
    _cs := 0;
  if cb_zhong.Checked then
    _cs := _cs + 1;
  if cb_wan.Checked then
    _cs := _cs + 1;
  e_sl.Text := IntToStr(_cs);
end;

procedure Tfrm_zyjs.cb_zhongClick(Sender: TObject);
var
  _cs: Integer;
begin
  if cb_zhong.Checked then
    _cs := 1
  else
    _cs := 0;
  if cb_zao.Checked then
    _cs := _cs + 1;
  if cb_wan.Checked then
    _cs := _cs + 1;
  e_sl.Text := IntToStr(_cs);
end;

procedure Tfrm_zyjs.edt_jsChange(Sender: TObject);
begin
  if tryStrToInt(Trim(edt_js.Text), v_cfjl) then
  begin
    Label5.Caption := '��ҩ�ܽ��:' + FloatToStr(pub_cfje * v_cfjl);
    Label2.Caption := '�����ܽ��:' + FloatToStr((pub_fyje - pub_cfje) + pub_cfje * v_cfjl);
    edt_wjjg.Value := zycfsl * v_cfjl;
    edt_sjjg.Value := zycfsl * v_cfjl;
  end;
end;

procedure Tfrm_zyjs.edt_jsExit(Sender: TObject);
begin
  if Trim(edt_js.text) = '' then edt_js.Text := '1';
end;

procedure Tfrm_zyjs.edt_jsKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #13, #8, #27]) then
  begin
    Application.MessageBox('���������֣�', '������ʾ', 16);
    Key := #0;
    edt_js.SelectAll;
    edt_js.SetFocus;
    Abort;
  end;
end;

procedure Tfrm_zyjs.edt_jydKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = '.' then
  begin
    Key := #0;
  end;
end;

procedure Tfrm_zyjs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    b_ok.Click;
end;

procedure Tfrm_zyjs.FormShow(Sender: TObject);
 var
 strsql:string;
begin
//  GroupBox1.Height := 265;
//  GroupBox3.Height := 85;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xt_kg';
  DM_data.qry_pub.Open;

  if (DM_data.qry_pub.FieldList.Find('zy_jyddm') <> nil) and
    (Trim(DM_data.qry_pub.FieldByName('zy_jyddm').AsString) <> '') then //��ҩ��
  begin
    Panel2.Visible := True;
  end
  else
  begin
    Panel2.Visible := False;
    GroupBox1.Height := GroupBox1.Height - 24;
    frm_zyjs.Height := frm_zyjs.Height - 24;
  end;

  if (DM_data.qry_pub.FieldList.Find('zy_jyfdm') <> nil) and
    (Trim(DM_data.qry_pub.FieldByName('zy_jyfdm').AsString) <> '') then //��ҩ��
  begin
    Panel3.Visible := True;
  end
  else
  begin
    Panel3.Visible := False;
    GroupBox1.Height := GroupBox1.Height - 24;
    frm_zyjs.Height := frm_zyjs.Height - 24;
  end;

  if (DM_data.qry_pub.FieldList.Find('zy_wjjgfdm') <> nil) and
    (Trim(DM_data.qry_pub.FieldByName('zy_wjjgfdm').AsString) <> '') then //����ӹ�
  begin
    Panel4.Visible := True;
  end
  else
  begin
    Panel4.Visible := False;
    GroupBox1.Height := GroupBox1.Height - 24;
    frm_zyjs.Height := frm_zyjs.Height - 24;
  end;

  if (DM_data.qry_pub.FieldList.Find('zy_sjjgfdm') <> nil) and
    (Trim(DM_data.qry_pub.FieldByName('zy_sjjgfdm').AsString) <> '') then //ɢ���ӹ�
  begin
    Panel5.Visible := True;
  end
  else
  begin
    Panel5.Visible := False;
    GroupBox1.Height := GroupBox1.Height - 24;
    frm_zyjs.Height := frm_zyjs.Height - 24;
  end;

  if pub_yydm = '0151' then //��ï�� 2014-07-16 ��ҩ��ˮȡ֭ ������ҽԺ�����޸�
  begin
    pnlAddingWater.Visible := True;
    edtWater.Text := '';
    edtSoup.Text := '';
  end
  else
  begin
    pnlAddingWater.Visible := False;
    GroupBox1.Height := GroupBox1.Height - 24;
    frm_zyjs.Height := frm_zyjs.Height - 24;
  end;

  if not GroupBox1.Visible then
  begin
    frm_zyjs.Height := frm_zyjs.Height - 281;
  end;
  if not GroupBox3.Visible then
  begin
    frm_zyjs.Height := frm_zyjs.Height - 73;
  end;
  if pub_yydm='0012' then
  begin
    GroupBox1.Visible:=true;
    SpinEdit1.Visible:=True;
    Label3.Visible:=True;
    Label4.Visible:=true;
    groupbox2.Visible:=True;
    Labe_use.Visible:=true;
    edt_useday.Visible:=True;
    Combo_useday.Visible:=true;
    UpDown2.Visible:=true;
  end;

  CheckBox1.Checked := ((pub_yydm = '0124') or (pub_yydm = '0042'));
  memo2.Text := '';
  zycfsl := edt_wjjg.Value;
  cb_zao.Checked := True;
  cb_zhong.Checked := True;
  cb_wan.Checked := True;

  strsql:=' select * from sys_zytsjf ' ;
  if OpenSql(strsql,DM_data.qry_pub ) then
  begin
   if not  DM_data.qry_pub.IsEmpty then
   begin
         DM_data.qry_pub.First;
       while not DM_data.qry_pub.Eof do
      begin
        cb_jf.Items.Add(Trim(DM_data.qry_pub.FieldByName('jfmc').AsString));
        DM_data.qry_pub.Next;
      end;
   end
   else
   begin
      cb_jf.Items.Add('�� �� ��');
      cb_jf.Items.Add('�Ļ�ü�');
      cb_jf.Items.Add('���ü�');
      cb_jf.Items.Add('��𼱼�');
      cb_jf.Items.Add('���');
      cb_jf.Items.Add('ˮ����');
      cb_jf.Items.Add('����');
      cb_jf.Items.Add('���');
      cb_jf.Items.Add('����');
      cb_jf.Items.Add('װ����');
      cb_jf.Items.Add('����');
   end;
  end;

  strsql:=' select * from sys_zytsyf ' ;
  if OpenSql(strsql,DM_data.qry_pub ) then
  begin
   if not  DM_data.qry_pub.IsEmpty then
   begin
         DM_data.qry_pub.First;
       while not DM_data.qry_pub.Eof do
      begin
        cb_yf.Items.Add(Trim(DM_data.qry_pub.FieldByName('yfmc').AsString));
        DM_data.qry_pub.Next;
      end;
   end
   else
   begin
      cb_yf.Items.Add('��ǰ�·�');
      cb_yf.Items.Add('��ǰ����');
      cb_yf.Items.Add('�����·�');
      cb_yf.Items.Add('��������');
      cb_yf.Items.Add('�ո���');
      cb_yf.Items.Add('�ٷ�');
      cb_yf.Items.Add('����');
      cb_yf.Items.Add('Ϳ��');
      cb_yf.Items.Add('����');
   end;

  end;






end;

procedure Tfrm_zyjs.rb1Click(Sender: TObject);
begin
  cb_yf.Text := cb_yf.Items.Strings[0];
  e_yl.SelectAll;
  e_yl.SetFocus;
end;

procedure Tfrm_zyjs.rb2Click(Sender: TObject);
begin
  cb_yf.Text := cb_yf.Items.Strings[4];
  e_yl.SelectAll;
  e_yl.SetFocus;
end;

end.

