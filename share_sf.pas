unit share_sf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, Printers {$IFDEF Maks} ,p_Dyjgl  {$ENDIF};

type
  Tfrm_sf = class(TForm)
  private
    { Private declarations }
  public
    procedure proc_printyjsj(zy_tmh, zy_brxm, zy_brxb, zy_ksmc, zy_sjh, zy_bch, yjfs: string; zy_yjje: real);
    function  fuc_jczgys(tmh:string):Boolean;
    procedure proc_printyjsj_bd(zy_tmh, zy_brxm, zy_brxb, zy_ksmc, zy_sjh, zy_bch, yjfs,dyczy: string; zy_yjje: real;dyrq:Tdatetime);
    { Public declarations }
  end;

var
  frm_sf: Tfrm_sf;

implementation
uses p_dm, p_func, p_repo_zyyj;
{$R *.dfm}

procedure Tfrm_sf.proc_printyjsj(zy_tmh, zy_brxm, zy_brxb, zy_ksmc, zy_sjh, zy_bch, yjfs: string; zy_yjje: real);
var v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  nian, yue, ri: word;
begin
//判断是否使用打印关联方式及取得打印机序号
  {$IFDEF Maks}
  Frm_Dyjgl.ChangeDefaultPrinter(预交收据,True);
  {$ELSE}
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(0, v_IsPrinterJoin);
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_new, True);
  except
  end;
  {$ENDIF}
    if not Assigned(frm_repo_zyyj) then
    application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);

    //按不同医院代码,调用不同预交收据
  if pub_yydm = '0020' then //  '0020' 通江县人民医院'
  begin
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.yjsm13.caption := floattostr(zy_yjje) + '元';
    frm_repo_zyyj.dx13.caption := NumberToMoney(zy_yjje);
    frm_repo_zyyj.tmh13.caption := zy_tmh;
    frm_repo_zyyj.yymc13.Caption := pub_yymc;
    frm_repo_zyyj.brxm13.caption := zy_brxm;
    frm_repo_zyyj.ksmc13.caption := zy_ksmc;
    frm_repo_zyyj.wjbh13.Caption := zy_sjh;
    frm_repo_zyyj.czy13.caption := trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.yjxs13.Caption := yjfs;
    frm_repo_zyyj.sfrq13.caption := datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.repo_zyyj10.Print;
  end
  else if pub_yydm = '0022' then //0022 射洪县中医院
  begin
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.yjsm8.caption := floattostr(zy_yjje) + '元';
    frm_repo_zyyj.dx8.caption := NumberToMoney(zy_yjje);
    frm_repo_zyyj.tmh8.caption := zy_tmh;
    frm_repo_zyyj.brxm8.caption := zy_brxm;
    frm_repo_zyyj.ksmc8.caption := zy_ksmc;
    frm_repo_zyyj.wjbh8.Caption := zy_sjh;
    frm_repo_zyyj.czy8.caption := trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.yjxs8.Caption := yjfs;
    frm_repo_zyyj.sfrq8.caption := datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.yymc8.caption := pub_yymc;
    frm_repo_zyyj.repo_zyyj6.Print;
  end
  else if pub_yydm = '0003' then //'0003'  绵阳市第三人民医院
  begin
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.yjsm7.caption := floattostr(zy_yjje) + '元';
    frm_repo_zyyj.dx7.caption := NumberToMoney(zy_yjje);
    frm_repo_zyyj.tmh7.caption := zy_tmh;
    frm_repo_zyyj.brxm7.caption := zy_brxm;
    frm_repo_zyyj.ksmc7.caption := zy_ksmc;
    frm_repo_zyyj.yymc7.Caption := pub_yymc;
    frm_repo_zyyj.czy7.caption := trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.yjxs7.Caption := yjfs;
    frm_repo_zyyj.sfrq7.caption := datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.repo_zyyj5.Print;
  end
  else if pub_yydm = '0046' then //'0046'  罗江县人民医院
  begin
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.yjsm6.caption := floattostr(zy_yjje) + '元';
    frm_repo_zyyj.dx6.caption := NumberToMoney(zy_yjje);
    frm_repo_zyyj.tmh6.caption := zy_tmh;
    frm_repo_zyyj.brxm6.caption := zy_brxm;
    frm_repo_zyyj.ksmc6.caption := zy_ksmc;
    frm_repo_zyyj.wjbh6.Caption := zy_sjh;
    frm_repo_zyyj.yjxs6.Caption := yjfs;
    frm_repo_zyyj.sfrq6.caption := datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.repo_zyyj4.Print;
  end
  else if pub_yydm = '0019' then //'0019'  大邑县人民医院
  begin
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.yymc5.caption := pub_yymc;
    frm_repo_zyyj.yjsm5.caption := floattostr(zy_yjje) + '元';
    frm_repo_zyyj.dx5.caption := NumberToMoney(zy_yjje);
    frm_repo_zyyj.tmh5.caption := zy_tmh;
    frm_repo_zyyj.brxm5.caption := zy_brxm;
    frm_repo_zyyj.ksmc5.caption := zy_ksmc;
    frm_repo_zyyj.wjbh5.Caption := zy_sjh;
    frm_repo_zyyj.czy5.caption := trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.yjxs5.Caption := yjfs;
    frm_repo_zyyj.sfrq5.caption := datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.repo_zyyj3.Print;
  end
  else if pub_yydm = '0028' then //'0028'  达州市第二人民医院
  begin
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.yjsm4.caption := floattostr(zy_yjje) + '元';
    frm_repo_zyyj.dx4.caption := NumberToMoney(zy_yjje);
    frm_repo_zyyj.tmh4.caption := zy_tmh;
    frm_repo_zyyj.brxm4.caption := zy_brxm;
    frm_repo_zyyj.ksmc4.caption := zy_ksmc;
    frm_repo_zyyj.wjbh4.Caption := zy_sjh;
    frm_repo_zyyj.czy4.caption := trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.yjxs4.Caption := yjfs;
    frm_repo_zyyj.sfrq4.caption := datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.repo_zyyj2.Print;
  end
  else if (pub_yydm = '0026') or (pub_yydm = '0030') then
  begin //'0030' 陕飞第二职工医院 '0026' 南部县第二人民医院
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.yjsm2.caption := floattostr(zy_yjje) + '元';
    frm_repo_zyyj.dx2.caption := NumberToMoney(zy_yjje);
    frm_repo_zyyj.tmh2.caption := zy_tmh;
    frm_repo_zyyj.brxm2.caption := zy_brxm;
    frm_repo_zyyj.ksmc2.caption := zy_ksmc;
    frm_repo_zyyj.wjbh2.Caption := zy_sjh;
    frm_repo_zyyj.czy2.caption := trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.yjxs2.Caption := yjfs;
    frm_repo_zyyj.sfrq2.caption := datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.bch2.Caption := zy_bch;
    frm_repo_zyyj.dwmc2.Caption := pub_yymc;

    frm_repo_zyyj.yjsm1.caption := floattostr(zy_yjje) + '元';
    frm_repo_zyyj.dx1.caption := NumberToMoney(zy_yjje);
    frm_repo_zyyj.tmh1.caption := zy_tmh;
    frm_repo_zyyj.brxm1.caption := zy_brxm;
    frm_repo_zyyj.ksmc1.caption := zy_ksmc;
    frm_repo_zyyj.wjbh1.Caption := zy_sjh;
    frm_repo_zyyj.czy1.caption := trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.yjxs1.Caption := yjfs;
    frm_repo_zyyj.sfrq1.caption := datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.bch1.Caption := zy_bch;
    frm_repo_zyyj.dwmc1.Caption := pub_yymc;

    frm_repo_zyyj.repo_zyyj1.Print;
  end
  else if (pub_yydm = '0053') then //''0053'新疆沙湾县人民医院
  begin
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.QRL_ws_bch.caption := zy_bch;
    frm_repo_zyyj.QRL_ws_xx.caption := floattostr(zy_yjje) + '元';
    frm_repo_zyyj.QRL_ws_dx.caption := NumberToMoney(zy_yjje);
    frm_repo_zyyj.QRL_ws_tmh.caption := zy_tmh;
    frm_repo_zyyj.QRL_ws_brxm.caption := zy_brxm;
    frm_repo_zyyj.QRL_ws_ksmc.caption := zy_ksmc;
    frm_repo_zyyj.QRL_ws_sjbh.Caption := zy_sjh;
    frm_repo_zyyj.QRL_ws_sfy.caption := trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.QRL_ws_sfrq.caption := datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.Repo_wszyy.Print;
  end
  else if (pub_yydm = '0102') or (pub_yydm = '0108') or (pub_yydm = '0136') then //0102:蓬溪中医院;0136 石泉
  begin
    application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.QRL_yjxx_px.caption := '小写:' + floattostr(zy_yjje) + '元';
    frm_repo_zyyj.QRL_yjdx_px.caption := '大写:' + NumberToMoney(zy_yjje);
    frm_repo_zyyj.QRL_tmh_px.caption := '条码号:' + zy_tmh;
    frm_repo_zyyj.QRL_brxm_px.caption := '病人姓名:' + zy_brxm;
    frm_repo_zyyj.QRL_ksmc_px.caption := '科室名称:' + zy_ksmc;
    frm_repo_zyyj.QRL_sjh_px.Caption := '收据号:' + zy_sjh;
    frm_repo_zyyj.QRL_sfczy_px.caption := '收费员' + trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.QRL_yjlx_px.Caption := yjfs;
    frm_repo_zyyj.QRL_sfrq_px.caption := '收费日期:' + datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.QRL_yymc_px.caption := pub_yymc;
    if pub_yydm = '0136' then
    begin
      frm_repo_zyyj.QuickRep_px.Page.Length := 93;
    end;
    frm_repo_zyyj.QuickRep_px.Print;
  end
  else if pub_yydm = '0101' then //0101:西充县人民医院
  begin
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.QRL_yjxx_xc.caption := '小写:' + floattostr(zy_yjje) + '元';
    frm_repo_zyyj.QRL_yjdx_xc.caption := '大写:' + NumberToMoney(zy_yjje);
    frm_repo_zyyj.QRL_tmh_xc.caption := '条码号:' + zy_tmh;
    frm_repo_zyyj.QRL_brxm_xc.caption := '病人姓名:' + zy_brxm;
    frm_repo_zyyj.QRL_ksmc_xc.caption := '科室名称:' + zy_ksmc;
    frm_repo_zyyj.QRL_sjh_xc.Caption := '收据号:' + zy_sjh;
    frm_repo_zyyj.QRL_sfczy_xc.caption := '收费员' + trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.QRL_yjlx_xc.Caption := yjfs;
    frm_repo_zyyj.QRL_sfrq_xc.caption := '收费日期:' + datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.QRL_yymc_xc.caption := pub_yymc;
    frm_repo_zyyj.QuickRep_xc.Print;
  end
  else if pub_yydm = '0111' then //0111:和布克赛尔县人民医院
  begin
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.QRL_yjxx_hbkse.caption := '小写:' + floattostr(zy_yjje) + '元';
    frm_repo_zyyj.QRL_yjdx_hbkse.caption := '大写:' + NumberToMoney(zy_yjje);
    frm_repo_zyyj.QRL_tmh_hbkse.caption := zy_tmh;
    frm_repo_zyyj.QRL_brxm_hbkse.caption := zy_brxm;
    frm_repo_zyyj.QRL_ksmc_hbkse.caption := zy_ksmc;
    frm_repo_zyyj.QRL_xb_hbkse.caption := zy_brxb;
    frm_repo_zyyj.QRL_sjh_hbkse.Caption := '收据号:' + zy_sjh;
    frm_repo_zyyj.QRL_sfczy_hbkse.caption := trim(pub_czydm) + trim(pub_czyxm);
    frm_repo_zyyj.QRL_sfrq_hbkse.caption := datetimetostr(frm_func.curr_date);
    frm_repo_zyyj.QRL_yymc_hbkse.caption := '';
    frm_repo_zyyj.QuickRep_hbkse.Print;
  end
  else if pub_yydm = '9999' then //9999仪陇县人民医院
  begin
    decodedate(frm_func.curr_date, nian, yue, ri);
    //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.cfh.Caption := '';
    frm_repo_zyyj.czks.Caption := '';
    frm_repo_zyyj.czks.Caption := zy_ksmc;
    frm_repo_zyyj.sjh.Caption := '收据号:' + zy_sjh;
    frm_repo_zyyj.name.Caption := zy_brxm;
    frm_repo_zyyj.hj.Caption := floattostr(zy_yjje);
    frm_repo_zyyj.QRL_dx_yl.Caption := NumberToMoney(zy_yjje);
    frm_repo_zyyj.QRL_sfczy_yl.Caption := '[' + pub_czyxm + ']';
    frm_repo_zyyj.nian.Caption := inttostr(nian);
    frm_repo_zyyj.yue.Caption := inttostr(yue);
    frm_repo_zyyj.ri.Caption := inttostr(ri);
    frm_repo_zyyj.fymc.Caption := '住院预交费';
    frm_repo_zyyj.fyje.Caption := floattostr(zy_yjje);
    frm_repo_zyyj.QuickRep_yl.print;
  end
  else
    if pub_yydm = '0013' then //0013 三台县人民医院
    begin
      frm_repo_zyyj.stxyy_yjsm.caption := formatfloat('0.00', zy_yjje);
      frm_repo_zyyj.stxyy_dx.caption := NumberToMoney(zy_yjje);
            //frm_repo_zyyj.tmh.caption := zy_tmh;
      frm_repo_zyyj.stxyy_brxm.caption := trim(zy_brxm);
      frm_repo_zyyj.stxyy_tmh.caption := trim(zy_tmh);
      frm_repo_zyyj.stxyy_ksmc.caption := zy_ksmc;
      frm_repo_zyyj.stxyy_sjh.Caption := zy_sjh;
            //frm_repo_zyyj.stxyy_czy.caption := trim(pub_czydm) + trim(pub_czyxm);
            //frm_repo_zyyj.yjxs.Caption := yjfs;
            //frm_repo_zyyj.sfrq.caption := datetimetostr(frm_func.curr_date);
      frm_repo_zyyj.stxyy_sfy.caption := trim(pub_czydm) + trim(pub_czyxm);
      frm_repo_zyyj.stxyy_bch.Caption := zy_bch;
      frm_repo_zyyj.stxyy_sfrq_n.caption := formatdatetime('yyyy', frm_func.curr_date);
      frm_repo_zyyj.stxyy_sfrq_y.caption := formatdatetime('mm', frm_func.curr_date);
      frm_repo_zyyj.stxyy_sfrq_r.caption := formatdatetime('dd', frm_func.curr_date);
      frm_repo_zyyj.stxyy_sfrq_xs.caption := formatdatetime('hh:mm:ss', frm_func.curr_date);
      frm_repo_zyyj.qr_stxyy.Print;
    end else
    if pub_yydm = '0175' then //0175 武当山特区医院
    begin
         frm_repo_zyyj.yjje_wd.caption := floattostr(zy_yjje) + '元';
        frm_repo_zyyj.dx_wd.caption := NumberToMoney(zy_yjje);
        frm_repo_zyyj.tmh_wd.caption := zy_tmh;
        frm_repo_zyyj.brxm_wd.caption := zy_brxm;
        frm_repo_zyyj.ksmc_wd.caption := zy_ksmc;
        frm_repo_zyyj.sjh_wd.Caption := zy_sjh;
        frm_repo_zyyj.bch_wd.Caption := zy_bch;
        frm_repo_zyyj.czy_wd.caption := trim(pub_czydm) + trim(pub_czyxm);
        frm_repo_zyyj.yjxs_wd.Caption := yjfs;
        frm_repo_zyyj.sfrq_wd.caption := datetimetostr(frm_func.curr_date);
        frm_repo_zyyj.qckrp_wd.Print;
    end else
      if pub_yydm = '0139' then //----拉萨市人民医院¥
      begin
        //application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
        frm_repo_zyyj.ls_yjsm.caption := '¥' + floattostr(zy_yjje) + '元';
        frm_repo_zyyj.ls_dx.caption := NumberToMoney(zy_yjje);
        frm_repo_zyyj.ls_tmh.caption := zy_tmh;
        frm_repo_zyyj.ls_brxm.caption := zy_brxm;
        frm_repo_zyyj.ls_ksmc.caption := zy_ksmc;
        frm_repo_zyyj.ls_sjbh.Caption := zy_sjh;
        frm_repo_zyyj.ls_czy.caption := trim(pub_czydm) + trim(pub_czyxm);
        frm_repo_zyyj.ls_yjxs.Caption := yjfs;
        frm_repo_zyyj.ls_sfrq.caption := datetimetostr(frm_func.curr_date);
        frm_repo_zyyj.repo_zyyj_ls.Print;
      end else
      if pub_yydm = '0031' then //-----镇巴县医院
      begin
        frm_repo_zyyj.dwmc10.caption := pub_yymc;
        frm_repo_zyyj.dwmc11.caption := pub_yymc;
        frm_repo_zyyj.wjbh10.caption := zy_sjh;
        frm_repo_zyyj.wjbh11.caption := zy_sjh;
        frm_repo_zyyj.brxm10.caption := zy_brxm;
        frm_repo_zyyj.brxm11.caption := zy_brxm;
        frm_repo_zyyj.tmh10.caption := zy_tmh;
        frm_repo_zyyj.tmh11.caption := zy_tmh;
        frm_repo_zyyj.ksmc10.caption := zy_ksmc;
        frm_repo_zyyj.ksmc11.caption := zy_ksmc;
        frm_repo_zyyj.bch10.caption := zy_bch;
        frm_repo_zyyj.bch11.caption := zy_bch;
        frm_repo_zyyj.yjsm10.caption := '¥' + floattostr(zy_yjje) + '元';
        frm_repo_zyyj.yjsm11.caption := '¥' + floattostr(zy_yjje) + '元';
        frm_repo_zyyj.dx10.caption := NumberToMoney(zy_yjje);
        frm_repo_zyyj.dx11.caption := NumberToMoney(zy_yjje);
        frm_repo_zyyj.yjxs10.caption := yjfs;
        frm_repo_zyyj.yjxs11.caption := yjfs;
        frm_repo_zyyj.czy10.caption := trim(pub_czydm) + trim(pub_czyxm);
        frm_repo_zyyj.czy11.caption := trim(pub_czydm) + trim(pub_czyxm);
        frm_repo_zyyj.sfrq10.caption := datetimetostr(frm_func.curr_date);
        frm_repo_zyyj.sfrq11.caption := datetimetostr(frm_func.curr_date);
        frm_repo_zyyj.repo_zyyj8.Print;
      end else
      begin
        frm_repo_zyyj.yjsm.caption := floattostr(zy_yjje) + '元';
        frm_repo_zyyj.dx.caption := NumberToMoney(zy_yjje);
        frm_repo_zyyj.tmh.caption := zy_tmh;
        frm_repo_zyyj.brxm.caption := zy_brxm;
        frm_repo_zyyj.ksmc.caption := zy_ksmc;
        frm_repo_zyyj.wjbh.Caption := zy_sjh;
        frm_repo_zyyj.czy.caption := trim(pub_czydm) + trim(pub_czyxm);
        frm_repo_zyyj.yjxs.Caption := yjfs;
        frm_repo_zyyj.sfrq.caption := datetimetostr(frm_func.curr_date);
        frm_repo_zyyj.repo_zyyj.Print;
      end;
//还原原来默认打印机
  {$IFDEF Maks}
  Frm_Dyjgl.RevertDefaultPrinter(True);
  {$ELSE}
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, True);
  except
  end;
  {$ENDIF}
  //try frm_repo_zyyj.Free except end;
end;


procedure Tfrm_sf.proc_printyjsj_bd(zy_tmh, zy_brxm, zy_brxb, zy_ksmc, zy_sjh, zy_bch, yjfs,dyczy: string; zy_yjje: real;dyrq:TDateTime);
var v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  nian, yue, ri: word;
begin
//判断是否使用打印关联方式及取得打印机序号
  {$IFDEF Maks}
  Frm_Dyjgl.ChangeDefaultPrinter(预交收据,True);
  {$ELSE}
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(0, v_IsPrinterJoin);
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_new, True);
  except
  end;
  {$ENDIF}
    if not Assigned(frm_repo_zyyj) then
    application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);

    //按不同医院代码,调用不同预交收据
  if (pub_yydm = '0102') or (pub_yydm = '0108') or (pub_yydm = '0136') then //0102:蓬溪中医院;0136 石泉
  begin
    application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
    frm_repo_zyyj.QRL_yjxx_px.caption := '小写:' + floattostr(zy_yjje) + '元';
    frm_repo_zyyj.QRL_yjdx_px.caption := '大写:' + NumberToMoney(zy_yjje);
    frm_repo_zyyj.QRL_tmh_px.caption := '条码号:' + zy_tmh;
    frm_repo_zyyj.QRL_brxm_px.caption := '病人姓名:' + zy_brxm;
    frm_repo_zyyj.QRL_ksmc_px.caption := '科室名称:' + zy_ksmc;
    frm_repo_zyyj.QRL_sjh_px.Caption := '收据号:' + zy_sjh;
    frm_repo_zyyj.QRL_sfczy_px.caption := '收费员' + dyczy;
    frm_repo_zyyj.QRL_yjlx_px.Caption := yjfs;
    frm_repo_zyyj.QRL_sfrq_px.caption := '收费日期:' + datetimetostr(dyrq);
    frm_repo_zyyj.QRL_yymc_px.caption := pub_yymc;
    if pub_yydm = '0136' then
    begin
      frm_repo_zyyj.QuickRep_px.Page.Length := 93;
    end;
    frm_repo_zyyj.QuickRep_px.Print;
  end;

//还原原来默认打印机
  {$IFDEF Maks}
  Frm_Dyjgl.RevertDefaultPrinter(True);
  {$ELSE}
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, True);
  except
  end;
  {$ENDIF}
  //try frm_repo_zyyj.Free except end;
end;




function  Tfrm_sf.fuc_jczgys(tmh:string):Boolean;
begin
   DM_data.qry_pub.close;
   DM_data.qry_pub.SQL.text:='select zgys from zysf_zydj where tmh='+''''+tmh+'''';
   DM_data.qry_pub.Open;
   if Trim(DM_data.qry_pub.FieldByName('zgys').asstring)='' then
   Result:=False
   else
   Result:=True;
end;


end.

