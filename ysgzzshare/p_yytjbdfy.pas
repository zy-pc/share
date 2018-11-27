unit p_yytjbdfy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, ADODB, Grids, DBGrids;

type
  Tfrm_yytjbdfy = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    qry_gytj: TADOQuery;
    ds_gytj: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qry_tjbdfy: TADOQuery;
    ds_tjbdfy: TDataSource;
    Button4: TButton;
    qry_fycx: TADOQuery;
    qry_tjbdfygyid: TIntegerField;
    qry_tjbdfygymc: TStringField;
    qry_tjbdfyscfydm: TStringField;
    qry_tjbdfyhxfydm: TStringField;
    qry_tjbdfyzxnl: TFloatField;
    qry_tjbdfyzdnl: TFloatField;
    qry_tjbdfyscfymc: TStringField;
    qry_tjbdfyhxfymc: TStringField;
    qry_fy: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    DBGrid1: TDBGrid;
    ds_fycx: TDataSource;
    GroupBox5: TGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    GroupBox6: TGroupBox;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    DBGrid2: TDBGrid;
    qry_jyyb: TADOQuery;
    ds_jyyb: TDataSource;
    qry_ybbd: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    ds_ybbd: TDataSource;
    qry_ybbdybdm: TStringField;
    qry_ybfycx: TADOQuery;
    ds_ybfycx: TDataSource;
    qry_ybbdpym: TStringField;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    qry_tjbdfyzsscfydm: TStringField;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    qry_tjbdfyclfdm: TStringField;
    qry_cl: TADOQuery;
    qry_tjbdfyclfmc: TStringField;
    cxgrdbclmnGridDBTableView3Column2: TcxGridDBColumn;
    qry_ybbdclfdm: TStringField;
    qry_cl1: TADOQuery;
    qry_ybbdclfmc: TStringField;
    qry_tjbdfybqdm: TStringField;
    qry_ybbdbqdm: TStringField;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure qry_gytjAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxGridDBTableView1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure qry_jyybAfterScroll(DataSet: TDataSet);
    procedure Button8Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure cxGridDBTableView3EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    
    { Public declarations }
  end;

var
  frm_yytjbdfy: Tfrm_yytjbdfy;
  yzyytjbdfysz:Boolean;     //医嘱用药途径绑定费用
implementation

uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_yytjbdfy.Button1Click(Sender: TObject);
begin
  cxGrid1.Enabled:=False;
  cxGrid2.Enabled:=True;

  if ( qry_tjbdfy.State = dsInsert ) or  ( qry_tjbdfy.State = dsEdit)   then
  qry_tjbdfy.Post;
  qry_tjbdfy.Append;
  qry_tjbdfy.FieldByName('gyid').asstring:=Trim(qry_gytj.FieldByName('id').asstring);
  qry_tjbdfy.FieldByName('zxnl').asstring:='0';
  qry_tjbdfy.FieldByName('zdnl').asstring:='0';
  qry_tjbdfy.FieldByName('gymc').asstring:=Trim(qry_gytj.FieldByName('mc').asstring);
  qry_tjbdfy.FieldByName('scfydm').asstring:=Trim('代码');
  qry_tjbdfy.FieldByName('hxfydm').asstring:=Trim('代码');
  qry_tjbdfy.FieldByName('zsscfydm').asstring:=Trim('代码');
  qry_tjbdfy.FieldByName('clfdm').asstring:=Trim('代码');
  
  if yzyytjbdfysz then
    qry_tjbdfy.FieldByName('bqdm').asstring:=pub_bqdm
  else
    qry_tjbdfy.FieldByName('bqdm').asstring:='全院';

  qry_tjbdfy.Post;
  cxGridDBTableView1.Controller.FocusedColumnIndex:=1;
  //cxGridDBTableView1.Controller.SelectedColumns[1].Selected;


end;

procedure Tfrm_yytjbdfy.Button2Click(Sender: TObject);
begin
qry_tjbdfy.Delete;
end;

procedure Tfrm_yytjbdfy.Button3Click(Sender: TObject);
begin
if (qry_tjbdfy.State=dsInsert) or (qry_tjbdfy.State=dsEdit) then
qry_tjbdfy.Post;
cxGrid1.Enabled:=true;
cxGrid2.Enabled:=false;
DM_data.qry_pub.Close;
DM_data.qry_pub.SQL.text:='update sys_gytj_bdfydm with(rowlock) set scfydm='''' where scfydm not in '+
' ( select fydm from sys_kjsfxm ) ';
DM_data.qry_pub.ExecSQL;
DM_data.qry_pub.Close;
DM_data.qry_pub.SQL.text:='update sys_gytj_bdfydm with(rowlock) set hxfydm='''' where hxfydm not in '+
' ( select fydm from sys_kjsfxm ) ';
DM_data.qry_pub.ExecSQL;
DM_data.qry_pub.Close;
DM_data.qry_pub.SQL.text:='update sys_gytj_bdfydm with(rowlock) set clfdm='''' where clfdm not in '+
' ( select ypdm from sys_ypdm ) ';
DM_data.qry_pub.ExecSQL;

end;

procedure Tfrm_yytjbdfy.Button4Click(Sender: TObject);
begin
cxGrid1.Enabled:=False;
cxGrid2.Enabled:=True;
end;

procedure Tfrm_yytjbdfy.Button5Click(Sender: TObject);
begin
if qry_ybbd.RecordCount<1 then
begin
cxGrid3.Enabled:=False;
cxGrid4.Enabled:=True;

if ( qry_ybbd.State = dsInsert ) or  ( qry_ybbd.State = dsEdit)   then
qry_ybbd.Post;
DM_data.qry_pub.Close;
DM_data.qry_pub.SQL.text:='select max(convert(int,ybdm)) ybdm from sys_jyxm_ybdm';
DM_data.qry_pub.open;

qry_ybbd.Append;
qry_ybbd.FieldByName('ybmc').asstring:=Trim(qry_jyyb.FieldByName('ybmc').asstring);
qry_ybbd.FieldByName('scfydm').asstring:=Trim('');
qry_ybbd.FieldByName('hxfydm').asstring:=Trim('');
qry_ybbd.FieldByName('pym').asstring:='pym';

if yzyytjbdfysz then
  qry_ybbd.FieldByName('bqdm').asstring:=pub_bqdm
else
  qry_ybbd.FieldByName('bqdm').AsString:='全院';
  
qry_ybbd.FieldByName('ybdm').asstring:=IntToStr(DM_data.qry_pub.FieldByName('ybdm').AsInteger+1);
qry_ybbd.Post;
cxGridDBTableView3.Controller.FocusedColumnIndex:=1;
end
else
begin
  ShowMessage('样本只能绑定一条费用信息！');
end;
//cxGridDBTableView1.Controller.SelectedColumns[1].Selected;
end;

procedure Tfrm_yytjbdfy.Button6Click(Sender: TObject);
begin
qry_ybbd.Delete;
end;

procedure Tfrm_yytjbdfy.Button7Click(Sender: TObject);
begin
if (qry_ybbd.State=dsInsert) or (qry_ybbd.State=dsEdit) then
qry_ybbd.Post;
cxGrid3.Enabled:=true;
cxGrid4.Enabled:=false;
DM_data.qry_pub.Close;
DM_data.qry_pub.SQL.text:='update sys_jyxm_ybdm with(rowlock) set scfydm='''' where scfydm not in '+
' ( select fydm from sys_kjsfxm ) ';
DM_data.qry_pub.ExecSQL;
DM_data.qry_pub.Close;
DM_data.qry_pub.SQL.text:='update sys_jyxm_ybdm with(rowlock) set hxfydm='''' where hxfydm not in '+
' ( select fydm from sys_kjsfxm ) ';
DM_data.qry_pub.ExecSQL;
DM_data.qry_pub.Close;
DM_data.qry_pub.SQL.text:='update sys_jyxm_ybdm with(rowlock) set clfdm='''' where clfdm not in '+
' ( select ypdm from sys_ypdm ) ';
DM_data.qry_pub.ExecSQL;
end;

procedure Tfrm_yytjbdfy.Button8Click(Sender: TObject);
begin
cxGrid3.Enabled:=False;
cxGrid4.Enabled:=True;
end;

procedure Tfrm_yytjbdfy.cxGridDBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
  var selectindex:Integer;
begin
  selectindex := cxGridDBTableView1.Controller.FocusedColumnIndex;
  if ( key = 13 ) then
  begin
    qry_tjbdfy.Edit;
    if selectindex = 2 then
    begin
      qry_tjbdfy.Edit;
      qry_tjbdfy.Post;
      if Trim(qry_tjbdfy.FieldByName('scfydm').asstring)<>'' then
      begin
      qry_fycx.Close;
      qry_fycx.SQL.text:='select * from sys_kjsfxm where qybz=1 and (pym like ''%'+
                         Trim(qry_tjbdfy.FieldByName('scfydm').asstring)+'%'' or fydm like ''%'+
                         Trim(qry_tjbdfy.FieldByName('scfydm').asstring)+'%'' or fymc like ''%'+
                          trim(qry_tjbdfy.FieldByName('scfydm').asstring)+'%'')';
      qry_fycx.Open;
      if qry_fycx.isempty then
      begin
      ShowMessage('无此费用项目！');
      end
      else if qry_fycx.RecordCount=1 then
      begin
      qry_tjbdfy.Edit;
      qry_tjbdfy.FieldByName('scfydm').asstring:=qry_fycx.FieldByName('fydm').AsString;
//      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
      qry_tjbdfy.Post;
      end
      else
      begin
      DBGrid1.Left:=Button1.Left;
      DBGrid1.Visible:=True;
      DBGrid1.SetFocus;
      end;


      end;


    end
    else
      if selectindex = 4 then
      begin
        qry_tjbdfy.Edit;
        qry_tjbdfy.Post;
        if Trim(qry_tjbdfy.FieldByName('hxfydm').asstring)<>'' then
      begin
      qry_fycx.Close;
      qry_fycx.SQL.text:='select * from sys_kjsfxm where qybz=1 and (pym like ''%'+
                         Trim(qry_tjbdfy.FieldByName('hxfydm').asstring)+'%'' or fydm like ''%'+
                         Trim(qry_tjbdfy.FieldByName('hxfydm').asstring)+'%'' or fymc like ''%'+
                          trim(qry_tjbdfy.FieldByName('hxfydm').asstring)+'%'')';
      qry_fycx.Open;
      if qry_fycx.isempty then
      begin
      ShowMessage('无此费用项目！');
      end
      else if qry_fycx.RecordCount=1 then
      begin
      qry_tjbdfy.Edit;
      qry_tjbdfy.FieldByName('hxfydm').asstring:=qry_fycx.FieldByName('fydm').AsString;
//      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
      qry_tjbdfy.Post;
      end
      else
      begin
      DBGrid1.Left:=Button3.Left;
      DBGrid1.Visible:=True;
      DBGrid1.SetFocus;
      end;


      end;

      end
      else if selectindex = 6 then
      begin
        qry_tjbdfy.Edit;
        qry_tjbdfy.Post;
        if Trim(qry_tjbdfy.FieldByName('clfdm').asstring)<>'' then
        begin
        qry_fycx.Close;
        qry_fycx.SQL.text:='select ypdm fydm,ypmc fymc,zylsj sfbz from sys_ypdm where (yplb like ''030306%'' or yplb like ''0302%'') and sybz=1 and (pym like ''%'+
                           Trim(qry_tjbdfy.FieldByName('clfdm').asstring)+'%'' or ypmc like ''%'+
                           Trim(qry_tjbdfy.FieldByName('clfdm').asstring)+'%'' or ypdm like ''%'+
                            Trim(qry_tjbdfy.FieldByName('clfdm').asstring)+'%'' or ypbm like ''%'+
                            trim(qry_tjbdfy.FieldByName('clfdm').asstring)+'%'') and ypdm in (select ypdm from bqkf_ypkc where ksdm='+''''+pub_bqdm+''''+')';
        qry_fycx.Open;
        if qry_fycx.isempty then
        begin
        ShowMessage('无此材料项目！');
        end
        else if qry_fycx.RecordCount=1 then
        begin
        qry_tjbdfy.Edit;
        qry_tjbdfy.FieldByName('clfdm').asstring:=qry_fycx.FieldByName('ypdm').AsString;
  //      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
        qry_tjbdfy.Post;
        end
        else
        begin
        DBGrid1.Left:=Button2.Left;
        DBGrid1.Visible:=True;
        DBGrid1.SetFocus;
        end;


        end;


      end
      else
       begin
       qry_tjbdfy.Edit;
       qry_tjbdfy.Post;
       end;

  end;

end;




procedure Tfrm_yytjbdfy.cxGridDBTableView3EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
  var selectindex:Integer;
begin
  selectindex := cxGridDBTableView3.Controller.FocusedColumnIndex;
  if ( key = 13 ) then
  begin
    qry_ybbd.Edit;
    if selectindex = 1 then
    begin
      qry_ybbd.Edit;
      qry_ybbd.Post;
      if Trim(qry_ybbd.FieldByName('scfydm').asstring)<>'' then
      begin
      qry_ybfycx.Close;
      qry_ybfycx.SQL.text:='select * from sys_kjsfxm where qybz=1 and (pym like ''%'+
                         Trim(qry_ybbd.FieldByName('scfydm').asstring)+'%'' or fydm like ''%'+
                         Trim(qry_ybbd.FieldByName('scfydm').asstring)+'%'' or fymc like ''%'+
                          trim(qry_ybbd.FieldByName('scfydm').asstring)+'%'')';
      qry_ybfycx.Open;
      if qry_ybfycx.isempty then
      begin
      ShowMessage('无此费用项目！');
      end
      else if qry_ybfycx.RecordCount=1 then
      begin
      qry_ybbd.Edit;
      qry_ybbd.FieldByName('scfydm').asstring:=qry_ybfycx.FieldByName('fydm').AsString;
//      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
      qry_ybbd.Post;
      end
      else
      begin
      DBGrid2.Left:=Button5.Left;
      DBGrid2.Visible:=True;
      DBGrid2.SetFocus;
      end;


      end;


    end
    else
      if selectindex = 3 then
      begin
        qry_ybbd.Edit;
        qry_ybbd.Post;
        if Trim(qry_ybbd.FieldByName('hxfydm').asstring)<>'' then
      begin
      qry_ybfycx.Close;
      qry_ybfycx.SQL.text:='select * from sys_kjsfxm where qybz=1 and (pym like ''%'+
                         Trim(qry_ybbd.FieldByName('hxfydm').asstring)+'%'' or fydm like ''%'+
                         Trim(qry_ybbd.FieldByName('hxfydm').asstring)+'%'' or fymc like ''%'+
                          trim(qry_ybbd.FieldByName('hxfydm').asstring)+'%'')';
      qry_ybfycx.Open;
      if qry_ybfycx.isempty then
      begin
      ShowMessage('无此费用项目！');
      end
      else if qry_ybfycx.RecordCount=1 then
      begin
      qry_ybbd.Edit;
      qry_ybbd.FieldByName('hxfydm').asstring:=qry_ybfycx.FieldByName('fydm').AsString;
//      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
      qry_ybbd.Post;
      end
      else
      begin
      DBGrid2.Left:=Button7.Left;
      DBGrid2.Visible:=True;
      DBGrid2.SetFocus;
      end;


      end;

      end
      else if selectindex = 5 then
      begin
        qry_ybbd.Edit;
        qry_ybbd.Post;
        if Trim(qry_ybbd.FieldByName('clfdm').asstring)<>'' then
        begin
        qry_ybfycx.Close;
        qry_ybfycx.SQL.text:='select ypdm fydm,ypmc fymc,zylsj sfbz from sys_ypdm where (yplb like ''030306%'' or yplb like ''0302%'') and sybz=1 and (pym like ''%'+
                           Trim(qry_ybbd.FieldByName('clfdm').asstring)+'%'' or ypmc like ''%'+
                           Trim(qry_ybbd.FieldByName('clfdm').asstring)+'%'' or ypdm like ''%'+
                            Trim(qry_ybbd.FieldByName('clfdm').asstring)+'%'' or ypbm like ''%'+
                            trim(qry_ybbd.FieldByName('clfdm').asstring)+'%'') and ypdm in (select ypdm from bqkf_ypkc where ksdm='+''''+pub_bqdm+''''+')';
        qry_ybfycx.Open;
        if qry_ybfycx.isempty then
        begin
        ShowMessage('无此材料项目！');
        end
        else if qry_ybfycx.RecordCount=1 then
        begin
        qry_ybbd.Edit;
        qry_ybbd.FieldByName('clfdm').asstring:=qry_ybfycx.FieldByName('ypdm').AsString;
  //      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
        qry_ybbd.Post;
        end
        else
        begin
        DBGrid2.Left:=Button2.Left+50;
        DBGrid2.Visible:=True;
        DBGrid2.SetFocus;
        end;


        end;


      end
      else
       begin
       qry_ybbd.Edit;
       qry_ybbd.Post;
       end;

  end;

end;

procedure Tfrm_yytjbdfy.DBGrid1Exit(Sender: TObject);
begin
if DBGrid1.Left=Button1.left then
begin
qry_tjbdfy.Edit;
qry_tjbdfy.FieldByName('scfydm').asstring:=qry_fycx.FieldByName('fydm').AsString;
//      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
qry_tjbdfy.Post;
DBGrid1.Visible:=False;
end
else if DBGrid1.Left=Button2.left then
     
begin
qry_tjbdfy.Edit;
qry_tjbdfy.FieldByName('clfdm').asstring:=qry_fycx.FieldByName('fydm').AsString;
//      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
qry_tjbdfy.Post;
DBGrid1.Visible:=False;
end
else
begin
qry_tjbdfy.Edit;
qry_tjbdfy.FieldByName('hxfydm').asstring:=qry_fycx.FieldByName('fydm').AsString;
//      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
qry_tjbdfy.Post;
DBGrid1.Visible:=False;
end;
end;

procedure Tfrm_yytjbdfy.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
cxGrid2.SetFocus;
end;

procedure Tfrm_yytjbdfy.DBGrid2Exit(Sender: TObject);
begin
  if DBGrid2.Left=Button5.left then
  begin
    qry_ybbd.Edit;
    qry_ybbd.FieldByName('scfydm').asstring:=qry_ybfycx.FieldByName('fydm').AsString;
    //      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
    qry_ybbd.Post;
    DBGrid2.Visible:=False;
  end
  else if DBGrid2.Left=Button2.left+50 then
  begin
    qry_ybbd.Edit;
    qry_ybbd.FieldByName('clfdm').asstring:=qry_ybfycx.FieldByName('fydm').AsString;
    //      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
    qry_ybbd.Post;
    DBGrid2.Visible:=False;
  end
  else
  begin
    qry_ybbd.Edit;
    qry_ybbd.FieldByName('hxfydm').asstring:=qry_ybfycx.FieldByName('fydm').AsString;
    //      qry_tjbdfy.FieldByName('scfymc').asstring:=qry_fycx.FieldByName('fymc').AsString;
    qry_ybbd.Post;
    DBGrid2.Visible:=False;
  end;
end;

procedure Tfrm_yytjbdfy.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
cxGrid4.SetFocus;
end;

procedure Tfrm_yytjbdfy.FormShow(Sender: TObject);
begin
qry_gytj.Close;
qry_gytj.Open;
//DM_data.qry_pub.Close;
//DM_data.qry_pub.SQL.text:='select * from sys_jyxm_ybdm';
//DM_data.qry_pub.Open;
//DM_data.qry_pub.First;
//while not  DM_data.qry_pub.Eof do
//begin
//DM_data.qry_pub.Edit;
//DM_data.qry_pub.FieldByName('pym').asstring:=GetPym(DM_data.qry_pub.FieldByName('ybmc').asstring);
//DM_data.qry_pub.Post;
//DM_data.qry_pub.Next;
//end;
qry_jyyb.Close;
qry_jyyb.Open;


//医嘱用药途径绑定费用设置的值
DM_data.qry_pub.Close;
DM_data.qry_pub.SQL.Text := 'select yzyytjbdfysz from sys_xt_kg';
DM_data.qry_pub.Open;
yzyytjbdfysz:=DM_data.qry_pub.FieldByName('yzyytjbdfysz').AsBoolean;

end;

procedure Tfrm_yytjbdfy.qry_gytjAfterScroll(DataSet: TDataSet);
var
  _bqdm:string;
begin

if yzyytjbdfysz then
  _bqdm:='全院'
else _bqdm := pub_bqdm ;

qry_tjbdfy.Close;
qry_tjbdfy.sql.text:= 'select * from sys_gytj_bdfydm where  gyid='
        +qry_gytj.FieldByName('id').asstring+' and bqdm='+ ''''+_bqdm+'''';
qry_tjbdfy.Open;
end;

procedure Tfrm_yytjbdfy.qry_jyybAfterScroll(DataSet: TDataSet);
var
  _bqdm:string;
begin

if yzyytjbdfysz then
  _bqdm:='全院'
else _bqdm := pub_bqdm ;

qry_ybbd.Close;
qry_ybbd.sql.text:='select * from sys_jyxm_ybdm where  ybmc='+''''
      +qry_jyyb.FieldByName('ybmc').asstring+''''+' and bqdm='+ ''''+_bqdm+'''';
qry_ybbd.Open;
end;

end.
