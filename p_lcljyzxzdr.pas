unit p_lcljyzxzdr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, GridsEh, DBGridEh, ComCtrls, RzTreeVw;

type
  Tfrm_lcljyzxzdr = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    Button1: TButton;
    RzCheckTree1: TRzCheckTree;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_lcljyzxzdr: Tfrm_lcljyzxzdr;

implementation
uses p_dm,p_yzinput;

{$R *.dfm}

procedure Tfrm_lcljyzxzdr.Button1Click(Sender: TObject);
var xz:string;
    i:Integer;
begin
  xz:=',';
  if Application.MessageBox('�Ƿ�ȷ�ϵ���ѡ��ҽ����', 'ѯ��', MB_OKCANCEL +
  MB_ICONQUESTION) = IDOK then
  begin
    for i := 0 to RzCheckTree1.Items.Count - 1 do
    begin
      if (Pos('��',RzCheckTree1.Items[i].text)>0) and (RzCheckTree1.Items[i].StateIndex=2) then
      begin
        xz:=xz+copy(RzCheckTree1.Items[i].text,1,Pos('.',RzCheckTree1.Items[i].text)-1)+',';
      end;
    end;
    frm_yzinput.xzljyzid:=xz;
    Close;
  end;
  

end;

procedure Tfrm_lcljyzxzdr.FormShow(Sender: TObject);
var i,y:Integer;
    nr:string;
    node:TTreeNode;
begin
  frm_yzinput.qry_ljxmjc.First;
  node:=nil;
  RzCheckTree1.Items.Clear;
  y:=0;
  while not frm_yzinput.qry_ljxmjc.eof do
  begin
    RzCheckTree1.Items.Add(node,trim(frm_yzinput.qry_ljxmjc.FieldByName('xmnr').asstring));
    y:=RzCheckTree1.Items.Count-1;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='select * from lclj_blmbmx where xmid='+''''+
    frm_yzinput.qry_ljxmjc.FieldByName('xmid').asstring+'''';
    DM_data.qry_pub.Open;
    if not DM_data.qry_pub.IsEmpty then
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        nr:='';
        if (Trim(DM_data.qry_pub.FieldByName('lb').asstring)='ҩƷ') or
           (Trim(DM_data.qry_pub.FieldByName('lb').asstring)='��ҩ') or
           (Trim(DM_data.qry_pub.FieldByName('lb').asstring)='ҩһ') then
        nr:=DM_data.qry_pub.FieldByName('id').asstring+'.'+'��'+
        trim(DM_data.qry_pub.FieldByName('yzsx').asstring)+
        trim(DM_data.qry_pub.FieldByName('lb').asstring)+'��ҽ��'+'��'+
        '��'+ trim(DM_data.qry_pub.FieldByName('xmmc').asstring)+'��'+
        '��'+' ҩƷ�÷�:'+trim(DM_data.qry_pub.FieldByName('ypyf').asstring)+'��'+
        '��'+' ҩƷ����:'+trim(DM_data.qry_pub.FieldByName('ypyl').asstring)+
        trim(DM_data.qry_pub.FieldByName('yldw').asstring)+'��'+
        '��'+' ��ҩ;��:'+trim(DM_data.qry_pub.FieldByName('yytj').asstring)+'��';

        if (Trim(DM_data.qry_pub.FieldByName('lb').asstring)='����') then
        nr:=DM_data.qry_pub.FieldByName('id').asstring+'.'+'��'+
        trim(DM_data.qry_pub.FieldByName('yzsx').asstring)+
        trim(DM_data.qry_pub.FieldByName('lb').asstring)+'��ҽ��'+'��'+
        '��'+ trim(DM_data.qry_pub.FieldByName('xmmc').asstring)+'��'+
        '��'+' ��������:'+trim(DM_data.qry_pub.FieldByName('jyyb').asstring)+'��';

        if (Trim(DM_data.qry_pub.FieldByName('lb').asstring)='���') or
           (Trim(DM_data.qry_pub.FieldByName('lb').asstring)='����') or
           (Trim(DM_data.qry_pub.FieldByName('lb').asstring)='����') or
            (Trim(DM_data.qry_pub.FieldByName('lb').asstring)='��ҩ')  then
        nr:=DM_data.qry_pub.FieldByName('id').asstring+'.'+'��'+
        trim(DM_data.qry_pub.FieldByName('yzsx').asstring)+
        trim(DM_data.qry_pub.FieldByName('lb').asstring)+'��ҽ��'+'��'+
        '��'+ trim(DM_data.qry_pub.FieldByName('xmmc').asstring)+'��'+
        '��'+' ����Ϊ:'+trim(DM_data.qry_pub.FieldByName('sl').asstring)+'��';

        if (Trim(DM_data.qry_pub.FieldByName('lb').asstring)='����') then
        nr:=DM_data.qry_pub.FieldByName('id').asstring+'.'+'��'+
        trim(DM_data.qry_pub.FieldByName('yzsx').asstring)+
        trim(DM_data.qry_pub.FieldByName('lb').asstring)+'��ҽ��'+'��'+
        '��'+ trim(DM_data.qry_pub.FieldByName('xmmc').asstring)+'��';
        RzCheckTree1.Items.AddChild(RzCheckTree1.Items[y],nr);
        DM_data.qry_pub.Next;
      end;
    end;
    frm_yzinput.qry_ljxmjc.Next;
  end;



end;

end.
