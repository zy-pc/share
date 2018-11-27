unit p_Makvar_zysf;

interface
  uses p_dm;

var
  zydjBahzdsc : Boolean = False;    //  住院登记，病案号自动生成
  kg_sbglqxkz : Boolean = False;    //  社保管理权限控制
  js_qygrhzsq : Boolean = False;    //  启用隔日回招授权

procedure initKg;

implementation


procedure initKg;
begin
  if Assigned(DM_data) or Assigned(DM_data.qry_pub) then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'select * from sys_xt_kg_zysf';
    DM_data.qry_pub.Open;
    if not DM_data.qry_pub.IsEmpty then
    begin
      if DM_data.qry_pub.FieldList.Find('zydjBahzdsc')<>nil then
        zydjBahzdsc := DM_data.qry_pub.FieldByName('zydjBahzdsc').AsBoolean;
      if DM_data.qry_pub.FieldList.Find('kg_sbglqxkz')<>nil then
        kg_sbglqxkz := DM_data.qry_pub.FieldByName('kg_sbglqxkz').AsBoolean;
      if DM_data.qry_pub.FieldList.Find('js_qygrhzsq')<>nil then
        js_qygrhzsq := DM_data.qry_pub.FieldByName('js_qygrhzsq').AsBoolean;      
    end;
    DM_data.qry_pub.Close;
  end;
end;


end.
