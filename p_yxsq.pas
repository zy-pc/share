unit p_yxsq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrlsEh, DB, ADODB,p_yzinput,StrUtils;

type
  Tfrm_yxsq = class(TForm)
    Panel1: TPanel;
    lblsqdh: TLabel;
    lblzyh: TLabel;
    lblid: TLabel;
    lblsxzxm: TLabel;
    lblxb: TLabel;
    lblcsny: TLabel;
    lblsxzxx: TLabel;
    cbbxx: TComboBox;
    lblRHxx: TLabel;
    cbbrhxx: TComboBox;
    lblsxzl: TLabel;
    lblsqcfx: TLabel;
    cbbsqcfx: TComboBox;
    lblsxdw: TLabel;
    cbbsxdw: TComboBox;
    lblydsxsj: TLabel;
    lblch: TLabel;
    edtsqdh: TEdit;
    edtzyh: TEdit;
    edtidh: TEdit;
    edtsxzxm: TEdit;
    edtxb: TEdit;
    edtcsny: TEdit;
    edtsxzl: TEdit;
    edtch: TEdit;
    cxDateEdit1: TDBDateTimeEditEh;
    ADOQuery1: TADOQuery;
    ds1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    sys_get_jyxh: TADOStoredProc;
    procedure FormShow(Sender: TObject);
    procedure cbbxxKeyPress(Sender: TObject; var Key: Char);
    procedure cbbsqcfxKeyPress(Sender: TObject; var Key: Char);
    procedure cbbrhxxKeyPress(Sender: TObject; var Key: Char);
    procedure cbbsxdwKeyPress(Sender: TObject; var Key: Char);
    procedure edtsxzlKeyPress(Sender: TObject; var Key: Char);
    procedure edtsqdhKeyPress(Sender: TObject; var Key: Char);
    procedure edtzyhKeyPress(Sender: TObject; var Key: Char);
    procedure edtidhKeyPress(Sender: TObject; var Key: Char);
    procedure edtsxzxmKeyPress(Sender: TObject; var Key: Char);
    procedure edtxbKeyPress(Sender: TObject; var Key: Char);
    procedure edtcsnyKeyPress(Sender: TObject; var Key: Char);
    procedure edtchKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2KeyPress(Sender: TObject; var Key: Char);
  
  private
    { Private declarations }
  public
     var ksdm:string;
    { Public declarations }
  end;

var
  zy_zyh:string;
  frm_yxsq: Tfrm_yxsq;

implementation
 uses p_dm,p_func;
{$R *.dfm}

procedure Tfrm_yxsq.Button1Click(Sender: TObject);
var xmmc:string;
sqcf:string;
zfwz:Integer;
begin
if cbbxx.Text='' then
begin
      Application.MessageBox('病人血型不能为空！', '', MB_OK +  MB_ICONINFORMATION);
      cbbxx.SetFocus;
      Exit;
end;
if cbbrhxx.Text='' then
begin
      Application.MessageBox('病人Rh血型不能为空！', '', MB_OK +  MB_ICONINFORMATION);
      cbbrhxx.setfocus;
      Exit;
end;
if edtsxzl.Text='' then
begin
      Application.MessageBox('病人输血总量不能为空！', '', MB_OK +  MB_ICONINFORMATION);
      edtsxzl.SetFocus;
      Exit;
end;
if cbbsqcfx.Text='' then
begin
      Application.MessageBox('病人申请成分血不能为空！', '', MB_OK +  MB_ICONINFORMATION);
      cbbsqcfx.SetFocus;
      Exit;
end;
if cbbsxdw.Text='' then
begin
      Application.MessageBox('病人输血单位不能为空！', '', MB_OK +  MB_ICONINFORMATION);
      cbbsxdw.SetFocus;
      Exit;
end;
if Trim(Copy(cxDateEdit1.Text,1,1))='' then
begin
      Application.MessageBox('病人预定输血时间不能为空！', '', MB_OK +  MB_ICONINFORMATION);
      cxDateEdit1.SetFocus;
      Exit;
end;

DM_data.qry_pub.close;
DM_data.qry_pub.sql.Text:='select * from BLOOD_APPLY where apply_num='+''''+
edtsqdh.text+'''';
DM_data.qry_pub.Open;
if not DM_data.qry_pub.IsEmpty then
begin
  Application.MessageBox('本次输血申请已经生成，如需再申请输血请关闭该窗口，重新填写申请！', '', MB_OK +  MB_ICONINFORMATION);
  cxDateEdit1.SetFocus;
  Exit;
end;

  try
    ADOQuery2.Close;
    ADOQuery2.sql.Text:='select * from BLOOD_APPLY where 1<>1';
    ADOQuery2.Open;
    ADOQuery2.Append;
    ADOQuery2.FieldByName('APPLY_NUM').AsString:=edtsqdh.text;
    ADOQuery2.FieldByName('INP_NO').AsString:=edtzyh.text;
    ADOQuery2.FieldByName('PATIENT_ID').AsString:=edtidh.text;
    ADOQuery2.FieldByName('PAT_NAME').AsString:=edtsxzxm.text;
    ADOQuery2.FieldByName('PAT_SEX').AsString:=edtxb.text;
    ADOQuery2.FieldByName('BIRTHDAY').AsString:=edtcsny.text;
    ADOQuery2.FieldByName('PAT_BLOOD_GROUP').AsString:=cbbxx.text;
    if cbbrhxx.Text='阴' then
    begin
      ADOQuery2.FieldByName('Rh').AsString:='1';
    end
    else if cbbrhxx.Text='阳' then
    begin
      ADOQuery2.FieldByName('Rh').AsString:='2';
    end
    else
      ADOQuery2.FieldByName('Rh').AsString:='0';
    ADOQuery2.FieldByName('BLOOD_SUM').AsString:=Trim(edtsxzl.Text);
    ADOQuery2.FieldByName('BLOOD_TYPE').AsString:=Copy(cbbsqcfx.text,1,Pos('_',cbbsqcfx.text)-1);
    ADOQuery2.FieldByName('BLOOD_UNIT').AsString:=cbbsxdw.text;
    ADOQuery2.FieldByName('BED_NO').AsString:=edtch.text;
    ADOQuery2.FieldByName('APPLY_DATE').AsDateTime:=Frm_func.curr_date;
    ADOQuery2.FieldByName('TRANS_DATE').AsDateTime:=cxDateEdit1.Value;
    ADOQuery2.FieldByName('DEPT_CODE').AsString:=ksdm;
    ADOQuery2.FieldByName('DOCTOR').AsString:=pub_czydm;
    ADOQuery2.Post;
    Application.MessageBox('保存成功！', '', MB_OK + MB_ICONINFORMATION);
    //ADOQuery2.SQL:='select * from zybl_zyyz where datediff(day,yzrq,:cxyzrq)=0 and zyh=:cxzyh and yzsx=:cxyzsx and lb=:cxlb and zxbz= order by xh';
    frm_yzinput.qry_yz.Insert;
    frm_yzinput.qry_yz.FieldByName( 'yzsx' ).Value := '临时';
    frm_yzinput.qry_yz.FieldByName( 'lb' ).Value := '其它';
    sqcf:=cbbsqcfx.Text;
    zfwz:=Pos('_',sqcf) ;
    sqcf:= MidStr(sqcf,zfwz+1,length(sqcf)-zfwz);
    if Trim(cbbrhxx.Text)='阳' then
    begin
        xmmc:='合Rh'+Trim(cbbrhxx.Text)+'型'+sqcf+Trim(edtsxzl.Text)+Trim(cbbsxdw.Text);
    end;
    xmmc:='合'+Trim(cbbxx.Text)+'型'+sqcf+Trim(edtsxzl.Text)+Trim(cbbsxdw.Text);
    frm_yzinput.qry_yz.FieldByName( 'xmmc' ).Value := xmmc;
    frm_yzinput.qry_yz.FieldByName( 'sl' ).Value := 0;
    frm_yzinput.qry_yz.FieldByName( 'czks' ).Value := frm_yzinput.yz_kdks;
    frm_yzinput.qry_yz.FieldByName( 'kdks' ).Value := frm_yzinput.yz_kdks;
    frm_yzinput.qry_yz.FieldByName( 'zyh' ).Value := frm_yzinput.zyh;
    frm_yzinput.qry_yz.FieldByName( 'tmh' ).Value := frm_yzinput.tmh;
    frm_yzinput.qry_yz.FieldByName( 'xmdm' ).Value := '';
    frm_yzinput.qry_yz.Post;
    frm_yzinput.qry_yz.Append;
    if frm_yzinput.ZZ.ActivePageIndex=0 then
    begin
      frm_yzinput.grid_yzlr.SetFocus;
      frm_yzinput.grid_yzlr.SelectedIndex := 2;
    end;
    close;
  except
    Application.MessageBox('保存失败！', '', MB_OK + MB_ICONSTOP);
  end;

end;


procedure Tfrm_yxsq.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_yxsq.Button2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
          edtsqdh.SetFocus;
end;

procedure Tfrm_yxsq.cbbrhxxKeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
      edtsxzl.SetFocus;
end;

procedure Tfrm_yxsq.cbbsqcfxKeyPress(Sender: TObject; var Key: Char);
begin
      if Key=#13 then
      cbbsxdw.SetFocus;
end;

procedure Tfrm_yxsq.cbbsxdwKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
          edtch.SetFocus;
end;

procedure Tfrm_yxsq.cbbxxKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
      cbbrhxx.SetFocus;
end;

procedure Tfrm_yxsq.cxDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
          Button1.SetFocus;
end;

procedure Tfrm_yxsq.edtchKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
          cxDateEdit1.SetFocus;
end;

procedure Tfrm_yxsq.edtcsnyKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
          cbbxx.SetFocus;
end;

procedure Tfrm_yxsq.edtidhKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
          edtsxzxm.SetFocus;
end;

procedure Tfrm_yxsq.edtsqdhKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
          edtzyh.SetFocus;
end;

procedure Tfrm_yxsq.edtsxzlKeyPress(Sender: TObject; var Key: Char);
begin

 if Key=#13 then
  begin
     cbbsqcfx.SetFocus;
  end
  else if not ( ( key in ['0'..'9', #8,'.'] ) ) then
  begin
    key := #0;
  end;

end;

procedure Tfrm_yxsq.edtsxzxmKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
          edtxb.SetFocus;
end;

procedure Tfrm_yxsq.edtxbKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
          edtcsny.SetFocus;
end;

procedure Tfrm_yxsq.edtzyhKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
 edtidh.SetFocus;
end;

procedure Tfrm_yxsq.FormShow(Sender: TObject);
var sqdh:string;
begin
 edtidh.Text:=zy_zyh;
 ADOQuery1.Close;
 ADOQuery1.SQL.text:='select a.*,b.yybch from zysf_zydj a,sys_kscwsz b where a.zyh=b.zyh and a.zyh='+#39+zy_zyh+#39;
 ADOQuery1.Open;
 edtzyh.Text:=ADOQuery1.FieldByName('tmh').Value;
 edtsxzxm.Text:=ADOQuery1.FieldByName('brxm').Value;
 edtxb.Text:=ADOQuery1.FieldByName('brxb').Value;
 edtcsny.Text:=ADOQuery1.FieldByName('csrq').Value;
 edtidh.Text:=ADOQuery1.FieldByName('zyh').Value;
 edtch.text:=ADOQuery1.FieldByName('yybch').Value;
 ksdm:=ADOQuery1.FieldByName('ksdm').Value;
 sys_get_jyxh.close;
 sys_get_jyxh.Parameters.ParamByName('@jyxh').Value := '';
 sys_get_jyxh.ExecProc;
 sqdh := sys_get_jyxh.parameters.parambyname('@jyxh').value;
 edtsqdh.text:=  sqdh;
 DM_data.qry_pub.Close;
 DM_data.qry_pub.SQL.text:='select * from BLOOD_COMPONENT';
 DM_data.qry_pub.Open;
 DM_data.qry_pub.First;
 cbbsqcfx.Clear;
 while not DM_data.qry_pub.eof do
 begin
   cbbsqcfx.Items.Add(DM_data.qry_pub.FieldByName('BLOOD_TYPE').AsString+'_'+DM_data.qry_pub.FieldByName('BLOOD_TYPE_NAME').AsString);
   DM_data.qry_pub.Next;
 end;
end;
end.
