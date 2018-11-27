unit p_bqgl_sssq;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, Db, ADODB, DBSumLst, Grids, DBGridEh, Mask, DBCtrls, StdCtrls,
    Buttons, DBGrids, ActnList, ComCtrls;
type
    THACKDBGRID = class(TCUSTOMGRID);
type
    Tfrm_sssq = class(TForm)
        Panel1: TPanel;
        Panel2: TPanel;
        Label1: TLabel;
        tmh: TEdit;
        Label2: TLabel;
        Label3: TLabel;
        Label4: TLabel;
        fylb: TEdit;
        zfy: TEdit;
        zyj: TEdit;
        Label5: TLabel;
        bch: TEdit;
        ad_czy: TADODataSet;
        sp_cx_zybrjbqk: TADOStoredProc;
        ds_czy: TDataSource;
        Label11: TLabel;
        Label12: TLabel;
        zzf: TEdit;
        syje: TEdit;
        B_ENTER: TBitBtn;
        B_FINAL: TBitBtn;
        ds_zybrjbqk: TDataSource;
        ActionList1: TActionList;
        jshj: TAction;
        jf: TAction;
        zf: TAction;
        xg: TAction;
        B_giveup: TBitBtn;
        createbatch: TAction;
        Label13: TLabel;
        RYRQ: TEdit;
        tempgrid1: TDBGrid;
        ksys_grid: TDBGrid;
        Label14: TLabel;
        bz: TEdit;
        Label19: TLabel;
        zdqf: TEdit;
        Label20: TLabel;
        Edit1: TEdit;
        ad_ssap: TADODataSet;
        ds_ssmc: TDataSource;
        Panel3: TPanel;
        Label8: TLabel;
        Label9: TLabel;
        Label10: TLabel;
        Label21: TLabel;
        Label22: TLabel;
        Label25: TLabel;
        Label26: TLabel;
        Label27: TLabel;
        Label28: TLabel;
        Label29: TLabel;
        ssmc: TEdit;
        zdys: TEdit;
        yz: TEdit;
        ez: TEdit;
        mzs: TEdit;
        mzfs: TEdit;
        qxpzr: TEdit;
        Label31: TLabel;
        sp_cx_ssqk: TADOStoredProc;
        qxrq: TMaskEdit;
        b_zj: TBitBtn;
        ad_ssmc: TADODataSet;
        DBGrid1: TDBGrid;
        ds_sqzd: TDataSource;
        Label15: TLabel;
        sqzd: TEdit;
        tzr: TEdit;
        Label6: TLabel;
        ad_mzmc: TADODataSet;
        ds_mzmc: TDataSource;
        DBGrid2: TDBGrid;
        DBGrid3: TDBGrid;
        ad_sqzd: TADODataSet;
        sqrq: TMaskEdit;
        ssrq: TMaskEdit;
        sslx: TRadioGroup;
        Label7: TLabel;
        pzsj: TMaskEdit;
        ds_ssap: TDataSource;
        Label16: TLabel;
        Label17: TLabel;
        Label18: TLabel;
        Panel4: TPanel;
        DBGrid4: TDBGrid;
        ssqx: TComboBox;
        procedure FormShow(Sender: TObject);
        procedure tempgrid1DblClick(Sender: TObject);
        procedure tempgrid1KeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure tempgrid1Exit(Sender: TObject);
        procedure tmhExit(Sender: TObject);
        procedure B_FINALClick(Sender: TObject);
        procedure tmhEnter(Sender: TObject);
        procedure ssmcKeyPress(Sender: TObject; var Key: Char);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure zdysExit(Sender: TObject);
        procedure ksys_gridExit(Sender: TObject);
        procedure ksys_gridKeyPress(Sender: TObject; var Key: Char);
        procedure B_ENTERClick(Sender: TObject);
        procedure ssqxExit(Sender: TObject);
        procedure b_zjClick(Sender: TObject);
        procedure b_xgClick(Sender: TObject);
        procedure B_giveupClick(Sender: TObject);
        procedure ssmcExit(Sender: TObject);
        procedure DBGrid1Exit(Sender: TObject);
        procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
        procedure mzfsExit(Sender: TObject);
        procedure sqzdExit(Sender: TObject);
        procedure DBGrid3Exit(Sender: TObject);
        procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
        procedure DBGrid2Exit(Sender: TObject);
        procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
        procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
            DataCol: Integer; Column: TColumn; State: TGridDrawState);
        procedure sp_cx_ssqkAfterScroll(DataSet: TDataSet);
    private
    { Private declarations }
    public
    { Public declarations }
        procedure displayvalue;
        procedure displayssapvalue;
        procedure displayssapnull;
        function check: boolean;

    end;
var
    frm_sssq: Tfrm_sssq;
    lostsender: Tobject;
    v_zyh: string;
    changeflag: boolean; //表示有无改变

implementation

uses P_dm, p_func;
{$R *.DFM}

procedure Tfrm_sssq.displayvalue;
begin
    tmh.text := sp_cx_zybrjbqk.fieldbyname('tmh').asstring;
    Edit1.text := sp_cx_zybrjbqk.fieldbyname('brxm').asstring;
    bch.text := sp_cx_zybrjbqk.fieldbyname('bch').asstring;
    fylb.text := sp_cx_zybrjbqk.fieldbyname('lbmc').asstring;
    RYRQ.TEXT := datetostr(sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime);
    zyj.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('yjze').asfloat]);
    zfy.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('zfy').asfloat]);
    zzf.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('zfze').asfloat]);
    syje.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('yjze').asfloat - sp_cx_zybrjbqk.fieldbyname('zfze').asfloat]);
    bz.text := sp_cx_zybrjbqk.fieldbyname('ryzd').asstring;
    zdqf.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat]);
    v_zyh := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    sp_cx_ssqk.Close;
    sp_cx_ssqk.Parameters.ParamByName('@zyh').value := v_zyh;
    sp_cx_ssqk.Open;
    ad_ssap.close;
    ad_ssap.Parameters.ParamByName('id').value := sp_cx_ssqk.fieldbyname('id').asinteger;
    ad_ssap.open;
    b_giveup.Enabled := true;
    if sp_cx_ssqk.IsEmpty then
    begin
        if application.MessageBox('该病人未曾安排手术，是否现在安排？', '提示', mb_yesno + mb_iconquestion) = idyes then
        begin
            panel4.Enabled := false;
            displayssapnull;
            ad_ssap.Append;
        end
        else
            b_zj.Enabled := true;
    end
    else
    begin
        panel4.Enabled := true;
        displayssapvalue;
        b_zj.Enabled := true;
    end
end;

procedure Tfrm_sssq.displayssapvalue;
begin
    sqrq.text := datetimetostr(sp_cx_ssqk.fieldbyname('ssrq').asdatetime);
    ssmc.Text := sp_cx_ssqk.fieldbyname('ssmc').asstring;
    zdys.Text := sp_cx_ssqk.fieldbyname('zdys').asstring;
    yz.Text := sp_cx_ssqk.fieldbyname('yzys').asstring;
    ez.text := sp_cx_ssqk.fieldbyname('ezys').asstring;
    tzr.text := sp_cx_ssqk.fieldbyname('tzys').asstring;
    sqzd.text := sp_cx_ssqk.fieldbyname('sqzd').asstring;
    ssrq.text := datetimetostr(sp_cx_ssqk.fieldbyname('sqsssj').asdatetime);
    pzsj.text := datetimetostr(sp_cx_ssqk.fieldbyname('pzsssj').asdatetime);
//sx.Text:=sp_cx_ssqk.fieldbyname('sssx').asstring;
    mzs.Text := sp_cx_ssqk.fieldbyname('mzsxm').asstring;
    mzfs.Text := sp_cx_ssqk.fieldbyname('mzfs').asstring;
    if sp_cx_ssqk.fieldbyname('qxrq').AsString = '' then
        qxrq.Text := ''
    else
        qxrq.Text := datetimetostr(sp_cx_ssqk.fieldbyname('qxrq').asdatetime);
    qxpzr.Text := sp_cx_ssqk.fieldbyname('qxpzr').asstring;
//ssqr.Text:=sp_cx_ssqk.fieldbyname('sssqr').asstring;
//mzqr.Text:=sp_cx_ssqk.fieldbyname('mzqr').asstring;
    ssqx.Text := sp_cx_ssqk.fieldbyname('ssqx').asstring;

    if sp_cx_ssqk.fieldbyname('sslx').asstring = '1' then
        sslx.ItemIndex := 0
    else
        if sp_cx_ssqk.fieldbyname('sslx').asstring = '2' then
            sslx.ItemIndex := 1
        else
            if sp_cx_ssqk.fieldbyname('sslx').asstring = '3' then
                sslx.ItemIndex := 2;
    sqrq.SetFocus;
end;

procedure Tfrm_sssq.displayssapnull;
begin
    sqrq.text := datetimetostr(frm_func.curr_date());
    ssmc.Text := '';
    zdys.Text := '';
    yz.Text := '';
    ez.text := '';
    tzr.text := '';
    sqzd.text := '';
    ssrq.text := datetimetostr(frm_func.curr_date());
    mzs.Text := '';
    mzfs.Text := '';
    qxrq.Text := '';
    qxpzr.Text := '';
    sslx.ItemIndex := 0;
//ssqr.Text:='';
//mzqr.Text:='';
    ssqx.Text := '否';
    sqrq.setfocus;
end;

procedure Tfrm_sssq.tmhExit(Sender: TObject);
var s: string;
begin

    if not (tempgrid1.Focused) then
        tempgrid1.Visible := false;

    frm_func.restorecolor(sender);
    if not (B_FINAL.Focused) and (trim(tmh.text) <> '') then
    begin
    //calmhawk 2006-02-10
        s := tmh.text;
        if s[1] in ['0'..'9'] then
            s := stringofchar('0', 9 - length(s)) + s;
        tmh.Text := s;

        with sp_cx_zybrjbqk do
        begin
            Close;
            parameters.ParamByName('@tmh').value := trim(tmh.text);
            parameters.ParamByName('@xm').value := trim(tmh.text);
            parameters.ParamByName('@bch').value := trim(tmh.text);
            parameters.ParamByName('@ksdm').value := pub_bqdm;
            active := true;
        end;
        if sp_cx_zybrjbqk.isempty then
        begin
            Application.MessageBox('没有此病人！', '错误', 0 + 16);
            tmh.setfocus;
        end
        else if sp_cx_zybrjbqk.recordcount > 1 then
        begin
            tempgrid1.Columns.Clear;
            tempgrid1.Columns.add;
            tempgrid1.Columns[0].field := sp_cx_zybrjbqk.fieldlist[0];
            tempgrid1.Columns[0].title.caption := '条码号';
            tempgrid1.Columns.add;
            tempgrid1.Columns[1].field := sp_cx_zybrjbqk.fieldlist[2];
            tempgrid1.Columns[1].title.caption := '姓名';
            tempgrid1.left := tmh.left;
            tempgrid1.top := tmh.top + tmh.Height;
            tempgrid1.visible := true;
            tempgrid1.setfocus;
        end
        else
        begin
            panel1.enabled := false;
            Panel3.enabled := true;
            displayvalue;
        end;
    end
    else
        if (trim(tmh.text) = '') and (not (b_final.focused or B_giveup.focused)) then
        begin
            Application.MessageBox('请输入条码号或病床号或病人姓名！', '错误', 0 + 16);
            tmh.setfocus;
        end;
end;



procedure Tfrm_sssq.B_FINALClick(Sender: TObject);
begin
    B_FINAL.setfocus;
    close;
end;

procedure Tfrm_sssq.tmhEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
    b_giveup.Enabled := false;
    b_enter.Enabled := false;
    b_zj.Enabled := false;
    panel3.Enabled := false;
    panel4.Enabled := false;
end;

procedure Tfrm_sssq.ssmcKeyPress(Sender: TObject; var Key: Char);
begin
    if key > #32 then
    begin
        changeflag := true;
        b_enter.Enabled := true;
    end
end;

procedure Tfrm_sssq.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activeControl, true, true);
end;

procedure Tfrm_sssq.zdysExit(Sender: TObject);
begin
    if not (b_giveup.Focused or b_final.focused or b_zj.Focused or b_giveup.Focused or (trim((sender as Tedit).text) = '')) then
    begin
        ad_czy.Close;
        ad_czy.Parameters.ParamByName('pym').value := '%' + trim((sender as Tedit).text) + '%';
        ad_czy.Open;
        if ad_czy.IsEmpty then
        begin
            application.MessageBox('代码输入错误', '错误', mb_ok + mb_iconerror);
            (sender as Tedit).setfocus;
        end
        else
            if ad_czy.recordcount = 1 then
            begin
                (sender as Tedit).text := ad_czy.fieldbyname('mc').asstring;
            end
            else
            begin
                lostsender := sender;
                ksys_grid.Visible := true;
//     ksys_grid.top:=(sender as Tedit).top+(sender as Tedit).parent.top+(sender as Tedit).height;
//     ksys_grid.left:=(sender as Tedit).left;
                ksys_grid.SetFocus;
            end
    end
end;

procedure Tfrm_sssq.ksys_gridExit(Sender: TObject);
begin
    ksys_grid.visible := false;

end;

procedure Tfrm_sssq.ksys_gridKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        (lostsender as Tedit).text := ad_czy.fieldbyname('dm').asstring;
        (lostsender as Tedit).setfocus;
    end
end;

procedure Tfrm_sssq.B_ENTERClick(Sender: TObject);
begin
    if check then
    begin
        ad_ssap.Edit;
        ad_ssap['zyh'] := v_zyh;
        ad_ssap['ssrq'] := strtodatetime(sqrq.text);
        ad_ssap['ssmc'] := ssmc.Text;
        ad_ssap['zdys'] := zdys.Text;
        ad_ssap['yz'] := yz.Text;
        ad_ssap['ez'] := ez.text;
        ad_ssap['sqzd'] := sqzd.Text;
        ad_ssap['tzys'] := tzr.Text;
        ad_ssap['mzs'] := mzs.text;
        ad_ssap['mzfs'] := mzfs.text;
        ad_ssap['sqsssj'] := strtodatetime(ssrq.text);
        ad_ssap['pzsssj'] := strtodatetime(ssrq.text);
        ad_ssap['sqks'] := sp_cx_zybrjbqk.fieldbyname('ksdm').asstring;
        ad_ssap['sslx'] := inttostr(sslx.ItemIndex + 1);
        if trim(ssqx.Text) = '是' then
        begin
            ad_ssap['ssqx'] := 1;
            ad_ssap['qxrq'] := qxrq.Text;
            ad_ssap['qxpzr'] := qxpzr.Text;
        end
        else
            ad_ssap['ssqx'] := 0;
        try
            ad_ssap.post;
            application.MessageBox('保存成功！', '提示', mb_ok);
            panel1.Enabled := true;
            tmh.SetFocus;

        except
            application.MessageBox('保存未成功，请重新保存！', '提示', mb_ok);
            ad_ssap.Edit;
        end;
    end;

end;

function Tfrm_sssq.check: boolean;
begin
    result := true;
    if formatdatetime('yyyymmdd', strtodatetime(ssrq.text)) < formatdatetime('yyyymmdd', frm_func.curr_date()) then
    begin
        application.messagebox('手术申请日期错误！', '错误', mb_ok);
        sqrq.SetFocus;
        result := false;
    end
    else
        if (trim(ssqx.Text) <> '是') and (trim(ssqx.Text) <> '否') then
        begin
            application.messagebox('取消手术请选“是” 否则请选“否”！', '错误', mb_ok);
            ssqx.SetFocus;
            result := false;
        end;
end;

procedure Tfrm_sssq.ssqxExit(Sender: TObject);
begin
    if (trim(ssqx.text) <> '是') and (trim(ssqx.text) <> '否') then
        if trim(ssqx.text) = '1' then
        begin
            ssqx.text := '是';
            qxrq.SetFocus;
        end
        else
            if trim(ssqx.text) = '0' then
                ssqx.text := '否'
            else
            begin
                application.messagebox('取消手术请选“是” 否则请选“否”！', '错误', mb_ok);
                ssqx.SetFocus;
            end
end;

procedure Tfrm_sssq.b_zjClick(Sender: TObject);
begin
    ad_ssap.Append;
    displayssapnull;
    b_zj.enabled := false;
    sqrq.SetFocus;
end;

procedure Tfrm_sssq.b_xgClick(Sender: TObject);
begin
    panel4.Enabled := false;
    sqrq.setfocus;

end;

procedure Tfrm_sssq.B_giveupClick(Sender: TObject);
begin
    panel1.Enabled := true;
    tmh.SetFocus;
end;

procedure Tfrm_sssq.ssmcExit(Sender: TObject);
begin
    if not (b_giveup.Focused or b_final.focused or b_zj.Focused or b_giveup.Focused) then
    begin
        ad_ssmc.Close;
        ad_ssmc.Parameters.ParamByName('pym').value := '%' + trim((sender as Tedit).text) + '%';
        ad_ssmc.Open;
        if ad_ssmc.IsEmpty then
        begin
            application.MessageBox('代码输入错误', '错误', mb_ok + mb_iconerror);
            (sender as Tedit).setfocus;
        end
        else
            if ad_ssmc.recordcount = 1 then
            begin
                (sender as Tedit).text := ad_ssmc.fieldbyname('手术名称').asstring;
            end
            else
            begin
                lostsender := sender;
                dbgrid1.Visible := true;
                dbgrid1.SetFocus;
            end
    end

end;

procedure Tfrm_sssq.DBGrid1Exit(Sender: TObject);
begin
    dbgrid1.visible := false;

end;

procedure Tfrm_sssq.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        (lostsender as Tedit).text := ad_ssmc.fieldbyname('代码').asstring;
        (lostsender as Tedit).setfocus;
    end

end;

procedure Tfrm_sssq.mzfsExit(Sender: TObject);
begin
    if not (b_giveup.Focused or b_final.focused or b_giveup.Focused or (trim((sender as Tedit).text) = '')) then
    begin
        ad_mzmc.Close;
        ad_mzmc.Parameters.ParamByName('pym').value := '%' + trim((sender as Tedit).text) + '%';
        ad_mzmc.Open;
        if ad_mzmc.IsEmpty then
        begin
            application.MessageBox('代码输入错误', '错误', mb_ok + mb_iconerror);
            (sender as Tedit).setfocus;
        end
        else
            if ad_mzmc.recordcount = 1 then
            begin
                (sender as Tedit).text := ad_mzmc.fieldbyname('麻醉方式').asstring;
            end
            else
            begin
                lostsender := sender;
                dbgrid2.Visible := true;
                dbgrid2.SetFocus;
            end
    end
end;

procedure Tfrm_sssq.sqzdExit(Sender: TObject);
begin
    if not (b_giveup.Focused or b_final.focused or b_zj.Focused or b_giveup.Focused) then
    begin
        ad_sqzd.Close;
        ad_sqzd.Parameters.ParamByName('pym').value := '%' + trim((sender as Tedit).text) + '%';
        try
            ad_sqzd.Parameters.ParamByName('jbbm').value := strtoint(trim((sender as Tedit).text));
        except
            ad_sqzd.Parameters.ParamByName('jbbm').value := 9999;
        end;

        ad_sqzd.Open;
        if ad_sqzd.IsEmpty then
        begin
            application.MessageBox('代码输入错误', '错误', mb_ok + mb_iconerror);
            (sender as Tedit).setfocus;
        end
        else
            if ad_sqzd.recordcount = 1 then
            begin
                (sender as Tedit).text := ad_sqzd.fieldbyname('疾病名称').asstring;
            end
            else
            begin
                lostsender := sender;
                dbgrid3.Visible := true;
                dbgrid3.SetFocus;
            end
    end
end;

procedure Tfrm_sssq.DBGrid3Exit(Sender: TObject);
begin
    dbgrid3.visible := false;
end;

procedure Tfrm_sssq.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        (lostsender as Tedit).text := ad_sqzd.fieldbyname('代码').asstring;
        (lostsender as Tedit).setfocus;
    end
end;

procedure Tfrm_sssq.DBGrid2Exit(Sender: TObject);
begin
    dbgrid2.Visible := false;

end;

procedure Tfrm_sssq.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        (lostsender as Tedit).text := ad_mzmc.fieldbyname('麻醉方式').asstring;
        (lostsender as Tedit).setfocus;
    end

end;

procedure Tfrm_sssq.DBGrid4DrawColumnCell(Sender: TObject;
    const Rect: TRect; DataCol: Integer; Column: TColumn;
    State: TGridDrawState);
begin
    if (sp_cx_ssqk.fieldbyname('sssqr').asstring = '是') and (sp_cx_ssqk.fieldbyname('mzqr').asstring = '是') then
    begin
        dbgrid4.Canvas.Brush.Color := cllime;
        dbgrid4.Canvas.Font.color := clblue;
    end;
    if (sp_cx_ssqk.fieldbyname('sssqr').asstring = '是') and (sp_cx_ssqk.fieldbyname('mzqr').asstring = '否') then
    begin
        dbgrid4.Canvas.Brush.Color := clAqua;
        dbgrid4.Canvas.Font.color := clblack;
    end;
    if (sp_cx_ssqk.fieldbyname('sssqr').asstring = '否') and (sp_cx_ssqk.fieldbyname('mzqr').asstring = '是') then
    begin
        dbgrid4.Canvas.Brush.Color := clyellow;
        dbgrid4.Canvas.Font.color := clblack;
    end;
    dbgrid4.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure Tfrm_sssq.sp_cx_ssqkAfterScroll(DataSet: TDataSet);
begin
    ad_ssap.close;
    ad_ssap.Parameters.ParamByName('id').value := sp_cx_ssqk.fieldbyname('id').asinteger;
    ad_ssap.open;
    displayssapvalue;
    if panel4.Enabled = TRUE then
        dbgrid4.setfocus;
end;

procedure Tfrm_sssq.tempgrid1Exit(Sender: TObject);
begin
    tmh.Text := sp_cx_zybrjbqk.FieldByName('tmh').AsString;
    tempgrid1.Visible := false;
end;

procedure Tfrm_sssq.tempgrid1KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
    begin
        tempgrid1.OnExit(Sender);
    end;
end;

procedure Tfrm_sssq.tempgrid1DblClick(Sender: TObject);
begin
    tempgrid1.OnExit(Sender);
end;

procedure Tfrm_sssq.FormShow(Sender: TObject);
begin
    qxrq.Text := formatdatetime('yyyy-mm-dd', frm_func.curr_date);
end;

end.

