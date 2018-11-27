unit zfjk_fun;

interface
uses SysUtils, ADODB, DB, Windows, TypInfo, IdHTTP, Classes, superobject, Forms,
     IdHashMessageDigest, IdHash, ActiveX;

  //ö��  ��ӿڶ�̬��ķ���
type  TFunEnum = (getWorkKey, consume, queryInfo, payOrderCancel, refund, payLogRecord);
{
  getWorkKey      4.2.	����ǩ����Կkey
  consume         4.3.	֧���ӿ�
  queryInfo       4.4.	��ѯ�ӿ�
  payOrderCancel  4.5.	֧�����������ӿ�
  refund          4.6.	�����˿�
  payLogRecord    5.	������־�ӿ�
}
type
  TZfjk = class(TObject)
    var
      appid: string;     //����֧���ӿ� - ������ APPID
      appsecret: string; //����֧���ӿ� - �̻�app��Ψһ��Կ����
      submerno: string;  //����֧���ӿ� - ���̻�
      FunEnum: TFunEnum;
      sc, isSuccess, errMsg: string;  //���ؽ�����ɹ���־��������Ϣ
      sc_json: ISuperObject;   //���ؽ����Json��
      req_strstream: TStringStream; //Json��Σ��ַ�����
      zfjk_url,zfjk_key: string; //ÿ���ӿڷ�����Ӧ�� url��ַ, ǩ����Կ��

    function queryTable(col, tbname, tj: string): string;
    function MyFun(fname: string; req: WideString): WideString;
    function getOrderNo(): string;
    function getSign(lb,amount,appid,order_no,timestamp,key: string): string; //��ȡǩ��
    function getNonce(len: Integer): string;
    function getTimestamp(): string;
    
  end;
  function writeFyOrderno(zffs, czlb, tmh, ph, sjbh, zfy, orderno, tfbz, refund_no, mzzybz: string): string ;
  function writeFyOrderno2(zffs, czlb, tmh, ph, sjbh, orderno, refund_no, mzzybz: string): string ;

implementation

uses
  p_dm, p_func;


{-------------------------------------------------------------------------------
  ������:    TZfjk.getOrderNo
  ����:	     ��ȡ������  ���ɹ���appid+12λʱ��+4 λ�������
  ����:      ljk
  ����:      2018.08.27
  ����:      
  ����ֵ:    string
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
    application.MessageBox(pchar(e.Message), 'ϵͳ��ʾ', mb_ok + mb_iconinformation);
  end;
end;
{-------------------------------------------------------------------------------
  ������:    TZfjk.getSign
  ����:	     ��ȡǩ�� (����ǲ�ѯlb='0'��amount�ֶβ�����ǩ��)
  ����:      ljk
  ����:      2018.08.21
  ����:      lb, amount, appid, order_no, timestamp, key: string
  ����ֵ:    string
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
    Result := LowerCase(MyMD5.AsHex(Digest));   //32���ַ����ȵ�MD5ǩ�����
//    Result := Copy(passwordDestinate32, 9, 16); //16���ַ����ȵ�MD5ǩ�����
  finally
    MyMD5.Free;
  end;
end;

{-------------------------------------------------------------------------------
  ������:    TZfjk.getNonce
  ����:	     ��ȡ32λ�ַ�����������ַ���
  ����:      ljk
  ����:      2018.08.24
  ����:      
  ����ֵ:    string
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
    application.MessageBox(pchar('��ȡ����ַ���ʧ�ܣ�'), 'ϵͳ��ʾ', mb_ok + mb_iconinformation);
  Result := sGUID;
end;

{-------------------------------------------------------------------------------
  ������:    getTimestamp
  ����:	     ��ȡ ��1970-01-01 08:00:00ʱ�����룩
  ����:      ljk
  ����:      2018.08.24
  ����:      
  ����ֵ:    string
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
    application.MessageBox(pchar(e.Message), 'ϵͳ��ʾ', mb_ok + mb_iconinformation);
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
      IdHTTP1.Request.ContentType := 'text/json;';         //��Json��ʽ��������
      IdHTTP1.Request.Method := 'POST';
      req_strstream := TStringStream.Create(req);
      zfjk_url := Getxtcs('zfjk_url') + fname;
//      sc := IdHTTP1.Post(zfjk_url,req_strstream);   //�ӿڵ���
      if (fname = 'consume') or (fname = 'payLogRecord') then
        sc := '{"ResponseInfo": {"retcode": "000000","retmsg": "successful","retmsgLenght": 10,"retdata": {"key": "2tgo6BE4PTMHN9gALyhGCQrvOqazuklV"}}}'
      else
      if (fname = 'payOrderCancel') or (fname = 'refund') then
        sc := '{"ResponseInfo": {"retcode": "succ","retmsg": "successful","retmsgLenght": 10,"retdata": {"key": "2tgo6BE4PTMHN9gALyhGCQrvOqazuklV"}}}';
      sc_json := p_func.strToJson(sc);    //���ؽ��תΪJson
      Result := sc;
    except on e: Exception do
      application.MessageBox(pchar(e.Message), 'ϵͳ��ʾ', mb_ok + mb_iconinformation);
    end;
  finally
    IdHTTP1.Disconnect;
    IdHTTP1.Free;
  end;
end;

{-------------------------------------------------------------------------------
  ������:    queryTable
  ����:	     zfjk_fun.queryTable('value','sys_xt_xkg','WHERE name = ''Bjmjkk_sx''')
  ����:      ljk
  ����:      2018.07.27
  ����:      col��Ҫ��ѯ���ֶ�,tbname����,tj������ע�����ţ�: string
  ����ֵ:    string
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
  ������:    TZfjk.writeFyOrderno
  ����:	     zfjk_fy�� ��¼������  ��  fymx�����  ģʽ
  ����:      ljk
  ����:      2018.08.30
  ����:      zffs, czlb, tmh, ph, sjbh, zfy, orderno, tfbz, refund_no, mzzybz: string
  ����ֵ:    ��
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
    Frm_func.addLog('ִ�й��� exec zfjk_fy_orderno '+ quotedstr(zffs) + QuotedStr(czlb)+','+ QuotedStr(tmh)+','+ QuotedStr(ph)+','+ QuotedStr(sjbh)+','+ QuotedStr(zfy)+','+ QuotedStr(orderno)+','+ QuotedStr(tfbz)+','+ QuotedStr(refund_no)+','+ QuotedStr(mzzybz)+',''0'' ' );
    Result := sp1.Parameters.ParamByName('@sc_cg').Value;
  except
    on e: Exception do
      Result := e.Message;
  end;
end;

{-------------------------------------------------------------------------------
  ������:    writeFyOrderno2
  ����:	     fymx���������  ֧����ʽ�������� ģʽ
  ����:      ljk
  ����:      2018.08.31
  ����:      zffs, czlb, tmh, ph, sjbh, orderno, refund_no, mzzybz: string
  ����ֵ:    string
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
    Frm_func.addLog('ִ�й��� exec zfjk_fy_orderno2 '+ quotedstr(zffs)+ ',' + QuotedStr(czlb)+','+ QuotedStr(tmh)+','+ QuotedStr(ph)+','+ QuotedStr(sjbh)+','+ QuotedStr(orderno)+','+ QuotedStr(refund_no)+','+ QuotedStr(mzzybz)+',''0'' ' );
    Frm_func.addLog('0');
    Result := sp1.Parameters.ParamByName('@sc_cg').Value;
  except
    on e: Exception do
      Result := e.Message;
  end;
end;


end.

