unit p_cyjs;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, Grids, DBGrids, Db, DBTables, Mask, DBCtrls, DBCGrids,
    ExtCtrls, Buttons, Menus, ComCtrls, ADODB, QuickRpt, Qrctrls, DateUtils, variants;

type
    Tfrm_cyjs = class( TForm )
        Panel1: TPanel;
        Label13: TLabel;
        Label14: TLabel;
        tmh: TEdit;
        Panel2: TPanel;
        DBEdit1: TDBEdit;
        Label2: TLabel;
        DBEdit3: TDBEdit;
        DBEdit2: TDBEdit;
        Label4: TLabel;
        Label3: TLabel;
        Label6: TLabel;
        b_close: TBitBtn;
        Label15: TLabel;
        Label7: TLabel;
        Label8: TLabel;
        ysxje: TEdit;
        ytxje: TEdit;
        PopupMenu1: TPopupMenu;
        N1: TMenuItem;
        N2: TMenuItem;
        DBEdit4: TDBEdit;
        cyrq: TDateTimePicker;
        ds_yjmxcx: TDataSource;
        DBGrid1: TDBGrid;
        ds_sebrqk: TDataSource;
        DBEdit7: TDBEdit;
        ds_fymx: TDataSource;
        b_save: TBitBtn;
        b_jsqd: TBitBtn;
        ds_tj_fydl: TDataSource;
        sp_sebrqk: TADOStoredProc;
        sp_yjmxcx: TADOStoredProc;
        sp_fymx: TADOStoredProc;
        sp_tj_fydl: TADOStoredProc;
        sp_dysj_dz: TADOStoredProc;
        sp_cyjs: TADOStoredProc;
        qry_bafy: TADOQuery;
        Label18: TLabel;
        sbzfze: TEdit;
        Label19: TLabel;
        sbtcze: TEdit;
        Label5: TLabel;
        yjze: TEdit;
        yjcs: TEdit;
        Label9: TLabel;
        zfy: TEdit;
        Label17: TLabel;
        PageControl1: TPageControl;
        TabSheet1: TTabSheet;
        TabSheet2: TTabSheet;
        g_tj: TDBGrid;
        Memo1: TMemo;
        g_fy: TDBGrid;
        SP_yymx: TADOStoredProc;
        TabSheet3: TTabSheet;
        DBGrid2: TDBGrid;
        Label16: TLabel;
        sjbh: TEdit;
        DBGrid3: TDBGrid;
        Bevel1: TBevel;
        Label1: TLabel;
        czje: TEdit;
        SP_yymxcfbh: TStringField;
        SP_yymxypdm: TStringField;
        SP_yymxypmc: TStringField;
        SP_yymxypgg: TStringField;
        SP_yymxypdw: TStringField;
        SP_yymxypsl: TBCDField;
        SP_yymxypdj: TBCDField;
        SP_yymxcfje: TBCDField;
        SP_yymxsfjlyp: TBooleanField;
        SP_yymxsfylyp: TBooleanField;
        SP_yymxhjrq: TDateTimeField;
        SP_yymxjylyp: TStringField;
        DS_yymx: TDataSource;
        QuickRep1: TQuickRep;
        DetailBand1: TQRBand;
        QRDBText1: TQRDBText;
        QRDBText2: TQRDBText;
        QRDBText3: TQRDBText;
        QRDBText4: TQRDBText;
        QRDBText5: TQRDBText;
        QRDBText6: TQRDBText;
        QRDBText7: TQRDBText;
        QRDBText8: TQRDBText;
        ColumnHeaderBand1: TQRBand;
        QRLabel1: TQRLabel;
        QRLabel6: TQRLabel;
        QRLabel5: TQRLabel;
        QRLabel4: TQRLabel;
        QRLabel3: TQRLabel;
        QRLabel2: TQRLabel;
        QRLabel16: TQRLabel;
        QRLabel17: TQRLabel;
        PageHeaderBand1: TQRBand;
        QRShape1: TQRShape;
        QRLabel7: TQRLabel;
        QRLabel8: TQRLabel;
        yymc: TQRLabel;
        QRSysData1: TQRSysData;
        QRLabel13: TQRLabel;
        QRLabel9: TQRLabel;
        ksmc: TQRLabel;
        tmh1: TQRLabel;
        QRLabel11: TQRLabel;
        brxm: TQRLabel;
        QRLabel12: TQRLabel;
        qzsj: TQRLabel;
        SummaryBand1: TQRBand;
        QRLabel14: TQRLabel;
        QRLabel18: TQRLabel;
        QRGroup1: TQRGroup;
        QRBand1: TQRBand;
        QRBand2: TQRBand;
        QRLabel10: TQRLabel;
        brxm1: TQRLabel;
        QRLabel19: TQRLabel;
        tmh2: TQRLabel;
        QRSysData2: TQRSysData;
        QRLabel21: TQRLabel;
        QRBand3: TQRBand;
        procedure tmhKeyPress( Sender: TObject; var Key: Char );
        procedure b_closeClick( Sender: TObject );
        procedure b_saveClick( Sender: TObject );
        procedure FormKeyDown( Sender: TObject; var Key: Word;
            Shift: TShiftState );
        procedure DBGrid1DrawColumnCell( Sender: TObject; const Rect: TRect;
            DataCol: Integer; Column: TColumn; State: TGridDrawState );
        procedure g_fyDrawColumnCell( Sender: TObject; const Rect: TRect;
            DataCol: Integer; Column: TColumn; State: TGridDrawState );
        procedure proc_get_sjbh;
        procedure FormShow( Sender: TObject );
        procedure ysxjeKeyPress( Sender: TObject; var Key: Char );
        procedure ytxjeKeyPress( Sender: TObject; var Key: Char );
        procedure b_jsqdClick( Sender: TObject );
        procedure sbzfzeExit( Sender: TObject );
        procedure sbzfzeKeyPress( Sender: TObject; var Key: Char );
        procedure tmhExit( Sender: TObject );
        procedure proc_setfy;
        procedure DBGrid3Exit( Sender: TObject );
        procedure DBGrid3KeyPress( Sender: TObject; var Key: Char );
        procedure tmhEnter( Sender: TObject );
        procedure SP_yymxCalcFields( DataSet: TDataSet );
        procedure qzsjPrint( sender: TObject; var Value: string );
    private
        { Private declarations }
    public
        zy_zyh: string; //住院号
        zy_sjbh: string; //收据编号
        zy_tmh: string; //条码号
        zy_fylb: string; //病人费用类别
        zy_ksmc: string; //科室名称
        zy_ryrq: Tdatetime; //入院日期
        zy_syyj: real; //剩余押金
        zy_syyjjs: real; //除去结算中退补的预交
        zy_sjyjje: real; //住院实际预交金额
        zy_yjze: real; //押金总额
        zy_zfy: real; //费用总额
        zy_zfze: real; //自费总额
        zy_ytje: real; //应退金额
        zy_ybje: real; //应补金额
        zy_stje: real; //实退金额
        zy_sbje: real; //实补金额
        zy_ytjejs: real; //应退金额结算
        zy_ybjejs: real; //应补金额结算
        zy_fybz: string; // 1:欠费 2:退费 3:无欠退
        zy_sbzfje: real; //社保病人自费金额
        zy_sbtcje: real; //社保病人统筹金额
        zy_brxm: string; //病人姓名
        zy_brxb: string; //病人性别
        zy_brnl: string; //病人年龄
        zy_csrq: string; //病人出生日期
        zy_brdz: string; //病人地址
        zy_ksdm: string; //科室代码
        zy_yjcs: integer; //押金次数
        zy_yjbz: boolean; //押金标志
        procedure proc_getbrxx;
    end;
var
    frm_cyjs: Tfrm_cyjs;
    jylyp: boolean;
implementation

uses p_func, p_dm, p_login, p_main, p_repo_yjbrfymx, p_repo_zybrfymx,
    p_repo_batj, p_repo_yymx, p_print_fymx, p_repo_jssj;

{$R *.DFM}

procedure Tfrm_cyjs.proc_setfy;
begin
    if zy_syyj < 0 then
    begin
        ysxje.Text := floattostr( 0 - zy_syyj );
        zy_ybje := 0 - zy_syyj;
        zy_sbje := 0 - zy_syyj;
        czje.Text := '补:' + floattostr( zy_ybje );
        zy_fybz := '1';
        zy_ytje := 0.00;
        zy_stje := 0.00;
        ytxje.Text := '0.00';
    end
    else
    begin
        ytxje.Text := floattostr( zy_syyj );
        zy_ytje := zy_syyj;
        zy_stje := zy_syyj;
        czje.Text := '退:' + floattostr( zy_ytje );
        zy_ybje := 0.00;
        zy_sbje := 0.00;
        zy_fybz := '2';
        ysxje.Text := '0';
    end;
    if zy_syyj = 0 then
    begin
        zy_fybz := '3';
        zy_ytje := 0.00;
        zy_ybje := 0.00;
        zy_stje := 0.00;
        zy_sbje := 0.00;
    end;
    if zy_syyjjs < 0 then
    begin
        ysxje.Text := floattostr( 0 - zy_syyjjs );
        zy_ybjejs := 0 - zy_syyjjs;
        zy_ytjejs := 0.00;
        ytxje.Text := '0';
    end
    else
    begin
        ytxje.Text := floattostr( zy_syyjjs );
        zy_ytjejs := zy_syyjjs;
        zy_ybjejs := 0.00;
        ysxje.Text := '0';
    end;
    if zy_syyjjs = 0 then
    begin
        czje.Text := '0.00';
        zy_ytjejs := 0.00;
        zy_ybjejs := 0.00;
    end;
end;

procedure Tfrm_cyjs.proc_get_sjbh;
var
    bh: integer;
begin
    try
        with dm_data.qry_pub do
        begin
            close;
            sql.clear;
            sql.text := 'select sjzh-sybh sjsl,sybh,sjqh from sys_sjlymx' +
                ' where lyr=' + '''' + pub_czydm + '''' +
                ' and   qybz=1 ' +
                ' and   tybz=0 ' +
                ' and   sjlb=' + '''' + pub_jssjlb + '''';
            open;
        end;
        if ( dm_data.qry_pub['sjsl'] = 0 ) or ( dm_data.qry_pub['sjsl'] = null ) then
        begin
            MessageDlg( '收据已用完，现在将退出该模块，请启用新收据！', mtWarning, [mbOK], 0 );
            postmessage( handle, wm_close, 0, 0 );
            abort;
        end
        else
        begin
            if dm_data.qry_pub['sybh'] = 0 then
            begin
                bh := dm_data.qry_pub['sjqh'];
            end
            else
            begin
                bh := dm_data.qry_pub['sybh'] + 1;
            end;
            zy_sjbh := formatex( bh, 9 );
            sjbh.Text := zy_sjbh;
        end;
    except
    end;
end;

procedure Tfrm_cyjs.tmhKeyPress( Sender: TObject; var Key: Char );
begin
    if key = #13 then ytxje.SetFocus;
    zy_sbzfje := 0;
    zy_sbtcje := 0;
end;

procedure Tfrm_cyjs.b_closeClick( Sender: TObject );
begin
    close;
end;

procedure Tfrm_cyjs.b_saveClick( Sender: TObject );
var
    nian, yue, ri: word;
    re_value: string;
begin
    with dm_data.qry_pub do
    begin
        close;
        sql.clear;
        sql.text := 'select * from sys_jzzt';
        open;
    end;
    if dm_data.qry_pub['jzzt'] then
    begin
        application.MessageBox( '系统正在结转数据请稍候!', '提示', 0 + 48 );
        abort;
    end;
    if ( zy_fylb = '03' ) and ( zy_sbzfje = 0 ) then
    begin
        if application.MessageBox( '社保病人结算自费金额为0,是否继续结算????!!!!!', '提示', mb_yesno + mb_iconquestion + MB_DEFBUTTON2 ) = IDNO then
        begin
            sbzfze.SetFocus;
            abort;
        end
    end;
    if ( zy_fylb = '11' ) and ( zy_sbzfje = 0 ) then
    begin
        if application.MessageBox( '农合病人结算自费金额为0,是否继续结算????!!!!!', '提示', mb_yesno + mb_iconquestion + MB_DEFBUTTON2 ) = IDNO then
        begin
            sbzfze.SetFocus;
            abort;
        end
    end;
    if ( zy_fylb = '06' ) and ( zy_sbzfje = 0 ) then
    begin
        if application.MessageBox( '特殊照顾群体病人结算自费金额为0,是否继续结算????!!!!!', '提示', mb_yesno + mb_iconquestion + MB_DEFBUTTON2 ) = IDNO then
        begin
            sbzfze.SetFocus;
            abort;
        end
    end;
    tmh.SetFocus;
    b_jsqd.Enabled := false;
    b_save.Enabled := false;
    decodedate( frm_func.curr_date, nian, yue, ri );
    if ( zy_zfy = 0 ) and ( zy_yjze = 0 ) then
    begin
        application.messagebox( '该病人无费用，结算时只对其进行退号操作，不打印收据，确定继续吗？', '提示', 52 );
        abort;
    end;
    if cyrq.DateTime - frm_func.curr_date > 1 then
    begin
        application.MessageBox( '出院日期输入错误!', '提示', 16 );
        abort;
    end;
    re_value := zysf_cyjs( zy_tmh, zy_zyh, zy_fybz, get_sjh( pub_czydm ), zy_sjbh, zy_brxm, zy_ksdm, pub_czydm, pub_jssjlb,
        zy_yjze, zy_zfy, zy_ytje, zy_ybje, zy_stje, zy_sbje, zy_sbzfje, zy_sbtcje );
    if re_value = '1' then
    begin
        //proc_jxsj;//江西收据
       //proc_scsj; //四川收据
       //       proc_xjsj;   //新疆收据
       //------calmhawk----2007-12-27-----结算收据打印--------
       if pos( '02', pub_zydylb ) <> 0 then
        frm_repo_jssj.printjssj( zy_zyh, zy_sjbh, zy_brxm,
            zy_brxb, zy_brnl, zy_ksmc, zy_fylb, zy_tmh, zy_zfy, zy_ytjejs, zy_ybjejs,
            zy_sbzfje, zy_sbtcje, zy_yjze, zy_ryrq, cyrq.DateTime, zy_csrq, zy_brdz, sp_tj_fydl );
        proc_get_sjbh;
    end
    else
        if sp_cyjs.parameters.ParamByName( '@sczt' ).value = 'X' then
        begin
            application.MessageBox( '出院回招病人，只能由前一次办出人员结算!!!', '提示', 16 );
            abort;
        end
        else
        begin
            application.MessageBox( '保存失败，请重新办理!!!', '提示', 16 );
            abort;
        end
end;

procedure Tfrm_cyjs.FormKeyDown( Sender: TObject; var Key: Word;
    Shift: TShiftState );
begin
    if key = 123 then self.PopupMenu1.Popup( self.Left + 240, self.top + 90 );
end;

procedure Tfrm_cyjs.DBGrid1DrawColumnCell( Sender: TObject;
    const Rect: TRect; DataCol: Integer; Column: TColumn;
    State: TGridDrawState );
begin
    if sp_yjmxcx['tfbz'] = true then
    begin
        dbgrid1.Canvas.Brush.Color := cllime;
        dbgrid1.Canvas.Font.color := clblue;
    end;
    dbgrid1.DefaultDrawColumnCell( rect, datacol, column, state );
end;

procedure Tfrm_cyjs.g_fyDrawColumnCell( Sender: TObject; const Rect: TRect;
    DataCol: Integer; Column: TColumn; State: TGridDrawState );
begin
    if sp_fymx['tfbz'] = true then
    begin
        g_fy.Canvas.Brush.Color := cllime;
        g_fy.Canvas.Font.color := clblue;
    end;
    g_fy.DefaultDrawColumnCell( rect, datacol, column, state );
end;

procedure Tfrm_cyjs.FormShow( Sender: TObject );
var
    nian, yue, ri: word;
begin
    frm_cyjs.proc_get_sjbh;
    decodedate( frm_func.curr_date, nian, yue, ri );
end;

procedure Tfrm_cyjs.ysxjeKeyPress( Sender: TObject; var Key: Char );
begin
    key := IsDigit( key );
end;

procedure Tfrm_cyjs.ytxjeKeyPress( Sender: TObject; var Key: Char );
begin
    if key = #13 then
        b_save.SetFocus
    else
        key := IsDigit( key );
end;

procedure Tfrm_cyjs.b_jsqdClick( Sender: TObject );
var
    i: integer;
begin
    if sp_fymx.Active then
    begin
        qry_bafy.Close;
        qry_bafy.parameters.ParamByName( 'zy_zyh' ).value := zy_zyh;
        qry_bafy.parameters.ParamByName( 'sjbh' ).value := zy_sjbh;
        qry_bafy.open;
        dm_data.ad_fydl.Close;
        dm_data.ad_fydl.SQL.Clear;
        dm_data.ad_fydl.SQL.Text := qry_bafy.SQL.Text;
        dm_data.ad_fydl.Parameters.Clear;
        for i := 1 to qry_bafy.Parameters.Count do
        begin
            dm_data.ad_fydl.Parameters.AddParameter;
            dm_data.ad_fydl.Parameters.Items[i - 1] := qry_bafy.Parameters.Items[i - 1];
        end;
        dm_data.ad_fydl.open;

        dm_data.ad_yjmx.Close;
        dm_data.ad_yjmx.Parameters.Clear;
        dm_data.ad_yjmx.ProcedureName := sp_yjmxcx.ProcedureName;
        dm_data.ad_yjmx.Parameters.Clear;
        for i := 1 to sp_yjmxcx.Parameters.Count do
        begin
            dm_data.ad_yjmx.Parameters.AddParameter;
            dm_data.ad_yjmx.Parameters.Items[i - 1] := sp_yjmxcx.Parameters.Items[i - 1];
        end;
        dm_data.ad_yjmx.open;

        dm_data.sp_zydj.Close;
        dm_data.sp_zydj.Parameters.Clear;
        dm_data.sp_zydj.ProcedureName := sp_sebrqk.ProcedureName;
        dm_data.sp_zydj.Parameters.Clear;
        for i := 1 to sp_sebrqk.Parameters.Count do
        begin
            dm_data.sp_zydj.Parameters.AddParameter;
            dm_data.sp_zydj.Parameters.Items[i - 1] := sp_sebrqk.Parameters.Items[i - 1];
        end;
        dm_data.sp_zydj.open;

        dm_data.sp_cwdl.Close;
        dm_data.sp_cwdl.Parameters.Clear;
        dm_data.sp_cwdl.ProcedureName := sp_tj_fydl.ProcedureName;
        dm_data.sp_cwdl.Parameters.Clear;
        for i := 1 to sp_tj_fydl.Parameters.Count do
        begin
            dm_data.sp_cwdl.Parameters.AddParameter;
            dm_data.sp_cwdl.Parameters.Items[i - 1] := sp_tj_fydl.Parameters.Items[i - 1];
        end;
        dm_data.sp_cwdl.open;

        qry_bafy.Close;
        qry_bafy.parameters.ParamByName( 'zy_zyh' ).value := zy_zyh;
        qry_bafy.open;
        dm_data.ad_fydl.Close;
        dm_data.ad_fydl.SQL.Clear;
        dm_data.ad_fydl.SQL.Text := qry_bafy.SQL.Text;
        dm_data.ad_fydl.Parameters.Clear;
        for i := 1 to qry_bafy.Parameters.Count do
        begin
            dm_data.ad_fydl.Parameters.AddParameter;
            dm_data.ad_fydl.Parameters.Items[i - 1] := qry_bafy.Parameters.Items[i - 1];
        end;
        dm_data.ad_fydl.open;

        if sp_fymx.Active = false then
        begin
            sp_fymx.parameters.ParamByName( '@tmh' ).value := zy_tmh;
            sp_fymx.parameters.ParamByName( '@zyh' ).value := zy_zyh;
            sp_fymx.Open;
        end;
        dm_data.sp_fymx.Close;
        dm_data.sp_fymx.Parameters.Clear;
        dm_data.sp_fymx.ProcedureName := sp_fymx.ProcedureName;
        dm_data.sp_fymx.Parameters.Clear;
        for i := 1 to sp_fymx.Parameters.Count do
        begin
            dm_data.sp_fymx.Parameters.AddParameter;
            dm_data.sp_fymx.Parameters.Items[i - 1] := sp_fymx.Parameters.Items[i - 1];
        end;
        dm_data.sp_fymx.open;

        application.CreateForm( Tfrm_print_fymx, frm_print_fymx );
        frm_print_fymx.QuickRep1.Preview;

        try frm_print_fymx.free except
        end;
        if SP_yymx.Active = false then
        begin
            SP_yymx.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
            SP_yymx.Parameters.ParamByName( '@jsdh' ).value := '';
            jylyp := true;
            if sp_sebrqk.fieldbyname( 'fylb' ).asstring <> '03' then
                if application.MessageBox( '是否区分甲乙类药品？', '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 ) = IDNO then
                begin
                    SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 0;
                    jylyp := false;
                end;
            SP_yymx.Parameters.ParamByName( '@lb' ).value := 1;
            SP_yymx.open;
        end;
        yymc.Caption := pub_yymc;
        brxm.Caption := zy_brxm;
        tmh1.Caption := zy_tmh;
        brxm1.Caption := zy_brxm;
        tmh2.Caption := zy_tmh;
        ksmc.Caption := zy_ksmc;
        QuickRep1.Preview;
    end;
end;

procedure Tfrm_cyjs.sbzfzeExit( Sender: TObject );
begin
    try
        zy_sbzfje := strtofloat( sbzfze.text );
        zy_sbtcje := zy_zfy - zy_sbzfje;
        zy_syyj := zy_yjze - zy_sbzfje;
        zy_syyjjs := zy_sjyjje - zy_sbzfje;
        sbtcze.Text := format( '%8.2f', [zy_sbtcje] );
        proc_setfy;
    except
        sbzfze.SetFocus;
    end;
end;

procedure Tfrm_cyjs.sbzfzeKeyPress( Sender: TObject; var Key: Char );
begin
    if key = #13 then b_save.SetFocus;
end;

procedure Tfrm_cyjs.tmhExit( Sender: TObject );
begin
    if not ( b_close.focused ) then
    begin
        try
            tmh.text := formatex( strtoint( tmh.text ), 9 );
        except
        end;
        zy_tmh := tmh.text;
        with dm_data.qry_pub do
        begin
            Close;
            SQL.clear;
            SQL.Text := 'select zydj.tmh,zydj.zyh,zydj.zdjf,zydj.jsbz,' +
                ' zydj.brxm,fylb.yjbz,zydj.cybz,zydj.brdz ' +
                ' from zysf_zydj zydj,sys_fylb fylb,sys_ksdm ksdm' +
                ' where zydj.fylb=fylb.dm and zydj.ksdm=ksdm.dm and zydj.tmh<>' + #39 + '00000001' + #39 +
                ' and (zydj.tmh=' + #39 + zy_tmh + #39 + ' or zydj.brxm like ' +
                #39 + '%' + zy_tmh + '%' + #39 + ' or (zydj.ksdm in ' +
                '(select dm from sys_ksdm where pym like ' + #39 + copy( zy_tmh, 1, 2 ) + '%' +
                #39 + ') and zydj.bch like ' + #39 + '%' + copy( zy_tmh, 3, 2 ) + #39 + '))';
            open;
        end;
        if dm_data.qry_pub.IsEmpty then
        begin
            application.MessageBox( '无此此卡号,或病人已出院！', '提示', 0 + 16 );
            tmh.SetFocus;
            tmh.SelectAll;
            abort;
        end
        else
            if dm_data.qry_pub.recordcount = 1 then
                proc_getbrxx
            else
            begin
                dbgrid3.left := tmh.left;
                dbgrid3.top := tmh.top + tmh.height;
                dbgrid3.Visible := true;
                dbgrid3.SetFocus;
            end;
    end;
end;

procedure Tfrm_cyjs.proc_getbrxx;
begin
    if dm_data.qry_pub.FieldByName( 'cybz' ).asboolean = false then
    begin
        application.messagebox( '未办理出院登记，不能出院结算，请先在进行出院登记处理!', '提示', 0 + 48 );
        tmh.SetFocus;
        tmh.SelectAll;
        abort;
    end;
    if dm_data.Qry_pub.FieldByName( 'jsbz' ).asboolean = true then
    begin
        application.MessageBox( '该病人已经结算!', '提示', 0 + 48 );
        tmh.SetFocus;
        tmh.SelectAll;
        abort;
    end;
    zy_brdz := dm_data.Qry_pub.FieldByName( 'brdz' ).asstring;
    zy_zyh := dm_data.qry_pub.FieldByName( 'zyh' ).asstring;
    zy_tmh := dm_data.qry_pub.FieldByName( 'tmh' ).asstring;
    tmh.text := zy_tmh;
    sp_yjmxcx.Active := false;
    sp_yjmxcx.parameters.ParamByName( '@zyh' ).value := zy_zyh;
    sp_yjmxcx.Open;
    sp_tj_fydl.Active := false;
    sp_tj_fydl.parameters.ParamByName( '@lb' ).value := '01';
    sp_tj_fydl.parameters.ParamByName( '@sjbh' ).value := zy_sjbh;
    sp_tj_fydl.parameters.ParamByName( '@zyh' ).value := zy_zyh;
    sp_tj_fydl.open;
    sp_sebrqk.Active := false;
    sp_sebrqk.parameters.ParamByName( '@zyh' ).value := zy_zyh;
    sp_sebrqk.Open;
    cyrq.DateTime := sp_sebrqk.fieldbyname( 'cyrq' ).asdatetime;
    zy_fylb := sp_sebrqk.fieldbyname( 'fylb' ).asstring;
    zy_yjbz := sp_sebrqk.fieldbyname( 'yjbz' ).asboolean;
    zy_syyj := sp_sebrqk.fieldbyname( 'syyj' ).asfloat;
    zy_sjyjje := sp_sebrqk.fieldbyname( 'sjyjze' ).asfloat;
    zy_syyjjs := sp_sebrqk.fieldbyname( 'syyjjs' ).asfloat;
    zy_zfy := sp_sebrqk.fieldbyname( 'zfy' ).asfloat;
    zy_yjze := sp_sebrqk.fieldbyname( 'yjze' ).asfloat;
    zy_yjcs := sp_yjmxcx.fieldbyname( 'yjcs' ).asinteger;
    zy_ryrq := sp_sebrqk.fieldbyname( 'ryrq' ).asdatetime;
    zy_ksmc := sp_sebrqk.fieldbyname( 'ksmc' ).asstring;
    zy_ksdm := sp_sebrqk.fieldbyname( 'ksdm' ).asstring;
    zy_brxm := sp_sebrqk.fieldbyname( 'brxm' ).asstring;
    zy_brnl := floattostr( sp_sebrqk.fieldbyname( 'brnl' ).asfloat );
    zy_csrq := sp_sebrqk.fieldbyname( 'csrq' ).asstring;
    zy_brxb := sp_sebrqk.fieldbyname( 'brxb' ).asstring;
    yjze.Text := floattostr( zy_sjyjje );
    zfy.Text := floattostr( zy_zfy );
    yjcs.Text := inttostr( zy_yjcs );
    sp_fymx.Active := false;
    sp_fymx.parameters.ParamByName( '@tmh' ).value := zy_tmh;
    sp_fymx.parameters.ParamByName( '@zyh' ).value := zy_zyh;
    sp_fymx.Open;
    SP_yymx.close;
    SP_yymx.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
    SP_yymx.Parameters.ParamByName( '@jsdh' ).value := '';
    jylyp := true;
    if sp_sebrqk.fieldbyname( 'fylb' ).asstring <> '03' then
        if application.MessageBox( '是否区分甲乙类药品？', '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 ) = IDNO then
        begin
            SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 0;
            jylyp := false;
        end;
    SP_yymx.Parameters.ParamByName( '@lb' ).value := 1;
    SP_yymx.open;
    if ( zy_fylb = '03' ) or ( zy_fylb = '05' ) or ( zy_fylb = '06' ) then
    begin
        sbzfze.Enabled := true;
        sbtcze.Enabled := true;
    end
    else
    begin
        sbzfze.Enabled := false;
        sbtcze.Enabled := false;
    end;
    proc_setfy;
    PageControl1.ActivePage := TabSheet1;
    b_save.Enabled := true;
    b_jsqd.Enabled := true;
    cyrq.SetFocus;
end;

procedure Tfrm_cyjs.DBGrid3Exit( Sender: TObject );
begin
    dbgrid3.Visible := false;
end;

procedure Tfrm_cyjs.DBGrid3KeyPress( Sender: TObject; var Key: Char );
begin
    if key = #13 then
        proc_getbrxx;
end;

procedure Tfrm_cyjs.tmhEnter( Sender: TObject );
begin
    sbzfze.text := '0';
end;

procedure Tfrm_cyjs.SP_yymxCalcFields( DataSet: TDataSet );
begin
    if ( sp_sebrqk.FieldByName( 'fylb' ).asstring = '03' ) or jylyp = true then
    begin
        sp_yymx['jylyp'] := '自费';
        if sp_yymx.FieldByName( 'sfjlyp' ).asboolean then
            sp_yymx['jylyp'] := '甲类'
        else
            if sp_yymx.FieldByName( 'sfylyp' ).asboolean then
                sp_yymx['jylyp'] := '乙类';
    end
    else
        sp_yymx['jylyp'] := '';
end;

procedure Tfrm_cyjs.qzsjPrint( sender: TObject; var Value: string );
begin
    value := formatdatetime( 'yyyy/mm/dd', sp_sebrqk.fieldbyname( 'ryrq' ).asdatetime ) + '-' + formatdatetime( 'yyyy/mm/dd', sp_sebrqk.fieldbyname( 'cyrq' ).asdatetime );

end;
initialization
    RegisterClass( Tfrm_cyjs );
end.

