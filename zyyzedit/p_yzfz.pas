unit p_yzfz;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
    cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
    cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
    ExtCtrls, ADODB, StdCtrls, Buttons, Mask, DBCtrlsEh, DBCtrls;

type
    Tfrm_yzfz = class(TForm)
        Panel5: TPanel;
        qry_ypyz: TADOQuery;
        ds_ypyz: TDataSource;
        ds_fzyz: TDataSource;
        qry_fzyz: TADOQuery;
        qry_pub: TADOQuery;
        cmd_pub: TADOCommand;
        qry_yzph: TADOQuery;
        GroupBox1: TGroupBox;
        cxGrid1: TcxGrid;
        cxGridDBTableView1: TcxGridDBTableView;
        cxGridLevel1: TcxGridLevel;
        ds_yzph: TDataSource;
        cxGridDBTableView1ph: TcxGridDBColumn;
        cxGridDBTableView1yzzs: TcxGridDBColumn;
        cxGridDBTableView1kssj: TcxGridDBColumn;
        cxGridDBTableView1yjjssj: TcxGridDBColumn;
        cxGridDBTableView1jssj: TcxGridDBColumn;
        cxGridDBTableView1zxry: TcxGridDBColumn;
        cxGridDBTableView1zxcs: TcxGridDBColumn;
        cxGridDBTableView1yzxcs: TcxGridDBColumn;
        cxGridDBTableView1zxsjd: TcxGridDBColumn;
        cxGridDBTableView1fzsm: TcxGridDBColumn;
        cxGridDBTableView1ypzxcs: TcxGridDBColumn;
        cxGridDBTableView1fyzxcs: TcxGridDBColumn;
        cxGridDBTableView1yzlist: TcxGridDBColumn;
        cxGridDBTableView1zyh: TcxGridDBColumn;
        cxGridDBTableView1yzsx: TcxGridDBColumn;
        ds_now: TDataSource;
        qry_now: TADOQuery;
        sp_qxtj: TADOStoredProc;
        Panel2: TPanel;
        GroupBox3: TGroupBox;
        cxGrid3: TcxGrid;
        cxGridDBTableView3: TcxGridDBTableView;
        cxGridDBColumn24: TcxGridDBColumn;
        cxGridDBColumn25: TcxGridDBColumn;
        cxGridDBColumn26: TcxGridDBColumn;
        cxGridDBColumn27: TcxGridDBColumn;
        cxGridDBColumn31: TcxGridDBColumn;
        cxGridDBColumn32: TcxGridDBColumn;
        cxGridDBColumn28: TcxGridDBColumn;
        cxGridDBColumn29: TcxGridDBColumn;
        cxGridDBColumn30: TcxGridDBColumn;
        cxGridDBColumn33: TcxGridDBColumn;
        cxGridDBColumn34: TcxGridDBColumn;
        cxGridDBColumn35: TcxGridDBColumn;
        cxGridLevel3: TcxGridLevel;
        Panel1: TPanel;
        Label2: TLabel;
        Label3: TLabel;
        b_enter: TBitBtn;
        Edit1: TEdit;
        BitBtn2: TBitBtn;
        b_cancel: TBitBtn;
        bt_fzsm: TBitBtn;
        b_tc: TBitBtn;
        ComboBox1: TComboBox;
        GroupBox2: TGroupBox;
        cxGrid2: TcxGrid;
        cxGridDBTableView2: TcxGridDBTableView;
        cxGridDBColumn1: TcxGridDBColumn;
        cxGridDBColumn2: TcxGridDBColumn;
        cxGridDBColumn3: TcxGridDBColumn;
        cxGridDBColumn5: TcxGridDBColumn;
        cxGridDBColumn4: TcxGridDBColumn;
        cxGridDBColumn6: TcxGridDBColumn;
        cxGridDBColumn7: TcxGridDBColumn;
        cxGridDBColumn8: TcxGridDBColumn;
        cxGridDBColumn9: TcxGridDBColumn;
        cxGridDBColumn10: TcxGridDBColumn;
        cxGridDBColumn11: TcxGridDBColumn;
        cxGridDBColumn12: TcxGridDBColumn;
        cxGridLevel2: TcxGridLevel;
        GroupBox4: TGroupBox;
        cxGrid4: TcxGrid;
        cxGridDBTableView4: TcxGridDBTableView;
        cxGridDBColumn37: TcxGridDBColumn;
        cxGridDBColumn38: TcxGridDBColumn;
        cxGridDBColumn39: TcxGridDBColumn;
        cxGridDBColumn40: TcxGridDBColumn;
        cxGridDBColumn44: TcxGridDBColumn;
        cxGridDBColumn45: TcxGridDBColumn;
        cxGridDBColumn41: TcxGridDBColumn;
        cxGridDBColumn42: TcxGridDBColumn;
        cxGridDBColumn43: TcxGridDBColumn;
        cxGridDBColumn46: TcxGridDBColumn;
        cxGridDBColumn47: TcxGridDBColumn;
        cxGridDBColumn48: TcxGridDBColumn;
        cxGridLevel4: TcxGridLevel;
        cxGridDBTableView1Column1: TcxGridDBColumn;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    cxGridDBTableView1Column2: TcxGridDBColumn;
        procedure Button1Click(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure cxGridDBTableView3DblClick(Sender: TObject);
        procedure ds_yzphDataChange(Sender: TObject; Field: TField);
        procedure qry_ypyzAfterScroll(DataSet: TDataSet);
        procedure cxGridDBTableView4DblClick(Sender: TObject);
        procedure cxGridDBTableView2KeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure cxGridDBTableView2DblClick(Sender: TObject);
        procedure bt_fzsmClick(Sender: TObject);
        procedure b_cancelClick(Sender: TObject);
        procedure BitBtn2Click(Sender: TObject);
        procedure b_enterClick(Sender: TObject);
        procedure b_tcClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure refresh_ypyz(ph: string);
        procedure refresh_now(ph: string; fzhm: integer);
        procedure refresh_fzyz(ph: string);
        procedure newyzfzbh;
        procedure delete_fzyz(key: word);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    private
    { Private declarations }
    public
        yzfzbm: integer; //个人最大医嘱编号
        curr_yzfzbm: integer; //当前选择医嘱编号
        tmh, zyh, yzsx, yzph: string;
        fzsl, wfsl: double;
    { Public declarations }
    end;

var
    frm_yzfz: Tfrm_yzfz;
implementation
uses p_dm, p_fzsm;
{$R *.dfm}

procedure Tfrm_yzfz.delete_fzyz(key: word);
begin
    if (key = vk_delete) and (qry_fzyz.RecordCount > 0) then
    begin
        if application.MessageBox('是否删除该医嘱分组?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idok then
        begin
            qry_pub.Close;
            qry_pub.SQL.Clear;
            qry_pub.SQL.Text := 'delete from zybl_zyyz_syfz where id=:cxid and fzhm=:fzhm';
            qry_pub.Parameters.ParamValues['cxid'] := qry_fzyz.FieldByName('fzid').AsInteger;
            qry_pub.Parameters.ParamValues['fzhm'] := qry_fzyz.FieldByName('fzhm').AsInteger;
            dm_data.ado_mydata.BeginTrans;
            try
                qry_pub.ExecSQL;
                dm_data.ado_mydata.CommitTrans;
                refresh_now(yzph, curr_yzfzbm);
                refresh_fzyz(yzph);
      //cxgriddbtableview4.DataController.Groups.FullExpand;
            except
                dm_data.ado_mydata.RollbackTrans;
                application.MessageBox('数据删除失败!', '提示信息', 0 + 16);
            end;
        end;
    end;
end;

procedure Tfrm_yzfz.newyzfzbh; //取得新的分组ID号
begin
//
    yzfzbm := 0;
    qry_pub.Close;
    qry_pub.SQL.Clear;
    qry_pub.SQL.Text := 'select isnull(max(fzhm),0)+1 as yzfzbm from zybl_zyyz_syfz where zyh=:cxzyh';
    qry_pub.Parameters.ParamValues['cxzyh'] := zyh;
    qry_pub.Open;
    yzfzbm := qry_pub.FieldByName('yzfzbm').AsInteger;
end;

procedure Tfrm_yzfz.refresh_now(ph: string; fzhm: integer);
var
    ls_sql: string;
begin
    ls_sql := 'select a.*,b.id as fzid,b.fzsl,b.fzhm,b.yzxh,b.yldw from zybl_zyyz a ,' +
        'zybl_zyyz_syfz b where a.id=b.yzxh and a.ph = ' + #39 + ph + #39 + ' and fzhm = ' + #39 + inttostr(fzhm) + #39;

    qry_now.Close;
    qry_now.SQL.Clear;
    qry_now.SQL.Text := ls_sql;
    qry_now.Open;
    cxGridDBTableView2.DataController.Groups.FullExpand;
end;

procedure Tfrm_yzfz.refresh_fzyz(ph: string);
var
    ls_sql: string;
begin
    ls_sql := 'select a.*,b.id as fzid,b.fzsl,b.fzhm,b.yzxh,b.yldw from zybl_zyyz a ,' +
        'zybl_zyyz_syfz b where a.id=b.yzxh and a.ph = ' + #39 + ph + #39;
    qry_fzyz.Close;
    qry_fzyz.SQL.Clear;
    qry_fzyz.SQL.Text := ls_sql;
    qry_fzyz.Open;
    cxGridDBTableView4.DataController.Groups.FullExpand;
end;

procedure Tfrm_yzfz.refresh_ypyz(ph: string);
begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'select * from zybl_zyyz where ph = ' + #39 + qry_yzph.FieldByName('ph').AsString + #39;
    qry_ypyz.SQL.Add(' and (yytj = ' + #39 + '肌注' + #39);
    qry_ypyz.SQL.Add(' or yytj = ' + #39 + '静滴' + #39);
    qry_ypyz.SQL.Add(' or yytj = ' + #39 + '静注' + #39);
    qry_ypyz.SQL.Add(' or yytj = ' + #39 + '穴注' + #39 + ')');
    qry_ypyz.Open;
    cxgriddbtableview3.DataController.Groups.FullExpand;
end;

procedure Tfrm_yzfz.FormShow(Sender: TObject);
begin
    qry_yzph.Close;
    qry_yzph.SQL.Clear;
    qry_yzph.SQL.Text := 'select case convert(char(8),zhzxsj,112)'+
         ' when convert(char(8),getdate(),112) '+
         ' then convert(varchar(4),isnull(drzxcs,0)) else 0 end drzxcs1, '+
         ' * from zybl_zyyz_list where zyh=' + quotedstr(zyh);
    qry_yzph.SQL.Add(' and ph in (select distinct ph from zybl_zyyz where ');
    qry_yzph.SQL.Add(' yytj = ' + #39 + '肌注' + #39);
    qry_yzph.SQL.Add(' or yytj = ' + #39 + '静滴' + #39);
    qry_yzph.SQL.Add(' or yytj = ' + #39 + '静注' + #39);
    qry_yzph.SQL.Add(' or yytj = ' + #39 + '穴注' + #39 + ')');
    qry_yzph.Open;
end;

procedure Tfrm_yzfz.b_tcClick(Sender: TObject);
begin
    close;
end;

procedure Tfrm_yzfz.b_enterClick(Sender: TObject);
var
    sl: integer;
begin
    if curr_yzfzbm <= 0 then
    begin
        application.MessageBox('医嘱分组编号必需大于零!', '提示信息', 48);
        abort;
    end;
    //---------------------calmhawk----分组数量提示--------------------
    qry_pub.Close;
    qry_pub.SQL.Text := 'select isnull(sum(convert(int,fzsl)),0) sl from zybl_zyyz_syfz where ph = ' + #39 + yzph + #39 + ' and xmdm = ' +
        #39 + qry_ypyz.FieldByName('xmdm').AsString + #39;
    qry_pub.Open;
    sl := qry_pub.FieldByName('sl').AsInteger + strtoint(Edit1.Text);
    if sl > qry_ypyz.FieldByName('sl').AsInteger then
    begin
        if application.MessageBox( '医嘱分组数量大于总数量，是否继续?','询问', mb_yesno + mb_iconinformation) = IDNO then
        begin
            abort;
        end;
    end;

//写入分组记录
    cmd_pub.CommandText := 'insert zybl_zyyz_syfz(yzxh,fzhm,tmh,zyh,xmdm,fzsl,ph,yldw) values(' + inttostr(qry_ypyz.FieldByName('id').AsInteger) +
        ',' + inttostr(curr_yzfzbm) + ',' + #39 + tmh + #39 + ',' + #39 + zyh + #39 + ',' + #39 + qry_ypyz.FieldByName('xmdm').AsString +
        #39 + ',' + #39 + trim(edit1.Text) + #39 + ',' + #39 + yzph + #39 + ',' + #39 + trim(ComboBox1.Text) + #39 + ')';
    dm_data.ado_mydata.BeginTrans;
    try
        cmd_pub.Execute;
        dm_data.ado_mydata.CommitTrans;
        refresh_fzyz(yzph);
        refresh_now(yzph, curr_yzfzbm);
        if not qry_ypyz.Eof then
            qry_ypyz.Next
        else
            qry_ypyz.First;
        cxgrid3.SetFocus;
    except
        dm_data.ado_mydata.RollbackTrans;
        application.MessageBox('数据保存时出错!', '成就提示', 0 + 16);
    end;
end;

procedure Tfrm_yzfz.BitBtn2Click(Sender: TObject);
begin
    if application.MessageBox('是否要添加新的分组?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idok then
    begin
        newyzfzbh;
        curr_yzfzbm := yzfzbm;
        refresh_now(yzph, curr_yzfzbm);
        groupbox2.Caption := '当前医嘱分组编码:' + inttostr(curr_yzfzbm);
        b_enter.Enabled := true;
    end;
end;

procedure Tfrm_yzfz.b_cancelClick(Sender: TObject);
var
    ls_str: string;
begin
    ls_str := '是否删除当前医嘱分组号' + inttostr(curr_yzfzbm) + '的所有分组记录?';
    if application.MessageBox(pchar(ls_str), '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idok then
    begin

        qry_pub.Close;
        qry_pub.SQL.Clear;
        qry_pub.SQL.Text := 'delete from zybl_zyyz_syfz where fzhm=:cxfzhm and ph =:ph';
        qry_pub.Parameters.ParamValues['cxfzhm'] := curr_yzfzbm;
        qry_pub.Parameters.ParamValues['ph'] := qry_yzph.fieldbyname('ph').asstring;
        dm_data.ado_mydata.BeginTrans;
        try
            qry_pub.ExecSQL;
            dm_data.ado_mydata.CommitTrans;
            qry_yzph.Close;
            qry_yzph.Open;
            qry_fzyz.Close;
            qry_fzyz.Open;
            qry_now.Close;
            qry_now.Open;
            cxGridDBTableView2.DataController.Groups.FullExpand;
            cxGridDBTableView4.DataController.Groups.FullExpand;
        except
            dm_data.ado_mydata.RollbackTrans;
            application.MessageBox('数据删除失败!', '提示信息', 0 + 16);
        end;
    end;
end;

procedure Tfrm_yzfz.bt_fzsmClick(Sender: TObject);
begin
    if qry_fzyz.RecordCount = 0 then
    begin
        application.MessageBox('该医嘱分组无分组记录,不能录入分组说明!', '提示信息', 48);
        abort;
    end;
    application.CreateForm(Tfrm_fzsm, frm_fzsm);
    try
        frm_fzsm.yzph := yzph;
        frm_fzsm.fzhm := curr_yzfzbm;
        frm_fzsm.ShowModal;
    finally
        frm_fzsm.Free;
    end;
end;

procedure Tfrm_yzfz.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
        if strtoint(AViewInfo.RecordViewInfo.GridRecord.Values[16]) > 0 then
        ACanvas.Brush.Color := $00808040;
end;

procedure Tfrm_yzfz.cxGridDBTableView2DblClick(Sender: TObject);
begin
    delete_fzyz(vk_delete);
end;

procedure Tfrm_yzfz.cxGridDBTableView2KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    delete_fzyz(key);
end;

procedure Tfrm_yzfz.cxGridDBTableView4DblClick(Sender: TObject);
begin
    curr_yzfzbm := qry_fzyz.FieldByName('fzhm').AsInteger;
    refresh_now(yzph, curr_yzfzbm);
    groupbox2.Caption := '当前医嘱分组编码:' + inttostr(curr_yzfzbm);
end;

procedure Tfrm_yzfz.qry_ypyzAfterScroll(DataSet: TDataSet);
begin
    edit1.Text := qry_ypyz.FieldByName('ypyl').AsString;
    ComboBox1.Text := qry_ypyz.FieldByName('yldw').AsString;
    qry_pub.Close;
    qry_pub.SQL.Clear;
    qry_pub.SQL.Text := 'select count(*) zs from zybl_zyyz_syfz where ph=' + #39 + yzph + #39 + ' and xmdm=' + #39 + qry_ypyz.FieldByName('xmdm').AsString + #39 + ' and fzhm=' + inttostr(curr_yzfzbm);
    qry_pub.Open;
    if qry_pub.FieldByName('zs').AsInteger > 0 then
        b_enter.Enabled := false
    else
    begin
        b_enter.Enabled := true;
        b_enter.SetFocus;
    end;
end;

procedure Tfrm_yzfz.ds_yzphDataChange(Sender: TObject; Field: TField);
begin
    yzph := trim(qry_yzph.FieldByName('ph').AsString);
    curr_yzfzbm := 0;
    newyzfzbh;
    curr_yzfzbm := yzfzbm - 1;

    refresh_ypyz(yzph);
    refresh_now(yzph, curr_yzfzbm);
    refresh_fzyz(yzph);
    groupbox2.Caption := '当前医嘱分组编码:' + inttostr(curr_yzfzbm - 1);
    if (curr_yzfzbm - 1) < 0 then
    begin
        groupbox2.Caption := '当前医嘱分组编码:1';
    end;
end;

procedure Tfrm_yzfz.cxGridDBTableView3DblClick(Sender: TObject);
begin
    if b_enter.Enabled then
        b_enter.Click;
end;

procedure Tfrm_yzfz.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = 27 then
    begin
        close;
    end;
end;

procedure Tfrm_yzfz.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activecontrol, true, true);
end;

procedure Tfrm_yzfz.Button1Click(Sender: TObject);
var
    str: string;
begin
    str := '是否取消医嘱批号' + #39 + yzph + #39 + '的提交记录?';
    if application.MessageBox(pchar(str), '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idok then
    begin
        sp_qxtj.Close;
        sp_qxtj.Parameters.ParamValues['@ph'] := yzph;
        sp_qxtj.ExecProc;
        case sp_qxtj.Parameters.ParamByName('@sczt').Value of
            1: application.MessageBox('取消提交执行成功!', '提示信息', 0 + 48);
            2: application.MessageBox('该批号医嘱已记费,不能取消提交!', '提示信息', 0 + 16);
        else
            application.MessageBox('删除记录时出错,不能取消提交!', '提示信息', 0 + 16);
        end;
        qry_yzph.Close;
        qry_yzph.Open;
    end;
end;

end.

