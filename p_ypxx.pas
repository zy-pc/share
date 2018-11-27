unit p_ypxx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Db, DBTables, StdCtrls, Mask, ComCtrls, Buttons, ADODB, ExtCtrls,
  Grids, DBGrids;

type
  TFrm_ypxx = class(TForm)
    Page1: TPageControl;
    Tab1: TTabSheet;
    Tab2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DS_sccj: TDataSource;
    B_close: TBitBtn;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DS_ypdm: TDataSource;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    qry_ypdm: TADOQuery;
    GroupBox3: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label31: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit27: TDBEdit;
    Label17: TLabel;
    DBEdit25: TDBEdit;
    Label29: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit26: TDBEdit;
    Label30: TLabel;
    DBEdit16: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Label35: TLabel;
    DBEdit30: TDBEdit;
    Label36: TLabel;
    DBEdit31: TDBEdit;
    Label37: TLabel;
    DBEdit32: TDBEdit;
    Label38: TLabel;
    DBEdit33: TDBEdit;
    TabSheet1: TTabSheet;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Label42: TLabel;
    Label41: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    Check5: TDBCheckBox;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBGrid2: TDBGrid;
    B_ok: TBitBtn;
    ADODataSet1: TADODataSet;
    DBCheckBox8: TDBCheckBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure B_closeClick(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
    procedure B_okClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
  private
    { Private declarations }
    procedure sjlr;
  public
    { Public declarations }
  end;

var
  Frm_ypxx: TFrm_ypxx;
  cjordw:string;

implementation
uses p_dm,p_login,p_ypxxcx;
{$R *.DFM}

procedure TFrm_ypxx.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then selectnext(activecontrol as Twincontrol,true,true);
end;

procedure TFrm_ypxx.FormShow(Sender: TObject);
begin
  page1.ActivePageIndex:=0;
  qry_ypdm.close;
  qry_ypdm.Parameters.ParamByName('ypdm').value:=frm_ypxxcx.qry_ypdm['ypdm'];
  qry_ypdm.open;
end;

procedure TFrm_ypxx.B_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_ypxx.DBEdit34Exit(Sender: TObject);
var ls:string;
begin
  ls:=trim(DBEdit34.text);
  IF length(ls)>0 then
  begin
    ADODataSet1.close;
    ADODataSet1.CommandText:='select * from sys_gsdm where dm='+''''+ls+''''+' or mc like '+''''+'%'+ls+'%'+''''+' or pym like '+''''+'%'+ls+'%'+'''';
    ADODataSet1.open;
    if ADODataSet1.isempty then
    begin
      MessageDlg('未找到该供货单位！',Mtinformation,[mbYes],0);
      DBEdit34.setfocus;
    end
    else if ADODataSet1.recordcount=1 then
    begin
      cjordw:='1';
      sjlr;
    end
    else
    begin
      cjordw:='1';
      DBGrid2.visible:=true;
      DBGrid2.top:=DBEdit34.top+DBEdit34.height+2;
      DBGrid2.left:=DBEdit34.left;
      DBGrid2.setfocus;
    end;
  end;
end;

procedure TFrm_ypxx.DBEdit35Exit(Sender: TObject);
var ls:string;
begin
  ls:=trim(DBEdit35.text);
  IF length(ls)>0 then
  begin
    ADODataSet1.close;
    ADODataSet1.CommandText:='select * from sys_ypcd where dm='+''''+ls+''''+' or mc like '+''''+'%'+ls+'%'+''''+' or pym like '+''''+'%'+ls+'%'+'''';
    ADODataSet1.open;
    if ADODataSet1.isempty then
    begin
      MessageDlg('未找到该生产厂家！',Mtinformation,[mbYes],0);
      DBEdit34.setfocus;
    end
    else if ADODataSet1.recordcount=1 then
    begin
      cjordw:='2';
      sjlr;
    end
    else
    begin
      cjordw:='2';
      DBGrid2.visible:=true;
      DBGrid2.top:=DBEdit35.top+DBEdit35.height+2;
      DBGrid2.left:=DBEdit35.left;
      DBGrid2.setfocus;
    end;
  end;
end;

procedure TFrm_ypxx.sjlr;
begin
  qry_ypdm.Edit;
  if cjordw='1' then
    qry_ypdm['ghdw']:=ADODataSet1.fieldbyname('mc').asstring
  else if cjordw='2' then
    qry_ypdm['sccj']:=ADODataSet1.fieldbyname('mc').asstring;
  qry_ypdm.post;
end;

procedure TFrm_ypxx.B_okClick(Sender: TObject);
begin
  dm_data.ADO_MYdata.BeginTrans;
  try
    if qry_ypdm.State in [dsedit,dsinsert] then qry_ypdm.Post;
    qry_ypdm.UpdateBatch;
    dm_data.ado_mydata.CommitTrans;
    application.MessageBox('保存成功！','注意',16);
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox('保存失败，请检查资料输入是否完整！','注意',16);
    page1.ActivePageIndex:=0;
  end;
end;

procedure TFrm_ypxx.DBGrid2DblClick(Sender: TObject);
begin
  sjlr;
end;

procedure TFrm_ypxx.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#27 then
  begin
    if cjordw='1' then
      DBEdit34.SetFocus
    else
      DBEdit35.SetFocus;
  end;
  if key=#13 then sjlr;
end;

procedure TFrm_ypxx.DBGrid2Exit(Sender: TObject);
begin
  dbgrid2.Visible:=false;
  if cjordw='1' then
    DBEdit35.SetFocus;
end;

end.
