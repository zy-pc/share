unit p_hspbb_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, DB, ADODB, DBGridEhGrouping, GridsEh,
  DBGridEh, Menus, ActnList,cxExportGrid4Link;

type
  Tfrm_hspbb_main = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pmain: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Label6: TLabel;
    pbsj: TComboBox;
    Label7: TLabel;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    qry_hspbb_rq: TADOQuery;
    qry_hspbb_xzrq: TADOQuery;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    SaveDialog1: TSaveDialog;
    sp_xzbc: TADOStoredProc;
    qry_bcjc: TADOQuery;
    SpeedButton9: TSpeedButton;
    qry_del: TADOQuery;
    Label31: TLabel;
    zyxz: TComboBox;
    ad_bqks: TADODataSet;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pbsjChange(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure zyxzChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure sjchange;
   var  scx,scy:Integer;

  end;

var
  frm_hspbb_main: Tfrm_hspbb_main;
      rqid:Integer;

implementation
uses
p_hspbb_pb,p_bcsz,p_hspbb_ryzh,p_dm,p_func,p_ljjc,p_hspbb_tjbb;

{$R *.dfm}
procedure Tfrm_hspbb_main.sjchange;
begin
frm_hspbb_pb.qry_hspbb_pb.close;
frm_hspbb_pb.qry_hspbb_pb.Parameters.ParamByName('rqid').Value:=rqid;
frm_hspbb_pb.qry_hspbb_pb.Open;

frm_hspbb_pb.cxGrid1DBBandedTableView1.Bands[1].Caption:=frm_hspbb_main.pbsj.text+'(星期一)';
frm_hspbb_pb.cxGrid1DBBandedTableView1.Bands[2].Caption:=DateToStr(strtodatetime(pbsj.text)+1)+'(星期二)';
frm_hspbb_pb.cxGrid1DBBandedTableView1.Bands[3].Caption:=DateToStr(strtodatetime(pbsj.text)+2)+'(星期三)';
frm_hspbb_pb.cxGrid1DBBandedTableView1.Bands[4].Caption:=DateToStr(strtodatetime(pbsj.text)+3)+'(星期四)';
frm_hspbb_pb.cxGrid1DBBandedTableView1.Bands[5].Caption:=DateToStr(strtodatetime(pbsj.text)+4)+'(星期五)';
frm_hspbb_pb.cxGrid1DBBandedTableView1.Bands[6].Caption:=DateToStr(strtodatetime(pbsj.text)+5)+'(星期六)';
frm_hspbb_pb.cxGrid1DBBandedTableView1.Bands[7].Caption:=DateToStr(strtodatetime(pbsj.text)+6)+'(星期天)';

frm_hspbb_pb.ksts.text:='';
frm_hspbb_pb.ksts.Text:=qry_hspbb_rq.FieldByName('ksbz').AsString;

frm_hspbb_pb.hsly.text:='';
frm_hspbb_pb.qry_hsly.close;
frm_hspbb_pb.qry_hsly.SQL.Clear;
frm_hspbb_pb.qry_hsly.SQL.Add('select  a.*,b.mc from zybl_hspbb_hsly a,zybl_hspbb_czy b where a.ksdm=:ksdm and a.rqid=:rqid and a.czy=b.dm order by a.id');
frm_hspbb_pb.qry_hsly.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
frm_hspbb_pb.qry_hsly.Parameters.ParamByName('rqid').Value:=rqid;
frm_hspbb_pb.qry_hsly.Open;
frm_hspbb_pb.qry_hsly.First;

while not frm_hspbb_pb.qry_hsly.Eof do
begin
frm_hspbb_pb.hsly.Lines.Add(frm_hspbb_pb.qry_hsly.FieldByName('ly').AsString+'(留言人:'+frm_hspbb_pb.qry_hsly.fieldbyname('mc').asstring+'   留言时间:'
+datetostr(frm_hspbb_pb.qry_hsly.fieldbyname('lysj').AsDateTime)+')');
frm_hspbb_pb.qry_hsly.next;
end;


frm_hspbb_pb.qry_hsly1.close;
frm_hspbb_pb.qry_hsly1.SQL.Clear;
frm_hspbb_pb.qry_hsly1.SQL.Add('select  a.*,b.mc from zybl_hspbb_hsly a,zybl_hspbb_czy b where a.czy=:czy and a.rqid=:rqid and a.czy=b.dm order by a.id');
frm_hspbb_pb.qry_hsly1.Parameters.ParamByName('czy').Value:=pub_czydm;
frm_hspbb_pb.qry_hsly1.Parameters.ParamByName('rqid').Value:=rqid;
frm_hspbb_pb.qry_hsly1.Open;

frm_hspbb_pb.Memo1.text:='';
frm_hspbb_pb.Memo1.Lines.Add(frm_hspbb_pb.qry_hsly1.FieldByName('ly').AsString);


frm_hspbb_pb.qry_hbjl.close;
frm_hspbb_pb.qry_hbjl.SQL.clear;
frm_hspbb_pb.qry_hbjl.sql.Add('SELECT a.*,b.mc czr,c.mc hbr FROM dbo.zybl_hspbb_hbjl a,zybl_hspbb_czy b,zybl_hspbb_czy c where a.ksdm=:ksdm and a.rqid=:rqid and a.czy=b.dm and a.hbczy=c.dm');
frm_hspbb_pb.qry_hbjl.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
frm_hspbb_pb.qry_hbjl.Parameters.ParamByName('rqid').Value:=rqid;
frm_hspbb_pb.qry_hbjl.Open;

end;

procedure Tfrm_hspbb_main.Action1Execute(Sender: TObject);
begin
SpeedButton5.Click;
end;

procedure Tfrm_hspbb_main.Action2Execute(Sender: TObject);
begin
SpeedButton6.Click;
end;

procedure Tfrm_hspbb_main.FormCreate(Sender: TObject);
begin
    ad_bqks.Close;
    ad_bqks.Parameters.ParamByName('bqdm').value:=pub_bqdm;
    ad_bqks.Parameters.ParamByName('bqdm1').value:=pub_bqdm;
//    if (pub_hldy) and (username='sys_bqgl') then
//      ad_bqks.Parameters.ParamByName('hsgzz').value:=1
//    else
    ad_bqks.Parameters.ParamByName('hsgzz').value:=0;
    Frm_func.open_dataset(ad_bqks);
    zyxz.Items.Clear;
    zyxz.Items.Add('全部');
    while not ad_bqks.Eof do
     begin
      zyxz.Items.Add(trim(ad_bqks.FieldByName('dm').AsString)+'-'+trim(ad_bqks.FieldByName('mc').AsString));
      ad_bqks.Next;
     end;
     pb_ksdm:=pub_ksdm;
end;

procedure Tfrm_hspbb_main.FormShow(Sender: TObject);
begin
SpeedButton5.Visible:=false;
SpeedButton6.Visible:=false;
SpeedButton7.Visible:=false;
SpeedButton8.Visible:=false;
SpeedButton9.Visible:=false;
if pub_czyzw='04' then
begin
  SpeedButton7.Enabled:=true;
  SpeedButton9.Enabled:=true;
end;
qry_hspbb_rq.Close;
qry_hspbb_rq.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hspbb_rq.Open;

qry_hspbb_xzrq.Close;
qry_hspbb_xzrq.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hspbb_xzrq.Open;
if qry_hspbb_xzrq.RecordCount=0 then
begin
  sp_xzbc.Close;
  sp_xzbc.Parameters.Refresh;
  sp_xzbc.Parameters.ParamByName('@ksdm').Value:=pb_ksdm;
  sp_xzbc.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyy-mm-dd',Frm_func.curr_date-6);
  sp_xzbc.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyy-mm-dd',Frm_func.curr_date+1);
  sp_xzbc.ExecProc;
qry_hspbb_xzrq.Close;
qry_hspbb_xzrq.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hspbb_xzrq.Open;
end;


qry_hspbb_rq.First;
while not qry_hspbb_rq.eof do
begin
pbsj.items.Add(trim(qry_hspbb_rq['ksrq']));
qry_hspbb_rq.next;
end;

  scx:=GetSystemMetrics(SM_CXSCREEN);
  scy:=GetSystemMetrics(SM_CYSCREEN);



pbsj.Text:=qry_hspbb_xzrq['ksrq'];
Label7.Caption:='(第'+inttostr(qry_hspbb_xzrq.FieldByName('weeknum').AsInteger)+'周)';
Label1.Caption:='排班从： '+qry_hspbb_xzrq['ksrq']+'   至： '+qry_hspbb_xzrq['jsrq'] ;
rqid:=qry_hspbb_xzrq.FieldByName('id').AsInteger;
qry_hspbb_rq.Locate('ksrq',pbsj.Text,[]);





end;

procedure Tfrm_hspbb_main.pbsjChange(Sender: TObject);
begin
if    qry_hspbb_rq.Locate('ksrq',pbsj.text,[]) then
begin
Label7.Caption:='(第'+inttostr(qry_hspbb_rq.FieldByName('weeknum').AsInteger)+'周)';
Label1.Caption:='排班从： '+qry_hspbb_rq['ksrq']+'   至： '+qry_hspbb_rq['jsrq'] ;
rqid:=qry_hspbb_rq.FieldByName('id').AsInteger;
end;
if frm_hspbb_pb<>nil then
begin
 sjchange;
end;


end;

procedure Tfrm_hspbb_main.SpeedButton1Click(Sender: TObject);
begin
SpeedButton5.Visible:=false;
SpeedButton6.Visible:=false;
SpeedButton7.Visible:=false;
SpeedButton8.Visible:=false;
SpeedButton9.Visible:=false;




   if pmain.ControlCount > 0 then
  begin
    ((pmain.Controls[0]) as TForm).Free;
  end;
{if not Assigned(frm_hspbb_pb) then
FreeAndNil(frm_hspbb_pb);
if not Assigned(frm_bcsz)  then
FreeAndNil(frm_bcsz);
if not Assigned(frm_hspbb_ryzh)  then
FreeAndNil(frm_hspbb_ryzh);    }

  Application.CreateForm(Tfrm_hspbb_ryzh, frm_hspbb_ryzh);

  frm_hspbb_ryzh.Height:=scy-60;
  frm_hspbb_ryzh.Width:=scx-60;
    frm_hspbb_ryzh.Parent := pmain;
    frm_hspbb_ryzh.Show;

end;

procedure Tfrm_hspbb_main.SpeedButton2Click(Sender: TObject);
begin
SpeedButton5.Visible:=false;
SpeedButton6.Visible:=false;
SpeedButton7.Visible:=false;
SpeedButton8.Visible:=false;
SpeedButton9.Visible:=false;

  Application.CreateForm(Tfrm_hspbb_tjbb, frm_hspbb_tjbb);
  frm_hspbb_tjbb.Height:=scy-60;
  frm_hspbb_tjbb.Width:=scx-60;
    frm_hspbb_tjbb.Parent := pmain;
    frm_hspbb_tjbb.Show;

end;

procedure Tfrm_hspbb_main.SpeedButton3Click(Sender: TObject);
var
i:Integer;
begin
SpeedButton5.Visible:=True;
SpeedButton6.Visible:=True;
SpeedButton7.Visible:=True;
SpeedButton8.Visible:=True;
SpeedButton9.Visible:=True;

  if pmain.ControlCount > 0 then
  begin
    ((pmain.Controls[0]) as TForm).Free;
  end;
{if not Assigned(frm_hspbb_pb) then
FreeAndNil(frm_hspbb_pb);
if not Assigned(frm_bcsz)  then
FreeAndNil(frm_bcsz);
if not Assigned(frm_hspbb_ryzh)  then
FreeAndNil(frm_hspbb_ryzh);  }

  Application.CreateForm(Tfrm_hspbb_pb, frm_hspbb_pb);
  frm_hspbb_pb.Height:=scy-60;
  frm_hspbb_pb.Width:=scx-60;
    frm_hspbb_pb.Parent := pmain;
    frm_hspbb_pb.Show;

end;

procedure Tfrm_hspbb_main.SpeedButton4Click(Sender: TObject);
begin
SpeedButton5.Visible:=false;
SpeedButton6.Visible:=false;
SpeedButton7.Visible:=false;
SpeedButton8.Visible:=false;
SpeedButton9.Visible:=false;

  if pmain.ControlCount > 0 then
  begin
    ((pmain.Controls[0]) as TForm).Free;
  end;
{if not Assigned(frm_hspbb_pb) then
FreeAndNil(frm_hspbb_pb);
if not Assigned(frm_bcsz)  then
FreeAndNil(frm_bcsz);
if not Assigned(frm_hspbb_ryzh)  then
FreeAndNil(frm_hspbb_ryzh);    }
  
  Application.CreateForm(Tfrm_bcsz, frm_bcsz);
    frm_bcsz.Height:=scy-60;
  frm_bcsz.Width:=scx-60;
    frm_bcsz.Parent := pmain;
    frm_bcsz.Show;

end;

procedure Tfrm_hspbb_main.SpeedButton5Click(Sender: TObject);
begin
qry_hspbb_rq.prior;
if qry_hspbb_rq.bof then
begin
    application.MessageBox('已经到第一条记录', '提示', 0 + 16);
end
else
begin
pbsj.Text:=qry_hspbb_rq['ksrq'];
Label7.Caption:='(第'+inttostr(qry_hspbb_rq.FieldByName('weeknum').AsInteger)+'周)';
Label1.Caption:='排班从： '+qry_hspbb_rq['ksrq']+'   至： '+qry_hspbb_rq['jsrq'] ;
rqid:=qry_hspbb_rq.FieldByName('id').AsInteger;
if  frm_hspbb_pb<>nil  then
begin
sjchange;
end;

end;

end;

procedure Tfrm_hspbb_main.SpeedButton6Click(Sender: TObject);
var
i:Integer;
begin
qry_hspbb_rq.next;
if qry_hspbb_rq.eof then
begin
if messagedlg('是否生成下周班次？',mtwarning,[mbyes,mbno],0)=mryes then
begin
  sp_xzbc.Close;
  sp_xzbc.Parameters.Refresh;
  sp_xzbc.Parameters.ParamByName('@ksdm').Value:=pb_ksdm;
  sp_xzbc.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyy-mm-dd',StrToDateTime(pbsj.text)+6);
  sp_xzbc.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyy-mm-dd',StrToDateTime(pbsj.text)+12);
  sp_xzbc.ExecProc;
qry_hspbb_rq.Close;
qry_hspbb_rq.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hspbb_rq.Open;
qry_hspbb_rq.first;
pbsj.Items.Clear;
for I := 0 to qry_hspbb_rq.RecordCount - 1 do
 begin
pbsj.items.Add(trim(qry_hspbb_rq['ksrq']));
qry_hspbb_rq.Next;
 end;
 
end
else
begin
  exit;
end;
end;

pbsj.Text:=qry_hspbb_rq['ksrq'];
Label7.Caption:='(第'+inttostr(qry_hspbb_rq.FieldByName('weeknum').AsInteger)+'周)';
Label1.Caption:='排班从： '+qry_hspbb_rq['ksrq']+'   至： '+qry_hspbb_rq['jsrq'] ;
rqid:=qry_hspbb_rq.FieldByName('id').AsInteger;
if frm_hspbb_pb<>nil  then
begin
sjchange;
end;



end;

procedure Tfrm_hspbb_main.SpeedButton7Click(Sender: TObject);
var
drsybc1,drsybc2,drsybc3,drsybc4,drsybc5,drsybc6,drsybc7:string;
bybc:string;
begin
if messagedlg('确定保存当前班次？',mtwarning,[mbyes,mbno],0)=mryes then
begin
  frm_hspbb_pb.qry_hspbb_pb.first;
  drsybc1:=frm_hspbb_pb.qry_hspbb_pb.FieldByName('monday_bc').AsString;
  drsybc2:=frm_hspbb_pb.qry_hspbb_pb.FieldByName('tuesday_bc').AsString;
  drsybc3:=frm_hspbb_pb.qry_hspbb_pb.FieldByName('wednesday_bc').AsString;
  drsybc4:=frm_hspbb_pb.qry_hspbb_pb.FieldByName('thursday_bc').AsString;
  drsybc5:=frm_hspbb_pb.qry_hspbb_pb.FieldByName('friday_bc').AsString;
  drsybc6:=frm_hspbb_pb.qry_hspbb_pb.FieldByName('saturday_bc').AsString;
  drsybc7:=frm_hspbb_pb.qry_hspbb_pb.FieldByName('sunday_bc').AsString;
  while not frm_hspbb_pb.qry_hspbb_pb.eof do
  begin
      frm_hspbb_pb.qry_hspbb_pb.Next;
      drsybc1:=drsybc1+'-'+frm_hspbb_pb.qry_hspbb_pb.FieldByName('monday_bc').AsString;
      drsybc2:=drsybc2+'-'+frm_hspbb_pb.qry_hspbb_pb.FieldByName('tuesday_bc').AsString;
      drsybc3:=drsybc3+'-'+frm_hspbb_pb.qry_hspbb_pb.FieldByName('wednesday_bc').AsString;
      drsybc4:=drsybc4+'-'+frm_hspbb_pb.qry_hspbb_pb.FieldByName('thursday_bc').AsString;
      drsybc5:=drsybc5+'-'+frm_hspbb_pb.qry_hspbb_pb.FieldByName('friday_bc').AsString;
      drsybc6:=drsybc6+'-'+frm_hspbb_pb.qry_hspbb_pb.FieldByName('saturday_bc').AsString;
      drsybc7:=drsybc7+'-'+frm_hspbb_pb.qry_hspbb_pb.FieldByName('sunday_bc').AsString;
  end;
    qry_bcjc.close;
    qry_bcjc.sql.Clear;
    qry_bcjc.sql.Add('select * from zybl_hspbb_bc where ksdm=:ksdm and sfby=1 order by id');
    qry_bcjc.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
    qry_bcjc.Open;
    qry_bcjc.First;

        Application.CreateForm(Tfrm_ljjc, frm_ljjc);
        frm_ljjc.Memo1.Lines.Clear;
    while   not qry_bcjc.Eof do
    begin
      bybc:=qry_bcjc.FieldByName('bc').AsString;
      if pos(bybc,drsybc1)=0 then
        frm_ljjc.Memo1.Lines.Add('星期一无'+#39+bybc+#39+'班次');
             if pos(bybc,drsybc2)=0 then
       frm_ljjc.Memo1.Lines.Add('星期二无'+#39+bybc+#39+'班次');
             if pos(bybc,drsybc3)=0 then
       frm_ljjc.Memo1.Lines.Add('星期三无'+#39+bybc+#39+'班次');
             if pos(bybc,drsybc4)=0 then
       frm_ljjc.Memo1.Lines.Add('星期四无'+#39+bybc+#39+'班次');
             if pos(bybc,drsybc5)=0 then
       frm_ljjc.Memo1.Lines.Add('星期五无'+#39+bybc+#39+'班次');
             if pos(bybc,drsybc6)=0 then
       frm_ljjc.Memo1.Lines.Add('星期六无'+#39+bybc+#39+'班次');
             if pos(bybc,drsybc7)=0 then
       frm_ljjc.Memo1.Lines.Add('星期天无'+#39+bybc+#39+'班次');

      qry_bcjc.Next;

    end;
    if Trim(frm_ljjc.Memo1.Text)<>'' then
       begin
     frm_ljjc.ShowModal;
       end
       else
       begin
  qry_hspbb_rq.Edit;
  qry_hspbb_rq['pbsd']:=1;
  qry_hspbb_rq.Post;
       end;
end;
end;

procedure Tfrm_hspbb_main.SpeedButton8Click(Sender: TObject);
begin
  if frm_hspbb_pb<>nil then
  begin
    SaveDialog1.FileName :=pub_ksmc+datetostr(qry_hspbb_rq.FieldByName('ksrq').AsDateTime)+'排班表';
    if self.SaveDialog1.Execute then
       ExportGrid4ToEXCEL( SaveDialog1.FileName, frm_hspbb_pb.cxGrid1, true, true );
//    ExportGridToExcel(self.SaveDialog1.FileName,frm_hspbb_pb.cxGrid1,True,True,True,'xls');
  end;

end;

procedure Tfrm_hspbb_main.SpeedButton9Click(Sender: TObject);
var
rqid_old:Integer;
 begin
 if qry_hspbb_rq.FieldByName('pbsd').AsBoolean then
  begin
   Application.MessageBox('班次已经锁定，不能刷新！', '提示', 0 + 16);
  end
  else
  begin
 if MessageDlg('刷新排班会清除本周排班记录，是否继续？',mtConfirmation,[mbYes,mbNo],1)=mrYes then
 begin
 qry_del.close;
 qry_del.sql.clear;
 qry_del.sql.add('delete from zybl_hspbb_rq where id=:id');
 qry_del.Parameters.ParamByName('id').Value:=rqid;
 qry_del.ExecSQL;

 qry_del.close;
 qry_del.sql.clear;
 qry_del.sql.add('delete from zybl_hspbb_pb where rqid=:id');
 qry_del.Parameters.ParamByName('id').Value:=rqid;
 qry_del.ExecSQL;

 rqid_old:=rqid;


 sp_xzbc.Close;
 sp_xzbc.Parameters.Refresh;
 sp_xzbc.Parameters.ParamByName('@ksdm').Value:=pb_ksdm;
 sp_xzbc.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyy-mm-dd',StrToDateTime(pbsj.text)-6);
 sp_xzbc.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyy-mm-dd',StrToDateTime(pbsj.text)+1);
 sp_xzbc.ExecProc;
qry_hspbb_rq.Close;
qry_hspbb_rq.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hspbb_rq.Open;
qry_hspbb_rq.Locate('ksrq',pbsj.Text,[]);
rqid:=qry_hspbb_rq.FieldByName('id').AsInteger;

   qry_del.close;
 qry_del.sql.clear;
 qry_del.sql.add('update  zybl_hspbb_hsly set rqid=:rqid1 where rqid=:id');
  qry_del.Parameters.ParamByName('rqid1').Value:=rqid;
 qry_del.Parameters.ParamByName('id').Value:=rqid_old;
 qry_del.ExecSQL;


if frm_hspbb_pb<>nil  then
begin
sjchange;
end;

 
 end;
  end;

end;

procedure Tfrm_hspbb_main.zyxzChange(Sender: TObject);
begin
pb_ksdm:=copy(zyxz.Text,1,4);


if pub_czyzw='04' then
begin
  SpeedButton7.Enabled:=true;
  SpeedButton9.Enabled:=true;
end;
qry_hspbb_rq.Close;
qry_hspbb_rq.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hspbb_rq.Open;

qry_hspbb_xzrq.Close;
qry_hspbb_xzrq.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hspbb_xzrq.Open;
if qry_hspbb_xzrq.RecordCount=0 then
begin
  sp_xzbc.Close;
  sp_xzbc.Parameters.Refresh;
  sp_xzbc.Parameters.ParamByName('@ksdm').Value:=pb_ksdm;
  sp_xzbc.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyy-mm-dd',Frm_func.curr_date-6);
  sp_xzbc.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyy-mm-dd',Frm_func.curr_date+1);
  sp_xzbc.ExecProc;
qry_hspbb_xzrq.Close;
qry_hspbb_xzrq.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_hspbb_xzrq.Open;
end;


qry_hspbb_rq.First;
while not qry_hspbb_rq.eof do
begin
pbsj.items.Add(trim(qry_hspbb_rq['ksrq']));
qry_hspbb_rq.next;
end;

  scx:=GetSystemMetrics(SM_CXSCREEN);
  scy:=GetSystemMetrics(SM_CYSCREEN);



pbsj.Text:=qry_hspbb_xzrq['ksrq'];
Label7.Caption:='(第'+inttostr(qry_hspbb_xzrq.FieldByName('weeknum').AsInteger)+'周)';
Label1.Caption:='排班从： '+qry_hspbb_xzrq['ksrq']+'   至： '+qry_hspbb_xzrq['jsrq'] ;
rqid:=qry_hspbb_xzrq.FieldByName('id').AsInteger;
qry_hspbb_rq.Locate('ksrq',pbsj.Text,[]);

end;

end.
