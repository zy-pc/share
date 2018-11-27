unit sldll;

interface
uses 
  Windows,SysUtils,Printers,Classes,Dialogs,Forms,WinSpool,QRPrntr,QuickRpt,
  StdCtrls, QRCtrls,p_zysf_print_service,p_func,Graphics,p_dm{$IFDEF Maks} ,p_Dyjgl  {$ENDIF};

type
  TinStr = class        //交易输入
  private
    _jydm:array[0..1] of Char;       //交易代码
    _jyje:array[0..11] of Char;      //交易金额
    _poslsh:array[0..5] of Char;     // pos流水号
    _syjh:array[0..9] of Char;       //收银机号
    _syyh:array[0..9] of Char;       //收银员号
    _jsckh:array[0..14] of Char;     //银行检索参考号（PBOC方式）
    _sqh:array[0..5] of Char;        //授权号
    _yjyrq:array[0..7] of Char;      //原交易日期
    _sblx:Char;                      //设备类型
    _zdyxx:array[0..75] of Char;     //自定义信息（单据号或交易索引号）
    _cd2:array[0..36] of Char;       //第二磁道
    _cd3:array[0..103] of Char;      //第三磁道
    _yjym:array[0..1] of Char;       //原交易码
    _yzdbh:array[0..14] of Char;     //原终端编号
  public
    constructor Create;
    function jydm:string;overload;
    procedure jydm(val:string);overload;
    function jyje:string;overload;
    procedure jyje(val:string);overload;
    function poslsh:string;overload;
    procedure poslsh(val:string);overload;
    function syjh:string;overload;
    procedure syjh(val:string);overload;
    function syyh:string;overload;
    procedure syyh(val:string);overload;
    function jsckh:string;overload;
    procedure jsckh(val:string);overload;
    function sqh:string;overload;
    procedure sqh(val:string);overload;
    function yjyrq:string;overload;
    procedure yjyrq(val:string);overload;
    function sblx:string;overload;
    procedure sblx(val:string);overload;
    function zdyxx:string;overload;
    procedure zdyxx(val:string);overload;
    function cd2:string;overload;
    procedure cd2(val:string);overload;
    function cd3:string;overload;
    procedure cd3(val:string);overload;
    function yjym:string;overload;
    procedure yjym(val:string);overload;
    function yzdbh:string;overload;
    procedure yzdbh(val:string);overload;            
    function AsString:string;
  end;
type
  ToutStr = class        //交易输出
    _fhm:array[0..5] of Char;         //返回码
    _fhmhy:array[0..39] of Char;      //返回码含义
    _poslsh:array[0..5] of Char;      //pos流水号
    _sqh:array[0..5] of Char;         //授权号
    _pch:array[0..5] of Char;         //批次号
    _kh:array[0..18] of Char;         //卡号
    _yxq:array[0..3] of Char;         //有效期
    _yhh:array[0..1] of Char;         //银行号
    _jsckh:array[0..11] of Char;      //银行检索参考号
    _zdh:array[0..14] of Char;        //终端号
    _shh:array[0..14] of Char;        //商户号
    _jyje:array[0..11] of Char;       //交易金额
    _mm:array[0..15] of Char;         //加密后的密码
    _fqfkxx:array[0..73] of Char;     //分期付款信息
    _fkhdm:array[0..7] of Char;       //发卡行代码
    _yhzjjyrq:array[0..7] of Char;    //银行主机交易日期
    _yhzjjysj:array[0..5] of Char;    //银行主机交易时间
  public
    function fhm:string;overload;
    procedure fhm(val:string);overload;  
    function fhmhy:string;overload;
    procedure fhmhy(val:string);overload;  
    function poslsh:string;overload;
    procedure poslsh(val:string);overload;  
    function sqh:string;overload;
    procedure sqh(val:string);overload;  
    function pch:string;overload;
    procedure pch(val:string);overload;  
    function kh:string;overload;
    procedure kh(val:string);overload;  
    function yxq:string;overload;
    procedure yxq(val:string);overload;  
    function yhh:string;overload;
    procedure yhh(val:string);overload;  
    function jsckh:string;overload;
    procedure jsckh(val:string);overload;  
    function zdh:string;overload;
    procedure zdh(val:string);overload;  
    function shh:string;overload;
    procedure shh(val:string);overload;  
    function jyje:string;overload;
    procedure jyje(val:string);overload;  
    function mm:string;overload;
    procedure mm(val:string);overload;  
    function fqfkxx:string;overload;
    procedure fqfkxx(val:string);overload;  
    function fkhdm:string;overload;
    procedure fkhdm(val:string);overload;  
    function yhzjjyrq:string;overload;
    procedure yhzjjyrq(val:string);overload;  
    function yhzjjysj:string;overload;
    procedure yhzjjysj(val:string);overload;   
    function AsString:string;   
  end;
  var v_PrinterIndex_old:Integer;
      v_PrinterIndex_new:Integer;
function hkxf(je:Double):ToutStr;    //划卡消费
function hktf(lsh:string;je:Double):ToutStr;  //退费
function yecx:ToutStr;  //余额查询
function dbjs:ToutStr;  //当班结算
function clsh:ToutStr;  //查詢流水號
function cddj(djh:string='000000'):ToutStr;//单据重打
procedure addTransLog(transStr:string);
  
implementation

var
  CardTrans : function(strin, strout:PChar):integer; stdcall;
  qrp:TQuickRep;
  qrs:TQRSubDetail;
  qrm:TQRMemo;
{$REGION 'TinStr Func in Here'}
constructor TinStr.Create;
begin
  FillMemory(@pChar(Self)[4],304,32);
  Self._jyje:='000000000000';
end;
function TinStr.AsString:string;
begin
  Result := String(_jydm)+
            String(_jyje)+
            String(_poslsh)+
            String(_syjh)+
            String(_syyh)+
            String(_jsckh)+
            String(_sqh)+
            String(_yjyrq)+
            String(_sblx)+
            String(_zdyxx)+
            String(_cd2)+
            String(_cd3)+
            String(_yjym)+
            String(_yzdbh);
end;
function TinStr.jydm:string;
begin
  Result := string(_jydm);
end;
procedure TinStr.jydm(val:string);
begin
  StrPCopy(_jydm,val);
end;
function TinStr.jyje:string;
begin
  Result := string(_jyje);
end;
procedure TinStr.jyje(val:string);
begin
  StrPCopy(_jyje,val);
end;
function TinStr.poslsh:string;
begin
  Result := string(_poslsh);
end;
procedure TinStr.poslsh(val:string);
begin
  StrPCopy(_poslsh,val);
end;
function TinStr.syjh:string;
begin
  Result := string(_syjh);
end;
procedure TinStr.syjh(val:string);
begin
  StrPCopy(_syjh,val);
end;
function TinStr.syyh:string;
begin
  Result := string(_syyh);
end;
procedure TinStr.syyh(val:string);
begin
  StrPCopy(_syyh,val);
end;
function TinStr.jsckh:string;
begin
  Result := string(_jsckh);
end;
procedure TinStr.jsckh(val:string);
begin
  StrPCopy(_jsckh,val);
end;
function TinStr.sqh:string;
begin
  Result := string(_sqh);
end;
procedure TinStr.sqh(val:string);
begin
  StrPCopy(_sqh,val);
end;
function TinStr.yjyrq:string;
begin
  Result := string(_yjyrq);
end;
procedure TinStr.yjyrq(val:string);
begin
  StrPCopy(_yjyrq,val);
end;
function TinStr.sblx:string;
begin
  Result := string(_sblx);
end;
procedure TinStr.sblx(val:string);
begin
  if length(val) > 0 then begin
    _sblx:=val[1];
  end else begin
    _sblx:=#32;
  end;
end;
function TinStr.zdyxx:string;
begin
  Result := string(_zdyxx);
end;
procedure TinStr.zdyxx(val:string);
begin
  StrPCopy(_zdyxx,val);
end;
function TinStr.cd2:string;
begin
  Result := string(_cd2);
end;
procedure TinStr.cd2(val:string);
begin
  StrPCopy(_cd2,val);
end;
function TinStr.cd3:string;
begin
  Result := string(_cd3);
end;
procedure TinStr.cd3(val:string);
begin
  StrPCopy(_cd3,val);
end;
function TinStr.yjym:string;
begin
  Result := string(_yjym);
end;
procedure TinStr.yjym(val:string);
begin
  StrPCopy(_yjym,val);
end;
function TinStr.yzdbh:string;
begin
  Result := string(_yzdbh);
end;
procedure TinStr.yzdbh(val:string);   
begin
  StrPCopy(_yzdbh,val);
end;
{$ENDREGION}

{$REGION 'ToutStr Func in Here'}
function ToutStr.AsString:string;
begin
Result := String(_fhm)+
          String(_fhmhy)+
          String(_poslsh)+
          String(_sqh)+
          String(_pch)+
          String(_kh)+
          String(_yxq)+
          String(_yhh)+
          String(_jsckh)+
          String(_zdh)+
          String(_shh)+
          String(_jyje)+
          String(_mm)+
          String(_fqfkxx)+
          String(_fkhdm)+
          String(_yhzjjyrq)+
          String(_yhzjjysj);
end;
function ToutStr.fhm:string;
begin
  Result := string(_fhm);
end;
procedure ToutStr.fhm(val:string); 
begin
  StrPCopy(_fhm,val);
end; 
function ToutStr.fhmhy:string;
begin
  Result := string(_fhmhy);
end;
procedure ToutStr.fhmhy(val:string);
begin
  StrPCopy(_fhmhy,val);
end;   
function ToutStr.poslsh:string;
begin
  Result := string(_poslsh);
end;
procedure ToutStr.poslsh(val:string); 
begin
  StrPCopy(_poslsh,val);
end;  
function ToutStr.sqh:string;
begin
  Result := string(_sqh);
end;
procedure ToutStr.sqh(val:string);  
begin
  StrPCopy(_sqh,val);
end; 
function ToutStr.pch:string;
begin
  Result := string(_pch);
end;
procedure ToutStr.pch(val:string);  
begin
  StrPCopy(_pch,val);
end; 
function ToutStr.kh:string;
begin
  Result := string(_kh);
end;
procedure ToutStr.kh(val:string);  
begin
  StrPCopy(_kh,val);
end; 
function ToutStr.yxq:string;
begin
  Result := string(_yxq);
end;
procedure ToutStr.yxq(val:string);
begin
  StrPCopy(_yxq,val);
end;   
function ToutStr.yhh:string;
begin
  Result := string(_yhh);
end;
procedure ToutStr.yhh(val:string);  
begin
  StrPCopy(_yhh,val);
end; 
function ToutStr.jsckh:string;
begin
  Result := string(_jsckh);
end;
procedure ToutStr.jsckh(val:string);  
begin
  StrPCopy(_jsckh,val);
end; 
function ToutStr.zdh:string;
begin
  Result := string(_zdh);
end;
procedure ToutStr.zdh(val:string);  
begin
  StrPCopy(_zdh,val);
end; 
function ToutStr.shh:string;
begin
  Result := string(_shh);
end;
procedure ToutStr.shh(val:string);
begin
  StrPCopy(_shh,val);
end;   
function ToutStr.jyje:string;
begin
  Result := string(_jyje);
end;
procedure ToutStr.jyje(val:string);  
begin
  StrPCopy(_jyje,val);
end; 
function ToutStr.mm:string;
begin
  Result := string(_mm);
end;
procedure ToutStr.mm(val:string);  
begin
  StrPCopy(_mm,val);
end; 
function ToutStr.fqfkxx:string;
begin
  Result := string(_fqfkxx);
end;
procedure ToutStr.fqfkxx(val:string);  
begin
  StrPCopy(_fqfkxx,val);
end; 
function ToutStr.fkhdm:string;
begin
  Result := string(_fkhdm);
end;
procedure ToutStr.fkhdm(val:string);  
begin
  StrPCopy(_fkhdm,val);
end; 
function ToutStr.yhzjjyrq:string;
begin
  Result := string(_yhzjjyrq);
end;
procedure ToutStr.yhzjjyrq(val:string); 
begin
  StrPCopy(_yhzjjyrq,val);
end;  
function ToutStr.yhzjjysj:string;
begin
  Result := string(_yhzjjysj);
end;
procedure ToutStr.yhzjjysj(val:string); 
begin
  StrPCopy(_yhzjjysj,val);
end;
{$ENDREGION}


procedure addTransLog(transStr:string);
var
  Transfilename:string;
  cmdStr:string;
begin
  Transfilename := ExtractFilePath(Application.ExeName)+'Prints/TransLogfile.txt';
  cmdStr := 'cmd /c echo '+transStr+' >> ' + Transfilename;
  WinExec(PChar(cmdStr),0);
end;

//绕过windows驱动，
//优点, 及打及停
//缺点，暂时不知道怎么控制字体，及大小
//参数
//sDeviceName打印机名字，  sData：要打印的字符串
function  SendDataToPrinter(sDeviceName, sData: String): Boolean;
var
  bResult  : Boolean;
  hPrinter : Cardinal;
  tDocInfo : _DOC_INFO_1A;
  iWrited  : Cardinal;
begin
  bResult := OpenPrinter(PChar(sDeviceName), hPrinter, nil);
  if bResult then
  begin
    tDocInfo.pDocName := PChar('name1');
    tDocInfo.pOutputFile := nil;
    tDocInfo.pDatatype := 'TEXT';
    bResult := StartDocPrinter(hPrinter, 1, @tDocInfo) <> 0;
    if bResult then
    begin
      bResult := StartPagePrinter(hPrinter);
      bResult := bResult and WritePrinter(hPrinter, @sData[1], Length(sData), iWrited);
      bResult := bResult and EndPagePrinter(hPrinter);
      EndDocPrinter(hPrinter);
    end;
    ClosePrinter(hPrinter);
  end;
  Result := bResult;
end;
procedure CreateReport;
begin
  qrp:=TQuickRep.Create(nil);
  qrs:=TQRSubDetail.Create(qrp);
  qrm:=TQRMemo.Create(qrs);

  qrp.Parent := nil;
  qrs.Parent := qrp;
  qrm.Parent := qrs;

  qrp.Page.PaperSize := Custom;
  qrp.Page.Width := 70;
  qrp.Page.Length := 20;

  qrp.Page.LeftMargin:=1;
  qrp.Page.TopMargin:=1;
  qrp.Page.RightMargin:=1;
  qrp.Page.BottomMargin:=1;
end;

//用QuickRep打印
//有点，可以控制字体，格式
//缺点，不能准确的计算内容高度，几十个以后，末尾会留下一段空白
//无参数，调用默认打印机  打印程序目录下 print.txt
procedure doPrint2;
var
  bp:TBitmap;
  fh:Integer;
  v_IsPrinterJoin: Boolean;
begin
  if (qrp=nil) or
     (qrs=nil) or
     (qrm=nil) then
   CreateReport;
  {$IFDEF Maks}
  Frm_Dyjgl.ChangeDefaultPrinter(银行小票,True);
  {$ELSE}
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(3, v_IsPrinterJoin);
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_new, True);
  except
  end;
  {$ENDIF}   
  bp := TBitmap.Create;
  bp.Canvas.Font := qrm.Font;
  qrm.Lines.LoadFromFile(ExtractFilePath(Application.ExeName)+'print.txt');
  qrm.Lines.Text := #10#13+qrm.Lines.Text;
  fh := bp.Canvas.TextHeight('你');
  qrp.Height := (fh+1) * qrm.Lines.Count;
  qrs.Height:= qrp.Height;
  qrm.Height := qrs.Height;
  qrp.Print;
  bp.Free;
  {$IFDEF Maks}
  Frm_Dyjgl.RevertDefaultPrinter(True);
  {$ELSE}
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, True);
  except
  end;
  {$ENDIF}
end;

procedure doPrint;
var
  memo:TStringList;
  f:TextFile;

  PrintStr:string;
  bl:boolean;
begin
  if not FileExists(ExtractFilePath(Application.ExeName)+'print.txt') then begin
    Application.MessageBox('没有找到银行交易打印数据。', '错误', MB_OK +
      MB_ICONSTOP);
    Exit;
  end;
  memo := TStringList.Create;
  memo.LoadFromFile(ExtractFilePath(Application.ExeName)+'print.txt');

  PrintStr := Printer.Printers[func_GetPrinterIndex( 3, bl )];
  SendDataToPrinter(PrintStr,memo.Text);

end;

function doTrans(inStr:TinStr):string;
var
  TmpInStr:string;
  ResStr:array[0..255] of Char;
  Addr:DWORD;
  P: PChar;
begin
  if not FileExists(ExtractFilePath(Application.ExeName)+'sldll.dll') then begin
    Application.MessageBox('银行交易动态库不存在,银行卡交易失败!', '错误', MB_OK +
      MB_ICONSTOP);
    Result := '';
    Exit;
  end;
  p := PChar(ExtractFilePath(Application.ExeName)+'sldll.dll');
  Addr := LoadLibrary(p);
  CardTrans := GetProcAddress(Addr,'CardTrans');

  TmpInStr := instr.asstring;
  CardTrans(PChar(TmpInStr),ResStr);
  Result := ResStr;

  FreeLibrary(Addr);
end;

function FormatRes(str:string):ToutStr;
var
  res:ToutStr;
  TmpFilename:string;
begin
  addTransLog(str);
  res := toutstr.Create;
  CopyMemory(PChar(res),@PChar(str)[-4],Length(str));
  Result := res;
  if res.fhm = '000000' then begin
    if FileExists(ExtractFilePath(Application.ExeName)+'print.txt')  then begin
      ForceDirectories(ExtractFilePath(Application.ExeName)+'Prints/');
      TmpFilename := ExtractFilePath(Application.ExeName)+
                     'Prints/print_'+FormatDateTime('yyyyMMddHHmmsszzz',Now) + '.txt';
      CopyFile(PChar(ExtractFilePath(Application.ExeName)+'print.txt'),PChar(TmpFilename) , false);

      //满足以下条件不打印银行小票
      //字段存在且为1 则不打印
      DM_data.Qry_pub1.Close;
      DM_data.Qry_pub1.SQL.Text := 'select COL_LENGTH(''sys_xt_kg'',''yhskdy'') len ';
      DM_data.Qry_pub1.Open;
      if not DM_data.Qry_pub1.FieldByName('len').IsNull then
      begin
        DM_data.Qry_pub1.Close;
        DM_data.Qry_pub1.SQL.Text := 'select yhskdy from sys_xt_kg';
        DM_data.Qry_pub1.Open;
        if not DM_data.Qry_pub1.FieldByName('yhskdy').AsBoolean then
        begin
           exit;
        end;
      end;

      if username='sys_zysf' then
        doPrint2
      else
        doPrint2;

      DeleteFile(ExtractFilePath(Application.ExeName)+'print.txt');
    end;
  end;
end;

//划卡消费
function hkxf(je:Double):ToutStr;
var
  tmp:string;
  instr:TinStr;
begin
  tmp := FloatToStr(je * 100);
  tmp := StringOfChar('0', 12 - length(tmp)) + tmp;
  instr:=TinStr.Create;
  instr.jydm('01');
  instr.jyje(tmp);

  tmp := doTrans(instr);
  Result := FormatRes(tmp);
end;

//划卡退费
function hktf(lsh:string;je:Double):ToutStr;
var
  tmp:string;
  instr:TinStr;
begin
  tmp := FloatToStr(je * 100);
  tmp := StringOfChar('0', 12 - length(tmp)) + tmp;
  instr:=TinStr.Create;
  instr.jydm('02');
  instr.jyje(tmp);
  instr.poslsh(lsh);

  tmp := doTrans(instr);
  Result := FormatRes(tmp);
end;

//余额查询
function yecx:ToutStr;
var
  instr:TinStr;
  tmp:string;
  ss:array[0..255] of Char;
begin
  instr:=TinStr.Create;
  instr.jydm('03');
  tmp := doTrans(instr);
  Result := FormatRes(tmp);
end;

//当班结算
function dbjs:ToutStr;
var
  instr:TinStr;
  tmp:string;
  ss:array[0..255] of Char;
begin
  instr:=TinStr.Create;
  instr.jydm('14');
  tmp := doTrans(instr);
  Result := FormatRes(tmp);
end;

//重打单据
function cddj(djh:string='000000'):ToutStr;
var
  instr:TinStr;
  tmp:string;
  ss:array[0..255] of Char;
begin
  instr:=TinStr.Create;
  instr.jydm('12');
  instr.jyje('000000000000');
  instr.poslsh(djh);
  tmp := doTrans(instr);
  Result := FormatRes(tmp);
end;

function clsh:ToutStr;
var
  instr:TinStr;
  tmp:string;
  ss:array[0..255] of Char;
begin
  instr:=TinStr.Create;
  instr.jydm('15');
  tmp := doTrans(instr);
  Result := FormatRes(tmp);
end;

    //'000000                                交易成功                                                                                     000000000000'
end.
