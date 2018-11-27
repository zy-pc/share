unit HmExcel;
interface
uses
Forms,ComObj,DBGridEh,SysUtils,DB,Variants;
function ExpToExcel(dbg:TDBGridEh;title:string;subTitle:string='';bcname:string=''):Boolean;
implementation  {  ��д:HanMon 2006-07-10   ����޸�:2012-09-11 ����:
DBGridEh������Excel,֧�ֶ��ͷ�ϲ�(�������)���ϼ������� ����:
Procedure ExpToExcel(dbg:TDBGridEh;title:string;subTitle:string=''); ����:
1.dbg    :�ؼ�,�����ؼ�EhLib�ؼ�����DBGridEh�ؼ�ʵ��
2.title    :�ַ�,����Excel�ĵ�һ�У�Ĭ������24��
3.subTitle :�ַ�:�ӱ���,Ĭ��Ϊ��ǰ���ڣ����Դ��뵼����ʱ���
ע��:
1.ֻ֧������������ĺϲ�(����Ҳ���˷�)
2.���������� (ABC|A,ABC,ABC|C)�ڱ����֧�ֺϲ�,���ڶ��еڶ���Ϊ��          ABC         A, ,C
����û��ʵ������,����Ԫ��֧��,ֻ֧����(ABC|A,ABC|B,ABC|C)�ϸ��Էָ��'|'��ʶ��
3.�����Footer,����Ԫֻ֧��һ��Footer���� }
// 01.��������ת��ΪExcel��ʽ����ĸ��
function getXlsCol(const col:integer):string;
var    m,n:integer;
begin
  if (col<=0)or(col>256) then
    result:='Error'//�쳣(Error)
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
// 02.��÷ֲ����Ĳ����
function getLevel(aTitle:string):integer;
var    i:integer;
begin
  Result:=1;
  for i:=1 to length(aTitle) do
    if aTitle[i]='|' then
      Result:=Result+1;
end;  {-------------------------------------------------}
// 03.��÷ֲ����������
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
// 04.���ͬһ��Ľ���λ��(level=1���� level=2�ζ���)
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
// A.������Excel:����1:�������ؼ����,����2:����,����3:������
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
    // ��ת�������ֻ�����ʱ����ַ���,Excel���Զ�ת���ɶ�Ӧ��������,��ǣ�����ó��ı���ʽ��ʾ
    for i:=0 to dbg.Columns.Count-1 do
    if dbg.Columns[i].Field.DataType in [ftString,ftMemo,ftFixedChar,ftWideString,ftFmtMemo] then
    begin
      sht.range[format('%s:%s',[getXlsCol(i+1),getXlsCol(i+1)])].NumberFormat:='@';//ǣ����ʾ����Ϊ�ı���ʾ
    end;
//    ��Excel��úͷֲ�����ͬ�ĵ�Ԫ��ϲ�
//       ��: ID   AB|A   AB|B   CDE|CD|C   CDE|CD|D   CDE|E    F
    maxLevel:=getmaxLevel(dbg);
    for i:=0 to dbg.Columns.Count-1 do begin
    //�����������ַ���ʾ,���Ե���Ϊĳ�������������ı���ʾ
      s:=dbg.Columns[i].Title.Caption;         //���㴹ֱ�ϲ�
      if pos('|',s)=0 then begin
        sht.cells(3,i+1):=s;
        if maxLevel>1 then
         sht.range[format('%s3:%s%d',  [getXlsCol(i+1),getXlsCol(i+1),maxLevel+2])].merge;
        continue;
      end
      else
        s1:=copy(s,1,pos('|',s)-1);
        s:=copy(s,pos('|',s)+1,maxInt);
        getBeginEndCol(dbg,i,1,j,k);         //�����кϲ�
      if i=j then
      begin
        sht.cells(3,i+1):=s1;
        if j<>k then
        sht.range[format('%s3:%s3', [getXlsCol(j+1),getXlsCol(k+1)])].merge;
      end;          //˫�㴹ֱ�ϲ�
      if pos('|',s)=0 then begin
        sht.cells(4,i+1):=s;
        if maxLevel>2 then
          sht.range[format('%s4:%s%d',  [getXlsCol(i+1),getXlsCol(i+1),maxLevel+2])].merge;
        continue;
      end;         //����
      getBeginEndCol(dbg,i,2,j,k);
      if i=j then begin
        sht.cells(4,i+1):=copy(s,1,pos('|',s)-1);
        if j<>k then
          sht.range[format('%s4:%s4', [getXlsCol(j+1),getXlsCol(k+1)])].merge;
      end;
      sht.cells(5,i+1):=copy(s,pos('|',s)+1,maxInt);
    end;      //��������
    dbg.DataSource.DataSet.First;
    i:=2+MaxLevel;
    while not dbg.DataSource.DataSet.Eof do
    begin
      i:=i+1;
      sht.cells(i,1):=i-3;
      for j:=0 to col-1 do
      if dbg.Columns[j].Field<>nil then
      //���Բ������ݿ��ֶζ�Ӧ����
       sht.cells(i,j+1):=dbg.Columns[j].Field.DisplayText;
      dbg.DataSource.DataSet.Next;
    end;
    dbg.DataSource.DataSet.First;     //����ҳ��ͳ����������
    if dbg.FooterRowCount>0 then begin
      i:=i+1;
      for j:=0 to col-1 do
      if dbg.Columns[j].Footer.ValueType=fvtStaticText then
        sht.cells(i,j+1):=dbg.Columns[j].Footer.Value
      else if dbg.Columns[j].Footer.ValueType=fvtNon then
        continue
      else
      sht.cells(i,j+1):=varToStr(dbg.Columns[j].Footer.SumValue);
    end;      //����Excel��ʽ
    s:=format('A1:%s1', [getXlsCol(col)]);
    //������(��һ��)
    sht.range[s].merge;
    sht.range[s].font.size:=14;
    s:=format('A2:%s2',[getXlsCol(col)]);
    //������(�ڶ���)
    sht.range[s].merge;
    sht.range[s].font.size:=10;
    s:=format('A1:%s%d',[getXlsCol(col),2+MaxLevel]);
    //�����⣬�����⣬����(ǰ����)ˮƽ��ֱ����,����
    sht.range[s].HorizontalAlignment:=-4108;
    sht.range[s].VerticalAlignment:=-4108;
    sht.range[s].font.bold:=true;
    if dbg.FooterRowCount>0 then
    //�������������ӱ߿�(������ҳ����)
      sht.range[format('A3:%s%d',[getXlsCol(col),i-1])].borders.lineStyle:=1
    else
    sht.range[format('A3:%s%d',[getXlsCol(col),i])].borders.lineStyle:=1;
    s:=format('A3:%s%d',[getXlsCol(col),i]);
    //���������ݣ�ͳ���� ����10,�Զ����У��ӱ߿�
    sht.range[s].font.size:=10;
    sht.columns[format('A:%s',[getXlsCol(col)])].EntireColumn.AutoFit;
    //�Զ���Ӧ�п�
    bok.saved:=true;
    app.visible:=false;  //�Ƿ���ʾ����  false ��̨����
   if not app.ActiveWorkBook.Saved then
      app.ActiveSheet.PrintPreview;
    app.ActiveWorkBook.SaveAs(bcname +'.xls');
    app.Quit;
    Result:=True;
  except
    on e:Exception do begin
      Application.MessageBox(PChar(e.Message+#13+' ���ݵ����쳣������ȡ���� '),'��ʾ');
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

