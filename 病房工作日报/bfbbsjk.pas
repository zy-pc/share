unit bfbbsjk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Menus, Grids, DBGrids, Db, ADODB, ImgList, StdCtrls,bagl,
  Buttons, ExtCtrls, QuickRpt, Qrctrls, DBGridEh, GridsEh;

type
  Tbfbbsjkc = class(TForm)
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    E101: TMenuItem;
    F103: TMenuItem;
    E1: TMenuItem;
    R1: TMenuItem;
    R101: TMenuItem;
    R102: TMenuItem;
    R103: TMenuItem;
    R104: TMenuItem;
    R105: TMenuItem;
    R106: TMenuItem;
    StatusBar1: TStatusBar;
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
    F104: TMenuItem;
    F105: TMenuItem;
    ADODataSet2: TADODataSet;
    F101: TMenuItem;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton16: TToolButton;
    ImageList1: TImageList;
    ToolButton18: TToolButton;
    ToolButton17: TToolButton;
    E105: TMenuItem;
    E102: TMenuItem;
    ADOCommand1: TADOCommand;
    ToolButton11: TToolButton;
    S1: TMenuItem;
    F102: TMenuItem;
    P1: TMenuItem;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand2: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel21: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    DBGridEh1: TDBGridEh;
    N1: TMenuItem;
    E106: TMenuItem;
    N2: TMenuItem;
    E107: TMenuItem;
    procedure F105Click(Sender: TObject);
    procedure F107Click(Sender: TObject);
    procedure F101Click(Sender: TObject);
    procedure R101Click(Sender: TObject);
    procedure R106Click(Sender: TObject);
    procedure E101Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure JLYD;
    procedure FormCreate(Sender: TObject);
    procedure ADODataSet1AfterOpen(DataSet: TDataSet);
    procedure S1Click(Sender: TObject);
    procedure E105Click(Sender: TObject);
    procedure F102Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure ADODataSet1AfterClose(DataSet: TDataSet);
    procedure E106Click(Sender: TObject);
    procedure E107Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  bfbbsjkc: Tbfbbsjkc;
  se1,d,d1,ksls:string;

implementation

uses bfsjjc,bfsjopen, bfkscwxg;

{$R *.DFM}

procedure Tbfbbsjkc.JLYD;
begin
 if ADODataSet1.bof then
 begin
  if ToolButton10.Enabled=true then
  BEGIN
   ToolButton10.Enabled:=false;
   r101.Enabled:=FALSE;
  END;
  if ToolButton11.Enabled=true then
  BEGIN
   ToolButton11.Enabled:=false;
   r102.Enabled:=FALSE;
  END;
  if ToolButton12.Enabled=false then
  BEGIN
   ToolButton12.Enabled:=true;
   r103.Enabled:=TRUE;
  END;
  if ToolButton13.Enabled=false then
  BEGIN
   ToolButton13.Enabled:=true;
   r104.Enabled:=TRUE;
  END;
 end
 else if ADODataSet1.Eof then
 begin
  if ToolButton12.Enabled=true then
  BEGIN
   ToolButton12.Enabled:=false;
   r103.Enabled:=false;
  END;
  if ToolButton13.Enabled=true then
  BEGIN
   ToolButton13.Enabled:=false;
   r104.Enabled:=false;
  END;
  if ToolButton10.Enabled=false then
  BEGIN
   ToolButton10.Enabled:=true;
   r101.Enabled:=TRUE;
  END;
  if ToolButton11.Enabled=false then
  BEGIN
   ToolButton11.Enabled:=true;
   r102.Enabled:=TRUE;
  END;
 end
 else
 begin
  if ToolButton10.Enabled=false then
  BEGIN
   ToolButton10.Enabled:=true;
   R101.Enabled:=TRUE;
  END;
  if ToolButton11.Enabled=false then
  BEGIN
   ToolButton11.Enabled:=true;
   R102.Enabled:=TRUE;
  END;
  if ToolButton12.Enabled=false then
  BEGIN
   ToolButton12.Enabled:=true;
   R103.Enabled:=TRUE;
  END;
  if ToolButton13.Enabled=false then
  BEGIN
   ToolButton13.Enabled:=true;
   R104.Enabled:=TRUE;
  END;
 end;
END;

procedure Tbfbbsjkc.F105Click(Sender: TObject);
begin
 if ADODataSet1.Active=true then
 begin
  ADODataSet1.Close;
  E1.Enabled:=false;
  R1.Enabled:=false;
  S1.Enabled:=false;
  ToolButton3.Enabled:=false;
  ToolButton7.Enabled:=false;
  ToolButton10.Enabled:=false;
  ToolButton11.Enabled:=false;
  ToolButton12.Enabled:=false;
  ToolButton13.Enabled:=false;
  ToolButton16.Enabled:=false;
 end;
end;

procedure Tbfbbsjkc.F107Click(Sender: TObject);
begin
 if ADODataSet1.Active=true then ADODataSet1.Close;
 if ADODataSet2.Active=true then ADODataSet2.Close;
 bfbbsjkc.FreeOnRelease;
 bfbbsjkc.Release;
 bfbbsjkc:=nil;
 close;
end;

procedure Tbfbbsjkc.F101Click(Sender: TObject);
begin
 se1:='1';
 if ADODataSet1.Active=true then ADODataSet1.Close;
 ADODataSet1.CommandText:='select * from dbo.bfgzrb order by kb,sj';
 ADODataSet1.Open;
end;

procedure Tbfbbsjkc.R101Click(Sender: TObject);
begin
 if (sender=ToolButton10) OR (sender=r101) then ADODataSet1.First;
 if (sender=ToolButton11) OR (sender=r102) then ADODataSet1.Prior;
 if (sender=ToolButton12) OR (sender=r103) then ADODataSet1.next;
 if (sender=ToolButton13) OR (sender=r104) then ADODataSet1.Last;
 JLYD;
end;

procedure Tbfbbsjkc.R106Click(Sender: TObject);
var i:integer;
begin
 i:=strtoint(INPUTBOX('输入：','要移动多少条记录（向前："-"；向后："+"）？','500'));
 ADODataSet1.MoveBy(i);
end;

procedure Tbfbbsjkc.E101Click(Sender: TObject);
begin
 if MessageDlg('是否真的删除该记录？',mtConfirmation,[mbYes,mbNo],1)=mrYes then
 begin
  ADODataSet1.delete;
 end;
end;

procedure Tbfbbsjkc.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tbfbbsjkc.FormCreate(Sender: TObject);
begin
 Top:=0;
 Left:=0;
 Width:=800;
 Height:=580;
 E1.Enabled:=false;
 R1.Enabled:=false;
 S1.Enabled:=false;
 ToolButton3.Enabled:=false;
 ToolButton7.Enabled:=false;
 ToolButton10.Enabled:=false;
 ToolButton11.Enabled:=false;
 ToolButton12.Enabled:=false;
 ToolButton13.Enabled:=false;
 ToolButton16.Enabled:=false;
end;

procedure Tbfbbsjkc.ADODataSet1AfterOpen(DataSet: TDataSet);
begin
 if ADODataSet1.IsEmpty then
 begin
  statusbar1.Panels[2].Text:='0';
  statusbar1.Panels[4].Text:='0';
  statusbar1.Panels[6].Text:='0';
  statusbar1.Panels[8].Text:='0';
  statusbar1.Panels[10].Text:='0';
  statusbar1.Panels[12].Text:='0';
 end
 else
 begin
  ADODataSet2.Close;
  if se1='1' then
   ADODataSet2.CommandText:='select distinct sum(R1) ls1,sum(r2) ls2,sum(R3) ls3,sum(r4) ls4,sum(R6) ls5,sum(r7) ls6  from dbo.bfgzrb'
  else if se1='2' then
   ADODataSet2.CommandText:='select sum(R1) ls1,sum(r2) ls2,sum(R3) ls3,sum(r4) ls4,sum(R6) ls5,sum(r7) ls6 from dbo.bfgzrb where sj>='+#39+d+#39+' and sj<='+#39+d1+#39+ksls;
  ADODataSet2.Open;
  if se1='2' then
  begin
   if ksls='' then
   begin
    statusbar1.Panels[2].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls1').asinteger));
    statusbar1.Panels[4].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls2').asinteger));
    statusbar1.Panels[6].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls3').asinteger));
    statusbar1.Panels[8].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls4').asinteger));
    statusbar1.Panels[10].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls5').asinteger));
    statusbar1.Panels[12].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls6').asinteger));
    ADODataSet2.Close;
    ADODataSet2.CommandText:='select sum(r1) ls1 from dbo.bfgzrb where sj='+''''+d+'''';
    ADODataSet2.Open;
    statusbar1.Panels[2].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls1').asinteger));
    ADODataSet2.Close;
    ADODataSet2.CommandText:='select sum(r7) ls2 from dbo.bfgzrb where sj='+''''+d1+'''';
    ADODataSet2.Open;
    statusbar1.Panels[12].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls2').asinteger));
   end
   else
   begin
    ADODataSet1.First;
    statusbar1.Panels[2].Text:=trim(inttostr(ADODataSet1.Fieldbyname('R1').asinteger));
    ADODataSet1.Last;
    statusbar1.Panels[12].Text:=trim(inttostr(ADODataSet1.Fieldbyname('R7').asinteger));
    statusbar1.Panels[4].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls2').asinteger));
    statusbar1.Panels[6].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls3').asinteger));
    statusbar1.Panels[8].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls4').asinteger));
    statusbar1.Panels[10].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls5').asinteger));
   end;
  end
  else if se1='1' then
  begin
   statusbar1.Panels[4].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls2').asinteger));
   statusbar1.Panels[6].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls3').asinteger));
   statusbar1.Panels[8].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls4').asinteger));
   statusbar1.Panels[10].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls5').asinteger));
   ADODataSet2.Close;
   ADODataSet2.CommandText:='select sum(r1) ls1 from dbo.bfgzrb where sj=(Select min(sj) from dbo.bfgzrb)';
   ADODataSet2.Open;
   statusbar1.Panels[2].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls1').asinteger));
   ADODataSet2.Close;
   ADODataSet2.CommandText:='select sum(r7) ls2 from dbo.bfgzrb where sj=(select max(sj) from dbo.bfgzrb)';
   ADODataSet2.Open;
   statusbar1.Panels[12].Text:=trim(inttostr(ADODataSet2.Fieldbyname('ls2').asinteger));
  end;
  ADODataSet2.Close;
  E1.Enabled:=true;
  R1.Enabled:=true;
  S1.Enabled:=true;
  ToolButton3.Enabled:=true;
  ToolButton7.Enabled:=true;
  ToolButton10.Enabled:=true;
  ToolButton11.Enabled:=true;
  ToolButton12.Enabled:=true;
  ToolButton13.Enabled:=true;
  ToolButton16.Enabled:=true;
 end;
 IF CZYQX>'1' THEN
 begin
  E1.Enabled:=false;
  ToolButton7.Enabled:=false;
 end;
 if ADODataSet1.recordcount=0 then
   p1.Enabled:=false
 else
   p1.Enabled:=true;  
end;

procedure Tbfbbsjkc.S1Click(Sender: TObject);
var ls,ls1:integer;ks1:string;
begin
 if bfsjjcc=nil then
  Application.CreateForm(Tbfsjjcc, bfsjjcc);
 ls:=0;
 bfsjjcc.Memo1.Lines.Clear;
 ADODataSet1.First;
 while not ADODataSet1.Eof do
 begin
  ls1:=ADODataSet1.fieldbyname('r7').asinteger;
  ks1:=ADODataSet1.fieldbyname('kb').asstring;
  if ADODataSet1.fieldbyname('r1').asinteger+ADODataSet1.fieldbyname('r2').asinteger+ADODataSet1.fieldbyname('r3').asinteger<>ADODataSet1.fieldbyname('r4').asinteger+ADODataSet1.fieldbyname('r6').asinteger+ADODataSet1.fieldbyname('r7').asinteger then
  begin
   ls:=ls+1;
   bfsjjcc.Memo1.Lines.Add(trim(inttostr(ls))+'：'+ADODataSet1.fieldbyname('kb').asstring+'.'+ADODataSet1.fieldbyname('ks').asstring+'    '+datetostr(ADODataSet1.fieldbyname('sj').asdatetime)+'  数据不平衡');
  end;
  if ADODataSet1.fieldbyname('r4').asinteger<ADODataSet1.fieldbyname('r5').asinteger then
  begin
   ls:=ls+1;
   bfsjjcc.Memo1.Lines.Add(trim(inttostr(ls))+'：'+ADODataSet1.fieldbyname('kb').asstring+'.'+ADODataSet1.fieldbyname('ks').asstring+'    '+datetostr(ADODataSet1.fieldbyname('sj').asdatetime)+'  死亡人数 > 出院人数');
  end;
  ADODataSet1.next;
  if (ls1<>ADODataSet1.fieldbyname('r1').asinteger) and (not ADODataSet1.eof) and (ks1=ADODataSet1.fieldbyname('kb').asstring) then
  begin
   ls:=ls+1;
   bfsjjcc.Memo1.Lines.Add(trim(inttostr(ls))+'：'+ADODataSet1.fieldbyname('kb').asstring+'.'+ADODataSet1.fieldbyname('ks').asstring+'    '+datetostr(ADODataSet1.fieldbyname('sj').asdatetime)+'  的昨日留院人数不正确');
  end;
 end;
 if bfsjjcc.Memo1.Lines.Count<>0 then
  bfsjjcc.ShowModal
 else
 begin
  bfsjjcc.FreeOnRelease;
  bfsjjcc.Release;
  bfsjjcc:=nil;
 end;
end;

procedure Tbfbbsjkc.E105Click(Sender: TObject);
begin
 se1:='3';
 if bfsjopenc=nil then
 begin
  Application.CreateForm(Tbfsjopenc,bfsjopenc);
  bfsjopenc.showmodal;
 end
 else
  bfsjopenc.showmodal;
end;

procedure Tbfbbsjkc.F102Click(Sender: TObject);
begin
 se1:='2';
 if bfsjopenc=nil then
 begin
  Application.CreateForm(Tbfsjopenc,bfsjopenc);
  bfsjopenc.showmodal;
 end
 else
  bfsjopenc.showmodal;
end;

procedure Tbfbbsjkc.P1Click(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure Tbfbbsjkc.ADODataSet1AfterClose(DataSet: TDataSet);
begin
  p1.enabled:=false;
end;

procedure Tbfbbsjkc.E106Click(Sender: TObject);
var ls1,dqwz:integer;ks1:string;
begin
  dqwz:=ADODataSet1.recno;
  ls1:=0;
  if dqwz>0 then dqwz:=dqwz-1;
  ks1:=trim(ADODataSet1.fieldbyname('kb').asstring);
  ls1:=ADODataSet1.fieldbyname('r1').asinteger+ADODataSet1.fieldbyname('r2').asinteger+ADODataSet1.fieldbyname('r3').asinteger-ADODataSet1.fieldbyname('r4').asinteger-ADODataSet1.fieldbyname('r6').asinteger;
  ADODataSet1.Edit;
  ADODataSet1['r7']:=ls1;
  ADODataSet1.Post;
  ADODataSet1.Next;
  while not ADODataSet1.Eof do
  begin
    if trim(ADODataSet1.fieldbyname('kb').asstring)=ks1 then
    begin
      ADODataSet1.Edit;
      ADODataSet1['r1']:=ls1;
      ADODataSet1['r7']:=ls1+ADODataSet1.fieldbyname('r2').asinteger+ADODataSet1.fieldbyname('r3').asinteger-ADODataSet1.fieldbyname('r4').asinteger-ADODataSet1.fieldbyname('r6').asinteger;
      ADODataSet1.Post;
    end;
    ls1:=ADODataSet1.fieldbyname('r7').asinteger;
    ADODataSet1.Next;
  end;
  ADODataSet1.First;
  ADODataSet1.MoveBy(dqwz);
end;

procedure Tbfbbsjkc.E107Click(Sender: TObject);
begin
 if bfkscwxgc=nil then
 begin
  Application.CreateForm(Tbfkscwxgc,bfkscwxgc);
  bfkscwxgc.showmodal;
 end
 else
  bfkscwxgc.showmodal;
end;

end.
