unit p_czyjz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, Db, DBTables, ExtCtrls, Buttons, Mask, DBCtrls, ADODB;

type
  Tfrm_czyjz = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    Bevel1: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Bevel2: TBevel;
    Memo1: TMemo;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    ds_sfzk: TDataSource;
    ds_sjh: TDataSource;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    BitBtn3: TBitBtn;
    sp_czyjz: TADOStoredProc;
    sp_cxsjh: TADOStoredProc;
    sp_srzk: TADOStoredProc;
    procedure cx_jzzk;
    procedure tj_sfzk;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    syjrc,tyjrc,txyfrc,cybxrc,cytxrc:integer;
    syjze,tyjze,cybxje,cytxje,ssje:real;
    tfsjh:string;
    sjqzh:string;
    jzdh:string;
    jzrq:Tdatetime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_czyjz: Tfrm_czyjz;

implementation

uses P_login,p_dm, p_func,p_zyczyrb;

{$R *.DFM}

procedure Tfrm_czyjz.tj_sfzk;
begin
try
   with sp_srzk do begin
        close;
        parameters.ParamByName('@czydm').value:=pub_czydm;
        open;
   end;
   syjze:=sp_srzk.fieldbyname('syjze').asfloat;
   syjrc:=sp_srzk.fieldbyname('syjrc').asinteger;
   tyjze:=sp_srzk.fieldbyname('tyjze').asfloat;
   tyjrc:=sp_srzk.fieldbyname('tyjrc').asinteger;
   cybxje:=sp_srzk.fieldbyname('cybxje').asfloat;
   cytxje:=sp_srzk.fieldbyname('cytxje').asFloat;
   cybxrc:=sp_srzk.fieldbyname('cybxrc').asinteger;
   cytxrc:=sp_srzk.fieldbyname('cytxrc').asinteger;
   ssje:=sp_srzk.fieldbyname('ssje').asfloat;
   with sp_cxsjh do begin
      close;
      parameters.ParamByName('@czydm').value:=pub_czydm;
      open;
   end;
   tfsjh:=sp_cxsjh.fieldbyname('tfsjh').asstring;
   sjqzh:=sp_cxsjh.fieldbyname('sjqzh').asstring;
   memo2.Lines.clear;
   memo1.Lines.clear;
   memo2.Lines.Add(tfsjh);
   memo1.Lines.Add(sjqzh);
except
end;
end;

procedure Tfrm_czyjz.cx_jzzk;
begin
  try
    with sp_srzk do
    begin
         active:=false;
         parameters.ParamByName('@sr_czydm').value:=pub_czydm;
         parameters.ParamByName('@sr_zt').value:='1'; //结帐
         parameters.ParamByName('@sc_zt').value:='0';
         execproc;
    end;
    with sp_cxsjh do
      begin
          active:=false;
          parameters.ParamByName('@sr_czydm').value:=pub_czydm;
          parameters.ParamByName('@sr_zt').value:='0'; //打印
          parameters.ParamByName('@sc_zt').value:='0';
          execproc;
      end
  except
        application.MessageBox('没有数据不能统计','提示',0+16);
        abort;
  end;
end;
procedure Tfrm_czyjz.BitBtn1Click(Sender: TObject);
var returnvalue:string;
begin
     tj_sfzk;
     if (syjze=0) and (tyjze=0) and (ssje=0) then
     begin
       application.MessageBox('没有统计数据不能结帐!','提示',0+16);
       abort;
     end;
     jzdh:=get_sjh(pub_czydm);
     jzrq:=frm_func.curr_date;
     with sp_czyjz do begin
          active:=false;
          parameters.ParamByName('@jzdh').value:=jzdh;
          parameters.ParamByName('@czydm').value:=pub_czydm;
          parameters.ParamByName('@sjqzh').value:=sjqzh;
          parameters.ParamByName('@tfsjh').value:=tfsjh;
          parameters.ParamByName('@jzrq').value:=jzrq;
          parameters.ParamByName('@syjze').value:=syjze;
          parameters.ParamByName('@syjrc').value:=syjrc;
          parameters.ParamByName('@tyjze').value:=tyjze;
          parameters.ParamByName('@tyjrc').value:=tyjrc;
          parameters.ParamByName('@cybxje').value:=cybxje;
          parameters.ParamByName('@cytxje').value:=cytxje;
          parameters.ParamByName('@cytxrc').value:=cytxrc;
          parameters.ParamByName('@cybxrc').value:=cybxrc;
          parameters.ParamByName('@ssje').value:=ssje;
          parameters.ParamByName('@sczt').value:='0';
          execproc;
     end;
   returnvalue:=sp_czyjz.parameters.ParamByName('@sczt').value;
   if sp_czyjz.parameters.ParamByName('@sczt').value='1' then
   begin
     bitbtn1.Enabled:=false;
     application.MessageBox('结帐成功!','提示',0+48);
   end
   else
   begin
     application.MessageBox('结帐失败!','提示',0+16);
   end;
end;

procedure Tfrm_czyjz.BitBtn2Click(Sender: TObject);
begin
  tj_sfzk;
end;

procedure Tfrm_czyjz.FormShow(Sender: TObject);
begin
     with dm_data.Qry_pub do begin
         close;
         sql.Clear;
         sql.Text:='select * from zysf_cwkjz where czydm='+
                   ''''+pub_czydm+''''+' and'+
                   ' jzbz='+''''+ '0' +''''  ;
         open;
     end;
     bitbtn1.Enabled:= (dm_data.Qry_pub.IsEmpty and (Copy(pub_yxsgjzbz,2 , 1)='1'));
end;

procedure Tfrm_czyjz.BitBtn4Click(Sender: TObject);
begin
   close;
end;

procedure Tfrm_czyjz.BitBtn3Click(Sender: TObject);
begin
    application.CreateForm(Tfrm_zyczyrb,frm_zyczyrb);
    try
       frm_zyczyrb.showmodal;
    finally
       frm_zyczyrb.free;
    end;
end;
initialization
  RegisterClass(Tfrm_czyjz);
end.
