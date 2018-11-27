unit p_xz_fyyf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, ADODB;

type
  Tfrm_xz_fyyf = class(TForm)
    qry_yf: TADOQuery;
    grp1: TGroupBox;
    dblkcbb_yf: TDBLookupComboBox;
    btn_ok: TBitBtn;
    btn_tc: TBitBtn;
    ds_yf: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_xz_fyyf: Tfrm_xz_fyyf;
function func_Show_yfxz(const v_kssx: string): string;

implementation

uses p_dm;
{$R *.dfm}

function func_Show_yfxz(const v_kssx: string): string;
begin
  Result := '';
  Application.CreateForm(Tfrm_xz_fyyf, frm_xz_fyyf);
  try
    frm_xz_fyyf.qry_yf.Close;
    if v_kssx = '02' then
    begin
      frm_xz_fyyf.grp1.Caption := '选择西药房';
      frm_xz_fyyf.qry_yf.SQL.text := 'select * from sys_ksdm where kssx like ' +
        #39 + v_kssx + #39 +
        ' and charindex(dm,' + #39 + pub_ysgzz_yfdm + #39 + ')>0';
    end
    else if v_kssx = '04' then
    begin
      frm_xz_fyyf.grp1.Caption := '选择中药房';
      frm_xz_fyyf.qry_yf.SQL.text := 'select * from sys_ksdm where kssx like ' +
        #39 + v_kssx + #39 +
        ' and charindex(dm,' + #39 + pub_ysgzz_yfdm + #39 + ')>0';
    end
    else if v_kssx = 'cyf' then
    begin
      frm_xz_fyyf.grp1.Caption := '选择成药房';
        //科室表中 clyf 字段代表成药房代码,可多个(2011-07-26 jc)
      frm_xz_fyyf.qry_yf.SQL.text := 'select * from sys_ksdm where kssx like ' +
        #39 + '%' + #39 +
        ' and charindex(dm,(select clyf from sys_ksdm where dm = ' + #39 +
        pub_ksdm + #39 + '))>0 order by mc asc';
    end
    else if v_kssx = '05' then
    begin
      frm_xz_fyyf.grp1.Caption := '选择草药房';
      frm_xz_fyyf.qry_yf.SQL.text := 'select * from sys_ksdm where kssx like ' +
        #39 + '%' + #39 +
        ' and charindex(dm,(select cyyf from sys_ksdm where dm = ' + #39 +
        pub_ksdm + #39 + '))>0';
    end;

    frm_xz_fyyf.qry_yf.Open;
    //根据设置判断是否启用成药划价 (2011-07-26 jc)   not ((v_kssx = 'cyf') and (frm_xz_fyyf.qry_yf.RecordCount < 1))
    if not ((frm_xz_fyyf.qry_yf.RecordCount < 1)) then
    begin
      if frm_xz_fyyf.qry_yf.RecordCount < 1 then
        Application.MessageBox('提示:登陆科室未设置相关药房!', '提示', MB_OK)
      else if frm_xz_fyyf.qry_yf.RecordCount = 1 then
        Result := frm_xz_fyyf.qry_yf.FieldByName('dm').Value
      else
      begin
        frm_xz_fyyf.dblkcbb_yf.KeyValue :=
          frm_xz_fyyf.qry_yf.FieldByName('dm').Value;
        if frm_xz_fyyf.ShowModal = mrOk then
        begin
          if frm_xz_fyyf.dblkcbb_yf.Text <> '' then
            Result := frm_xz_fyyf.dblkcbb_yf.KeyValue;
        end;
      end;
    end;
  finally
    frm_xz_fyyf.Free;
  end;
end;
end.
