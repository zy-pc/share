unit bfrb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Mask, DBCtrls, Buttons, Db, ADODB, Grids,
  DBGrids,bagl, DBGridEh, DBCtrlsEh, GridsEh;

type
  Tbfrbc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    ADODataSet1: TADODataSet;
    ADODataSet2: TADODataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    BB_ADD: TBitBtn;
    BB_DEL: TBitBtn;
    BB_CA: TBitBtn;
    BB_OK: TBitBtn;
    BB_RET: TBitBtn;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Bevel12: TBevel;
    Bevel14: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Bevel13: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    DBGridEh1: TDBGridEh;
    Dtp1: TDBDateTimeEditEh;
    Bevel18: TBevel;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    ADODataSet1KB: TStringField;
    ADODataSet1SJ: TDateTimeField;
    ADODataSet1CZY: TStringField;
    ADODataSet1KS: TStringField;
    ADODataSet1R1: TIntegerField;
    ADODataSet1R2: TIntegerField;
    ADODataSet1R3: TIntegerField;
    ADODataSet1R4: TIntegerField;
    ADODataSet1R5: TIntegerField;
    ADODataSet1R6: TIntegerField;
    ADODataSet1R7: TIntegerField;
    ADODataSet1R8: TIntegerField;
    ADODataSet1R9: TIntegerField;
    ADODataSet1R10: TIntegerField;
    ADODataSet1R11: TIntegerField;
    ADODataSet1R12: TIntegerField;
    ADODataSet1R13: TIntegerField;
    ADODataSet1R14: TIntegerField;
    ADODataSet1R15: TIntegerField;
    ADODataSet1R16: TIntegerField;
    ADODataSet1R17: TIntegerField;
    ADODataSet1R18: TIntegerField;
    ADODataSet1BCS: TIntegerField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BB_ADDClick(Sender: TObject);
    procedure BB_DELClick(Sender: TObject);
    procedure BB_OKClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure BB_RETClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure Dtp1Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure kslr;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bfrbc: Tbfrbc;
  sj1,sj2:integer;
  ks1,ks2:string;

implementation

{$R *.DFM}

procedure Tbfrbc.kslr;
begin
 edit1.Text:=trim(ADODataSet2.fieldbyname('mc').asstring);
 ks1:=trim(ADODataSet2.fieldbyname('dm').asstring);
 ks2:=edit1.Text;
 sj2:=ADODataSet2.fieldbyname('cs').asinteger;
 if Panel3.Visible=true then Panel3.Visible:=false;
 BB_ADD.Click;
end;

procedure Tbfrbc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
  kslr;
  key:=#0;
 end
end;

procedure Tbfrbc.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tbfrbc.BB_ADDClick(Sender: TObject);
var i:integer;lssj:TDatetime;
begin
 if length(trim(edit1.Text))=0 then
 begin
  MessageDlg('请先确定科室和报表时间，再录入数据！',mtError,[mbOk],0);
  Edit1.SetFocus;
 end
 else
 begin
  if BB_ADD.Caption='增加(&A)' then
  begin
   BB_ADD.Caption:='继续(&A)';
   ADODataSet1.Close;
   ADODataSet1.CommandText:='select * from dbo.bfgzrb where kb='+#39+ks1+#39+' order by sj';
   ADODataSet1.Open;
   if ADODataSet1.IsEmpty then
   begin
    lssj:=strtodate(INPUTBOX('输入：',trim(edit1.text)+'的起始时间： ',datetostr(date)));
    i:=strtoint(INPUTBOX('输入：',trim(edit1.text)+'昨日留院人数： ','1'));
   end
   else
   begin
    ADODataSet1.Last;
    i:=ADODataSet1.fieldbyname('r7').asinteger;
    lssj:=ADODataSet1.fieldbyname('sj').asdatetime+1;
   end;
  end
  else
  begin
   ADODataSet1.Last;
   i:=ADODataSet1.fieldbyname('r7').asinteger;
   lssj:=ADODataSet1.fieldbyname('sj').asdatetime+1;
  end;
  ADODataSet1.Append;
  ADODataSet1['r1']:=i;
  ADODataSet1['kb']:=ks1;
  ADODataSet1['ks']:=ks2;
  ADODataSet1['BCS']:=sj2;
  ADODataSet1['czy']:=czyxm;
  ADODataSet1['sj']:=lssj;
  ADODataSet1.Post;
  BB_OK.Enabled:=true;
  BB_CA.Enabled:=true;
  DBEdit2.SetFocus;
 end;
end;

procedure Tbfrbc.BB_DELClick(Sender: TObject);
begin
 if MessageDlg('是否真的删除该记录',mtConfirmation,[mbYes,mbNo],0)=mrYes then
  ADODataSet1.Delete;
end;

procedure Tbfrbc.BB_OKClick(Sender: TObject);
begin
 if sender=BB_OK then
 begin
  if ADODataSet1r1.Value+ADODataSet1r2.Value+ADODataSet1r3.Value<>ADODataSet1r4.Value+ADODataSet1r6.Value+ADODataSet1r7.Value then
  begin
   MessageDlg('输入数据不平衡，请重输！',mtError,[mbOk],0);
   DBEdit2.SetFocus;
   abort;
  end;
  ADODataSet1.UpdateBatch(arall);
 end
 else
  ADODataSet1.CancelBatch(arcurrent);
 BB_OK.Enabled:=false;
 BB_CA.Enabled:=false;
 BB_ADD.Enabled:=true;
 BB_ADD.Caption:='增加(&A)';
 Edit1.SetFocus;
end;

procedure Tbfrbc.BitBtn1Click(Sender: TObject);
begin
 ADODataSet1.Edit;
 if PageControl1.ActivePageIndex=1 then PageControl1.ActivePageIndex:=0;
 BB_OK.Enabled:=true;
 BB_Ca.Enabled:=true;
 DBEdit2.SetFocus;
end;

procedure Tbfrbc.DBEdit5Exit(Sender: TObject);
begin
 if (length(trim(DBEdit5.Text))>0) and (strtoint(DBEdit5.Text)>strtoint(DBEdit4.Text)) then
 begin
  sj1:=strtoint(DBEdit5.Text);
  MessageDlg('死亡人数>今日出院人数合计，请重输！',mtError,[mbOk],0);
  DBEdit5.SetFocus;
 end;
end;

procedure Tbfrbc.BB_RETClick(Sender: TObject);
begin
 if ADODataSet1.Active=true then ADODataSet1.Close;
 if ADODataSet2.Active=true then ADODataSet2.Close;
 bfrbc.FreeOnRelease;
 bfrbc.Release;
 bfrbc:=nil;
 close;
end;

procedure Tbfrbc.DBGrid1DblClick(Sender: TObject);
begin
 kslr;
end;

procedure Tbfrbc.Edit1KeyPress(Sender: TObject; var Key: Char);
var ls:string;
begin
 if key=#13 then
 begin
  LS:=Uppercase(TRIM(EDIT1.text));
  if ls[1] in ['0'..'9'] then
   ls:=stringofchar('0',3-length(ls))+ls;
  if BB_ADD.Enabled=false then BB_ADD.Enabled:=true;
  BB_ADD.Caption:='增加(&A)';
  if length(ls)=0 then
  begin
   Panel3.Visible:=true;
   Panel3.Top:=69;
   Panel3.Left:=42;
   DBGrid1.SetFocus;
  end
  else
  begin
   if ls[1] in ['0'..'9'] then
    ls:='select dm,mc,srm,cs from dbo.ksdm where dm='+#39+ls+#39
   else if ls[1] in ['A'..'z'] then
    ls:='select dm,mc,srm,cs from dbo.ksdm where Upper(srm) like '+#39+'%'+ls+'%'+#39
   else
    ls:='select dm,mc,srm,cs from dbo.ksdm where Upper(mc) like '+#39+'%'+ls+'%'+#39;
   ADODataSet2.Close;
   ADODataSet2.CommandText:=ls;
   ADODataSet2.Open;
   if ADODataSet2.RecordCount=0 then
   begin
    MessageDlg('没有找到该科室代码，请重输！',mtError,[mbOk],0);
    Edit1.SetFocus;
   end
   else if ADODataSet2.RecordCount>1 then
   begin
    Panel3.Visible:=true;
    Panel3.Top:=69;
    Panel3.Left:=42;
    DBGrid1.SetFocus;
   end
   else
    kslr;
  end;
 end;
end;

procedure Tbfrbc.PageControl1Exit(Sender: TObject);
begin
 if (BB_Add.Focused) or (BB_CA.Focused) or (BB_RET.Focused) then
 else
 begin
  if BB_OK.Visible=false then BB_OK.Visible:=true;
  if BB_OK.Enabled=false then BB_OK.Enabled:=true;
  BB_ADD.SetFocus;
 end;
end;

procedure Tbfrbc.DBEdit7Exit(Sender: TObject);
var lssj:integer;
begin
 lssj:=ADODataSet1.fieldbyname('r1').asinteger+ADODataSet1.fieldbyname('r2').asinteger+ADODataSet1.fieldbyname('r3').asinteger-ADODataSet1.fieldbyname('r4').asinteger-ADODataSet1.fieldbyname('r6').asinteger;
 if lssj<>ADODataSet1.fieldbyname('r7').asinteger then
 begin
  MessageDlg('今日留院人数错 ('+#39+trim(inttostr(lssj))+#39+')，请重输！',mtError,[mbOk],0);
  DBEdit7.SetFocus;
 end;
end;

procedure Tbfrbc.Dtp1Exit(Sender: TObject);
begin
 BB_ADD.SetFocus;
end;

procedure Tbfrbc.FormActivate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  Edit1.SetFocus;
end;

end.
