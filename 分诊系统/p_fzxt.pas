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
    function Breakhjfztxs(ysdm, brxm, bybh, xh, dzxh, dzmc: string; hjbz, clbz: BOOLean): string; //��ͣ����
    { Public declarations }
  end;

var
  frm_fzxt: Tfrm_fzxt;
  fztip: string;
  fztdk: Integer = 8091; //����̨�˿�
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
    if Application.MessageBox('�˲����Ѵ����Ƿ���У�', '��ʾ', MB_YESNO +
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
//  if pub_yydm='0257' then    //ȫ��ҽԺ����
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
//   xml:=  'aaaaaaaaaaaaaaaa<ysdm>0012</ysdm><brxm>����</brxm><hjbz>1</hjbz><ksdm>0009</ksdm><xh>1</xh>aaaaaaaaaaaaa' ;
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
        Application.MessageBox(PChar('û�����ӵ�����̨ϵͳ2��' + e.Message), '��ʾ', MB_OK
          + MB_ICONINFORMATION);
      end;
    end;
  end;
end;


{-------------------------------------------------------------------------------
  ������:    Tfrm_fzxt.Breakhjfztxs
  ����:      yangshuai
  ����:      2017.09.05
  ����:      ysdm, brxm, bybh, xh, dzxh, dzmc: string; hjbz, clbz: BOOLean
  ����ֵ:    string
-------------------------------------------------------------------------------}
function Tfrm_fzxt.Breakhjfztxs(ysdm, brxm, bybh, xh, dzxh, dzmc: string; hjbz, clbz: BOOLean): string;
var
  xml, hjbz1: string;
begin
  if clbz then
  begin
    if Application.MessageBox('�˲����Ѵ����Ƿ���У�', '��ʾ', MB_YESNO +
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
//  if pub_yydm='0257' then    //ȫ��ҽԺ����
//  begin
//    ysdm:= F_ZSDM
//  end;
  if Trim(fztip) <> '' then
  begin
    xml := 'aaaaaaaaaaaaaaaa'
      + '<ysdm>' + ysdm + '</ysdm>'
      + '<brxm>' + '��ͣ����' + '</brxm>'
      + '<hjbz>' + hjbz1 + '</hjbz>'
      + '<ksdm>' + pub_ksdm + '</ksdm>'
      + '<xh>' + xh + '</xh>'
      + '<dzxh>' + dzxh + '</dzxh>'
      + '<dzmc>' + dzmc + '</dzmc>'
      + '<bybh>' + '99999' + '</bybh>'
      + '<ztbz>' + '1' + '</ztbz>'
      + 'aaaaaaaaaaaaa';
//   xml:=  'aaaaaaaaaaaaaaaa<ysdm>0012</ysdm><brxm>����</brxm><hjbz>1</hjbz><ksdm>0009</ksdm><xh>1</xh>aaaaaaaaaaaaa' ;
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
        Application.MessageBox(PChar('û�����ӵ�����̨ϵͳ2��' + e.Message), '��ʾ', MB_OK
          + MB_ICONINFORMATION);
      end;
    end;
  end;
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_fzxt.dlcsh
  ����:      yangshuai
  ����:      2017.08.28
  ����:      ��
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_fzxt.dlcsh(azsdm:string);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Clear;
  try
    if pub_yydm='0257' then    //ȫ��ҽԺ����
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
      Application.MessageBox('û�����ӵ�����̨ϵͳ1��', '��ʾ', MB_OK +
        MB_ICONINFORMATION);
      fztip := '';
    end
    else
    begin
      fztip := DM_data.qry_pub.FieldByName('ip').AsString;
      if DM_data.qry_pub.FieldByName('dk').AsString <> '' then
      fztdk := DM_data.qry_pub.FieldByName('dk').AsInteger;
      if pub_yydm='0257' then    //ȫ��ҽԺ����
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
  ������:    Tfrm_fzxt.ReadInifile
  ����:      yangshuai
  ����:      2016.11.08
  ����:      zsmc:string
  ����ֵ:    ��
-------------------------------------------------------------------------------}
//procedure Tfrm_fzxt.ReadInifile(zsmc:string);
//var
//  Myini:TIniFile;//ini�����ļ�
//  FileName:string;//�ļ�·��
//begin
//  //�״��ж�ini�ļ��Ƿ���ڣ��������򴴽�ini�����ļ�
//  FileName := ExtractFilePath(Application.ExeName)+ 'Option.ini';
//  Myini := TIniFile.Create(FileName);
//  if not FileExists(FileName) then
//  begin
//    Myini.WriteInteger('Option','Switch',0);  //����
//    Myini.WriteInteger('Option','Choices',2); //ͨѶ����
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

//��ȡLed��ɫ
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
//����ͨѶ
//function  Tfrm_fzxt.GetDeviceParam(aksdm,aysdm:string):Boolean;
//var
//  Myini:TIniFile;
//  ADevice: TDeviceParam;
//begin
//  Result:=False;
//  ReadInifile(aksdm);  //��ȡ����ͨ�Ų���
//  LED_CloseAll;  //�ر�ͨ������
//  Dev := -1;
//  ZeroMemory(@ADevice, SizeOf(TDeviceParam));
//  case Choices of
//    1:
//    begin
//      //����ͨѶ
//      ADevice.devType := DEVICE_TYPE_COM;  // ͨѶ�豸����Ϊ����
//      case oBaudRate of          // �˴�����������е�����һ�£����������ʵĶ��壬���Բ鿴LEDAPI.pas��Ԫ
//        0: ADevice.Speed := SBR_9600;
//        1: ADevice.Speed := SBR_14400;
//        2: ADevice.Speed := SBR_19200;
//        3: ADevice.Speed := SBR_38400;
//        4: ADevice.Speed := SBR_57600;
//      else ADevice.Speed := SBR_57600;
//      end;
//      ADevice.ComPort := StrToIntDef(eComPort, 1);    // ���ں�(1-255)
//    end;
//    2:
//    begin
//      //����TCPͨѶ
//      ADevice.devType := DEVICE_TYPE_TCP;  // ͨѶ�豸����Ϊ����
//      ADevice.locPort := 9011;             // ���ض˿ں� ��������ָ������Ҫ�����������ͻ����
//    end;
//  else
//    begin
//      //����ͨѶ
//      ADevice.devType := DEVICE_TYPE_UDP;  // ͨѶ�豸����Ϊ����
//      ADevice.locPort := 9011;             // ���ض˿ں� ��������ָ������Ҫ�����������ͻ����
//    end;
//  end;
//
//  if eNotifyMode = 1 then
//  begin
//    //ͬ����ʽ ������ʽ
//    Dev := LED_Open(@ADevice, NOTIFY_BLOCK, 0, 0);
//  end else
//  begin
//    //�첽��ʽ ������Ϣ��ʽ
//    Dev := LED_Open(@ADevice, NOTIFY_EVENT, Handle, WM_LED_NOTIFY);
//  end;
//
//  if Dev = INVALID_DEVICE_HANDLE then
//  begin
//    MessageBox(Handle, '�޷���ָ��ͨѶ��·!', '������Ϣ', MB_OK);
//    Exit;
//  end;
//  //��ѯ�����ұ�ҽ����LED��ַ�Ϳ��ƿ���ַ
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
  ������:    Tfrm_fzxt.LEDShowSendMessage
  ����:      yangshuai
  ����:      2016.11.08
  ����:      Zsmc,Dqjz,Dqdz: string
  ����ֵ:    Boolean
-------------------------------------------------------------------------------}
//function Tfrm_fzxt.LEDShowSendMessage(aksmc,aczymc,aDqjzbr,aDqdzbr: string):Boolean;
//var
//  K:Integer;
//  ARect:TRect;
//begin
//  Result := False;
//  if Dev=INVALID_DEVICE_HANDLE then Exit;  //���û�д�ͨѶ��·���˳�
//  {
//  //����windows��������� ,���� windows���������� �ʹ�С
//  //  ����ʹ�ÿ���\12����   ʹ�õĻ�ɫ
//  //   ���ֿ��Զ���Ϊ����
//  }
//
//  //������Ӷ��ҳ�棬ÿ��ҳ���ڿ�����Ӷ�����ֻ���ͼƬ
//  //������������У���Ҫ�������ҳ�棬��1��ҳ��һ�����֣���2��ҳ����������
//
//  MakeRoot(ROOT_PLAY, GetColorType);
//  //showmessage(dqjz+'|'+dqdz);
//  AddLeaf(20000);    //����20��
//  ARect := Rect(0, 0, 128, 128);   //��ʾ�����޶��ڴ�������С����0,0,128,128��
//  //����˶����ı���ʹ���Զ�����
//  AddTextEx(PAnsiChar( PChar(aksmc) + ':' + PChar(aczymc)) , @ARect, 1, 1, 1, '����', 11, RGB(255,255,0), 1, WORDWRAP_DISABLED);
//
//  ARect := Rect(0, 20, 128, 128);   //��ʾ�����޶��ڴ������� Rect(0, 20, 768, 288);
//  AddTextEx(PAnsiChar(
//  '����:'+PChar(adqjzbr)+ #13#10 +
//  '����:'+PChar(adqdzbr)), @ARect, 2, 1, 1, '����', 11, RGB(255,255,0), 0, WORDWRAP_DISABLED);
////  AddTextExA('��ӭ�쵼ݰ�ٲι�ָ������'#13#10'HELLO', @ARect, 2, 1, 1, '����', 12, RGB(255,255,0), 0, WORDWRAP_DISABLED, 8);
//
////  AddLeaf(10000);    //����10��
////  ARect := Rect(0, 0, 64, 32);   //��ʾ�����޶��ڴ�������
////  AddText(PChar(eInput.Text), @ARect, 2, 1, 1, '����', 8, RGB(255,255,0));
//
//  LED_SendToScreen(Dev, StrToIntDef(eAddr, 0), PChar(eIP), LED_REMOTE_PORT);
//
//  //�����ͬ��������ʽ��ֱ�ӵ��ýӿں�������ȡ���ͽ��
//  //if eNotifyMode = 1 then DoLEDNotify;
//   Result := True;
//end;

end.
