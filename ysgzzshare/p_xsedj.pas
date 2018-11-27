unit p_xsedj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  Tfrm_xsedj = class( TForm )
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    frm_xsrdj: TButton;
    Button2: TButton;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Button3: TButton;
    Button4: TButton;
    btn_yzcx: TButton;
    procedure FormShow( Sender: TObject );
    procedure Button1Click( Sender: TObject );
    procedure Button2Click( Sender: TObject );
    procedure ComboBox2Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure frm_xsrdjClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure btn_yzcxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    zyh_xsr:string;//������סԺ��
  end;

var
  frm_xsedj: Tfrm_xsedj;
  v_zyh, v_tmh: string;


implementation
uses p_dm, p_func, p_yzinput_xse;

{$R *.dfm}

procedure Tfrm_xsedj.btn_yzcxClick(Sender: TObject);
var yz_zyh:string;
    yz_bqdm:string;
    yz_ksdm:string;
    yz_bqmc:string;
    yz_ksmc:string;
begin

  if (ComboBox2.Enabled=false) or (trim(ComboBox2.text)='') then
  begin
    ShowMessage('����ѡ��������');
    Exit;
  end;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from zysf_zydj_xse where zyh=' + #39 + v_zyh + #39
  +' and brnl='+copy(Trim(ComboBox2.Text),1,1);
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    application.CreateForm( Tfrm_yzinput_xse, frm_yzinput_xse );
     frm_yzinput_xse.yzcx:=True; //����������ʷҽ����ѯ��
    frm_yzinput_xse.yz_kdks:='';
    frm_yzinput_xse.xsebh:= copy(Trim(ComboBox2.Text),1,1);
    if trim(v_zyh)<>'' then
    begin
      dm_data.qry_pub.close;
      dm_data.qry_pub.sql.text:='select * from zysf_zydj where zyh='+''''+
                               v_zyh+'''';
      dm_data.qry_pub.open;
      if not dm_data.qry_pub.isempty then
      begin
        yz_zyh:= dm_data.qry_pub.fieldbyname('zyh').asstring;
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text:='select * from sys_kscwsz where zyh='+''''+
                               yz_zyh+'''';
        dm_data.qry_pub.open;
        if not dm_data.qry_pub.isempty then
        begin
          yz_bqdm:=dm_data.qry_pub.fieldbyname('bqdm').asstring;
          yz_ksdm:=trim(dm_data.qry_pub.fieldbyname('ksdm').asstring);
          dm_data.qry_pub.close;
          dm_data.qry_pub.sql.text:='select * from sys_bqdm where bqdm='+''''+
                               yz_bqdm+'''';
          dm_data.qry_pub.open;
          yz_bqmc:=trim(dm_data.qry_pub.fieldbyname('bqmc').asstring);
          dm_data.qry_pub.close;
          dm_data.qry_pub.sql.text:='select * from sys_ksdm where dm='+''''+
                               yz_ksdm+'''';
          dm_data.qry_pub.open;
          yz_ksmc:=trim(dm_data.qry_pub.fieldbyname('mc').asstring);
        end;
      end;
      if yz_bqdm<>pub_bqdm then
      begin
        if application.MessageBox( pchar('��ǰ������������['+yz_bqmc+']�����Ա��½����['+
           Trim(pub_bqmc)+']��ͬ�����������Ա��½����['+trim(pub_ksmc)+']��Ϊҽ������������ѡ[��]�����������'+
          '��������['+yz_ksmc+']��Ϊҽ������������ѡ[��]'),'��ʾ��Ϣ', mb_iconquestion + MB_YESNO + mb_defbutton1 ) = IDNO then
        begin
          frm_yzinput_xse.yz_kdks:=yz_ksdm;
        end
        else
        begin
          frm_yzinput_xse.yz_kdks:=pub_ksdm;
        end;
      end;
    end;
    if frm_yzinput_xse.yz_kdks='' then
      frm_yzinput_xse.yz_kdks:=pub_ksdm
    else
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text:='select * from sys_ksdm where dm='+''''+frm_yzinput_xse.yz_kdks+'''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
        frm_yzinput_xse.yz_kdks:=pub_ksdm;
    end;
    try
      frm_yzinput_xse.tmh := v_tmh;
      frm_yzinput_xse.zyh_xsr:=zyh_xsr;
      frm_yzinput_xse.Top := 80;
      frm_yzinput_xse.Left := 1;
      frm_yzinput_xse.ShowModal;
    finally
      frm_yzinput_xse.Free;
      Close;
    end;
  end
  else
  begin
    Application.MessageBox('û�еǼ�,���ȵǼ�!','ϵͳ��ʾ:',MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure Tfrm_xsedj.Button1Click( Sender: TObject );
var xzxh:Integer;
begin
  if (ComboBox2.ItemIndex<0) and (Button3.Enabled=True) then
  begin
    ShowMessage('����ѡ��������һ����������');
    exit;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select * from zysf_zydj where zyh='+''''+v_zyh+'''';
  DM_data.qry_pub.Open;
  if FormatDateTime('yyyyMMdd',DateTimePicker1.Date)<=FormatDateTime('yyyyMMdd',DM_data.qry_pub.FieldByName('csrq').AsDateTime) then
  begin
    ShowMessage( '�������������ڲ�����ĸ�׳�������֮ǰ��������������룡' );
    Exit;
  end;
  if pub_yydm = '0257' then   //ȫ�ݸ���Ҫ��������������������������һ���������б������������һ��
  begin
    if Trim( Edit4.text ) = Trim(Edit1.Text) then
    begin
      ShowMessage( '������������ĸ������������ͬ��������������룡' );
      Exit;
    end;

    DM_data.qry_pub.Close;
    if pub_yydm='0257' then
    begin
     DM_data.qry_pub.SQL.text := 'select brxm from zysf_zydj_xse where zyh='+''''+v_zyh+''''+' and brxm=' + '''' +Trim( Edit4.text )+ '''';
    end else
    begin
     DM_data.qry_pub.SQL.text := 'select brxm from zysf_zydj_xse where  brxm=' + '''' +Trim( Edit4.text )+ '''';
    end;

    DM_data.qry_pub.Open;

    if DM_data.qry_pub.RecordCount<> 0 then
    begin
      ShowMessage( '�������ѱ�ռ�ã�������������룡' );
      edit4.Text:='';
      if edit4.CanFocus then
      begin
        edit4.SetFocus;
      end;
      Exit;
    end;
    
  end;
  if Trim( Edit4.text ) = ''then
  begin
    ShowMessage( '������������������' );
  end
  else
  begin
    if Button3.Enabled=false then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select isnull(max(brnl),0) xh from zysf_zydj_xse where zyh=' + '''' + v_zyh + '''';
      DM_data.qry_pub.Open;
      xzxh:=DM_data.qry_pub.FieldByName('xh').AsInteger+1;
    end
    else
    begin
      xzxh:=StrToInt(Copy(Trim(ComboBox2.text),1,1));
    end;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from zysf_zydj_xse where zyh=' + '''' +
     v_zyh + ''''+' and brnl='+inttostr(xzxh);
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'insert into zysf_zydj_xse(tmh,zyh,brxm,brxb,csrq,pym,brnl)';
      DM_data.qry_pub.SQL.add( ' select ' + '''' + v_tmh + '''' + ',' );
      DM_data.qry_pub.SQL.add( '''' + v_zyh + '''' + ',' );
      DM_data.qry_pub.SQL.add( '''' + trim( edit4.text ) + '''' + ',' );
      DM_data.qry_pub.SQL.add( '''' + trim( ComboBox1.text ) + '''' + ',' );
      DM_data.qry_pub.SQL.add( '''' + formatdatetime( 'yyyy-MM-dd', DateTimePicker1.DateTime ) + ' 00:00:00.000' + '''' + ',' );
      DM_data.qry_pub.SQL.add( '''' + GetPym( Trim( Edit4.text ) ) + ''''+',' );
      DM_data.qry_pub.SQL.add( inttostr(xzxh));
      DM_data.qry_pub.ExecSQL;
      ShowMessage( '�Ǽǳɹ���' );
      ComboBox2.Enabled:=True;
      Button3.Enabled:=True;
      formshow( frm_xsrdj );
      
    end
    else
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'update zysf_zydj_xse set ';
      DM_data.qry_pub.SQL.add( ' tmh= ' + '''' + v_tmh + '''' + ',zyh=' );
      DM_data.qry_pub.SQL.add( '''' + v_zyh + '''' + ',brxm=' );
      DM_data.qry_pub.SQL.add( '''' + trim( edit4.text ) + '''' + ',brxb=' );
      DM_data.qry_pub.SQL.add( '''' + trim( ComboBox1.text ) + '''' + ',csrq=' );
      DM_data.qry_pub.SQL.add( '''' + formatdatetime( 'yyyy-MM-dd', DateTimePicker1.DateTime ) + ' 00:00:00.000' + '''' + ',pym=' );
      DM_data.qry_pub.SQL.add( '''' + GetPym( Trim( Edit4.text ) ) + ''' where zyh=' );
      DM_data.qry_pub.SQL.add( '''' + v_zyh + '''' );
      DM_data.qry_pub.SQL.add( ' and brnl='+inttostr(xzxh) );
      DM_data.qry_pub.ExecSQL;
      ShowMessage( '�޸ĳɹ���' );
      ComboBox2.Enabled:=True;
      Button3.Enabled:=True;
      formshow( frm_xsrdj );
    end;

  end;

end;

procedure Tfrm_xsedj.Button2Click( Sender: TObject );
var yz_zyh:string;
    yz_bqdm:string;
    yz_ksdm:string;
    yz_bqmc:string;
    yz_ksmc:string;
begin

  if (Button3.Enabled=false) then
  begin
    ShowMessage('���ȱ���������');
    Exit;
  end;
  if (ComboBox2.Enabled=false) or (trim(ComboBox2.text)='') then
  begin
    ShowMessage('����ѡ��������');
    Exit;
  end;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from zysf_zydj_xse where zyh=' + #39 + v_zyh + #39
  +' and brnl='+copy(Trim(ComboBox2.Text),1,1);
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    application.CreateForm( Tfrm_yzinput_xse, frm_yzinput_xse );
    frm_yzinput_xse.yzcx:=false; //�ر���ʷ������ҽ����ѯ��
    frm_yzinput_xse.yz_kdks:='';
    frm_yzinput_xse.xsebh:= copy(Trim(ComboBox2.Text),1,1);
    if trim(v_zyh)<>'' then
    begin
      dm_data.qry_pub.close;
      dm_data.qry_pub.sql.text:='select * from zysf_zydj where cybz=0 and zyh='+''''+
                               v_zyh+'''';
      dm_data.qry_pub.open;
      if not dm_data.qry_pub.isempty then
      begin
        yz_zyh:= dm_data.qry_pub.fieldbyname('zyh').asstring;
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text:='select * from sys_kscwsz where zyh='+''''+
                               yz_zyh+'''';
        dm_data.qry_pub.open;
        if not dm_data.qry_pub.isempty then
        begin
          yz_bqdm:=dm_data.qry_pub.fieldbyname('bqdm').asstring;
          yz_ksdm:=trim(dm_data.qry_pub.fieldbyname('ksdm').asstring);
          dm_data.qry_pub.close;
          dm_data.qry_pub.sql.text:='select * from sys_bqdm where bqdm='+''''+
                               yz_bqdm+'''';
          dm_data.qry_pub.open;
          yz_bqmc:=trim(dm_data.qry_pub.fieldbyname('bqmc').asstring);
          dm_data.qry_pub.close;
          dm_data.qry_pub.sql.text:='select * from sys_ksdm where dm='+''''+
                               yz_ksdm+'''';
          dm_data.qry_pub.open;
          yz_ksmc:=trim(dm_data.qry_pub.fieldbyname('mc').asstring);
        end;
      end;
      if yz_bqdm<>pub_bqdm then
      begin
        if application.MessageBox( pchar('��ǰ������������['+yz_bqmc+']�����Ա��½����['+
           Trim(pub_bqmc)+']��ͬ�����������Ա��½����['+trim(pub_ksmc)+']��Ϊҽ������������ѡ[��]�����������'+
          '��������['+yz_ksmc+']��Ϊҽ������������ѡ[��]'),'��ʾ��Ϣ', mb_iconquestion + MB_YESNO + mb_defbutton1 ) = IDNO then
        begin
          frm_yzinput_xse.yz_kdks:=yz_ksdm;
        end
        else
        begin
          frm_yzinput_xse.yz_kdks:=pub_ksdm;
        end;
      end;
    end;
    if frm_yzinput_xse.yz_kdks='' then
      frm_yzinput_xse.yz_kdks:=pub_ksdm
    else
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text:='select * from sys_ksdm where dm='+''''+frm_yzinput_xse.yz_kdks+'''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
        frm_yzinput_xse.yz_kdks:=pub_ksdm;
    end;
    try
      frm_yzinput_xse.tmh := v_tmh;
      frm_yzinput_xse.Top := 80;
      frm_yzinput_xse.Left := 1;
      frm_yzinput_xse.ShowModal;
    finally
      frm_yzinput_xse.Free;
      Close;
    end;
  end
  else
  begin
    Application.MessageBox('û�еǼ�,���ȵǼ�!','ϵͳ��ʾ:',MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure Tfrm_xsedj.Button3Click(Sender: TObject);
begin
  ComboBox2.Enabled:=False;
  Edit1.text := trim( DM_data.qry_pub.FieldByName( 'brxm' ).asstring );
  Edit2.text := trim( DM_data.qry_pub.FieldByName( 'bch' ).asstring );
  DateTimePicker1.DateTime := frm_func.curr_date;
  Edit4.Text:='';
  Button3.Enabled:=False;
end;

procedure Tfrm_xsedj.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_xsedj.ComboBox2Change(Sender: TObject);
begin
  if(Trim(ComboBox2.Text)='') then
  begin
    Edit4.Text:='';
    ComboBox1.Text:='';
    ComboBox1.ItemIndex:=-1;
    exit;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select * from zysf_zydj_xse where zyh='+''''+
  v_zyh+''''+' and brnl='+copy(Trim(ComboBox2.text),1,1);
  DM_data.qry_pub.Open;
  Edit4.text := trim( DM_data.qry_pub.FieldByName( 'brxm' ).asstring );
  ComboBox1.Text := trim( DM_data.qry_pub.FieldByName( 'brxb' ).asstring );
  DateTimePicker1.DateTime := DM_data.qry_pub.FieldByName( 'csrq' ).AsDateTime;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where zyh=' + '''' + v_zyh + '''';
  DM_data.qry_pub.Open;
  edit1.text := Trim( DM_data.qry_pub.FieldByName( 'brxm' ).AsString );
  Edit2.text := trim( DM_data.qry_pub.FieldByName( 'bch' ).asstring );
end;

procedure Tfrm_xsedj.Edit4Exit(Sender: TObject);
var xm :string;
begin
  xm :=trim(Edit1.Text);
  if Edit4.Text=xm then
  begin
    showmessage('������������ĸ������������ͬ��������������룡');
    exit;
  end;
  
end;

procedure Tfrm_xsedj.FormShow( Sender: TObject );
begin

  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from zysf_zydj_xse where zyh=' + '''' + v_zyh +
   ''''+' order by brnl';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    ComboBox2.Items.Clear;
    ComboBox2.Text:='';
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where zyh=' + '''' + v_zyh + '''';
    DM_data.qry_pub.Open;

    Edit1.text := trim( DM_data.qry_pub.FieldByName( 'brxm' ).asstring );
    Edit2.text := trim( DM_data.qry_pub.FieldByName( 'bch' ).asstring );
    DateTimePicker1.DateTime := frm_func.curr_date;
    Button3.Click;
  end
  else
  begin
    ComboBox2.Items.Clear;
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      ComboBox2.Items.Add(DM_data.qry_pub.FieldByName('brnl').AsString+'��������');
      DM_data.qry_pub.Next;
    end;
      ComboBox2.ItemIndex:=0;
    DM_data.qry_pub.First;
    Edit4.text := trim( DM_data.qry_pub.FieldByName( 'brxm' ).asstring );
    ComboBox1.Text := trim( DM_data.qry_pub.FieldByName( 'brxb' ).asstring );
    DateTimePicker1.DateTime := DM_data.qry_pub.FieldByName( 'csrq' ).AsDateTime;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where zyh=' + '''' + v_zyh + '''';
    DM_data.qry_pub.Open;
    edit1.text := Trim( DM_data.qry_pub.FieldByName( 'brxm' ).AsString );
    Edit2.text := trim( DM_data.qry_pub.FieldByName( 'bch' ).asstring );
  end;

end;

procedure Tfrm_xsedj.frm_xsrdjClick(Sender: TObject);
begin
  Button3.Enabled:=True;
  ComboBox2.Enabled:=True;
  ComboBox2.Text:='';
  ComboBox2.ItemIndex:=-1;
end;

end.

