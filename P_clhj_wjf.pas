unit P_clhj_wjf;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGridEh, ExtCtrls, DB,
    ADODB, DBGrids, GridsEh;

type
    Tfrm_clhj_wjf = class(TForm)
        Panel_wjf: TPanel;
        GroupBox1: TGroupBox;
        DBGridEh1: TDBGridEh;
        GroupBox2: TGroupBox;
        DBGridEh2: TDBGridEh;
        Panel1: TPanel;
        Label1: TLabel;
        Label2: TLabel;
        Label3: TLabel;
        Label5: TLabel;
        Label8: TLabel;
        Label18: TLabel;
        Label16: TLabel;
        Label6: TLabel;
        Label7: TLabel;
        Label11: TLabel;
        Label12: TLabel;
        Label15: TLabel;
        Label17: TLabel;
        tmh: TEdit;
        ryzd: TEdit;
        zfy: TEdit;
        DBEdit11: TDBEdit;
        DBEdit9: TDBEdit;
        DBEdit6: TDBEdit;
        Panel2: TPanel;
        B_ENTER: TBitBtn;
        B_FINAL: TBitBtn;
        zdjf: TEdit;
        zfze: TEdit;
        sp_cx_zybrjbqk: TADOStoredProc;
        sp_cx_zybrjbqktmh: TStringField;
        sp_cx_zybrjbqkzyh: TStringField;
        sp_cx_zybrjbqkbrxm: TStringField;
        sp_cx_zybrjbqksbkh: TStringField;
        sp_cx_zybrjbqkcsrq: TDateTimeField;
        sp_cx_zybrjbqkybndzje: TBCDField;
        sp_cx_zybrjbqkbrnl: TBCDField;
        sp_cx_zybrjbqksbdw: TStringField;
        sp_cx_zybrjbqkbrzy: TStringField;
        sp_cx_zybrjbqkbrxb: TStringField;
        sp_cx_zybrjbqkbrsf: TStringField;
        sp_cx_zybrjbqkbrjg: TStringField;
        sp_cx_zybrjbqkbrmz: TStringField;
        sp_cx_zybrjbqkdwdh: TStringField;
        sp_cx_zybrjbqkbrdz: TStringField;
        sp_cx_zybrjbqkdwyb: TStringField;
        sp_cx_zybrjbqkzkze: TBCDField;
        sp_cx_zybrjbqkzfze: TBCDField;
        sp_cx_zybrjbqkdbr: TStringField;
        sp_cx_zybrjbqkdbrdz: TStringField;
        sp_cx_zybrjbqknxrdh: TStringField;
        sp_cx_zybrjbqkhkyb: TStringField;
        sp_cx_zybrjbqkbch: TStringField;
        sp_cx_zybrjbqkryzd: TStringField;
        sp_cx_zybrjbqkksdm: TStringField;
        sp_cx_zybrjbqkzgys: TStringField;
        sp_cx_zybrjbqkzycs: TIntegerField;
        sp_cx_zybrjbqkfylb: TStringField;
        sp_cx_zybrjbqkryks: TStringField;
        sp_cx_zybrjbqksfzhm: TStringField;
        sp_cx_zybrjbqkrybq: TStringField;
        sp_cx_zybrjbqkrytj: TStringField;
        sp_cx_zybrjbqkryrq: TDateTimeField;
        sp_cx_zybrjbqksjyjze: TBCDField;
        sp_cx_zybrjbqkzdjf: TBCDField;
        sp_cx_zybrjbqkbqdm: TStringField;
        sp_cx_zybrjbqkyjze: TBCDField;
        sp_cx_zybrjbqkzfy: TBCDField;
        sp_cx_zybrjbqkybndzje_1: TBCDField;
        sp_cx_zybrjbqkryczy: TStringField;
        sp_cx_zybrjbqkbz: TStringField;
        sp_cx_zybrjbqkksmc: TStringField;
        sp_cx_zybrjbqkfylbmc: TStringField;
        sp_cx_zybrjbqkyjbz: TBooleanField;
        sp_cx_zybrjbqkzfzdmc: TStringField;
        sp_cx_zybrjbqkfyxz: TBCDField;
        sp_cx_zybrjbqkmc: TStringField;
        sp_cx_zybrjbqksyje: TBCDField;
        ds_zybrjbqk: TDataSource;
        tempgrid1: TDBGrid;
        qry_wjf_zb: TADOQuery;
        qry_wjf_mx: TADOQuery;
        ds_wjf_zb: TDataSource;
        ds_wjf_mx: TDataSource;
        sp_save: TADOStoredProc;
        sp_cx_syje: TADOStoredProc;
        DBEdit1: TDBEdit;
        DBEdit2: TDBEdit;
        DBEdit3: TDBEdit;
        DBEdit4: TDBEdit;
        DBEdit5: TDBEdit;
        Label4: TLabel;
        DBText1: TDBText;
        procedure tempgrid1DblClick(Sender: TObject);
        procedure tempgrid1KeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure tempgrid1Exit(Sender: TObject);
        procedure B_ENTERClick(Sender: TObject);
        procedure tempgrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
            DataCol: Integer; Column: TColumn; State: TGridDrawState);
        procedure tmhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure B_FINALClick(Sender: TObject);
    private
        { Private declarations }
        procedure Proc_displayvalue;
        procedure Proc_seek_brjbxx(dm: string);
        function Func_save_cf(cfbh, ksdm, czydm, sjbh: string): Integer;
        function Func_zybr_syje(dm: string): Real;
    public
        { Public declarations }
        procedure Proc_tmh(dm: string);
    end;

var
    frm_clhj_wjf: Tfrm_clhj_wjf;

implementation

uses p_dm, p_func;

{$R *.dfm}

procedure Tfrm_clhj_wjf.Proc_displayvalue;
begin
    with sp_cx_zybrjbqk do
    begin
        tmh.text := fieldbyname('tmh').asstring;
        ryzd.text := format('%3.2f', [fieldbyname('sjyjze').asfloat]);
        zfy.text := format('%3.2f', [fieldbyname('zfy').asfloat]);
        zdjf.Text := format('%3.2f', [fieldbyname('zdjf').asfloat]);
        zfze.Text := format('%3.2f', [fieldbyname('zfze').asfloat]);
    end;
    with qry_wjf_zb do //查询未交费材料记录
    begin
        Close;
        qry_wjf_zb.Parameters.ParamByName('zyh').Value := Trim(sp_cx_zybrjbqk.FieldByName('zyh').AsString);
        Open;
        qry_wjf_mx.Close;
        qry_wjf_mx.Open;
    end;
    tempgrid1Exit(self); //隐藏病人选择列表;
end;

procedure Tfrm_clhj_wjf.Proc_tmh(dm: string);
begin
    tmh.Text := dm;
end;

function Tfrm_clhj_wjf.Func_save_cf(cfbh, ksdm, czydm, sjbh: string): Integer;
begin
    Result := 0;
    with sp_save do
    begin
        Parameters.ParamByName('@cfbh').Value := cfbh;
        Parameters.ParamByName('@ksdm').Value := ksdm;
        Parameters.ParamByName('@fyczy').Value := czydm;
        Parameters.ParamByName('@sjbh').Value := sjbh;
        Parameters.ParamByName('@sc_cg').Value := 0;
        ExecProc;
        Result := sp_save.Parameters.ParamByName('@sc_cg').value;
    end;
end;

function Tfrm_clhj_wjf.Func_zybr_syje(dm: string): Real;
begin
    with sp_cx_syje do //查询余额
    begin
        close;
        Parameters.ParamByName('@zyh').value := dm;
        Open;
        Result := fieldbyname('yjze').asfloat - fieldbyname('zfze').asfloat;
    end;
end;

procedure Tfrm_clhj_wjf.Proc_seek_brjbxx(dm: string);
begin
    if (dm <> '') then
    begin
        with sp_cx_zybrjbqk do
        begin
            Close;
            parameters.ParamByName('@tmh').value := trim(tmh.text);
            parameters.ParamByName('@ksdm').value := pub_ksdm;
            active := true;

            if isempty then
            begin
                Application.MessageBox('错误提示:没有此病人或不在本病区！', '错误提示', 16);
                tmh.setfocus;
            end
            else if recordcount > 1 then
            begin
                tempgrid1.left := tmh.left;
                tempgrid1.top := tmh.top + tmh.Height;
                tempgrid1.visible := true;
                tempgrid1.setfocus;
            end
            else
                Proc_displayvalue;
        end
    end
    else if (dm = '') then
    begin
        Application.MessageBox('请输入条码号或病床号或病人姓名！', '错误', 0 + 16);
        tmh.setfocus;
    end;
end;

procedure Tfrm_clhj_wjf.B_FINALClick(Sender: TObject);
begin
    Close;
end;

procedure Tfrm_clhj_wjf.tmhKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
        Proc_seek_brjbxx(trim(tmh.Text));
end;

procedure Tfrm_clhj_wjf.tempgrid1DrawColumnCell(Sender: TObject;
    const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    with tempgrid1 do
    begin
        if DataSource.DataSet.FieldByName('syje').AsFloat > 0 then
        begin
            Canvas.Font.Color := ClBlack;
            Canvas.Brush.Color := clWindow;
        end
        else
        begin
            Canvas.Font.Color := clred;
            Canvas.Brush.Color := clWindow;
        end;
        //    DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
end;

procedure Tfrm_clhj_wjf.B_ENTERClick(Sender: TObject);
var
    v_syje, cjje: Real;
    cfbh: string;
    v_ErrorID: Integer;
begin
    if not qry_wjf_zb.Active then exit; //数据集未打开时退出
    if qry_wjf_zb.IsEmpty then exit; //数据集为空时退出

    cfbh := qry_wjf_zb.FieldByName('cfbh').AsString;
    if application.MessageBox(Pchar('保存提示:是否对病人 [' + DBEdit2.Text + '] 收取编号为:'
        + cfbh + '金额:'
        + format('￥%3.2f', [qry_wjf_zb.FieldByName('zfzje').AsFloat]) + ' 的材料费用?(Y/N)'),
        '保存提示', MB_YESNO + MB_ICONQUESTION) = IDYES then
    begin
        if frm_func.Func_CheckPDZT(pub_ksdm) then
        begin
            application.MessageBox('系统正在进行盘点，不能发材料!', '注意', 16);
            exit;
        end;

        v_syje := Func_zybr_syje(sp_cx_zybrjbqk.fieldbyname('zyh').asstring); //当前余额
        v_syje := v_syje + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat - qry_wjf_zb.FieldByName('zfzje').AsFloat; //记费后金额

        if v_syje < 0 then //余额不足是提示是否使用超记
            if application.messagebox(pchar('病人账上资金不足，为方便你工作' + #13 + #13 +
                '                   是否使用超记金额记帐！' + #13 + #13 + '  编号：' + cfbh),
                '提示', mb_yesNo + mb_iconinformation + MB_DEFBUTTON2) = IDyes then
                cjje := pub_cjje
            else
                cjje := 0;
        if v_syje + cjje >= 0 then
        begin
            sp_cx_zybrjbqk.Edit;
            sp_cx_zybrjbqk.FieldByName('syje').AsFloat := v_syje;
            sp_cx_zybrjbqk.Open;

            v_ErrorID := Func_save_cf(qry_wjf_zb.FieldByName('cfbh').AsString, pub_ksdm, pub_czydm, string(get_sjh(pub_czydm)));
            if v_ErrorID <> 0 then
                application.MessageBox(Pchar('错误提示:处方发材料失败!' + #13 + '错误号:' + IntToStr(v_ErrorID)), '错误提示', 16)
            else
            begin
                application.MessageBox('该处方发材料成功，处方已下帐!', '提示', 48);
                tmh.SetFocus;
            end;
        end
        else
            application.MessageBox('错误提示:病人卡上余额不足,不能发材料!', '错误提示', 16);
    end
end;

procedure Tfrm_clhj_wjf.tempgrid1Exit(Sender: TObject);
begin
    tempgrid1.Visible := False;
    tmh.SetFocus;
end;

procedure Tfrm_clhj_wjf.tempgrid1KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
        Proc_displayvalue
    else if key = 27 then
        tempgrid1Exit(Sender);
end;

procedure Tfrm_clhj_wjf.tempgrid1DblClick(Sender: TObject);
begin
    Proc_displayvalue;
end;

end.

