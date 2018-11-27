USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LCLJML_INSERT]    Script Date: 02/29/2012 11:12:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LCLJ_LCLJML_INSERT]
	-- Add the parameters for the stored procedure here
@LJID Varchar(20),	
@FL Varchar(50),
@BM varChar(5),
@MC varChar(100),
@TY int,
@BLFX varchar(20),
@SYBQ varchar(20),
@SYXB int,
@SYNL varchar(10),
@SM varchar(200),
@QZTS int,
@ZDXGFL int,
@KSID varchar(1500),
@JBID varchar(1500),
@sczt varchar(30) output 
AS
BEGIN
    -- Insert statements for procedure here
	declare @varstr varchar(1000),@curr_id varchar(18)
	begin tran  
	--增加临床路径目录 
	insert into dbo.LCLJ_LCLJML(LJID,FL,BM,MC,TY,BLFX,SYBQ,SYXB,SYNL,SM,QZTS,ZDXGFL)
	values(@LJID,@FL,@BM,@MC,@TY,@BLFX,@SYBQ,@SYXB,@SYNL,@SM,@QZTS,@ZDXGFL)
	if @@error<>0     
     begin    
      rollback tran    
      select @sczt='插入临床路径目录表失败!'    
      return    
    end  
	--增加临床路径科室
	create table #MyTemp ([LJID]varchar(9),[KSID] varchar(8))
	if @TY=2 and @KSID is not null
	begin
    select	@varstr=@KSID+','
    while CHARINDEX(',',@varstr)<>0 
    begin
     select @curr_id=SUBSTRING(@varstr,0,CHARINDEX(',',@varstr))
     select @varstr=SUBSTRING(@varstr,CHARINDEX(',',@varstr)+1,LEN(@varstr))
     insert into #MYTEMP(LJID,KSID) values (@LJID,@curr_id)
    end;
    insert into LCLJ_LCLJKS select * from #MYTEMP
    
   end
   if @@error<>0     
     begin    
      rollback tran    
      select @sczt='插入临床路径科室表失败!'    
      return    
    end  
  --增加临床路径病种
  if @JBID is not null
   begin
    select	@varstr=@JBID+','
    while CHARINDEX(',',@varstr)<>0 
    begin
     select @curr_id=SUBSTRING(@varstr,0,CHARINDEX(',',@varstr))
     select @varstr=SUBSTRING(@varstr,CHARINDEX(',',@varstr)+1,LEN(@varstr))
     insert into dbo.LCLJ_LCLJBZ(LJID,JBID) values (@LJID,@curr_id)
    end;
   end
  if @@error<>0     
    begin    
     rollback tran    
     select @sczt='插入临床路径病种表失败!'    
     return    
   end 
   else
   begin    
    commit tran    
    select @sczt='0'    
  end 
END


GO

USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LCLJML_UPDATE]    Script Date: 02/29/2012 11:15:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE[dbo].[LCLJ_LCLJML_UPDATE]
@LJID Varchar(20),	
@FL Varchar(50),
@BM varChar(5),
@MC varChar(100),
@TY int,
@BLFX varchar(20),
@SYBQ varchar(20),
@SYXB int,
@SYNL varchar(10),
@SM varchar(200),
@QZTS int,
@ZDXGFL int,
@KSID varchar(1500),
@JBID varchar(1500),
@sczt varchar(30) output 
AS
BEGIN
    -- Insert statements for procedure here
	declare @varstr varchar(1000),@curr_id varchar(18)
	begin tran  
	if isnull(@LJID,0)=0
	begin
      rollback tran
      select @sczt='1'     
      raiserror( '路径ID不能为空，请检查！ ',16,-1 )with NOWAIT        
      return    
	end
	--修改临床路径目录 
	update dbo.LCLJ_LCLJML
	set FL=@FL,BM=@BM,MC=@MC,TY=@TY,BLFX=@BLFX,SYBQ=@SYBQ,SYXB=@SYXB,SYNL=@SYNL,SM=@SM,QZTS=@QZTS,ZDXGFL=@ZDXGFL
    where LJID=@LJID
	if @@error<>0     
     begin    
      rollback tran    
      select @sczt='2' 
      raiserror( '修改临床路径目录表失败! ',16,-1 )with NOWAIT           
      return    
    end  
	--修改临床路径科室
	delete From dbo.LCLJ_LCLJKS where LJID=@LJID
	create table #MyTemp ([LJID]varchar(9),[KSID] varchar(8))
	if @TY=2 and @KSID is not null
	begin
    select	@varstr=@KSID+','
    while CHARINDEX(',',@varstr)<>0 
    begin
     select @curr_id=SUBSTRING(@varstr,0,CHARINDEX(',',@varstr))
     select @varstr=SUBSTRING(@varstr,CHARINDEX(',',@varstr)+1,LEN(@varstr))
     insert into #MYTEMP(LJID,KSID) values (@LJID,@curr_id)
    end;
    insert into dbo.LCLJ_LCLJKS select * from #MYTEMP
    drop table #MYTEMP
   end
   if @@error<>0     
     begin    
      rollback tran 
      select @sczt='3'    
      raiserror( '修改临床路径科室表失败! ',16,-1 )with NOWAIT              
      return    
    end  
  --增加临床路径病种
  if @JBID is not null
   begin
    delete From dbo.LCLJ_LCLJBZ where LJID=@LJID 
    select	@varstr=@JBID+','
    while CHARINDEX(',',@varstr)<>0 
    begin
     select @curr_id=SUBSTRING(@varstr,0,CHARINDEX(',',@varstr))
     select @varstr=SUBSTRING(@varstr,CHARINDEX(',',@varstr)+1,LEN(@varstr))
     insert into dbo.LCLJ_LCLJBZ(LJID,JBID) values (@LJID,@curr_id)
    end;
   end
  if @@error<>0     
    begin    
     rollback tran 
     select @sczt='4'    
     raiserror( '修改临床路径病种表失败! ',16,-1 )with NOWAIT 
     return    
   end 
   else
   begin    
    commit tran    
    select @sczt='0'    
  end 
END


GO


USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LJBB_Audit]    Script Date: 02/29/2012 11:16:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[dbo].[LCLJ_LJBB_Audit]
@LJID varchar(9),
@BBH int,
@SHR varchar(20),
@SH int, --1是审核，-1是取消审核
@sczt varchar(30) output 
AS
BEGIN
  declare @v_num int
  declare @v_date date
  select @v_date=GETDATE()
   begin tran  
	if @SH=1
	--审核
	 begin
	  update LCLJ_LCLJBB set SHR=@SHR,SHSJ=@v_date where LJID=@LJID and BBH=@BBH
	  if @@error<>0     
      begin 
       rollback tran   
       select @sczt='审核路径失败!' 
       raiserror( '审核路径失败! ',16,1 )with NOWAIT    
       return    
      end 
	  if @@ROWCOUNT>0
	  --自动停用之前的版本 
	   update LCLJ_LCLJBB set TYR=@SHR,TYSJ=@v_date where LJID=@LJID and BBH<@BBH and isnull(TYSJ,1)=1
	   --更新最新版本
	   update LCLJ_LCLJML set ZXBB=@BBH where LJID=@LJID
	  if @@error<>0     
      begin    
        rollback tran
       select @sczt='审核路径失败!' 
       raiserror( '审核路径失败! ',16,1 )with NOWAIT    
       return    
      end 
	 end
	else
	 begin
	  select @v_num= (select COUNT(LJID)  from LCLJ_LCLJBB where LJID=@LJID and BBH>@BBH)
	  if @v_num>0
	  begin  
	    rollback tran  
       select @sczt='该版本后面存在其他新的版本，不能取消审核。' 
       raiserror( '该版本后面存在其他新的版本，不能取消审核。 ',16,1 )with NOWAIT    
       return    
      end 
	 --取消审核
	  update LCLJ_LCLJBB set SHR=null,SHSJ=null where LJID=@LJID and BBH=@BBH
	  if @@ROWCOUNT>0
	   begin
	    --更新最新版本 
	    Select @v_num=(select MAX(BBH) from LCLJ_LCLJBB where LJID=@LJID and ISNULL(SHSJ,0)=0)
	    if @v_num>0
	     update LCLJ_LCLJML set ZXBB=@v_num where LJID=@LJID
	    else
	     update LCLJ_LCLJML set ZXBB=null where LJID=@LJID
	   end
     end
     
    if @@error<>0     
     begin 
      rollback tran   
      select @sczt='审核路径失败!' 
      raiserror( '审核路径失败! ',16,1 )with NOWAIT    
      return    
    end else 
     begin   
     commit tran  
     select @sczt='0'    
    end 
END

GO


USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LJBB_Copy]    Script Date: 02/29/2012 11:17:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[dbo].[LCLJ_LJBB_Copy]
@SOURLJID varchar(9),--源路径ID
@SOURBBH int,--源路径版本
@DESTLJID varchar(9),--目标路径ID
@DESTBBH int,--目标路径版本
@sczt varchar(80) output 
AS
BEGIN
 declare @v_SOURBBH int,@v_DESTBBH int
   --确定源路径版本号 
 set @v_SOURBBH=isnull(@SOURBBH,0)
 if @v_SOURBBH=0
  set @v_SOURBBH=(select ZXBB from LCLJ_LCLJML where LJID=@SOURLJID)
 if ISNULL(@v_SOURBBH,0)=0
   begin
    select @sczt='要复制的来源临床路径中没有可用的有效版本。' 
    return    
   end  
--确定目标路径版本号    
set @v_DESTBBH=ISNULL(@DESTBBH,0)
if @v_DESTBBH=0
  set @v_DESTBBH=(select ISNULL( Max(BBH),0)+1  from LCLJ_LCLJBB where LJID=@DESTLJID)
 else
  begin
   --删除目标路径版本
   declare @v_outstr varchar(80)
   exec LCLJ_LJBB_Delete @DESTLJID,@DESTBBH,@v_outstr output
   if @v_outstr<>'0'
    begin
     select @sczt='要复制的目标路径版本错误。' 
     return   
    end
  end 
  
  begin tran  
   begin try
     --临床路径版本 
     insert into LCLJ_LCLJBB(LJID,BBH,BZZYR,BZFY,BBSM,CJR,CJSJ)
	  select @DESTLJID,@v_DESTBBH,BZZYR,BZFY,BBSM,CJR,CJSJ from LCLJ_LCLJBB where LJID=@SOURLJID and BBH=@SOURBBH
	  if @@error>0
	  begin
	   rollback tran
       select @sczt='复制路径版本数据失败。' 
       return    
	  end
	  --临床路径分类 
	  insert into LCLJ_LCLJFL(LJID,BBH,XH,MC)
	   select @DESTLJID,@v_DESTBBH,XH,MC from LCLJ_LCLJFL  where LJID=@SOURLJID and BBH=@SOURBBH
	  if @@error<>0     
      begin  
       rollback tran  
       select @sczt='复制路径分类失败!' 
       return    
      end 
      
--临床路径阶段
	declare @v_JDNUM int,@v_beginNum int,@v_rd int
	set @v_JDNUM=(select COUNT(JDID) from LCLJ_LCLJJD where LJID=@SOURLJID and BBH=@SOURBBH)
	--取得最初的JDID
	set @v_beginNum=(select r_id from sys_max_id where table_name='LCLJ_LCLJJD' and c_name='JDID')
	if @v_beginNum is null
	  set @v_beginNum=0
	--设置JDID的数量
	Exec sys_maxid 'LCLJ_LCLJJD','JDID',@v_rd,@v_JDNUM
	if @@error<>0     
      begin  
       rollback tran  
       select @sczt='复制路径阶段失败!' 
       return    
      end 
	create table #jdtemp
    (njdid int identity(1,1),
     oldjdid varchar(9),
     LJID varchar(9),
     BBH int,
     FID varchar(9),
     XH int,
     MC varchar(50), 
     KSTS int,
     jsts int,
     BZ varchar(10),
     SM varchar(200),
     FL varchar(50)
     )

  SET IDENTITY_INSERT #jdtemp ON 
  insert into #jdtemp(njdid,oldjdid)
   select @v_beginNum,'01'
  SET IDENTITY_INSERT #jdtemp off
  insert into #jdtemp(oldjdid,LJID,BBH,FID,XH,MC,KSTS,JSTS,BZ,SM,FL)
   select JDID,LJID,BBH,FID,XH,MC,KSTS,JSTS,BZ,SM,FL from LCLJ_LCLJJD where LJID=@SOURLJID and BBH=@SOURBBH order by JDID
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径阶段失败!' 
     return    
   end  
  select * into #temp from #jdtemp where oldjdid is not null
  update #jdtemp set FID=substring('000000000',1,9-len(b.njdid))+convert(varchar(9),b.njdid)
  from #jdtemp a,#temp b
  where convert(int,a.fid)=convert(int,b.oldjdid)
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径阶段失败!' 
     return    
   end 
  delete from #jdtemp where njdid=@v_beginNum
  if exists(select * from #jdtemp)
  insert into LCLJ_LCLJJD(JDID,LJID,BBH,FID,XH,MC,KSTS,JSTS,BZ,SM,FL)
  select substring('000000000',1,9-len(njdid))+convert(varchar(9),njdid),@DESTLJID,@DESTBBH,FID,XH,MC,KSTS,jsts,BZ,SM,FL from #jdtemp 
  if @@error<>0     
   begin  
     rollback tran  
     select @sczt='复制路径阶段失败!' 
     return    
   end 
   drop table #temp
 --------------------- 
 --临床路径项目
	set @v_JDNUM=(select COUNT(XMID) from LCLJ_LCLJXM where LJID=@SOURLJID and BBH=@SOURBBH)
	--取得最初的JDID
	set @v_beginNum=(select r_id from sys_max_id where table_name='LCLJ_LCLJXM' and c_name='XMID')
	--设置JDID的数量
	Exec sys_maxid 'LCLJ_LCLJXM','XMID',@v_rd,@v_JDNUM
	if @@error<>0     
      begin  
       rollback tran  
       select @sczt='复制路径项目失败!' 
       return    
      end 
   	create table #xmtemp
    (nxmid int identity(1,1),
     oldXMID varchar(9),
     LJID varchar(9),
     JDID varchar(9),
     TBID varchar(5),
     BBH int,
     FL varchar(50),
     XMXH int,
     XMNR varchar(1000), 
     ZXFS int,
     ZXZ int,
     XMJG varchar(500),
     NRYQ int
     )

  SET IDENTITY_INSERT #xmtemp ON 
  insert into #xmtemp(nxmid,oldXMID)
   select @v_beginNum,'01'
  SET IDENTITY_INSERT #xmtemp off
  insert into #xmtemp(oldXMID,LJID,JDID,TBID,BBH,FL,XMXH,XMNR,ZXFS,ZXZ,XMJG,NRYQ)
   select XMID,LJID,JDID,'0',BBH,FL,XMXH,XMNR,ZXFS,ZXZ,XMJG,NRYQ from LCLJ_LCLJXM where LJID=@SOURLJID and BBH=@SOURBBH order by XMID
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径项目失败!' 
     return    
   end  
 update #xmtemp set JDID=substring('000000000',1,9-len(a.njdid))+convert(varchar(9),a.njdid) from #jdtemp a ,#xmtemp b where a.oldjdid=b.JDID     
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径项目失败!' 
     return    
   end 
  delete from #xmtemp where nxmid=@v_beginNum
  insert into LCLJ_LCLJXM(XMID,LJID,JDID,TBID,BBH,FL,XMXH,XMNR,ZXFS,ZXZ,XMJG,NRYQ)
  select substring('000000000',1,9-len(nxmid))+convert(varchar(9),nxmid),@DESTLJID,JDID,'0',@DESTBBH,FL,XMXH,XMNR,ZXFS,ZXZ,XMJG,NRYQ from #xmtemp 
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径项目失败!' 
     return    
   end 
 ------------- 
--路径医嘱内容
 select * into #mbdx from lclj_blmbdx 
 where mblb in (select XMID from LCLJ_LCLJXM where LJID=@SOURLJID and BBH=@SOURBBH)   
 if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径项目医嘱失败!' 
     return    
   end
  update #mbdx set mblb=substring('000000000',1,9-len(b.nxmid))+convert(varchar(9),b.nxmid)
   from #mbdx a,#xmtemp b where b.oldXMID=a.mblb
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径项目医嘱失败!' 
     return    
   end 

 insert into lclj_blmbdx (bqdm,ksdm,ysdm,ztmc,czy,mzbz,zybz,mblb,bqmc,ksmc)
 select bqdm,ksdm,ysdm,@DESTLJID,czy,mzbz,zybz,mblb,bqmc,ksmc from #mbdx
   if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径项目医嘱失败!' 
     return    
   end 
  drop table #mbdx  
 select * into #mbdxmx from lclj_blmbmx 
 where XMID in (select XMID from LCLJ_LCLJXM where LJID=@SOURLJID and BBH=@SOURBBH)   
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径项目医嘱失败!' 
     return    
   end
  update #mbdxmx set XMID=substring('000000000',1,9-len(b.nxmid))+convert(varchar(9),b.nxmid)
   from #mbdxmx a,#xmtemp b where b.oldXMID=a.XMID
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径项目医嘱失败!' 
     return    
   end  
 insert into lclj_blmbmx(ztid,XMID,yzsx,lb,xmdm,xmmc,ypyf,ypyl,yldw,dw,sl,yytj,czks,
            kdks,yplb,gg,yplsj,ypbzbl,bz,jyyb,jyflbh,ypdwid,fzbz,syfzbh,yzsxb)   
 select @DESTLJID,XMID,yzsx,lb,xmdm,xmmc,ypyf,ypyl,yldw,dw,sl,yytj,czks,
        kdks,yplb,gg,yplsj,ypbzbl,bz,jyyb,jyflbh,ypdwid,fzbz,syfzbh,yzsxb from  #mbdxmx  
   if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径项目医嘱失败!' 
     return    
   end 
 drop table #mbdxmx                 
-------
--路径评估内容
  set @v_JDNUM=(select COUNT(PGID) from LCLJ_LCLJPG where LJID=@SOURLJID and BBH=@SOURBBH)
  --取得最初的JDID
  set @v_beginNum=(select r_id from sys_max_id where table_name='LCLJ_LCLJPG' and c_name='PGID')
  if @v_beginNum is null
    set @v_beginNum=0
  --设置JDID的数量
  Exec sys_maxid 'LCLJ_LCLJPG','PGID',@v_rd,@v_JDNUM
	if @@error<>0     
      begin  
       rollback tran  
       select @sczt='复制路径阶段失败!' 
       return    
      end 

 create table #PGtemp
    (nPGid int identity(1,1),
     oldPGid varchar(9),
     LJID varchar(9),
     JDID varchar(9),
     BBH int,
     PGLX int
     )

  SET IDENTITY_INSERT #PGtemp ON 
  insert into #PGtemp(nPGid,oldPGid)
  select isnull(@v_beginNum,0),'01'
  SET IDENTITY_INSERT #PGtemp off
  insert into #PGtemp(oldPGid,LJID,JDID,BBH,PGLX)
   select PGID,LJID,JDID,BBH,PGLX from LCLJ_LCLJPG where LJID=@SOURLJID and BBH=@SOURBBH order by PGID
 
 if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径评估失败!' 
     return    
   end   
  delete from #PGtemp where nPGid=@v_beginNum
  
   update #PGtemp set JDID=substring('000000000',1,9-len(b.njdid))+convert(varchar(9),b.njdid)
   from #PGtemp a,#jdtemp b where b.oldjdid=a.JDID
   if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径评估失败!' 
     return    
   end  

 if exists(select * from #PGtemp)
  insert into LCLJ_LCLJPG(PGID,LJID,JDID,BBH,PGLX)
  select substring('000000000',1,9-len(nPGid))+convert(varchar(9),nPGid),@DESTLJID,JDID,@DESTBBH,PGLX from #PGtemp
   if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径评估失败!' 
     return    
   end  
 --复制路径评估指标
   set @v_JDNUM=(select COUNT(ZBID) from LCLJ_LJPGZB where PGID in (select PGID from LCLJ_LCLJPG where LJID=@SOURLJID and BBH=@SOURBBH))
   
  --取得最初的JDID
  set @v_beginNum=(select r_id from sys_max_id where table_name='LCLJ_LJPGZB' and c_name='ZBID')
  if @v_beginNum is null
    set @v_beginNum=0
  --设置JDID的数量
  Exec sys_maxid 'LCLJ_LJPGZB','ZBID',@v_rd,@v_JDNUM
  if @@error<>0     
   begin  
     rollback tran  
     select @sczt='复制路径评估指标失败!' 
     return    
  end 
 create table #PGZBtemp
   (nPGZBid int identity(1,1),
    oldPGZBid varchar(9),
    PGID varchar(9),
    XH int,
    PGZB varchar(200),
    ZBLX int,
    ZBJG varchar(500)
    )
 SET IDENTITY_INSERT #PGZBtemp ON 
   insert into #PGZBtemp(nPGZBid,oldPGZBid)
   select @v_beginNum,'01'
 SET IDENTITY_INSERT #PGZBtemp off
  insert into #PGZBtemp(oldPGZBid,PGID,XH,PGZB,ZBLX,ZBJG)
  select ZBID,PGID,XH,PGZB,ZBLX,ZBJG from LCLJ_LJPGZB where PGID in (select PGID from LCLJ_LCLJPG where LJID=@SOURLJID and BBH=@SOURBBH)
 if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径评估指标失败!' 
     return    
   end   
  delete from #PGZBtemp where nPGZBid=@v_beginNum 
 
  update #PGZBtemp set PGID=substring('000000000',1,9-len(b.nPGid))+convert(varchar(9),b.nPGid)
   from #PGZBtemp a,#PGtemp b where b.oldPGid=a.PGID 
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径评估指标失败!' 
     return    
   end 

  if exists(select * from #PGZBtemp)
  insert into LCLJ_LJPGZB(ZBID,PGID,XH,PGZB,ZBLX,ZBJG)
  select substring('000000000',1,9-len(nPGZBid))+convert(varchar(9),nPGZBid),PGID,XH,PGZB,ZBLX,ZBJG
  from #PGZBtemp   
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径评估指标失败!' 
     return    
   end   
 ----- 
  --复制路径评估指标条件
 select * into #PGTJTmp from LCLJ_LJPGTJ where PGID in (select PGID from LCLJ_LCLJPG where LJID=@SOURLJID and BBH=@SOURBBH)
  if @@error<>0     
    begin  
     rollback tran  
     select @sczt='复制路径评估指标条件失败!' 
     return    
   end
 update #PGTJTmp set PGID=substring('000000000',1,9-len(b.nPGid))+convert(varchar(9),b.nPGid)
   from #PGTJTmp a,#PGtemp b where b.oldPGid=a.PGID 
 if @@error<>0     
   begin  
     rollback tran  
     select @sczt='复制路径评估指标条件失败!' 
     return    
   end
        
 update #PGTJTmp set ZBID=substring('000000000',1,9-len(b.nPGZBid))+convert(varchar(9),b.nPGZBid)
   from #PGTJTmp a,#PGZBtemp b where b.oldPGZBid=a.ZBID 
 if @@error<>0     
   begin  
     rollback tran  
     select @sczt='复制路径评估指标条件失败!' 
     return    
   end
 update #PGTJTmp set XMID=substring('000000000',1,9-len(b.nxmid))+convert(varchar(9),b.nxmid)
   from #PGTJTmp a,#xmtemp b where b.oldXMID=a.XMID 
 if @@error<>0     
   begin  
     rollback tran  
     select @sczt='复制路径评估指标条件失败!' 
     return    
   end 

 if exists(select * from #PGTJTmp) 
 insert into LCLJ_LJPGTJ(PGID,ZBID,XMID,GXS,TJZ,TJZH)  
 select PGID,ZBID,XMID,GXS,TJZ,TJZH from #PGTJTmp
  if @@error<>0     
   begin  
     rollback tran  
     select @sczt='复制路径评估指标条件失败!' 
     return    
   end
  ----- 
--------
  --drop table  #PGTJTmp
  --drop table  #xmtemp
  --drop table  #PGZBtemp 
 end try
 begin catch 
  if @@TRANCOUNT>0
  rollback tran 
  select @sczt='复制路径版本失败!' 
  return 
 end catch   
 if @@TRANCOUNT>0
 begin
   commit tran
   select @sczt='0'
   return 
 end  
 
END


GO


USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LJBB_Delete]    Script Date: 02/29/2012 11:18:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[dbo].[LCLJ_LJBB_Delete]
@LJID varchar(9),
@BBH int,
@sczt varchar(80) output 
AS
BEGIN
 begin tran  

  begin try
   --删除相关表
   delete from LCLJ_LCLJBB where LJID=@LJID and BBH=@BBH
   delete from LCLJ_LCLJJD where LJID=@LJID and BBH=@BBH
   delete from LCLJ_LCLJFL where LJID=@LJID and BBH=@BBH
   delete from LCLJ_LCLJXM where LJID=@LJID and BBH=@BBH

    --删除相关评估条件
   delete from LCLJ_LJPGZB where PGID in (select PGID from LCLJ_LCLJPG where LJID=@LJID and BBH=@BBH)
   delete from LCLJ_LJPGTJ where PGID in (select PGID from LCLJ_LCLJPG where LJID=@LJID and BBH=@BBH)
   delete from LCLJ_LCLJPG where LJID=@LJID and BBH=@BBH
   --删除相关项目医嘱
   delete from dbo.lclj_blmbmx where ztid=@LJID and XMID in 
   (select XMID from LCLJ_LCLJXM where LJID=@LJID and BBH=@BBH)
   delete from  dbo.lclj_blmbdx where ztmc=@LJID and mblb in
   (select XMID from LCLJ_LCLJXM where LJID=@LJID and BBH=@BBH)
   --更新最新版本 
   declare @V_num int
   Select @v_num=(select MAX(BBH) from LCLJ_LCLJBB where LJID=@LJID and ISNULL(SHSJ,0)<>0 and ISNULL(TYSJ,0)=0)
   if @v_num>0
      update LCLJ_LCLJML set ZXBB=@v_num where LJID=@LJID
   else
      update LCLJ_LCLJML set ZXBB=null where LJID=@LJID
 end try
 begin catch 
  if @@TRANCOUNT>0
  rollback tran 
  select @sczt='删除路径版本失败!' 
  return 
 end catch   
 if @@TRANCOUNT>0
 begin
   commit tran
   select @sczt='0'
   return 
 end  
END


GO


USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LJBB_stop]    Script Date: 02/29/2012 11:18:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[dbo].[LCLJ_LJBB_stop]
@LJID varchar(9),
@BBH int,
@TYR varchar(20),
@TY int, --1是停用，-1是取消停用
@sczt varchar(80) output 
AS
BEGIN
  declare @v_num int
  declare @v_Date Datetime;
  select @v_Date =GETDATE()
   begin tran  
	if @TY=1
	--停用
	 begin
	  select * from LCLJ_LCLJBB where LJID=@LJID and ISNULL(SHSJ,0)=0
	  if @@ROWCOUNT>0
	  begin
	   rollback tran
       select @sczt='该版本的临床路径尚未审核，不需要停用。' 
       raiserror( '该版本的临床路径尚未审核，不需要停用。 ',16,1 )with NOWAIT    
       return    
	  end
	  update LCLJ_LCLJBB set TYR=@TYR,TYSJ=@v_Date where LJID=@LJID and BBH=@BBH and ISNULL(TYSJ,0)=0
	  if @@error<>0     
      begin  
       rollback tran  
       select @sczt='停用路径失败!' 
       raiserror( '停用路径失败! ',16,1 )with NOWAIT    
       return    
      end 
	 end
	else
	 begin
	  select @v_num= (select COUNT(LJID)  from LCLJ_LCLJBB where LJID=@LJID and BBH>@BBH and (ISNULL(TYSJ,0)<>0 or ISNULL(SHSJ,0)<>0))
	  if @v_num>0
	  begin  
	   rollback tran  
       select @sczt='该版本后面存在其他已经审核或者停用的版本，不能取消停用。' 
       raiserror( '该版本后面存在其他已经审核或者停用的版本，不能取消停用。 ',16,1 )with NOWAIT    
       return    
      end 
	 --取消停用
	   update LCLJ_LCLJBB set TYR=null,TYSJ=null where LJID=@LJID and BBH=@BBH and ISNULL(TYSJ,0)<>0
	  if @@error<>0     
      begin  
       rollback tran  
       select @sczt='取消停用路径失败!' 
       raiserror( '取消停用路径失败! ',16,1 )with NOWAIT    
       return    
      end 

     end

	    --更新最新版本 
    Select @v_num=(select MAX(BBH) from LCLJ_LCLJBB where LJID=@LJID and ISNULL(SHSJ,0)=0 and ISNULL(TYSJ,0)=0)
    if @v_num>0
      update LCLJ_LCLJML set ZXBB=@v_num where LJID=@LJID
    else
      update LCLJ_LCLJML set ZXBB=null where LJID=@LJID
    if @@error<>0     
     begin  
      rollback tran  
      select @sczt='审核路径失败!' 
      raiserror( '审核路径失败! ',16,1 )with NOWAIT    
      return    
    end else 
     begin   
     commit tran  
     select @sczt='0'    
    end 
END

GO

USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LJBBH_Update]    Script Date: 02/29/2012 11:19:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[dbo].[LCLJ_LJBBH_Update]
@LJID Varchar(9),	
@BBH int,
@BZZYR varChar(10),
@BZFY varChar(20),
@BBSM varchar(200),
@CJR varchar(20),
@CJSJ DateTime,
@sczt varchar(30) output 
AS
BEGIN
    -- Insert statements for procedure here
    if isnull(@LJID,0)=0
	begin
      select @sczt='1'     
      raiserror( '路径ID不能为空，请检查！ ',16,-1 )with NOWAIT        
      return    
	end
 	--增加临床路径版本号
	select * from dbo.LCLJ_LCLJBB where LJID=@LJID and BBH=@BBH 
	if @@ROWCOUNT=0
	  insert into dbo.LCLJ_LCLJBB(LJID,BBH,BZZYR,BZFY,BBSM,CJR,CJSJ) values(@LJID,@BBH,@BZZYR,@BZFY,@BBSM,@CJR,@CJSJ)
	 else
	  update dbo.LCLJ_LCLJBB set BZZYR=@BZZYR,BZFY=@BZFY,BBSM=@BBSM,CJR=@CJR,CJSJ=@CJSJ where LJID=@LJID and BBH=@BBH 
	if @@error<>0     
     begin    
      select @sczt='增加临床路径版本号表失败!' 
      raiserror( '增加临床路径版本号表失败! ',16,1 )with NOWAIT    
      return    
    end  
	--修改路径目录表的最新版本号
  update LCLJ_LCLJML set ZXBB=@BBH where LJID=@LJID
   if @@error<>0     
     begin    
      select @sczt='修改路径目录表失败!'
      raiserror( '操作失败，请检查！ ',16,1 )with NOWAIT     
      return    
    end  
    else
    begin    
     select @sczt='0'    
    end 
END

GO

USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LJFL_Update]    Script Date: 02/29/2012 11:20:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[dbo].[LCLJ_LJFL_Update]
@LJID Varchar(9),	
@BBH int,
@XH int,
@MC varchar(50),
@sczt varchar(30) output 
AS
BEGIN
    -- Insert statements for procedure here
    if isnull(@LJID,0)=0
	begin
      select @sczt='1'     
      raiserror( '路径ID不能为空，请检查！ ',16,-1 )with NOWAIT        
      return    
	end
	--增加临床路径分类
	select * from dbo.LCLJ_LCLJFL where  LJID=@LJID and BBH=@BBH and XH=@XH
	if @@ROWCOUNT=0
	  insert into dbo.LCLJ_LCLJFL(LJID,BBH,XH,MC) values(@LJID,@BBH,@XH,@MC)
	 else
	  update dbo.LCLJ_LCLJFL set MC=@MC where LJID=@LJID and BBH=@BBH and XH=@XH 
	if @@error<>0     
     begin    
      select @sczt='增加临床路径分类表失败!' 
      raiserror( '增加临床路径分类表失败! ',16,1 )with NOWAIT    
      return    
    end else 
     begin    
     select @sczt='0'    
    end 
END



GO
USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LJJD_Update]    Script Date: 02/29/2012 11:21:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[dbo].[LCLJ_LJJD_Update]
@JDID Varchar(9),
@LJID Varchar(9),	
@BBH int,
@FID varChar(10),
@XH int,
@MC varChar(50),
@KSTS int,
@JSTS int,
@BZ varchar(10),
@SM varchar(200),
@FL varchar(50),
@sczt varchar(30) output 
AS
BEGIN
    -- Insert statements for procedure here
    if isnull(@LJID,0)=0
	begin
      select @sczt='1'     
      raiserror( '路径ID不能为空，请检查！ ',16,-1 )with NOWAIT        
      return    
	end
	
    if isnull(@JDID,0)=0
	begin
      select @sczt='1'     
      raiserror( '阶段ID不能为空，请检查！ ',16,-1 )with NOWAIT        
      return    
	end

 	--增加临床路径阶段
	select * from dbo.LCLJ_LCLJJD where  JDID=@JDID
	if @@ROWCOUNT=0
	  insert into dbo.LCLJ_LCLJJD(JDID,LJID,BBH,FID,XH,MC,KSTS,JSTS,BZ,SM,FL) values(@JDID,@LJID,@BBH,@FID,@XH,@MC,@KSTS,@JSTS,@BZ,@SM,@FL)
	 else
	  update dbo.LCLJ_LCLJJD set FID=@FID,XH=@XH,MC=@MC,KSTS=@KSTS,JSTS=@JSTS,BZ=@BZ,SM=@SM,FL=@FL where JDID=@JDID and LJID=@LJID and BBH=@BBH 
	if @@error<>0     
     begin    
      select @sczt='增加临床路径阶段表失败!' 
      raiserror( '增加临床路径阶段表失败! ',16,1 )with NOWAIT    
      return    
    end else 
     begin    
     select @sczt='0'    
    end 
END

GO
USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LJML_Delete]    Script Date: 02/29/2012 11:22:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE[dbo].[LCLJ_LJML_Delete]
@LJID varchar(9),
@sczt varchar(80) output 
AS
BEGIN
 begin tran  

  begin try
   select * from LCLJ_LCLJBB where LJID=@LJID and ISNULL(shsj,0)<>0
   if @@ROWCOUNT>0
   begin
      select @sczt='该路径存在已经审核的路径版本,不允许删除。' 
      raiserror( '该路径存在已经审核的路径版本,不允许删除。 ',16,1 )with NOWAIT    
      --return    
   end
   --删除相关表
   delete from LCLJ_LCLJBB where LJID=@LJID
   delete from LCLJ_LCLJJD where LJID=@LJID
   delete from LCLJ_LCLJFL where LJID=@LJID 
   delete from LCLJ_LCLJXM where LJID=@LJID 
   delete from LCLJ_LCLJKS where LJID=@LJID 
   delete from LCLJ_LCLJBZ where LJID=@LJID
    --删除相关评估条件
   delete from LCLJ_LJPGZB where PGID in (select PGID from LCLJ_LCLJPG where LJID=@LJID)
   delete from LCLJ_LJPGTJ where PGID in (select PGID from LCLJ_LCLJPG where LJID=@LJID)
   delete from LCLJ_LCLJPG where LJID=@LJID 
   --删除相关项目医嘱
   delete from dbo.lclj_blmbmx where ztid=@LJID 
   delete from dbo.lclj_blmbdx where ztmc=@LJID
   delete from dbo.LCLJ_LCLJML where LJID=@LJID
     
 end try
 begin catch 
  if @@TRANCOUNT>0
  rollback tran 
  --select @sczt='审核路径失败!' 
  return 
 end catch   
 if @@TRANCOUNT>0
 begin
   commit tran
   select @sczt='0'
   return 
 end  
END

GO
USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LJPGTJ_Insert]    Script Date: 02/29/2012 11:22:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE[dbo].[LCLJ_LJPGTJ_Insert]
@PGID varchar(9),
@LJID Varchar(9),	
@BBH int,
@JDID varChar(9),
@PGLX int,
@ZBID varchar(9),
@XMID varchar(9),
@GXS varchar(5),
@TJZ varchar(50),
@TJZH int,
@sczt varchar(30) output 
AS
BEGIN
    -- Insert statements for procedure here
    if isnull(@PGID,0)=0
	begin
      select @sczt='1'     
      raiserror( '评估ID不能为空，请检查！ ',16,-1 )with NOWAIT        
      return    
	end
 	--增加临床路径指标 
	select * from dbo.LCLJ_LCLJPG where LJID=@LJID and BBH=@BBH and PGID=@PGID
	if @@ROWCOUNT=0
	 insert into dbo.LCLJ_LCLJPG(PGID,LJID,JDID,BBH,PGLX) values(@PGID,@LJID,@JDID,@BBH,@PGLX)
	
	if @@error<>0     
     begin    
      select @sczt='增加临床路径指标表失败!' 
      raiserror( '增加临床路径指标表失败! ',16,1 )with NOWAIT    
      return    
    end  
	--修改路径评估条件指标
   insert into dbo.LCLJ_LJPGTJ(PGID,ZBID,XMID,GXS,TJZ,TJZH) values(@PGID,@ZBID,@XMID,@GXS,@TJZ,@TJZH)
   if @@error<>0     
     begin    
      select @sczt='修改路径评估指标条件失败!'
      raiserror( '操作失败，请检查！ ',16,1 )with NOWAIT     
      return    
    end  
    else
    begin    
     select @sczt='0'    
    end 
END
GO
USE [my_data]
GO

/****** Object:  StoredProcedure [dbo].[LCLJ_LJPGZB_Insert]    Script Date: 02/29/2012 11:23:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE[dbo].[LCLJ_LJPGZB_Insert]
@PGID varchar(9),
@LJID Varchar(9),	
@BBH int,
@JDID varChar(9),
@PGLX int,
@ZBID varchar(9),
@XH int,
@PGZB varchar(200),
@ZBLX int,
@ZBJG varchar(500),
@sczt varchar(30) output 
AS
BEGIN
    -- Insert statements for procedure here
    if isnull(@ZBID,0)=0
     begin
      select @sczt='指标ID不能为空请检查!'    
      return    
     end
	--增加临床路径指标 
	select * from dbo.LCLJ_LCLJPG where LJID=@LJID and BBH=@BBH and PGID=@PGID
	if @@ROWCOUNT=0
	 insert into dbo.LCLJ_LCLJPG(PGID,LJID,JDID,BBH,PGLX) values(@PGID,@LJID,@JDID,@BBH,@PGLX)
	if @@error<>0     
     begin    
      select @sczt='增加临床路径指标记录失败!'    
      return    
    end  
	--修改路径评估指标
  select * from dbo.LCLJ_LJPGZB where ZBID=@ZBID and PGID=@PGID
  if @@ROWCOUNT=0
   insert into dbo.LCLJ_LJPGZB(ZBID,PGID,XH,PGZB,ZBLX,ZBJG) values(@ZBID,@PGID,@XH,@PGZB,@ZBLX,@ZBJG)
  else
   update dbo.LCLJ_LJPGZB set XH=@XH,PGZB=@PGZB,ZBLX=@ZBLX,ZBJG=@ZBJG  where ZBID=@ZBID and PGID=@PGID	
   if @@error<>0     
     begin    
      select @sczt='修改路径评估指标失败!'    
      return    
    end  
    else
    begin    
     select @sczt='0'    
    end 
END
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE[dbo].[LCLJ_LJXM_Update]
@XMID Varchar(9),
@LJID Varchar(9),
@JDID Varchar(9),	
@BBH int,
@TBID int,
@FL varchar(50),
@XMXH int,
@XMNR varchar(1000),
@ZXFS int,
@ZXZ int,
@XMJG varchar(500),
@NRYQ int,
@sczt varchar(30) output 
AS
BEGIN
    -- Insert statements for procedure here
    if isnull(@LJID,0)=0
	begin
      select @sczt='1'     
      raiserror( '路径ID不能为空，请检查！ ',16,-1 )with NOWAIT        
      return    
	end
	
    if isnull(@XMID,0)=0
	begin
      select @sczt='1'     
      raiserror( '项目ID不能为空，请检查！ ',16,-1 )with NOWAIT        
      return    
	end

 	--增加临床路径项目
	select * from dbo.LCLJ_LCLJXM where  XMID=@XMID
	if @@ROWCOUNT=0
	  insert into dbo.LCLJ_LCLJXM(XMID,LJID,JDID,TBID,BBH,FL,XMXH,XMNR,ZXFS,ZXZ,XMJG,NRYQ) 
	  values(@XMID,@LJID,@JDID,@TBID,@BBH,@FL,@XMXH,@XMNR,@ZXFS,@ZXZ,@XMJG,@NRYQ)
	 else
	  update dbo.LCLJ_LCLJXM set TBID=@TBID,FL=@FL,XMXH=@XMXH,XMNR=@XMNR,ZXFS=@ZXFS,ZXZ=@ZXZ,XMJG=@XMJG,NRYQ=@NRYQ
	  where XMID=@XMID 
	if @@error<>0     
     begin    
      select @sczt='增加临床路径项目表失败!' 
      raiserror( '增加临床路径项目表失败! ',16,1 )with NOWAIT    
      return    
    end else 
     begin    
     select @sczt='0'    
    end 
END

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE[dbo].[LCLJ_LJXMYZ_Update]
@KSDM varchar(30),
@YSDM varchar(30),
@CZY varchar(4),
@LJID Varchar(9),
@XMID Varchar(9),
@YZSX Varchar(4),	
@LB Varchar(4),
@XMDM Varchar(14),
@XMMC varchar(100),
@YPYF Varchar(4),
@YPYL varchar(10),
@YLDW varchar(10),
@DW varchar(10),
@SL Int,
@YYTJ varchar(8),
@CZKS varchar(4),
@KDKS varchar(4),
@YPLB varchar(10),
@GG varchar(50),
@YPLSJ numeric(18,4),
@YPBZBL int,
@BZ varchar(100),
@JYYB varchar(10),
@JYFLBH varchar(20),
@YPDWID int,
@FZBZ varchar(20),
@YZSXB varchar(4),
@sczt varchar(30) output 
AS
BEGIN
    -- Insert statements for procedure here
    if isnull(@LJID,0)=0
	begin
      select @sczt='1'     
      raiserror( '路径ID不能为空，请检查！ ',16,-1 )with NOWAIT        
      return    
	end
	
    if isnull(@XMID,0)=0
	begin
      select @sczt='1'     
      raiserror( '项目ID不能为空，请检查！ ',16,-1 )with NOWAIT        
      return    
	end
    --增加路径医嘱主表
    select * from dbo.lclj_blmbdx where ztmc=@LJID and mblb=@XMID
    if @@ROWCOUNT=0
     insert into lclj_blmbdx(ksdm,ysdm,ztmc,czy,mblb,mzbz,zybz) 
     values (@KSDM,@YSDM,@LJID,@CZY,@XMID,0,0)
    else
     update dbo.lclj_blmbdx set ksdm=@KSDM,ysdm=@YSDM,czy=@CZY where ztmc=@LJID and mblb=@XMID
     
     if @@error<>0     
     begin    
      select @sczt='增加临床路径项目医嘱主表失败!' 
      raiserror( '增加临床路径项目医嘱主表失败! ',16,1 )with NOWAIT    
      return    
     end
 	--增加临床路径项目医嘱明细表
    insert into dbo.lclj_blmbmx(ztid,xmid,yzsx,lb,xmdm,xmmc,ypyf,ypyl,yldw,dw,sl,yytj,czks,kdks,yplb,gg,yplsj,ypbzbl,bz,jyyb,jyflbh,ypdwid,fzbz,yzsxb) 
    values(@LJID,@XMID,@YZSX,@LB,@XMDM,@XMMC,@YPYF,@YPYL,@yldw,@DW,@SL,@YYTJ,@CZKS,@KDKS,@YPLB,@GG,@YPLSJ,@YPBZBL,@BZ,@JYYB,@JYFLBH,@YPDWID,@FZBZ,@YZSXB)
	if @@error<>0     
     begin    
      select @sczt='增加临床路径项目表失败!' 
      raiserror( '增加临床路径项目表失败! ',16,1 )with NOWAIT    
      return    
    end else 
     begin    
     select @sczt='0'    
    end 
END


GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sys_maxid]  --修改 sys_maxid过程用于取得唯一的ID 号
@table_name varchar(20),  
@id_name varchar(20),  
@max_id_rn bigint output,  
@endNum int=0  
AS  
begin tran  
declare @ll_count int  
select @ll_count=count(*) from sys_max_id where table_name = @table_name and c_name = @id_name;  
if @ll_count=0   
begin  
   declare @max_id_1 bigint   
   select @max_id_1 = isnull(max(id),0) + 1 from sys_max_id  
   if @endNum=0  
    begin  
     insert sys_max_id  
     values(@max_id_1,@table_name,@id_name,1)  
     set @max_id_rn = 1  
   end  
    else  
    begin  
     insert sys_max_id  
     values(@max_id_1,@table_name,@id_name,@endNum)  
     set @max_id_rn = @endNum  
    end    
     
    if @@error<>0       
    begin      
     rollback tran      
     return      
   end   
   else  
   begin      
    commit tran  
    return @max_id_rn      
  end   
end  
else  
  begin  
   if @endNum=0  
     select @max_id_rn = r_id + 1 from sys_max_id  where table_name = @table_name and c_name = @id_name;  
    else  
     select @max_id_rn = r_id + @endNum from sys_max_id  where table_name = @table_name and c_name = @id_name;  
    UPDATE sys_max_id   
    SET r_id = @max_id_rn WHERE table_name = @table_name and c_name = @id_name;  
  if @@error<>0       
    begin      
     rollback tran      
     return      
   end   
   else  
   begin      
    commit tran  
    return @max_id_rn      
  end   
  end 
GO

USE [my_data]
GO

/****** Object:  UserDefinedFunction [dbo].[LCLJ_BYCJYYSTreeInfo]    Script Date: 02/29/2012 11:27:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[LCLJ_BYCJYYSTreeInfo] ( @BM char(5))  
 RETURNS @treeinfo table  
([BM] [char] (5) NOT NULL, 
[JB] [int] NOT NULL 
) AS 
BEGIN  
  DECLARE @level AS int  
  SELECT @level = 0 
  INSERT INTO @treeinfo  
  SELECT [BM],@level 
  FROM  LCLJ_BYCJYY
  WHERE [BM] = @BM 
  
  WHILE @@ROWCOUNT > 0  
  BEGIN  
  SET @level = @level + 1  
  INSERT INTO @treeinfo  
  SELECT E.[BM],@level 
  FROM [LCLJ_BYCJYY] AS E JOIN @treeinfo AS T  
  ON E.[SJ] = T.[BM] AND T.[JB] = @level - 1  
  END  
 
  RETURN 
END   
GO
USE [my_data]
GO

/****** Object:  UserDefinedFunction [dbo].[LCLJ_LJCJJGTreeInfo]    Script Date: 02/29/2012 11:30:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[LCLJ_LJCJJGTreeInfo] ( @BM AS char(5) )  
 RETURNS @treeinfo table  
([BM] [char] (5) NOT NULL, 
[JB] [int] NOT NULL 
) AS  
BEGIN  
  DECLARE @level AS int  
  SELECT @level = 0  
  INSERT INTO @treeinfo  
  SELECT [BM],@level 
  FROM [LCLJ_LJCJJG]
  WHERE [BM] = @BM 
  WHILE @@ROWCOUNT > 0  
  BEGIN  
  SET @level = @level + 1  
  INSERT INTO @treeinfo  
  SELECT E.[BM],@level 
  FROM [LCLJ_LJCJJG] AS E JOIN @treeinfo AS T  
  ON E.[SJ] = T.[BM] AND T.[JB] = @level - 1  
  END  
 
  RETURN 
END   
GO


insert into LCLJ_LJJGXZ(MC) values('已经执行')
insert into LCLJ_LJJGXZ(MC) values('尚未执行')
insert into LCLJ_LJJGXZ(MC) values('取消执行')
insert into LCLJ_LJJGXZ(MC) values('部分执行')
insert into LCLJ_LJJGXZ(MC) values('提前执行')
insert into LCLJ_LJJGXZ(MC) values('延后执行')










