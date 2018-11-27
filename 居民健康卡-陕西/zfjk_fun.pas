unit zfjk_fun;

interface
uses SysUtils, ADODB, DB, Windows, TypInfo, IdHTTP, Classes, superobject, Forms,
     IdHashMessageDigest, IdHash, ActiveX;

  //枚举  存接口动态库的方法
type  TFunEnum = (getWorkKey, consume, queryInfo, payOrderCancel, refund, payLogRecord);
{
  getWorkKey      4.2.	申请签名密钥key
  consume         4.3.	支付接口
  queryInfo       4.4.	查询接口
  payOrderCancel  4.5.	支付订单撤销接口
  refund          4.6.	订单退款
  payLogRecord    5.	操作日志接口
}
type
  TZfjk = class(TObject)
    var
      appid: string;     //陕西支付接口 - 开发商 APPID
      appsecret: string; //陕西支付接口 - 商户app绑定唯一密钥参数
      submerno: string;  //陕西支付接口 - 子商户
      FunEnum: TFunEnum;
      sc, isSuccess, errMsg: string;  //返回结果，成功标志，错误信息
      sc_json: ISuperObject;   //返回结果（Json）
      req_strstream: TStringStream; //Json入参（字符流）
      zfjk_url,zfjk_key: string; //每个接口方法对应的 url地址, 签名密钥串

    function queryTable(col, tbname, tj: string): string;
    function MyFun(fname: string; req: WideString): WideString;
    function getOrderNo(): string;
    function getSign(lb,amount,appid,order_no,timestamp,key: string): string; //获取签名
    function getNonce(len: Integer): string;
    function getTimestamp(): string;
    
  end;
  function writeFyOrderno(zffs, czlb, tmh, ph, sjbh, zfy, orderno, tfbz, refund_no, mzzybz: string): string ;
  function writeFyOrderno2(zffs, czlb, tmh, ph, sjbh, orderno, refund_no, mzzybz: string): string ;

implementation

uses
  p_dm, p_func;


{-------------------------------------------------------------------------------
  过程名:    TZfjk.getOrderNo
  功能:	     获取订单号  生成规则appid+12位时间+4 位随机数字
  作者:      ljk
  日期:      2018.08.27
  参数:      
  返回值:    string
-------------------------------------------------------------------------------}
function TZfjk.getOrderNo(): string;
var
  str,time: string;
begin
  try
    time := FormatDateTime('yyyymmddhhmmss',Now);
    str := time + getNonce(4);
    Result := str;
  except
    on e: Exception do
    application.MessageBox(pchar(e.Message), '系统提示', mb_ok + mb_iconinformation);
  end;
end;
{-------------------------------------------------------------------------------
  过程名:    TZfjk.getSign
  功能:	     获取签名 (如果是查询lb='0'，amount字段不参与签名)
  作者:      ljk
  日期:      2018.08.21
  参数:      lb, amount, appid, order_no, timestamp, key: string
  返回值:    string
-------------------------------------------------------------------------------}
function TZfjk.getSign(lb, amount, appid, order_no, timestamp, key: string): string;
var
  MyMD5: TIdHashMessageDigest5; //IdHashMessageDigest.pas
  Digest: T4x4LongWordRecord; //IdHash.pas
  str: string;
begin
  try
    MyMD5 := TIdHashMessageDigest5.Create;
    if lb = '1' then
      str := '|' + amount + '|' + appid + '|' + order_no + '|' + timestamp + '|' + key + '|'
    else
      str := '|' + appid + '|' + order_no + '|' + timestamp + '|' + key + '|';
    Digest := MyMD5.HashValue(str);
    Result := LowerCase(MyMD5.AsHex(Digest));   //32个字符长度的MD5签名结果
//    Result := Copy(passwordDestinate32, 9, 16); //16个字符长度的MD5签名结果
  finally
    MyMD5.Free;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    TZfjk.getNonce
  功能:	     获取32位字符和数字随机字符串
  作者:      ljk
  日期:      2018.08.24
  参数:      
  返回值:    string
-------------------------------------------------------------------------------}
function TZfjk.getNonce(len: Integer): string;
var
  I: Integer;
  sGUID: string;
  TmpGUID: TGUID;
begin
  if CoCreateGUID(TmpGUID) = S_OK then  //uses ActiveX
  begin
    sGUID := GUIDToString(TmpGUID);
    sGUID := Copy(StringReplace(sGUID, '-', '', [rfReplaceAll, rfIgnoreCase]), 2, len);
  end
  else
    application.MessageBox(pchar('获取随机字符串失败！'), '系统提示', mb_ok + mb_iconinformation);
  Result := sGUID;
end;

{-------------------------------------------------------------------------------
  过程名:    getTimestamp
  功能:	     获取 与1970-01-01 08:00:00时间差（毫秒）
  作者:      ljk
  日期:      2018.08.24
  参数:      
  返回值:    string
-------------------------------------------------------------------------------}
function TZfjk.getTimestamp(): string;
var
  qry1: TADOQuery;
  str: string;
begin
  qry1 := TADOQuery.Create(nil);
  qry1.Connection := DM_data.ado_mydata;
  qry1.Close;
  qry1.SQL.Text := 'SELECT CONVERT(VARCHAR(50),CONVERT(BIGINT,DATEDIFF(ss ,''1970-01-01 08:00:00'',GETDATE()) )*1000) + RIGHT(CONVERT(VARCHAR(30),GETDATE(),121),3) as timestamp';
  try
    qry1.Open;
    str := qry1.FieldByName('timestamp').AsString;
  except
    on e: Exception do
    application.MessageBox(pchar(e.Message), '系统提示', mb_ok + mb_iconinformation);
  end;
  Result := str;
end;  

function TZfjk.MyFun(fname: string; req: WideString): WideString;
var
  IdHTTP1:TIdHTTP;
  qry1: TADOQuery;
begin
  sc := '';
  isSuccess := '';
  errMsg := '';
  try
    try
      IdHTTP1:=TIdHTTP.Create(nil);
      IdHTTP1.Request.ContentType := 'text/json;';         //以Json格式传输数据
      IdHTTP1.Request.Method := 'POST';
      req_strstream := TStringStream.Create(req);
      zfjk_url := Getxtcs('zfjk_url') + fname;
//      sc := IdHTTP1.Post(zfjk_url,req_strstream);   //接口调用
      if (fname = 'consume') or (fname = 'payLogRecord') then
        sc := '{"ResponseInfo": {"retcode": "000000","retmsg": "successful","retmsgLenght": 10,"retdata": {"key": "2tgo6BE4PTMHN9gALyhGCQrvOqazuklV"}}}'
      else
      if (fname = 'payOrderCancel') or (fname = 'refund') then
        sc := '{"ResponseInfo": {"retcode": "succ","retmsg": "successful","retmsgLenght": 10,"retdata": {"key": "2tgo6BE4PTMHN9gALyhGCQrvOqazuklV"}}}';
      sc_json := p_func.strToJson(sc);    //返回结果转为Json
      Result := sc;
    except on e: Exception do
      application.MessageBox(pchar(e.Message), '系统提示', mb_ok + mb_iconinformation);
    end;
  finally
    IdHTTP1.Disconnect;
    IdHTTP1.Free;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    queryTable
  功能:	     zfjk_fun.queryTable('value','sys_xt_xkg','WHERE name = ''Bjmjkk_sx''')
  作者:      ljk
  日期:      2018.07.27
  参数:      col需要查询的字段,tbname表名,tj条件（注意引号）: string
  返回值:    string
-------------------------------------------------------------------------------}
function TZfjk.queryTable(col,tbname,tj: string): string;
var
  qry1: TADOQuery ;
begin
  sc := '';
  try
    qry1 := TADOQuery.Create(nil);
    qry1.Connection := DM_data.ado_mydata;
    qry1.Close;
    qry1.SQL.Text := 'select ' + col + ' from '+ tbname + ' ' + tj;
    qry1.Open;
    if not qry1.IsEmpty then
    begin
      sc := Trim(qry1.FieldByName(col).asstring);
    end ;
    Result := sc ;
  finally
    qry1.Free;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    TZfjk.writeFyOrderno
  功能:	     zfjk_fy表 记录订单号  与  fymx表关联  模式
  作者:      ljk
  日期:      2018.08.30
  参数:      zffs, czlb, tmh, ph, sjbh, zfy, orderno, tfbz, refund_no, mzzybz: string
  返回值:    无
-------------------------------------------------------------------------------}
function writeFyOrderno(zffs, czlb, tmh, ph, sjbh, zfy, orderno, tfbz, refund_no, mzzybz: string): string;
var
  sp1: TADOStoredProc;
begin
  try
    sp1 := TADOStoredProc.Create(nil);
    sp1.Connection := DM_data.ado_mydata;
    sp1.ProcedureName := 'zfjk_fy_orderno';
    sp1.Close;
    sp1.Parameters.Clear;
    sp1.Parameters.CreateParameter('@zffs', ftString, pdInput, 10, '');
    sp1.Parameters.ParamByName('@zffs').Value := zffs;
    sp1.Parameters.CreateParameter('@czlb', ftString, pdInput, 6, '');
    sp1.Parameters.ParamByName('@czlb').Value := czlb;
    sp1.Parameters.CreateParameter('@tmh', ftString, pdInput, 12, '');
    sp1.Parameters.ParamByName('@tmh').Value := tmh;
    sp1.Parameters.CreateParameter('@ph', ftString, pdInput, 16, '');
    sp1.Parameters.ParamByName('@ph').Value := ph;
    sp1.Parameters.CreateParameter('@sjbh', ftString, pdInput, 20, '');
    sp1.Parameters.ParamByName('@sjbh').Value := sjbh;
    sp1.Parameters.CreateParameter('@zfy', ftString, pdInput, 20, '');
    sp1.Parameters.ParamByName('@zfy').Value := zfy;
    sp1.Parameters.CreateParameter('@orderno', ftString, pdInput, 30, fgUnassigned);
    sp1.Parameters.ParamByName('@orderno').Value := orderno;
    sp1.Parameters.CreateParameter('@tfbz', ftString, pdInput, 1, '0');
    sp1.Parameters.ParamByName('@tfbz').Value := tfbz;
    sp1.Parameters.CreateParameter('@refund_no', ftString, pdInput, 30, fgUnassigned);
    sp1.Parameters.ParamByName('@refund_no').Value := refund_no;
    sp1.Parameters.CreateParameter('@mzzybz', ftString, pdInput, 6, '');
    sp1.Parameters.ParamByName('@mzzybz').Value := mzzybz;
    sp1.Parameters.CreateParameter('@sc_cg',ftString,pdOutput,50,'');
    sp1.Parameters.ParamByName('@sc_cg').Value := '0';
    sp1.ExecProc;
    Frm_func.addLog('执行过程 exec zfjk_fy_orderno '+ quotedstr(zffs) + QuotedStr(czlb)+','+ QuotedStr(tmh)+','+ QuotedStr(ph)+','+ QuotedStr(sjbh)+','+ QuotedStr(zfy)+','+ QuotedStr(orderno)+','+ QuotedStr(tfbz)+','+ QuotedStr(refund_no)+','+ QuotedStr(mzzybz)+',''0'' ' );
    Result := sp1.Parameters.ParamByName('@sc_cg').Value;
  except
    on e: Exception do
      Result := e.Message;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    writeFyOrderno2
  功能:	     fymx表里面添加  支付方式、订单号 模式
  作者:      ljk
  日期:      2018.08.31
  参数:      zffs, czlb, tmh, ph, sjbh, orderno, refund_no, mzzybz: string
  返回值:    string
-------------------------------------------------------------------------------}
function writeFyOrderno2(zffs, czlb, tmh, ph, sjbh, orderno, refund_no, mzzybz: string): string;
var
  sp1: TADOStoredProc;
begin
  try
    sp1 := TADOStoredProc.Create(nil);
    sp1.Connection := DM_data.ado_mydata;
    sp1.ProcedureName := 'zfjk_fy_orderno2';
    sp1.Close;
    sp1.Parameters.Clear;
    sp1.Parameters.CreateParameter('@zffs', ftString, pdInput, 10, '');
    sp1.Parameters.ParamByName('@zffs').Value := zffs;
    sp1.Parameters.CreateParameter('@czlb', ftString, pdInput, 6, '');
    sp1.Parameters.ParamByName('@czlb').Value := czlb;
    sp1.Parameters.CreateParameter('@tmh', ftString, pdInput, 12, '');
    sp1.Parameters.ParamByName('@tmh').Value := tmh;
    sp1.Parameters.CreateParameter('@ph', ftString, pdInput, 16, '');
    sp1.Parameters.ParamByName('@ph').Value := ph;
    sp1.Parameters.CreateParameter('@sjbh', ftString, pdInput, 20, '');
    sp1.Parameters.ParamByName('@sjbh').Value := sjbh;
    sp1.Parameters.CreateParameter('@orderno', ftString, pdInput, 30, fgUnassigned);
    sp1.Parameters.ParamByName('@orderno').Value := orderno;
    sp1.Parameters.CreateParameter('@refund_no', ftString, pdInput, 30, fgUnassigned);
    sp1.Parameters.ParamByName('@refund_no').Value := refund_no;
    sp1.Parameters.CreateParameter('@mzzybz', ftString, pdInput, 6, '');
    sp1.Parameters.ParamByName('@mzzybz').Value := mzzybz;
    sp1.Parameters.CreateParameter('@sc_cg',ftString,pdOutput,50,'');
    sp1.Parameters.ParamByName('@sc_cg').Value := '0';
    sp1.ExecProc;
    Frm_func.addLog('执行过程 exec zfjk_fy_orderno2 '+ quotedstr(zffs)+ ',' + QuotedStr(czlb)+','+ QuotedStr(tmh)+','+ QuotedStr(ph)+','+ QuotedStr(sjbh)+','+ QuotedStr(orderno)+','+ QuotedStr(refund_no)+','+ QuotedStr(mzzybz)+',''0'' ' );
    Frm_func.addLog('0');
    Result := sp1.Parameters.ParamByName('@sc_cg').Value;
  except
    on e: Exception do
      Result := e.Message;
  end;
end;


end.

