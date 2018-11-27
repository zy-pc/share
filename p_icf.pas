{*******************************************************}
{                                                       }
{      Inpatient Common Function Unit                   }
{      住院患者 公用 功能 单元                          }
{                                                       }
{       版权所有 (C) 2015 四川欣阳科技有限公司          }
{                                                       }
{      AUTHOR:  Molin Hsia                              }
{      DATE:    2015-03-27                              }
{*******************************************************}

unit p_ICF; //Inpatient Common Function

interface

uses Windows, SysUtils, Classes, Graphics, Controls, ADODB;

type
  TXNZK=class  //虚拟转科，转入其他科室，信息保留本科
  private
    Fzyh:string;      //
    Ftmh:string;      //
    FsrcOfcCode:string;  // 源  科室 代码
    FsrcAreaCode:string; // 源  病区 代码
    FdstOfcCode:string;  // 目标科室 代码
    FdstAreaCode:string; // 目标病区 代码
    procedure Init;
    function BCheckXNZk:Boolean;//检查虚拟转科表是否有记录
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
  TUser = class //操作员
  private
    FCode: string; //代码
    FName: string; //姓名
    FOfcCode: string; //科室代码
    FOfcName: string; //科室名称
    FAreaCode: string; //病区代码
    FAreaName: string; //病区名称
    FDutyCode: string; //职务代码
    FDutyName: string; //职务名称
    FTittleCode: string; //职称代码
    FTittleName: string; //职称名称
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
  TIdentity = class // 身份识别码
  private
    FID:string;
    FBirthday: TDateTime;
    FProvinceCode:string; //省、自治区、直辖市代码；
    FCityCOde: string; //地级市、盟、自治州代码；
    FContyCOde: string; //县、县级市、区代码；
    FLength: Integer;//省份证长度
    FYear: string;
    FMonth: string;
    FDay: string;
    FGender:string; //性别
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
// 枚举类型
//==============================================================================
  type TCQLS=(clLongTerm,//长期
            clTemporary, //临时
            clAll//长期和临时
  );

//==============================================================================
// 独立过程函数
//==============================================================================
  //该身份证没有出院为True 出院了为false
  function isStillInHospital(id:string):Boolean;

  //字段是否存在
  function FieldExists(tblA,switch:string):Boolean;
  //从数据库开关表tbA中查询一个boolean值
  function GetBoolSwitchValue(tblA,switch:string):Boolean;

  //以下三个方法相关联 
  procedure save_ZDJF_DB(zyh: string; dbrdm: string; dbrmc: string; czydm: string;
                            czymc: string; dbje: Real; bz: string);
  procedure updateZYDJ_zdjf(v_zdjf: Real; v_zyh:string);//更新住院登记表zdjf字段
  procedure updateZDJFTZMX(zyh:string; dbrxm: string; czymc: string;
                             dbze:Real; szrq:TDateTime);//更新自动计费表 zysf_ZDJFTZMX

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
  Result := '0059'; //沙雅人民医院手术是代码
end;

function TOffice.SetSssdm(value:string):string;
begin
  //保留 后面写
  result := '';
end;

function TOffice.GetMzkdm():string;
begin
  Result := '0063'; //沙雅人民医院手术是代码
end;


{-------------------------------------------------------------------------------
  过程名:    isStillInHospital
  作者:      molin
  日期:      2015.04.03
  参数:      id:string //身份证号码
  返回值:    Boolean   true：没有出院 false：已出院或者没有记录
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
///       Identity身份证类
///////////////////////////////////////////////////////////

constructor TIdentity.create(id: string);
var
  idStr: string;
begin
  idStr := Trim(id);
  if not ( length( trim( idStr ) ) in [15,18]) then
    raise Exception.Create('身份证号码 长度不正确')
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
      FGender := '男' else FGender := '女';
  end
  else
  begin
    FYear       := '19' + Copy(FID,7,2);
    FMonth      := Copy(FID,9,2);
    FDay        := Copy(FID,11,2);
    if (StrToInt(Copy(FID,15,1)) mod 2) = 1 then
      FGender := '男' else FGender := '女';
  end;

  FSetting.ShortDateFormat:='yyyy-MM-dd';
  FSetting.DateSeparator:='-';
  FBirthday := StrToDateTime(FYear + '-' + FMonth + '-' + FDay, FSetting);
  FAgeStr := GetAgeString;
  if Pos('岁',FAgeStr) > 0 then
    FAgeStr := Copy(FAgeStr,1,Pos('岁',FAgeStr)+1);
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
  if d > Fd then Result :=  IntToStr(d-Fd)+'天'
  else if d < Fd then
  begin
    Result := IntToStr(d + BorrowAMonth(m,IsLeapYear(y)) - Fd) + '天';
  end;

  if m > Fm then Result := IntToStr(m-Fm)+'月'+Result
  else if m < fm then
  begin
    Dec(y);
    Result := IntToStr(m + 12 - Fm)+'月'+Result;
  end;

  if y > Fy then  Result := IntToStr(y - Fy)+'岁'+Result;
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
    raise Exception.Create('表'+tblA+'.' + switch +'不存在');
  end;
  Result := qry.FieldByName(switch).AsBoolean;
  qry.Free;
end;

{-------------------------------------------------------------------------------
  过程名:    save_ZDJF_DB 保存住院登记 担保明细
  作者:      molin
  日期:      2015.04.13
  参数:      zyh: string;   住院号
             dbrdm: string; 担保人代码
             dbrmc: string; 担保人名称
             czydm: string; 操作员代码
             czymc: string; 操作员名称
             bz: string;    备注
             dbje: Real     但保金额
  返回值:    无
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
    raise Exception.Create('担保记录写入失败：' + DM_data.qry_pub.SQL.Text);
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
    raise Exception.Create('更新失败：' +DM_data.qry_pub.SQL.Text);
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
    raise Exception.Create('更新失败：' + DM_data.qry_pub.SQL.Text);
  end;
end;

end.
