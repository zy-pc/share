unit p_zyyzdysz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB;

type
  Tfrm_zyyzdysz = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    qry_dylbsz: TADOQuery;
    DataSource1: TDataSource;
    qry_dytjsz: TADOQuery;
    DataSource2: TDataSource;
    qry_lb: TADOQuery;
    DataSource3: TDataSource;
    qry_yytj: TADOQuery;
    DataSource4: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zyyzdysz: Tfrm_zyyzdysz;

implementation

{$R *.dfm}
uses p_dm,p_func;

procedure Tfrm_zyyzdysz.Button1Click(Sender: TObject);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='select * from zybl_zyyz_dylbsz where dyxm='+''''
                          +ComboBox1.text+''''+' and lbmc='+''''
                          +qry_lb.FieldByName('lbmc').asstring+'''';
  DM_data.qry_pub.open;
  if DM_data.qry_pub.IsEmpty then
  begin
    try
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text:='insert into zybl_zyyz_dylbsz(dyxm,lbmc) select '''+
                          ComboBox1.text+''''+','+''''+qry_lb.FieldByName('lbmc').asstring+'''';

      DM_data.qry_pub.ExecSQL;
      application.MessageBox('添加成功!', '提示', 0 + 48);
      qry_dylbsz.Close;
      qry_dylbsz.SQL.text:='select * from zybl_zyyz_dylbsz where dyxm = '+''''+ComboBox1.Text+'''';
      qry_dylbsz.Open;

      qry_dytjsz.Close;
      qry_dytjsz.SQL.text:='select * from zybl_zyyz_dytjsz where dyxm = '+''''+ComboBox1.Text+'''';
      qry_dytjsz.Open;

      qry_lb.Close;
      qry_lb.sql.text:='select * from zybl_zyyz_lb where lbmc not in (select lbmc from zybl_zyyz_dylbsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
      qry_lb.Open;


      qry_yytj.Close;
      qry_yytj.sql.text:='select * from sys_gytj where mc not in (select yytj from zybl_zyyz_dytjsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
      qry_yytj.Open;
    except
      application.MessageBox('添加失败，请重试!', '提示', 0 + 48);
    end;
  end
  else
  begin
    application.MessageBox('已存在该条设置，请勿添加重复记录!', '提示', 0 + 48);
  end;

end;

procedure Tfrm_zyyzdysz.Button2Click(Sender: TObject);
begin
  try
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='delete from zybl_zyyz_dylbsz where lbmc='+''''+qry_dylbsz.FieldByName('lbmc').asstring+''''
                          +' and dyxm='+''''+qry_dylbsz.FieldByName('dyxm').asstring+'''';
    DM_data.qry_pub.ExecSQL;
    application.MessageBox('删除成功，请重试!', '提示', 0 + 48);
    qry_dylbsz.Close;
    qry_dylbsz.SQL.text:='select * from zybl_zyyz_dylbsz where dyxm = '+''''+ComboBox1.Text+'''';
    qry_dylbsz.Open;

    qry_dytjsz.Close;
    qry_dytjsz.SQL.text:='select * from zybl_zyyz_dytjsz where dyxm = '+''''+ComboBox1.Text+'''';
    qry_dytjsz.Open;

    qry_lb.Close;
    qry_lb.sql.text:='select * from zybl_zyyz_lb where lbmc not in (select lbmc from zybl_zyyz_dylbsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
    qry_lb.Open;


    qry_yytj.Close;
    qry_yytj.sql.text:='select * from sys_gytj where mc not in (select yytj from zybl_zyyz_dytjsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
    qry_yytj.Open;
  except
    application.MessageBox('删除失败，请重试!', '提示', 0 + 48);
  end;
end;

procedure Tfrm_zyyzdysz.Button3Click(Sender: TObject);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='select * from zybl_zyyz_dytjsz where dyxm='+''''
                          +ComboBox1.text+''''+' and yytj='+''''
                          +qry_yytj.FieldByName('mc').asstring+'''';
  DM_data.qry_pub.open;
  if DM_data.qry_pub.IsEmpty then
  begin
    try
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text:='insert into zybl_zyyz_dytjsz(dyxm,yytj) select '''+
                          ComboBox1.text+''''+','+''''+qry_yytj.FieldByName('mc').asstring+'''';

      DM_data.qry_pub.ExecSQL;
      application.MessageBox('添加成功!', '提示', 0 + 48);

      qry_dylbsz.Close;
      qry_dylbsz.SQL.text:='select * from zybl_zyyz_dylbsz where dyxm = '+''''+ComboBox1.Text+'''';
      qry_dylbsz.Open;

      qry_dytjsz.Close;
      qry_dytjsz.SQL.text:='select * from zybl_zyyz_dytjsz where dyxm = '+''''+ComboBox1.Text+'''';
      qry_dytjsz.Open;

      qry_lb.Close;
      qry_lb.sql.text:='select * from zybl_zyyz_lb where lbmc not in (select lbmc from zybl_zyyz_dylbsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
      qry_lb.Open;


      qry_yytj.Close;
      qry_yytj.sql.text:='select * from sys_gytj where mc not in (select yytj from zybl_zyyz_dytjsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
      qry_yytj.Open;
    except
      application.MessageBox('添加失败，请重试!', '提示', 0 + 48);
    end;
  end
  else
  begin
    application.MessageBox('已存在该条设置，请勿添加重复记录!', '提示', 0 + 48);
  end;
end;

procedure Tfrm_zyyzdysz.Button4Click(Sender: TObject);
begin
  try
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='delete from zybl_zyyz_dytjsz where yytj='+''''+qry_dytjsz.FieldByName('yytj').asstring+''''
                          +' and dyxm='+''''+qry_dytjsz.FieldByName('dyxm').asstring+'''';
    DM_data.qry_pub.ExecSQL;
    application.MessageBox('删除成功!', '提示', 0 + 48);
    qry_dylbsz.Close;
    qry_dylbsz.SQL.text:='select * from zybl_zyyz_dylbsz where dyxm = '+''''+ComboBox1.Text+'''';
    qry_dylbsz.Open;

    qry_dytjsz.Close;
    qry_dytjsz.SQL.text:='select * from zybl_zyyz_dytjsz where dyxm = '+''''+ComboBox1.Text+'''';
    qry_dytjsz.Open;

    qry_lb.Close;
    qry_lb.sql.text:='select * from zybl_zyyz_lb where lbmc not in (select lbmc from zybl_zyyz_dylbsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
    qry_lb.Open;


    qry_yytj.Close;
    qry_yytj.sql.text:='select * from sys_gytj where mc not in (select yytj from zybl_zyyz_dytjsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
    qry_yytj.Open;
  except
    application.MessageBox('删除失败，请重试!', '提示', 0 + 48);
  end;
end;

procedure Tfrm_zyyzdysz.Button5Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_zyyzdysz.ComboBox1Change(Sender: TObject);
begin
  qry_dylbsz.Close;
  qry_dylbsz.SQL.text:='select * from zybl_zyyz_dylbsz where dyxm = '+''''+ComboBox1.Text+'''';
  qry_dylbsz.Open;

  qry_dytjsz.Close;
  qry_dytjsz.SQL.text:='select * from zybl_zyyz_dytjsz where dyxm = '+''''+ComboBox1.Text+'''';
  qry_dytjsz.Open;

  qry_lb.Close;
  qry_lb.sql.text:='select * from zybl_zyyz_lb where lbmc not in (select lbmc from zybl_zyyz_dylbsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
  qry_lb.Open;


  qry_yytj.Close;
  qry_yytj.sql.text:='select * from sys_gytj where mc not in (select yytj from zybl_zyyz_dytjsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
  qry_yytj.Open;

end;

procedure Tfrm_zyyzdysz.FormShow(Sender: TObject);
begin
qry_lb.Close;
qry_lb.sql.text:='select * from zybl_zyyz_lb where lbmc not in (select lbmc from zybl_zyyz_dylbsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
qry_lb.Open;


qry_yytj.Close;
qry_yytj.sql.text:='select * from sys_gytj where mc not in (select yytj from zybl_zyyz_dytjsz where dyxm = '+
                 ''''+ComboBox1.Text+''''+')';
qry_yytj.Open;

end;

end.
