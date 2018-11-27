unit p_fpff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, StdCtrls, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, ADODB, Grids, DBGrids, cxCalendar, OleServer, grproLib_TLB,p_obj;

type
  Tfrm_fpff = class( TForm )
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    cbb_sjlx: TcxComboBox;
    qry_sjkc: TADOQuery;
    ds_sjkc: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    Label2: TLabel;
    Label3: TLabel;
    edt_qh: TcxTextEdit;
    edt_zh: TcxTextEdit;
    Label4: TLabel;
    cxTextEdit1: TcxTextEdit;
    DBGrid3: TDBGrid;
    qry_czy: TADOQuery;
    DS_czy: TDataSource;
    lbl_zs: TLabel;
    qry_sjh: TADOQuery;
    SP_sjlyjc: TADOStoredProc;
    cxTextEdit2: TcxTextEdit;
    qry_sjff: TADOQuery;
    Qry_sjlymx: TADOQuery;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    ksrq: TcxDateEdit;
    jsrq: TcxDateEdit;
    Button6: TButton;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    ds_sjckcx: TDataSource;
    qry_sjckcx: TADOQuery;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    cxGrid2DBTableView1Column8: TcxGridDBColumn;
    Label5: TLabel;
    edt_fpsl: TcxTextEdit;
    GridppReport1: TGridppReport;
    Button4: TButton;
    Label8: TLabel;
    edt_ksdm: TcxTextEdit;
    edt_ksmc: TcxTextEdit;
    qry_ks: TADOQuery;
    ds_ks: TDataSource;
    dbgrd_ks: TDBGrid;
    cxGrid2DBTableView1Column9: TcxGridDBColumn;
    btn_zf: TButton;
    cxGrid2DBTableView1Column10: TcxGridDBColumn;
    lbl_bz: TLabel;
    procedure Button1Click( Sender: TObject );
    procedure cbb_sjlxPropertiesChange( Sender: TObject );
    procedure cxTextEdit1KeyPress( Sender: TObject; var Key: Char );
    procedure cbb_sjlxKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure DBGrid3KeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid3Exit( Sender: TObject );
    procedure Button2Click( Sender: TObject );
    procedure cxTextEdit1Click( Sender: TObject );
    procedure Button3Click( Sender: TObject );
    procedure qry_sjkcAfterScroll( DataSet: TDataSet );
    procedure FormShow( Sender: TObject );
    procedure Button6Click( Sender: TObject );
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure edt_ksdmKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_ksExit(Sender: TObject);
    procedure dbgrd_ksKeyPress(Sender: TObject; var Key: Char);
    procedure btn_zfClick(Sender: TObject);
    procedure qry_sjckcxAfterScroll(DataSet: TDataSet);
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
  procedure proc_printfpff(sjrk:TADOQuery);
    { Public declarations }
  end;

var
  frm_fpff: Tfrm_fpff;
  fpffBb:TCusBb;
  v_djh,v_syzt: string;
  
implementation
uses p_dm, p_func,p_zysf_print_service;
{$R *.dfm}

procedure Tfrm_fpff.proc_printfpff(sjrk:TADOQuery);
var
  res:string;
begin
  if sjrk.RecordCount > 0 then
  begin
    if fpffBb = nil then
    begin
      fpffBb := TCusBb.Create;
      fpffBb.GetBbByDM( fpffBb, '040308' );
      GridppReport1.LoadFromStr( fpffBb.nr );
    end;
    GridppReport1.DataSet := sjrk;

    res := frm_func.SetCReportXtcs( GridppReport1 );
    if res <> '1' then
    begin
      ShowMessage( res );
    end
    else
    begin
      GridppReport1.PrintPreview( true );
    end;
  end;
end;

procedure Tfrm_fpff.Button4Click(Sender: TObject);
begin
 proc_printfpff(qry_sjckcx);
end;

procedure Tfrm_fpff.btn_zfClick(Sender: TObject);
begin
  if v_syzt = '1' then  //syzt: 0发放到科室，1科室发放到操作员，2退到科室，3退到财务科
  begin
    MessageDlg('已发放到操作员，请先到科室停用！',mtInformation,[mbok],0);
    abort;
  end;

  if application.MessageBox('是否确认停用该收据?','提示',mb_iconquestion+mb_okcancel+mb_defbutton2)=idcancel then
    abort;
  with dm_data.Qry_pub do
  begin
    close;
    sql.clear;
    sql.Text:='update sys_sjlymx_ks set syzt=''3'' where lydh='''+v_djh+''';'+
            'update sjgl_sjffmx_ks set syzt=''3'' where djh='''+v_djh+'''';
    execsql;
  end;
  Button6Click(Button6);
end;

procedure Tfrm_fpff.Button1Click( Sender: TObject );
begin
  button1.Enabled := false;
  button2.Enabled := true;
  button3.Enabled := true;
  Panel3.Enabled := true;
  cbb_sjlxPropertiesChange( nil );
  cbb_sjlx.SetFocus;
end;

procedure Tfrm_fpff.Button2Click( Sender: TObject );
var
  sjqh, sjzh, i: integer;
  mess, lydh: string;
begin
  //验证数据
  if qry_sjkc.RecordCount =0 then
  begin
     messagebox( 0, '库存不足', '提示', MB_OK + MB_ICONINFORMATION );
     exit;
  end;
  if not trystrtoint( trim( edt_qh.text ), i ) or not trystrtoint( trim( edt_zh.text ), i ) then
  begin
    messagebox( 0, '收据输入不正确', '提示', MB_OK + MB_ICONINFORMATION );
    edt_qh.SetFocus;
    exit;
  end;
  sjqh := strtoint( trim( edt_qh.text ) );
  sjzh := strtoint( trim( edt_zh.text ) );
  if sjqh > sjzh then
  begin
    messagebox( 0, '收据输入不正确', '提示', MB_OK + MB_ICONINFORMATION );
    edt_qh.SetFocus;
    exit;
  end;
  if sjqh < qry_sjkc.FieldByName( 'sjqh' ).AsInteger then
  begin
    messagebox( 0, '收据起号不存在', '提示', MB_OK + MB_ICONINFORMATION );
    edt_qh.SetFocus;
    exit;
  end;
  if sjzh > qry_sjkc.FieldByName( 'sjzh' ).AsInteger then
  begin
    messagebox( 0, '收据止号不存在', '提示', MB_OK + MB_ICONINFORMATION );
    edt_zh.SetFocus;
    exit;
  end;
  sp_sjlyjc.close;
  sp_sjlyjc.Parameters.ParamByName( '@sjlb' ).value := qry_sjkc.FieldByName( 'sjlx' ).AsString;
  sp_sjlyjc.Parameters.ParamByName( '@sjqh' ).value := qry_sjkc.fieldbyname( 'sjzh' ).asinteger - qry_sjkc.fieldbyname( 'sysl' ).asinteger + 1 ;  //qry_sjkc.fieldbyname( 'sjqh' ).asinteger;
  sp_sjlyjc.Parameters.ParamByName( '@sjzh' ).value := qry_sjkc.fieldbyname( 'sjzh' ).asinteger;
  sp_sjlyjc.Parameters.ParamByName( '@zt' ).value := 'aaaa';
  sp_sjlyjc.ExecProc;
  if trim( sp_sjlyjc.Parameters.ParamByName( '@zt' ).value ) <> '' then
  begin
    mess := sp_sjlyjc.Parameters.ParamByName( '@zt' ).value;
    application.MessageBox( pchar( mess ), '提示', 0 + 16 );
    exit;
  end;

  if pub_yydm <> '0271' then   //掇刀医院
  begin
    if not qry_czy.Active or qry_czy.IsEmpty or ( cxTextEdit2.Text = '' ) then
    begin
      messagebox( 0, '领用人不能为空', '提示', MB_OK + MB_ICONINFORMATION );
      cxTextEdit1.SetFocus;
      exit;
    end;
  end;

  dm_data.ado_mydata.BeginTrans;
  try
    qry_sjkc.Edit;
    qry_sjkc.FieldByName( 'sysl' ).Value := qry_sjkc.FieldByName( 'sysl' ).AsInteger - ( sjzh - sjqh + 1 );
    qry_sjkc.Post;
    qry_sjkc.UpdateBatch( arall );

    qry_sjlymx.close;
    if pub_yydm = '0271' then    //掇刀医院
    begin
      qry_sjlymx.SQL.text := 'select * from sys_sjlymx_ks where lydh=:lydh';
    end else
    begin
      qry_sjlymx.SQL.text := 'select * from sys_sjlymx where lydh=:lydh';
    end;
    qry_sjlymx.Parameters.ParamByName( 'lydh' ).value := '';
    qry_sjlymx.open;
    qry_sjlymx.append;
    qry_sjlymx['czrq'] := frm_func.curr_date;
    qry_sjlymx['czy'] := pub_czydm;
    lydh := get_sjh( pub_czydm );
    qry_sjlymx['lydh'] := lydh;
    qry_sjlymx['sjlb'] := qry_sjkc.FieldByName( 'sjlx' ).AsString;
    if trim(cxTextEdit1.text) = '' then
    begin
      qry_sjlymx['lyr'] := '';
      qry_sjlymx['lyks'] := '';
    end else
    begin
      qry_sjlymx['lyr'] := qry_czy['dm'];
      qry_sjlymx['lyks'] := qry_czy['ksdm'];
    end;
    qry_sjlymx['sjqh'] := sjqh;
    qry_sjlymx['sjzh'] := sjzh;
    qry_sjlymx['sjsl'] := sjzh - sjqh + 1;
    if pub_yydm = '0271' then
      qry_sjlymx['syzt'] := 0;
    qry_sjlymx.post;

    qry_sjff.close;
    if pub_yydm = '0271' then    //掇刀医院
    begin
      qry_sjff.SQL.text := 'select * from sjgl_sjffmx_ks where djh =:djh';
    end else
    begin
      qry_sjff.SQL.text := 'select * from sjgl_sjffmx where djh =:djh';
    end;
    qry_sjff.Parameters.ParamByName( 'djh' ).value := lydh;
    qry_sjff.open;
    qry_sjff.append;
    qry_sjff['sjqh'] := sjqh;
    qry_sjff['sjzh'] := sjzh;
    qry_sjff['sjlb'] := qry_sjkc.FieldByName( 'sjlx' ).AsString;
    qry_sjff['sjsl'] := sjzh - sjqh + 1;
    qry_sjff['lysj'] := frm_func.curr_date;
    qry_sjff['lyr'] := trim(cxTextEdit1.text);  //qry_czy['dm'];
    qry_sjff['rkdh'] := qry_sjkc['rkdh'];
    qry_sjff['ffr'] := pub_czydm;
    qry_sjff['djh'] := lydh;
    if pub_yydm = '0271' then
    begin
      qry_sjff['lyks'] := qry_ks['dm'];
      qry_sjff['sysl'] := sjzh - sjqh + 1;
      qry_sjff['syzt'] := 0;
    end;
    qry_sjff.post;
    dm_data.ado_mydata.CommitTrans;
    messagebox( 0, '数据保存成功', '提示', MB_OK + MB_ICONINFORMATION );
    frm_zysf_print_service.proc_printfpck(qry_sjff);
    button1.Enabled := true;
    button2.Enabled := false;
    button3.Enabled := false;
    Panel3.Enabled := false;
    edt_qh.Text := '';
    edt_zh.text := '';
    cxTextEdit1.text := '';
    cxTextEdit2.text := '';
  except on e: exception do
    begin
      dm_data.ado_mydata.RollbackTrans;
      messagebox( 0, pchar( '数据保存失败' + e.message ), '提示', MB_OK + MB_ICONINFORMATION );
    end;
  end;
end;

procedure Tfrm_fpff.Button3Click( Sender: TObject );
begin
  button1.Enabled := true;
  button2.Enabled := false;
  button3.Enabled := false;
  Panel3.Enabled := false;
  edt_qh.Text := '';
  edt_zh.text := '';
  cxTextEdit1.text := '';
  cxTextEdit2.text := '';
end;

procedure Tfrm_fpff.Button6Click( Sender: TObject );
begin
  qry_sjckcx.Close;
  if pub_yydm = '0271' then    //掇刀医院
  begin
    qry_sjckcx.sql.text := 'select a.*,b.mc sjlxmc,c.mc rkczymc,d.mc ffrmc,e.mc lyksmc '+
      'from sjgl_sjffmx_ks a,sys_sjlb b,sys_czy c,sys_czy d,sys_ksdm e where '+
      'convert(char,lysj,112) >=:ksrq and convert(char,lysj,112) <= :jsrq '+
      'and a.sjlb = b.dm and a.lyr = c.dm and a.ffr = d.dm AND a.lyks = e.dm ';
  end else
  begin
    qry_sjckcx.sql.text := 'select a.*,b.mc sjlxmc,c.mc rkczymc,d.mc ffrmc '+
      'from sjgl_sjffmx a,sys_sjlb b,sys_czy c,sys_czy d where '+
      'convert(char,lysj,112) >=:ksrq and convert(char,lysj,112) <= :jsrq '+
      'and a.sjlb = b.dm and a.lyr = c.dm and a.ffr = d.dm ';
  end;
  qry_sjckcx.Parameters.ParamByName( 'ksrq' ).Value := formatdatetime( 'yyyymmdd', ksrq.Date );
  qry_sjckcx.Parameters.ParamByName( 'jsrq' ).Value := formatdatetime( 'yyyymmdd', jsrq.date );
  qry_sjckcx.Open;
end;

procedure Tfrm_fpff.cbb_sjlxKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    selectnext( activecontrol, true, true );
    try
      edt_fpsl.Text:=floattostr(strtofloat(trim(edt_zh.Text))-strtofloat(trim(edt_qh.Text))+1);
    except
      edt_fpsl.Text:='0';
    end;
  end;
end;

procedure Tfrm_fpff.cbb_sjlxPropertiesChange( Sender: TObject );
var
  prv_sjlx: string;
begin
  edt_qh.Text:='';
  edt_zh.Text:='';
  edt_fpsl.Text:='';
  prv_sjlx := formatex( cbb_sjlx.ItemIndex + 1, 2 );
  qry_sjkc.close;

  qry_sjkc.Parameters.ParamByName( 'sjlx' ).Value := prv_sjlx;
  qry_sjkc.Open;
end;

procedure Tfrm_fpff.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if pub_yydm = '0271' then
  begin
    if AViewInfo.RecordViewInfo.GridRecord.Values[9] = '3' then
      ACanvas.Brush.Color := clred
    else if AViewInfo.RecordViewInfo.GridRecord.Values[9] = '1' then
      ACanvas.Brush.Color := clGray;
  end;
end;

procedure Tfrm_fpff.cxTextEdit1Click( Sender: TObject );
begin
  cxTextEdit2.Text := '';
end;

procedure Tfrm_fpff.cxTextEdit1KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    qry_czy.close;
    qry_czy.Parameters.parambyname( 'pym' ).value := '%' + trim( cxTextEdit1.text ) + '%';
    qry_czy.open;
    if Qry_czy.IsEmpty then
    begin
      application.MessageBox( '无此操作员!', '提示', 0 + 16 );
      cxTextEdit1.SetFocus;
      exit;
    end;
    if qry_czy.RecordCount <> 1 then
    begin
      dbgrid3.Visible := true;
      dbgrid3.SetFocus;
    end
    else
    begin
      cxTextEdit2.Text := qry_czy['mc'];
      cxTextEdit1.Text := qry_czy['dm'];
      button2.SetFocus;
    end;
  end;
end;

procedure Tfrm_fpff.dbgrd_ksExit(Sender: TObject);
begin
  dbgrd_ks.Visible := false ;
end;

procedure Tfrm_fpff.dbgrd_ksKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edt_ksdm.Text := qry_ks['dm'];
    edt_ksmc.Text := qry_ks['mc'];
  end;
  cxTextEdit1.setfocus ;
end;

procedure Tfrm_fpff.DBGrid3Exit( Sender: TObject );
begin
  dbgrid3.Visible := false;
end;

procedure Tfrm_fpff.DBGrid3KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    cxTextEdit2.Text := qry_czy['mc'];
    cxTextEdit1.Text := qry_czy['dm'];
    button2.setfocus;
  end;
end;

procedure Tfrm_fpff.edt_ksdmKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qry_ks.close;
    qry_ks.sql.Clear;
    qry_ks.SQL.text := 'SELECT dm,mc FROM dbo.sys_ksdm WHERE sybz = 1 AND '+
        '(pym like ''%'+trim( edt_ksdm.text ) +'%'' or '+
        'mc like ''%'+trim( edt_ksdm.text ) +'%'' or '+
        'dm like ''%'+trim( edt_ksdm.text ) +'%'')';
    qry_ks.open;
    if qry_ks.IsEmpty then
    begin
      application.MessageBox( '无此科室!', '提示', 0 + 16 );
      edt_ksdm.SetFocus;
      exit;
    end;
    if qry_ks.RecordCount <> 1 then
    begin
      dbgrd_ks.Visible := true;
      dbgrd_ks.SetFocus;
    end else
    begin
      edt_ksdm.Text := qry_ks['dm'];
      edt_ksmc.Text := qry_ks['mc'];
      cxTextEdit1.SetFocus;
    end;
  end;
end;

procedure Tfrm_fpff.FormCreate(Sender: TObject);
begin
  ksrq.date:=date;
  jsrq.date:=date;
  if pub_yydm <> '0271' then
  begin
    try
      cxGrid2DBTableView1.Columns[1].Free;
      cxGrid2DBTableView1.Columns[9].Free;
    except
    end;
  end;
  if pub_yydm = '0271' then
  begin
    v_syzt := '0';
  end;
end;

procedure Tfrm_fpff.FormShow( Sender: TObject );
begin
  button1.setfocus;
  if pub_yydm = '0271' then     //掇刀医院
  begin
    Label8.Visible := true ;
    edt_ksdm.Visible := true ;
    edt_ksmc.Visible := true ;

    Label4.Top := 177 ;
    cxTextEdit1.Top := 175 ;
    cxTextEdit2.Top := 175 ;
    Label8.Top := 144 ;
    edt_ksdm.Top := 142 ;
    edt_ksmc.Top := 142 ;

    cxTextEdit1.TabOrder := 5 ;
    cxTextEdit2.TabOrder := 6 ;
    edt_ksdm.TabOrder := 3 ;
    edt_ksmc.TabOrder := 4 ;
    btn_zf.visible := true;
    lbl_bz.Visible := true;
  end;
end;

procedure Tfrm_fpff.qry_sjckcxAfterScroll(DataSet: TDataSet);
begin
  if pub_yydm = '0271' then
  begin
    if NOT qry_sjckcx.IsEmpty then
    BEGIN
      v_djh := qry_sjckcx['djh'];
      v_syzt := qry_sjckcx['syzt'];    //syzt: 0发放到科室，1科室发放到操作员，2退到科室，3退到财务科
      if (v_syzt = '0') or (v_syzt = '2') then
        btn_zf.Enabled := true
      else
        btn_zf.Enabled := false;
    END;
  end;
end;

procedure Tfrm_fpff.qry_sjkcAfterScroll( DataSet: TDataSet );
var
  sjh: integer;
begin
//  qry_sjh.close;
//  qry_sjh.SQL.Text := 'select isnull(max(sjzh),0) sjh from sjgl_sjffmx where ' +
//    ' sjlb =' + #39 + qry_sjkc.FieldByName( 'sjlx' ).AsString + #39 +
//    ' and rkdh =' + #39 + qry_sjkc.FieldByName( 'rkdh' ).AsString + #39;
//  qry_sjh.Open;
//  sjh := qry_sjh.FieldByName( 'sjh' ).AsInteger;
//  if sjh = 0 then
//  begin
//    edt_qh.Text := qry_sjkc.FieldByName( 'sjqh' ).AsString;
//  end
//  else
//  begin
//    edt_qh.text := inttostr( sjh + 1 );
//  end;
//  edt_zh.Text := qry_sjkc.FieldByName( 'sjzh' ).AsString;

  if qry_sjkc.RecordCount=0 then exit;

  edt_qh.Text:=qry_sjkc.FieldByName( 'sjqh' ).AsString;
  edt_zh.Text := qry_sjkc.FieldByName( 'sjzh' ).AsString;
  try
    edt_fpsl.Text:=floattostr(strtofloat(trim(edt_zh.Text))-strtofloat(trim(edt_qh.Text))+1);
  except
    edt_fpsl.Text:='0';
  end;

  
end;

end.

