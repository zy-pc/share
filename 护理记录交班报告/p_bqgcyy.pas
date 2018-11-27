unit p_bqgcyy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, DB, ADODB, GridsEh, DBGridEh, ExtCtrls, ComCtrls,
  StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore,  cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxSkinsDefaultPainters;

type
  Tfrm_bqgcyy = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    qry_yygf: TADOQuery;
    ds_yygf: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    TreeView1: TTreeView;
    ADOQuery1: TADOQuery;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    ADOQuery2: TADOQuery;
    ks: TcxComboBox;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    ADOQuery3: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ksClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ds_yygfDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  sqlstr: string;
  node:TTreeNode;
  zptext:string;
  ksdm:string;
  end;

var
  frm_bqgcyy: Tfrm_bqgcyy;

implementation
uses
p_dm,p_twb2,p_func;

{$R *.dfm}

procedure Tfrm_bqgcyy.Button1Click(Sender: TObject);
begin
if RadioButton1.Checked=true then
begin
       qry_yygf.close;
       qry_yygf.sql.clear;
       qry_yygf.SQL.add('select * from zybl_hljld_yygf where sx=2 and hljld_name like :gjc and ksdm=:ksdm');
       qry_yygf.Parameters.ParamByName('gjc').Value:='%'+trim(edit1.text)+'%';;
       qry_yygf.Parameters.ParamByName('ksdm').Value:=ksdm;
       Frm_func.open_dataset(qry_yygf);
end;
if RadioButton2.Checked=true then
begin
       qry_yygf.close;
       qry_yygf.sql.clear;
       qry_yygf.SQL.add('select * from zybl_hljld_yygf where sx=2 and hljld_name like :gjc ');
       qry_yygf.Parameters.ParamByName('gjc').Value:='%'+trim(edit1.text)+'%';;
       Frm_func.open_dataset(qry_yygf);
end;
end;

procedure Tfrm_bqgcyy.Button2Click(Sender: TObject);
begin
ADOQuery2.close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('update zybl_hljld_yygf set hljld_name=:hljld_name,lb=:lb,yy=:yy where id=:id');
ADOQuery2.Parameters.ParamByName('hljld_name').Value:=Trim(Edit3.text);
ADOQuery2.Parameters.ParamByName('lb').Value:=Trim(Edit2.text);
ADOQuery2.Parameters.ParamByName('yy').Value:=Trim(memo1.text);
ADOQuery2.Parameters.ParamByName('id').Value:=qry_yygf.FieldByName('id').AsString;
ADOQuery2.ExecSQL;
Application.MessageBox('修改成功','提示',MB_OK);

end;

procedure Tfrm_bqgcyy.DBGridEh1DblClick(Sender: TObject);
begin
if not qry_yygf.IsEmpty then begin
frm_twb2.str_bqgc:=qry_yygf.FieldByName('yy').AsString;
end;
close;
if qry_yygf.FieldByName('ksdm').AsString=pub_ksdm then
begin
DBGridEh1.ReadOnly:=true;
end
else
begin
 DBGridEh1.ReadOnly:=False;
end;
end;

procedure Tfrm_bqgcyy.ds_yygfDataChange(Sender: TObject; Field: TField);
begin
if qry_yygf.FieldByName('ksdm').AsString<>pub_ksdm then
begin
    DBGridEh1.ReadOnly:=True;
    Button2.Enabled:=False;
end
else
begin
     Button2.Enabled:=true;
end;

Edit2.text:=qry_yygf.FieldByName('lb').AsString;
Edit3.text:=qry_yygf.FieldByName('hljld_name').AsString;
memo1.text:=qry_yygf.FieldByName('yy').AsString;

end;

procedure Tfrm_bqgcyy.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
   Button1.Click;
end;

procedure Tfrm_bqgcyy.FormShow(Sender: TObject);
var
i:Integer;
  begin
  ksdm:=pub_ksdm;
  RadioButton1.Checked:=true;
  ADOQuery2.close;
  ADOQuery2.SQL.clear;
  ADOQuery2.sql.Add('select distinct b.mc from zybl_hljld_yygf a,sys_ksdm b where a.sx=2 and a.ksdm=b.dm order by mc ') ;
  ADOQuery2.Open;
  ADOQuery2.First;
  ks.Properties.Items.Clear;
      while not ADOQuery2.eof do
    begin
    ks.Properties.Items.Add(ADOQuery2.FieldByName('mc').asstring);
    ADOQuery2.Next;
    end;

  end;




procedure Tfrm_bqgcyy.ksClick(Sender: TObject);
begin
ADOQuery2.close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.add('select * from sys_ksdm where mc=:mc');
ADOQuery2.Parameters.ParamByName('mc').Value:=Trim(ks.text);
ADOQuery2.Open;
ksdm:=ADOQuery2.FieldByName('dm').AsString;
RadioButton1Click(sender);
end;

procedure Tfrm_bqgcyy.RadioButton1Click(Sender: TObject);
var
i:Integer;
begin
   TreeView1.Items.Clear ;
       Node := nil;
       ADOQuery1.close;
       ADOQuery1.SQL.clear;
       ADOQuery1.SQL.Add(' select distinct lb from zybl_hljld_yygf where sx=2 and ksdm=:ksdm');
       ADOQuery1.Parameters.ParamByName('ksdm').Value:=ksdm;
       Frm_func.open_dataset(ADOQuery1);

       ADOQuery1.first;

 for i := 0 to ADOQuery1.RecordCount - 1 do
        begin
         zptext:=trim(ADOQuery1['lb']);
         Node := TreeView1.items.Add(Node, zptext);
         ADOQuery1.Next;
        end;
        if node<>nil then node.ImageIndex:=1;

       qry_yygf.close;
       qry_yygf.sql.clear;
       qry_yygf.SQL.add('select * from zybl_hljld_yygf where sx=2  and ksdm=:ksdm');
       qry_yygf.Parameters.ParamByName('ksdm').Value:=ksdm;
       Frm_func.open_dataset(qry_yygf);


end;

procedure Tfrm_bqgcyy.RadioButton2Click(Sender: TObject);
var
i:integer;
begin
   TreeView1.Items.Clear ;
       Node := nil;
       ADOQuery1.close;
       ADOQuery1.SQL.clear;
       ADOQuery1.SQL.Add(' select distinct lb from zybl_hljld_yygf where sx=2 ');
       Frm_func.open_dataset(ADOQuery1);

       ADOQuery1.first;

 for i := 0 to ADOQuery1.RecordCount - 1 do
        begin
         zptext:=trim(ADOQuery1['lb']);
         Node := TreeView1.items.Add(Node, zptext);
         ADOQuery1.Next;
        end;
        if node<>nil then node.ImageIndex:=1;

       qry_yygf.close;
       qry_yygf.sql.clear;
       qry_yygf.SQL.add('select * from zybl_hljld_yygf where sx=2 ');
       Frm_func.open_dataset(qry_yygf);


end;

procedure Tfrm_bqgcyy.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
aa:string;
begin
if RadioButton1.Checked then
   begin
  if TreeView1.selected<>nil then
   begin
     if TreeView1.selected.text<>'' then
      begin
       aa:=trim(TreeView1.selected.text);
       qry_yygf.close;
       qry_yygf.sql.clear;
       qry_yygf.SQL.add('select * from zybl_hljld_yygf where sx=2 and lb=:lb and ksdm=:ksdm order by hljld_name');
       qry_yygf.Parameters.ParamByName('lb').Value:=aa;
       qry_yygf.Parameters.ParamByName('ksdm').Value:=ksdm;
       Frm_func.open_dataset(qry_yygf);
      end ;
  end;
   end
   else
   begin
     if TreeView1.selected<>nil then
   begin
     if TreeView1.selected.text<>'' then
      begin
       aa:=trim(TreeView1.selected.text);
       qry_yygf.close;
       qry_yygf.sql.clear;
       qry_yygf.SQL.add('select * from zybl_hljld_yygf where sx=2 and lb=:lb order by hljld_name');
       qry_yygf.Parameters.ParamByName('lb').Value:=aa;
       Frm_func.open_dataset(qry_yygf);
      end ;
  end;
   end;
end;

end.
