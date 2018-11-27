unit p_pkrkxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids,Registry,IniFiles,
  xmldom, XMLIntf, msxmldom, XMLDoc, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP,OleCtrls,SHDocVw,HttpApp, ComCtrls,
  Buttons, Mask, DBCtrls, SOAPHTTPTrans , Rio,
  SOAPHTTPClient,ActiveX,InvokeRegistry,superobject ,msxml, DBGridEhGrouping,
  GridsEh, DBGridEh;              // XMLIntf, msxmldom


const
  // ƶ����Ϣ��ѯxml
  SOAP_PKCX =
  '<?xml version="1.0" encoding="text/html;charset=utf-8"?>'+
  '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"  '+
  ' xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">' +
  '<soap:Header>'+
    '<MySoapHeader xmlns="http://scpkrk/api">'+
    '<appKey>:appkey</appKey>'+
    '<appSecret>:appSecret</appSecret>'+
    '</MySoapHeader>'+
  '</soap:Header>'+
  '<soap:Body>'+
    '<Pkrkcx xmlns="http://scpkrk/api">'+
      '<Paramete>'+
        '<IDCARD>'+
          '<string>:sfzh</string>'+            //7    510802196802228677
        '</IDCARD>'+
      '</Paramete>'+
    '</Pkrkcx>'+
  '</soap:Body>'+
  '</soap:Envelope>';

  //������Ϣxml
  SOAP_Cxxx =
  '<?xml version="1.0" encoding="utf-8"?>'+
  '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">'+
    '<soap:Header>'+
      '<MySoapHeader xmlns="http://scpkrk/api">'+
        '<appKey>:appKey</appKey>'+
        '<appSecret>:appSecret</appSecret>'+
      '</MySoapHeader>'+
    '</soap:Header>'+
    '<soap:Body>'+
      '<Rollback xmlns="http://scpkrk/api">'+
        '<ID>:ID</ID>'+
      '</Rollback>'+
    '</soap:Body>'+
  '</soap:Envelope>';

  //��ȡ����Ϣ
  SOAP_Hqdb =
  '<?xml version="1.0" encoding="utf-8"?>'+
  '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">'+
    '<soap:Header>'+
      '<MySoapHeader xmlns="http://scpkrk/api">'+
        '<appKey>:appKey</appKey>'+                         //b2de5375df9a8f55b64fe6a7886180a6
        '<appSecret>:appSecret</appSecret>'+                //283237cb9e35406badc6a10981a858f4
      '</MySoapHeader>'+
    '</soap:Header>'+
    '<soap:Body>'+
      '<DiseaseItems xmlns="http://scpkrk/api">'+
        '<CODE>:CODE</CODE>'+
      '</DiseaseItems>'+
    '</soap:Body>'+
  '</soap:Envelope>';

  //��Ϣ�ϱ�xml
  SOAP_Xxsc =
  '<?xml version="1.0" encoding="utf-8"?> '+
  '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">'+
  '<soap:Header>'+
    '<MySoapHeader xmlns="http://scpkrk/api">'+
      '<appKey>:appKey</appKey>'+                              // appKey
      '<appSecret>:appSecret</appSecret>'+                     // appSecret
    '</MySoapHeader>'+
  '</soap:Header>'+
  '<soap:Body>'+
    '<TreatmentReport xmlns="http://scpkrk/api">'+
      '<Paramete>'+
        '<IDCARD>:IDCARD</IDCARD>'+                            //--����֤��
        '<diseaseConfirm>'+
          '<DISEASE_CODE_1>:DISEASE_CODE_1</DISEASE_CODE_1>'+	 //--����һ���������
          '<DISEASE_CODE_2>:DISEASE_CODE_2</DISEASE_CODE_2>'+  //--���������������
          '<DISEASE_OTHER>:DISEASE_OTHER</DISEASE_OTHER>'+     //--������������
          '<DISEASE_DATE>:DISEASE_DATE</DISEASE_DATE>'+	       //--����ȷ��ʱ��
          '<TREATMENTTYPE >:TREATMENTTYPE</TREATMENTTYPE>'+   //--��������
          '<HOSPITAL_DEPENDENCY>:HOSPITAL_DEPENDENCY</HOSPITAL_DEPENDENCY>'+ //  --ȷ��ҽԺ����  1.���� 2.����
        '</diseaseConfirm>'+
        '<diseaseTreat>'+
          '<FILL_TIME>:FILL_TIME</FILL_TIME>'+		              //--����ʱ��
          '<SAFEGUARD_POLICY>:SAFEGUARD_POLICY</SAFEGUARD_POLICY>'+ //--�������� 1.��ũ�� 2.�󲡱��� 3.��ҵ���� 4.ҽ�ƾ��� 5.��ʱ���� 6.���ƾ��� 7.��ƶ������� 8.���� 9.��
          '<TREAT_TYPE>:TREAT_TYPE</TREAT_TYPE>'+               //--���Ʒ�ʽ 1.��������2.ҩ������3.����תҩ������4.����
          '<TREAT_RESULT>:TREAT_RESULT</TREAT_RESULT> '+         //--���ν�� 1.����2.�����ת3.���ڿ���4.���� 5.������
          '<HOSPITALTIME>:HOSPITALTIME</HOSPITALTIME>'+          //--סԺʱ��
          '<OUTHOSPITALTIME>:OUTHOSPITALTIME</OUTHOSPITALTIME>'+ //--��Ժʱ��
          '<IS_HOSPITAL>:IS_HOSPITAL</IS_HOSPITAL>'+             //--�Ƿ�סԺ����
        '</diseaseTreat> '+
        '<diseaseTreatCost>'+
          '<COST_YLJGJM>:COST_YLJGJM</COST_YLJGJM>'+		        //--ҽ�ƻ�������
          '<COST_JBYLBX>:COST_JBYLBX</COST_JBYLBX>'+            //--����ҽ�Ʊ���
          '<COST_DBYLBX>:COST_DBYLBX</COST_DBYLBX>'+            //��ҽ�Ʊ���
          '<COST_MZYLJZ>:COST_MZYLJZ</COST_MZYLJZ>'+            //����ҽ�ƾ���
          '<COST_JBYJJZ>:COST_JBYJJZ</COST_JBYJJZ>'+            //����Ӧ������
          '<COST_QYZYFYBX>:COST_QYZYFYBX</COST_QYZYFYBX> '+     //������סԺ����ȫ��������
          '<COST_YYAXJJ>:COST_YYAXJJ</COST_YYAXJJ>'+            //ҽҩ���Ļ���
          '<COST_ZDJBFBJJ>:COST_ZDJBFBJJ</COST_ZDJBFBJJ> '+     //�ش󼲲���ƶ����
          '<COST_WSFBJJ>:COST_WSFBJJ</COST_WSFBJJ>'+            //������ƶ����
          '<COST_SYBX>:COST_SYBX</COST_SYBX>'+                  //��ҵ����
          '<COST_QTBXJE>:COST_QTBXJE</COST_QTBXJE>'+            //�����������
          '<COST_LSJZ>:COST_LSJZ</COST_LSJZ>'+                  //��ʱ����
          '<COST_LJBXFY>:COST_LJBXFY</COST_LJBXFY>'+            //�ۼƱ�����������
          '<COST_ZFYLFY>:COST_ZFYLFY</COST_ZFYLFY>'+            //�Է�ҽ�Ʒ���
          '<COST_YLZFY>:COST_YLZFY</COST_YLZFY>'+               //ҽ���ܷ���
          '<COST_SM_YBZLFY>:COST_SM_YBZLFY</COST_SM_YBZLFY>'+   //һ�����Ʒ�
          '<COST_SM_YLHZF>:COST_SM_YLHZF</COST_SM_YLHZF>'+      //Ժ�ڻ����
          '<COST_SM_RNZFMSSF>:COST_SM_RNZFMSSF</COST_SM_RNZFMSSF>'+     //�����ϸ���������
          '<COST_SM_AZBKBDZL>:COST_SM_AZBKBDZL</COST_SM_AZBKBDZL>'+     //���̲�����������
          '<COST_SM_JBGGWSFW>:COST_SM_JBGGWSFW</COST_SM_JBGGWSFW>'+     //����������������
          '<COST_SM_FYWSJKFW>:COST_SM_FYWSJKFW</COST_SM_FYWSJKFW>'+     //����������������
          '<COST_SM_XHYLFW>:COST_SM_XHYLFW</COST_SM_XHYLFW>'+           // Ѳ��ҽ�Ʒ���
          '<COST_SM_YWZLBCB>:COST_SM_YWZLBCB</COST_SM_YWZLBCB>'+        //ҩ�����ư��没
          '<COST_SM_JBYLBX>:COST_SM_JBYLBX</COST_SM_JBYLBX>'+           //����ҽ�����˽ɷ�
          '<COST_SM_PKRCFZYFM>:COST_SM_PKRCFZYFM</COST_SM_PKRCFZYFM>'+  //ƶ���в���סԺ����
          '<COST_SBZ_XXBRBZ>:COST_SBZ_XXBRBZ</COST_SBZ_XXBRBZ>'+        //����Ѫ���没�˲���
          '<COST_SBZ_SSZLBCB>:COST_SBZ_SSZLBCB</COST_SBZ_SSZLBCB>'+     //�������ư��没����
          '<COST_SBZ_DGJB>:COST_SBZ_DGJB</COST_SBZ_DGJB>'+              //��ǽڲ������겹��
          '<COST_SBZ_ZJETKFS>:COST_SBZ_ZJETKFS</COST_SBZ_ZJETKFS>'+     //_0-6��м���ͯ��������������ѵ���͸���
        '</diseaseTreatCost>'+
      '</Paramete>'+
    '</TreatmentReport>'+
  '</soap:Body>'+
'</soap:Envelope>';

type
  Tfrm_pkrkxx = class(TForm)
    btn1: TButton;
    xml1: TXMLDocument;
    HTTPReqResp1: THTTPReqResp;
    IdHTTP1: TIdHTTP;
    pnl1: TPanel;
    idhtp2: TIdHTTP;
    idhtp3: TIdHTTP;
    btn3: TButton;
    HTTPRIO1: THTTPRIO;
    HTTPRIO2: THTTPRIO;
    qry1: TADOQuery;
    qry_cxjbxx: TADOQuery;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    lbl1: TLabel;
    edt_tmh: TEdit;
    grp1: TGroupBox;
    grp2: TGroupBox;
    lbl2: TLabel;
    edt_brxm: TEdit;
    lbl3: TLabel;
    edt_sfzh: TEdit;
    lbl4: TLabel;
    edt_brxb: TEdit;
    edt_brnl: TEdit;
    lbl5: TLabel;
    lbl7: TLabel;
    edt_tmh1: TEdit;
    edt_zyh: TEdit;
    lbl9: TLabel;
    lbl6: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl15: TLabel;
    lbl19: TLabel;
    edt_yjjb: TEdit;
    cbb_zlzl: TComboBox;
    cbb_zlfs: TComboBox;
    cbb_zlxg: TComboBox;
    mmo1: TMemo;
    lbl14: TLabel;
    grp3: TGroupBox;
    lbl16: TLabel;
    edt_zfy: TEdit;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl_qtbxje: TLabel;
    lbl_lsjz: TLabel;
    lbl_lfbxbzfy: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    lbl37: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    lbl40: TLabel;
    lbl41: TLabel;
    lbl42: TLabel;
    lbl43: TLabel;
    lbl44: TLabel;
    lbl45: TLabel;
    lbl46: TLabel;
    edt_jbyjjz: TEdit;
    edt_yljgjm: TEdit;
    edt_ybzlf: TEdit;
    edt_sybx: TEdit;
    edt_wsfpjj: TEdit;
    edt_zfulfy: TEdit;
    edt_jbggwsfw: TEdit;
    edt_fywsjkfw: TEdit;
    edt_ywzlbcb: TEdit;
    edt_xhylfw: TEdit;
    edt_ylhzf: TEdit;
    edt_qtbxje: TEdit;
    edt_zyfyqbx: TEdit;
    edt_jbylbx: TEdit;
    edt_wqxxcbebz: TEdit;
    edt_pkyfzyfm: TEdit;
    edt_cjetsh: TEdit;
    edt_bnzfmsff: TEdit;
    edt_lsjz: TEdit;
    edt_dbylbx: TEdit;
    edt_mzyljz: TEdit;
    edt_sszlbcbbz: TEdit;
    edt_ylaxjj: TEdit;
    edt_zdjbfpjj: TEdit;
    edt_ljbxbzfy: TEdit;
    edt_azbkbdzl: TEdit;
    edt_jbybgejf: TEdit;
    edt_dgjbhznbz: TEdit;
    lbl8: TLabel;
    grid_yjjb: TDBGridEh;
    ds_cxjbxx: TDataSource;
    qry_cxejjb: TADOQuery;
    grid1: TDBGridEh;
    ds_cxejjb: TDataSource;
    grid_ejjb: TDBGridEh;
    qry_cxbrxx: TADOQuery;
    lbl24: TLabel;
    chk_xnh: TCheckBox;
    chk_yljz: TCheckBox;
    chk_fpjjjz: TCheckBox;
    chk_dbbx: TCheckBox;
    chk_lsjz: TCheckBox;
    chk_sybx: TCheckBox;
    chk_csjz: TCheckBox;
    chk_w: TCheckBox;
    chk_qt: TCheckBox;
    edt_erjb: TEdit;
    btn4: TButton;
    grid_zybrqk: TDBGridEh;
    ds_cxbrxx: TDataSource;
    edt_cyrq: TEdit;
    lbl29: TLabel;
    cbb_brlb: TComboBox;
    cbb_yysd: TComboBox;
    lbl30: TLabel;
    edt1: TEdit;
    grid_brxxcx: TDBGridEh;
    qry_brxxcx: TADOQuery;
    ds_brxxcx: TDataSource;
    e_tmh: TDBEdit;
    e_yjjb: TDBEdit;
    e_brnl: TDBEdit;
    e_brxm: TDBEdit;
    e_sfzh: TDBEdit;
    e_zfy: TDBEdit;
    e_ejjb: TDBEdit;
    e_zyh: TDBEdit;
    e_ljbx: TDBEdit;
    e_scsj: TDBEdit;
    e_zfje: TDBEdit;
    e_qtjb: TDBEdit;
    lbl47: TLabel;
    lbl48: TLabel;
    lbl49: TLabel;
    lbl50: TLabel;
    lbl51: TLabel;
    lbl52: TLabel;
    lbl53: TLabel;
    lbl54: TLabel;
    lbl55: TLabel;
    lbl56: TLabel;
    lbl57: TLabel;
    lbl58: TLabel;
    idhtp4: TIdHTTP;
    qry_icd10: TADOQuery;
    ds_icd10: TDataSource;
    grid_icd10: TDBGridEh;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure cbb1MouseEnter(Sender: TObject);
    procedure edt_tmhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_yysdChange(Sender: TObject);
    procedure edt_yjjbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_ejjbChange(Sender: TObject);
    procedure cbb_erjbChange(Sender: TObject);
    procedure cbb_zlzlChange(Sender: TObject);
    procedure grid_ejbKeyPress(Sender: TObject; var Key: Char);
    procedure cbb_erjbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ejjbKeyPress(Sender: TObject; var Key: Char);
    procedure edt_erjbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn4Click(Sender: TObject);
    procedure grid_zybrqkKeyPress(Sender: TObject; var Key: Char);
    procedure grid_zybrqkExit(Sender: TObject);
    procedure edt_sfzhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pgc1Change(Sender: TObject);
    procedure grid_brxxcxCellClick(Column: TColumnEh);
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grid_ejjbExit(Sender: TObject);
    procedure grid_yjjbExit(Sender: TObject);
    procedure cbb_zlzlKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_zlfsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_zlxgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_icd10KeyPress(Sender: TObject; var Key: Char);
    procedure grid_icd10Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    app_Secret,app_key ,sfzh: WideString;
    PkcxSoapData: WideString;     //ƶ����ѯ
    XxscSoapData: WideString;     //��Ϣ�ϴ�
    CxxxSoapData: WideString;     //������Ϣ
    HqdbSoapData: WideString;     //��ȡ��

    Pkcx_Url,                     //ƶ����Ϣ��ѯ��ַ
    Hqdb_Url,                     //��ȡ����Ϣ���ݵ�ַ
    Cxxx_Url,                     //������Ϣ��ַ
    Scxx_Url:string;              //������Ϣ�ϱ���ַ
    Re_id :string;                //����ֵ:���ξ����ϱ���ϢΨһID ,���ڳ�����Ϣ
    pk_brbz :string;              //���˱�־
    yysd :string;                 //ҽԺ����
    Re_Dbxx ,Re_Dbxxbm ,Re_Dbxxejbm :string;               //�жϴ���Ϣ���
    bzzc :string;                 //��������
    cx_id :string;                //����ΨһID

  function GetNodeValue( a: IDOMNode ): string;  
  Function FindStr(BegSprStr,EdSpStr,Source:String):String;
  procedure jzxxsb(Sender: TObject);
  procedure Hqdbxx(BM: string);
  procedure clear;
  function SubStrConut(mStr: string; mSub: string): Integer;
  end;

var
  frm_pkrkxx: Tfrm_pkrkxx;

implementation
 uses p_dm,p_func,p_main;
{$R *.dfm}

//���ҳ����Ϣ
procedure Tfrm_pkrkxx.clear;
begin
  edt_tmh.Text := '';
  edt_brxm.Text := '';
  edt_tmh1.Text := '';
  edt_zyh.Text := '';
  edt_brxb.Text := '';
  edt_brnl.Text := '';
//  cbb_yysd.Text := '';
  edt_sfzh.Text := '';

  edt_yjjb.text := '';
  edt_erjb.text := '';
  mmo1.Text := '';
//  cbb_zlzl.text := '';
//  cbb_zlfs.Text := ''; 
//  cbb_zlxg.text := '';
  edt_cyrq.text := '';

  edt_zfy.text := '0.00';
  edt_dbylbx.text := '0.00';
  edt_jbyjjz.text := '0.00';
  edt_sybx.text := '0.00';
  edt_ljbxbzfy.text := '0.00';
  edt_ylhzf.text := '0.00';
  edt_jbggwsfw.text := '0.00';
  edt_ywzlbcb.text := '0.00';
  edt_wqxxcbebz.text := '0.00';

  edt_yljgjm.text := '0.00';
  edt_mzyljz.text := '0.00';
  edt_wsfpjj.text := '0.00';
  edt_qtbxje.text := '0.00';
  edt_zfulfy.text := '0.00';
  edt_bnzfmsff.text := '0.00';
  edt_fywsjkfw.text := '0.00';
  edt_jbybgejf.text := '0.00';
  edt_sszlbcbbz.text := '0.00';

  edt_jbylbx.text := '0.00';
  edt_ylaxjj.text := '0.00';
  edt_zdjbfpjj.text := '0.00';
  edt_lsjz.text := '0.00';
  edt_ybzlf.text := '0.00';
  edt_azbkbdzl.text := '0.00';
  edt_xhylfw.text := '0.00';
  edt_pkyfzyfm.text := '0.00';
  edt_dgjbhznbz.text := '0.00';
  
  edt_cjetsh.text := '0.00';
  edt_zyfyqbx.text := '0.00';
  
end;
//��ȡ����Ϣ
procedure Tfrm_pkrkxx.Hqdbxx(BM: STRING);
var
  db_RequestStream : TStringStream;  //������Ϣ
  db_ResponseStream : TStringStream; //������Ϣ
  db_ResponseStr : string;           //����ֵ
  db_ResponseStr1 : string;           //����ֵ
  db_jo :string;
  db_Re_str :string;

  db_ApiCode :string ;
  db_ApiMsg :string;
  db_re :string;
  code :string;

  i,count :integer;
  txt:TextFile;
  jbbm,jbmc,jbpym :string;
  Node,unode: IXMLNode;
  xml2 :IXMLDOMDocument;     
  rNode, usrNode: IXMLDOMNode;
  xml3:TXMLDocument  ;

begin
  Re_Dbxx := '';
//  if idhtp4.Connected then
  idhtp4.Disconnect;
  idhtp4.Free;
  idhtp4:=tidhttp.Create(nil);
  idhtp4.Request.ContentType := 'text/xml; charset=utf-8';         //��xml�ĸ�ʽ��������
  idhtp4.Request.Method := 'POST';
  CODE :=BM;
  //��ȡ�Զ���soap����
  HqdbSoapData := SOAP_Hqdb;
  HqdbSoapData := StringReplace(HqdbSoapData,':appkey',app_key,[rfReplaceAll, rfIgnoreCase]);
  HqdbSoapData := StringReplace(HqdbSoapData,':appSecret',app_Secret,[rfReplaceAll, rfIgnoreCase]);
  HqdbSoapData := StringReplace(HqdbSoapData,':CODE',CODE,[rfReplaceAll, rfIgnoreCase]);

  db_RequestStream := TStringStream.Create(HqdbSoapData);
  db_ResponseStream := TStringStream.Create('');
  //idhtp3.ReadTimeout := 1000 * 60 * 1;

  idhtp4.Post(Hqdb_Url,db_RequestStream,db_ResponseStream);
  db_jo:=  UTF8decode(idhtp4.Post(Hqdb_Url,db_RequestStream));
  db_ResponseStr:= UTF8decode(db_ResponseStream.DataString); //��GB2312����תΪunicode����
  db_ResponseStr1:=db_ResponseStream.DataString;

  idhtp4.Disconnect;

  db_Re_str :=trim(db_responseStr);
//  memo1.Text :=db_Re_str;
  db_ApiCode :=FindStr('<ApiCode>','</ApiCode>',db_Re_str);
  db_ApiMsg :=FindStr('<ApiMsg>','</ApiMsg>',db_Re_str);

  if   trim(UpperCase (db_ApiCode)) = 'OK'then
  begin
    //��ȡһ������
    if (POS('<Result />',db_Re_str)=0) and (trim(BM)='')  then
    begin

      count:=SubStrConut(db_Re_str,'<DiseaseItem>');

      // ����1:ͨ������xml�ļ���ȡ�ڵ���Ϣ
      {
      //д��txt��
      Assignfile(txt,'E:\������Ϣ.txt');  //ָ���ļ�·��
      Rewrite(txt);
      Writeln(txt,trim(db_ResponseStr1));
      closefile(txt);

      xml1.Create(nil);
      xml1.LoadFromFile('E:\������Ϣ.txt');
      node := xml1.DocumentElement;
      node := node.ChildNodes[0].ChildNodes[0].ChildNodes[0].ChildNodes[2].ChildNodes[0].ChildNodes[0];
      //  Memo1.Lines.Text := node.XML;
      }

      //����2  ͨ������xml�ַ�����ȡ�ڵ�
      xml3 :=TXMLDocument.Create(Self);
      xml3.Active :=True;
      xml3.LoadFromXML(db_ResponseStr1);
      node := xml3.DocumentElement;

      qry1.Close;
      qry1.SQL.Text :='delete  pkrk_yjjbxx where czydm ='''+pub_czydm+''' ';
      qry1.ExecSQL;

      for i := 0 to Count-1 do
      begin
        jbmc := '';
        jbbm := '';
        jbpym :=  '';
        jbbm := Trim(node.ChildNodes[0].ChildNodes[0].ChildNodes[0].ChildNodes[2].ChildNodes[i].ChildNodes[0].NodeValue);
        jbmc := Trim(node.ChildNodes[0].ChildNodes[0].ChildNodes[0].ChildNodes[2].ChildNodes[i].ChildNodes[1].NodeValue) ;
        jbpym := p_func.GetPym(jbmc);

        qry1.Close;
        qry1.SQL.Text :='insert into pkrk_yjjbxx (czydm,jbbm,jbmc,pym) values ('''+pub_czydm+''','''+jbbm+''','''+jbmc+''','''+jbpym+''')';
        qry1.ExecSQL;
      end;

      Re_Dbxx :='1';

    end else     //��ȡ��������
    if (POS('<Result />',db_Re_str)=0) and (trim(BM)<>'') then
    begin
      count:=SubStrConut(db_Re_str,'<DiseaseItem>');

      xml3 :=TXMLDocument.Create(Self);
      xml3.Active :=True;
      xml3.LoadFromXML(db_ResponseStr1);
      node := xml3.DocumentElement;

      qry1.Close;
      qry1.SQL.Text :='delete  pkrk_ejjbxx where czydm ='''+pub_czydm+''' ';
      qry1.ExecSQL;

      for i := 0 to Count-1 do
      begin
        jbmc := '';
        jbbm := '';
        jbpym := '';
        jbbm := Trim(node.ChildNodes[0].ChildNodes[0].ChildNodes[0].ChildNodes[2].ChildNodes[i].ChildNodes[0].NodeValue);
        jbmc := Trim(node.ChildNodes[0].ChildNodes[0].ChildNodes[0].ChildNodes[2].ChildNodes[i].ChildNodes[1].NodeValue) ;
        jbpym := p_func.GetPym(jbmc);

        qry1.Close;
        qry1.SQL.Text :='insert into pkrk_ejjbxx (czydm,jbbm,jbmc,pym) values ('''+pub_czydm+''','''+jbbm+''','''+jbmc+''','''+jbpym+''')';
        qry1.ExecSQL;
      end;
      Re_Dbxx :='2';
    end else
    begin
      Re_Dbxx :='3';
    end;

  end else
  begin
    Application.MessageBox(PCHAR(db_ApiCode +':'+db_ApiMsg), '����', 0 + 16);
  end;

end;

function Tfrm_pkrkxx.SubStrConut(mStr: string; mSub: string): Integer;
{ �������ַ������ֵĴ��� }
begin
  Result :=
    (Length(mStr) - Length(StringReplace(mStr, mSub, '', [rfReplaceAll]))) div
    Length(mSub);
end; 

//������Ϣ�ϴ�
procedure Tfrm_pkrkxx.jzxxsb(Sender: TObject);
var
  sc_RequestStream : TStringStream;  //������Ϣ
  sc_ResponseStream : TStringStream; //������Ϣ
  sc_ResponseStr : string;           //����ֵ
  sc_jo :string;
  Re_str :string;

  qtjb :string;
  sc_ApiCode :string ;
  sc_ApiMsg :string;
begin
//  idhtp2.Disconnect;
//  if idhtp2.Connected then
//  idhtp2.Disconnect;
//  idhtp2.Free;
  idhtp2:=tidhttp.Create(nil);
  idhtp2.Request.ContentType := 'text/xml; charset=gb2312';         //��xml�ĸ�ʽ��������
  idhtp2.Request.Method := 'POST';

  //��ȡ�Զ���soap����
  XxscSoapData := SOAP_Xxsc;
  XxscSoapData := StringReplace(XxscSoapData,':appkey',app_key,[rfReplaceAll, rfIgnoreCase]);
  XxscSoapData := StringReplace(XxscSoapData,':appSecret',app_Secret,[rfReplaceAll, rfIgnoreCase]);
  XxscSoapData := StringReplace(XxscSoapData,':IDCARD',sfzh,[rfReplaceAll, rfIgnoreCase]);

  XxscSoapData := StringReplace(XxscSoapData,':DISEASE_CODE_1',Re_Dbxxbm,[rfReplaceAll, rfIgnoreCase]);      //һ������
  XxscSoapData := StringReplace(XxscSoapData,':DISEASE_CODE_2',Re_Dbxxejbm,[rfReplaceAll, rfIgnoreCase]);    //��������
  XxscSoapData := StringReplace(XxscSoapData,':DISEASE_OTHER',trim(mmo1.text),[rfReplaceAll, rfIgnoreCase]); //��������

  XxscSoapData := StringReplace(XxscSoapData,':DISEASE_DATE',qry_cxbrxx.FieldByName('ryrq').AsString,[rfReplaceAll, rfIgnoreCase]);     //����ȷ��ʱ��
  XxscSoapData := StringReplace(XxscSoapData,':TREATMENTTYPE',inttostr(cbb_zlzl.ItemIndex+1),[rfReplaceAll, rfIgnoreCase]);             //��������
  XxscSoapData := StringReplace(XxscSoapData,':HOSPITAL_DEPENDENCY',inttostr(cbb_yysd.ItemIndex+1),[rfReplaceAll, rfIgnoreCase]);       //ȷ��ҽԺ����

  XxscSoapData := StringReplace(XxscSoapData,':FILL_TIME',qry_cxbrxx.FieldByName('ryrq').AsString,[rfReplaceAll, rfIgnoreCase]);        //����ʱ��
  XxscSoapData := StringReplace(XxscSoapData,':SAFEGUARD_POLICY',bzzc,[rfReplaceAll, rfIgnoreCase]);                                    //��������
  XxscSoapData := StringReplace(XxscSoapData,':TREAT_TYPE',inttostr(cbb_zlfs.ItemIndex+1),[rfReplaceAll, rfIgnoreCase]);                //���Ʒ�ʽ

  XxscSoapData := StringReplace(XxscSoapData,':TREAT_RESULT',inttostr(cbb_zlxg.ItemIndex+1),[rfReplaceAll, rfIgnoreCase]);              //���ν��
  XxscSoapData := StringReplace(XxscSoapData,':HOSPITALTIME',qry_cxbrxx.FieldByName('ryrq').AsString,[rfReplaceAll, rfIgnoreCase]);     //סԺʱ��
  if pk_brbz='1' then
  begin     //סԺ
    XxscSoapData := StringReplace(XxscSoapData,':OUTHOSPITALTIME',qry_cxbrxx.FieldByName('cyrq').AsString,[rfReplaceAll, rfIgnoreCase]);  //��Ժʱ��
  end else
  begin    //����
    XxscSoapData := StringReplace(XxscSoapData,':OUTHOSPITALTIME',qry_cxbrxx.FieldByName('ryrq').AsString,[rfReplaceAll, rfIgnoreCase]);  //��Ժʱ��
  end;

  XxscSoapData := StringReplace(XxscSoapData,':IS_HOSPITAL',inttostr(cbb_brlb.ItemIndex+1),[rfReplaceAll, rfIgnoreCase]);               //����orסԺ
  XxscSoapData := StringReplace(XxscSoapData,':COST_YLJGJM',trim(edt_yljgjm.text),[rfReplaceAll, rfIgnoreCase]);               //ҽ�ƻ�������
  XxscSoapData := StringReplace(XxscSoapData,':COST_JBYLBX',trim(edt_jbylbx.text),[rfReplaceAll, rfIgnoreCase]);               //����ҽ�Ʊ���

  XxscSoapData := StringReplace(XxscSoapData,':COST_DBYLBX',trim(edt_dbylbx.text),[rfReplaceAll, rfIgnoreCase]);               //��ҽ�Ʊ���
  XxscSoapData := StringReplace(XxscSoapData,':COST_MZYLJZ',trim(edt_mzyljz.text),[rfReplaceAll, rfIgnoreCase]);               //����ҽ�ƾ���
  XxscSoapData := StringReplace(XxscSoapData,':COST_JBYJJZ',trim(edt_jbyjjz.text),[rfReplaceAll, rfIgnoreCase]);               //����Ӧ������

  XxscSoapData := StringReplace(XxscSoapData,':COST_QYZYFYBX',trim(edt_zyfyqbx.text),[rfReplaceAll, rfIgnoreCase]);             //������סԺ����ȫ��������
  XxscSoapData := StringReplace(XxscSoapData,':COST_YYAXJJ',trim(edt_ylaxjj.text),[rfReplaceAll, rfIgnoreCase]);               //ҽҩ���Ļ���
  XxscSoapData := StringReplace(XxscSoapData,':COST_ZDJBFBJJ',trim(edt_zdjbfpjj.text),[rfReplaceAll, rfIgnoreCase]);             //�ش󼲲���ƶ����

  XxscSoapData := StringReplace(XxscSoapData,':COST_WSFBJJ',trim(edt_wsfpjj.text),[rfReplaceAll, rfIgnoreCase]);               //������ƶ����
  XxscSoapData := StringReplace(XxscSoapData,':COST_SYBX',trim(edt_sybx.text),[rfReplaceAll, rfIgnoreCase]);                 //��ҵ����
  XxscSoapData := StringReplace(XxscSoapData,':COST_QTBXJE',trim(edt_qtbxje.text),[rfReplaceAll, rfIgnoreCase]);               //�����������

  XxscSoapData := StringReplace(XxscSoapData,':COST_LSJZ',trim(edt_lsjz.text),[rfReplaceAll, rfIgnoreCase]);                 //��ʱ����
  XxscSoapData := StringReplace(XxscSoapData,':COST_LJBXFY',trim(edt_ljbxbzfy.text),[rfReplaceAll, rfIgnoreCase]);               //�ۼƱ�����������
  XxscSoapData := StringReplace(XxscSoapData,':COST_ZFYLFY',trim(edt_zfulfy.text),[rfReplaceAll, rfIgnoreCase]);               //�Է�ҽ�Ʒ���

  XxscSoapData := StringReplace(XxscSoapData,':COST_YLZFY',trim(edt_zfy.text),[rfReplaceAll, rfIgnoreCase]);                //ҽ���ܷ���
  XxscSoapData := StringReplace(XxscSoapData,':COST_SM_YBZLFY',trim(edt_ybzlf.text),[rfReplaceAll, rfIgnoreCase]);            //һ�����Ʒ�
  XxscSoapData := StringReplace(XxscSoapData,':COST_SM_YLHZF',trim(edt_ylhzf.text),[rfReplaceAll, rfIgnoreCase]);             //Ժ�ڻ����

  XxscSoapData := StringReplace(XxscSoapData,':COST_SM_RNZFMSSF',trim(edt_bnzfmsff.text),[rfReplaceAll, rfIgnoreCase]);          //�����ϸ���������
  XxscSoapData := StringReplace(XxscSoapData,':COST_SM_AZBKBDZL',trim(edt_azbkbdzl.text),[rfReplaceAll, rfIgnoreCase]);          //���̲�����������
  XxscSoapData := StringReplace(XxscSoapData,':COST_SM_JBGGWSFW',trim(edt_jbggwsfw.text),[rfReplaceAll, rfIgnoreCase]);          //����������������

  XxscSoapData := StringReplace(XxscSoapData,':COST_SM_FYWSJKFW',trim(edt_fywsjkfw.text),[rfReplaceAll, rfIgnoreCase]);          //����������������
  XxscSoapData := StringReplace(XxscSoapData,':COST_SM_XHYLFW',trim(edt_xhylfw.text),[rfReplaceAll, rfIgnoreCase]);            //Ѳ��ҽ�Ʒ���
  XxscSoapData := StringReplace(XxscSoapData,':COST_SM_YWZLBCB',trim(edt_ywzlbcb.text),[rfReplaceAll, rfIgnoreCase]);           //ҩ�����ư��没

  XxscSoapData := StringReplace(XxscSoapData,':COST_SM_JBYLBX',trim(edt_jbybgejf.text),[rfReplaceAll, rfIgnoreCase]);            //����ҽ�����˽ɷ�
  XxscSoapData := StringReplace(XxscSoapData,':COST_SM_PKRCFZYFM',trim(edt_pkyfzyfm.text),[rfReplaceAll, rfIgnoreCase]);         //ƶ���в���סԺ����
  XxscSoapData := StringReplace(XxscSoapData,':COST_SBZ_XXBRBZ',trim(edt_wqxxcbebz.text),[rfReplaceAll, rfIgnoreCase]);           //����Ѫ���没�˲���

  XxscSoapData := StringReplace(XxscSoapData,':COST_SBZ_SSZLBCB',trim(edt_sszlbcbbz.text),[rfReplaceAll, rfIgnoreCase]);          //�������ư��没����
  XxscSoapData := StringReplace(XxscSoapData,':COST_SBZ_DGJB',trim(edt_dgjbhznbz.text),[rfReplaceAll, rfIgnoreCase]);             //��ǽڲ������겹��
  XxscSoapData := StringReplace(XxscSoapData,':COST_SBZ_ZJETKFS',trim(edt_cjetsh.text),[rfReplaceAll, rfIgnoreCase]);          //_0-6��м���ͯ��������������ѵ���͸���


  sc_RequestStream := TStringStream.Create(XxscSoapData);
  sc_ResponseStream := TStringStream.Create('');
  idhtp2.ReadTimeout := 1000 * 60 * 1;

  //��֤ƶ����Ϣ
  idhtp2.Post(Scxx_Url,sc_RequestStream,sc_ResponseStream);
//  sc_jo:=  UTF8decode(idhtp2.Post(Scxx_Url,sc_RequestStream));
  sc_ResponseStr:= UTF8decode(sc_ResponseStream.DataString); //��GB2312����תΪunicode����

  Re_str :=trim(sc_responseStr);
  idhtp2.Disconnect;

  sc_ApiCode :=FindStr('<ApiCode>','</ApiCode>',Re_str);
  sc_ApiMsg :=FindStr('<ApiMsg>','</ApiMsg>',Re_str);
  Re_id  :=FindStr('<Result>','</Result>',Re_str);
//  showmessage(Re_id) ;
  if  trim(UpperCase (sc_ApiCode)) = 'OK' then
  begin
     Application.MessageBox(PCHAR(sc_ApiCode +':'+sc_ApiMsg), '��ʾ', MB_OK + MB_ICONINFORMATION);
    //�����ݲ�����У����ڳ�������  ��Re_id:Ϊƶ���˿ڷ��ص�Ψһidֵ
    dm_data.qry_pub.Close;                                          //formatdatetime('yyyy-MM-dd', strtodatetime(
    dm_data.qry_pub.SQL.Text :='INSERT INTO pkrk_scxx_x (re_id,tmh,zyh,brxm,pym,brnl,sfzh,ryrq,cyrq,brbz,jzzl,zlfs,zlxg, '+
                               'zfy,zfje,bxje,yjjb,ejjb,qtjb,cxbz,scrq)  '+
                               'VALUES ('''+Re_id+''','''+trim(edt_tmh1.text)+''','''+trim(edt_zyh.text)+''',   '+
                               ' '''+trim(edt_brxm.text)+''','''+getpym(trim(edt_brxm.text))+''','''+trim(edt_brnl.text)+''','''+trim(edt_sfzh.text)+''','''+formatdatetime('yyyy-MM-dd', strtodatetime(qry_cxbrxx.FieldByName('ryrq').AsString))+''', '+
                               ' '''+formatdatetime('yyyy-MM-dd', strtodatetime(qry_cxbrxx.FieldByName('cyrq').AsString))+''','''+trim(cbb_brlb.text)+''','''+trim(cbb_zlzl.text)+''','''+trim(cbb_zlfs.text)+''', '''+trim(cbb_zlxg.text)+''','+
                               ' '''+trim(edt_zfy.Text)+''','''+trim(edt_zfulfy.text)+''','''+trim(edt_ljbxbzfy.text)+''','''+trim(edt_yjjb.text)+''','''+trim(edt_erjb.text)+''', '+
                               ' '''+trim(mmo1.Text)+''',0,getdate() )';
    dm_data.qry_pub.ExecSQL;
  end else
  begin
    Application.MessageBox(PCHAR(sc_ApiCode +':'+sc_ApiMsg), '��ʾ', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure Tfrm_pkrkxx.mmo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if trim(edt_yjjb.text)='' then
  begin
    Application.MessageBox('��������һ��������', '����', 0 + 16);
    if edt_yjjb.CanFocus then
         edt_yjjb.SetFocus;
    exit;
  end else
  begin
    if key=13 then
    begin
      if pub_yydm<>'0266' then
      begin
        qry_icd10.Close;
        qry_icd10.SQL.Clear;
        qry_icd10.SQL.text :='select * from bagl..icd10 where JBBM LIKE ''%'+trim(mmo1.Text)+'%'' or pybm LIKE ''%'+trim(mmo1.Text)+'%''';
        qry_icd10.Open;

        if qry_icd10.IsEmpty then
        begin
          MessageBox(Handle,'û�п�ѡ�����ϱ���','��ʾ',64);
          abort;
        end else
        begin
          grid_icd10.Visible :=True;
          if grid_icd10.CanFocus then
            grid_icd10.SetFocus;
        end;
      end else
      begin
        if cbb_zlzl.CanFocus then
           cbb_zlzl.SetFocus;
      end;
    end;
  end;
end;

procedure Tfrm_pkrkxx.pgc1Change(Sender: TObject);
begin
  if pgc1.ActivePage =ts1 then
  begin
    btn3.Enabled :=false;
    btn1.Enabled :=true;
  end else
   if pgc1.ActivePage =ts2 then
  begin

    btn1.Enabled :=false;
    qry_brxxcx.Close;
    qry_brxxcx.Open;

    if qry_brxxcx.IsEmpty then
    begin
      btn3.Enabled := false;
    end else
    begin
      btn3.Enabled :=true;
    end;
  end;
end;

procedure Tfrm_pkrkxx.btn1Click(Sender: TObject);
var
  ResponseStream : TStringStream; //������Ϣ
  ResponseStr : string;           //����ֵ
  ResponseStr2 : string;
  RequestStream : TStringStream;  //������Ϣ

  iNode,iSubNode : IXMLNode;
  i :integer;
  jo: string;
  MDoc, Doc: TXMLDocument;

  str :widestring;
  ApiCode,State,IsDead,ApiMsg,RealName:string;

begin

  bzzc :=',';

  if trim(edt_tmh1.text)='' then
  begin
    Application.MessageBox('����Ų���Ϊ�գ�', '��ʾ', 0 + 16);
    if edt_tmh1.CanFocus then edt_tmh1.SetFocus;
    exit;
  end;
  if trim(cbb_yysd.text)='' then
  begin
    Application.MessageBox('ҽԺ���ز���Ϊ�գ�', '��ʾ', 0 + 16);
    if cbb_yysd.CanFocus then cbb_yysd.SetFocus;
    exit;
  end;
  if trim(edt_sfzh.text)='' then
  begin
    Application.MessageBox('����֤�Ų���Ϊ�գ�', '��ʾ', 0 + 16);

    if edt_sfzh.CanFocus then edt_sfzh.SetFocus;
    exit;
  end;
  if trim(edt_yjjb.text)='' then
  begin
    Application.MessageBox('һ����������Ϊ�գ�', '��ʾ', 0 + 16);
    if edt_yjjb.CanFocus then edt_yjjb.SetFocus;
    exit;
  end;
  if (trim(edt_yjjb.text)='��������')and (trim(mmo1.text )= '') then
  begin
    Application.MessageBox('������������Ϊ�գ�', '��ʾ', 0 + 16);
    if mmo1.CanFocus then mmo1.SetFocus;
    exit;
  end;
  if TRIM(cbb_zlzl.Text) ='' then
  BEGIN
    Application.MessageBox('�������಻��Ϊ�գ�', '��ʾ', 0 + 16);
    if cbb_zlzl.CanFocus then cbb_zlzl.SetFocus;
    exit;
  END;
  if TRIM(cbb_zlfs.Text) ='' then
  BEGIN
    Application.MessageBox('���η�ʽ����Ϊ�գ�', '��ʾ', 0 + 16);
    if cbb_zlfs.CanFocus then cbb_zlfs.SetFocus;
    exit;
  END;
  if TRIM(cbb_zlxg.Text) ='' then
  BEGIN
    Application.MessageBox('���η�ʽ����Ϊ�գ�', '��ʾ', 0 + 16);
    if cbb_zlxg.CanFocus then cbb_zlfs.SetFocus;
    exit;
  END;
  
  if(not chk_xnh.Checked ) and (not chk_yljz.Checked ) and (not chk_dbbx.Checked ) and(not chk_w.Checked ) and
    (not chk_fpjjjz.Checked ) and (not chk_lsjz.Checked ) and( not chk_sybx.Checked ) and(not chk_csjz.Checked ) and
    (not chk_qt.Checked ) then
  begin
    Application.MessageBox('�������߱�ѡ��ɶ�ѡ��', '��ʾ', 0 + 16);
    if chk_xnh.CanFocus then chk_xnh.SetFocus;
    exit;
  end else        //ƴ�ӱ�������
  begin
    if  chk_xnh.Checked then
    begin
      bzzc := bzzc+',1';
    end;
    if  chk_dbbx.Checked then
    begin
      bzzc := bzzc+',2';
    end;
     if  chk_sybx.Checked then
    begin
      bzzc := bzzc+',3';
    end;
     if  chk_dbbx.Checked then
    begin
      bzzc := bzzc+',4';
    end;
     if  chk_yljz.Checked then
    begin
      bzzc := bzzc+',5';
    end;
     if  chk_csjz.Checked then
    begin
      bzzc := bzzc+',6';
    end;
     if  chk_fpjjjz.Checked then
    begin
      bzzc := bzzc+',7';
    end;
     if  chk_qt.Checked then
    begin
      bzzc := bzzc+',8';
    end;
     if  chk_w.Checked then
    begin
      bzzc := bzzc+',9';
    end;

  end;
  bzzc :=trim(bzzc);
  bzzc := copy(bzzc, 3, length(bzzc) - 1);


//  IdHTTP1.Disconnect;
//  if IdHTTP1.Connected then
//  IdHTTP1.Disconnect;
//  IdHTTP1.Free;
  IdHTTP1:=tidhttp.Create(nil);
  IdHTTP1.Request.ContentType := 'text/xml; charset=gb2312';         //��xml�ĸ�ʽ��������
  IdHTTP1.Request.Method := 'POST';

  //��ȡ�Զ���soap����
  sfzh :=trim(edt_sfzh.text);
  PkcxSoapData := SOAP_PKCX;
  PkcxSoapData := StringReplace(PkcxSoapData,':appkey',app_key,[rfReplaceAll, rfIgnoreCase]);
  PkcxSoapData := StringReplace(PkcxSoapData,':appSecret',app_Secret,[rfReplaceAll, rfIgnoreCase]);
  PkcxSoapData := StringReplace(PkcxSoapData,':sfzh',sfzh,[rfReplaceAll, rfIgnoreCase]);

  RequestStream := TStringStream.Create(PkcxSoapData);
  ResponseStream := TStringStream.Create('');
  IdHttp1.ReadTimeout := 1000 * 60 * 1;

//  Memo1.Text := PkcxSoapData;
  //��֤ƶ����Ϣ
  IdHttp1.Post(Pkcx_Url,RequestStream,ResponseStream);
  jo:=  UTF8decode(idhttp1.Post(Pkcx_Url,requeststream));
  ResponseStr:= UTF8decode(ResponseStream.DataString); //��GB2312����תΪunicode����
//  Memo1.Text := trim(ResponseStr);

//  1������xmldocument ����
//  MDoc := TXMLDocument.Create( nil );
//  MDoc.Active := true;
//  MDoc.SaveToFile(ResponseStr);
//  str := XMLStringToWideString(MDoc.XML.Text);
//  ApiCode := GetNodeValue( doc.DOMDocument.getElementsByTagName( 'PkrkcxResult' )[0].childNodes[0] );
//  State := GetNodeValue( doc.DOMDocument.getElementsByTagName( 'OutRenYuanInfo' )[0].childNodes[2] );
//  State := GetNodeValue( doc.DOMDocument.getElementsByTagName( 'OutRenYuanInfo' )[0].childNodes[3] );


//  2����ȡ�ַ���   ��xml��ʽ���ַ�������
//  str := trim('<?xml version="1.0" encoding="utf-8"?>   '+
//'<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">    '+
//	'<soap:Body>   '+
//		'<PkrkcxResponse xmlns="http://scpkrk/api"> '+
//			'<PkrkcxResult>  '+
//				'<ApiCode>OK</ApiCode> '+
//				'<ApiMsg>��ѯ�ɹ�</ApiMsg> '+
//				'<Result> '+
//					'<OutRenYuanInfo> '+
//						'<RealName>����Ԫ</RealName> '+
//						'<IdCard>510802196802228677</IdCard>'+
//						'<State>true</State> '+
//						'<IsDead>false</IsDead> '+
//					'</OutRenYuanInfo>  '+
//				'</Result> '+
//			'</PkrkcxResult>  '+
//		'</PkrkcxResponse>  '+
//	'</soap:Body>  '+
//'</soap:Envelope>  ');

  str := trim(ResponseStr);
  IdHTTP1.Disconnect;

//  ApiCode :=copy(str,
//           pos('<ApiCode>',str)+length('<ApiCode>'),
//           pos('</ApiCode>',str)-pos('<ApiCode>',str)-length('</ApiCode>')+1)     ;
  ApiCode :=findstr('<ApiCode>','</ApiCode>',str) ;       //apicode ����ֵ
  State :=FindStr('<State>','</State>',str);              //state �Ƿ�Ϊƶ����
  IsDead :=FindStr('<IsDead>','</IsDead>',str);           //isdead�Ƿ�����
  ApiMsg :=FindStr('<ApiMsg>','</ApiMsg>',str);           //ApiMsg ������Ϣ
  RealName :=FindStr('<RealName>','</RealName>',str);           //RealName ��������

//  3�����ַ��� ����ȡ2���ֶμ���ַ��� ok
//  STR :='<1111>string1<1:1122><2233>string2<1:3344><4455>string3<1:5566>';
//  ApiCode:=findstr('<1111>','<1:1122>',str) ;       //apicode ����ֵ
//  State:=FindStr('<2233>','<1:3344>',str);              //state �Ƿ�Ϊƶ����
//  IsDead:=FindStr('<4455>','<1:5566>',str);           //isdead �Ƿ�����
//  showmessage(pos(pos('</State>',str)));

  if trim(UpperCase (ApiCode)) = 'OK' then
  begin
    if trim(UpperCase (State))='FALSE' then
    begin
      Application.MessageBox(pchar(RealName+'����ƶ���˿ڻ�δ��ƽ̨��ע�ᣡ'), '��ʾ', MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    if (trim(UpperCase (IsDead))='TRUE') and (trim(UpperCase (ApiCode))='FALSE') then
    begin
      Application.MessageBox(PCHAR(RealName+'��������'), '��ʾ', MB_OK + MB_ICONINFORMATION);
      Exit;
    end else
    begin
      jzxxsb(Sender);          //�ϴ���Ϣ
      clear;                   //�������
    end;
  end else
  begin
    Application.MessageBox(pchar(ApiCode), '��ʾ', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  if edt_tmh.CanFocus then edt_tmh.SetFocus;
end;

function Tfrm_pkrkxx.GetNodeValue( a: IDOMNode ): string;
begin
  if Assigned( a ) then
  begin
    result := a.nodeValue;
  end
  else
  begin
    Result := '';
  end;
end;


procedure Tfrm_pkrkxx.grid_brxxcxCellClick(Column: TColumnEh);
begin
  cx_id :='';//��ʼ��cx_id
  cx_id :=trim(qry_brxxcx.FieldByName('re_id').AsString);
end;

procedure Tfrm_pkrkxx.grid_ejbKeyPress(Sender: TObject; var Key: Char);
begin
  Re_Dbxxbm := '';
  if key = #13 then
  begin
    if qry_cxjbxx['jbmc'] = null then
    begin
      MessageBox(Handle,'δѡ�м�������','��ʾ',64);
      if edt_yjjb.CanFocus then edt_yjjb.SetFocus;
    end
    else
    begin
      grid_yjjb.Visible := false;
      edt_yjjb.Text := qry_cxjbxx['jbmc'];
      Re_Dbxxbm :=qry_cxjbxx['jbbm'];

      if trim(edt_yjjb.Text)<>'��������'  then
      begin
        Hqdbxx(Re_Dbxxbm);
        if Re_Dbxx='2' then   //�ж�������
        begin
          if edt_erjb.Enabled =false then
            edt_erjb.Enabled := true;
          if edt_erjb.CanFocus then
            edt_erjb.SetFocus;
          mmo1.Enabled := false;
          abort;
        end else              //ֻ��һ������
        begin
          if cbb_zlzl.CanFocus then
            cbb_zlzl.SetFocus;
          edt_erjb.Enabled := false;
          mmo1.Enabled :=false  ;
          abort;
        end;
      end else                //һ��Ϊ��������
      begin
        if mmo1.Enabled =false then
            mmo1.enabled :=true;
        edt_erjb.Enabled := false;
        if mmo1.CanFocus then mmo1.SetFocus;
      end;
    end;

  end
  else
  if key = #27 then
  begin
    edt_yjjb.Text := '';
    grid_yjjb.Visible := false;
    if edt_yjjb.CanFocus then  edt_yjjb.SetFocus;
    abort;
  end;
end;

procedure Tfrm_pkrkxx.grid_ejjbExit(Sender: TObject);
begin
    grid_ejjb.visible := false;
end;

procedure Tfrm_pkrkxx.grid_ejjbKeyPress(Sender: TObject; var Key: Char);
begin
  Re_Dbxxejbm := '';
  if key = #13 then
  begin
    if qry_cxejjb['jbmc'] = null then
    begin
      MessageBox(Handle,'δѡ�м�������','��ʾ',64);
      if edt_erjb.CanFocus then edt_erjb.SetFocus;
    end
    else
    begin
      grid_ejjb.Visible := false;
      edt_erjb.Text := qry_cxejjb['jbmc'];
      Re_Dbxxejbm :=qry_cxejjb['jbbm'];

     if cbb_zlzl.CanFocus then
       cbb_zlzl.SetFocus;
    end ;
  end
  else
  if key = #27 then
  begin
    edt_yjjb.Text := '';
    grid_yjjb.Visible := false;
    if edt_yjjb.CanFocus then  edt_yjjb.SetFocus;
    abort;
  end;

end;

procedure Tfrm_pkrkxx.grid_icd10Exit(Sender: TObject);
begin
  grid_icd10.Visible :=False;
end;

procedure Tfrm_pkrkxx.grid_icd10KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    mmo1.Text := qry_icd10['jbmc'];
    if cbb_zlzl.CanFocus then
    cbb_zlzl.SetFocus;

  end
  else
  if key = #27 then
  begin
    mmo1.Text :='';
    grid_icd10.Visible := false;
    if mmo1.CanFocus then mmo1.SetFocus;
    abort;
  end;
end;

procedure Tfrm_pkrkxx.grid_yjjbExit(Sender: TObject);
begin
  grid_yjjb.Visible := false;
end;

procedure Tfrm_pkrkxx.grid_zybrqkExit(Sender: TObject);
begin
  grid_zybrqk.Visible :=false;
end;

procedure Tfrm_pkrkxx.grid_zybrqkKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
//    edt_brxm.Text :=qry_cxbrxx['brxm'];
//    edt_brnl.Text :=qry_cxbrxx['brnl'];
//    edt_brxb.Text :=qry_cxbrxx['brxb'];
//    edt_tmh1.Text :=qry_cxbrxx['tmh'];
//    edt_zyh.Text :=qry_cxbrxx['zyh'];
//    edt_sfzh.Text :=qry_cxbrxx['sfzhm'];
//    edt_zfy.Text :=qry_cxbrxx['ylzfy'];
//    edt_ybzlf.Text :=qry_cxbrxx['bxje'];
//    edt_zfulfy.Text :=qry_cxbrxx['xjzf'];
//    edt_cyrq.text :=qry_cxbrxx['cyrq'];
    edt_brxm.Text := qry_cxbrxx['brxm'];
    edt_brnl.Text := qry_cxbrxx['brnl'];
    edt_brxb.Text := qry_cxbrxx['brxb'];
    edt_tmh1.Text := qry_cxbrxx['tmh'];
    edt_zyh.Text := qry_cxbrxx['zyh'];
    edt_sfzh.Text := qry_cxbrxx['sfzhm'];
    edt_zfy.Text := qry_cxbrxx['ylzfy'];          //�ܷ���
    edt_jbylbx.text := qry_cxbrxx['tczf'];        //����ҽ�Ʊ���
    edt_zfulfy.Text := qry_cxbrxx['xjzf'];        //�Է�ҽ�Ʒ���
    edt_dbylbx.text := qry_cxbrxx['dbyb'];        //�󲡱���
    edt_qtbxje.text := qry_cxbrxx['qtbxje'];      //�ۼƱ������
    edt_ljbxbzfy.text := qry_cxbrxx['ljbxje'];    //�ۼƱ������
    edt_cyrq.text := qry_cxbrxx['cyrq'];          //��Ժ����
    edt_ylhzf.Text:= qry_cxbrxx['bxje'];         //һ�����Ʒ�
    edt_yljgjm.text := qry_cxbrxx['yljgjm'];      //ҽ�ƻ�������

    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text :='select scicd from pkrk_scdzxx  ';
    DM_data.qry_pub.Open;

    grid_zybrqk.Visible :=false;
    if (DM_data.qry_pub.FieldByName('scicd').AsBoolean) and ( pk_brbz='1') then
      begin
        mmo1.text := qry_cxbrxx['zdmc'];      //ҽ�ƻ�������
        Re_Dbxxbm := '4649';
        edt_yjjb.text :='��������';
        //2.���ý���
        if trim(edt_sfzh.Text) ='' then
        begin
          if edt_sfzh.CanFocus then
           edt_sfzh.SetFocus;
        end else
        begin
          if btn1.CanFocus then
             btn1.SetFocus;
        end;
      end else
    begin
      if trim(edt_sfzh.Text) ='' then
      begin
        if edt_sfzh.CanFocus then
         edt_sfzh.SetFocus;
      end else
      begin
        if edt_yjjb.CanFocus then
           edt_yjjb.SetFocus;
      end;
    end;
  end else
  if key= #27 then
  begin
    grid_zybrqk.Visible :=false;
    clear;
  end;
end;

procedure Tfrm_pkrkxx.btn3Click(Sender: TObject);
var
  cx_RequestStream : TStringStream;  //������Ϣ
  cx_ResponseStream : TStringStream; //������Ϣ
  cx_ResponseStr : string;           //����ֵ
  cx_jo :string;
  Re_str :widestring;
  cx_ApiCode :string ;
  cx_ApiMsg :string;
  Re_cxstr :string;
begin
  if trim(cx_id)='' then
  begin
    Application.MessageBox('��ѡ��Ҫ�����Ĳ��ˣ�', '��ʾ', MB_OK + MB_ICONINFORMATION);
    exit;
  end;
  
//  cx_id :='6353c916390d4ed7b03e4f24b4ada6e9' ;
//  idhtp3.Disconnect;
//  if idhtp3.Connected then

//  idhtp3.Disconnect;
//  idhtp3.Free;
  idhtp3:=tidhttp.Create(nil);

  idhtp3.Request.ContentType := 'text/xml; charset=utf-8';         //��xml�ĸ�ʽ��������
  idhtp3.Request.Method := 'POST';

  //��ȡ�Զ���soap����
  CxxxSoapData := SOAP_Cxxx;
  CxxxSoapData := StringReplace(CxxxSoapData,':appkey',app_key,[rfReplaceAll, rfIgnoreCase]);
  CxxxSoapData := StringReplace(CxxxSoapData,':appSecret',app_Secret,[rfReplaceAll, rfIgnoreCase]);
  CxxxSoapData := StringReplace(CxxxSoapData,':ID',cx_id,[rfReplaceAll, rfIgnoreCase]);

  cx_RequestStream := TStringStream.Create(CxxxSoapData);
  cx_ResponseStream := TStringStream.Create('');
  idhtp3.ReadTimeout := 1000 * 60 * 1;

  //��֤ƶ����Ϣ
  idhtp3.Post(Cxxx_Url,cx_RequestStream,cx_ResponseStream);
  cx_jo:=  UTF8decode(idhtp3.Post(Cxxx_Url,cx_RequestStream));
  cx_ResponseStr:= UTF8decode(cx_ResponseStream.DataString); //��GB2312����תΪunicode����

  Re_str :=trim(cx_responseStr);
  idhtp3.Disconnect;
  cx_ApiCode :=FindStr('<ApiCode>','</ApiCode>',Re_str);
  cx_ApiMsg :=FindStr('<ApiMsg>','</ApiMsg>',Re_str);
  Re_cxstr :=FindStr('<Result>','</Result>',Re_str);
  if UpperCase (Re_cxstr)='TRUE' then    //(trim(UpperCase (Re_cxstr))='TRUE')
  begin
     Application.MessageBox('�����ɹ���', '��ʾ', MB_OK + MB_ICONINFORMATION);
     dm_data.qry_pub.close;
     dm_data.qry_pub.sql.Text := 'update pkrk_scxx_x set cxbz=1 where re_id='''+cx_id+'''' ;
     dm_data.qry_pub.ExecSQL;
     cx_id := '';
     qry_brxxcx.Close;
     qry_brxxcx.Open;
  end else
  begin
    Application.MessageBox('����ʧ�ܣ�', '��ʾ', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_pkrkxx.btn4Click(Sender: TObject);
begin
  clear;
end;

procedure Tfrm_pkrkxx.btn5Click(Sender: TObject);
//var
 
//  i:integer;
//  aIntf: ApiSoap;
//  soaphead : ISOAPHeaders;
//  Headers: MySoapHeader;
//
//  a :PkrkQuery;
//  brxx_list :ArrayOfString;
//  re_xx:ArrayOfOutRenYuanInfo;
//
//  jbbm :WideString;
//  re_jbxx :ArrayOfDiseaseItem;
begin
//    ��֤��Ϣ
//    a :=PkrkQuery.Create;
//    setlength(brxx_list,1);
//    brxx_list[0] := '510802196802228677' ;
//    a.IDCARD:= brxx_list;



//    aIntf := (HTTPRIO2 as ApiSoap);
//    Headers := MySoapHeader.Create;
//    Headers.appKey := 'b2de5375df9a8f55b64fe6a7886180a6'; ;  //����ֻ�Ǿٸ�����
//    Headers.appSecret := '283237cb9e35406badc6a10981a858f4';
//
//    soaphead := (aIntf  as  ISOAPHeaders);
//    soaphead.Send(Headers);  //����Soap Header
//    aIntf.DiseaseItems(jbbm) ;


end;


procedure Tfrm_pkrkxx.cbb1MouseEnter(Sender: TObject);
begin
//   Hqdbxx(Sender);
end;

procedure Tfrm_pkrkxx.cbb_erjbChange(Sender: TObject);
begin
   if cbb_zlzl.CanFocus then
       cbb_zlzl.SetFocus;
end;

procedure Tfrm_pkrkxx.cbb_erjbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    qry_cxejjb.Close;
    qry_cxejjb.SQL.Text := 'select * from pkrk_ejjbxx where czydm='''+pub_czydm+'''';
    qry_cxejjb.Open;

    if qry_cxejjb.RecordCount >0 then
    begin
      grid_ejjb.Visible := true;
      if grid_ejjb.CanFocus then
         grid_ejjb.SetFocus;
    end;
  end;
end;

procedure Tfrm_pkrkxx.cbb_yysdChange(Sender: TObject);
begin
  if edt_yjjb.CanFocus then
       edt_yjjb.SetFocus;
end;

procedure Tfrm_pkrkxx.cbb_zlfsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key =13 then
  begin
    if cbb_zlxg.CanFocus then
      cbb_zlxg.SetFocus;
  end;
end;

procedure Tfrm_pkrkxx.cbb_zlxgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
   if chk_xnh.CanFocus then
    chk_xnh.SetFocus;
  end;
end;

procedure Tfrm_pkrkxx.cbb_zlzlChange(Sender: TObject);
begin
//  if cbb_zlfs.CanFocus then
//    cbb_zlfs.SetFocus;
end;

procedure Tfrm_pkrkxx.cbb_zlzlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key =13 then
  begin
    if cbb_zlfs.CanFocus then
      cbb_zlfs.SetFocus;
  end;
end;

procedure Tfrm_pkrkxx.edt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    if edt1.text<>'' then
    begin
      qry_brxxcx.Filter:='tmh LIKE ''%'+ trim(edt1.text)+'%'' or pym LIKE ''%'+ trim(edt1.text)+'%'' ';
      qry_brxxcx.Filtered:=true;
      edt1.text:='';
      if qry_brxxcx.IsEmpty then
      begin
        showmessage('δ�ҵ��˲����ϴ���Ϣ��');
        qry_brxxcx.Filtered:=false;
      end;
    end else
    begin
      showmessage('�����������!');
      qry_brxxcx.Filtered:=false;
    end;
  end;
end;

procedure Tfrm_pkrkxx.edt_ejjbChange(Sender: TObject);
begin
   if cbb_zlzl.CanFocus then
      cbb_zlzl.SetFocus;
end;

procedure Tfrm_pkrkxx.edt_erjbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if trim(edt_yjjb.text)='' then
  begin
    Application.MessageBox('��������һ��������', '����', 0 + 16);
    if edt_yjjb.CanFocus then
         edt_yjjb.SetFocus;
    exit;
  end ;
  
  if key=13 then
  begin

    qry_cxejjb.Close;
    qry_cxejjb.SQL.Text := 'select * from pkrk_ejjbxx where czydm='''+pub_czydm+'''';
    qry_cxejjb.Open;

    if qry_cxejjb.RecordCount >0 then
    begin
      grid_ejjb.Visible := true;
      if grid_ejjb.CanFocus then
         grid_ejjb.SetFocus;
    end;
  end;
end;

procedure Tfrm_pkrkxx.edt_sfzhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
  if edt_yjjb.CanFocus then
    edt_yjjb.setfocus;
  end;
end;

procedure Tfrm_pkrkxx.edt_tmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var vCol :TColumnEH;
    v_tmh : string;
    v_qtjb :string;
begin

  if key=13 then
  begin
    if Trim(edt_tmh.text)='' then
    begin
      Application.MessageBox('����Ų���Ϊ�գ�', '����', 0 + 16);
      exit;
    end;

    if pub_yydm='0266' then
    begin
      edt_tmh.text:=formatex(strtoint(Trim(edt_tmh.text)),9);
    end;

    edt_erjb.Clear;
    //1.��ѯ������Ϣ
    qry_cxbrxx.Close;
    if pk_brbz='1' then  //סԺ����
    begin                                 //pkrk_cxbrxx
      qry_cxbrxx.SQL.text := 'exec pkrk_cxbrxx '''+trim(edt_tmh.text)+''' ,''1'' ' ;
    end else
    begin
      qry_cxbrxx.SQL.text := 'exec pkrk_cxbrxx '''+trim(edt_tmh.text)+''' ,''2'' ' ;
    end;
    qry_cxbrxx.Open;

    if qry_cxbrxx.IsEmpty then
    begin
      Application.MessageBox('û�д˲��ˣ�', '����', 0 + 16);
      edt_tmh.Text := '';
      if edt_tmh.CanFocus then
        edt_tmh.setfocus;
    end else
    if qry_cxbrxx.RecordCount >1 then
    begin
      if pk_brbz='1' then  //סԺ����  1
      begin
        //��ʾtmh,zyh,brxm,cyrq
        grid_zybrqk.Top :=1;
        grid_zybrqk.Left :=88;

        vCol := grid_zybrqk.Columns.Add;
        vCol.Title.Caption := 'סԺ��';
        vCol.FieldName := 'zyh';
        vCol.Index := 1;
        vcol.Width :=100;
        grid_zybrqk.visible := true;
        grid_zybrqk.setfocus;
      end else
      begin
        //��ʾtmh,brxm,cyrq
        grid_zybrqk.Top :=1;
        grid_zybrqk.Left :=88;
        grid_zybrqk.visible := true;
        grid_zybrqk.setfocus;
      end;
    end else
    begin
      edt_brxm.Text := qry_cxbrxx['brxm'];
      edt_brnl.Text := qry_cxbrxx['brnl'];
      edt_brxb.Text := qry_cxbrxx['brxb'];
      edt_tmh1.Text := qry_cxbrxx['tmh'];
      edt_zyh.Text := qry_cxbrxx['zyh'];
      edt_sfzh.Text := qry_cxbrxx['sfzhm'];
      edt_zfy.Text := qry_cxbrxx['ylzfy'];          //�ܷ���
      edt_jbylbx.text := qry_cxbrxx['tczf'];        //����ҽ�Ʊ���
      edt_zfulfy.Text := qry_cxbrxx['xjzf'];        //�Է�ҽ�Ʒ���
      edt_dbylbx.text := qry_cxbrxx['dbyb'];        //�󲡱���
      edt_qtbxje.text := qry_cxbrxx['qtbxje'];      //�ۼƱ������
      edt_ljbxbzfy.text := qry_cxbrxx['ljbxje'];    //�ۼƱ������
      edt_cyrq.text := qry_cxbrxx['cyrq'];          //��Ժ����
      edt_ylhzf.Text := qry_cxbrxx['bxje'];         //Ժ�ڷ�
      edt_yljgjm.text := qry_cxbrxx['yljgjm'];      //ҽ�ƻ�������

      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text :='select scicd from pkrk_scdzxx  ';
      DM_data.qry_pub.Open;

      if (DM_data.qry_pub.FieldByName('scicd').AsBoolean)and ( pk_brbz='1') then
      begin
        mmo1.text := qry_cxbrxx['zdmc'];      //ҽ�ƻ�������
        Re_Dbxxbm := '4649';
        edt_yjjb.Text :='��������';
        //2.���ý���
        if trim(edt_sfzh.Text) ='' then
        begin
          if edt_sfzh.CanFocus then
           edt_sfzh.SetFocus;
        end else
        begin
          if btn1.CanFocus then
             btn1.SetFocus;
        end;
      end else
      begin
        if trim(edt_sfzh.Text) ='' then
        begin
          if edt_sfzh.CanFocus then
           edt_sfzh.SetFocus;
        end else
        begin
          if edt_yjjb.CanFocus then
             edt_yjjb.SetFocus;
        end;
      end;
    end;
  end;
end;

procedure Tfrm_pkrkxx.edt_yjjbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    edt_erjb.Text := '';
    Re_Dbxxejbm := '';
    mmo1.Text := '';
    Re_Dbxxbm := '';

    qry_cxjbxx.Close;
    qry_cxjbxx.SQL.Text := 'select * from pkrk_yjjbxx where (jbbm  like ' + #39 + '%' + trim(edt_yjjb.text) + '%' + #39 + ' or pym  like ' + #39 + '%' + trim(edt_yjjb.text) + '%' + #39 + ' )and czydm ='+quotedstr(pub_czydm);
    qry_cxjbxx.Open;

    if qry_cxjbxx.RecordCount >0 then
    begin
      
      grid_yjjb.Visible := true;
      if grid_yjjb.CanFocus then
         grid_yjjb.SetFocus;
    end else
    begin
       Application.MessageBox('û������ѯ��һ��������', '��ʾ', MB_OK + MB_ICONINFORMATION);
       if edt_yjjb.CanFocus then
         edt_yjjb.SetFocus;
       edt_yjjb.text := '';
    end;
  end;
end;

Function Tfrm_pkrkxx.FindStr(BegSprStr,EdSpStr,Source:string):String;
var
  BegStr1Len,EdSpStr2Len,BegStr1Index,EdSpStr2index:integer;
  Temp:String;
  i,n :integer;
  begin

//    ���˽�ȡ2���ַ��е��ַ���
//    Temp:=Source;
//    BegStr1Index:=Pos(BegSprStr,Temp);
//    BegStr1Len:=Length(BegSprStr);
//    delete(Temp,BegStr1Index,BegStr1Index+BegStr1Len-1);
//    EdSpStr2index:=Pos(EdSpStr,Temp);
//    EdSpStr2Len:=Length(EdSpStr);
//    Result:=Copy(Temp,1,EdSpStr2index-1);
//    Delete(Temp,1,EdSpStr2index+EdSpStr2Len-1);
//    Source:=temp;

//    ȡ����2���ַ��е��ַ���
//     ApiCode:= copy(str,
//                 pos('<State>',str)+length('<State>'),
//                 pos('</State>',str)-pos('<State>',str)-length('</State>')+1);
    Temp:=Source;
    BegStr1Index:=Pos(BegSprStr,Temp);  //��һ�γ��ֵ�λ��
    BegStr1Len:=Length(BegSprStr);

    EdSpStr2index:=Pos(EdSpStr,Temp);
    EdSpStr2Len:=Length(EdSpStr);

    i :=BegStr1Index + BegStr1Len;
    n :=EdSpStr2index - BegStr1Index - EdSpStr2Len+1;
    Result:=Copy(Temp,i,n);
  end  ;


procedure Tfrm_pkrkxx.FormShow(Sender: TObject);
begin
  cx_id :='';//��ʼ��cx_id  
  pgc1.ActivePage := ts1;
 
//  app_key :=trim('b2de5375df9a8f55b64fe6a7886180a6'); //Trim('5e757c10ccbe5b5e4f98496a4c27c94b');
//  app_Secret :=trim('283237cb9e35406badc6a10981a858f4'); //Trim('4d4534d4ecfc4e7088038301a5c1378d');

//  Pkcx_Url :='http://106.14.237.176:8182/api.asmx?op=Pkrkcx';           //������ѯ�Ƿ�Ϊƶ����Ϣ
//  Hqdb_Url :='http://106.14.237.176:8182/api.asmx?op=DiseaseItems';     //��ȡ����Ϣ����
//  Cxxx_Url :='http://106.14.237.176:8182/api.asmx?op=Rollback';         //����������Ϣ
//  Scxx_Url :='http://106.14.237.176:8182/api.asmx?op=TreatmentReport';  //������Ϣ�ϱ�
  dm_data.qry_pub.Close;
  dm_data.qry_pub.sql.Text :='select * from pkrk_scdzxx where yydm='''+pub_yydm+'''' ;
  dm_data.qry_pub.open;

  if dm_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox('�ϴ���ַ��Ϣ�����ڣ�', '��ʾ', MB_OK + MB_ICONINFORMATION);
    exit;
  end else
  begin
    Pkcx_Url :=trim(dm_data.qry_pub.FieldByName('Pkcx_Url').AsString);          //������ѯ�Ƿ�Ϊƶ����Ϣ
    Hqdb_Url :=trim(dm_data.qry_pub.FieldByName('Hqdb_Url').AsString);          //��ȡ����Ϣ����
    Cxxx_Url :=Trim(dm_data.qry_pub.FieldByName('Cxxx_Url').AsString);          //����������Ϣ
    Scxx_Url :=Trim(dm_data.qry_pub.FieldByName('Scxx_Url').AsString);          //������Ϣ�ϱ�
  end;

  dm_data.qry_pub.Close;
  dm_data.qry_pub.sql.Text :='select appkey,appSecret,yysd from sys_yyxx' ;
  dm_data.qry_pub.open;

  if dm_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox('�ϴ���appkey��appSecret�����ڣ�', '��ʾ', MB_OK + MB_ICONINFORMATION);
    exit;
  end else
  begin
    app_key := trim(dm_data.qry_pub.FieldByName('appkey').AsString);
    app_Secret :=trim(dm_data.qry_pub.FieldByName('appSecret').AsString);
  end;

  yysd :=trim(dm_data.qry_pub.FieldByName('yysd').AsString);
  if yysd='1' then
  begin
    cbb_yysd.ItemIndex := 0;
    cbb_yysd.Text:=cbb_yysd.Items.Strings[0]  ;
  end
  else if yysd='2' then
  begin
    cbb_yysd.ItemIndex := 1;
    cbb_yysd.Text:=cbb_yysd.Items.Strings[1]  ;
  end else
  begin
    Application.MessageBox('��ȷ��ҽԺ�Ĺ����أ�', '��ʾ', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  if pk_brbz='2' then      //����
  begin
    cbb_brlb.ItemIndex :=1;
    cbb_brlb.Text:=cbb_brlb.Items.Strings[1]  ;
  end
  else if pk_brbz='1' then
  begin
     cbb_brlb.ItemIndex :=0;   //סԺ
     cbb_brlb.Text:=cbb_brlb.Items.Strings[0]  ;
  end;
  //���弲����Ϣ
  Hqdbxx('');

  clear;

  cbb_zlzl.ItemIndex :=3;
  cbb_zlzl.Text:=cbb_zlzl.Items.Strings[3]  ;

  cbb_zlfs.ItemIndex :=1;
  cbb_zlfs.Text:=cbb_zlfs.Items.Strings[1]  ;

  cbb_zlxg.ItemIndex :=1;
  cbb_zlxg.Text:=cbb_zlxg.Items.Strings[1]  ;
end;

end.