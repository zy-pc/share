//-----------------------------------------------------
//------------�Ŷӽкż�������ʾϵͳ-������Ԫ----------
//------------calmhawk-2010-07-24----------------------
//-----------------------------------------------------

unit p_ordpub;

interface
//uses p_dm;

//----------------------------------------------------
type
    //���������,  JhServer �кŷ�����,MsgServer ��Ϣ������
    ServerSort = (JhServer, MsgServer, SpeechServer);
    //ϵͳ��ʼ����־
    Xtcsh = (cNo, cYes);
    //������� Yf ҩ��,Ysz ����ҽ��վ,zx ��ѯ
    Pcklb = (Yf, Mzysz, Zx);
    //�Ŷ�״̬ , 0δ����,1���Ŷӣ�2�Ѵ���,3����
    PStatus = (pNo, pOrd, pOK, pHang);
    //����״̬ pClose �ر�,pOpen ����
    Pckzt = (pClose, pOpen);

const
    TIMEOUT = 3000; //��ʱʱ��
    TCPSERVERPORT = 8084; //TCP�������˶˿�
    TCPCLIENTPORT_MZSF = 8085; //TCP�ͻ��˶˿�����
    TCPCLIENTPORT_YF = 8089; //tcp�ͻ���ҩ���˿�
    TCPMZSFPORT = 8086; //�����շѶ˿�
    TCPSPEECHPORT = 8090; //�����������˿�
    TCPYFPORT = 8088; //ҩ���˿�
    //--------------------���������-----------------
    //------------ֻ���ǿ���ת����Int���ַ���----------
    LOGIN = '1000'; //��¼
    ORD = '1001'; //�Ŷ�
    MSG = '1002'; //��ͨ��Ϣ
    HANG = '1003'; //��������(����δ����ҩ)
    DISPENSING = '1004'; //��ҩ
    SPEECH = '1005'; //����
    ORDRES = '1006'; //�Ŷӽ��
    YFCF = '1007'; //��ҩ�����ʹ�����Ϣ
    YJCF = '1008'; //�ƽ���������������
    DPXS = '1009'; //������ʾ

    //--------------------SQL--------------------------
    SQL_GET_SERVER = 'SELECT * FROM xxxt_server '; //���������ñ�
    SQL_GET_CKPZ = 'SELECT * FROM xxxt_pdjh_ckpz '; //�������ñ�
    SQL_GET_PDTJ = 'SELECT * FROM xxxt_pdjh_pdtj '; //�Ŷ�ͳ�Ƽ�¼��
    SQL_GET_PDDL = 'SELECT * FROM xxxt_pdjh_dqdl '; //��ǰ�ŶӶ���
    SQL_GET_CZYXL = 'SELECT * FROM xxxt_pdjh_czyxl '; //����Ա/ҽ��Ч�ʼ�¼��

var
    XtcshBz: Xtcsh; //ϵͳ��ʼ����־
    //ordr:TOrdRes;//�Ŷӽ��
implementation

function GetTcpServer(): string;
begin

end;

end.

