unit p_jysqdjf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, ADODB;

type
  Tfrm_jysqdjf = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    Edit1: TEdit;
    Button1: TButton;
    Button3: TButton;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    Button4: TButton;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    qry_cx_jyxm: TADOQuery;
    ds_cx_jyxm: TDataSource;
    sp_zxjfzb: TADOStoredProc;
    sp_zxjfxr: TADOStoredProc;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Fdytmbjjyf: Boolean;
  public
    { Public declarations }
  end;

var
  frm_jysqdjf: Tfrm_jysqdjf;

implementation

uses p_dm, p_func;

{$R *.dfm}

procedure Tfrm_jysqdjf.Button1Click(Sender: TObject);
begin

   if  pub_yydm ='0260' then   //����ҽԺ 0260
   begin
     if Fdytmbjjyf then  //�򿪲����µķ�ʽ
     begin
        qry_cx_jyxm.Close;
        qry_cx_jyxm.sql.Text:='select distinct a.*,b.bch,case when a.jfbz=''1'' '+
        ' then ''�ѼƷ�'' else ''δ�Ʒ�'' end sfjf,sl* yplsj as je'+
        ' from '+
        ' DZBL_CYJL_zy a,zysf_zydj b,zybl_zyyz_zxjl c,zybl_zyyz d where a.zyh=b.zyh and '+
        // ' zybl_zyyz a,zysf_zydj b,zybl_zyyz_zxjl c,sys_ksdm d where a.zyh=b.zyh and '+
        ' b.cybz=0 and (a.jfbz = 0  or a.jfbz is null ) and a.jyfzbh='+''''+trim(Edit1.text)+''''+' and a.fyid=d.id and d.ph*=c.ph and '+
        ' convert(varchar,cysj,112)*=c.zxsj';
        qry_cx_jyxm.Open;
        if qry_cx_jyxm.IsEmpty then
        begin
          Application.MessageBox('���������Ŀ�����ڣ����߲����Ѿ���Ժ�����Ѿ��Ƿѣ�', '����', MB_OK +
          MB_ICONSTOP);
        end;
     end ELSE
     begin
      qry_cx_jyxm.Close;
      qry_cx_jyxm.sql.Text:='select distinct a.*,b.bch,case when isnull(c.zxsj,'''')='''' '+
      ' then ''δ�Ʒ�'' else ''�ѼƷ�'' end sfjf,sl* yplsj as je'+
      ' from '+
      ' DZBL_CYJL_zy a,zysf_zydj b,zybl_zyyz_zxjl c,zybl_zyyz d where a.zyh=b.zyh and '+
      // ' zybl_zyyz a,zysf_zydj b,zybl_zyyz_zxjl c,sys_ksdm d where a.zyh=b.zyh and '+
      ' b.cybz=0 and (a.jfbz = 0  or a.jfbz is null ) and a.jyfzbh='+''''+trim(Edit1.text)+''''+' and a.fyid=d.id and d.ph*=c.ph and '+
      ' convert(varchar,cysj,112)*=c.zxsj';
      qry_cx_jyxm.Open;
      if qry_cx_jyxm.IsEmpty then
      begin
        Application.MessageBox('���������Ŀ�����ڣ����߲����Ѿ���Ժ�����Ѿ��Ƿѣ�', '����', MB_OK +
        MB_ICONSTOP);
      end;
     end;
   end else
   begin
      qry_cx_jyxm.Close;
      qry_cx_jyxm.sql.Text:='select distinct a.*,b.bch,case when isnull(c.zxsj,'''')='''' '+
      ' then ''δ�Ʒ�'' else ''�ѼƷ�'' end sfjf'+
      ' from '+
      ' dzbl_cyjl_zy_jysqd a,zysf_zydj b,zybl_zyyz_zxjl c,zybl_zyyz d where a.zyh=b.zyh and '+
      // ' zybl_zyyz a,zysf_zydj b,zybl_zyyz_zxjl c,sys_ksdm d where a.zyh=b.zyh and '+
      ' b.cybz=0 and a.jyfzbh='+''''+trim(Edit1.text)+''''+' and a.fyid=d.id and d.ph*=c.ph and '+
      ' convert(varchar,cysj,112)*=c.zxsj';
      qry_cx_jyxm.Open;
      if qry_cx_jyxm.IsEmpty then
      begin
      Application.MessageBox('���������Ŀ�����ڣ����߲����Ѿ���Ժ��', '����', MB_OK +
      MB_ICONSTOP);

      end;
   end;
end;

procedure Tfrm_jysqdjf.Button3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_jysqdjf.Button4Click(Sender: TObject);
var
  vSucess:Boolean;
begin
  if Application.MessageBox('�Ƿ���Ҫ�Ǹ�������?', 'ѯ��', MB_OKCANCEL +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDOK then
  begin
      if qry_cx_jyxm.IsEmpty then
      begin
        Application.MessageBox('����Ҫ�Ʒ����ݣ�', '����', MB_OK +
        MB_ICONSTOP);
        Exit;
      end;
      if qry_cx_jyxm.FieldByName('sfjf').AsString='�ѼƷ�' then
      begin
        Application.MessageBox('��������ѼƷѣ������ټƣ�', '����', MB_OK +
        MB_ICONSTOP);
        Exit;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh='+''''+
      qry_cx_jyxm.FieldByName('zyh').asstring+''''+' and cybz=0';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        Application.MessageBox('δ�ҵ����ˣ������ѳ�Ժ��', '����', MB_OK +
        MB_ICONSTOP);
        Exit;
      end;
    if  pub_yydm ='0260' then   //����ҽԺ 0260
    begin
      qry_cx_jyxm.First;
      vSucess := True;
      while not qry_cx_jyxm.eof  do
      begin
        if qry_cx_jyxm.FieldByName('sfjf').AsString <>'�ѼƷ�' then
        begin
          //׼������
          try
            sp_zxjfzb.Close;
            sp_zxjfzb.Parameters.Refresh;
            sp_zxjfzb.Parameters.ParamByName('@zyh').Value:=qry_cx_jyxm.FieldByName('zyh').asstring;
            sp_zxjfzb.Parameters.ParamByName('@czydm').Value:=pub_czydm;
            sp_zxjfzb.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',qry_cx_jyxm.FieldByName('cysj').AsDateTime);
            sp_zxjfzb.Parameters.ParamByName('@ksdm').Value:=qry_cx_jyxm.FieldByName('kdksdm').asstring;
            sp_zxjfzb.Parameters.ParamByName('@yzid').Value:=qry_cx_jyxm.FieldByName('fyid').AsInteger;
            sp_zxjfzb.Open;
            if sp_zxjfzb.RecordCount > 0 then   //��׼������
            begin
                //�Ƿ�
              sp_zxjfxr.Close;
              sp_zxjfxr.Parameters.Refresh;
              sp_zxjfxr.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
              sp_zxjfxr.Parameters.ParamByName('@zyh').Value:=qry_cx_jyxm.FieldByName('zyh').asstring;
              sp_zxjfxr.Parameters.ParamByName('@czydm').Value:=pub_czydm;
              sp_zxjfxr.Parameters.ParamByName('@yzid').Value:=qry_cx_jyxm.FieldByName('fyid').AsInteger;
              sp_zxjfxr.Parameters.ParamByName('@kdys').Value:=qry_cx_jyxm.FieldByName('kdysdm').asstring;
              sp_zxjfxr.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',qry_cx_jyxm.FieldByName('cysj').AsDateTime);
              sp_zxjfxr.Parameters.ParamByName('@sczt').Value:='';
              sp_zxjfxr.Parameters.ParamByName('@plxh').Value:='1';
              sp_zxjfxr.ExecProc;
              if sp_zxjfxr.Parameters.ParamByName('@sczt').Value = '0' then
              begin
                DM_data.qry_pub.Close;
                DM_data.qry_pub.SQL.Text:='update DZBL_CYJL_zy set jfbz=''1'' where fyid='+
                // DM_data.qry_pub.SQL.Text:='update dzbl_cyjl_zy_jysqd set jfbz=''1'' where fyid='+
                qry_cx_jyxm.FieldByName('fyid').asstring;
                DM_data.qry_pub.ExecSQL;
              end else
              begin
                vSucess := False;
                application.MessageBox(PChar('������Ŀ: '+ qry_cx_jyxm.FieldByName('jyxmmc').asstring +'�Ƿ�ʧ��!'), '��ʾ��Ϣ', 0 + 16);
              end;
            end ELSE
            begin
              vSucess := False;
              application.MessageBox(PChar('û�м�����Ŀ: '+qry_cx_jyxm.FieldByName('jyxmmc').asstring +'����,�Ƿ�ʧ��!'), '��ʾ��Ϣ', 0 + 16);
            end;
          except
            vSucess := False;
            application.MessageBox('�Ƿ�ʧ��!', '��ʾ��Ϣ', 0 + 16);
          end;
        end else
        begin
           vSucess := False;
           application.MessageBox(PChar('������Ŀ: '+ qry_cx_jyxm.FieldByName('jyxmmc').asstring +'�Ѿ��ǹ���!'), '��ʾ��Ϣ', 0 + 16);
        end;
        qry_cx_jyxm.Next;
      end;
      if vSucess then
      begin
        Application.MessageBox('�Ʒ���ɣ�', '��ʾ', MB_OK + MB_ICONINFORMATION);
        Edit1.Text := '';
        Edit1.SetFocus;
      end else
      begin
        Application.MessageBox('�Ʒ�δȫ����ɣ����ֹ���¼���ã�', '��ʾ', MB_OK + MB_ICONINFORMATION);
      end;

      //��ѯˢ��
//      qry_cx_jyxm.Close;
//      qry_cx_jyxm.sql.Text:='select distinct a.*,b.bch,case when a.jfbz=''1'' '+
//      ' then ''�ѼƷ�'' else ''δ�Ʒ�'' end sfjf'+
//      ' from '+
//      ' DZBL_CYJL_zy a,zysf_zydj b,zybl_zyyz_zxjl c,zybl_zyyz d where a.zyh=b.zyh and '+
//      // ' zybl_zyyz a,zysf_zydj b,zybl_zyyz_zxjl c,sys_ksdm d where a.zyh=b.zyh and '+
//      ' b.cybz=0 and (a.jfbz = 0  or a.jfbz is null ) and a.jyfzbh='+''''+trim(Edit1.text)+''''+' and a.fyid=d.id and d.ph*=c.ph and '+
//      ' convert(varchar,cysj,112)*=c.zxsj';
//      qry_cx_jyxm.Open;
      if Fdytmbjjyf then  //�򿪲����µķ�ʽ
      begin
        qry_cx_jyxm.Close;
        qry_cx_jyxm.sql.Text:='select distinct a.*,b.bch,case when a.jfbz=''1'' '+
        ' then ''�ѼƷ�'' else ''δ�Ʒ�'' end sfjf,sl* yplsj as je'+
        ' from '+
        ' DZBL_CYJL_zy a,zysf_zydj b,zybl_zyyz_zxjl c,zybl_zyyz d where a.zyh=b.zyh and '+
        // ' zybl_zyyz a,zysf_zydj b,zybl_zyyz_zxjl c,sys_ksdm d where a.zyh=b.zyh and '+
        ' b.cybz=0 and (a.jfbz = 0  or a.jfbz is null ) and a.jyfzbh='+''''+trim(Edit1.text)+''''+' and a.fyid=d.id and d.ph*=c.ph and '+
        ' convert(varchar,cysj,112)*=c.zxsj';
        qry_cx_jyxm.Open;
      end ELSE
      begin
        qry_cx_jyxm.Close;
        qry_cx_jyxm.sql.Text:='select distinct a.*,b.bch,case when isnull(c.zxsj,'''')='''' '+
        ' then ''δ�Ʒ�'' else ''�ѼƷ�'' end sfjf,sl* yplsj as je'+
        ' from '+
        ' DZBL_CYJL_zy a,zysf_zydj b,zybl_zyyz_zxjl c,zybl_zyyz d where a.zyh=b.zyh and '+
        // ' zybl_zyyz a,zysf_zydj b,zybl_zyyz_zxjl c,sys_ksdm d where a.zyh=b.zyh and '+
        ' b.cybz=0 and (a.jfbz = 0  or a.jfbz is null ) and a.jyfzbh='+''''+trim(Edit1.text)+''''+' and a.fyid=d.id and d.ph*=c.ph and '+
        ' convert(varchar,cysj,112)*=c.zxsj';
        qry_cx_jyxm.Open;
      end;
    end else
    begin
      qry_cx_jyxm.First;
      while not qry_cx_jyxm.eof  do
      begin
        //׼������
        try
          sp_zxjfzb.Close;
          sp_zxjfzb.Parameters.Refresh;
          sp_zxjfzb.Parameters.ParamByName('@zyh').Value:=qry_cx_jyxm.FieldByName('zyh').asstring;
          sp_zxjfzb.Parameters.ParamByName('@czydm').Value:=pub_czydm;
          sp_zxjfzb.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',qry_cx_jyxm.FieldByName('cysj').AsDateTime);
          sp_zxjfzb.Parameters.ParamByName('@ksdm').Value:=qry_cx_jyxm.FieldByName('kdksdm').asstring;
          sp_zxjfzb.Parameters.ParamByName('@yzid').Value:=qry_cx_jyxm.FieldByName('fyid').AsInteger;
          sp_zxjfzb.ExecProc;
          //�Ƿ�
          sp_zxjfxr.Close;
          sp_zxjfxr.Parameters.Refresh;
          sp_zxjfxr.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
          sp_zxjfxr.Parameters.ParamByName('@zyh').Value:=qry_cx_jyxm.FieldByName('zyh').asstring;
          sp_zxjfxr.Parameters.ParamByName('@czydm').Value:=pub_czydm;
          sp_zxjfxr.Parameters.ParamByName('@yzid').Value:=qry_cx_jyxm.FieldByName('fyid').AsInteger;
          sp_zxjfxr.Parameters.ParamByName('@kdys').Value:=qry_cx_jyxm.FieldByName('kdysdm').asstring;
          sp_zxjfxr.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',qry_cx_jyxm.FieldByName('cysj').AsDateTime);
          sp_zxjfxr.Parameters.ParamByName('@sczt').Value:='';
          sp_zxjfxr.Parameters.ParamByName('@plxh').Value:='1';
          sp_zxjfxr.ExecProc;
          DM_data.qry_pub.Close;
         // DM_data.qry_pub.SQL.Text:='update DZBL_CYJL_zy set jfbz=''1'' where fyid='+
           DM_data.qry_pub.SQL.Text:='update dzbl_cyjl_zy_jysqd set jfbz=''1'' where fyid='+
          qry_cx_jyxm.FieldByName('fyid').asstring;
          DM_data.qry_pub.ExecSQL;
        except
          application.MessageBox('�Ƿ�ʧ��!', '��ʾ��Ϣ', 0 + 16);
        end;
        qry_cx_jyxm.Next;
      end;
      Application.MessageBox('�Ʒ���ɣ�', '��ʾ', MB_OK + MB_ICONINFORMATION);
      Button1.Click;
      Edit1.Text := '';
      Edit1.SetFocus;
    end;
  end;

end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_jysqdjf.Edit1Exit
  ����:      yangshuai
  ����:      2016.03.14
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_jysqdjf.Edit1Enter(Sender: TObject);
begin
  frm_func.changecolor(sender);
 // Button4.SetFocus;
//  if Edit1.Text <> ''  then
//  begin
//    Edit1Exit(Edit1);
//  end;
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_jysqdjf.Edit1Exit
  ����:      yangshuai
  ����:      2016.03.14
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_jysqdjf.Edit1Exit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
  if Edit1.Text <> ''  then
  begin
    Button1.Click;
    if qry_cx_jyxm.RecordCount > 0 then
    begin
      Button4Click(nil) ;
    end;
  end;
  Button4.SetFocus;
end;

procedure Tfrm_jysqdjf.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then SelectNext(activeControl, true, true);
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_jysqdjf.FormShow
  ����:      yangshuai
  ����:      2016.03.18
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_jysqdjf.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select isnull(dytmbjjyf,1) dytmbjjyf from sys_xt_kg';
  DM_data.qry_pub.Open;
  Fdytmbjjyf := DM_data.qry_pub.FieldByName('dytmbjjyf').AsBoolean;
end;

end.
