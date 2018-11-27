unit P_cx_tj_pub;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB, cxPC,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  Tfrm_cx_tj_pub = class(TForm)
    ds_zyblsjzk: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    qry_grtj: TADODataSet;
    ds_grtj: TDataSource;
    Panel1: TPanel;
    rbmn: TRadioButton;
    rbmy: TRadioButton;
    rbmj: TRadioButton;
    rbdr: TRadioButton;
    rbmr: TRadioButton;
    DTPicker1: TDateTimePicker;
    DTPicker2: TDateTimePicker;
    cbmn: TComboBox;
    cbnj: TComboBox;
    b_tj: TBitBtn;
    qry_sjzkmx: TADODataSet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    sp_sjzkmx: TADOStoredProc;
    ds_sjzkmx: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure rbmrClick(Sender: TObject);
    procedure rbmyClick(Sender: TObject);
    procedure rbmjClick(Sender: TObject);
    procedure rbmnClick(Sender: TObject);
    procedure rbdrClick(Sender: TObject);
    procedure b_tjClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    sqltextmx:string; { Public declarations }
  end;

var
  frm_cx_tj_pub: Tfrm_cx_tj_pub;

implementation
uses p_dm,p_func;
{$R *.dfm}

procedure Tfrm_cx_tj_pub.BitBtn1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex=0 then
//     frm_func.cxgridtoexcel(cxgrid2,3,'aaa','bbb','ccc',TADOStoredProc.Create(self))
  else
//     frm_func.cxgridtoexcel(cxgrid1,3,'aaa','bbb','ccc',TADOStoredProc.Create(self));

end;

procedure Tfrm_cx_tj_pub.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_cx_tj_pub.b_tjClick(Sender: TObject);
var
   inputstring,tmpstr:string;
begin
  pub_sjsz:='tjsj';
  tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);

  pub_sjsz:='mx.ywcsj';
  tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);

  //  cxGrid2DBTableView1.DataController.Groups.FullExpand;

end;

procedure Tfrm_cx_tj_pub.FormShow(Sender: TObject);
begin
    cxPageControl1.ActivePageIndex:=0;
    sqltextmx:=qry_sjzkmx.CommandText;
    dtpicker1.Date:=frm_func.curr_date;
    dtpicker2.Date:=frm_func.curr_date;
    dtpicker1.visible:=true;
end;

procedure Tfrm_cx_tj_pub.rbdrClick(Sender: TObject);
begin
  dtpicker1.visible:=true;
  dtpicker2.visible:=true;
  cbnj.Visible :=false;
  cbmn.visible :=false;
end;

procedure Tfrm_cx_tj_pub.rbmjClick(Sender: TObject);
var year,day,month,i:word;
begin
  dtpicker1.visible:=false;
  dtpicker2.visible:=false;
  cbnj.Visible :=true;
  cbnj.Items.clear;
  cbnj.Items.add('1季度');
  cbnj.Items.add('2季度');
  cbnj.Items.add('3季度');
  cbnj.Items.add('4季度');
  cbnj.text:='1季度';
  cbmn.visible:=true;
  cbmn.Items.clear;
  decodedate(date,year,month,day);
  for i:=year downto year-50 do
  cbmn.items.Add(inttostr(i));
  cbmn.text:=inttostr(year);
end;

procedure Tfrm_cx_tj_pub.rbmnClick(Sender: TObject);
var year,day,month,i:word;
begin
  dtpicker1.visible:=false;
  dtpicker2.visible:=false;
  cbmn.Visible :=true;
  cbmn.Items.clear;
  decodedate(date,year,month,day);
  for i:=year downto year-50 do
  cbmn.items.Add(inttostr(i));
  cbmn.text:=inttostr(year);
  cbnj.Visible:=true;
  cbnj.Items.clear;
  cbnj.Items.add('全年');
  cbnj.Items.add('上半年');
  cbnj.Items.add('下半年');
  cbnj.text:='全年';
end;

procedure Tfrm_cx_tj_pub.rbmrClick(Sender: TObject);
begin
  dtpicker1.visible:=true;
  dtpicker2.visible:=false;
  cbnj.Visible :=false;
  cbmn.visible :=false;
end;

procedure Tfrm_cx_tj_pub.rbmyClick(Sender: TObject);
var year,day,month,i:word;
    s:string;
begin
  dtpicker1.visible:=false;
  dtpicker2.visible:=false;
  cbnj.Visible :=true;
  cbmn.visible:=true;
  cbmn.Items.clear;
  decodedate(date,year,month,day);
  for i:=year downto year-50 do
    cbmn.items.Add(inttostr(i));
  cbmn.text:=inttostr(year);
  cbnj.Items.clear;
  for i:=1 to 12 do
  begin
    if i<=9 then
      s:='0'+inttostr(i)+'月'
    else
      s:=inttostr(i)+'月';
    cbnj.Items.add(s);
  end;
  cbnj.text:='01月';
end;

end.
