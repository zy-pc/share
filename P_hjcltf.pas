unit P_hjcltf;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Buttons, Grids, DBGridEh, DB, ExtCtrls, ADODB, StrUtils,
    DBCtrls, ComCtrls, DBGrids, GridsEh;
type
    PTArrayOfStr = ^TArrayOfStr;
    TArrayOfStr = array of string;
type
    Tfrm_hjcl_tf = class(TForm)
        Panel1: TPanel;
        Panel2: TPanel;
        GroupBox2: TGroupBox;
        ds_zb: TDataSource;
        ds_mx: TDataSource;
        DBGridEh2: TDBGridEh;
        Edt_bh: TEdit;
        BBtn_qb: TBitBtn;
        BBtn_txzx: TBitBtn;
        BBtn_exit: TBitBtn;
        GroupBox1: TGroupBox;
        DBGridEh1: TDBGridEh;
        qry_zb: TADOQuery;
        qry_mx: TADOQuery;
        qry_zydj: TADOQuery;
        Label1: TLabel;
        sp_save: TADOStoredProc;
        Panel3: TPanel;
        Splitter1: TSplitter;
        Label2: TLabel;
        ds_zydj: TDataSource;
        Label3: TLabel;
        Label4: TLabel;
        Label5: TLabel;
        Label6: TLabel;
        Label8: TLabel;
        Label9: TLabel;
        Label10: TLabel;
        DBText1: TDBText;
        DBText2: TDBText;
        DBText3: TDBText;
        DBText4: TDBText;
        DBText5: TDBText;
        DBText7: TDBText;
        DBText8: TDBText;
        DBText9: TDBText;
        Label11: TLabel;
        DateTimePicker1: TDateTimePicker;
        BBtn_cx: TBitBtn;
        DBText6: TDBText;
        Label7: TLabel;
        DBGrid1: TDBGrid;
        qry_ypdm: TADOQuery;
        qry_mxcfbh: TStringField;
        qry_mxxh: TIntegerField;
        qry_mxypdm: TStringField;
        qry_mxypdwid: TIntegerField;
        qry_mxypdw: TStringField;
        qry_mxypbzbl: TIntegerField;
        qry_mxypsl: TBCDField;
        qry_mxypdj: TBCDField;
        qry_mxkccgj: TBCDField;
        qry_mxyplb: TStringField;
        qry_mxypmc: TStringField;
        qry_mxsbfybl: TFloatField;
        qry_mxhtfybl: TFloatField;
        qry_mxbxfybl: TFloatField;
        qry_check_cybz: TADOQuery;
        qry_mxzje: TBCDField;
        qry_mxcgje: TBCDField;
        procedure Edt_bhChange(Sender: TObject);
        procedure BBtn_exitClick(Sender: TObject);
        procedure BBtn_txzxClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure DBGrid1Exit(Sender: TObject);
        procedure DBGrid1DblClick(Sender: TObject);
        procedure Edt_bhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure BBtn_cxClick(Sender: TObject);
        procedure BBtn_qbClick(Sender: TObject);
    private
        { Private declarations }
        procedure Proc_selectBR; //选择病人;
        procedure Proc_selectzje(var cfzje, zfzje, cgzje: Real); //统计选择项总金额
        function Func_Brzt(zyh: string): Boolean; //查询病人出院状态,True: 出院；False：在院
        function Func_CheckZT: Boolean; //检查是否能退材料费
        function Func_Selected(aGrid: TDBGridEH; FieldName: string): PTArrayOfStr; //返回表格选择行指定关键字段内容集
        function Func_save(cfbh, ksdm, fyczy, sjbh, xh_list: string; cfzje, zfzje, cgzje: Real): string;
    public
        { Public declarations }
    end;

var
    frm_hjcl_tf: Tfrm_hjcl_tf;

implementation

uses p_dm, p_func;

{$R *.dfm}

function Tfrm_hjcl_tf.Func_Selected(aGrid: TDBGridEH; FieldName: string): PTArrayOfStr;
var
    I: Integer;
    PArrayOfStr: PTArrayOfStr;
begin
    with aGrid.DataSource.DataSet do
    begin
        if aGrid.SelectedRows.Count > 0 then
        begin
            New(PArrayOfStr);
            System.SetLength(PArrayOfStr^, aGrid.SelectedRows.Count);

            for I := Low(PArrayOfStr^) to High(PArrayOfStr^) do
            begin
                GotoBookmark(Pointer(aGrid.SelectedRows.Items[i]));
                PArrayOfStr^[i] := FindField(FieldName).AsString;
            end;
            Result := PArrayOfStr;
        end
        else
            Result := nil;
    end;
end;

function Tfrm_hjcl_tf.Func_save(cfbh, ksdm, fyczy, sjbh, xh_list: string; cfzje, zfzje, cgzje: Real): string;
begin
    with sp_save do
    begin
        ParaMeters.ParamByName('@cfbh').Value := cfbh;
        ParaMeters.ParamByName('@ksdm').Value := ksdm;
        ParaMeters.ParamByName('@fyczy').Value := fyczy;
        ParaMeters.ParamByName('@sjbh').Value := sjbh;
        ParaMeters.ParamByName('@cfzje').Value := cfzje;
        ParaMeters.ParamByName('@zfzje').Value := zfzje;
        ParaMeters.ParamByName('@cgzje').Value := cgzje;
        ParaMeters.ParamByName('@xh_list').Value := xh_list;
        ParaMeters.ParamByName('@sc_cg').Value := '0';
        ExecProc;
        Result := ParaMeters.ParamByName('@sc_cg').Value;
    end;
end;

procedure Tfrm_hjcl_tf.Proc_selectBR;
begin
    edt_bh.Text := qry_zydj.FieldByName('tmh').AsString;
    DateTimePicker1.SetFocus;
end;

procedure Tfrm_hjcl_tf.Proc_selectzje(var cfzje, zfzje, cgzje: Real);
var
    i: Integer;
begin
    with qry_mx do
    begin
        if DBGridEh2.SelectedRows.Count > 0 then
        begin
            for I := 0 to DBGridEh2.SelectedRows.Count - 1 do
            begin
                GotoBookmark(Pointer(DBGridEh2.SelectedRows.Items[i]));
                cfzje := cfzje + qry_mx.FieldByName('zje').AsFloat;
                if (qry_zydj.Fieldbyname('zfzdmc').AsString = '') or qry_zydj.Fieldbyname('zfzdmc').IsNull then
                    zfzje := zfzje + FieldByName('zje').AsFloat
                else
                    zfzje := zfzje + FieldByName('zje').AsFloat *
                        Fieldbyname(Trim(qry_zydj.Fieldbyname('zfzdmc').AsString)).AsFloat / 100;
                cgzje := cgzje + Fieldbyname('cgje').asfloat;
            end;
        end
    end;
end;

function Tfrm_hjcl_tf.Func_Brzt(zyh: string): Boolean;
begin
    with qry_check_cybz do
    begin
        close;
        Parameters.ParamByName('zyh').value := zyh;
        open;
        Result := FieldByName('cybz').AsBoolean;
    end;
end;

function Tfrm_hjcl_tf.Func_CheckZT: Boolean;
begin
    Result := False;
    if frm_func.Func_CheckPDZT(pub_ksdm) then //盘点状态
    begin
        application.MessageBox('系统正在进行盘点，不能发药!', '注意', 16);
        exit;
    end;

    if Func_Brzt(qry_zb.FieldByName('zyh').AsString) then //查询病人是否在院
    begin
        application.MessageBox('错误提示:该病人已办出院,不能退操作!', '错误提示', 16);
        exit;
    end;
    Result := True;
end;

procedure Tfrm_hjcl_tf.BBtn_qbClick(Sender: TObject);
var
    cfbh, v_ErrorStr: string;
    cfzje, zfzje, cgzje: Real;
begin
    if not qry_zb.Active then exit;
    if qry_zb.IsEmpty then exit;

    with qry_zb do
    begin
        cfbh := FieldByName('cfbh').AsString;
        cfzje := FieldByName('cfzje').asfloat;
        zfzje := FieldByName('zfzje').asfloat;
        cgzje := FieldByName('cgzje').asfloat;
    end;
    if application.MessageBox(Pchar('退费提示:是否退' + #13 + '条码号:' + qry_zb.FieldByName('tmh').AsString + #13
        + '编号: ' + cfbh + #13 + '金额: ' + Format('%3.2f', [cfzje])),
        '退费提示', MB_YESNO + MB_ICONQUESTION) = ID_YES then
    begin
        BBtn_qb.Enabled := False;
        if Func_CheckZT then //当前病区状态或病人状态允许退材料
        begin
            v_ErrorStr := Func_save(cfbh, pub_ksdm, pub_czydm, string(get_sjh(pub_czydm)), '', cfzje, zfzje, cgzje); //保存
            if v_ErrorStr <> '' then
                application.MessageBox(Pchar('保存错误:数据保存失败!错误原因:' + v_ErrorStr), '保存错误', 16)
            else
            begin
                application.MessageBox('保存提示:数据保存成功,已成功退材料!', '保存提示', MB_ICONINFORMATION);
                qry_zb.Close;
                qry_zb.Open;
            end;
        end;
        BBtn_qb.Enabled := True;
    end;
end;

procedure Tfrm_hjcl_tf.BBtn_cxClick(Sender: TObject);
var
    zyh: string;
begin
    if not qry_zydj.Active then exit;

    if qry_zydj.IsEmpty then
    begin
        application.MessageBox('错误提示:请先选择正确的退费病人!', '错误提示', 16);
        exit;
    end;

    zyh := qry_zydj.FieldByName('zyh').AsString;

    with qry_zb do
    begin
        Close;
        ParaMeters.ParamByName('zyh').Value := zyh;
        ParaMeters.ParamByName('fyrq').Value := DateTimePicker1.DateTime;
        Open;
        if RecordCount <= 0 then //数据集为空退出
        begin
            application.MessageBox('错误提示:没有满足条件的记费材料!', '错误提示', 16);
            exit;
        end;
        qry_mx.Close;
        qry_mx.Open;
    end;
end;

procedure Tfrm_hjcl_tf.Edt_bhKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
    begin
        with qry_zydj do
        begin
            Close;
            Parameters.ParamByName('tmh').Value := '%' + Trim(edt_bh.Text);
            Parameters.ParamByName('brxm').Value := Trim(edt_bh.Text) + '%';
//            Parameters.ParamByName('ksdm').Value := pub_ksdm;
            Open;
            if RecordCount > 1 then
            begin
                DBGrid1.Visible := True;
                DBGrid1.SetFocus;
            end
            else if RecordCount = 1 then
                Proc_selectBR
            else
                application.MessageBox('错误提示:没有检索到满足条件记录!', '错误提示', 16)
        end;
    end;
end;

procedure Tfrm_hjcl_tf.DBGrid1DblClick(Sender: TObject);
begin
    Proc_selectBR;
end;

procedure Tfrm_hjcl_tf.DBGrid1Exit(Sender: TObject);
begin
    DBgrid1.Visible := False;
end;

procedure Tfrm_hjcl_tf.DBGrid1KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
        Proc_selectBR;
end;

procedure Tfrm_hjcl_tf.FormShow(Sender: TObject);
begin
    DBGrid1.Visible := False;
    DateTimePicker1.DateTime := Frm_func.curr_date;
end;

procedure Tfrm_hjcl_tf.BBtn_txzxClick(Sender: TObject);
var
    aPArrayOfStr: PTArrayOfStr;
    cfbh, xh_list, v_ErrorStr: string;
    I: Integer;
    Selected: Boolean;
    cfzje, zfzje, cgzje: Real;
begin
    cfzje := 0;
    zfzje := 0;
    cgzje := 0;
    if not qry_zb.Active then exit;
    if qry_zb.RecordCount <= 0 then exit;

    BBtn_txzx.Enabled := False; //按扭不可用
    cfbh := qry_zb.FieldByName('cfbh').AsString; //要退材料编号
    aPArrayOfStr := Func_Selected(DBGridEh2, 'xh'); //返回选择列表
    if aPArrayOfStr = nil then //没有选择材料
    begin
        application.MessageBox('错误提示:请选择要退材料!', '错误提示', 16);
        Selected := False;
    end
    else //返回列表形成字符串
    begin
        try
            Selected := True;
            for I := Low(aPArrayOfStr^) to High(aPArrayOfStr^) do
            begin
                if I = 0 then
                    xh_list := aPArrayOfStr^[i]
                else
                    xh_list := xh_list + ',' + aPArrayOfStr^[i];
            end;
        finally
            SetLength(aPArrayOfStr^, 0);
            Dispose(aPArrayOfStr);
        end;
    end;
    Proc_selectzje(cfzje, zfzje, cgzje); //返回总金额
    if Selected then //已经选择要退材料
    begin
        if application.MessageBox(Pchar('退费提示:是否退' + #13 + '条码号:' + qry_zb.FieldByName('tmh').AsString + #13
            + '编号: ' + cfbh + '   中选择材料？(Y/N)'),
            '退费提示', MB_YESNO + MB_ICONQUESTION) = ID_YES then
        begin
            if Func_CheckZT then //当前病区状态或病人状态允许退材料
            begin
                v_ErrorStr := Func_save(cfbh, pub_ksdm, pub_czydm, string(get_sjh(pub_czydm)),
                    xh_list, cfzje, zfzje, cgzje); //保存
                if v_ErrorStr <> '' then
                    application.MessageBox(Pchar('保存错误:数据保存失败!错误原因:' + v_ErrorStr), '保存错误', 16)
                else
                begin
                    application.MessageBox('保存提示:数据保存成功,已成功退材料!', '保存提示', MB_ICONINFORMATION);
                    qry_zb.Close;
                    qry_zb.Open;
                end;
            end;
        end;
    end;

    BBtn_txzx.Enabled := true;
end;

procedure Tfrm_hjcl_tf.Edt_bhChange(Sender: TObject);
begin
    qry_zb.Active := False;
    qry_mx.Active := False;
end;

procedure Tfrm_hjcl_tf.BBtn_exitClick(Sender: TObject);
begin
    Close;
end;

end.

