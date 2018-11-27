{*******************************************************}
{                                                       }
{      Inpatient Common Function Unit                   }
{      סԺ���� ���� ���� ��Ԫ                          }
{                                                       }
{       ��Ȩ���� (C) 2015 �Ĵ������Ƽ����޹�˾          }
{                                                       }
{      AUTHOR:  Molin Hsia                              }
{      DATE:    2015-03-27                              }
{*******************************************************}

unit p_ICF; //Inpatient Common Function

interface

uses Windows, SysUtils, Classes, Graphics, Controls, ADODB;

type
  TXNZK=class  //����ת�ƣ�ת���������ң���Ϣ��������
  private
    Fzyh:string;      //
    Ftmh:string;      //
    FsrcOfcCode:string;  // Դ  ���� ����
    FsrcAreaCode:string; // Դ  ���� ����
    FdstOfcCode:string;  // Ŀ����� ����
    FdstAreaCode:string; // Ŀ�겡�� ����
    procedure Init;
    function BCheckXNZk:Boolean;//�������ת�Ʊ��Ƿ��м�¼
    function GetZyhByTmh(tmh:string):string;
  public
    constructor create(zyhOrTmh:string);
    property Existing:Boolean  read BCheckXNZk;
    property srcOfcCode:string  read FsrcOfcCode;
    property srcAreaCode:string  read FsrcAreaCode;
    property dstOfcCode:string  read FdstOfcCode;
    property dstAreaCode:string  read FdstAreaCode;
    property zyh:string  read Fzyh;

  end;

type
  TUser = class //����Ա
  private
    FCode: string; //����
    FName: string; //����
    FOfcCode: string; //���Ҵ���
    FOfcName: string; //��������
    FAreaCode: string; //��������
    FAreaName: string; //��������
    FDutyCode: string; //ְ�����
    FDutyName: string; //ְ������
    FTittleCode: string; //ְ�ƴ���
    FTittleName: string; //ְ������
  private
    procedure init;
  public
    procedure clear;
    constructor create(); overload;
    constructor create(userID: string); overload;
    property dm:string  read FCode write FCode ;
    property mc:string  read FName write FName ;
    property ksdm:string  read FOfcCode;
    property ksmc:string  read FOfcName;
    property bqdm:string  read FAreaCode;
    property bqmc:string  read FAreaName;
    property zwdm:string  read FDutyCode;
    property zwmc:string  read FDutyName;
    property zcdm:string  read FTittleCode;
    property zcmc:string  read FTittleName;
    procedure setValues(v_dm,v_mc,v_ksdm,v_ksmc,v_bqdm,v_bqmc,v_zwdm,v_zwmc,v_zcdm,v_zcmc: string);
  end;

type
  TIdentity = class // ���ʶ����
  private
    FID:string;
    FBirthday: TDateTime;
    FProvinceCode:string; //ʡ����������ֱϽ�д��룻
    FCityCOde: string; //�ؼ��С��ˡ������ݴ��룻
    FContyCOde: string; //�ء��ؼ��С������룻
    FLength: Integer;//ʡ��֤����
    FYear: string;
    FMonth: string;
    FDay: string;
    FGender:string; //�Ա�
    FAgeStr: string;
    procedure Analysis;
    function IsLeapYear(y: integer):Boolean;
  public
    constructor create(id: string);
    function GetBirthday: TDateTime;
    function GetAgeString: string;
    function BorrowAMonth(var NthMon: Integer; Bleap:Boolean):Integer;
    property ID:string  read FID;
    property Gender:string  read FGender;
    property AgeString:string  read FAgeStr;
    property Birthday:TDateTime  read FBirthday;
  end;

type
  TOffice = class
  private
    FName: string;
    FCode: string;
    FKssxdm:string;
  public
    function GetSssdm():string;
    function GetMzkdm():string;
    function SetSssdm(value:string):string;
    property sssdm:string  read GetSssdm;
    property mzkdm:string  read GetMzkdm;
  end;

//==============================================================================
// ö������
//==============================================================================
  type TCQLS=(clLongTerm,//����
            clTemporary, //��ʱ
            clAll//���ں���ʱ
  );

//==============================================================================
// �������̺���
//==============================================================================
  //�����֤û�г�ԺΪTrue ��Ժ��Ϊfalse
  function isStillInHospital(id:string):Boolean;

  //�ֶ��Ƿ����
  function FieldExists(tblA,switch:string):Boolean;
  //�����ݿ⿪�ر�tbA�в�ѯһ��booleanֵ
  function GetBoolSwitchValue(tblA,switch:string):Boolean;

  //����������������� 
  procedure save_ZDJF_DB(zyh: string; dbrdm: string; dbrmc: string; czydm: string;
                            czymc: string; dbje: Real; bz: string);
  procedure updateZYDJ_zdjf(v_zdjf: Real; v_zyh:string);//����סԺ�ǼǱ�zdjf�ֶ�
  procedure updateZDJFTZMX(zyh:string; dbrxm: string; czymc: string;
                             dbze:Real; szrq:TDateTime);//�����Զ��Ʒѱ� zysf_ZDJFTZMX

implementation

uses p_dm;


procedure TXNZK.Init;
begin
  Fzyh := '';
  Ftmh := '';
  FsrcOfcCode  := '';
  FsrcAreaCode := '';
  FdstOfcCode  := '';
  FdstAreaCode := '';
end;

constructor TXNZK.create(zyhOrTmh: string);
begin
  if Length(zyhOrTmh) = LengthOfCardNo then
    zyhOrTmh := GetZyhByTmh(zyhOrTmh);

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text :=
    'SELECT a.tmh,a.zyh,a.ksdm srcOfc,a.bqdm srcArea,b.ksdm dstOfc,c.bqdm dstArea ' +
    'FROM  zysf_zydj a left JOIN sys_brzkxx b ON a.zyh=b.zyh ' +
    'INNER JOIN sys_bqzyfl c ON c.bqzydm=b.ksdm WHERE b.zyh = ' + QuotedStr(zyhOrTmh);
  try
    DM_data.qry_pub.Open;
  except
  end;

  if DM_data.qry_pub.RecordCount = 0 then Init else
  begin
    Fzyh := Trim(DM_data.qry_pub.FieldByName('zyh').AsString);
    Ftmh := Trim(DM_data.qry_pub.FieldByName('tmh').AsString);
    FsrcOfcCode := Trim(DM_data.qry_pub.FieldByName('srcOfc').AsString);
    FsrcAreaCode := Trim(DM_data.qry_pub.FieldByName('srcArea').AsString);
    FdstOfcCode := Trim(DM_data.qry_pub.FieldByName('dstOfc').AsString);
    FdstAreaCode := Trim(DM_data.qry_pub.FieldByName('dstArea').AsString);
  end;
end;

function TXNZK.GetZyhByTmh(tmh: string):string;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text :=
    'SELECT zyh FROM zysf_zydj WHERE tmh = ' + QuotedStr(tmh) + ' AND cybz=0 AND jsbz=0';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.RecordCount = 0 then Result := ''
  else Result := Trim(DM_data.qry_pub.FieldByName('zyh').AsString);
end;

function TXNZK.BCheckXNZk:Boolean;
begin
  if FdstOfcCode = '' then Result := False else Result := True;
end;

procedure TUser.init;
begin
  Self.FCode := '';
  Self.FName := '';
  Self.FOfcCode := '';
  Self.FOfcName := '';
  Self.FAreaCode := '';
  Self.FAreaName := '';
  Self.FDutyCode := '';
  Self.FDutyName := '';
  Self.FTittleCode := '';
  Self.FTittleName := '';
end;

procedure TUser.clear;
begin
  Self.FCode := '';
  Self.FName := '';
  Self.FOfcCode := '';
  Self.FOfcName := '';
  Self.FAreaCode := '';
  Self.FAreaName := '';
  Self.FDutyCode := '';
  Self.FDutyName := '';
  Self.FTittleCode := '';
  Self.FTittleName := '';
end;

constructor TUser.create();
begin
  init;
end;

constructor TUser.create(userID: string);
var
  qry:TADOQuery;
begin
  qry.Connection := DM_data.ado_mydata;
  qry.Close;
  qry.SQL.Text := 'SELECT  u.dm ,' +
                          'u.mc ,' +
                          'o.dm ksdm ,' +
                          'o.mc ksmc ,' +
                          'a.bqdm ,' +
                          'a.bqmc ,' +
                          'zw.dm zwdm ,' +
                          'zw.mc zwmc ,' +
                          't.dm zcdm ,' +
                          't.mc zcmc ' +
                  'FROM    sys_czy u ' +
                          'INNER JOIN sys_ksdm o ON u.ksdm = o.dm  ' +
                          'INNER JOIN sys_bqzyfl s ON o.dm = s.bqzydm ' +
                          'INNER JOIN sys_bqdm a ON s.bqdm = a.bqdm ' +
                          'INNER JOIN sys_zwdm zw ON u.zwbm = zw.dm ' +
                          'INNER JOIN sys_zcdm t ON u.zcdm = t.dm ' +
                  'WHERE   u.dm = ' + QuotedStr(userID);
  try
    qry.Open;
  except
  end;

  FCode     := qry.FieldByName('dm').AsString;
  FName     := qry.FieldByName('mc').AsString;
  FOfcCode  := qry.FieldByName('ksdm').AsString;
  FOfcName  := qry.FieldByName('ksmc').AsString;
  FAreaCode := qry.FieldByName('bqdm').AsString;
  FAreaName := qry.FieldByName('bqmc').AsString;
  FDutyCode := qry.FieldByName('zwdm').AsString;
  FDutyName := qry.FieldByName('zwmc').AsString;
  FTittleCode := qry.FieldByName('zcdm').AsString;
  FTittleName := qry.FieldByName('zcmc').AsString;

  qry.Close;
end;

function TOffice.GetSssdm():string;
begin
  Result := '0059'; //ɳ������ҽԺ�����Ǵ���
end;

function TOffice.SetSssdm(value:string):string;
begin
  //���� ����д
  result := '';
end;

function TOffice.GetMzkdm():string;
begin
  Result := '0063'; //ɳ������ҽԺ�����Ǵ���
end;


{-------------------------------------------------------------------------------
  ������:    isStillInHospital
  ����:      molin
  ����:      2015.04.03
  ����:      id:string //���֤����
  ����ֵ:    Boolean   true��û�г�Ժ false���ѳ�Ժ����û�м�¼
-------------------------------------------------------------------------------}
function isStillInHospital(id:string):Boolean;
var
  qry:TADOQuery;
begin
  qry := TADOQuery.Create(nil);
  try
    qry.Connection := DM_data.ado_mydata;
    qry.Close;
    qry.SQL.Text := Format('SELECT t.cybz FROM zysf_zydj t WHERE t.sfzhm=%s order by t.djrq desc',[QuotedStr(id)]);
    qry.Open;
    Result := False;
    if qry.RecordCount > 0 then Result := not qry.FieldByName('cybz').AsBoolean;
  finally
    qry.Free;
  end;
end;

procedure TUser.setValues(v_dm: string; v_mc: string; v_ksdm: string; v_ksmc: string;
                          v_bqdm: string; v_bqmc: string; v_zwdm: string; v_zwmc: string;
                          v_zcdm: string; v_zcmc: string);
begin
  Self.FCode := Trim(v_dm);
  Self.FName := trim(v_mc);
  Self.FOfcCode := trim(v_ksdm);
  Self.FOfcName := trim(v_ksmc);
  Self.FAreaCode := trim(v_bqdm);
  Self.FAreaName := trim(v_bqmc);
  Self.FDutyCode := trim(v_zwdm);
  Self.FDutyName := trim(v_zwmc);
  Self.FTittleCode := trim(v_zcdm);
  Self.FTittleName := trim(v_zcmc);
end;


///////////////////////////////////////////////////////////
///       Identity���֤��
///////////////////////////////////////////////////////////

constructor TIdentity.create(id: string);
var
  idStr: string;
begin
  idStr := Trim(id);
  if not ( length( trim( idStr ) ) in [15,18]) then
    raise Exception.Create('���֤���� ���Ȳ���ȷ')
  else
  begin
    Self.FID := idStr;
    FLength := length(trim(FID));
    Analysis;
  end;
end;

procedure TIdentity.Analysis;
var
  FSetting : TFormatSettings;
begin
  FProvinceCode := Copy(FID,1,2);
  FCityCOde     := Copy(FID,3,2);
  FContyCOde    := Copy(FID,5,2);
  if FLength = 18 then
  begin
    FYear       := Copy(FID,7,4);
    FMonth      := Copy(FID,11,2);
    FDay        := Copy(FID,13,2);
    if (StrToInt(Copy(FID,17,1)) mod 2) = 1 then
      FGender := '��' else FGender := 'Ů';
  end
  else
  begin
    FYear       := '19' + Copy(FID,7,2);
    FMonth      := Copy(FID,9,2);
    FDay        := Copy(FID,11,2);
    if (StrToInt(Copy(FID,15,1)) mod 2) = 1 then
      FGender := '��' else FGender := 'Ů';
  end;

  FSetting.ShortDateFormat:='yyyy-MM-dd';
  FSetting.DateSeparator:='-';
  FBirthday := StrToDateTime(FYear + '-' + FMonth + '-' + FDay, FSetting);
  FAgeStr := GetAgeString;
  if Pos('��',FAgeStr) > 0 then
    FAgeStr := Copy(FAgeStr,1,Pos('��',FAgeStr)+1);
end;

function TIdentity.IsLeapYear(y: Integer):Boolean;
begin
  Result := False;
  if y mod 4 = 0 then
  begin
    if y mod 100 =0  then
    begin
      if y mod 400=0 then
        Result :=true
    end
    else
      Result:=true;
  end;
end;

function TIdentity.BorrowAMonth(var NthMon: Integer; Bleap: Boolean):Integer;
begin
  Dec(NthMon);
  case NthMon of
    1,3,5,7,8,10,12:
      begin
        Result := 31;
      end;
    4,6,9,11:
      begin
        Result := 31;
      end;
    2:
      begin
        if Bleap then Result := 29 else Result := 28;
      end;
  end;
end;

function TIdentity.GetAgeString:string;
var
  y,m,d:Integer;
  Fy,Fm,Fd:Integer;
  dtstr: string;
begin
  dtstr := FormatDateTime('yyyyMMdd',Now);
  y := StrToInt(Copy(dtstr,1,4));
  m := StrToInt(Copy(dtstr,5,2));
  d := StrToInt(Copy(dtstr,7,2));
  Fy := StrToInt(FYear);
  Fm := StrToInt(FMonth);
  Fd := StrToInt(FDay);
  if d > Fd then Result :=  IntToStr(d-Fd)+'��'
  else if d < Fd then
  begin
    Result := IntToStr(d + BorrowAMonth(m,IsLeapYear(y)) - Fd) + '��';
  end;

  if m > Fm then Result := IntToStr(m-Fm)+'��'+Result
  else if m < fm then
  begin
    Dec(y);
    Result := IntToStr(m + 12 - Fm)+'��'+Result;
  end;

  if y > Fy then  Result := IntToStr(y - Fy)+'��'+Result;
end;

function TIdentity.GetBirthday:TDateTime;
begin
  Result := FBirthday;
end;

function FieldExists(tblA:string; switch:string):Boolean;
var
  qry:TADOQuery;
begin
  qry := TADOQuery.Create(nil);
  qry.Connection := DM_data.ado_mydata;
  qry.Close;
  qry.SQL.Text := 'SELECT COUNT(*) from fn_listextendedproperty (NULL, ' +
    '''user'', ''dbo'',''table'',''' + tblA + ''',''column'', default)' +
    ' WHERE objname = ''' + switch+'''';

  try
    qry.Open;
  except

  end;
  Result := False;
  if qry.RecordCount > 0 then Result := True;
  qry.Free;
end;

function GetBoolSwitchValue(tblA:string; switch:string):Boolean;
var
  qry:TADOQuery;
begin
  qry := TADOQuery.Create(nil);
  qry.Connection := DM_data.ado_mydata;
  qry.Close;
  qry.SQL.Text := 'SELECT isnull('+ switch +',0) '+switch+' FROM ' + tblA;

  try
    qry.Open;
  except
    raise Exception.Create('��'+tblA+'.' + switch +'������');
  end;
  Result := qry.FieldByName(switch).AsBoolean;
  qry.Free;
end;

{-------------------------------------------------------------------------------
  ������:    save_ZDJF_DB ����סԺ�Ǽ� ������ϸ
  ����:      molin
  ����:      2015.04.13
  ����:      zyh: string;   סԺ��
             dbrdm: string; �����˴���
             dbrmc: string; ����������
             czydm: string; ����Ա����
             czymc: string; ����Ա����
             bz: string;    ��ע
             dbje: Real     �������
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure save_ZDJF_DB(zyh: string; dbrdm: string; dbrmc: string; czydm: string;
                            czymc: string; dbje: Real; bz: string);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text :=
    'INSERT INTO dbo.zysf_zdjftzmx_db' +
            '( zyh, dbrdm, dbr, czydm, czymc, dbje, szrq, bz ) '+
    'VALUES  (' + QuotedStr(Trim(zyh)) + ',' +
                  QuotedStr(Trim(dbrdm)) + ',' +
                  QuotedStr(Trim(dbrmc)) + ',' +
                  QuotedStr(Trim(czydm)) + ',' +
                  QuotedStr(Trim(czymc)) + ',' +
                  QuotedStr(FloatToStr(dbje)) + ',' +
                  'GETDATE()' + ',' +
                  QuotedStr(Trim(bz)) +
             ')';
  try
    DM_data.qry_pub.ExecSQL;
  except
    raise Exception.Create('������¼д��ʧ�ܣ�' + DM_data.qry_pub.SQL.Text);
  end;
end;

procedure updateZYDJ_zdjf(v_zdjf: Real; v_zyh:string);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'UPDATE zysf_zydj SET zdjf=' + FloatToStr(v_zdjf) +
                              ' WHERE  zyh=' + QuotedStr(v_zyh);
  try
    DM_data.qry_pub.ExecSQL;
  except
    raise Exception.Create('����ʧ�ܣ�' +DM_data.qry_pub.SQL.Text);
  end;
end;

procedure updateZDJFTZMX(zyh: string; dbrxm: string; czymc: string;
                                      dbze: Real; szrq: TDateTime);
begin

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select sum(isnull(dbje,0)) zdjf from zysf_zdjftzmx_db where zyh=' + quotedstr(zyh);
  try
    DM_data.qry_pub.Open;
  except
  end;
  if not DM_data.qry_pub.IsEmpty then
  begin
    dbze := DM_data.qry_pub.FieldByName('zdjf').AsFloat;
  end;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text :=
      'INSERT INTO dbo.zysf_zdjftzmx' +
              '( zyh, brxm, czymc, zdjf, szrq )' +
      'VALUES  (' + QuotedStr(Trim(zyh)) + ','+
                    QuotedStr('-') + ','+
                    QuotedStr(czymc) + ','+
                    FloatToStr(dbze) + ','+
                    'GETDATE()' +
                ')';
  try
    DM_data.qry_pub.ExecSQL;
  except
    raise Exception.Create('����ʧ�ܣ�' + DM_data.qry_pub.SQL.Text);
  end;
end;

end.
