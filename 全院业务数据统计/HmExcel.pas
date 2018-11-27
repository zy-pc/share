unit HmExcel;
interface
uses
Forms,ComObj,DBGridEh,SysUtils,DB,Variants;
function ExpToExcel(dbg:TDBGridEh;title:string;subTitle:string='';bcname:string=''):Boolean;
implementation  {  编写:HanMon 2006-07-10   最后修改:2012-09-11 功能:
DBGridEh导出到Excel,支持多表头合并(最多三列)，合计栏导出 声明:
Procedure ExpToExcel(dbg:TDBGridEh;title:string;subTitle:string=''); 参数:
1.dbg    :控件,三方控件EhLib控件包中DBGridEh控件实例
2.title    :字符,导出Excel的第一行，默认字体24号
3.subTitle :字符:子标题,默认为当前日期，可以传入导出的时间段
注意:
1.只支持最多三层标题的合并(多了也是浪费)
2.多层标题中如 (ABC|A,ABC,ABC|C)在表格中支持合并,即第二行第二列为空          ABC         A, ,C
由于没有实际意义,本单元不支持,只支持如(ABC|A,ABC|B,ABC|C)严格以分割符'|'来识别
3.如果有Footer,本单元只支持一行Footer导出 }
// 01.将数字列转换为Excel格式的字母列
function getXlsCol(const col:integer):string;
var    m,n:integer;
begin
  if (col<=0)or(col>256) then
    result:='Error'//异常(Error)
  else if col<=26 then
  begin
    m:=col+64;
    result:=chr(m);
  end else
  begin
    m:=(col-1)div 26;
    n:=col-26*m+64;
    result:=getXlsCol(m)+chr(n);
  end;
end;  {-------------------------------------------------}
// 02.获得分层标题的层次数
function getLevel(aTitle:string):integer;
var    i:integer;
begin
  Result:=1;
  for i:=1 to length(aTitle) do
    if aTitle[i]='|' then
      Result:=Result+1;
end;  {-------------------------------------------------}
// 03.获得分层标题的最大层次
function getMaxLevel(dbg:TDBGridEh):integer;
var    m,i:integer;
begin
  Result:=1;
  for i:=0 to dbg.Columns.Count-1 do
  begin
    m:=getLevel(dbg.Columns[i].Title.Caption);
    if m>Result then
      Result:=m;
  end;
end;  {-------------------------------------------------}
// 04.获得同一层的结束位置(level=1顶层 level=2次顶层)
procedure getBeginEndCol(dbg:TDBGridEh;start,level:integer;var c1,c2:integer);
var
s,s1:string;
begin
  c1:=start;
  c2:=start;
  s:=dbg.Columns[start].Title.Caption;
  if level=1 then
  begin
    if pos('|',s)=0 then
      exit;
    s:=copy(s,1,pos('|',s))
  end else
  if level=2 then
  begin
    s1:=copy(s,1,pos('|',s));
    s:=copy(s,pos('|',s)+1,maxInt);
    if pos('|',s)=0 then
      exit;
    s:=s1+copy(s,1,pos('|',s));
  end;
  while (c1>=0)and(pos(s,dbg.Columns[c1].Title.Caption)>0) do
    c1:=c1-1;
    c1:=c1+1;
  while (c2<=(dbg.Columns.Count-1))and(pos(s,dbg.Columns[c2].Title.Caption)>0) do
    c2:=c2+1;
    c2:=c2-1;
end;  {-------------------------------------------------}
// A.导出到Excel:参数1:第三方控件表格,参数2:标题,参数3:副标题
function ExpToExcel(dbg:TDBGridEh;title:string;subTitle:string='';bcname:string=''):Boolean;
var
i,j,k,col,maxLevel:integer;
app,bok,sht:variant;
s,s1:string;
begin
  Result:=False;
  try
    app:=createOleObject('excel.application');
  except
    exit;
  end;
  try
    bok:=app.workbooks.add;
    sht:=app.worksheets[1];
    col:=dbg.Columns.Count;
    sht.cells(1,1):=title;
    if subTitle='' then
      subTitle:=FormatDateTime('yyyy-mm-dd',date);
    sht.cells(2,1):=subTitle;
    // 可转换成数字或日期时间的字符串,Excel会自动转换成对应数据类型,可牵制设置成文本方式显示
    for i:=0 to dbg.Columns.Count-1 do
    if dbg.Columns[i].Field.DataType in [ftString,ftMemo,ftFixedChar,ftWideString,ftFmtMemo] then
    begin
      sht.range[format('%s:%s',[getXlsCol(i+1),getXlsCol(i+1)])].NumberFormat:='@';//牵制显示数字为文本显示
    end;
//    在Excel获得和分层表格相同的单元格合并
//       例: ID   AB|A   AB|B   CDE|CD|C   CDE|CD|D   CDE|E    F
    maxLevel:=getmaxLevel(dbg);
    for i:=0 to dbg.Columns.Count-1 do begin
    //所有数字以字符表示,可以调整为某部分列数字以文本表示
      s:=dbg.Columns[i].Title.Caption;         //单层垂直合并
      if pos('|',s)=0 then begin
        sht.cells(3,i+1):=s;
        if maxLevel>1 then
         sht.range[format('%s3:%s%d',  [getXlsCol(i+1),getXlsCol(i+1),maxLevel+2])].merge;
        continue;
      end
      else
        s1:=copy(s,1,pos('|',s)-1);
        s:=copy(s,pos('|',s)+1,maxInt);
        getBeginEndCol(dbg,i,1,j,k);         //第三行合并
      if i=j then
      begin
        sht.cells(3,i+1):=s1;
        if j<>k then
        sht.range[format('%s3:%s3', [getXlsCol(j+1),getXlsCol(k+1)])].merge;
      end;          //双层垂直合并
      if pos('|',s)=0 then begin
        sht.cells(4,i+1):=s;
        if maxLevel>2 then
          sht.range[format('%s4:%s%d',  [getXlsCol(i+1),getXlsCol(i+1),maxLevel+2])].merge;
        continue;
      end;         //三层
      getBeginEndCol(dbg,i,2,j,k);
      if i=j then begin
        sht.cells(4,i+1):=copy(s,1,pos('|',s)-1);
        if j<>k then
          sht.range[format('%s4:%s4', [getXlsCol(j+1),getXlsCol(k+1)])].merge;
      end;
      sht.cells(5,i+1):=copy(s,pos('|',s)+1,maxInt);
    end;      //导出数据
    dbg.DataSource.DataSet.First;
    i:=2+MaxLevel;
    while not dbg.DataSource.DataSet.Eof do
    begin
      i:=i+1;
      sht.cells(i,1):=i-3;
      for j:=0 to col-1 do
      if dbg.Columns[j].Field<>nil then
      //忽略不与数据库字段对应的列
       sht.cells(i,j+1):=dbg.Columns[j].Field.DisplayText;
      dbg.DataSource.DataSet.Next;
    end;
    dbg.DataSource.DataSet.First;     //导出页脚统计数据数据
    if dbg.FooterRowCount>0 then begin
      i:=i+1;
      for j:=0 to col-1 do
      if dbg.Columns[j].Footer.ValueType=fvtStaticText then
        sht.cells(i,j+1):=dbg.Columns[j].Footer.Value
      else if dbg.Columns[j].Footer.ValueType=fvtNon then
        continue
      else
      sht.cells(i,j+1):=varToStr(dbg.Columns[j].Footer.SumValue);
    end;      //设置Excel格式
    s:=format('A1:%s1', [getXlsCol(col)]);
    //主标题(第一行)
    sht.range[s].merge;
    sht.range[s].font.size:=14;
    s:=format('A2:%s2',[getXlsCol(col)]);
    //副标题(第二行)
    sht.range[s].merge;
    sht.range[s].font.size:=10;
    s:=format('A1:%s%d',[getXlsCol(col),2+MaxLevel]);
    //主标题，副标题，列名(前三行)水平垂直居中,粗体
    sht.range[s].HorizontalAlignment:=-4108;
    sht.range[s].VerticalAlignment:=-4108;
    sht.range[s].font.bold:=true;
    if dbg.FooterRowCount>0 then
    //列名，数据区加边框(不包括页脚区)
      sht.range[format('A3:%s%d',[getXlsCol(col),i-1])].borders.lineStyle:=1
    else
    sht.range[format('A3:%s%d',[getXlsCol(col),i])].borders.lineStyle:=1;
    s:=format('A3:%s%d',[getXlsCol(col),i]);
    //列名，数据，统计行 字体10,自动换行，加边框
    sht.range[s].font.size:=10;
    sht.columns[format('A:%s',[getXlsCol(col)])].EntireColumn.AutoFit;
    //自动适应列宽
    bok.saved:=true;
    app.visible:=false;  //是否显示处理  false 后台处理
   if not app.ActiveWorkBook.Saved then
      app.ActiveSheet.PrintPreview;
    app.ActiveWorkBook.SaveAs(bcname +'.xls');
    app.Quit;
    Result:=True;
  except
    on e:Exception do begin
      Application.MessageBox(PChar(e.Message+#13+' 数据导出异常，操作取消！ '),'提示');
      bok.saved:=true;
      app.quit;
      result:=false;
      Abort;
    end;
  end;
  sht:=unAssigned;
  bok:=unAssigned;
  app:=unAssigned;
end;
end.

