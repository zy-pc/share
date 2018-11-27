create table lclj_yzlr_ls(
  id  int primary key identity(1,1),
  tmh char(9),
  zyh char(16),
  yzqx char(4),
  xmmc char(100),
  xmdm char(14),
  lb char(4),
  sl int,
  dw char(10),
  ypyl char(10),
  yldw char(10),
  ypgg char(50),
  tzbz bit,
  tzczy char(4),
  tzrq datetime,
  ypyf char(4),
  yytj char(8),
  ksrq datetime,
  ksys char(4), 
  bz char(100),
)

alter procedure lclj_cx_yzlr_ls (@zyh char(16))
as
select * syts
from lclj_yzlr_ls



drop table lclj_yzlr_ls