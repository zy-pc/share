unit p_zdjfqd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  Tfrm_zdjfqd = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    dt_xzsj: TDateTimePicker;
    Label1: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Button2: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    qry_yycx: TADOQuery;
    ds_yycx: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zdjfqd: Tfrm_zdjfqd;

implementation

{$R *.dfm}

uses p_dm,p_bqgl_zxypyz;

procedure Tfrm_zdjfqd.Button1Click(Sender: TObject);
begin
qry_yycx.Close;
qry_yycx.SQL.text:='select distinct a.brxm,a.tmh,a.bch,replace(sbyy,'' '','''') sbyy'+
                   ' from zybl_qfbr a,zysf_zydj b,sys_kscwsz c where a.zyh=b.zyh and b.zyh=c.zyh and a.zxsj='+''''+
                   formatdatetime( 'yyyymmdd', dT_xzsj.Date )+''''+' and b.bqdm='+
                   ''''+pub_bqdm+''''+' and (a.tmh like ''%'+Edit2.Text+
                   '%'' or pym like ''%'+edit2.Text+'%'' or a.bch like ''%'+
                   Edit2.Text+'%'') order by a.bch';
qry_yycx.open;
end;

procedure Tfrm_zdjfqd.Button2Click(Sender: TObject);
begin
Close;
end;

procedure Tfrm_zdjfqd.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
Button1.Click;
end;

procedure Tfrm_zdjfqd.FormShow(Sender: TObject);
begin
dt_xzsj.DateTime:=frm_zxypyz.dt_zxsj.DateTime;
end;

end.
