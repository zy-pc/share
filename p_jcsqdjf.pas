unit p_jcsqdjf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ADODB, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ExtCtrls;

type
  Tfrm_jcsqdjf = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    sp_zxjfzb: TADOStoredProc;
    sp_zxjfxr: TADOStoredProc;
    ds_cx_jcxm: TDataSource;
    qry_cx_jcxm: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jcsqdjf: Tfrm_jcsqdjf;

implementation

{$R *.dfm}

uses p_dm;

procedure Tfrm_jcsqdjf.Button1Click(Sender: TObject);
begin
  qry_cx_jcxm.Close;
  qry_cx_jcxm.sql.Text:='select distinct a.*,b.bch,b.brxm,case when c.jlsj is null '+
  ' then ''未计费'' else ''已计费'' end sfjf,d.mc kdksmc,b.brnl'+
  ' from '+
  ' zybl_zyyz a,zysf_zydj b,zybl_zyyz_zxjl c,sys_ksdm d where a.zyh=b.zyh and '+
  ' b.cybz=0 and a.ph='+''''+trim(Edit1.text)+''''+' and a.ph*=c.ph and '+
  ' convert(varchar,kdrq,112)*=c.zxsj and a.kdks=d.dm';
  qry_cx_jcxm.Open;
  if qry_cx_jcxm.IsEmpty then
  begin
    Application.MessageBox('该检查项目不存在，或者病人已经出院！', '错误', MB_OK +
      MB_ICONSTOP);
  end;
end;

procedure Tfrm_jcsqdjf.Button3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_jcsqdjf.Button4Click(Sender: TObject);
begin
  if Application.MessageBox('是否需要记该组检查费?', '询问', MB_OKCANCEL +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDOK then
  begin
      if qry_cx_jcxm.IsEmpty then
      begin
        Application.MessageBox('无需要计费数据！', '错误', MB_OK +
        MB_ICONSTOP);
        Exit;
      end;
      if qry_cx_jcxm.FieldByName('sfjf').AsString='已计费' then
      begin
        Application.MessageBox('该组检查已计费，无需再计！', '错误', MB_OK +
        MB_ICONSTOP);
        Exit;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh='+''''+
      qry_cx_jcxm.FieldByName('zyh').asstring+''''+' and cybz=0';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        Application.MessageBox('未找到病人，可能已出院！', '错误', MB_OK +
        MB_ICONSTOP);
        Exit;
      end;

      qry_cx_jcxm.First;
      while not qry_cx_jcxm.eof  do
      begin
        //准备数据
       try
         sp_zxjfzb.Close;
         sp_zxjfzb.Parameters.Refresh;
         sp_zxjfzb.Parameters.ParamByName('@zyh').Value:=qry_cx_jcxm.FieldByName('zyh').asstring;
         sp_zxjfzb.Parameters.ParamByName('@czydm').Value:=pub_czydm;
         sp_zxjfzb.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',qry_cx_jcxm.FieldByName('kdrq').AsDateTime);
         sp_zxjfzb.Parameters.ParamByName('@ksdm').Value:=qry_cx_jcxm.FieldByName('kdks').asstring;
         sp_zxjfzb.Parameters.ParamByName('@yzid').Value:=qry_cx_jcxm.FieldByName('id').AsInteger;
         sp_zxjfzb.ExecProc;
        //记费
         sp_zxjfxr.Close;
         sp_zxjfxr.Parameters.Refresh;
         sp_zxjfxr.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
         sp_zxjfxr.Parameters.ParamByName('@zyh').Value:=qry_cx_jcxm.FieldByName('zyh').asstring;
         sp_zxjfxr.Parameters.ParamByName('@czydm').Value:=pub_czydm;
         sp_zxjfxr.Parameters.ParamByName('@yzid').Value:=qry_cx_jcxm.FieldByName('id').AsInteger;
         sp_zxjfxr.Parameters.ParamByName('@kdys').Value:=qry_cx_jcxm.FieldByName('kdys').asstring;
         sp_zxjfxr.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',qry_cx_jcxm.FieldByName('kdrq').AsDateTime);
         sp_zxjfxr.Parameters.ParamByName('@sczt').Value:='';
         sp_zxjfxr.Parameters.ParamByName('@plxh').Value:='1';
         sp_zxjfxr.ExecProc;
       except
         application.MessageBox('记费失败!', '提示信息', 0 + 16);
       end;
       qry_cx_jcxm.Next;
      end;
      Application.MessageBox('计费完成！', '提示', MB_OK + MB_ICONINFORMATION);
      Button1.Click;
  end;

end;

procedure Tfrm_jcsqdjf.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
end;

end.
