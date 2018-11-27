unit p_qtyshz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm_qtyshz = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_qtyshz: Tfrm_qtyshz;
  q_zyh:string;
  sqsj:string;

implementation

{$R *.dfm}

uses p_dm,p_func;

procedure Tfrm_qtyshz.Button1Click(Sender: TObject);
var ysdm,ysmc:string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+''''+
  Edit1.text+'''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox('填写的医生代码不存在，请重新填写', '警告', MB_OK +
      MB_ICONWARNING);
    Edit1.SetFocus;
  end
  else
  begin
    if Application.MessageBox(PChar('选择的医生是否是：'+trim(DM_data.qry_pub.FieldByName('mc').asstring) )
    , '询问', MB_YESNO +MB_ICONQUESTION) = IDYES then
    begin
      ysdm:= trim(Edit1.text);
      ysmc:= trim(DM_data.qry_pub.FieldByName('mc').asstring);
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text:='update zydzbl_blys set hzysdm=isnull(hzysdm,'''')+'+''''+
      ','+ysdm+''''+',hzys=isnull(hzys,'''')+'+''''+','+ysmc+''''+
      ' where zyh='+''''+q_zyh+'''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text:='insert into zyyz_hzmx(zyh,hzys,jssj) select distinct '+''''+
      q_zyh+''''+','+''''+ysdm+''''+
      ','+''''+formatdatetime('yyyy-MM-dd hh:mm:ss',frm_func.curr_date)+'''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text:='update zydzbl_hzts set sfjs=1 '+
      ' where zyh='+''''+q_zyh+''''+' and sqsj='+''''+sqsj+'''';
      DM_data.qry_pub.ExecSQL;
      Close;
    end
    else
    begin
      Edit1.SetFocus;
    end;

  end;
  
end;

procedure Tfrm_qtyshz.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
