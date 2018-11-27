unit p_psjg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB;

type
  Tfrm_psjg = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    qry_cxyz: TADOQuery;
    qry_tzyz: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
  psyzid:string;
  ISxgpz:string;

    { Public declarations }
  end;

var
  frm_psjg: Tfrm_psjg;

implementation

uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_psjg.Button1Click(Sender: TObject);
var kdys,xmdm,zyh:string;
    kdrq:Tdatetime;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select kdys,xmdm,kdrq,zyh from zybl_zyyz where id='+psyzid;
  DM_data.qry_pub.Open;
  kdys:= DM_data.qry_pub.FieldByName('kdys').AsString;
  xmdm:= DM_data.qry_pub.FieldByName('xmdm').AsString;
  kdrq:= DM_data.qry_pub.FieldByName('kdrq').asdatetime;
  zyh:=  DM_data.qry_pub.FieldByName('zyh').AsString;
  if Trim(Edit1.text)<>'' then
  begin
    try
      if (pub_yydm='0266') and (ISxgpz ='修改皮试0266') then
      begin
         if (pos('皮试', Trim(Edit1.text)) < 1) then
         begin
           ShowMessage('该医嘱皮试项目名称没有包含皮试内容，不能修改结果！');
           Exit;
         end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='update zybl_zyyz set xmmc='+''''+trim(edit1.text)+''''+' where '+
                                 'id='+psyzid;
      DM_data.qry_pub.ExecSQL;
      ShowMessage('修改成功！');
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text:='select * from sys_psypdm where yzdm ='+''''+xmdm+'''';
      DM_data.qry_pub.Open;
      if (not DM_data.qry_pub.IsEmpty) and ((Pos('+',trim(edit1.text))>0) or (Pos('阳',trim(edit1.text))>0)) then
      begin
        while not DM_data.qry_pub.eof do
        begin
          qry_tzyz.Close;
          qry_tzyz.SQL.text:='update zybl_zyyz set tzbz=1,tzrq=kdrq+''00:00:01'''+
          ',tzry='+''''+ kdys+''''+' where zyh='+''''+zyh+''''+' and yzsx=''长期'' and tzbz=0 and xmdm='+''''+
          DM_data.qry_pub.FieldByName('ypdm').asstring+''''+' and kdrq>='+''''+formatdatetime('yyyy-MM-dd hh:mm',kdrq)+'''';
          qry_tzyz.ExecSQL;

          DM_data.qry_pub.Next;
        end;
      end;
      psyzid:='';
      ISxgpz:='';
      Close;
    except
      ShowMessage('修改失败！');
    end;

  end;
end;

procedure Tfrm_psjg.Button2Click(Sender: TObject);
begin
  ISxgpz:='';
  Close;
end;

procedure Tfrm_psjg.FormShow(Sender: TObject);
begin
qry_cxyz.Close;
qry_cxyz.SQL.Text:='select * from zybl_zyyz where id='+psyzid;
qry_cxyz.open;
if not qry_cxyz.IsEmpty then
Edit1.text:= Trim(qry_cxyz.FieldByName('xmmc').asstring)
else
Edit1.text:='';
end;

end.
