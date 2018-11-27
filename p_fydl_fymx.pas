unit p_fydl_fymx;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Grids, DBGridEh, Db, ADODB, GridsEh,variants, ExtCtrls, StdCtrls,
  DBGridEhGrouping;

type
    Tfrm_fydl_fymx = class(TForm)
        g_fy: TDBGridEh;
    sp_cx_zyfydl: TADOStoredProc;
    ds_cx_zyfydl: TDataSource;
    Panel1: TPanel;
    btnFYLBCX: TButton;
        procedure FormShow(Sender: TObject);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure g_fyMouseDown(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
    procedure g_fyDblClick(Sender: TObject);
    procedure btnFYLBCXClick(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
        d_zyh:string;
        dlmc: string; //费用大类名称

        procedure sjxs(sp: TADOStoredProc; ds: TDataSource);

    end;

var
    frm_fydl_fymx: Tfrm_fydl_fymx;
    cxfs:string;

implementation

uses p_dm,p_cx_dxfymx;

{$R *.DFM}

procedure Tfrm_fydl_fymx.FormShow(Sender: TObject);
begin
    frm_fydl_fymx.Caption := dlmc;
    if pub_yydm='0240' then
    begin
      g_fy.SumList.Active:=true;
      panel1.Visible:=true;
      cxfs:='1';
    end
    else
    begin
      g_fy.SumList.Active:=false;
      panel1.Visible:=false;
    end;
end;

procedure Tfrm_fydl_fymx.btnFYLBCXClick(Sender: TObject);
begin
  cxfs:='2';
  g_fyDblClick(nil);
  cxfs:='1';
end;

procedure Tfrm_fydl_fymx.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 27 then
        close;
end;

procedure Tfrm_fydl_fymx.sjxs(sp: TADOStoredProc; ds: TDataSource);
begin
    sp.Filter := 'kmmc = ' + #39 + trim(dlmc) + #39;
    sp.Filtered := true;
    ds.DataSet := sp;
    g_fy.dataSource := ds;
end;

procedure Tfrm_fydl_fymx.g_fyDblClick(Sender: TObject);
begin
  if pub_yydm='0240' then
  begin
    try
      Application.CreateForm( Tfrm_cx_dxfymx, frm_cx_dxfymx );
      frm_cx_dxfymx.x_zyh:=d_zyh;
      frm_cx_dxfymx.sp_cx_dxfymx.Close;
      frm_cx_dxfymx.sp_cx_dxfymx.Parameters.Refresh;
      frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@zyh').Value:=d_zyh;
      frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@sfrq').Value:=
      StringReplace(sp_cx_zyfydl.FieldByName('sfrq').asstring,'-','',[rfReplaceAll]);
      frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@dldm').Value:=sp_cx_zyfydl.FieldByName('kmdm').asstring;
      if (sp_cx_zyfydl.Parameters.ParamByName('@table').Value<>unassigned) and (sp_cx_zyfydl.Parameters.ParamByName('@table').Value<>null) then
      begin
      frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@table').Value:=sp_cx_zyfydl.Parameters.ParamByName('@table').Value;
      end
      else
      begin
        frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@table').Value:='1';
      end;
      frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@sfczy').Value := sp_cx_zyfydl.FieldByName('sfczy').asstring;
      frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@cxfs').Value:=cxfs;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text:='select * from zysf_kjkmmx a,sys_xt_kg b where kmdm='+''''+sp_cx_zyfydl.FieldByName('kmdm').asstring+''''+' and '+
      '  (a.fydm=b.xyfydm or a.fydm=b.zychaoydm or a.fydm=b.zychenydm) ';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@clfs').Value:='1';
      end
      else
      begin
        frm_cx_dxfymx.g_fy.Columns.Add;
        frm_cx_dxfymx.g_fy.Columns[0].Title.Caption:='药品名称';
        frm_cx_dxfymx.g_fy.Columns[2].Title.Caption:='药品规格';
         frm_cx_dxfymx.g_fy.Columns[2].FieldName:='ypgg';
          frm_cx_dxfymx.g_fy.Columns[2].DisplayFormat:='';
          frm_cx_dxfymx.g_fy.Columns[2].Footer.FieldName:='';
          frm_cx_dxfymx.g_fy.Columns[2].Footer.ValueType:=fvtNon;
         frm_cx_dxfymx.g_fy.Columns[2].Footers.Delete(0);
         frm_cx_dxfymx.g_fy.Columns[4].Title.Caption:='单位';
         frm_cx_dxfymx.g_fy.Columns[4].FieldName:='zyyfdw';
        frm_cx_dxfymx.sp_cx_dxfymx.Parameters.ParamByName('@clfs').Value:='0';
      end;
      frm_cx_dxfymx.sp_cx_dxfymx.Open;
      frm_cx_dxfymx.ShowModal;
    finally
      frm_cx_dxfymx.free;
    end;
  end;
end;

procedure Tfrm_fydl_fymx.g_fyMouseDown(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if Button = mbRight then
        close;
end;
initialization
  RegisterClass(Tfrm_fydl_fymx);
end.

