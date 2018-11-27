unit p_zybl_ypxmsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SXSearchBox, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, Grids, DBGrids;

type
  Tfrm_zybl_ypxmsz = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    qry_yp: TADOQuery;
    qry_xm: TADOQuery;
    ds_yp: TDataSource;
    DBGrid1: TDBGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    qry_yplb: TADOQuery;
    ds_yplb: TDataSource;
    DBGrid2: TDBGrid;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    ds_xm: TDataSource;
    qry_xmlb: TADOQuery;
    ds_xmlb: TDataSource;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    prv_kl:string;
    prv_xm:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zybl_ypxmsz: Tfrm_zybl_ypxmsz;

implementation
uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_zybl_ypxmsz.Button1Click(Sender: TObject);
begin
    if Edit1.Text='' then
    begin
      ShowMessage('请先检索数据！');
      Edit1.SetFocus;
      Exit;
    end;
    
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from zybl_bzdjfxm where bqdm='+''''+pub_bqdm+
    ''''+' and dm ='+''''+Trim(qry_yp.FieldByName('ypdm').asstring)+'''';
    DM_data.qry_pub.Open;
    if  DM_data.qry_pub.IsEmpty then
    begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='insert into zybl_bzdjfxm(dm,bqdm,ksdm,lb)'+
    ' select '+''''+Trim(qry_yp.FieldByName('ypdm').asstring)+''''+ ',' +
    ''''+pub_bqdm+''''+','+''''+pub_ksdm+''''+','+'''yp''';
    DM_data.qry_pub.ExecSQL;
    ShowMessage('添加药品成功！');
    qry_yplb.close;
    qry_yplb.SQL.text:='select b.* from zybl_bzdjfxm a,sys_ypdm b where a.dm=b.ypdm'+
    ' and a.bqdm='+''''+pub_bqdm+''''+' and a.lb=''yp''';
    qry_yplb.Open;
    end
    else
    begin
    ShowMessage('添加药品失败，已添加过此药品！');
    end;

end;

procedure Tfrm_zybl_ypxmsz.Button2Click(Sender: TObject);
begin
   if Edit2.Text='' then
    begin
      ShowMessage('请先检索数据！');
      Edit2.SetFocus;
      Exit;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from zybl_bzdjfxm where bqdm='+''''+pub_bqdm+
    ''''+' and dm ='+''''+Trim(qry_xm.FieldByName('xmdm').asstring)+'''';
    DM_data.qry_pub.Open;
    if  DM_data.qry_pub.IsEmpty then
    begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='insert into zybl_bzdjfxm(dm,bqdm,ksdm,lb)'+
    ' select '+''''+Trim(qry_xm.FieldByName('xmdm').asstring)+''''+ ',' +
    ''''+pub_bqdm+''''+','+''''+pub_ksdm+''''+','+'''xm''';
    DM_data.qry_pub.ExecSQL;
    ShowMessage('添加项目成功！');
    qry_xmlb.close;
    qry_xmlb.SQL.text:='select b.* from zybl_bzdjfxm a,sys_yzxm b where a.dm=b.xmdm'+
    ' and a.bqdm='+''''+pub_bqdm+''''+' and a.lb=''xm''';
    qry_xmlb.Open;
    end
    else
    begin
    ShowMessage('添加项目失败，已添加过此项目！');
    end;
end;

procedure Tfrm_zybl_ypxmsz.Button3Click(Sender: TObject);
begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='delete from zybl_bzdjfxm where dm='+''''+
    trim(qry_yplb.FieldByName('ypdm').asstring)+''''+' and bqdm='+''''+pub_bqdm+'''';
    DM_data.qry_pub.ExecSQL;
    ShowMessage('删除成功！');
    qry_yplb.close;
    qry_yplb.SQL.text:='select b.* from zybl_bzdjfxm a,sys_ypdm b where a.dm=b.ypdm'+
    ' and a.bqdm='+''''+pub_bqdm+''''+' and a.lb=''yp''';
    qry_yplb.Open;
end;

procedure Tfrm_zybl_ypxmsz.Button4Click(Sender: TObject);
begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='delete from zybl_bzdjfxm where dm='+''''+
    trim(qry_xmlb.FieldByName('xmdm').asstring)+''''+' and bqdm='+''''+pub_bqdm+'''';
    DM_data.qry_pub.ExecSQL;
    ShowMessage('删除成功！');
    qry_xmlb.close;
    qry_xmlb.SQL.text:='select b.* from zybl_bzdjfxm a,sys_yzxm b where a.dm=b.xmdm'+
    ' and a.bqdm='+''''+pub_bqdm+''''+' and a.lb=''xm''';
    qry_xmlb.Open;
end;

procedure Tfrm_zybl_ypxmsz.DBGrid1Exit(Sender: TObject);
begin
    Edit1.text:=Trim(qry_yp.FieldByName('ypmc').asstring)+','
                  +trim(qry_yp.FieldByName('ypgg').asstring);
    prv_kl:=Trim(qry_yp.FieldByName('ypdm').asstring);
    DBGrid1.Visible:=false;
end;

procedure Tfrm_zybl_ypxmsz.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
    Button1.SetFocus;
    end;
end;

procedure Tfrm_zybl_ypxmsz.DBGrid2Exit(Sender: TObject);
begin
    Edit2.text:=Trim(qry_xm.FieldByName('xmmc').asstring)+','
                  +trim(qry_xm.FieldByName('fydm').asstring);
    prv_xm:=Trim(qry_xm.FieldByName('xmdm').asstring);
    DBGrid2.Visible:=false;
end;

procedure Tfrm_zybl_ypxmsz.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
    Button2.SetFocus;
    end;
end;

procedure Tfrm_zybl_ypxmsz.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13   then
    begin
      prv_kl:='';
      qry_yp.close;
      qry_yp.SQL.Text:='select * from sys_ypdm where ypmc like ''%'+trim(Edit1.text)+
      '%'''+' or '+ 'ypdm like ''%'+trim(Edit1.text)+'%'''+' or '+
      'pym like ''%'+trim(Edit1.text)+'%'''+' or '+
      'zjm like ''%'+trim(Edit1.text)+'%''';
      qry_yp.Open;
      if qry_yp.RecordCount<1 then
      ShowMessage('无此药品！请重新录入！')
      else if qry_yp.RecordCount=1 then
      begin
      Edit1.text:=Trim(qry_yp.FieldByName('ypmc').asstring)+','
                  +trim(qry_yp.FieldByName('ypgg').asstring);
      prv_kl:=Trim(qry_yp.FieldByName('ypdm').asstring);
      end
      else
      DBGrid1.Visible:=True;
      DBGrid1.SetFocus;

    end;
end;

procedure Tfrm_zybl_ypxmsz.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13   then
    begin
      prv_xm:='';
      qry_xm.close;
      qry_xm.SQL.Text:='select * from sys_yzxm where xmmc like ''%'+trim(Edit2.text)+
      '%'''+' or '+ 'xmdm like ''%'+trim(Edit2.text)+'%'''+' or '+
      'pym like ''%'+trim(Edit2.text)+'%''';
      qry_xm.Open;
      if qry_xm.RecordCount<1 then
      ShowMessage('无此药品！请重新录入！')
      else if qry_xm.RecordCount=1 then
      begin
      Edit2.text:=Trim(qry_xm.FieldByName('xmmc').asstring)+','
                  +trim(qry_xm.FieldByName('fydm').asstring);
      prv_xm:=Trim(qry_xm.FieldByName('xmdm').asstring);
      end
      else
      DBGrid2.Visible:=True;
      DBGrid2.SetFocus;

    end;
end;

procedure Tfrm_zybl_ypxmsz.FormShow(Sender: TObject);
begin
    qry_yplb.close;
    qry_yplb.SQL.text:='select b.* from zybl_bzdjfxm a,sys_ypdm b where a.dm=b.ypdm'+
    ' and a.bqdm='+''''+pub_bqdm+''''+' and a.lb=''yp''';
    qry_yplb.Open;
    qry_xmlb.close;
    qry_xmlb.SQL.text:='select b.* from zybl_bzdjfxm a,sys_yzxm b where a.dm=b.xmdm'+
    ' and a.bqdm='+''''+pub_bqdm+''''+' and a.lb=''xm''';
    qry_xmlb.Open;
end;

end.
