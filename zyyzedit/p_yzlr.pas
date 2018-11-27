unit p_yzlr;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, Grids, DBGridEh, ComCtrls, Buttons,
    cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
    DB, cxDBData, ADODB, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
    cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxSplitter,
    cxPC, ImgList, DBGrids, cxTimeEdit, cxMaskEdit, cxCalendar;

type
    Tfrm_yzlr = class(TForm)
        Panel1: TPanel;
        Panel2: TPanel;
        GroupBox1: TGroupBox;
        cxGrid1DBTableView1: TcxGridDBTableView;
        cxGrid1Level1: TcxGridLevel;
        cxGrid1: TcxGrid;
        sp_brxx: TADOStoredProc;
        ds_brxx: TDataSource;
        cxGrid1DBTableView1bch: TcxGridDBColumn;
        cxGrid1DBTableView1brxm: TcxGridDBColumn;
        sp_jbxx: TADOStoredProc;
        ds_jbxx: TDataSource;
        b_edit: TBitBtn;
        b_delete: TBitBtn;
        b_group: TBitBtn;
        b_enter: TBitBtn;
        b_tc: TBitBtn;
        qry_in_zyyz: TADOQuery;
        b_stopall: TBitBtn;
        Panel4: TPanel;
        Label1: TLabel;
        Label3: TLabel;
        Label4: TLabel;
        Label5: TLabel;
        Label7: TLabel;
        Label8: TLabel;
        Label9: TLabel;
        Label10: TLabel;
        Label11: TLabel;
        Label12: TLabel;
        Label13: TLabel;
        DBEdit5: TDBEdit;
        DBEdit6: TDBEdit;
        DBEdit7: TDBEdit;
        DBEdit8: TDBEdit;
        DBEdit9: TDBEdit;
        DBEdit4: TDBEdit;
        DBEdit3: TDBEdit;
        DBEdit2: TDBEdit;
        DBEdit13: TDBEdit;
        DBEdit16: TDBEdit;
        DBEdit17: TDBEdit;
        Panel7: TPanel;
        b_cxbr: TBitBtn;
        ImageList1: TImageList;
        ds_in_zyyz: TDataSource;
        b_enter_all: TBitBtn;
        ds_cx_yzxm: TDataSource;
        sp_cx_yzxm: TADOStoredProc;
        ds_cx_yp_yz: TDataSource;
        sp_cx_yp_yz: TADOStoredProc;
        Panel5: TPanel;
        cxPageControl1: TcxPageControl;
        cxTabSheet1: TcxTabSheet;
        cxGrid3: TcxGrid;
        cxGridDBTableView3: TcxGridDBTableView;
        cxGridDBColumn24: TcxGridDBColumn;
        cxGridDBColumn25: TcxGridDBColumn;
        cxGridDBColumn26: TcxGridDBColumn;
        cxGridDBColumn27: TcxGridDBColumn;
        cxGridDBColumn28: TcxGridDBColumn;
        cxGridDBColumn29: TcxGridDBColumn;
        cxGridDBColumn30: TcxGridDBColumn;
        cxGridDBColumn31: TcxGridDBColumn;
        cxGridDBColumn32: TcxGridDBColumn;
        cxGridDBColumn33: TcxGridDBColumn;
        cxGridDBColumn34: TcxGridDBColumn;
        cxGridDBColumn35: TcxGridDBColumn;
        cxGridLevel3: TcxGridLevel;
        cxTabSheet2: TcxTabSheet;
        cxGridDBTableView3DBColumn1: TcxGridDBColumn;
        cxGridDBTableView3DBColumn2: TcxGridDBColumn;
        cxGridDBTableView3DBColumn3: TcxGridDBColumn;
        qry_pub: TADOQuery;
        cmd_pub: TADOCommand;
        sp_in_yzfyxm: TADOStoredProc;
        sp_del_ypfymx: TADOStoredProc;
        qry_czjl: TADOQuery;
        cxGrid2: TcxGrid;
        cxGridDBTableView1: TcxGridDBTableView;
        cxGridDBColumn1: TcxGridDBColumn;
        cxGridDBColumn2: TcxGridDBColumn;
        cxGridDBColumn3: TcxGridDBColumn;
        cxGridDBColumn4: TcxGridDBColumn;
        cxGridDBColumn5: TcxGridDBColumn;
        cxGridDBColumn6: TcxGridDBColumn;
        cxGridDBColumn7: TcxGridDBColumn;
        cxGridDBColumn8: TcxGridDBColumn;
        cxGridDBColumn9: TcxGridDBColumn;
        cxGridDBColumn10: TcxGridDBColumn;
        cxGridDBColumn11: TcxGridDBColumn;
        cxGridDBColumn12: TcxGridDBColumn;
        cxGridDBColumn13: TcxGridDBColumn;
        cxGridDBColumn14: TcxGridDBColumn;
        cxGridDBColumn15: TcxGridDBColumn;
        cxGridLevel1: TcxGridLevel;
        Panel3: TPanel;
        Label2: TLabel;
        Label6: TLabel;
        Label14: TLabel;
        Label15: TLabel;
        Label16: TLabel;
        CheckBox1: TCheckBox;
        Label17: TLabel;
        cxTabSheet3: TcxTabSheet;
        cxGrid4: TcxGrid;
        cxGridDBTableView2: TcxGridDBTableView;
        cxGridDBColumn16: TcxGridDBColumn;
        cxGridDBColumn17: TcxGridDBColumn;
        cxGridDBColumn18: TcxGridDBColumn;
        cxGridDBColumn19: TcxGridDBColumn;
        cxGridDBColumn20: TcxGridDBColumn;
        cxGridDBColumn21: TcxGridDBColumn;
        cxGridDBColumn22: TcxGridDBColumn;
        cxGridDBColumn23: TcxGridDBColumn;
        cxGridDBColumn36: TcxGridDBColumn;
        cxGridDBColumn37: TcxGridDBColumn;
        cxGridDBColumn38: TcxGridDBColumn;
        cxGridDBColumn39: TcxGridDBColumn;
        cxGridDBColumn40: TcxGridDBColumn;
        cxGridDBColumn41: TcxGridDBColumn;
        cxGridDBColumn42: TcxGridDBColumn;
        cxGridLevel2: TcxGridLevel;
        CheckBox2: TCheckBox;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure CheckBox2Click(Sender: TObject);
        procedure CheckBox1Click(Sender: TObject);
        procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
            ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
            var ADone: Boolean);
        procedure cxGridDBTableView3CustomDrawCell(Sender: TcxCustomGridTableView;
            ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
            var ADone: Boolean);
        procedure b_groupClick(Sender: TObject);
        procedure b_enter_allClick(Sender: TObject);
        procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
            ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
            var ADone: Boolean);
        procedure ds_brxxDataChange(Sender: TObject; Field: TField);
        procedure b_stopallClick(Sender: TObject);
        procedure b_enterClick(Sender: TObject);
        procedure b_deleteClick(Sender: TObject);
        procedure sp_cx_yzxmAfterScroll(DataSet: TDataSet);
        procedure b_editClick(Sender: TObject);
        procedure b_tcClick(Sender: TObject);
        procedure cxPageControl1Change(Sender: TObject);
        procedure czksExit(Sender: TObject);
        procedure yzxmEnter(Sender: TObject);
        procedure g_emptKeyPress(Sender: TObject; var Key: Char);
        procedure b_cxbrClick(Sender: TObject);
        procedure cxGrid1DBTableView1DblClick(Sender: TObject);
        procedure yzxmExit(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure refresh_yzxm;
    private
    { Private declarations }
    public
        yzid: integer;
        yzlb: string; //医嘱类别
        procedure yzinypfymx(yzid: integer; zyh, lb: string); overload;
        procedure yzinypfymx(zyh: string); overload;
    { Public declarations }
    end;

var
    frm_yzlr: Tfrm_yzlr;
    clfs: string; //检索方式 药品,医嘱
    zy_czks: string; //处置科室
    yzsx: string; //医嘱属性
    add_fs: string; //1 插入 2 修改
implementation
uses p_dm, p_func, p_yzfz, p_yzinput, p_yzxg, p_tjyz;
{$R *.dfm}

procedure Tfrm_yzlr.yzinypfymx(yzid: integer; zyh, lb: string); //overload;//单条医嘱药品写入药品费用明细表
begin
    if lb = '药品' then
    begin
        cmd_pub.CommandText := 'insert into zybl_zyyz_ypmx select zyh,id,:cxph,xmdm,ypdwid,dw,ypbzbl,sl,yplsj from zybl_zyyz where id=:cxid and zfbz=0';
        cmd_pub.Parameters.ParamValues['cxid'] := yzid;
        cmd_pub.Parameters.ParamValues['cxph'] := get_sjh(pub_czydm);
        cmd_pub.Execute;
    end else
    begin
        sp_in_yzfyxm.Parameters.ParamValues['@zyh'] := zyh;
        sp_in_yzfyxm.Parameters.ParamValues['@yzid'] := yzid;
        sp_in_yzfyxm.Parameters.ParamValues['@yzsx'] := yzsx;
        sp_in_yzfyxm.Parameters.ParamValues['@ph'] := get_sjh(pub_czydm);
        sp_in_yzfyxm.Parameters.ParamValues['@czy'] := pub_czydm;
        sp_in_yzfyxm.ExecProc;
    end;
end;

procedure Tfrm_yzlr.yzinypfymx(zyh: string); //医人所有医嘱药品写入药品费用明细表
begin
    cmd_pub.CommandText := '';
    cmd_pub.CommandText := 'insert into zybl_zyyz_ypmx select zyh,id,' + #39 +
        get_sjh(pub_czydm) + #39 + ',xmdm,ypdwid,dw,ypbzbl,' +
        'sl,yplsj from zybl_zyyz where zyh=' + #39 + zyh + #39 +
        ' and zxbz=0 and tzbz=0 and zfbz=0 and lb=' + #39 + '药品' + #39 +
        ' and yzsx=' + #39 + yzsx + #39 + ' and kdys=' + #39 + pub_czydm + #39;

    cmd_pub.Execute;
    sp_in_yzfyxm.Parameters.ParamValues['@zyh'] := zyh;
    sp_in_yzfyxm.Parameters.ParamValues['@yzid'] := 0;
    sp_in_yzfyxm.Parameters.ParamValues['@yzsx'] := yzsx;
    sp_in_yzfyxm.Parameters.ParamValues['@ph'] := get_sjh(pub_czydm);
    sp_in_yzfyxm.Parameters.ParamValues['@czy'] := pub_czydm;
    sp_in_yzfyxm.ExecProc;
end;

procedure Tfrm_yzlr.refresh_yzxm;
begin
    sp_cx_yzxm.Close;
    sp_cx_yzxm.Parameters.ParamByName('@zyh').Value := sp_brxx.FieldByName('zyh').AsString;
    sp_cx_yzxm.Parameters.ParamByName('@yzsx').Value := yzsx;
    sp_cx_yzxm.Open;
    cxgriddbtableview1.DataController.Groups.FullExpand;
    cxgriddbtableview2.DataController.Groups.FullExpand;
    cxgriddbtableview3.DataController.Groups.FullExpand;
    sp_cx_yzxm.First;
end;

procedure Tfrm_yzlr.FormShow(Sender: TObject);
begin
    label2.Height := 11;
    label2.Width := 35;
    label2.Color := rgb(0, 200, 80);
    label6.Height := 11;
    label6.Width := 35;
    label6.Color := rgb(255, 245, 104);
    label14.Height := 11;
    label14.Width := 35;
    label14.Color := rgb(242, 101, 34);
    sp_brxx.Active := false;
    sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
    sp_brxx.Open;
    yzsx := '长期';
    cxPageControl1.ActivePage := cxTabSheet1;
    cxPageControl1.OnChange(cxPageControl1);


  //显示颜色
    if checkbox1.Checked and checkbox2.Checked then
    begin
        sp_cx_yzxm.Filtered := false
    end
    else begin
        if (not checkbox1.Checked) and (not checkbox2.Checked) then
        begin
            sp_cx_yzxm.Filtered := false;
            sp_cx_yzxm.Filter := 'zfbz=0 and tzbz=0';
            sp_cx_yzxm.Filtered := true;
        end;
        if (checkbox1.Checked) and (not checkbox2.Checked) then
        begin
            sp_cx_yzxm.Filtered := false;
            sp_cx_yzxm.Filter := 'tzbz=0 and (zfbz=0 or zfbz=1)';
            sp_cx_yzxm.Filtered := true;
        end;
        if (not checkbox1.Checked) and (checkbox2.Checked) then
        begin
            sp_cx_yzxm.Filtered := false;
            sp_cx_yzxm.Filter := 'zfbz=0 and (tzbz=0 or tzbz=1)';
            sp_cx_yzxm.Filtered := true;
        end;
    end;
    if pub_dzblkh <> '' then
        sp_brxx.Locate('tmh', formatex(strtoint(pub_dzblkh), 9), []);
  //255.245.104 yellow停止
  //242.101.34 red    作废
  //0.166.81  green   执行

  //frm_yzlr.sp_jbxx.AfterScroll(sp_jbxx.DataSource.DataSet);
end;

procedure Tfrm_yzlr.yzxmExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);
    if cxPageControl1.Focused or b_tc.Focused then
    begin
        clfs := '';
    end;
end;

procedure Tfrm_yzlr.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
//双击病人姓名
    b_enter.Click;

end;

procedure Tfrm_yzlr.b_cxbrClick(Sender: TObject);
begin
    sp_jbxx.Close;
    sp_brxx.Active := false;
    sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := pub_bqdm;
    sp_brxx.Open;
  {sp_jbxx.Active:=false;
  sp_jbxx.Parameters.ParamByName('@zyh').Value:='';
  sp_jbxx.Open;}
end;

procedure Tfrm_yzlr.g_emptKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
   //czks.Text:=dm_data.qry_pub['mc'];
        zy_czks := dm_data.qry_pub['dm'];
        qry_in_zyyz.Edit;
        qry_in_zyyz.FieldByName('czks').AsString := zy_czks;
    end;
end;

procedure Tfrm_yzlr.yzxmEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_yzlr.czksExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);
end;

procedure Tfrm_yzlr.cxPageControl1Change(Sender: TObject);
begin
    if cxPageControl1.ActivePage = cxTabSheet1 then
    begin
        yzsx := '长期';
    end
    else begin
        if cxPageControl1.ActivePage = cxTabSheet2 then
            yzsx := '临时'
        else
            yzsx := '嘱托';
    end;
    refresh_yzxm;
end;

procedure Tfrm_yzlr.b_tcClick(Sender: TObject);
begin
    if pub_dzblkh <> '' then
        application.Terminate
    else
        close;
end;

procedure Tfrm_yzlr.b_editClick(Sender: TObject);
begin
    if sp_cx_yzxm.FieldByName('zfbz').AsBoolean then
    begin
        application.MessageBox('该医嘱已停止或作废,不能修改!', '提示信息', 0 + 48);
        abort;
    end;
    application.CreateForm(Tfrm_yzxg, frm_yzxg);
    try
        frm_yzxg.id := sp_cx_yzxm.FieldByName('id').AsInteger;
        frm_yzxg.lb := sp_cx_yzxm.FieldByName('lb').AsString;
        frm_yzxg.ShowModal;
    finally
        frm_yzxg.Free;
    end;
    refresh_yzxm;
end;

procedure Tfrm_yzlr.sp_cx_yzxmAfterScroll(DataSet: TDataSet);
begin
    b_edit.Enabled := not (sp_cx_yzxm.IsEmpty);
    b_delete.Enabled := not (sp_cx_yzxm.IsEmpty);
//b_enter.Enabled:=not (sp_cx_yzxm.IsEmpty);
    b_stopall.Enabled := not (sp_cx_yzxm.IsEmpty);
    b_group.Enabled := not (sp_cx_yzxm.IsEmpty);
    b_enter_all.Enabled := not (sp_cx_yzxm.IsEmpty);
    if sp_cx_yzxm.FieldByName('tzbz').AsBoolean then
        b_stopall.Caption := '执行(&Z)'
    else
        b_stopall.Caption := '停止(&T)';
end;

procedure Tfrm_yzlr.b_deleteClick(Sender: TObject);
var
    ph, yzidlist: string;
    kssj, yjjssj: Tdatetime;
begin
    if sp_cx_yzxm.RecordCount = 0 then abort;
    if not sp_cx_yzxm.FieldByName('zxbz').AsBoolean and not sp_cx_yzxm.FieldByName('tzbz').AsBoolean then abort;
    if sp_cx_yzxm.FieldByName('zfbz').AsVariant then abort;
    if sp_cx_yzxm.FieldByName('kdys').AsString <> pub_czydm then
    begin
        application.MessageBox('该医嘱非当前操作员录入,不能进行作废操作!', '提示信息', 0 + 48);
        abort;
    end;

    qry_pub.close;
    qry_pub.SQL.Clear;
//取得该医嘱执行批号
    if sp_cx_yzxm.FieldByName('lb').AsString = '药品' then
        qry_pub.SQL.Text := 'select * from zybl_zyyz_list where ph in (select ph from zybl_zyyz_ypmx where xh=:cxxh)'
    else
        qry_pub.SQL.Text := 'select * from zybl_zyyz_list where ph in (select ph from zybl_zyyz_fymx where yzid=:cxxh)';
    qry_pub.Parameters.ParamValues['cxxh'] := sp_cx_yzxm.FieldByName('id').AsInteger;
    qry_pub.Open;

//判断该医嘱所在批号是否执行
    if qry_pub.FieldByName('yzxcs').AsInteger > 0 then
    begin
        MessageBox(0, '该医嘱已经执行记费不能作废!', '提示信息', MB_ICONERROR);
        abort;
    end;
//取得该医嘱执行批号
    ph := qry_pub.FieldByName('ph').AsString;
    kssj := qry_pub.FieldByName('kssj').AsDateTime;
    yjjssj := qry_pub.FieldByName('yjjssj').AsDateTime;
//取得该批号所有医嘱ID
    qry_pub.Close;
    qry_pub.SQL.Clear;
    qry_pub.SQL.Text := 'select xh as id from zybl_zyyz_ypmx where ph=:cxypph union select yzid as id from zybl_zyyz_fymx where ph=:cxfyph';
    qry_pub.Parameters.ParamValues['cxypph'] := ph;
    qry_pub.Parameters.ParamValues['cxfyph'] := ph;
    qry_pub.Open;
    qry_pub.First;
    yzidlist := '';
    while not qry_pub.Eof do
    begin
        if yzidlist = '' then
            yzidlist := qry_pub.FieldByName('id').AsString
        else
            yzidlist := yzidlist + ',' + qry_pub.FieldByName('id').AsString;
        qry_pub.Next;
    end;
// 执行作废操作
    if application.MessageBox(pchar('医嘱作废后不能再使用,是否作废当前医嘱批号:' + ph + #13 + #13 + '开始时间:' + datetimetostr(kssj) + #13 + #13 + '结束时间:' + datetimetostr(yjjssj) + #13 + #13 +
        '所有医嘱记录?'), '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
        abort;


    qry_in_zyyz.Close;
    qry_in_zyyz.SQL.Clear;
    qry_in_zyyz.SQL.Text := 'update zybl_zyyz set zfbz=1,tzbz=1,zfrq=' +
        #39 + trim(DateTimeTostr(frm_func.curr_date)) + #39 +
        ' ,zfry=' + #39 + pub_czydm + #39 +
        ' where id in (' + yzidlist + ')';
//删除药品费用明细
    sp_del_ypfymx.Parameters.ParamValues['@yzid'] := yzidlist;
    sp_del_ypfymx.Parameters.ParamValues['@ph'] := ph;

//记录操作
    qry_czjl.Close;
    qry_czjl.SQL.Clear;
    qry_czjl.SQL.Text := 'insert into zybl_zyyz_czjl values(' + #39 + pub_czydm + #39 + ',' + #39 + pub_czyxm
        + #39 + ',' + #39 + '作废医嘱' + #39 + ',getdate(),' + #39 + '作废医嘱ID:' + yzidlist + #39 + ')';
    dm_data.ado_mydata.BeginTrans;
    try
        qry_in_zyyz.ExecSQL;
        sp_del_ypfymx.ExecProc;
        qry_czjl.ExecSQL;
        dm_data.ado_mydata.CommitTrans;
        refresh_yzxm;
    except
        dm_data.ado_mydata.RollbackTrans;
        application.MessageBox('该医嘱作废操作失败!', '提示信息', 0 + 16);
    end;
end;

procedure Tfrm_yzlr.b_enterClick(Sender: TObject);
begin
    application.CreateForm(Tfrm_yzinput, frm_yzinput);
    try
        frm_yzinput.lszyh := sp_brxx.FieldByName('zyh').AsString;
        frm_yzinput.tmh := sp_brxx.FieldByName('tmh').AsString;
        frm_yzinput.brxm := sp_brxx.FieldByName('brxm').AsString;
        frm_yzinput.yzsx := yzsx;
        frm_yzinput.ShowModal;
    finally
        frm_yzinput.Free;
    end;
    refresh_yzxm;
end;

procedure Tfrm_yzlr.b_stopallClick(Sender: TObject);
var
    ph, str, yzidlist: string;
    kssj, yjjssj: Tdatetime;
begin
    qry_pub.close;
    qry_pub.SQL.Clear;
//取得该医嘱执行批号
    if sp_cx_yzxm.FieldByName('lb').AsString = '药品' then
        qry_pub.SQL.Text := 'select * from zybl_zyyz_list where ph in (select ph from zybl_zyyz_ypmx where xh=:cxxh)'
    else
        qry_pub.SQL.Text := 'select * from zybl_zyyz_list where ph in (select ph from zybl_zyyz_fymx where yzid=:cxxh)';
    qry_pub.Parameters.ParamValues['cxxh'] := sp_cx_yzxm.FieldByName('id').AsInteger;
    qry_pub.Open;
    if qry_pub.RecordCount = 0 then
    begin
        messagebox(0, '系统未找到该医嘱的执行记录不能停止!', '提示信息', MB_ICONERROR);
        abort;
    end;
//判断该医嘱所在批号是否执行
    if qry_pub.FieldByName('yzxcs').AsInteger > 0 then
    begin
        MessageBox(0, '该医嘱已经执行记费不能停止!', '提示信息', MB_ICONERROR);
        abort;
    end;
//取得该医嘱执行批号
    ph := qry_pub.FieldByName('ph').AsString;
    kssj := qry_pub.FieldByName('kssj').AsDateTime;
    yjjssj := qry_pub.FieldByName('yjjssj').AsDateTime;
//取得该批号所有医嘱ID
    qry_pub.Close;
    qry_pub.SQL.Clear;
    qry_pub.SQL.Text := 'select xh as id from zybl_zyyz_ypmx where ph=:cxypph union select yzid as id from zybl_zyyz_fymx where ph=:cxfyph';
    qry_pub.Parameters.ParamValues['cxypph'] := ph;
    qry_pub.Parameters.ParamValues['cxfyph'] := ph;
    qry_pub.Open;
    qry_pub.First;
    yzidlist := '';
    while not qry_pub.Eof do
    begin
        if yzidlist = '' then
            yzidlist := qry_pub.FieldByName('id').AsString
        else
            yzidlist := yzidlist + ',' + qry_pub.FieldByName('id').AsString;
        qry_pub.Next;
    end;
// 执行停止操作
    if b_stopall.Caption = '停止(&T)' then
    begin
        if application.MessageBox(pchar('是否停止使用当前医嘱批号:' + ph + #13 + #13 + '开始时间:' + datetimetostr(kssj) + #13 + #13 + '结束时间:' + datetimetostr(yjjssj) + #13 + #13 +
            '所有医嘱记录?'), '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
            abort;
        //更新医嘱主表
        qry_in_zyyz.Close;
        qry_in_zyyz.SQL.Clear;
        qry_in_zyyz.SQL.Text := 'update zybl_zyyz set zxbz=0,tzbz=1 , tzrq=' +
            #39 + trim(DateTimeTostr(frm_func.curr_date)) + #39 +
            ' ,tzry=' + #39 + pub_czydm + #39 +
            ' where zxbz=1 and id in (' + yzidlist + ')';

        //记录操作
        qry_pub.Close;
        qry_pub.SQL.Clear;
        qry_pub.SQL.Text := 'insert into zybl_zyyz_czjl values(' + #39 + pub_czydm + #39 + ',' + #39 + pub_czyxm
            + #39 + ',' + #39 + '停止医嘱' + #39 + ',getdate(),' + #39 + '停止医嘱ID:' + yzidlist + #39 + ')';
        dm_data.ado_mydata.BeginTrans;
        try
            qry_in_zyyz.ExecSQL;
            qry_pub.ExecSQL;
            dm_data.ado_mydata.CommitTrans;
            refresh_yzxm;
        except
            dm_data.ado_mydata.RollbackTrans;
            application.MessageBox('停止当前医生全部失败!', '提示信息', 0 + 16);
        end;
    end
    else
    begin
        if application.MessageBox(pchar('是否执行当前医嘱批号:' + ph + #13 + #13 + '开始时间:' + datetimetostr(kssj) + #13 + #13 + '结束时间:' + datetimetostr(yjjssj) + #13 + #13 +
            '所有医嘱记录?'), '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
            abort;
        //更新医嘱主表
        qry_in_zyyz.Close;
        qry_in_zyyz.SQL.Clear;
        qry_in_zyyz.SQL.Text := 'update zybl_zyyz set zxbz=1,tzbz=0 , zxrq=' +
            #39 + trim(DateTimeTostr(frm_func.curr_date)) + #39 +
            ' ,tzry=' + #39 + pub_czydm + #39 +
            ' where tzbz=1 and id in (' + yzidlist + ')';

        //记录操作
        qry_pub.Close;
        qry_pub.SQL.Clear;
        qry_pub.SQL.Text := 'insert into zybl_zyyz_czjl values(' + #39 + pub_czydm + #39 + ',' + #39 + pub_czyxm
            + #39 + ',' + #39 + '执行医嘱' + #39 + ',getdate(),' + #39 + '执行医嘱ID:' + yzidlist + #39 + ')';
        dm_data.ado_mydata.BeginTrans;
        try
            qry_in_zyyz.ExecSQL;
            qry_pub.ExecSQL;
            dm_data.ado_mydata.CommitTrans;
            refresh_yzxm;
        except
            dm_data.ado_mydata.RollbackTrans;
            application.MessageBox('停止当前医生全部失败!', '提示信息', 0 + 16);
        end;
    end;
end;

procedure Tfrm_yzlr.ds_brxxDataChange(Sender: TObject; Field: TField);
begin
    if ds_brxx.DataSet.IsEmpty then
        abort;
    sp_jbxx.Active := false;
    sp_jbxx.Parameters.ParamByName('@zyh').Value := sp_brxx.FieldByName('zyh').AsString;
    sp_jbxx.Open;
    refresh_yzxm;
end;

procedure Tfrm_yzlr.cxGridDBTableView1CustomDrawCell(
    Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
    AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
    if AViewInfo.RecordViewInfo.GridRecord.Values[12] then

   //ACanvas.Brush.Color:=clred;
   //255.245.104 yellow
   //242.101.34 red
   //0.200.80  green
        ACanvas.Brush.Color := rgb(242, 101, 34)
    else if AViewInfo.RecordViewInfo.GridRecord.Values[13] then
        ACanvas.Brush.Color := rgb(255, 245, 104)
    else if AViewInfo.RecordViewInfo.GridRecord.Values[14] then
        ACanvas.Brush.Color := rgb(0, 200, 80);
end;

procedure Tfrm_yzlr.b_enter_allClick(Sender: TObject);
begin
    application.CreateForm(Tfrm_tjyz, frm_tjyz);
    try
        frm_tjyz.tmh := sp_jbxx.FieldByName('tmh').AsString;
        frm_tjyz.zyh := sp_jbxx.FieldByName('zyh').AsString;
        frm_tjyz.ShowModal;
    finally
        frm_tjyz.free;
    end;
    refresh_yzxm;
end;

procedure Tfrm_yzlr.b_groupClick(Sender: TObject);
begin
    application.CreateForm(Tfrm_yzfz, frm_yzfz);
    try
        frm_yzfz.zyh := sp_brxx.FieldByName('zyh').AsString;
        frm_yzfz.tmh := sp_brxx.FieldByName('tmh').AsString;
        frm_yzfz.yzph := '';
        frm_yzfz.ShowModal;
    finally
        frm_yzfz.free;
    end;
    refresh_yzxm;
end;

procedure Tfrm_yzlr.cxGridDBTableView3CustomDrawCell(
    Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
    AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
    if AViewInfo.RecordViewInfo.GridRecord.Values[12] then
        ACanvas.Brush.Color := rgb(242, 101, 34)
    else if AViewInfo.RecordViewInfo.GridRecord.Values[13] then
        ACanvas.Brush.Color := rgb(255, 245, 104)
    else if AViewInfo.RecordViewInfo.GridRecord.Values[14] then
        ACanvas.Brush.Color := rgb(0, 200, 80);
end;

procedure Tfrm_yzlr.cxGridDBTableView2CustomDrawCell(
    Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
    AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
    if AViewInfo.RecordViewInfo.GridRecord.Values[12] then

   //ACanvas.Brush.Color:=clred;
   //255.245.104 yellow
   //242.101.34 red
   //0.200.80  green
        ACanvas.Brush.Color := rgb(242, 101, 34)
    else if AViewInfo.RecordViewInfo.GridRecord.Values[13] then
        ACanvas.Brush.Color := rgb(255, 245, 104)
    else if AViewInfo.RecordViewInfo.GridRecord.Values[14] then
        ACanvas.Brush.Color := rgb(0, 200, 80);
end;

procedure Tfrm_yzlr.CheckBox1Click(Sender: TObject);
begin
    if checkbox1.Checked and checkbox2.Checked then
    begin
        sp_cx_yzxm.Filtered := false
    end
    else begin
        if (not checkbox1.Checked) and (not checkbox2.Checked) then
        begin
            sp_cx_yzxm.Filtered := false;
            sp_cx_yzxm.Filter := 'zfbz=0 and tzbz=0';
            sp_cx_yzxm.Filtered := true;
        end;
        if (checkbox1.Checked) and (not checkbox2.Checked) then
        begin
            sp_cx_yzxm.Filtered := false;
            sp_cx_yzxm.Filter := 'tzbz=0';
            sp_cx_yzxm.Filtered := true;
        end;
        if (not checkbox1.Checked) and (checkbox2.Checked) then
        begin
            sp_cx_yzxm.Filtered := false;
            sp_cx_yzxm.Filter := 'zfbz=0';
            sp_cx_yzxm.Filtered := true;
        end;
    end;
end;

procedure Tfrm_yzlr.CheckBox2Click(Sender: TObject);
begin
    if checkbox1.Checked and checkbox2.Checked then
    begin
        sp_cx_yzxm.Filtered := false
    end
    else begin
        if (not checkbox1.Checked) and (not checkbox2.Checked) then
        begin
            sp_cx_yzxm.Filtered := false;
            sp_cx_yzxm.Filter := 'zfbz=0 and tzbz=0';
            sp_cx_yzxm.Filtered := true;
        end;
        if (checkbox1.Checked) and (not checkbox2.Checked) then
        begin
            sp_cx_yzxm.Filtered := false;
            sp_cx_yzxm.Filter := 'tzbz=0';
            sp_cx_yzxm.Filtered := true;
        end;
        if (not checkbox1.Checked) and (checkbox2.Checked) then
        begin
            sp_cx_yzxm.Filtered := false;
            sp_cx_yzxm.Filter := 'zfbz=0';
            sp_cx_yzxm.Filtered := true;
        end;
    end;
end;

procedure Tfrm_yzlr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if pub_dzblkh <> '' then
        application.Terminate;
end;

end.
