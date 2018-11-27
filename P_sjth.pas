unit P_sjth;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, Grids, DBGrids, DBCtrls;

type
  Tfrm_sjth = class(TForm)
    Label1: TLabel;
    sfy: TEdit;
    Label2: TLabel;
    wjdqh: TEdit;
    Label3: TLabel;
    sgjsh: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    sp_cx_dqsj: TADOStoredProc;
    sp_in_sjth: TADOStoredProc;
    ad_cx_czy: TADODataSet;
    ds_czy: TDataSource;
    dbgridczy: TDBGrid;
    Label4: TLabel;
    ad_sjlx: TADODataSet;
    ds_sjlb: TDataSource;
    sjlb: TDBLookupComboBox;
    procedure sfyKeyPress(Sender: TObject; var Key: Char);
    procedure dbgridczyKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure sjlbExit(Sender: TObject);
    procedure sjlbKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure cxdqsj;
    procedure modifydqsj;
  public
    { Public declarations }
  end;

var
  frm_sjth: Tfrm_sjth;

implementation
uses p_dm;
{$R *.DFM}

procedure Tfrm_sjth.sfyKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if trim(sfy.text) = '' then
    begin
      application.messagebox('请输入收费员代码！', '错误', mb_ok + mb_iconerror);
      sfy.setfocus;
    end
    else
    begin
      ad_cx_czy.Close;
      ad_cx_czy.commandtext := 'select a.dm,a.mc from sys_czy a where pym like ' + #39 + '%' + trim(sfy.text) + '%' + #39 + ' order by a.dm';
      ad_cx_czy.Open;
      if ad_cx_czy.IsEmpty then
        application.MessageBox('收费源代码输入错误，请重输', '错误', mb_ok + mb_iconerror)
      else
        if ad_cx_czy.RecordCount = 1 then
        begin
          sfy.text := trim(ad_cx_czy.fieldbyname('mc').asstring);
          sjlb.SetFocus;
        end
        else
        begin
          dbgridczy.left := sfy.Left;
          dbgridczy.top := sfy.top + sfy.height;
          dbgridczy.visible := true;
          dbgridczy.setfocus;
        end;

    end;

  end;
end;

procedure Tfrm_sjth.cxdqsj;
begin
  sp_cx_dqsj.close;
  sp_cx_dqsj.Parameters.ParamByName('@czy').value := trim(ad_cx_czy.fieldbyname('dm').asstring);
  sp_cx_dqsj.Parameters.ParamByName('@sjlb').value := ad_sjlx.fieldbyname('dm').asstring;
  sp_cx_dqsj.open;
  if sp_cx_dqsj.isempty then
  begin
    application.messagebox('该收费员已经没有未使用的收据，请核查！', '信息', mb_ok + mb_iconinformation);
    sfy.setfocus;
  end
  else
  begin
    if sp_cx_dqsj.fieldbyname('sybh').asinteger = 0 then
      wjdqh.text := inttostr(sp_cx_dqsj.fieldbyname('sjqh').asinteger - 1)
    else
      wjdqh.text := inttostr(sp_cx_dqsj.fieldbyname('sybh').asinteger);
    sgjsh.setfocus;
  end


end;

procedure Tfrm_sjth.dbgridczyKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    sfy.text := ad_cx_czy.fieldbyname('mc').asstring;
    sjlb.setfocus;
  end
end;

procedure Tfrm_sjth.BitBtn1Click(Sender: TObject);
var i: int64;
begin
  try
    i := strtoint(sgjsh.text);
  except
    application.messagebox('手工发票终止号中有非法字符！', '错误', mb_ok + mb_iconerror);
    sgjsh.setfocus;
    abort;
  end;
  if (i < sp_cx_dqsj.fieldbyname('sybh').asinteger) or (i > sp_cx_dqsj.fieldbyname('sjzh').asinteger) then
  begin
    application.MessageBox('输入的手工发票终止号，没在该收费员领用的收据内，请审核！', '错误', mb_ok + mb_iconerror);
    sgjsh.setfocus;
  end
  else
    modifydqsj
end;

procedure Tfrm_sjth.modifydqsj;
begin
  with sp_in_sjth do
  begin
    active := false;
    parameters.ParamByName('@lydh').value := sp_cx_dqsj.fieldbyname('lydh').asstring;
    parameters.ParamByName('@czydm').value := ad_cx_czy.fieldbyname('dm').asstring;
    parameters.ParamByName('@sjlb').value := sp_cx_dqsj.fieldbyname('sjlb').asstring;
    parameters.ParamByName('@sjqh').value := sp_cx_dqsj.fieldbyname('sybh').asinteger + 1;
    parameters.ParamByName('@sjzh').value := strtoint(sgjsh.text);
    parameters.ParamByName('@thrq').value := now;
    parameters.ParamByName('@thczy').value := pub_czydm;
    parameters.ParamByName('@sczt').value := 'a';
    execproc;
  end;
  if sp_in_sjth.parameters.ParamByName('@sczt').value = 'b' then
  begin
    application.messagebox('收据调号起始号或终止号已经存在，请确定起始号或终止号！', '错误', mb_ok + mb_iconerror);
    sgjsh.setfocus;
  end
  else
    if sp_in_sjth.parameters.ParamByName('@sczt').value <> '0' then
      application.messagebox('收据调号修改不成功，请重新保存！', '错误', mb_ok + mb_iconerror)
    else
    begin
      application.messagebox('收据调号修改成功！', '提示', mb_ok + mb_iconinformation);
      sfy.setfocus;
      wjdqh.text := '';
      sgjsh.text := '';
      ad_cx_czy.close;
      sp_cx_dqsj.close;
    end;
end;

procedure Tfrm_sjth.BitBtn2Click(Sender: TObject);
begin
  self.close;
end;

procedure Tfrm_sjth.sjlbExit(Sender: TObject);
begin
  if not bitbtn2.focused then
    cxdqsj;
end;

procedure Tfrm_sjth.sjlbKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    sgjsh.SetFocus;
end;

procedure Tfrm_sjth.FormCreate(Sender: TObject);
begin
  ad_sjlx.open;
end;
initialization
  RegisterClass(Tfrm_sjth);
end.

