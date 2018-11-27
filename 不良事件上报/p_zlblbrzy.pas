unit p_zlblbrzy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, DBGridEh, ComCtrls, ExtCtrls, ImgList, GridsEh, StdCtrls,
  CheckLst, cxControls, cxContainer, cxCheckListBox, Buttons, cxEdit, cxLabel;
const
  zp='22222';
  zpjx=5;
  begin_char='_' ;
type
  Tfrm_zlblbrzy = class(TForm)
    ImageList1: TImageList;
    ad_cyjc: TADODataSet;
    cxLabel1: TcxLabel;
    ProgressBar1: TProgressBar;
    clb: TcxCheckListBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pub_key:string;
    dldm:string;
    lybz:string;

  end;

var
  frm_zlblbrzy: Tfrm_zlblbrzy;
  yzsx,xmmc,pr_yzlb:string;
  i:integer;
  function  TreeFindItem(Sender: TTreeView;  Name: String; parent_n:integer): TTreeNode;
  function  Treeleavelleng(zpkeyleng:integer):integer;


implementation

{$R *.DFM}
uses p_dm,p_func,p_zlblsbk,p_xnxgsb;
function  Treeleavelleng(zpkeyleng:integer):integer;
var
   i,levellength:integer;
begin
   levellength:=0;
   for i:=1 to zpjx do
   begin
        levellength:=levellength+strtoint(copy(zp,i,1));
        if levellength=zpkeyleng then
        begin
          levellength:=levellength-strtoint(copy(zp,i,1));
          break;
        end;
   end;
    result :=levellength;
end;

function TreeFindItem(Sender: TTreeView;  Name: String; parent_n:integer): TTreeNode;
VAR
   Nodeitem: TTreeNode;
begin
     NodeItem := Sender.items.getfirstnode;
     if parent_n>0 then begin
       repeat
          if  copy(trim(NodeItem.text),1,parent_n) <> Name then
          begin
              NodeItem := NodeItem.getnext;
          end;
       until copy(trim(NodeItem.text),1,parent_n) = Name;
     end;
     if parent_n=0 then begin
          result := sender.Items.GetFirstNode;
     end else begin
         Result := NodeItem;
     end
end;

procedure Tfrm_zlblbrzy.FormActivate(Sender: TObject);
var
    n,parent_n:integer;
    zpkey:string;
    zptext:string;
    Node: TTreeNode;
    dlmc,fydm,fymc:string;
    yxmmc:string;
begin
  ad_cyjc.close;
  if lybz='X' then
  begin
    ad_cyjc.CommandText:='select * from zybl_xnxgsb_jbxz';
    clb.Columns:=2;
    frm_zlblbrzy.Caption:='心脑血管上报-疾病诊断序号选择';
  end
  else
  begin
    ad_cyjc.CommandText:='select * from zybl_zlblsbk_brzy';
    clb.Columns:=3;
    frm_zlblbrzy.Caption:='肿瘤病例-病人职业';
  end;
  ad_cyjc.Open;
  ad_cyjc.First;
  clb.Visible:=false;
  clb.Items.Clear;
  if ad_cyjc.RecordCount>400 then
  ProgressBar1.Max := 400
  else
  ProgressBar1.Max := ad_cyjc.RecordCount;
  ProgressBar1.Position := 0;
  i:=0;
  cxlabel1.top:=progressbar1.Top+1;
  cxlabel1.Left:=progressbar1.Width div 2-61;
  while not ad_cyjc.eof  do
   begin
     fymc:=ad_cyjc.FieldByName('mc').asstring;
     fydm:=ad_cyjc.FieldByName('dm').asstring;
     clb.Items.Add;
     clb.Items.Items[i].Text:=fydm+'_'+fymc;
     if pos(','+fymc+',',yxmmc)>0 then
     clb.Items.Items[i].Checked:=true;
     i:=i+1;
     ProgressBar1.Position := ProgressBar1.Position + 1;
     cxLabel1.Caption := '数据准备已完成(' + formatfloat('#0.00', ProgressBar1.Position / ProgressBar1.Max * 100) + '%)';
     cxLabel1.Refresh;
     ad_cyjc.Next;
   end;
 clb.Visible:=true;
end;

procedure Tfrm_zlblbrzy.BitBtn1Click(Sender: TObject);
var
 n:integer;
 lrxm:string;
 lrxmxh:string;
begin
lrxm:='';
for n:=0  to i-1 do
  begin
    if clb.Items.Items[n].Checked then
    begin
    if lrxm='' then
     lrxm:=copy(clb.Items.Items[n].Text,pos('_',clb.Items.Items[n].Text)+1,20)
    else
     lrxm:=lrxm+','+copy(clb.Items.Items[n].Text,pos('_',clb.Items.Items[n].Text)+1,20);
     lrxmxh:=copy(clb.Items.Items[n].Text,1,pos('_',clb.Items.Items[n].Text)-1);
    end;
  end;
if lrxm<>'' then
begin
  if lybz='X' then
  begin
    frm_xnxgsb.jbmc3.Caption:=lrxm;
    frm_xnxgsb.AdoInsert['jbzdxh']:=lrxmxh;
  end
  else
    frm_zlblsbk.cxComboBox5.Text:=lrxm;
end;
self.close;
end;

end.
