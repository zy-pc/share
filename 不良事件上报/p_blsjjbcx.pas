unit p_blsjjbcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Db, ADODB, StdCtrls, Buttons, ExtCtrls, ImgList, Grids, DBGrids, Menus,
   cxGraphics, cxCustomData, cxStyles{,cxTL}, cxControls, cxInplaceContainer,
   {cxTLData, cxDBTL,} cxMaskEdit;

type
  Tfrm_blsj_jbcx = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    ad_jbbm: TADODataSet;
    ds: TDataSource;
    ImageList1: TImageList;
    ds_jbbm1: TDataSource;
    DBGrid1: TDBGrid;
    ds_jbbm2: TDataSource;
    ad_jbcx: TADODataSet;
    Panel3: TPanel;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    ad_delete_zd: TADOCommand;
    ado_icd10: TADODataSet;
    ds_icd10: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure dxDBTreeList1DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    //procedure TreeDblClick(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

  public
    { Public declarations }
   sjlx,ysdm:string;
  end;

var
  frm_blsj_jbcx: Tfrm_blsj_jbcx;

implementation

uses p_dm,p_func,p_blsj_hlsj,p_blsj_ypsj,p_blsj_ylaq,p_blsj_ycsj,p_blsj_ynyc,p_blsj_ywyc,p_main;

{$R *.DFM}


procedure Tfrm_blsj_jbcx.FormShow(Sender: TObject);
begin
ad_jbbm.close;
ad_jbbm.Parameters.ParamByName('ysdm').Value:=pub_czydm; //取操作员代码
ad_jbbm.open;
if not ado_icd10.Active then
 ado_icd10.Open;
dbgrid1.DataSource:=ds_jbbm1;
dbgrid1.SetFocus;
end;

procedure Tfrm_blsj_jbcx.dxDBTreeList1DblClick(Sender: TObject);    //A-医疗安全 B-护理事件 C--压疮风险评估  D--药品不良事件  E--院内压疮 F--院外压疮
begin
if sjlx='A' then
begin
frm_ylaq.DBEdit6.Text:=trim(ad_jbbm.fieldbyname('jbbm').asstring);
frm_ylaq.jbmc.Caption:=trim(ad_jbbm.fieldbyname('jbmc').asstring);
self.Close;
end
else if sjlx='B' then
begin
frm_hlsj.DBEdit6.Text:=trim(ad_jbbm.fieldbyname('jbbm').asstring);
frm_hlsj.jbmc.Caption:=trim(ad_jbbm.fieldbyname('jbmc').asstring);
self.Close;
end
else if sjlx='C' then
begin
frm_ypsj.DBEdit6.Text:=trim(ad_jbbm.fieldbyname('jbbm').asstring);
frm_ypsj.jbmc.Caption:=trim(ad_jbbm.fieldbyname('jbmc').asstring);
self.Close;
end
else if sjlx='D' then
begin
frm_ycsj.DBEdit6.Text:=trim(ad_jbbm.fieldbyname('jbbm').asstring);
frm_ycsj.jbmc.Caption:=trim(ad_jbbm.fieldbyname('jbmc').asstring);
self.Close;
end
else if sjlx='E' then
begin
frm_ynyc.DBEdit6.Text:=trim(ad_jbbm.fieldbyname('jbbm').asstring);
frm_ynyc.jbmc.Caption:=trim(ad_jbbm.fieldbyname('jbmc').asstring);
self.Close;
end
else if sjlx='F' then
begin
frm_ywyc.DBEdit6.Text:=trim(ad_jbbm.fieldbyname('jbbm').asstring);
frm_ywyc.jbmc.Caption:=trim(ad_jbbm.fieldbyname('jbmc').asstring);
self.Close;
end
end;

procedure Tfrm_blsj_jbcx.Edit1Click(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure Tfrm_blsj_jbcx.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
bitbtn1.Click;
end;

procedure Tfrm_blsj_jbcx.DBGrid1DblClick(Sender: TObject);
begin
 if sjlx='A' then
begin
frm_ylaq.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
frm_ylaq.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
self.Close;
end
else if sjlx='B' then
begin
frm_hlsj.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
frm_hlsj.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
self.Close;
end
else if sjlx='C' then
begin
frm_ypsj.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
frm_ypsj.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
self.Close;
end
else if sjlx='D' then
begin
frm_ycsj.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
frm_ycsj.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
self.Close;
end
else if sjlx='E' then
begin
frm_ynyc.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
frm_ynyc.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
self.Close;
end
else if sjlx='F' then
begin
frm_ywyc.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
frm_ywyc.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
self.Close;
end
end;
procedure Tfrm_blsj_jbcx.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
 begin
 if sjlx='A' then
 begin
  frm_ylaq.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
  frm_ylaq.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
  self.Close;
 end
 else if sjlx='B' then
 begin
  frm_hlsj.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
  frm_hlsj.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
  self.Close;
 end
 else if sjlx='C' then
 begin
  frm_ypsj.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
  frm_ypsj.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
  self.Close;
 end
 else if sjlx='D' then
 begin
  frm_ycsj.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
  frm_ycsj.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
  self.Close;
 end
 else if sjlx='E' then
 begin
  frm_ynyc.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
  frm_ynyc.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
  self.Close;
 end
  else if sjlx='F' then
 begin
  frm_ywyc.DBEdit6.Text:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbbm').asstring);
  frm_ywyc.jbmc.Caption:=trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring);
  self.Close;
 end
 end;
end;

procedure Tfrm_blsj_jbcx.BitBtn1Click(Sender: TObject);
begin
ad_jbcx.Close;
ad_jbcx.Parameters.ParamByName('jbmc').value:='%'+trim(edit1.text)+'%';
ad_jbcx.Parameters.ParamByName('pym').value:='%'+trim(edit1.text)+'%';
ad_jbcx.Open;
if ad_jbcx.IsEmpty then
 begin
   application.MessageBox('未找到疾病，请重新输入','提示',mb_ok);
   edit1.setfocus;
 end
else
 begin
  dbgrid1.DataSource:=ds_jbbm2;
  dbgrid1.setfocus;
 end
end;

procedure Tfrm_blsj_jbcx.N3Click(Sender: TObject);
begin
ad_jbbm.close;
ad_jbbm.open;
end;

{procedure Tfrm_blsj_jbcx.TreeDblClick(Sender: TObject);
var s:string;
begin
s:=trim(tree.FocusedNode.Texts[0]);
IF (pos('-',s)=0) and
   (pos('>',s)=0) then
begin
tree.DataController.DataSource.DataSet.Locate('jbbm',s,[]);
if sjlx='A' then
begin
frm_ylaq.DBEdit6.Text:=trim(s);;
frm_ylaq.jbmc.Caption:=trim(tree.FocusedNode.Texts[1]);
self.Close;
end
else if sjlx='B' then
begin
frm_hlsj.DBEdit6.Text:=trim(s);
frm_hlsj.jbmc.Caption:=trim(tree.FocusedNode.Texts[1]);
self.Close;
end
else if sjlx='C' then
begin
frm_ypsj.DBEdit6.Text:=trim(s);
frm_ypsj.jbmc.Caption:=trim(tree.FocusedNode.Texts[1]);
self.Close;
end
else if sjlx='D' then
begin
frm_ycsj.DBEdit6.Text:=trim(s);
frm_ycsj.jbmc.Caption:=trim(tree.FocusedNode.Texts[1]);
self.Close;
end
else if sjlx='E' then
begin
frm_ynyc.DBEdit6.Text:=trim(s);
frm_ynyc.jbmc.Caption:=trim(tree.FocusedNode.Texts[1]);
self.Close;
end
else if sjlx='F' then
begin
frm_ywyc.DBEdit6.Text:=trim(s);
frm_ywyc.jbmc.Caption:=trim(tree.FocusedNode.Texts[1]);
self.Close;
end;
frm_blsj_jbcx.close;
end;
end;  }

end.
