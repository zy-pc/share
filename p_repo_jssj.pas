unit p_repo_jssj;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    QuickRpt, Qrctrls, ExtCtrls, dateutils, ADODB;

type
    Tfrm_repo_jssj = class( TForm )
        scjssj_sw: TQuickRep;
        PageHeaderBand1: TQRBand;
        brxm: TQRLabel;
        ksmc: TQRLabel;
        tmh: TQRLabel;
        ryrq: TQRLabel;
        cyrq: TQRLabel;
        zfy: TQRLabel;
        zfymc: TQRLabel;
        yymc: TQRLabel;
        czy: TQRLabel;
        jsrq: TQRLabel;
        QRDBText1: TQRDBText;
        QRDBText2: TQRDBText;
        QRDBText3: TQRDBText;
        QRDBText4: TQRDBText;
        QRDBText5: TQRDBText;
        QRDBText6: TQRDBText;
        QRDBText7: TQRDBText;
        QRDBText8: TQRDBText;
        QRDBText9: TQRDBText;
        QRDBText10: TQRDBText;
        QRDBText11: TQRDBText;
        QRDBText12: TQRDBText;
        QRDBText13: TQRDBText;
        QRDBText14: TQRDBText;
        QRDBText15: TQRDBText;
        QRDBText16: TQRDBText;
        QRDBText17: TQRDBText;
        sjh: TQRLabel;
        ytje: TQRLabel;
        zfze: TQRLabel;
        tcze: TQRLabel;
        yjze: TQRLabel;
        QRBand1: TQRBand;
        brxb: TQRLabel;
        brnl: TQRLabel;
        w: TQRLabel;
        q: TQRLabel;
        b: TQRLabel;
        s: TQRLabel;
        y: TQRLabel;
        j: TQRLabel;
        f: TQRLabel;
        QRLabel1: TQRLabel;
        QRLabel2: TQRLabel;
        QRLabel3: TQRLabel;
        QRLabel4: TQRLabel;
        QRLabel5: TQRLabel;
        QRLabel6: TQRLabel;
        QRLabel7: TQRLabel;
        QRLabel8: TQRLabel;
        QRLabel9: TQRLabel;
        QRLabel10: TQRLabel;
        QRLabel11: TQRLabel;
        QRLabel12: TQRLabel;
        sw: TQRLabel;
        jxjssj: TQuickRep;
        QRBand2: TQRBand;
        jx_brxm: TQRLabel;
        jx_r: TQRLabel;
        jx_tmh: TQRLabel;
        jx_y1: TQRLabel;
        jx_zyts: TQRLabel;
        jx_zfy: TQRLabel;
        jx_fh: TQRLabel;
        jx_jbr: TQRLabel;
        QRDBText18: TQRDBText;
        QRDBText19: TQRDBText;
        QRDBText20: TQRDBText;
        QRDBText21: TQRDBText;
        QRDBText22: TQRDBText;
        QRDBText23: TQRDBText;
        QRDBText24: TQRDBText;
        QRDBText25: TQRDBText;
        QRDBText26: TQRDBText;
        QRDBText27: TQRDBText;
        QRDBText28: TQRDBText;
        QRDBText29: TQRDBText;
        QRDBText30: TQRDBText;
        QRDBText31: TQRDBText;
        QRDBText34: TQRDBText;
        jx_sjh: TQRLabel;
        jx_ybje: TQRLabel;
        jx_yjze: TQRLabel;
        jx_n: TQRLabel;
        jx_y: TQRLabel;
        jx_dx: TQRLabel;
        QRBand3: TQRBand;
        QRLabel50: TQRLabel;
        jx_r1: TQRLabel;
        jx_y2: TQRLabel;
        jx_r2: TQRLabel;
        jx_ytje: TQRLabel;
        QRLabel14: TQRLabel;
        QRDBText32: TQRDBText;
        QRDBText33: TQRDBText;
        jx_ksmc: TQRLabel;
        QRDBText35: TQRDBText;
        scjssj_w: TQuickRep;
        QRBand4: TQRBand;
        brxm_w: TQRLabel;
        ksmc_w: TQRLabel;
        tmh_w: TQRLabel;
        ryrq_w: TQRLabel;
        cyrq_w: TQRLabel;
        zfy_w: TQRLabel;
        zfymc_w: TQRLabel;
        yymc_w: TQRLabel;
        czy_w: TQRLabel;
        jsrq_w: TQRLabel;
        QRDBText36: TQRDBText;
        QRDBText37: TQRDBText;
        QRDBText38: TQRDBText;
        QRDBText39: TQRDBText;
        QRDBText40: TQRDBText;
        QRDBText41: TQRDBText;
        QRDBText42: TQRDBText;
        QRDBText43: TQRDBText;
        QRDBText44: TQRDBText;
        QRDBText45: TQRDBText;
        QRDBText46: TQRDBText;
        QRDBText47: TQRDBText;
        QRDBText48: TQRDBText;
        QRDBText49: TQRDBText;
        QRDBText50: TQRDBText;
        QRDBText51: TQRDBText;
        QRDBText52: TQRDBText;
        sjh_w: TQRLabel;
        ytje_w: TQRLabel;
        zfze_w: TQRLabel;
        tcze_w: TQRLabel;
        yjze_w: TQRLabel;
        brxb_w: TQRLabel;
        brnl_w: TQRLabel;
        w_w: TQRLabel;
        q_w: TQRLabel;
        b_w: TQRLabel;
        s_w: TQRLabel;
        y_w: TQRLabel;
        j_w: TQRLabel;
        f_w: TQRLabel;
        QRBand5: TQRBand;
        QRLabel38: TQRLabel;
        QRLabel39: TQRLabel;
        QRLabel40: TQRLabel;
        QRLabel41: TQRLabel;
        QRLabel42: TQRLabel;
        QRLabel43: TQRLabel;
        QRLabel44: TQRLabel;
        QRLabel45: TQRLabel;
        QRLabel46: TQRLabel;
        QRLabel47: TQRLabel;
        QRLabel48: TQRLabel;
        QRLabel49: TQRLabel;
        QRLabel51: TQRLabel;
        xjjssj: TQuickRep;
        QRBand6: TQRBand;
        brxm_xj: TQRLabel;
        ksmc_xj: TQRLabel;
        tmh_xj: TQRLabel;
        ryrq_xj: TQRLabel;
        cyrq_xj: TQRLabel;
        yymc_xj: TQRLabel;
        sjh_xj: TQRLabel;
        xbnl_xj: TQRLabel;
        bydw_xj: TQRLabel;
        ts_xj: TQRLabel;
        jsrq_xj: TQRLabel;
        DetailBand1: TQRBand;
        FY01: TQRLabel;
        FY02: TQRLabel;
        FY03: TQRLabel;
        FY04: TQRLabel;
        fy05: TQRLabel;
        fy06: TQRLabel;
        QRBand7: TQRBand;
        zfy_xj: TQRLabel;
        ZYJ_xj: TQRLabel;
        ytje_xj: TQRLabel;
        YBJE_xj: TQRLabel;
        ZFYDX_xj: TQRLabel;
        czy_xj: TQRLabel;
        zfze_xj: TQRLabel;
        tcze_xj: TQRLabel;
        zyjdx_xj: TQRLabel;
        QRLabel27: TQRLabel;
        sxjssj: TQuickRep;
        QRBand8: TQRBand;
        brxm_sx: TQRLabel;
        ksmc_sx: TQRLabel;
        tmh_sx: TQRLabel;
        ryrq_sx: TQRLabel;
        cyrq_sx: TQRLabel;
        zfy_sx: TQRLabel;
        czy_sx: TQRLabel;
        jsrq_sx: TQRLabel;
        QRDBText53: TQRDBText;
        QRDBText54: TQRDBText;
        QRDBText55: TQRDBText;
        QRDBText56: TQRDBText;
        QRDBText57: TQRDBText;
        QRDBText58: TQRDBText;
        QRDBText59: TQRDBText;
        QRDBText60: TQRDBText;
        QRDBText61: TQRDBText;
        QRDBText62: TQRDBText;
        QRDBText63: TQRDBText;
        QRDBText64: TQRDBText;
        QRDBText65: TQRDBText;
        QRDBText66: TQRDBText;
        QRDBText67: TQRDBText;
        sjh_sx: TQRLabel;
        ytje_sx: TQRLabel;
        zfze_sx: TQRLabel;
        tcze_sx: TQRLabel;
        yjze_sx: TQRLabel;
        brxb_sx: TQRLabel;
        brnl_sx: TQRLabel;
        zyts_sx: TQRLabel;
        ybje_sx: TQRLabel;
        dxje_sx: TQRLabel;
        yymc_sx: TQRLabel;
        QRBand9: TQRBand;
        QRLabel15: TQRLabel;
        QuickRep1: TQuickRep;
        QRBand10: TQRBand;
        QRL_name: TQRLabel;
        QRL_tmh: TQRLabel;
        QRL_yyyy: TQRLabel;
        QRL_mm: TQRLabel;
        QRL_dd: TQRLabel;
        QRL_yyyy_z: TQRLabel;
        QRL_mm_z: TQRLabel;
        QRL_dd_z: TQRLabel;
        QRL_ts: TQRLabel;
        QRL_xyf: TQRLabel;
        QRL_zcyf: TQRLabel;
        QRL_zcf: TQRLabel;
        QRL_qtf: TQRLabel;
        QRL_zlf: TQRLabel;
        QRL_fsf: TQRLabel;
        QRL_hyf: TQRLabel;
        QRL_jcf: TQRLabel;
        QRL_ssf: TQRLabel;
        QRL_xf: TQRLabel;
        QRL_hlf: TQRLabel;
        QRL_cwf: TQRLabel;
        QRL_w_h: TQRLabel;
        QRL_q_h: TQRLabel;
        QRL_b_h: TQRLabel;
        QRL_s_h: TQRLabel;
        QRL_y_h: TQRLabel;
        QRL_j_h: TQRLabel;
        QRL_f_h: TQRLabel;
        QRL_f_y: TQRLabel;
        QRL_j_y: TQRLabel;
        QRL_y_y: TQRLabel;
        QRL_s_y: TQRLabel;
        QRL_b_y: TQRLabel;
        QRL_q_y: TQRLabel;
        QRL_w_y: TQRLabel;
        QRL_xs: TQRLabel;
        QRL_fh: TQRLabel;
        QRL_sfy: TQRLabel;
        QRL_yt: TQRLabel;
        QRL_yyyy_d: TQRLabel;
        QRL_mm_d: TQRLabel;
        QRL_dd_d: TQRLabel;
        QRL_cyf: TQRLabel;
        QRL_kzf_c: TQRLabel;
        QRL_kzf: TQRLabel;
        QRL_sbzf_c: TQRLabel;
        QRL_sbzf: TQRLabel;
        QRL_xjzf_c: TQRLabel;
        QRL_xjzf: TQRLabel;
        QRLabel13: TQRLabel;
        xxjssj: TQuickRep;
        QRLabel16: TQRLabel;
        PageHeaderBand2: TQRBand;
        DetailBand2: TQRBand;
        PageFooterBand1: TQRBand;
        sjbh_xx: TQRLabel;
        QRExpr1: TQRExpr;
        brxm_xx: TQRLabel;
        xb_xx: TQRLabel;
        zyh_xx: TQRLabel;
        zyts_xx: TQRLabel;
        ksmc_xx: TQRLabel;
    ryrq_xx: TQRLabel;
    cyrq_xx: TQRLabel;
        zfy_xx: TQRLabel;
        cjyj_xx: TQRLabel;
        ytje_xx: TQRLabel;
        ybje_xx: TQRLabel;
        dx_xx: TQRLabel;
        czy_xx: TQRLabel;
    je01: TQRLabel;
    xm01: TQRLabel;
    xm02: TQRLabel;
    je02: TQRLabel;
        procedure QRDBText2Print( sender: TObject; var Value: string );
        procedure PageHeaderBand1BeforePrint( Sender: TQRCustomBand;
            var PrintBand: Boolean );
        procedure QRDBText36Print( sender: TObject; var Value: string );
        procedure printjssj( zy_zyh, zy_sjbh, zy_brxm,
            zy_brxb, zy_brnl, zy_ksmc, zy_fylb, zy_tmh: string; zy_zfy, zy_ytjejs, zy_ybjejs,
            zy_sbzfje, zy_sbtcje, sjyjze: real; zy_ryrq, zy_cyrq: Tdatetime;
            zy_csrq: string = '2007-12-12'; zy_brdz: string = ''; sp_tj_fydl: TADOStoredProc = nil );
        procedure xjjssjNeedData( Sender: TObject; var MoreData: Boolean );
        procedure xxjssjNeedData( Sender: TObject; var MoreData: Boolean );
    private
        procedure fldxjeSw( zy_zfy: real );
        procedure fldxjeW( zy_zfy: real );

        procedure proc_jxsj( zy_zyh, zy_sjbh, zy_brxm, zy_ksmc, zy_tmh: string;
            zy_zfy, zy_ytjejs, zy_ybjejs, sjyjze: real; zy_ryrq, cyrq: tdatetime );
        procedure Proc_Scsj_Sw( zy_zyh, zy_sjbh, zy_brxm, zy_brxb, zy_brnl, zy_ksmc,
            zy_fylb, zy_tmh: string; zy_zfy, zy_ytjejs, zy_ybjejs, zy_sbzfje,
            zy_sbtcje, sjyjze: real; zy_ryrq, zy_cyrq: Tdatetime );
        procedure Proc_Scsj_W( zy_zyh, zy_sjbh, zy_brxm, zy_brxb, zy_brnl, zy_ksmc,
            zy_fylb, zy_tmh: string; zy_zfy, zy_ytjejs, zy_ybjejs, zy_sbzfje,
            zy_sbtcje, sjyjze: real; zy_ryrq, zy_cyrq: Tdatetime );
        //procedure xjsjdlmx( sp_tj_fydl: TADOStoredProc );
        procedure proc_xjsj( sp_tj_fydl: TADOStoredProc; zy_brxm, zy_ksmc, zy_sjbh,
            zy_tmh, zy_fylb, zy_brdz, zy_brxb: string; zy_zfy, zy_sjyjze, zy_ytjejs,
            zy_ybjejs, zy_sbzfje, zy_sbtcje: real; zy_csrq, zy_ryrq,
            zy_cyrq: Tdatetime );
        procedure proc_sxsj( zy_brxm, zy_ksmc, zy_sjbh,
            zy_tmh, zy_fylb, zy_brdz, zy_brxb: string; zy_zfy, zy_sjyjze, zy_ytjejs,
            zy_ybjejs, zy_sbzfje, zy_sbtcje: real; zy_csrq, zy_ryrq,
            zy_cyrq: Tdatetime );
        procedure proc_xxsj( sp_tj_fydl: TADOStoredProc; zy_brxm, zy_ksmc, zy_sjbh,
            zy_tmh, zy_fylb, zy_brdz, zy_brxb: string; zy_zfy, zy_sjyjze, zy_ytjejs,
            zy_ybjejs, zy_sbzfje, zy_sbtcje: real; zy_csrq, zy_ryrq,
            zy_cyrq: Tdatetime );
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frm_repo_jssj: Tfrm_repo_jssj;

    sp_temp: TADOStoredProc;

implementation
uses p_dm, p_func;
{$R *.DFM}

//金额 小写转为大写 方法

function NumToChar( n: Real ): wideString;
const
    cNum: WideString = '零壹贰叁肆伍陆柒捌玖-万仟佰拾亿仟佰拾万仟佰拾元角分';
    cCha: array[0..1, 0..11] of string =
    ( ( '零仟', '零佰', '零拾', '零零零', '零零',
        '零亿', '零万', '零元', '亿万', '零角', '零分', '零整' ),
        ( '零', '零', '零', '零', '零', '亿', '万', '元', '亿', '零', '整', '整' ) );
var
    i: Integer;
    sNum: WideString;
begin
    result := '';
    sNum := FormatFloat( '0', n * 100 );
    for i := 1 to Length( sNum ) do
    begin
        result := result + cNum[ord( sNum[i] ) - 47] + cNum[26 - Length( sNum ) + i];
    end;
    for i := 0 to 11 do //去掉多余的零
        result := StringReplace( result, cCha[0, i], cCha[1, i], [rfReplaceAll] );
end;

//---------calmhawk--2007-12-27----打印结算收据-------------
//--------后面参数 zy_csrq,zy_brdz,sp_tj_fydl,为新疆收据专用,---------

procedure Tfrm_repo_jssj.printjssj( zy_zyh, zy_sjbh, zy_brxm,
    zy_brxb, zy_brnl, zy_ksmc, zy_fylb, zy_tmh: string; zy_zfy, zy_ytjejs, zy_ybjejs,
    zy_sbzfje, zy_sbtcje, sjyjze: real; zy_ryrq, zy_cyrq: Tdatetime;
    zy_csrq: string = '2007-12-12'; zy_brdz: string = ''; sp_tj_fydl: TADOStoredProc = nil );
begin

    dm_data.sp_dysj.Active := false;
    dm_data.sp_dysj.parameters.ParamByName( '@zyh' ).value := zy_zyh;
    dm_data.sp_dysj.parameters.ParamByName( '@sjbh' ).value := zy_sjbh;
    dm_data.sp_dysj.open;

    if pub_zyjssjlx = '010201' then //---010201  四川省万位收据
    begin
        Proc_Scsj_w( zy_zyh, zy_sjbh, zy_brxm,
            zy_brxb, zy_brnl, zy_ksmc, zy_fylb, zy_tmh, zy_zfy, zy_ytjejs, zy_ybjejs,
            zy_sbzfje, zy_sbtcje, sjyjze, zy_ryrq, zy_cyrq );
    end;
    if pub_zyjssjlx = '010202' then //---010202  四川省十万位收据
    begin
        Proc_Scsj_SW( zy_zyh, zy_sjbh, zy_brxm,
            zy_brxb, zy_brnl, zy_ksmc, zy_fylb, zy_tmh, zy_zfy, zy_ytjejs, zy_ybjejs,
            zy_sbzfje, zy_sbtcje, sjyjze, zy_ryrq, zy_cyrq );
    end;
    if pub_zyjssjlx = '040201' then //---040201  江西省收据
    begin
        proc_jxsj( zy_zyh, zy_sjbh, zy_brxm, zy_ksmc, zy_tmh, zy_zfy,
            zy_ytjejs, zy_ybjejs, sjyjze, zy_ryrq, zy_cyrq );
    end;
    if pub_zyjssjlx = '030201' then //---030201  新疆收据
    begin
        proc_xjsj( sp_tj_fydl, zy_brxm,
            zy_ksmc, zy_sjbh, zy_tmh, zy_fylb, zy_brdz, zy_brxb,
            zy_zfy, sjyjze, zy_ytjejs, zy_ybjejs, zy_sbzfje, zy_sbtcje,
            strtodatetime( zy_csrq ), zy_ryrq, zy_cyrq )
    end;
    if pub_zyjssjlx = '020201' then //---020201  陕西收据
    begin
        proc_sxsj( zy_brxm,
            zy_ksmc, zy_sjbh, zy_tmh, zy_fylb, zy_brdz, zy_brxb,
            zy_zfy, sjyjze, zy_ytjejs, zy_ybjejs, zy_sbzfje, zy_sbtcje,
            strtodatetime( zy_csrq ), zy_ryrq, zy_cyrq )
    end;
    if pub_zyjssjlx = '020202' then //---020202  西乡收据
    begin
        proc_xxsj( sp_tj_fydl, zy_brxm,
            zy_ksmc, zy_sjbh, zy_tmh, zy_fylb, zy_brdz, zy_brxb,
            zy_zfy, sjyjze, zy_ytjejs, zy_ybjejs, zy_sbzfje, zy_sbtcje,
            strtodatetime( zy_csrq ), zy_ryrq, zy_cyrq )
    end;
end;

procedure Tfrm_repo_jssj.QRDBText2Print( sender: TObject;
    var Value: string );
begin
    if trim( value ) <> '' then
    begin
        if pos( '.', value ) = 0 then
            value := value + '.00'
        else
            if length( copy( value, pos( '.', value ) + 1, 2 ) ) < 2 then
                value := value + stringofchar( '0', 2 - length( copy( value, pos( '.', value ) + 1, 2 ) ) );
    end;
end;

procedure Tfrm_repo_jssj.QRDBText36Print( sender: TObject; var Value: string );
begin
    if trim( value ) <> '' then
        value := formatfloat( '0.00', strtofloat( value ) );
end;

procedure Tfrm_repo_jssj.PageHeaderBand1BeforePrint( Sender: TQRCustomBand;
    var PrintBand: Boolean );
var
    i: Integer;
    fieldname_KMMC, fieldname_Value: string;
begin
    fieldname_KMMC := '';
    fieldname_Value := '';
    for I := DM_data.sp_dysj.FindField( 'F118_KMMC' ).Index to DM_data.sp_dysj.FieldCount - 1 do
    begin
        if not DM_data.sp_dysj.fields[i].IsNull then
        begin
            if QRLabel1.Caption = ' ' then
            begin
                QRLabel1.Caption := DM_data.sp_dysj.fields[i].AsString;
                fieldname_KMMC := DM_data.sp_dysj.fields[i].FieldName;
                fieldname_Value := copy( fieldname_KMMC, 1, Pos( '_', fieldname_KMMC ) - 1 );
                QRLabel2.Caption := DM_data.sp_dysj.fieldbyname( fieldname_Value ).AsString;
                continue;
            end;
            if QRLabel3.Caption = ' ' then
            begin
                QRLabel3.Caption := DM_data.sp_dysj.fields[i].AsString;
                fieldname_KMMC := DM_data.sp_dysj.fields[i].FieldName;
                fieldname_Value := copy( fieldname_KMMC, 1, Pos( '_', fieldname_KMMC ) - 1 );
                QRLabel4.Caption := DM_data.sp_dysj.fieldbyname( fieldname_Value ).AsString;
                continue;
            end;
            if QRLabel5.Caption = ' ' then
            begin
                QRLabel5.Caption := DM_data.sp_dysj.fields[i].AsString;
                fieldname_KMMC := DM_data.sp_dysj.fields[i].FieldName;
                fieldname_Value := copy( fieldname_KMMC, 1, Pos( '_', fieldname_KMMC ) - 1 );
                QRLabel6.Caption := DM_data.sp_dysj.fieldbyname( fieldname_Value ).AsString;
                continue;
            end;
            if QRLabel7.Caption = ' ' then
            begin
                QRLabel7.Caption := DM_data.sp_dysj.fields[i].AsString;
                fieldname_KMMC := DM_data.sp_dysj.fields[i].FieldName;
                fieldname_Value := copy( fieldname_KMMC, 1, Pos( '_', fieldname_KMMC ) - 1 );
                QRLabel8.Caption := DM_data.sp_dysj.fieldbyname( fieldname_Value ).AsString;
                continue;
            end;
            if QRLabel9.Caption = ' ' then
            begin
                QRLabel9.Caption := DM_data.sp_dysj.fields[i].AsString;
                fieldname_KMMC := DM_data.sp_dysj.fields[i].FieldName;
                fieldname_Value := copy( fieldname_KMMC, 1, Pos( '_', fieldname_KMMC ) - 1 );
                QRLabel10.Caption := DM_data.sp_dysj.fieldbyname( fieldname_Value ).AsString;
                continue;
            end;
            if QRLabel11.Caption = ' ' then
            begin
                QRLabel11.Caption := DM_data.sp_dysj.fields[i].AsString;
                fieldname_KMMC := DM_data.sp_dysj.fields[i].FieldName;
                fieldname_Value := copy( fieldname_KMMC, 1, Pos( '_', fieldname_KMMC ) - 1 );
                QRLabel12.Caption := DM_data.sp_dysj.fieldbyname( fieldname_Value ).AsString;
                continue;
            end;
        end;
    end;

end;

procedure Tfrm_repo_jssj.proc_xjsj( sp_tj_fydl: TADOStoredProc; zy_brxm,
    zy_ksmc, zy_sjbh, zy_tmh, zy_fylb, zy_brdz, zy_brxb: string;
    zy_zfy, zy_sjyjze, zy_ytjejs, zy_ybjejs, zy_sbzfje, zy_sbtcje: real;
    zy_csrq, zy_ryrq, zy_cyrq: Tdatetime );
begin
    yymc_xj.caption := pub_yymc;
    zfy_xj.caption := formatfloat( '0.00', zy_zfy );
    zyj_xj.caption := formatfloat( '0.00', zy_sjyjze );
    bydw_xj.caption := zy_brdz;
    xbnl_xj.caption := zy_brxb +
        inttostr( ( trunc( ( frm_func.curr_date - zy_csrq ) / 365 ) ) );
    if formatdatetime( 'yyyymmdd', zy_cyrq ) = formatdatetime( 'yyyymmdd', zy_ryrq ) then
        ts_xj.caption := '1'
    else
        ts_xj.caption := INTtostr( TRUNC( zy_cyrq - zy_ryrq ) );
    ZFYDX_xj.caption := NumberToMoney( zy_zfy );
    ZYJDX_xj.caption := NumberToMoney( zy_sjyjze );
    if zy_ytjejs > 0 then
        ytje_xj.caption := format( '%8.2f', [zy_ytjejs] );
    if zy_ybjejs > 0 then
        ybje_xj.caption := format( '%8.2f', [zy_ybjejs] );
    if ( zy_ytjejs = 0 ) then ytje_xj.caption := '';
    if ( zy_ybjejs = 0 ) then ybje_xj.caption := '';
    brxm_xj.caption := zy_brxm;
    sjh_xj.caption := zy_sjbh;
    ksmc_xj.caption := zy_ksmc;
    tmh_xj.caption := zy_tmh;
    jsrq_xj.caption := datetimetostr( frm_func.curr_date );
    czy_xj.caption := pub_czyxm;
    if ( zy_fylb = '03' ) or ( zy_fylb = '05' ) or ( zy_fylb = '11' ) then
    begin
        zfze_xj.caption := '自付:' + format( '%8.2f', [zy_sbzfje] );
        tcze_xj.caption := '统筹:' + format( '%8.2f', [zy_sbtcje] );
    end
    else
        if zy_fylb = '06' then
        begin
            zfze_xj.caption := '自付:' + format( '%8.2f', [zy_sbzfje] );
            tcze_xj.caption := '减免:' + format( '%8.2f', [zy_sbtcje] );
        end
        else
        begin
            zfze_xj.caption := '';
            tcze_xj.caption := '';
        end;
    ryrq_xj.caption := ' ' + formatdatetime( 'yyyy-mm-dd', zy_ryrq );
    cyrq_xj.caption := ' ' + formatdatetime( 'yyyy-mm-dd', zy_cyrq );
    sp_tj_fydl.first;
    sp_temp := sp_tj_fydl;
    xjjssj.print;
end;

procedure Tfrm_repo_jssj.xjjssjNeedData( Sender: TObject; var MoreData: Boolean );
var
    I: integer;
begin

    MoreData := True;
    i := 1;
    if sp_temp.Eof then
        MoreData := False;
    fy01.Caption := '';
    fy02.Caption := '';
    fy03.Caption := '';
    fy04.Caption := '';
    fy05.Caption := '';
    fy06.Caption := '';
    for i := 1 to 3 do
    begin
        if sp_temp.eof then
            break;
        case I of
            1:
                begin
                    fy01.Caption := sp_temp.FieldByName( 'kmmc' ).AsString;
                    fy02.Caption := format( '%8.2f', [sp_temp.FieldByName( 'fyje' ).Asfloat] );
                end;
            2:
                begin
                    fy03.Caption := sp_temp.FieldByName( 'kmmc' ).AsString;
                    fy04.Caption := format( '%8.2f', [sp_temp.FieldByName( 'fyje' ).Asfloat] );
                end;
            3:
                begin
                    fy05.Caption := sp_temp.FieldByName( 'kmmc' ).AsString;
                    fy06.Caption := format( '%8.2f', [sp_temp.FieldByName( 'fyje' ).Asfloat] );
                end;
        end;
        sp_temp.Next;
    end;

end;

procedure Tfrm_repo_jssj.xxjssjNeedData( Sender: TObject; var MoreData: Boolean );
var
    I: integer;
begin
    MoreData := True;
    i := 1;
    if sp_temp.Eof then
        MoreData := False;
    xm01.Caption := '';
    xm02.Caption := '';
    je01.Caption := '';
    je02.Caption := '';

    for i := 1 to 2 do
    begin
        if sp_temp.eof then
            break;
        case I of
            1:
                begin
                    xm01.Caption := trim(sp_temp.FieldByName( 'kmmc' ).AsString);
                    je01.Caption := trim(format( '%8.2f', [sp_temp.FieldByName( 'fyje' ).Asfloat] ));
                end;
            2:
                begin
                    xm02.Caption := trim(sp_temp.FieldByName( 'kmmc' ).AsString);
                    je02.Caption := trim(format( '%8.2f', [sp_temp.FieldByName( 'fyje' ).Asfloat] ));
                end;
        end;
        sp_temp.Next;
    end;
end;

procedure Tfrm_repo_jssj.Proc_Scsj_Sw( zy_zyh, zy_sjbh, zy_brxm,
    zy_brxb, zy_brnl, zy_ksmc, zy_fylb, zy_tmh: string; zy_zfy, zy_ytjejs, zy_ybjejs,
    zy_sbzfje, zy_sbtcje, sjyjze: real; zy_ryrq, zy_cyrq: Tdatetime );
begin
    yymc.caption := pub_yymc;
    zfy.caption := format( '%8.2f', [zy_zfy] );
    fldxjeSw( zy_zfy );
    brxm.caption := zy_brxm;
    brxb.caption := zy_brxb;
    brnl.caption := zy_brnl;
    sjh.caption := zy_sjbh + inttostr( strtoint( zy_sjbh ) mod 9 );
    ksmc.caption := zy_ksmc;
    tmh.caption := zy_tmh;
    jsrq.caption := formatdatetime( 'yyyy-mm-dd', frm_func.curr_date );
    czy.caption := pub_czyxm;
    if zy_ytjejs > 0 then
        ytje.caption := '退：' + format( '%8.2f', [zy_ytjejs] );
    if zy_ybjejs > 0 then
        ytje.caption := '补：' + format( '%8.2f', [zy_ybjejs] );
    if ( zy_ytjejs = 0 ) and ( zy_ybjejs = 0 ) then ytje.caption := '';
    if ( zy_fylb = '03' ) or ( zy_fylb = '05' ) or ( zy_fylb = '11' ) then
    begin
        zfze.caption := '自付:' + format( '%8.2f', [zy_sbzfje] );
        tcze.caption := '统筹:' + format( '%8.2f', [zy_sbtcje] );
    end
    else
        if zy_fylb = '06' then
        begin
            zfze.caption := '自付:' + format( '%8.2f', [zy_sbzfje] );
            tcze.caption := '减免:' + format( '%8.2f', [zy_sbtcje] );
        end
        else
        begin
            zfze.caption := '';
            tcze.caption := '';
        end;
    yjze.Caption := formatfloat( '0.00', sjyjze );
    ryrq.caption := formatdatetime( 'yyyy-mm-dd', zy_ryrq );
    cyrq.caption := formatdatetime( 'yyyy-mm-dd', zy_cyrq );
    scjssj_Sw.print;
end;

//-----------------------四川结算收据----万位------

procedure Tfrm_repo_jssj.Proc_Scsj_W( zy_zyh, zy_sjbh, zy_brxm,
    zy_brxb, zy_brnl, zy_ksmc, zy_fylb, zy_tmh: string; zy_zfy, zy_ytjejs, zy_ybjejs,
    zy_sbzfje, zy_sbtcje, sjyjze: real; zy_ryrq, zy_cyrq: Tdatetime );
begin
    yymc_w.caption := pub_yymc;
    zfy_w.caption := format( '%8.2f', [zy_zfy] );
    fldxjew( zy_zfy );
    brxm_w.caption := zy_brxm;
    brxb_w.caption := zy_brxb;
    brnl_w.caption := zy_brnl;
    sjh_w.caption := zy_sjbh + inttostr( strtoint( zy_sjbh ) mod 9 );
    ksmc_w.caption := zy_ksmc;
    tmh_w.caption := zy_tmh;
    jsrq_w.caption := formatdatetime( 'yyyy-mm-dd', frm_func.curr_date );
    czy_w.caption := pub_czyxm;
    if zy_ytjejs > 0 then
        ytje_w.caption := '退：' + format( '%8.2f', [zy_ytjejs] );
    if zy_ybjejs > 0 then
        ytje_w.caption := '补：' + format( '%8.2f', [zy_ybjejs] );
    if ( zy_ytjejs = 0 ) and ( zy_ybjejs = 0 ) then ytje_w.caption := '';
    if ( zy_fylb = '03' ) or ( zy_fylb = '05' ) or ( zy_fylb = '11' ) then
    begin
        zfze_w.caption := '自付:' + format( '%8.2f', [zy_sbzfje] );
        tcze_w.caption := '统筹:' + format( '%8.2f', [zy_sbtcje] );
    end
    else
        if zy_fylb = '06' then
        begin
            zfze_w.caption := '自付:' + format( '%8.2f', [zy_sbzfje] );
            tcze_w.caption := '减免:' + format( '%8.2f', [zy_sbtcje] );
        end
        else
        begin
            zfze_w.caption := '';
            tcze_w.caption := '';
        end;
    yjze_w.Caption := formatfloat( '0.00', sjyjze );
    ryrq_w.caption := formatdatetime( 'yyyy-mm-dd', zy_ryrq );
    cyrq_w.caption := formatdatetime( 'yyyy-mm-dd', zy_cyrq );
    scjssj_w.print;
end;
//----------calmhawk--2007-12-13---江西结算收据----------

procedure Tfrm_repo_jssj.proc_jxsj( zy_zyh, zy_sjbh, zy_brxm, zy_ksmc, zy_tmh: string; zy_zfy,
    zy_ytjejs, zy_ybjejs, sjyjze: real; zy_ryrq, cyrq: tdatetime );
begin
    jx_zfy.caption := format( '%8.2f', [zy_zfy] );
    jx_brxm.caption := zy_brxm;
    jx_sjh.caption := zy_sjbh + inttostr( strtoint( zy_sjbh ) mod 9 );
    jx_ksmc.caption := zy_ksmc;
    jx_tmh.caption := zy_tmh;
    jx_n.caption := formatdatetime( 'yyyy', frm_func.curr_date );
    jx_y.caption := formatdatetime( 'mm', frm_func.curr_date );
    jx_r.caption := formatdatetime( 'dd', frm_func.curr_date );
    jx_y1.caption := formatdatetime( 'mm', zy_ryrq );
    jx_r1.caption := formatdatetime( 'dd', zy_ryrq );
    jx_y2.caption := formatdatetime( 'mm', cyrq );
    jx_r2.caption := formatdatetime( 'dd', cyrq );
    jx_zyts.caption := intToStr( DaysBetween( zy_ryrq, cyrq ) );
    jx_jbr.caption := pub_czyxm;
    if zy_ytjejs > 0 then
    begin
        jx_ytje.caption := format( '%8.2f', [zy_ytjejs] ); // '退：'
        jx_ybje.caption := ''; // '补：' +
    end;
    if zy_ybjejs > 0 then
    begin
        jx_ybje.caption := format( '%8.2f', [zy_ybjejs] ); // '补：' +
        jx_ytje.caption := '';
    end;
    if ( zy_ytjejs = 0 ) and ( zy_ybjejs = 0 ) then frm_repo_jssj.ytje.caption := '';

    jx_yjze.Caption := formatfloat( '0.00', sjyjze );
    jx_dx.Caption := NumToChar( zy_zfy );
    jxjssj.print;
end;

//-----calmhawk--2007-12-13---陕西结算收据--------

procedure Tfrm_repo_jssj.proc_sxsj( zy_brxm,
    zy_ksmc, zy_sjbh, zy_tmh, zy_fylb, zy_brdz, zy_brxb: string;
    zy_zfy, zy_sjyjze, zy_ytjejs, zy_ybjejs, zy_sbzfje, zy_sbtcje: real;
    zy_csrq, zy_ryrq, zy_cyrq: Tdatetime );
begin

    yymc_sx.caption := pub_yymc;
    zfy_sx.caption := format( '%8.2f', [zy_zfy] );
    //       fldxje;
    dxje_sx.caption := NumberToMoney( zy_zfy );
    brxm_sx.caption := zy_brxm;
    brxb_sx.caption := zy_brxb;
    brnl_sx.caption := inttostr( strtoint( formatdatetime( 'yyyy', frm_func.curr_date ) ) - strtoint( formatdatetime( 'yyyy', zy_csrq ) ) + 1 );
    sjh_sx.caption := zy_sjbh + inttostr( strtoint( zy_sjbh ) mod 9 );
    ksmc_sx.caption := zy_ksmc;
    tmh_sx.caption := zy_tmh;
    jsrq_sx.caption := formatdatetime( 'yyyy-mm-dd', frm_func.curr_date );
    czy_sx.caption := pub_czyxm;
    if zy_ytjejs > 0 then
        ytje_sx.caption := format( '%8.2f', [zy_ytjejs] )
    else
        ytje_sx.caption := '';
    if zy_ybjejs > 0 then
        ybje_sx.caption := format( '%8.2f', [zy_ybjejs] )
    else
        ybje_sx.caption := '';
    if ( zy_ytjejs = 0 ) and ( zy_ybjejs = 0 ) then ytje_sx.caption := '';
    if ( zy_fylb = '03' ) or ( zy_fylb = '05' ) then
    begin
        zfze_sx.caption := format( '%8.2f', [zy_sbzfje] );
        tcze_sx.caption := format( '%8.2f', [zy_sbtcje] );
    end
    else
    begin
        zfze_sx.caption := '';
        tcze_sx.caption := '';
    end;
    yjze_sx.Caption := formatfloat( '0.00', zy_sjyjze );
    ryrq_sx.caption := formatdatetime( 'yyyy-mm-dd', zy_ryrq );
    if formatdatetime( 'yyyy-mm-dd', zy_ryrq ) = formatdatetime( 'yyyy-mm-dd', zy_cyrq ) then
        zyts_sx.Caption := '1'
    else
        zyts_sx.Caption := inttostr( round( zy_cyrq - zy_ryrq + 0.5 ) );

    cyrq_sx.caption := formatdatetime( 'yyyy-mm-dd', zy_cyrq );
    sxjssj.print;
end;

{procedure Tfrm_repo_jssj.proc_sxsj( zy_brxm,
    zy_ksmc, zy_sjbh, zy_tmh, zy_fylb, zy_brdz, zy_brxb: string;
    zy_zfy, zy_sjyjze, zy_ytjejs, zy_ybjejs, zy_sbzfje, zy_sbtcje: real;
    zy_csrq, zy_ryrq, zy_cyrq: Tdatetime );
begin
     //查询:卡支付,医保自付,现金自付
  qry_seek_zf.Close;
  qry_seek_zf.Parameters.ParamByName('zyh').value:= trim(zy_zyh);
  qry_seek_zf.Open;
//---------------------------

  application.CreateForm(Tfrm_repo_jssj,frm_repo_jssj);
  with frm_repo_jssj do
  begin
    QRL_name.Caption:= zy_brxm;
    QRL_tmh.Caption:= zy_tmh;
    QRL_ts.Caption:= IntToStr(Trunc(cyrq.DateTime - zy_ryrq));
    QRL_xyf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F101').AsFloat]);
    QRL_zcyf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F102').AsFloat]);
    QRL_cyf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F103').AsFloat]);
    QRL_zcf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F104').AsFloat]);
    QRL_jcf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F105').AsFloat]);
    QRL_hyf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F106').AsFloat]);
    QRL_fsf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F107').AsFloat]);
    QRL_zlf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F108').AsFloat]);
    QRL_ssf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F109').AsFloat]);
    QRL_xf.Caption := Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F110').AsFloat]);
    QRL_hlf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F111').AsFloat]);
    QRL_cwf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F112').AsFloat]);
    QRL_qtf.Caption:= Format('%8.2f',[dm_data.sp_dysj.fieldbyname('F113').AsFloat]);

    QRL_xs.Caption:= Format('%8.2f',[zy_ybje]);//现收;
    QRL_yt.Caption:= Format('%8.2f',[zy_ytje]);//应退;
    QRL_fh.Caption:= '';//复核;
    QRL_sfy.Caption:= pub_czyxm;//收费员;

    //设置新加打印项目
    QRL_kzf_c.Enabled := (qry_seek_zf.RecordCount > 0);
    QRL_sbzf_c.Enabled:= (qry_seek_zf.RecordCount > 0);
    QRL_xjzf_c.Enabled:= (qry_seek_zf.RecordCount > 0);
    QRL_kzf.Enabled   := (qry_seek_zf.RecordCount > 0);
    QRL_sbzf.Enabled  := (qry_seek_zf.RecordCount > 0);
    QRL_xjzf.Enabled  := (qry_seek_zf.RecordCount > 0);
    QRL_kzf.Caption := Format('%8.2f',[qry_seek_zf.FieldByName('kzf').AsFloat] );
    QRL_sbzf.Caption:= Format('%8.2f',[qry_seek_zf.FieldByName('ybzf').AsFloat]);
    QRL_xjzf.Caption:= Format('%8.2f',[qry_seek_zf.FieldByName('zfje').AsFloat]);
    //------------------------------
  end;

  fldxje;//设置大写金额
  Proc_SetDate;//设置日期

    frm_repo_jssj.QuickRep1.print;
end; }

//-------西乡住院结算收据----------------------------------------------
procedure Tfrm_repo_jssj.proc_xxsj( sp_tj_fydl: TADOStoredProc; zy_brxm,
    zy_ksmc, zy_sjbh, zy_tmh, zy_fylb, zy_brdz, zy_brxb: string;
    zy_zfy, zy_sjyjze, zy_ytjejs, zy_ybjejs, zy_sbzfje, zy_sbtcje:                                                                                                                                                                                                real;
    zy_csrq, zy_ryrq, zy_cyrq: Tdatetime );
begin
    //yymc_xx.caption := pub_yymc;
    zfy_xx.caption := formatfloat( '0.00', zy_zfy );
    cjyj_xx.caption := formatfloat( '0.00', zy_sjyjze );
    //bydw_xx.caption := zy_brdz;
    xb_xx.caption := zy_brxb;
        //inttostr( ( trunc( ( frm_func.curr_date - zy_csrq ) / 365 ) ) );
    if formatdatetime( 'yyyymmdd', zy_cyrq ) = formatdatetime( 'yyyymmdd', zy_ryrq ) then
        zyts_xx.caption := '1'
    else
        zyts_xx.caption := INTtostr( TRUNC( zy_cyrq - zy_ryrq ) );
    DX_xx.caption := NumberToMoney( zy_zfy );
    //ZYJDX_xx.caption := NumberToMoney( zy_sjyjze );
    if zy_ytjejs > 0 then
        ytje_xx.caption := format( '%8.2f', [zy_ytjejs] );
    if zy_ybjejs > 0 then
        ybje_xx.caption := format( '%8.2f', [zy_ybjejs] );
    if ( zy_ytjejs = 0 ) then ytje_xx.caption := '';
    if ( zy_ybjejs = 0 ) then ybje_xx.caption := '';
    brxm_xx.caption := zy_brxm;
    sjbh_xx.caption := zy_sjbh;
    ksmc_xx.caption := zy_ksmc;
    zyh_xx.caption := zy_tmh;
    //jsrq_xx.caption := datetimetostr( frm_func.curr_date );
    czy_xx.caption := pub_czyxm;
    {if ( zy_fylb = '03' ) or ( zy_fylb = '05' ) or ( zy_fylb = '11' ) then
    begin
        zfze_xx.caption := '自付:' + format( '%8.2f', [zy_sbzfje] );
        tcze_xx.caption := '统筹:' + format( '%8.2f', [zy_sbtcje] );
    end
    else
        if zy_fylb = '06' then
        begin
            zfze_xx.caption := '自付:' + format( '%8.2f', [zy_sbzfje] );
            tcze_xx.caption := '减免:' + format( '%8.2f', [zy_sbtcje] );
        end
        else
        begin
            zfze_xx.caption := '';
            tcze_xx.caption := '';
        end;}
    ryrq_xx.caption := ' ' + formatdatetime( 'yyyy-mm-dd', zy_ryrq );
    cyrq_xx.caption := ' ' + formatdatetime( 'yyyy-mm-dd', zy_cyrq );
    sp_tj_fydl.first;
    sp_temp := sp_tj_fydl;
    xxjssj.print;
end;

procedure Tfrm_repo_jssj.fldxjeSw( zy_zfy: real );
var
    zje: string;
    s1, s2, sw1: string;
    i: integer;
begin
    zje := NumberToMoney( zy_zfy );
    sW.Caption := '';
    W.Caption := '';
    Q.Caption := '';
    B.Caption := '';
    S.Caption := '';
    Y.Caption := '';
    j.Caption := '';
    F.Caption := '';
    s2 := floattostr( zy_zfy );
    if pos( '.', s2 ) = 0 then
        s2 := s2 + '.00'
    else
        if length( copy( s2, pos( '.', s2 ) + 1, 2 ) ) < 2 then
            s2 := s2 + stringofchar( '0', 2 - length( copy( s2, pos( '.', s2 ) + 1, 2 ) ) );
    s2 := stringofchar( '0', 7 - pos( '.', s2 ) ) + s2;
    for i := 0 to 8 do
        if s2[I + 1] <> '.' then
            s1 := s1 + dxsz[strtoint( s2[i + 1] )];

    if pos( '万', zje ) <> 0 then
    begin
        sw1 := copy( zje, 1, pos( '万', zje ) + 1 );
        if pos( '拾', sw1 ) <> 0 then
        begin
            sw.Caption := copy( sw1, 1, pos( '拾', sw1 ) - 1 );
            delete( sw1, 1, pos( '拾', sw1 ) + 1 );
        end
        else
            sw.Caption := '零';
        w.Caption := copy( sw1, 1, pos( '万', sw1 ) - 1 );
        delete( zje, 1, pos( '万', zje ) + 1 );
    end
    else
    begin
        sw.Caption := '零';
        w.Caption := '零';
    end;
    q.Caption := s1[5] + s1[6];
    b.Caption := s1[7] + s1[8];
    s.Caption := s1[9] + s1[10];
    y.Caption := s1[11] + s1[12];
    j.Caption := s1[13] + s1[14];
    f.Caption := s1[15] + s1[16]
end;

procedure Tfrm_repo_jssj.fldxjeW( zy_zfy: real );
var
    zje: string;
    _s: string;
begin
    zje := NumberToMoney( zy_zfy );
    W_w.Caption := '';
    Q_w.Caption := '';
    B_w.Caption := '';
    S_w.Caption := '';
    Y_w.Caption := '';
    j_w.Caption := '';
    F_w.Caption := '';
    if pos( '万', zje ) <> 0 then
    begin
        w_w.Caption := copy( zje, 1, pos( '万', zje ) - 1 );
        delete( zje, 1, pos( '万', zje ) + 1 );
    end
    else
        w_w.Caption := '零';
    if pos( '仟', zje ) <> 0 then
    begin
        _S := copy( zje, 1, pos( '仟', zje ) );
        q_w.Caption := copy( zje, 1, pos( '仟', zje ) - 1 );
        delete( zje, 1, pos( '仟', zje ) + 1 );
    end
    else
        q_w.Caption := '零';

    if pos( '佰', zje ) <> 0 then
    begin
        b_w.Caption := copy( zje, 1, pos( '佰', zje ) - 1 );
        delete( zje, 1, pos( '佰', zje ) + 1 );
    end
    else
        b_w.Caption := '零';

    if pos( '拾', zje ) <> 0 then
    begin
        S_w.Caption := copy( zje, 1, pos( '拾', zje ) - 1 );
        delete( zje, 1, pos( '拾', zje ) + 1 );
    end
    else
        S_w.Caption := '零';

    if pos( '元', zje ) <> 0 then
    begin
        y_w.Caption := copy( zje, 1, pos( '元', zje ) - 1 );
        delete( zje, 1, pos( '元', zje ) + 1 );
    end
    else
        y_w.Caption := '零';
    if pos( '角', zje ) <> 0 then
    begin
        j_w.Caption := copy( zje, 1, pos( '角', zje ) - 1 );
        delete( zje, 1, pos( '角', zje ) + 1 );
    end
    else
        j_w.Caption := '零';

    if pos( '分', zje ) <> 0 then
        f_w.Caption := copy( zje, 1, pos( '分', zje ) - 1 )
    else
        f_w.Caption := '零';
end;

initialization
    RegisterClass( Tfrm_repo_jssj );
end.

