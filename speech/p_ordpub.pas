//-----------------------------------------------------
//------------排队叫号及大屏显示系统-公共单元----------
//------------calmhawk-2010-07-24----------------------
//-----------------------------------------------------

unit p_ordpub;

interface
//uses p_dm;

//----------------------------------------------------
type
    //服务器类别,  JhServer 叫号服务器,MsgServer 消息服务器
    ServerSort = (JhServer, MsgServer, SpeechServer);
    //系统初始化标志
    Xtcsh = (cNo, cYes);
    //窗口类别 Yf 药房,Ysz 门诊医生站,zx 咨询
    Pcklb = (Yf, Mzysz, Zx);
    //排队状态 , 0未处理,1已排队，2已处理,3挂起
    PStatus = (pNo, pOrd, pOK, pHang);
    //窗口状态 pClose 关闭,pOpen 开启
    Pckzt = (pClose, pOpen);

const
    TIMEOUT = 3000; //超时时间
    TCPSERVERPORT = 8084; //TCP服务器端端口
    TCPCLIENTPORT_MZSF = 8085; //TCP客户端端口门诊
    TCPCLIENTPORT_YF = 8089; //tcp客户端药房端口
    TCPMZSFPORT = 8086; //门诊收费端口
    TCPSPEECHPORT = 8090; //语音服务器端口
    TCPYFPORT = 8088; //药房端口
    //--------------------交易类别编号-----------------
    //------------只能是可以转换成Int的字符串----------
    LOGIN = '1000'; //登录
    ORD = '1001'; //排队
    MSG = '1002'; //普通消息
    HANG = '1003'; //处方挂起(病人未来拿药)
    DISPENSING = '1004'; //发药
    SPEECH = '1005'; //呼叫
    ORDRES = '1006'; //排队结果
    YFCF = '1007'; //给药房发送处方信息
    YJCF = '1008'; //移交处方给其他窗口
    DPXS = '1009'; //大屏显示

    //--------------------SQL--------------------------
    SQL_GET_SERVER = 'SELECT * FROM xxxt_server '; //服务器配置表
    SQL_GET_CKPZ = 'SELECT * FROM xxxt_pdjh_ckpz '; //窗口配置表
    SQL_GET_PDTJ = 'SELECT * FROM xxxt_pdjh_pdtj '; //排队统计记录表
    SQL_GET_PDDL = 'SELECT * FROM xxxt_pdjh_dqdl '; //当前排队队列
    SQL_GET_CZYXL = 'SELECT * FROM xxxt_pdjh_czyxl '; //操作员/医生效率记录表

var
    XtcshBz: Xtcsh; //系统初始化标志
    //ordr:TOrdRes;//排队结果
implementation

function GetTcpServer(): string;
begin

end;

end.

