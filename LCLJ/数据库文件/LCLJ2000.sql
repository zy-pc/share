/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      微软中国
 * Project :      临床路径数据结构.dm1
 * Author :       微软用户
 *
 * Date Created : Wednesday, February 29, 2012 13:57:28
 * Target DBMS : Microsoft SQL Server 2000
 */

EXEC sp_addtype Boolean, bit,"NOT NULL"
go

EXEC sp_addtype empid, "char(9)","NULL"
go

EXEC sp_addtype id, "varchar(11)","NULL"
go

EXEC sp_addtype tid, "varchar(6)","NULL"
go

/* 
 * TABLE: lclj_blmbdx 
 */

CREATE TABLE lclj_blmbdx(
    ztid    int            IDENTITY(1,1),
    bqdm    varchar(30)    NULL,
    ksdm    varchar(30)    NULL,
    ysdm    char(30)       NULL,
    ztmc    varchar(50)    NOT NULL,
    czy     varchar(4)     NULL,
    mzbz    bit            NOT NULL,
    zybz    bit            NOT NULL,
    mblb    varchar(10)    NULL,
    bqmc    varchar(20)    NULL,
    ksmc    varchar(20)    NULL,
    CONSTRAINT PK1_1 PRIMARY KEY CLUSTERED (ztid)
)
go



IF OBJECT_ID('lclj_blmbdx') IS NOT NULL
    PRINT '<<< CREATED TABLE lclj_blmbdx >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE lclj_blmbdx >>>'
go

/* 
 * TABLE: lclj_blmbmx 
 */

CREATE TABLE lclj_blmbmx(
    id        int               IDENTITY(1,1),
    XMID      varchar(9)        NULL,
    ztid      varchar(9)        NOT NULL,
    yzsx      varchar(4)        NOT NULL,
    lb        varchar(4)        NOT NULL,
    xmdm      varchar(14)       NOT NULL,
    xmmc      varchar(100)      NOT NULL,
    ypyf      varchar(4)        NULL,
    ypyl      varchar(10)       NULL,
    yldw      varchar(10)       NULL,
    dw        varchar(10)       NULL,
    sl        int               NULL,
    yytj      varchar(8)        NULL,
    czks      varchar(4)        NULL,
    kdks      varchar(4)        NULL,
    yplb      varchar(10)       NULL,
    gg        varchar(50)       NULL,
    yplsj     numeric(18, 4)    NULL,
    ypbzbl    int               NULL,
    bz        varchar(100)      NULL,
    jyyb      varchar(10)       NULL,
    jyflbh    varchar(20)       NULL,
    ypdwid    int               NULL,
    fzbz      varchar(20)       NULL,
    syfzbh    varchar(20)       NULL,
    yzsxb     varchar(4)        NULL,
    CONSTRAINT PK__lclj_blm__3213E83F06B0688C PRIMARY KEY CLUSTERED (id)
)
go



IF OBJECT_ID('lclj_blmbmx') IS NOT NULL
    PRINT '<<< CREATED TABLE lclj_blmbmx >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE lclj_blmbmx >>>'
go

/* 
 * TABLE: LCLJ_BYCJYY 
 */

CREATE TABLE LCLJ_BYCJYY(
    BM     varchar(12)      NOT NULL,
    MC     varchar(200)     NULL,
    Pym    varchar(100)     NULL,
    SJ     varchar(6)       NULL,
    MJ     bit              NULL,
    XZ     numeric(1, 0)    NULL,
    CONSTRAINT PK23 PRIMARY KEY NONCLUSTERED (BM)
)
go



IF OBJECT_ID('LCLJ_BYCJYY') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_BYCJYY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_BYCJYY >>>'
go

/* 
 * TABLE: LCLJ_LCLJBB 
 */

CREATE TABLE LCLJ_LCLJBB(
    LJID     varchar(9)      NOT NULL,
    BBH      int             NOT NULL,
    BZZYR    varchar(10)     NULL,
    BZFY     varchar(20)     NULL,
    BBSM     varchar(200)    NULL,
    CJR      varchar(20)     NULL,
    CJSJ     datetime        DEFAULT getdate() NULL,
    SHR      varchar(20)     NULL,
    SHSJ     datetime        NULL,
    TYR      varchar(20)     NULL,
    TYSJ     datetime        NULL
)
go



IF OBJECT_ID('LCLJ_LCLJBB') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJBB >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJBB >>>'
go

/* 
 * TABLE: LCLJ_LCLJBL 
 */

CREATE TABLE LCLJ_LCLJBL(
    XMID    varchar(9)    NOT NULL,
    WJID    int           NOT NULL
)
go



IF OBJECT_ID('LCLJ_LCLJBL') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJBL >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJBL >>>'
go

/* 
 * TABLE: LCLJ_LCLJBZ 
 */

CREATE TABLE LCLJ_LCLJBZ(
    LJID    varchar(9)    NOT NULL,
    JBID    varchar(8)    NULL
)
go



IF OBJECT_ID('LCLJ_LCLJBZ') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJBZ >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJBZ >>>'
go

/* 
 * TABLE: LCLJ_LCLJFL 
 */

CREATE TABLE LCLJ_LCLJFL(
    LJID    varchar(9)     NOT NULL,
    BBH     int            NOT NULL,
    XH      int            NOT NULL,
    MC      varchar(50)    NULL
)
go



IF OBJECT_ID('LCLJ_LCLJFL') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJFL >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJFL >>>'
go

/* 
 * TABLE: LCLJ_LCLJJD 
 */

CREATE TABLE LCLJ_LCLJJD(
    JDID    varchar(9)      NOT NULL,
    LJID    varchar(9)      NOT NULL,
    BBH     int             NULL,
    FID     varchar(9)      NULL,
    XH      int             NULL,
    MC      varchar(50)     NULL,
    KSTS    int             NULL,
    JSTS    int             NULL,
    BZ      varchar(10)     NULL,
    SM      varchar(200)    NULL,
    FL      varchar(50)     NULL,
    CONSTRAINT [临床路径阶段_PK] PRIMARY KEY NONCLUSTERED (JDID, LJID)
)
go



IF OBJECT_ID('LCLJ_LCLJJD') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJJD >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJJD >>>'
go

/* 
 * TABLE: LCLJ_LCLJKS 
 */

CREATE TABLE LCLJ_LCLJKS(
    LJID    varchar(9)    NOT NULL,
    KSID    char(4)       NULL
)
go



IF OBJECT_ID('LCLJ_LCLJKS') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJKS >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJKS >>>'
go

/* 
 * TABLE: LCLJ_LCLJML 
 */

CREATE TABLE LCLJ_LCLJML(
    LJID      varchar(9)      NOT NULL,
    FL        varchar(50)     NULL,
    BM        varchar(5)      NULL,
    MC        varchar(100)    NULL,
    TY        int             NULL,
    ZXBB      int             NULL,
    BLFX      varchar(20)     NULL,
    SYBQ      varchar(20)     NULL,
    SYXB      int             NULL,
    SYNL      varchar(10)     NULL,
    SM        varchar(200)    NULL,
    QZTS      int             NULL,
    ZDXGFL    int             NULL,
    BJBZ      bit             DEFAULT 0 NOT NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (LJID)
)
go



IF OBJECT_ID('LCLJ_LCLJML') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJML >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJML >>>'
go

/* 
 * TABLE: LCLJ_LCLJPG 
 */

CREATE TABLE LCLJ_LCLJPG(
    PGID    varchar(9)    NOT NULL,
    LJID    varchar(9)    NOT NULL,
    JDID    varchar(9)    NOT NULL,
    BBH     int           NULL,
    PGLX    int           NULL,
    CONSTRAINT [临床路径评估_PK] PRIMARY KEY NONCLUSTERED (PGID, LJID, JDID)
)
go



IF OBJECT_ID('LCLJ_LCLJPG') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJPG >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJPG >>>'
go

/* 
 * TABLE: LCLJ_LCLJTB 
 */

CREATE TABLE LCLJ_LCLJTB(
    TBID    varchar(5)    NOT NULL,
    TB      image         NULL,
    XZ      int           NULL,
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (TBID)
)
go



IF OBJECT_ID('LCLJ_LCLJTB') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJTB >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJTB >>>'
go

/* 
 * TABLE: LCLJ_LCLJWJ 
 */

CREATE TABLE LCLJ_LCLJWJ(
    LJID    varchar(9)      NOT NULL,
    WJM     varchar(200)    NOT NULL,
    NR      image           NULL,
    CJR     varchar(20)     NULL,
    CJSJ    datetime        NULL
)
go



IF OBJECT_ID('LCLJ_LCLJWJ') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJWJ >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJWJ >>>'
go

/* 
 * TABLE: LCLJ_LCLJXM 
 */

CREATE TABLE LCLJ_LCLJXM(
    XMID    varchar(9)       NOT NULL,
    LJID    varchar(9)       NOT NULL,
    JDID    varchar(9)       NOT NULL,
    TBID    varchar(5)       NOT NULL,
    BBH     int              NULL,
    FL      varchar(50)      NULL,
    XMXH    int              NULL,
    XMNR    varchar(1000)    NULL,
    ZXFS    int              NULL,
    ZXZ     int              NULL,
    XMJG    varchar(500)     NULL,
    NRYQ    int              NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (XMID, LJID, JDID)
)
go



IF OBJECT_ID('LCLJ_LCLJXM') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJXM >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJXM >>>'
go

/* 
 * TABLE: LCLJ_LCLJYZ 
 */

CREATE TABLE LCLJ_LCLJYZ(
    LJXMID    varchar(9)    NULL,
    YZNRID    int           NULL
)
go



IF OBJECT_ID('LCLJ_LCLJYZ') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LCLJYZ >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LCLJYZ >>>'
go

/* 
 * TABLE: LCLJ_LJCJJG 
 */

CREATE TABLE LCLJ_LJCJJG(
    BM     varchar(12)     NOT NULL,
    MC     varchar(100)    NULL,
    pym    varchar(50)     NULL,
    SJ     varchar(5)      NULL,
    MJ     bit             NULL,
    JB     bit             NULL,
    XZ     int             NULL,
    CONSTRAINT [路径常见结果_PK] PRIMARY KEY NONCLUSTERED (BM)
)
go



IF OBJECT_ID('LCLJ_LJCJJG') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LJCJJG >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LJCJJG >>>'
go

/* 
 * TABLE: LCLJ_LJJGXZ 
 */

CREATE TABLE LCLJ_LJJGXZ(
    BM    int            IDENTITY(1,1),
    MC    varchar(20)    NULL,
    JM    varchar(10)    NULL,
    CONSTRAINT [路径结果性质_PK] PRIMARY KEY NONCLUSTERED (BM)
)
go



IF OBJECT_ID('LCLJ_LJJGXZ') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LJJGXZ >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LJJGXZ >>>'
go

/* 
 * TABLE: LCLJ_LJPGTJ 
 */

CREATE TABLE LCLJ_LJPGTJ(
    PGID    varchar(9)     NOT NULL,
    ZBID    varchar(9)     NULL,
    XMID    varchar(9)     NULL,
    GXS     varchar(5)     NULL,
    TJZ     varchar(50)    NULL,
    TJZH    int            NULL
)
go



IF OBJECT_ID('LCLJ_LJPGTJ') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LJPGTJ >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LJPGTJ >>>'
go

/* 
 * TABLE: LCLJ_LJPGZB 
 */

CREATE TABLE LCLJ_LJPGZB(
    ZBID    varchar(9)      NOT NULL,
    PGID    varchar(9)      NULL,
    XH      int             NULL,
    PGZB    varchar(200)    NULL,
    ZBLX    int             NULL,
    ZBJG    varchar(500)    NULL,
    CONSTRAINT [路径评估指标_PK] PRIMARY KEY NONCLUSTERED (ZBID)
)
go



IF OBJECT_ID('LCLJ_LJPGZB') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_LJPGZB >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_LJPGZB >>>'
go

/* 
 * TABLE: lclj_tmp_yzmb 
 */

CREATE TABLE lclj_tmp_yzmb(
    id        int               IDENTITY(1,1),
    ph        varchar(16)       NULL,
    tmh       varchar(9)        NULL,
    zyh       char(16)          NOT NULL,
    xmdm      varchar(14)       NOT NULL,
    xmmc      varchar(100)      NOT NULL,
    lb        char(4)           DEFAULT ('1') NOT NULL,
    dw        varchar(10)       NULL,
    ypdwid    int               NULL,
    ypbzbl    int               DEFAULT ((1)) NULL,
    sl        int               NULL,
    yplsj     numeric(18, 4)    NULL,
    ypcgj     numeric(18, 4)    NULL,
    ypyf      char(4)           NULL,
    ypyl      varchar(10)       NULL,
    yldw      varchar(10)       NULL,
    yytj      varchar(8)        NULL,
    yplb      char(10)          NULL,
    jcmd      varchar(100)      NULL,
    tzbz      bit               NULL,
    zfbz      bit               NULL,
    zxbz      bit               NULL,
    fzbz      int               NULL,
    tzrq      datetime          NULL,
    tzry      char(4)           NULL,
    zfrq      datetime          NULL,
    zfry      char(4)           NULL,
    zxrq      datetime          NULL,
    zxry      char(4)           NULL,
    xgrq      datetime          NULL,
    xgry      char(4)           NULL,
    czks      char(4)           NULL,
    kdks      char(4)           NULL,
    kdrq      datetime          DEFAULT (getdate()) NULL,
    kdys      char(4)           NULL,
    yzrq      datetime          NULL,
    yzsx      char(4)           DEFAULT ('长期') NULL,
    shbz      bit               NULL,
    shry      char(4)           NULL,
    jcbw      varchar(50)       NULL,
    jcff      varchar(50)       NULL,
    ypkcbz    bit               NULL,
    czys      varchar(4)        NULL,
    gg        varchar(50)       NULL,
    fzph      varchar(20)       NULL,
    bz        varchar(100)      NULL,
    jyyb      varchar(10)       NULL,
    jyflbh    varchar(20)       NULL,
    xh        int               NULL,
    xyzbz     bit               NULL,
    CONSTRAINT PK1_2 PRIMARY KEY CLUSTERED (id)
)
go



IF OBJECT_ID('lclj_tmp_yzmb') IS NOT NULL
    PRINT '<<< CREATED TABLE lclj_tmp_yzmb >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE lclj_tmp_yzmb >>>'
go

/* 
 * TABLE: lclj_yzlr_ls 
 */

CREATE TABLE lclj_yzlr_ls(
    id       int          IDENTITY(1,1),
    tmh      char(9)      NULL,
    zyh      char(16)     NULL,
    yzqx     char(4)      NULL,
    xmmc     char(100)    NULL,
    xmdm     char(14)     NULL,
    lb       char(4)      NULL,
    sl       int          NULL,
    dw       char(10)     NULL,
    ypyl     char(10)     NULL,
    yldw     char(10)     NULL,
    ypgg     char(50)     NULL,
    tzbz     bit          NULL,
    tzczy    char(4)      NULL,
    tzrq     datetime     NULL,
    ypyf     char(4)      NULL,
    yytj     char(8)      NULL,
    ksrq     datetime     NULL,
    ksys     char(4)      NULL,
    bz       char(100)    NULL,
    CONSTRAINT PK1_3 PRIMARY KEY CLUSTERED (id)
)
go



IF OBJECT_ID('lclj_yzlr_ls') IS NOT NULL
    PRINT '<<< CREATED TABLE lclj_yzlr_ls >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE lclj_yzlr_ls >>>'
go

/* 
 * TABLE: LCLJ_ZDXGFL 
 */

CREATE TABLE LCLJ_ZDXGFL(
    BM    int             NOT NULL,
    MC    varchar(100)    NULL,
    JM    varchar(50)     NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (BM)
)
go



IF OBJECT_ID('LCLJ_ZDXGFL') IS NOT NULL
    PRINT '<<< CREATED TABLE LCLJ_ZDXGFL >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE LCLJ_ZDXGFL >>>'
go

