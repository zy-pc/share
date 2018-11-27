unit p_fzxt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient;

type
  Tfrm_fzxt = class(TForm)
    idtcpclnt1: TIdTCPClient;
    qryQry_ledIP: TADOQuery;
  private
     procedure dlcsh(azsdm:string);
  public
  
    function fztxs(ysdm, brxm, bybh, xh, dzxh, dzmc: string; hjbz, clbz: BOOLean): string;
    function Breakhjfztxs(ysdm, brxm, bybh, xh, dzxh, dzmc: string; hjbz, clbz: BOOLean): string; //暂停呼叫
    { Public declarations }
  end;

var
  frm_fzxt: Tfrm_fzxt;
  fztip: string;
  fztdk: Integer = 8091; //分诊台端口
  Dev: Integer = -1;
  F_ZSDM:string;
implementation
 uses p_dm;
{$R *.dfm}

function Tfrm_fzxt.fztxs(ysdm, brxm, bybh, xh, dzxh, dzmc: string; hjbz, clbz: BOOLean): string;
var
  xml, hjbz1: string;
begin
  if clbz then
  begin
    if Application.MessageBox('此病人已处理，是否呼叫！', '提示', MB_YESNO +
      MB_ICONINFORMATION) = IDNO then
    begin
      Exit;
    end;
  end;
  if hjbz then
  begin
    hjbz1 := '1';
  end
  else
  begin
    hjbz1 := '0';
  end;
  dlcsh(ysdm);
//  if pub_yydm='0257' then    //全州医院代码
//  begin
//    ysdm:= F_ZSDM
//  end;
  if Trim(fztip) <> '' then
  begin
    xml := 'aaaaaaaaaaaaaaaa'
      + '<ysdm>' + ysdm + '</ysdm>'
      + '<brxm>' + brxm + '</brxm>'
      + '<hjbz>' + hjbz1 + '</hjbz>'
      + '<ksdm>' + pub_ksdm + '</ksdm>'
      + '<xh>' + xh + '</xh>'
      + '<dzxh>' + dzxh + '</dzxh>'
      + '<dzmc>' + dzmc + '</dzmc>'
      + '<bybh>' + bybh + '</bybh>'
      + 'aaaaaaaaaaaaa';
//   xml:=  'aaaaaaaaaaaaaaaa<ysdm>0012</ysdm><brxm>李丽</brxm><hjbz>1</hjbz><ksdm>0009</ksdm><xh>1</xh>aaaaaaaaaaaaa' ;
    try
      try
        idtcpclnt1.Disconnect;
      except
//        on e: Exception do
//        ShowMessage(e.Message);
      end;
      idtcpclnt1.Port := fztdk;
      idtcpclnt1.Host := fztip;
      idtcpclnt1.ConnectTimeout := 3000;
      idtcpclnt1.Connect;
      idtcpclnt1.Socket.Write(xml + #10);
    except on e: Exception do
      begin
        Application.MessageBox(PChar('没有连接到分诊台系统2！' + e.Message), '提示', MB_OK
          + MB_ICONINFORMATION);
      end;
    end;
  end;
end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_fzxt.Breakhjfztxs
  作者:      yangshuai
  日期:      2017.09.05
  参数:      ysdm, brxm, bybh, xh, dzxh, dzmc: string; hjbz, clbz: BOOLean
  返回值:    string
-------------------------------------------------------------------------------}
function Tfrm_fzxt.Breakhjfztxs(ysdm, brxm, bybh, xh, dzxh, dzmc: string; hjbz, clbz: BOOLean): string;
var
  xml, hjbz1: string;
begin
  if clbz then
  begin
    if Application.MessageBox('此病人已处理，是否呼叫！', '提示', MB_YESNO +
      MB_ICONINFORMATION) = IDNO then
    begin
      Exit;
    end;
  end;
  if hjbz then
  begin
    hjbz1 := '1';
  end
  else
  begin
    hjbz1 := '0';
  end;
  dlcsh(ysdm);
//  if pub_yydm='0257' then    //全州医院代码
//  begin
//    ysdm:= F_ZSDM
//  end;
  if Trim(fztip) <> '' then
  begin
    xml := 'aaaaaaaaaaaaaaaa'
      + '<ysdm>' + ysdm + '</ysdm>'
      + '<brxm>' + '暂停呼叫' + '</brxm>'
      + '<hjbz>' + hjbz1 + '</hjbz>'
      + '<ksdm>' + pub_ksdm + '</ksdm>'
      + '<xh>' + xh + '</xh>'
      + '<dzxh>' + dzxh + '</dzxh>'
      + '<dzmc>' + dzmc + '</dzmc>'
      + '<bybh>' + '99999' + '</bybh>'
      + '<ztbz>' + '1' + '</ztbz>'
      + 'aaaaaaaaaaaaa';
//   xml:=  'aaaaaaaaaaaaaaaa<ysdm>0012</ysdm><brxm>李丽</brxm><hjbz>1</hjbz><ksdm>0009</ksdm><xh>1</xh>aaaaaaaaaaaaa' ;
    try
      try
        idtcpclnt1.Disconnect;
      except
//        on e: Exception do
//        ShowMessage(e.Message);
      end;
      idtcpclnt1.Port := fztdk;
      idtcpclnt1.Host := fztip;
      idtcpclnt1.ConnectTimeout := 3000;
      idtcpclnt1.Connect;
      idtcpclnt1.Socket.Write(xml + #10);
    except on e: Exception do
      begin
        Application.MessageBox(PChar('没有连接到分诊台系统2！' + e.Message), '提示', MB_OK
          + MB_ICONINFORMATION);
      end;
    end;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_fzxt.dlcsh
  作者:      yangshuai
  日期:      2017.08.28
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_fzxt.dlcsh(azsdm:string);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Clear;
  try
    if pub_yydm='0257' then    //全州医院代码
    begin
       DM_data.qry_pub.SQL.text := 'select * from fzxt_fztsz a,fzxt_zyys b ' +
      ' where a.dm = b.fztdm ' +
      ' and convert(char,b.rq,112) = convert(char,getdate(),112)'+
      ' and b.ksdm ='+#39+pub_ksdm+#39+
      ' and b.zsdm ='+#39+trim(azsdm)+#39;
//       DM_data.qry_pub.Parameters.ParamByName('ksdm').value := pub_ksdm;
    end else
    begin
       DM_data.qry_pub.SQL.text := 'select a.* from fzxt_fztsz a,fzxt_zyys b ' +
      ' where a.dm = b.fztdm ' +
      ' and b.ysdm =:ysdm  ' +
      ' and convert(char,b.rq,112) = convert(char,getdate(),112)';
      DM_data.qry_pub.Parameters.ParamByName('ysdm').value := pub_czydm;
    end;
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.RecordCount = 0 then
    begin
      Application.MessageBox('没有连接到分诊台系统1！', '提示', MB_OK +
        MB_ICONINFORMATION);
      fztip := '';
    end
    else
    begin
      fztip := DM_data.qry_pub.FieldByName('ip').AsString;
      if DM_data.qry_pub.FieldByName('dk').AsString <> '' then
      fztdk := DM_data.qry_pub.FieldByName('dk').AsInteger;
      if pub_yydm='0257' then    //全州医院代码
      begin
       F_ZSDM :=Trim(DM_data.qry_pub.FieldByName('zsdm').AsString);
      end;
    end;
  except
    on e: Exception do
      ShowMessage(e.Message);
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_fzxt.ReadInifile
  作者:      yangshuai
  日期:      2016.11.08
  参数:      zsmc:string
  返回值:    无
-------------------------------------------------------------------------------}
//procedure Tfrm_fzxt.ReadInifile(zsmc:string);
//var
//  Myini:TIniFile;//ini配置文件
//  FileName:string;//文件路径
//begin
//  //首次判断ini文件是否存在，不存在则创建ini配置文件
//  FileName := ExtractFilePath(Application.ExeName)+ 'Option.ini';
//  Myini := TIniFile.Create(FileName);
//  if not FileExists(FileName) then
//  begin
//    Myini.WriteInteger('Option','Switch',0);  //开关
//    Myini.WriteInteger('Option','Choices',2); //通讯类型
//    Switch := Myini.ReadInteger('Option','Switch',0);
//    Myini.WriteInteger('Option','ColorType',0);
//    Myini.WriteInteger('Option','oBaudRate',0);
//    Myini.WriteInteger('Option','DevType',0);
//    Myini.WriteInteger('Option','eComPort',4);
//    Myini.Destroy;
//  end else
//  begin
//    Switch := Myini.ReadInteger('Option','Switch',0);
//    Choices := Myini.ReadInteger('Option','Choices',0);
//    ColorType := Myini.ReadInteger('Option','ColorType',0);
//    oBaudRate := Myini.ReadInteger('Option','oBaudRate',0);
//    eNotifyMode := Myini.ReadInteger('Option','DevType',0);
//    eComPort := Myini.ReadString('Option','eComPort','0');
//    Myini.Destroy;
//  end;
//end;

//获取Led颜色
//function Tfrm_fzxt.GetColorType: Integer;
//var
//  Color:Integer;
//  FileName:string;
//  Myini:TIniFile;
//begin
//  FileName := ExtractFilePath(Application.ExeName)+ 'Option.ini';
//  if FileExists(FileName) then
//  begin
//    Myini := TIniFile.Create(FileName);
//    Color := Myini.ReadInteger('Option','ColorType',0);
//  end;
//  case Color of
//    0: Result := SCREEN_COLOR;
//    1: Result := SCREEN_THREE;
//    2: Result := SCREEN_FULL;
//  else
//    Result := SCREEN_COLOR;
//  end;
//end;
//建立通讯
//function  Tfrm_fzxt.GetDeviceParam(aksdm,aysdm:string):Boolean;
//var
//  Myini:TIniFile;
//  ADevice: TDeviceParam;
//begin
//  Result:=False;
//  ReadInifile(aksdm);  //读取公用通信参数
//  LED_CloseAll;  //关闭通信连接
//  Dev := -1;
//  ZeroMemory(@ADevice, SizeOf(TDeviceParam));
//  case Choices of
//    1:
//    begin
//      //串口通讯
//      ADevice.devType := DEVICE_TYPE_COM;  // 通讯设备类型为网络
//      case oBaudRate of          // 此处必须和主板中的设置一致，其他波特率的定义，可以查看LEDAPI.pas单元
//        0: ADevice.Speed := SBR_9600;
//        1: ADevice.Speed := SBR_14400;
//        2: ADevice.Speed := SBR_19200;
//        3: ADevice.Speed := SBR_38400;
//        4: ADevice.Speed := SBR_57600;
//      else ADevice.Speed := SBR_57600;
//      end;
//      ADevice.ComPort := StrToIntDef(eComPort, 1);    // 串口号(1-255)
//    end;
//    2:
//    begin
//      //网络TCP通讯
//      ADevice.devType := DEVICE_TYPE_TCP;  // 通讯设备类型为网络
//      ADevice.locPort := 9011;             // 本地端口号 可以任意指定，不要和其他软件冲突即可
//    end;
//  else
//    begin
//      //网络通讯
//      ADevice.devType := DEVICE_TYPE_UDP;  // 通讯设备类型为网络
//      ADevice.locPort := 9011;             // 本地端口号 可以任意指定，不要和其他软件冲突即可
//    end;
//  end;
//
//  if eNotifyMode = 1 then
//  begin
//    //同步方式 阻塞方式
//    Dev := LED_Open(@ADevice, NOTIFY_BLOCK, 0, 0);
//  end else
//  begin
//    //异步方式 窗体消息方式
//    Dev := LED_Open(@ADevice, NOTIFY_EVENT, Handle, WM_LED_NOTIFY);
//  end;
//
//  if Dev = INVALID_DEVICE_HANDLE then
//  begin
//    MessageBox(Handle, '无法打开指定通讯链路!', '错误信息', MB_OK);
//    Exit;
//  end;
//  //查询本科室本医生的LED地址和控制卡地址
//  Qry_ledIP.Close;
//  Qry_ledIP.SQL.Text := 'select * from LED_ipset where ksdm='+QuotedStr(aksdm)+
//  ' and ysdm='+ QuotedStr(aysdm);
//  Qry_ledIP.Open;
//  if Qry_ledIP.RecordCount > 0  then
//  begin
//    eIP:=  Qry_ledIP.FieldByName('LEDIP').AsString;
//    eAddr:=  Qry_ledIP.FieldByName('kzkdz').AsString;
//    Result:=True;
//  end else
//  begin
//    Result:=False;
//  end;
//end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_fzxt.LEDShowSendMessage
  作者:      yangshuai
  日期:      2016.11.08
  参数:      Zsmc,Dqjz,Dqdz: string
  返回值:    Boolean
-------------------------------------------------------------------------------}
//function Tfrm_fzxt.LEDShowSendMessage(aksmc,aczymc,aDqjzbr,aDqdzbr: string):Boolean;
//var
//  K:Integer;
//  ARect:TRect;
//begin
//  Result := False;
//  if Dev=INVALID_DEVICE_HANDLE then Exit;  //如果没有打开通讯链路，退出
//  {
//  //发送windows字体的文字 ,标明 windows的字体名称 和大小
//  //  例程使用楷体\12号字   使用的黄色
//  //   文字可以定义为变量
//  }
//
//  //可以添加多个页面，每个页面内可以添加多个文字或者图片
//  //在下面的例子中，将要添加两个页面，第1个页面一个文字，第2个页面两个文字
//
//  MakeRoot(ROOT_PLAY, GetColorType);
//  //showmessage(dqjz+'|'+dqdz);
//  AddLeaf(20000);    //播放20秒
//  ARect := Rect(0, 0, 128, 128);   //显示区域限定在此区域中小屏（0,0,128,128）
//  //添加了多行文本，使用自动换行
//  AddTextEx(PAnsiChar( PChar(aksmc) + ':' + PChar(aczymc)) , @ARect, 1, 1, 1, '宋体', 11, RGB(255,255,0), 1, WORDWRAP_DISABLED);
//
//  ARect := Rect(0, 20, 128, 128);   //显示区域限定在此区域中 Rect(0, 20, 768, 288);
//  AddTextEx(PAnsiChar(
//  '就诊:'+PChar(adqjzbr)+ #13#10 +
//  '待诊:'+PChar(adqdzbr)), @ARect, 2, 1, 1, '宋体', 11, RGB(255,255,0), 0, WORDWRAP_DISABLED);
////  AddTextExA('欢迎领导莅临参观指导工作'#13#10'HELLO', @ARect, 2, 1, 1, '宋体', 12, RGB(255,255,0), 0, WORDWRAP_DISABLED, 8);
//
////  AddLeaf(10000);    //播放10秒
////  ARect := Rect(0, 0, 64, 32);   //显示区域限定在此区域中
////  AddText(PChar(eInput.Text), @ARect, 2, 1, 1, '宋体', 8, RGB(255,255,0));
//
//  LED_SendToScreen(Dev, StrToIntDef(eAddr, 0), PChar(eIP), LED_REMOTE_PORT);
//
//  //如果是同步阻塞方式，直接调用接口函数，获取发送结果
//  //if eNotifyMode = 1 then DoLEDNotify;
//   Result := True;
//end;

end.
