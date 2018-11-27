unit jkk_fun;

interface

uses
  WSCall_TLB, superobject, SysUtils, Dialogs, TypInfo, ADODB, DB, Windows, Forms;

  //ö��  ��ӿڶ�̬��ķ���
type  TMyEnum = (readCardInfo, readPeopleInfo,readHealthInfo,readClinicalInfo,
    readImmunityInfo,readOutpatientListInfo,driverConfig,writeOutpatientInfo,writeInHospitalInfo);

var
  card: TReadWriterCard;
  MyEnum: TMyEnum;
  pub_json: ISuperObject;      //����������json��
  sr, sc, isSuccess, errMsg, jsstr: string;    //���������������ؽ�����ɹ���־��������Ϣ�����ص�ҵ������
  sc_json: ISuperObject;  //���صĽ����Json��ʽ��
  cardNo: string;        //����
  chipSerialNo: string;//оƬ���к�
  cardSerialNo: string;//�������к�
  cardIssuersCode: string;//������������
  appCityCode: string;//Ӧ�ó��д���
  jkk_sfzhm,jkk_mz: string;   //���֤���룬����

  mz_str,zy_str: widestring;
  mz_bus,zy_bus: WideString;
  jkk_kdks: string;
  jkk_jzrq: TDateTime;

  db_kh, bd_tmh: string;

  function strToJson(jsonstr:WideString):ISuperObject;
  function readCard(fname, rc1, rc2: WideString): WideString;
  procedure CheckDll;
  procedure card_showForm;  //���ÿ��ܽӿ�չʾҳ��
  function mz_business(kh,ph: string): WideString;
  function zy_business(kh: string): WideString;
  function cx_jzkbd(kh: string): string; //��ѯ�������Ƿ��
  function jmjkk_get_tmh(lb: string): string; //���񽡿��� �Զ����������
  function jmjkk_dmtomc(tbdm,dm: string): string; //���񽡿��� dmת��Ϊ����
  function getMcBydm(mc,tbname,colname,val: string): string;
  function jmjkk_GetTmhByCardno(kh: string): string;

implementation
uses p_dm;

{-------------------------------------------------------------------------------
  ������:    CheckDll
  ����:	     ��鲢���¶�̬�� WSCall.dll
  ����:      ljk
  ����:      2018.05.16
  ����:      ��
  ����ֵ:    ��
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
  ������:    Tfrm_main.InfoJson
  ����:	     Json�ַ��� תΪ Json
  ����:      ljk
  ����:      2018.05.10
  ����:      jsonstr:WideString
  ����ֵ:    ISuperObject
-------------------------------------------------------------------------------}
function strToJson(jsonstr:WideString):ISuperObject;
begin
  jsonstr := StringReplace(jsonstr, #$D#$A, '', [rfReplaceAll]);
  pub_json := TSuperObject.Create();
  pub_json := SO(jsonstr);
  result := pub_json;
end;

{-------------------------------------------------------------------------------
  ������:    card_showForm
  ����:	     ���ÿ��ܽӿ�չʾҳ��
  ����:      LiJinKe
  ����:      2018.06.15
  ����:      ��
  ����ֵ:    ��
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
  ������:    Tfrm_main.readCard
  ����:      ���ýӿڷ���̬��ķ��� ����װ�ɹ��÷�����
  ����:      ljk
  ����:      2018.05.09
  ����:      fname �ӿڷ�������, rc1 ���1, rc2 ���2: WideString
  ����ֵ:    WideString
-------------------------------------------------------------------------------}
function readCard(fname, rc1, rc2: WideString): WideString;
begin
  try
    card := TReadWriterCard.Create(nil);
    MyEnum := TMyEnum(GetEnumValue(TypeInfo(TMyEnum),fname));   //ö�� ���� ���� TypInfo��
    //ͨ��ö�� ��ʵ�� case of ��� ��ʹ���ַ���
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
//    sc_json := SO(sc);    //�����صĽ�� תΪJson��ʽ
    sc_json := strToJson(sc);
    //Jsonȡֵ
    if Assigned(sc_json['responseInfo.isSuccess']) then
    begin
      isSuccess := sc_json['responseInfo.isSuccess'].AsString;
      if (isSuccess <> '0') and (Assigned(sc_json['responseInfo.errMsg'])) then
      begin
        errMsg := sc_json['responseInfo.errMsg'].AsString;
        Application.MessageBox( pchar('���񽡿�����'+errMsg), 'ϵͳ��ʾ',MB_OK + MB_ICONWARNING );
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
  ������:    mz_business
  ����:	     ����������Ϣ���
  ����:      ljk
  ����:      2018.05.24
  ����:      kh: string
  ����ֵ:    WideString
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

  //--------- >>> �����ϸ begin >>> ----------
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
      if i = 5 then Break;  //Ŀǰ�洢��֧��5��֢״�����Ϣ
    end;
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + '],';
  end else
  begin
    mzjsonstr := mzjsonstr + '"diagnosisInfo": [{"symptomCode": "","symptomName": "",'+
      '"diagnosisDate": "","code": "","name": "","symptomTime": "","durationOfSymptom": ""}],';
  end;
  //--------- <<< �����ϸ end   <<< ----------


  //--------- >>> ������ begin >>> ----------
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
      mzjsonstr := mzjsonstr + '"resultCode": "���/����������",';
      mzjsonstr := mzjsonstr + '"quantitativeResult": "���/���鶨�����",';
      mzjsonstr := mzjsonstr + '"measureUnit": "���/���������λ"},';
      sp_mz.Next;
      if i = 10 then Break;  //Ŀǰ�洢��֧�� 10����������Ϣ
    end;
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + '],';
  end else
  begin
    mzjsonstr := mzjsonstr + '"checkInfo": [{"code": "","name": "","resultCode": "",'+
        '"quantitativeResult": "","measureUnit": ""}],';
  end;
  //--------- <<< ������ end   <<< ----------

  //--------- >>> ������ϸ begin >>> ----------
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
      if i = 5 then Break;  //Ŀǰ�洢��֧�� 5����ҩ��Ϣ
    end;
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + '],';
  end else
  begin
    mzjsonstr := mzjsonstr + '"drugInfo": [{"name": "","code": "","singleUnitDose": "","days": "",'+
        '"frequency": "","allUnitDose": "","unitDose": "","wayCode": ""}],';
  end;
  //--------- <<< ������ϸ end   <<< ----------


  //--------- >>> ������ϸ begin >>> ----------
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
      if i = 3 then Break;  //Ŀǰ�洢��֧�� 3��������Ϣ
    end;
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + '],';
  end else
  begin
    mzjsonstr := mzjsonstr + '"surgeryInfo": [{"code": "","name": "","date": ""}],';
  end;
  //--------- <<< ������ϸ end   <<< ----------


  //--------- >>> ������ϸ begin >>> ----------
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
      if i = 10 then Break;  //Ŀǰ�洢��֧��10�����������Ϣ
    end;
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + ']';
  end else
  begin
    mzjsonstr := mzjsonstr + '"outpatientFeeInfo": [{"code": "","name": "","amount": ""}]';
  end;
  //--------- <<< ������ϸ end   <<< ---------- 

  //����������û�����ݣ�zyjsonstr���һλ�� ����
  if Copy(mzjsonstr,Length(mzjsonstr),1) = ',' then
    mzjsonstr := Copy(mzjsonstr,1,Length(mzjsonstr)-1) + '}'
  else
    mzjsonstr := mzjsonstr + '}';
  result := mzjsonstr;
end;


{-------------------------------------------------------------------------------
  ������:    zy_business
  ����:      ����סԺ��Ϣ���
  ����:      ljk
  ����:      2018.05.25
  ����:      kh: string
  ����ֵ:    WideString
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

  //--------- >>> Ѫ���� begin >>> ----------
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
      if i = 3 then Break;  //Ŀǰ�洢��֧��3��Ѫ������Ϣ
    end;
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + '],';
  end else
  begin
    zyjsonstr := zyjsonstr + '"serumCheckInfo": [{"code": "","resultCode": ""}],';
  end;
  //--------- <<< Ѫ���� end   <<< ----------


  //--------- >>> �����ϸ begin >>> ----------
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
      if i = 3 then Break;  //Ŀǰ�洢��֧��3�������Ϣ
    end;
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + '],';
  end else
  begin
    zyjsonstr := zyjsonstr + '"diagnosisInfo": [{"diseaseCode": "","diseaseName": "",'
          +'"confirmedDate": "","diseasetypeCode": "","diseasetypeDesc": "",'
          +'"statusCode": "","statusDesc": "","treatmentResultCode": ""}],';
  end;
  //--------- <<< �����ϸ end   <<< ----------


  //--------- >>> ������ϸ begin >>> ----------
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
      if i = 3 then Break;  //Ŀǰ�洢��֧��3��������Ϣ
    end;
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + '],';
  end else
  begin
    zyjsonstr := zyjsonstr + '"surgeryInfo": [{"code": "","name": "","date": "",'
            +'"anesthesiaCode": "","anesthesiaMethod": "","healingLevel": ""}],';
  end;
  //--------- <<< ������ϸ end   <<< ----------


  //--------- >>> ��Ѫ��ϸ begin >>> ----------
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
      if i = 4 then Break;  //Ŀǰ�洢��֧��4����Ѫ��Ϣ
    end;
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + '],';
  end else
  begin
    zyjsonstr := zyjsonstr + '"bloodTransfusionInfo": [{"code": "","dose": "","unit": ""}],';
  end;
  //--------- <<< ��Ѫ��ϸ end   <<< ----------


  //--------- >>> ������� begin >>> ----------
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
      if i = 20 then Break;  //Ŀǰ�洢��֧��20�����������Ϣ
    end;
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + ']';
  end else
  begin
    zyjsonstr := zyjsonstr + '"feeInfo": [{"name": "","code": "","amount": ""}]';
  end;
  //--------- <<< ������� end   <<< ----------

  //����������û�����ݣ�zyjsonstr���һλ�� ����
  if Copy(zyjsonstr,Length(zyjsonstr),1) = ',' then
    zyjsonstr := Copy(zyjsonstr,1,Length(zyjsonstr)-1) + '}'
  else
    zyjsonstr := zyjsonstr + '}';

  result := zyjsonstr;
end;

{-------------------------------------------------------------------------------
  ������:    cx_jzkbd
  ����:      ��ѯ���񽡿����󶨵�tmh
  ����:      LiJinKe
  ����:      2018.05.25
  ����:      kh: string
  ����ֵ:    string
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
  ������:    jmjkk_get_tmh
  ����:	     �Զ����������
  ����:      ljk
  ����:      2018.05.28
  ����:      lb: string
  ����ֵ:    string
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
    application.MessageBox('��ȡ����Ŵ���!', '��ʾ', 0 + 48);
    result := '��ȡ����źŴ���';
  end else
    result := tmh;
end;

{-------------------------------------------------------------------------------
  ������:    jmjkk_dmtomc
  ����:	     ���񽡿��� ���󷵻ص�dmת��Ϊ����    �Ա�01תΪ���С�
  ����:      LiJinKe
  ����:      2018.06.14
  ����:      tbdm,dm: string
  ����ֵ:    string
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
  ������:    getMcBydm
  ����:      ���ݴ����ȡ����   getMcBydm('mc','sys_ksdm','dm','0042')
  ����:      LiJinKe
  ����:      2018.06.15
  ����:      mc,tbname,colname,val: string
  ����ֵ:    string
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
  ������:    jmjkk_GetTmhByCardno
  ����:	     ���񽡿��� ���ݽ������Ż�ȡ�����
  ����:      LiJinKe
  ����:      2018.06.14
  ����:      kh: string
  ����ֵ:    string
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
