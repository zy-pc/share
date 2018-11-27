unit p_wjztx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls;

type
  Tfrm_wjztx = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    qry_clmm: TADOQuery;
    Button2: TButton;
    Panel1: TPanel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    code:string;
    z_zyh:string;
    { Public declarations }
  end;

var
  frm_wjztx: Tfrm_wjztx;


implementation

uses p_dm,p_func,P_main,p_jyjg;

{$R *.dfm}

procedure Tfrm_wjztx.Button1Click(Sender: TObject);
begin
  if pub_yydm<>'0019' then
  begin
    qry_clmm.close;
    qry_clmm.SQL.Text:='select dbo.sys_xtjem(kl) mm from sys_czy where dm='+''''+
    Edit1.text+'''';
    qry_clmm.Open;
    if qry_clmm.IsEmpty then
    begin
      Application.MessageBox('无此帐号！', '提错误示', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      if qry_clmm.FieldByName('mm').AsString<>Trim(Edit2.text) then
      begin
        Application.MessageBox('密码错误！', '提错误示', MB_OK + MB_ICONSTOP);
      end
      else
      begin
         try
           qry_clmm.Close;
           qry_clmm.SQL.text:='select * from zybl_jyjg_wjzbr where 1<>1';
           qry_clmm.Open;
           qry_clmm.Append;
           qry_clmm.FieldByName('tmh').asstring:=frm_main.qry_cx_wjz.FieldByName('tmh').AsString;
           qry_clmm.FieldByName('zyh').asstring:=frm_main.qry_cx_wjz.FieldByName('zyh').AsString;
           qry_clmm.FieldByName('brxm').asstring:=frm_main.qry_cx_wjz.FieldByName('brxm').AsString;
           qry_clmm.FieldByName('yybch').asstring:=frm_main.qry_cx_wjz.FieldByName('yybch').AsString;
           qry_clmm.FieldByName('bqmc').asstring:=frm_main.qry_cx_wjz.FieldByName('bqmc').AsString;
           qry_clmm.FieldByName('fzbh').asstring:=frm_main.qry_cx_wjz.FieldByName('barcode').AsString;
           qry_clmm.FieldByName('czydm').asstring:=pub_czydm;
           qry_clmm.Post;
           P_main.wjzxx:='0';
           Close;
         except
           Application.MessageBox('写入失败！', '提错误示', MB_OK + MB_ICONSTOP);
         end;

      end;
    end;
  end
  else
  begin
//    qry_clmm.close;
//    qry_clmm.SQL.Text:='select dbo.sys_xtjem(kl) mm from sys_czy where dm='+''''+
//    pub_czydm+'''';
//    qry_clmm.Open;
//    if qry_clmm.IsEmpty then
//    begin
//      Application.MessageBox('无此帐号！', '提错误示', MB_OK + MB_ICONSTOP);
//    end
//    else
//    begin
//      if qry_clmm.FieldByName('mm').AsString<>Trim(Edit2.text) then
//      begin
//        Application.MessageBox('密码错误！', '提错误示', MB_OK + MB_ICONSTOP);
//      end
//      else
//      begin
         try
           qry_clmm.Close;
           qry_clmm.SQL.text:='select * from zybl_jyjg_wjzbr where 1<>1';
           qry_clmm.Open;
           qry_clmm.Append;
           qry_clmm.FieldByName('tmh').asstring:=frm_main.qry_cx_wjz.FieldByName('tmh').AsString;
           qry_clmm.FieldByName('zyh').asstring:=frm_main.qry_cx_wjz.FieldByName('zyh').AsString;
           qry_clmm.FieldByName('brxm').asstring:=frm_main.qry_cx_wjz.FieldByName('brxm').AsString;
           qry_clmm.FieldByName('yybch').asstring:=frm_main.qry_cx_wjz.FieldByName('yybch').AsString;
           qry_clmm.FieldByName('bqmc').asstring:=frm_main.qry_cx_wjz.FieldByName('bqmc').AsString;
           qry_clmm.FieldByName('fzbh').asstring:=frm_main.qry_cx_wjz.FieldByName('barcode').AsString;
           qry_clmm.FieldByName('czydm').asstring:=pub_czydm;
           qry_clmm.Post;
           P_main.wjzxx:='0';
           Close;
         except
           Application.MessageBox('写入失败！', '提错误示', MB_OK + MB_ICONSTOP);
         end;

  end;


end;

procedure Tfrm_wjztx.Button2Click(Sender: TObject);
begin
  P_main.wjzxx:='0';
  close;
end;

procedure Tfrm_wjztx.Button3Click(Sender: TObject);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select * from zysf_zydj where zyh='+''''+z_zyh+'''';
  DM_data.qry_pub.Open;
  Application.CreateForm(TFrm_jyjg,frm_jyjg);
  try
    p_jyjg.Frm_jyjg.edtbrtmh.Text:=DM_data.qry_pub.FieldByName('tmh').asstring;
    p_jyjg.Frm_jyjg.edtbrzyh.Text:=z_zyh;
    p_jyjg.Frm_jyjg.edtbrxm.Text:=DM_data.qry_pub.FieldByName('brxm').asstring;
    p_jyjg.Frm_jyjg.edtfylb.Text:=DM_data.qry_pub.FieldByName('fylb').asstring;
    p_jyjg.Frm_jyjg.edtryzd.Text:=DM_data.qry_pub.FieldByName('ryzd').asstring;
    p_jyjg.Frm_jyjg.edtbrnl.Text:=DM_data.qry_pub.FieldByName('brnl').asstring;
    p_jyjg.Frm_jyjg._code:=code;
    frm_jyjg.ShowModal;
  finally
    frm_jyjg.free;
  end;
  //tbflash.Click;
end;

procedure Tfrm_wjztx.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Edit2.SetFocus;
  end;
end;

procedure Tfrm_wjztx.FormShow(Sender: TObject);
begin
  if pub_yydm='0019' then //大邑县医院
  begin
    Panel1.Visible:=false;
    Button1.Caption:='确定已查看';
    Button2.Visible:=false;
  end;
end;

end.
