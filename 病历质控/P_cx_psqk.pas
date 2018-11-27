unit P_cx_psqk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB, cxPC,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, cxGridBandedTableView,
  cxGridDBBandedTableView, cxBlobEdit, cxCheckBox;

type
  Tfrm_cx_psqk = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1ksmc: TcxGridDBColumn;
    cxGrid3DBTableView1psry: TcxGridDBColumn;
    cxGrid3DBTableView1ysmc: TcxGridDBColumn;
    cxGrid3DBTableView1fsrq: TcxGridDBColumn;
    cxGrid3DBTableView1message: TcxGridDBColumn;
    cxGrid3DBTableView1isreaded: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    ds_sszkts: TDataSource;
    qry_sszkts: TADODataSet;
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
  frm_cx_psqk: Tfrm_cx_psqk;

implementation
uses p_dm,p_func;
{$R *.dfm}

procedure Tfrm_cx_psqk.BitBtn1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex=0 then
     frm_func.cxgridtoexcel(cxgrid3,3,'aaa','bbb','ccc',TADOStoredProc.Create(self))
  else
//     frm_func.cxgridtoexcel(cxgrid1,3,'aaa','bbb','ccc',TADOStoredProc.Create(self));

end;

procedure Tfrm_cx_psqk.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_cx_psqk.b_tjClick(Sender: TObject);
var
   inputstring,tmpstr:string;
begin
  pub_sjsz:='fsrq';
  tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);
  qry_sszkts.Close;
  qry_sszkts.CommandText:=sqltextmx+' and ' +tmpstr;
  qry_sszkts.Open;

  cxGrid3DBTableView1.DataController.Groups.FullExpand;

end;

procedure Tfrm_cx_psqk.FormShow(Sender: TObject);
begin
    cxPageControl1.ActivePageIndex:=0;
    sqltextmx:=qry_sszkts.CommandText;
    dtpicker1.Date:=frm_func.curr_date;
    dtpicker2.Date:=frm_func.curr_date;
    dtpicker1.visible:=true;
end;

procedure Tfrm_cx_psqk.rbdrClick(Sender: TObject);
begin
  dtpicker1.visible:=true;
  dtpicker2.visible:=true;
  cbnj.Visible :=false;
  cbmn.visible :=false;
end;

procedure Tfrm_cx_psqk.rbmjClick(Sender: TObject);
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

procedure Tfrm_cx_psqk.rbmnClick(Sender: TObject);
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

procedure Tfrm_cx_psqk.rbmrClick(Sender: TObject);
begin
  dtpicker1.visible:=true;
  dtpicker2.visible:=false;
  cbnj.Visible :=false;
  cbmn.visible :=false;
end;

procedure Tfrm_cx_psqk.rbmyClick(Sender: TObject);
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
