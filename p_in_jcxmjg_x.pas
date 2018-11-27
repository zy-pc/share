unit p_in_jcxmjg_x;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, ADODB,clipbrd, DBGridEhGrouping;

type
  Tfrm_in_jcxmjg_x = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    Button3: TButton;
    Memo1: TMemo;
    DBGridEh1: TDBGridEh;
    sp_cx_dzbljyjg: TADOStoredProc;
    Qry_jcxmjg: TADOQuery;
    DS_jcxmjg: TDataSource;
    Button4: TButton;
    pnl1: TPanel;
    Label20: TLabel;
    ComboBox2: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
  v_zyh:string;
  v_lb:string;
    { Public declarations }
  end;

var
  frm_in_jcxmjg_x: Tfrm_in_jcxmjg_x;

implementation

uses p_dm,p_func,p_dzbl_main;

{$R *.dfm}

procedure Tfrm_in_jcxmjg_x.Button1Click(Sender: TObject);
var idstr:string ;
begin
  Memo1.Text :='';
  if not qry_jcxmjg.IsEmpty then
  begin
     qry_jcxmjg.First;
    while not qry_jcxmjg.Eof do
    begin
      if qry_jcxmjg.FieldByName('xzbz').AsBoolean = true then
      begin
        Memo1.Text:=Memo1.Text+'�����Ŀ��'+ qry_jcxmjg.FieldByName('xmmc').AsString+#13+#10;
        Memo1.Text:=Memo1.Text+'Ӱ��������'+ qry_jcxmjg.FieldByName('describes').asstring+#13+#10
           +'��������'+ qry_jcxmjg.FieldByName('diagnosis').AsString+#13+#10;   //+';'
      end;
      qry_jcxmjg.Next;
    end;
  end
  else
  begin
    Application.MessageBox('�˲����޼�����Ŀ���߻�û�м�����Ŀ�������',
      '��ʾ', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_in_jcxmjg_x.Button3Click(Sender: TObject);
begin

  if (pub_yydm<>'0266') and (pub_yydm<>'0271')  then
  begin
    Frm_dzbl_main.jyxmdrnr:=StringReplace(copy(StringReplace(Memo1.Text,chr(13)+chr(10),',', [rfReplaceAll]),0,length(StringReplace(Memo1.Text,chr(13)+chr(10),',', [rfReplaceAll]))-2),',;',chr(13)+chr(10), [rfReplaceAll]);
  end else
  begin
    Frm_dzbl_main.jyxmdrnr:=Memo1.Text;
  end;
  close;
end;

procedure Tfrm_in_jcxmjg_x.Button4Click(Sender: TObject);
begin
  Frm_dzbl_main.jyxmdrnr:='';
  close;
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_in_jcxmjg.ComboBox2Change
  ����:      yangshuai
  ����:      2017.05.18
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_in_jcxmjg_x.FormShow(Sender: TObject);
var
  vdescribes,vdiagnosis: string;
  id: string;
  vvalue:Integer;
begin
//------20171109----------ww--------------------------------------------
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb'') is not null drop table #lsb';
  DM_data.qry_pub.ExecSQL;
  
  Memo1.Clear;

  qry_jcxmjg.close;
  qry_jcxmjg.SQL.text :='select convert(bit,0) xzbz,* into #lsb  from v_dzbl_drjcjg where zyh ='''+pub_zyh+''' order by kdrq desc '+
                        'select * from #lsb order by kdrq desc';
  try
    qry_jcxmjg.Open;
  except
  end;
  if qry_jcxmjg.IsEmpty then
  begin
    ShowMessage('�˼�黹δ����鱨�棡����');
    Exit;
  end;
  vdescribes :=
    TrimRight(qry_jcxmjg.FieldByName('describes').asstring);
  vdiagnosis :=
    TrimRight(qry_jcxmjg.FieldByName('diagnosis').asstring);
end;

end.
