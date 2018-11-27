unit p_in_jyxmjg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, ADODB, DBGridEhGrouping,
  CheckLst, ComCtrls, Menus, RzTreeVw;

type
  Tfrm_in_jyxmjg = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    Button3: TButton;
    Memo1: TMemo;
    DBGridEh1: TDBGridEh;
    sp_cx_dzbljyjg: TADOStoredProc;
    qry_jyxmjg: TADOQuery;
    ds_jyxmjg: TDataSource;
    Button4: TButton;
    mm1: TMainMenu;
    rzchcktr_jyjg: TRzCheckTree;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  v_zyh:string;
  v_lb:string;
    { Public declarations }
  end;

var
  frm_in_jyxmjg: Tfrm_in_jyxmjg;

implementation

uses p_dm,p_func,p_dzbl_main;

{$R *.dfm}

procedure Tfrm_in_jyxmjg.Button1Click(Sender: TObject);
var
 idstr:string ;
 vTemp:string;
 vStrList:TStringList;
 vIndex: Integer;
 vNode: TTreeNode;
begin
  if not qry_jyxmjg.IsEmpty then
  begin
    qry_jyxmjg.First;
    while not qry_jyxmjg.Eof do
    begin
      if qry_jyxmjg.FieldByName('xzbz').AsBoolean=true then
      begin
        idstr:=idstr+ qry_jyxmjg.FieldByName('id').asstring+',';
      end;
      qry_jyxmjg.Next;
    end;
    idstr:=','+idstr;
    sp_cx_dzbljyjg.close;
    sp_cx_dzbljyjg.Parameters.Refresh;
    sp_cx_dzbljyjg.Parameters.ParamByName('@zyh').Value:=pub_zyh;
    sp_cx_dzbljyjg.Parameters.ParamByName('@fs').Value:=v_lb;
    sp_cx_dzbljyjg.Parameters.ParamByName('@id').Value:=idstr;
    sp_cx_dzbljyjg.Open;
    Memo1.Clear;
    rzchcktr_jyjg.Items.Clear;
    if not sp_cx_dzbljyjg.IsEmpty then
    begin
      vNode := nil;
      vStrList:=TStringList.Create;
      try
        sp_cx_dzbljyjg.First;
        while not sp_cx_dzbljyjg.eof  do
        begin
          if pub_yydm='0266' then //广元昭化修改  导入结果 不显示标识 只要对应的项 以及结果
          begin
            Memo1.Text:=Memo1.Text+sp_cx_dzbljyjg.FieldByName('jyxmmc').asstring
            +' ：'+ sp_cx_dzbljyjg.FieldByName('jyjgms').AsString+#13+#10+';';
//            vTemp:= sp_cx_dzbljyjg.FieldByName('jyxmmc').asstring
//            +' ：'+ sp_cx_dzbljyjg.FieldByName('jyjgms').AsString+#13+#10+';';
            vStrList.Clear;
            vStrList:= SplitString(PChar(Trim(sp_cx_dzbljyjg.FieldByName('jyjgms').AsString)),'|');//StringReplace(sp_cx_dzbljyjg.FieldByName('jyjgms').AsString,'#13#10','|',[rfReplaceAll]); //sp_cx_dzbljyjg.FieldByName('jyjgms').AsString;
            vNode:= rzchcktr_jyjg.items.Add(vNode, sp_cx_dzbljyjg.FieldByName('jyxmmc').asstring+' 检验结果:');
            for vIndex := 0 to vStrList.Count - 1 do
            begin
              if vIndex<>0 then
              begin
                 rzchcktr_jyjg.items.AddChild(vNode, vStrList[vIndex]);
              end;
            end;
            //vNode.Selected:=True;
            sp_cx_dzbljyjg.Next;
          end else
          begin
            Memo1.Text:=Memo1.Text+ '检验项目：'+sp_cx_dzbljyjg.FieldByName('jyxmmc').asstring
            +'结果如下：'+ sp_cx_dzbljyjg.FieldByName('jyjgms').AsString+#13+#10;
            sp_cx_dzbljyjg.Next;
          end;
        end;
      finally
        vStrList.Free
      end;
     // rzchcktr_jyjg.FullExpand;
      //默认全选
      for vIndex := 0 to rzchcktr_jyjg.Items.Count - 1 do
      begin
         rzchcktr_jyjg.Items.Item[vIndex].StateIndex := Ord(cbChecked) + 1;
      end;
    end;
  end
  else
  begin
    Application.MessageBox('此病人无检验项目或者还没有检验项目出结果。',
      '提示', MB_OK + MB_ICONINFORMATION);
  end;

end;



procedure Tfrm_in_jyxmjg.Button2Click(Sender: TObject);
var idstr:string ;
   vTemp:string;
   vStrList:TStringList;
   vIndex: Integer;
   vNode: TTreeNode;
begin
  if not qry_jyxmjg.IsEmpty then
  begin
    vNode := nil;
    vStrList:=TStringList.Create;
    qry_jyxmjg.First;
    while not qry_jyxmjg.Eof do
    begin
      if qry_jyxmjg.FieldByName('xzbz').AsBoolean=true then
      begin
        idstr:=idstr+ qry_jyxmjg.FieldByName('id').asstring+',';
      end;
      qry_jyxmjg.Next;
    end;
    idstr:=','+idstr;
    sp_cx_dzbljyjg.close;
    sp_cx_dzbljyjg.Parameters.Refresh;
    sp_cx_dzbljyjg.Parameters.ParamByName('@zyh').Value:=pub_zyh;
    sp_cx_dzbljyjg.Parameters.ParamByName('@fs').Value:=v_lb;
    sp_cx_dzbljyjg.Parameters.ParamByName('@id').Value:=idstr;
    sp_cx_dzbljyjg.Open;
    Memo1.Clear;
    if not sp_cx_dzbljyjg.IsEmpty then
    begin
      sp_cx_dzbljyjg.First;
      while not sp_cx_dzbljyjg.eof  do
      begin
        if trim(sp_cx_dzbljyjg.FieldByName('fzcjgms').asstring)<>'' then
        begin
          if pub_yydm='0266' then //广元昭化修改  导入结果 不显示标识 只要对应的项 以及结果
          begin
            Memo1.Text:=Memo1.Text+sp_cx_dzbljyjg.FieldByName('jyxmmc').asstring
            +' ：'+ sp_cx_dzbljyjg.FieldByName('fzcjgms').AsString+#13+#10+';';
            vStrList.Clear;
            vStrList:= SplitString(PChar(Trim(sp_cx_dzbljyjg.FieldByName('jyjgms').AsString)),'|');//StringReplace(sp_cx_dzbljyjg.FieldByName('jyjgms').AsString,'#13#10','|',[rfReplaceAll]); //sp_cx_dzbljyjg.FieldByName('jyjgms').AsString;
            vNode:= rzchcktr_jyjg.items.Add(vNode, sp_cx_dzbljyjg.FieldByName('jyxmmc').asstring+' 检验结果:');
            for vIndex := 0 to vStrList.Count - 1 do
            begin
              if vIndex<>0 then
              begin
                 rzchcktr_jyjg.items.AddChild(vNode, vStrList[vIndex]);
              end;
            end;

          end else
          begin
            Memo1.Text:=Memo1.Text+ '检验项目：'+sp_cx_dzbljyjg.FieldByName('jyxmmc').asstring
            +'有问题结果如下：'+ sp_cx_dzbljyjg.FieldByName('fzcjgms').AsString+#13+#10;
          end;
        end;
        sp_cx_dzbljyjg.Next;
      end;
    end;
  end
  else
  begin
    Application.MessageBox('此病人无检验项目或者还没有检验项目出结果。',
      '提示', MB_OK + MB_ICONINFORMATION);
  end;

end;

procedure Tfrm_in_jyxmjg.Button3Click(Sender: TObject);
var
  vIndex, vCount:Integer;
  vTemp:string;
begin
  if  (pub_yydm<>'0266') and (pub_yydm<>'0271')  then
  begin
    Frm_dzbl_main.jyxmdrnr:=StringReplace(copy(StringReplace(Memo1.Text,chr(13)+chr(10),',', [rfReplaceAll]),0,length(StringReplace(Memo1.Text,chr(13)+chr(10),',', [rfReplaceAll]))-2),',;',chr(13)+chr(10), [rfReplaceAll]);
  end else
  begin
    if (pub_yydm='0266') then
    begin
      vCount := rzchcktr_jyjg.Items.Count;
      vTemp:='';
      for vIndex := 0 to vCount - 1 do
      begin
        if TCheckBoxState(rzchcktr_jyjg.Items.Item[vIndex].StateIndex - 1)
          in [cbChecked,cbGrayed] then
        begin
          if rzchcktr_jyjg.Items.Item[vIndex].StateIndex - 1 = Ord(cbChecked) then
          begin
//            vTemp:= vTemp + rzchcktr_jyjg.Items.Item[vIndex].Text+#13+#10+';';
            vTemp:= vTemp + rzchcktr_jyjg.Items.Item[vIndex].Text+'; ';
          end else if rzchcktr_jyjg.Items.Item[vIndex].Level = 0 then
          begin
             vTemp:= vTemp + rzchcktr_jyjg.Items.Item[vIndex].Text+#13+#10;
          end;
        end;
      end;
     Frm_dzbl_main.jyxmdrnr:= vTemp;
    end else
    begin
      Frm_dzbl_main.jyxmdrnr:=Memo1.Text;
    end;
  end;
  close;
end;

procedure Tfrm_in_jyxmjg.Button4Click(Sender: TObject);
begin
  Frm_dzbl_main.jyxmdrnr:='';
  close;
end;

procedure Tfrm_in_jyxmjg.FormCreate(Sender: TObject);
begin
//SetWindowLong(sfxm1.Handle, GWL_STYLE, GetWindowLong(sfxm1.Handle, GWL_STYLE) or $00000100);
end;

procedure Tfrm_in_jyxmjg.FormShow(Sender: TObject);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb'') is not null drop table #lsb';
  DM_data.qry_pub.ExecSQL;
  Memo1.Clear;
  if v_lb='1' then  //检验
  begin
    qry_jyxmjg.close;
    if pub_yydm='0266' then //广元昭化人民医院 a.id=b.fyid不对应修改
    begin
      qry_jyxmjg.sql.Text:='select distinct convert(bit,0) xzbz,b.fyid as id,a.xmmc,a.kdrq into #lsb'+
      ' from zybl_zyyz a,dzbl_cyjl_zy b,dzbl_jyjg_pt c where '+
      ' a.zyh='+''''+v_zyh+''''+' and lb=''检验'' and  a.zyh=b.zyh and a.tmh=b.tmh and a.xmdm=b.jyxmdm and b.jyfzbh=c.barcode order by a.kdrq desc'+
      ' select * from #lsb order by kdrq desc';
    end else
    begin
      qry_jyxmjg.sql.Text:='select distinct convert(bit,0) xzbz,a.id,a.xmmc,a.kdrq into #lsb'+
      ' from zybl_zyyz a,dzbl_cyjl_zy b,dzbl_jyjg_pt c where '+
      ' a.zyh='+''''+v_zyh+''''+' and lb=''检验'' and a.id=b.fyid and b.jyfzbh=c.barcode order by a.kdrq desc'+
      ' select * from #lsb order by kdrq desc';
    end;
    qry_jyxmjg.Open;
  end else if v_lb='2' then  //检查
  begin
    qry_jyxmjg.close;
    qry_jyxmjg.sql.Text:='select distinct convert(bit,0) xzbz,a.id,a.xmmc,a.kdrq into #lsb'+
    ' from zybl_zyyz a,dzbl_cyjl_zy b,dzbl_jyjg_pt c where '+
    ' a.zyh='+''''+v_zyh+''''+' and lb=''检查'' and a.id=b.fyid and b.jyfzbh=c.barcode order by a.kdrq desc'+
    ' select * from #lsb order by kdrq desc';
    qry_jyxmjg.Open;
  end
  else
  begin
    Button2.Visible:=False;
    qry_jyxmjg.close;
    qry_jyxmjg.sql.Text:='select distinct convert(bit,0) xzbz,a.id,a.xmmc,a.kdrq into #lsb'+
    ' from zybl_zyyz a,dzbl_cyjl_zy b,dzbl_jyjg_wsw c where '+
    ' a.zyh='+''''+v_zyh+''''+' and lb=''检验'' and a.id=b.fyid and b.jyfzbh=c.barcode order by a.kdrq desc'+
    ' select * from #lsb order by kdrq desc';
    qry_jyxmjg.Open;
  end;
  if pub_yydm='0266' then  //广元昭化人民医院
  begin
    rzchcktr_jyjg.Visible:=True;
  end else
  begin
    rzchcktr_jyjg.Visible:=False;
  end;
end;

end.
