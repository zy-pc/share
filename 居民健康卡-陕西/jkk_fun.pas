unit jkk_fun;

interface

uses
  WSCall_TLB, superobject, SysUtils, Dialogs, TypInfo, ADODB, DB, Windows, Forms;

  //枚举  存接口动态库的方法
type  TMyEnum = (readCardInfo, readPeopleInfo,readHealthInfo,readClinicalInfo,
    readImmunityInfo,readOutpatientListInfo,driverConfig,writeOutpatientInfo,writeInHospitalInfo);

var
  card: TReadWriterCard;
  MyEnum: TMyEnum;
  pub_json: ISuperObject;      //健康卡解析json类
  sr, sc, isSuccess, errMsg, jsstr: string;    //输入参数，输出返回结果，成功标志，错误信息，返回的业务数据
  sc_json: ISuperObject;  //返回的结果（Json格式）
  cardNo: string;        //卡号
  chipSerialNo: string;//芯片序列号
  cardSerialNo: string;//发卡序列号
  cardIssuersCode: string;//发卡机构代码
  appCityCode: string;//应用城市代码
  jkk_sfzhm,jkk_mz: string;   //身份证号码，民族

  mz_str,zy_str: widestring;
  mz_bus,zy_bus: WideString;
  jkk_kdks: string;
  jkk_jzrq: TDateTime;

  db_kh, bd_tmh: string;

  function strToJson(jsonstr:WideString):ISuperObject;
  function readCard(fname, rc1, rc2: WideString): WideString;
  procedure CheckDll;
  procedure card_showForm;  //调用卡管接口展示页面
  function mz_business(kh,ph: string): WideString;
  function zy_business(kh: string): WideString;
  function cx_jzkbd(kh: string): string; //查询健康卡是否绑定
  function jmjkk_get_tmh(lb: string): string; //居民健康卡 自动生成条码号
  function jmjkk_dmtomc(tbdm,dm: string): string; //居民健康卡 dm转换为名称
  function getMcBydm(mc,tbname,colname,val: string): string;
  function jmjkk_GetTmhByCardno(kh: string): string;

implementation
uses p_dm;

{-------------------------------------------------------------------------------
  过程名:    CheckDll
  功能:	     检查并更新动态库 WSCall.dll
  作者:      ljk
  日期:      2018.05.16
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure CheckDll;
var
  qry1: TADOQuery ;
begin
  try
    qry1 := TADOQuery.Create(nil);
    qry1.Connection := DM_data.ado_mydata;
//    qry1.ConnectionString := 'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;'+
//          'User ID=sa;Initial Catalog=zp;Data Source=.;Use Procedure for Prepare=1;'+
//          'Auto Translate=True;Packet Size=4096;Workstation ID=ZP01;Use Encryption '+
//          'for Data=False;Tag with column collation when possible=False';
    qry1.close;
    qry1.SQL.Text := 'select * from sys_update where filename = ' + #39 + 'WSCall.dll' + #39;
    qry1.Open;
    if qry1.RecordCount > 0 then
    begin
      TBlobfield(qry1.FieldByName('hisfile')).SaveToFile(ExtractFilePath(application.ExeName) + '\WSCall.dll');
      Windows.Winexec(pchar('regasm.exe ' + ExtractFilePath(application.ExeName) + '\WSCall.dll' + ' /s'), 1);
    end;
  finally
    qry1.Free;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_main.InfoJson
  功能:	     Json字符串 转为 Json
  作者:      ljk
  日期:      2018.05.10
  参数:      jsonstr:WideString
  返回值:    ISuperObject
-------------------------------------------------------------------------------}
function strToJson(jsonstr:WideString):ISuperObject;
begin
  jsonstr := StringReplace(jsonstr, #$D#$A, '', [rfReplaceAll]);
  pub_json := TSuperObject.Create();
  pub_json := SO(jsonstr);
  result := pub_json;
end;

{-------------------------------------------------------------------------------
  过程名:    card_showForm
  功能:	     调用卡管接口展示页面
  作者:      LiJinKe
  日期:      2018.06.15
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure card_showForm;
begin
  try
    card := TReadWriterCard.Create(nil);
    card.ShowForm;
  finally
    card.Free;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_main.readCard
  功能:      调用接口方动态库的方法 （封装成公用方法）
  作者:      ljk
  日期:      2018.05.09
  参数:      fname 接口方法名称, rc1 入参1, rc2 入参2: WideString
  返回值:    WideString
-------------------------------------------------------------------------------}
function readCard(fname, rc1, rc2: WideString): WideString;
begin
  try
    card := TReadWriterCard.Create(nil);
    MyEnum := TMyEnum(GetEnumValue(TypeInfo(TMyEnum),fname));   //枚举 （需 引用 TypInfo）
    //通过枚举 来实现 case of 语句 中使用字符串
    case MyEnum of
      readCardInfo:
        begin
          sc := card.readCardInfo(rc1);
        end;
      readPeopleInfo:
        begin
          sc := card.readPeopleInfo(rc1);
        end;
      readHealthInfo:
        begin
          sc := card.readHealthInfo(rc1);
        end;
      readClinicalInfo:
        begin
          sc := card.readClinicalInfo(rc1);
        end;
      readImmunityInfo:
        begin
          sc := card.readImmunityInfo(rc1);
        end;
      readOutpatientListInfo:
        begin
          sc := card.readOutpatientListInfo(rc1);
        end;
      driverConfig:
        begin
          sc := card.driverConfig(rc1);
        end;
      writeOutpatientInfo:
        begin
          sc := card.writeOutpatientInfo(rc1,rc2);
        end;
      writeInHospitalInfo:
        begin
          sc := card.writeInHospitalInfo(rc1,rc2);
        end;
    end;
//    sc_json := SO(sc);    //将返回的结果 转为Json格式
    sc_json := strToJson(sc);
    //Json取值
    if Assigned(sc_json['responseInfo.isSuccess']) then
    begin
      isSuccess := sc_json['responseInfo.isSuccess'].AsString;
      if (isSuccess <> '0') and (Assigned(sc_json['responseInfo.errMsg'])) then
      begin
        errMsg := sc_json['responseInfo.errMsg'].AsString;
        Application.MessageBox( pchar('居民健康卡：'+errMsg), '系统提示',MB_OK + MB_ICONWARNING );
      end;
      if (isSuccess = '0') and (assigned(sc_json['businessInfo'])) then
      begin
        jsstr := sc_json['businessInfo'].AsString;
//        showmessage(businessInfo);
          if Assigned(sc_json['businessInfo.cardNo']) then
            cardNo := sc_json['businessInfo.cardNo'].AsString;
      end;
    end;
    result := sc ;
  finally
    card.Free;
  end;

end;

{-------------------------------------------------------------------------------
  过程名:    mz_business
  功能:	     生成门诊信息入参
  作者:      ljk
  日期:      2018.05.24
  参数:      kh: string
  返回值:    WideString
-------------------------------------------------------------------------------}
function mz_business(kh,ph: string): WideString;
var
  mzjsonstr:widestring;
  I: Integer;
  sp_mz: TADOStoredProc;
  ds_pub: TDataSource;
begin
  ds_pub := TDataSource.Create(nil) ;
  sp_mz := TADOStoredProc.Create(nil);
  sp_mz.Connection := DM_data.ado_mydata;
//  sp_mz.ConnectionString := 'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;User ID=sa;Initial Catalog=zp;Data Source=.';
  ds_pub.dataset := sp_mz ;

  with sp_mz do
  begin
    Close;
    ProcedureName := 'jmjkk_mz_xx' ;
    Parameters.Clear;
    Parameters.CreateParameter('@tmh',ftString,pdInput,12,'');
    Parameters.CreateParameter('@ph',ftString,pdInput,12,'');
    Parameters.ParamByName('@tmh').Value := kh;
    Parameters.ParamByName('@ph').Value := ph;
    Open;
  end;
  if not sp_mz.IsEmpty then
  begin
    mzjsonstr := '{"medicalInstitutionsCode": "'+sp_mz.FieldByName('jgdm').AsString+'",'+
              '"medicalInstitutionsName": "'+sp_mz.FieldByName('jgmc').AsString+'",'+
	            '"medicalDate":"'+sp_mz.FieldByName('medicalDate').AsString+'",'+
	            '"outpatientNo": "'+kh+'",'+
	            '"medicalDepartmentName": "'+jkk_kdks+'",'+
	            '"medicalExpensesPayment": "3",';
  end;

  //--------- >>> 诊断明细 begin >>> ----------
  with sp_mz do
  begin
    Close;
    ProcedureName := 'jmjkk_mz_zdmx' ;
    Parameters.Clear;
    Parameters.CreateParameter('@tmh',ftString,pdInput,12,'');
    Parameters.CreateParameter('@ph',ftString,pdInput,12,'');
    Parameters.ParamByName('@tmh').Value := kh;
    Parameters.ParamByName('@ph').Value := ph;
    Open;
  end;
  
  if not sp_mz.IsEmpty then
  begin
    mzjsonstr := mzjsonstr + '"diagnosisInfo": [';
    for I := 1 to sp_mz.RecordCount do
    begin
      mzjsonstr := mzjsonstr + '{"symptomCode": "' + sp_mz.FieldByName('symptomCode').AsString + '",';
      mzjsonstr := mzjsonstr + '"symptomName": "' + sp_mz.FieldByName('symptomName').AsString + '",';
      mzjsonstr := mzjsonstr + '"diagnosisDate": "' + sp_mz.FieldByName('diagnosisDate').AsString + '",';
      mzjsonstr := mzjsonstr + '"code": "' + sp_mz.FieldByName('code').AsString + '",';
      mzjsonstr := mzjsonstr + '"name": "' + sp_mz.FieldByName('name').AsString + '",';
      mzjsonstr := mzjsonstr + '"symptomTime": "' + sp_mz.FieldByName('symptomTime').AsString + '",';
      mzjsonstr := mzjsonstr + '"durationOfSymptom": "' + sp_mz.FieldByName('durationOfSymptom').AsString + '"},';
      sp_mz.Next;
      if i = 5 then Break;  //目前存储仅支持5条症状诊断信息
    end;
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + '],';
  end else
  begin
    mzjsonstr := mzjsonstr + '"diagnosisInfo": [{"symptomCode": "","symptomName": "",'+
      '"diagnosisDate": "","code": "","name": "","symptomTime": "","durationOfSymptom": ""}],';
  end;
  //--------- <<< 诊断明细 end   <<< ----------


  //--------- >>> 检查检验 begin >>> ----------
  with sp_mz do
  begin
    Close;
    ProcedureName := 'jmjkk_mz_jcjy' ;
    Parameters.Clear;
    Parameters.CreateParameter('@tmh',ftString,pdInput,12,'');
    Parameters.CreateParameter('@ph',ftString,pdInput,12,'');
    Parameters.ParamByName('@tmh').Value := kh;
    Parameters.ParamByName('@ph').Value := ph;
    Open;
  end;

  if not sp_mz.IsEmpty then
  begin
    mzjsonstr := mzjsonstr + '"checkInfo": [';
    for I := 1 to sp_mz.RecordCount do
    begin
      mzjsonstr := mzjsonstr + '{"code": "' + sp_mz.FieldByName('code').AsString + '",';
      mzjsonstr := mzjsonstr + '"name": "' + sp_mz.FieldByName('name').AsString + '",';
      mzjsonstr := mzjsonstr + '"resultCode": "检查/检验结果代码",';
      mzjsonstr := mzjsonstr + '"quantitativeResult": "检查/检验定量结果",';
      mzjsonstr := mzjsonstr + '"measureUnit": "检查/检验计量单位"},';
      sp_mz.Next;
      if i = 10 then Break;  //目前存储仅支持 10条检验检查信息
    end;
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + '],';
  end else
  begin
    mzjsonstr := mzjsonstr + '"checkInfo": [{"code": "","name": "","resultCode": "",'+
        '"quantitativeResult": "","measureUnit": ""}],';
  end;
  //--------- <<< 检查检验 end   <<< ----------

  //--------- >>> 处方明细 begin >>> ----------
  with sp_mz do
  begin
    Close;
    ProcedureName := 'jmjkk_mz_cfmx' ;
    Parameters.Clear;
    Parameters.CreateParameter('@tmh',ftString,pdInput,12,'');
    Parameters.CreateParameter('@ph',ftString,pdInput,12,'');
    Parameters.ParamByName('@tmh').Value := kh;
    Parameters.ParamByName('@ph').Value := ph;
    Open;
  end;

  if not sp_mz.IsEmpty then
  begin
    mzjsonstr := mzjsonstr + '"drugInfo": [';
    for I := 1 to sp_mz.RecordCount do
    begin
      mzjsonstr := mzjsonstr + '{"name": "' + trim(sp_mz.FieldByName('name').AsString) + '",';
      mzjsonstr := mzjsonstr + '"code": "' + trim(sp_mz.FieldByName('code').AsString) + '",';
      mzjsonstr := mzjsonstr + '"singleUnitDose": "' + trim(sp_mz.FieldByName('singleUnitDose').AsString) + '",';
      mzjsonstr := mzjsonstr + '"days": "' + trim(sp_mz.FieldByName('days').AsString) + '",';
      mzjsonstr := mzjsonstr + '"frequency": "' + trim(sp_mz.FieldByName('frequency').AsString) + '",';
      mzjsonstr := mzjsonstr + '"allUnitDose": "' + trim(sp_mz.FieldByName('allUnitDose').AsString) + '",';
      mzjsonstr := mzjsonstr + '"unitDose": "' + trim(sp_mz.FieldByName('unitDose').AsString) + '",';
      mzjsonstr := mzjsonstr + '"wayCode": "' + trim(sp_mz.FieldByName('wayCode').AsString) + '"},';
      sp_mz.Next;
      if i = 5 then Break;  //目前存储仅支持 5条用药信息
    end;
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + '],';
  end else
  begin
    mzjsonstr := mzjsonstr + '"drugInfo": [{"name": "","code": "","singleUnitDose": "","days": "",'+
        '"frequency": "","allUnitDose": "","unitDose": "","wayCode": ""}],';
  end;
  //--------- <<< 处方明细 end   <<< ----------


  //--------- >>> 手术明细 begin >>> ----------
  with sp_mz do
  begin
    Close;
    ProcedureName := 'jmjkk_mz_ssmx' ;
    Parameters.Clear;
    Parameters.CreateParameter('@tmh',ftString,pdInput,12,'');
    Parameters.CreateParameter('@ph',ftString,pdInput,12,'');
    Parameters.ParamByName('@tmh').Value := kh;
    Parameters.ParamByName('@ph').Value := ph;
    Open;
  end;

  if not sp_mz.IsEmpty then
  begin
    mzjsonstr := mzjsonstr + '"surgeryInfo": [';
    for I := 1 to sp_mz.RecordCount do
    begin
      mzjsonstr := mzjsonstr + '{"code": "' + trim(sp_mz.FieldByName('code').AsString) + '",';
      mzjsonstr := mzjsonstr + '"name": "' + trim(sp_mz.FieldByName('name').AsString) + '",';
      mzjsonstr := mzjsonstr + '"date": "' + trim(sp_mz.FieldByName('date').AsString) + '"},';
      sp_mz.Next;
      if i = 3 then Break;  //目前存储仅支持 3条手术信息
    end;
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + '],';
  end else
  begin
    mzjsonstr := mzjsonstr + '"surgeryInfo": [{"code": "","name": "","date": ""}],';
  end;
  //--------- <<< 手术明细 end   <<< ----------


  //--------- >>> 费用明细 begin >>> ----------
  with sp_mz do
  begin
    Close;
    ProcedureName := 'jmjkk_mz_fymx' ;
    Parameters.Clear;
    Parameters.CreateParameter('@tmh',ftString,pdInput,12,'');
    Parameters.CreateParameter('@ph',ftString,pdInput,12,'');
    Parameters.ParamByName('@tmh').Value := kh;
    Parameters.ParamByName('@ph').Value := ph;
    Open;
  end;

  if not sp_mz.IsEmpty then
  begin
    mzjsonstr := mzjsonstr + '"outpatientFeeInfo": [';
    for I := 1 to sp_mz.RecordCount do
    begin
      mzjsonstr := mzjsonstr + '{"code": "' + trim(sp_mz.FieldByName('code').AsString) + '",';
      mzjsonstr := mzjsonstr + '"name": "' + trim(sp_mz.FieldByName('name').AsString) + '",';
      mzjsonstr := mzjsonstr + '"amount": "' + trim(sp_mz.FieldByName('amount').AsString) + '"},';
      sp_mz.Next;
      if i = 10 then Break;  //目前存储仅支持10条门诊费用信息
    end;
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + ']';
  end else
  begin
    mzjsonstr := mzjsonstr + '"outpatientFeeInfo": [{"code": "","name": "","amount": ""}]';
  end;
  //--------- <<< 费用明细 end   <<< ---------- 

  //假设费用类别没有数据，zyjsonstr最后一位是 逗号
  if Copy(mzjsonstr,Length(mzjsonstr),1) = ',' then
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + '}'
  else
    mzjsonstr := mzjsonstr + '}';
  result := mzjsonstr;
end;


{-------------------------------------------------------------------------------
  过程名:    zy_business
  功能:      生成住院信息入参
  作者:      ljk
  日期:      2018.05.25
  参数:      kh: string
  返回值:    WideString
-------------------------------------------------------------------------------}
function zy_business(kh: string): WideString;
var
  zyjsonstr:widestring;
  I: Integer;
  sp_zy: TADOStoredProc;
  ds_pub: TDataSource;
begin
  ds_pub := TDataSource.Create(nil) ;
  sp_zy := TADOStoredProc.Create(nil);
  sp_zy.Connection := DM_data.ado_mydata;
//  sp_zy.ConnectionString := 'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;User ID=sa;Initial Catalog=dd;Data Source=.';
  ds_pub.dataset := sp_zy ;

  with sp_zy do
  begin
    Close;
    ProcedureName := 'jmjkk_zy_xx' ;
    Parameters.Clear;
    Parameters.CreateParameter('@zyh',ftString,pdInput,12,'');
    Parameters.ParamByName('@zyh').Value := kh;
    Open;
  end;

  if not sp_zy.IsEmpty then
  begin
  zyjsonstr := '{"medicalInstitutionsName": "'+ sp_zy.FieldByName('medicalInstitutionsName').AsString +'",'+
                '"medicalInstitutionsCode": "'+ sp_zy.FieldByName('medicalInstitutionsCode').AsString +'",'+
                '"inHospitalDate": "'+ sp_zy.FieldByName('inHospitalDate').AsString +'",'+
                '"inHospitalTimes": "'+ sp_zy.FieldByName('inHospitalTimes').AsString +'",'+
                '"medicalRecordNo": "'+ sp_zy.FieldByName('medicalRecordNo').AsString +'",'+
                '"inDepartmentName": "'+ sp_zy.FieldByName('inDepartmentName').AsString +'",'+
                '"illness": "'+ sp_zy.FieldByName('illness').AsString +'",'+
                '"infectionName": "'+ sp_zy.FieldByName('infectionName').AsString +'",'+
                '"poisoningCause": "'+ sp_zy.FieldByName('poisoningCause').AsString +'",'+
                '"rescueTimes": "'+ sp_zy.FieldByName('rescueTimes').AsString +'",'+
                '"succRescueTimes": "'+ sp_zy.FieldByName('succRescueTimes').AsString +'",'+
                '"outHospitalDate": "'+ sp_zy.FieldByName('outHospitalDate').AsString +'",'+
                '"outDepartmentName": "'+ sp_zy.FieldByName('outDepartmentName').AsString +'",'+
                '"hospitalizationDays": "'+ sp_zy.FieldByName('hospitalizationDays').AsString +'",'+
                '"autopsyFlag": "'+ sp_zy.FieldByName('autopsyFlag').AsString +'",'+
                '"followUpFlag": "'+ sp_zy.FieldByName('followUpFlag').AsString +'",'+
                '"medicalExpensesPayment": "'+ sp_zy.FieldByName('medicalExpensesPayment').AsString +'",'+
                '"allFee": "'+ sp_zy.FieldByName('allFee').AsString +'",'+
                '"bedsFee": "'+ sp_zy.FieldByName('bedsFee').AsString +'",'+
                '"nursingFee": "'+ sp_zy.FieldByName('nursingFee').AsString +'",'+
                '"westernMedicineFee": "'+ sp_zy.FieldByName('westernMedicineFee').AsString +'",'+   
                '"chineseMedicineFee": "'+ sp_zy.FieldByName('chineseMedicineFee').AsString +'",'+
                '"assayFee": "'+ sp_zy.FieldByName('assayFee').AsString +'",'+
                '"diagnosisFee": "'+ sp_zy.FieldByName('diagnosisFee').AsString +'",'+
                '"surgeryFee": "'+ sp_zy.FieldByName('surgeryFee').AsString +'",'+
                '"checkFee": "'+ sp_zy.FieldByName('checkFee').AsString +'",'+
                '"otherFee": "'+ sp_zy.FieldByName('otherFee').AsString +'",';
  end;

  //--------- >>> 血清检查 begin >>> ----------
  with sp_zy do
  begin
    Close;
    ProcedureName := 'jmjkk_zy_xqjc' ;
    Parameters.Clear;
    Parameters.CreateParameter('@zyh',ftString,pdInput,12,'');
    Parameters.ParamByName('@zyh').Value := kh;
    Open;
  end;

  if not sp_zy.IsEmpty then
  begin
    zyjsonstr := zyjsonstr + '"serumCheckInfo": [';
    for I := 1 to sp_zy.RecordCount do
    begin
      zyjsonstr := zyjsonstr + '{"code": "' + sp_zy.FieldByName('code').AsString + '",';
      zyjsonstr := zyjsonstr + '"resultCode": "' + sp_zy.FieldByName('resultCode').AsString + '"},';
      sp_zy.Next;
      if i = 3 then Break;  //目前存储仅支持3条血清检查信息
    end;
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + '],';
  end else
  begin
    zyjsonstr := zyjsonstr + '"serumCheckInfo": [{"code": "","resultCode": ""}],';
  end;
  //--------- <<< 血清检查 end   <<< ----------


  //--------- >>> 诊断明细 begin >>> ----------
  with sp_zy do
  begin
    Close;
    ProcedureName := 'jmjkk_zy_zdmx' ;
    Parameters.Clear;
    Parameters.CreateParameter('@zyh',ftString,pdInput,12,'');
    Parameters.ParamByName('@zyh').Value := kh;
    Open;
  end;
  if not sp_zy.IsEmpty then
  begin
    zyjsonstr := zyjsonstr + '"diagnosisInfo": [';
    for I := 1 to sp_zy.RecordCount do
    begin
      zyjsonstr := zyjsonstr + '{"diseaseCode": "' + sp_zy.FieldByName('diseaseCode').AsString + '",';
      zyjsonstr := zyjsonstr + '"diseaseName": "' + sp_zy.FieldByName('diseaseName').AsString + '",';
      zyjsonstr := zyjsonstr + '"confirmedDate": "' + sp_zy.FieldByName('confirmedDate').AsString + '",';
      zyjsonstr := zyjsonstr + '"diseasetypeCode": "' + sp_zy.FieldByName('diseasetypeCode').AsString + '",';
      zyjsonstr := zyjsonstr + '"diseasetypeDesc": "' + sp_zy.FieldByName('diseasetypeDesc').AsString + '",';
      zyjsonstr := zyjsonstr + '"statusCode": "' + sp_zy.FieldByName('statusCode').AsString + '",';
      zyjsonstr := zyjsonstr + '"statusDesc": "' + sp_zy.FieldByName('statusDesc').AsString + '",';
      zyjsonstr := zyjsonstr + '"treatmentResultCode": "' + sp_zy.FieldByName('treatmentResultCode').AsString + '"},';
      sp_zy.Next;
      if i = 3 then Break;  //目前存储仅支持3条诊断信息
    end;
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + '],';
  end else
  begin
    zyjsonstr := zyjsonstr + '"diagnosisInfo": [{"diseaseCode": "","diseaseName": "",'
          +'"confirmedDate": "","diseasetypeCode": "","diseasetypeDesc": "",'
          +'"statusCode": "","statusDesc": "","treatmentResultCode": ""}],';
  end;
  //--------- <<< 诊断明细 end   <<< ----------


  //--------- >>> 手术明细 begin >>> ----------
  with sp_zy do
  begin
    Close;
    ProcedureName := 'jmjkk_zy_ssmx' ;
    Parameters.Clear;
    Parameters.CreateParameter('@zyh',ftString,pdInput,12,'');
    Parameters.ParamByName('@zyh').Value := kh;
    Open;
  end;
  if not sp_zy.IsEmpty then
  begin
    zyjsonstr := zyjsonstr + '"surgeryInfo": [';
    for I := 1 to sp_zy.RecordCount do
    begin
      zyjsonstr := zyjsonstr + '{"code": "' + sp_zy.FieldByName('code').AsString + '",';
      zyjsonstr := zyjsonstr + '"name": "' + sp_zy.FieldByName('name').AsString + '",';
      zyjsonstr := zyjsonstr + '"date": "' + sp_zy.FieldByName('date').AsString + '",';
      zyjsonstr := zyjsonstr + '"anesthesiaCode": "' + sp_zy.FieldByName('anesthesiaCode').AsString + '",';
      zyjsonstr := zyjsonstr + '"anesthesiaMethod": "' + sp_zy.FieldByName('anesthesiaMethod').AsString + '",';
      zyjsonstr := zyjsonstr + '"healingLevel": "' + sp_zy.FieldByName('healingLevel').AsString + '"},';
      sp_zy.Next;
      if i = 3 then Break;  //目前存储仅支持3条手术信息
    end;
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + '],';
  end else
  begin
    zyjsonstr := zyjsonstr + '"surgeryInfo": [{"code": "","name": "","date": "",'
            +'"anesthesiaCode": "","anesthesiaMethod": "","healingLevel": ""}],';
  end;
  //--------- <<< 手术明细 end   <<< ----------


  //--------- >>> 输血明细 begin >>> ----------
  with sp_zy do
  begin
    Close;
    ProcedureName := 'jmjkk_zy_sxmx' ;
    Parameters.Clear;
    Parameters.CreateParameter('@zyh',ftString,pdInput,12,'');
    Parameters.ParamByName('@zyh').Value := kh;
    Open;
  end;
  if not sp_zy.IsEmpty then
  begin
    zyjsonstr := zyjsonstr + '"bloodTransfusionInfo": [';
    for I := 1 to sp_zy.RecordCount do
    begin
      zyjsonstr := zyjsonstr + '{"code": "' + sp_zy.FieldByName('code').AsString + '",';
      zyjsonstr := zyjsonstr + '"dose": "' + sp_zy.FieldByName('dose').AsString + '",';
      zyjsonstr := zyjsonstr + '"unit": "' + sp_zy.FieldByName('unit').AsString + '"},';
      sp_zy.Next;
      if i = 4 then Break;  //目前存储仅支持4条输血信息
    end;
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + '],';
  end else
  begin
    zyjsonstr := zyjsonstr + '"bloodTransfusionInfo": [{"code": "","dose": "","unit": ""}],';
  end;
  //--------- <<< 输血明细 end   <<< ----------


  //--------- >>> 费用类别 begin >>> ----------
  with sp_zy do
  begin
    Close;
    ProcedureName := 'jmjkk_zy_fylb' ;
    Parameters.Clear;
    Parameters.CreateParameter('@zyh',ftString,pdInput,12,'');
    Parameters.ParamByName('@zyh').Value := kh;
    Open;
  end;
  if not sp_zy.IsEmpty then
  begin
    zyjsonstr := zyjsonstr + '"feeInfo": [';
    for I := 1 to sp_zy.RecordCount do
    begin
      zyjsonstr := zyjsonstr + '{"name": "' + sp_zy.FieldByName('name').AsString + '",';
      zyjsonstr := zyjsonstr + '"code": "' + sp_zy.FieldByName('code').AsString + '",';
      zyjsonstr := zyjsonstr + '"amount": "' + sp_zy.FieldByName('amount').AsString + '"},';
      sp_zy.Next;
      if i = 20 then Break;  //目前存储仅支持20条费用类别信息
    end;
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + ']';
  end else
  begin
    zyjsonstr := zyjsonstr + '"feeInfo": [{"name": "","code": "","amount": ""}]';
  end;
  //--------- <<< 费用类别 end   <<< ----------

  //假设费用类别没有数据，zyjsonstr最后一位是 逗号
  if Copy(zyjsonstr,Length(zyjsonstr),1) = ',' then
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + '}'
  else
    zyjsonstr := zyjsonstr + '}';

  result := zyjsonstr;
end;

{-------------------------------------------------------------------------------
  过程名:    cx_jzkbd
  功能:      查询居民健康卡绑定的tmh
  作者:      LiJinKe
  日期:      2018.05.25
  参数:      kh: string
  返回值:    string
-------------------------------------------------------------------------------}
function cx_jzkbd(kh: string): string;
var bd_tmh: string;
begin
  Result := '';
  bd_tmh := '' ;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'exec jmjkk_cx_bd ' + #39 + kh + #39;
  DM_data.qry_pub.Open;

  if DM_data.qry_pub.RecordCount > 0 then
  begin
    bd_tmh := DM_data.qry_pub.FieldByName('tmh').AsString;
    Result := bd_tmh;
  end else
    Result := '';
end;

{-------------------------------------------------------------------------------
  过程名:    jmjkk_get_tmh
  功能:	     自动生成条码号
  作者:      ljk
  日期:      2018.05.28
  参数:      lb: string
  返回值:    string
-------------------------------------------------------------------------------}
function jmjkk_get_tmh(lb: string): string;
var tmh: string;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'exec jmjkk_get_tmh ' + #39 + lb + #39;
  DM_data.qry_pub.open;

  if lb = 'mz' then
    tmh := trim(DM_data.qry_pub.FieldByName('mztmh').AsString)
  else if lb = 'zy' then
    tmh := trim(DM_data.qry_pub.FieldByName('zytmh').AsString) ;

  if tmh = '0' then
  begin
    application.MessageBox('提取条码号错误!', '提示', 0 + 48);
    result := '提取条码号号错误';
  end else
    result := tmh;
end;

{-------------------------------------------------------------------------------
  过程名:    jmjkk_dmtomc
  功能:	     居民健康卡 请求返回的dm转换为名称    性别01转为‘男’
  作者:      LiJinKe
  日期:      2018.06.14
  参数:      tbdm,dm: string
  返回值:    string
-------------------------------------------------------------------------------}
function jmjkk_dmtomc(tbdm,dm: string): string;
var str: string;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'SELECT mc FROM jmjkk_dm WHERE tbdm = '
        + QuotedStr(tbdm) +' AND dm = ' + QuotedStr(dm);
  try
    DM_data.qry_pub.open;
    str := trim(DM_data.qry_pub.FieldByName('mc').AsString);
    Result := str ;
  except
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    getMcBydm
  功能:      根据代码获取名称   getMcBydm('mc','sys_ksdm','dm','0042')
  作者:      LiJinKe
  日期:      2018.06.15
  参数:      mc,tbname,colname,val: string
  返回值:    string
-------------------------------------------------------------------------------}
function getMcBydm(mc,tbname,colname,val: string): string;
var str: string;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'SELECT '+mc+' FROM '+ tbname + ' WHERE ' + colname +' = '
        + QuotedStr(val) ;
  try
    DM_data.qry_pub.open;
    str := trim(DM_data.qry_pub.FieldByName(mc).AsString);
    Result := str ;
  except
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    jmjkk_GetTmhByCardno
  功能:	     居民健康卡 根据健康卡号获取条码号
  作者:      LiJinKe
  日期:      2018.06.14
  参数:      kh: string
  返回值:    string
-------------------------------------------------------------------------------}
function jmjkk_GetTmhByCardno(kh: string): string;
var tmh: string;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'SELECT tmh FROM dbo.jmjkk_kyhbd WHERE CardNo = '
        + QuotedStr(kh) + ' AND yxbz = 1';
  try
    DM_data.qry_pub.open;
    if not DM_data.qry_pub.IsEmpty then
    begin
      tmh := trim(DM_data.qry_pub.FieldByName('tmh').AsString);
      Result := tmh ;
    end else
      Result := '';
  except
  end;  
end;


end.
