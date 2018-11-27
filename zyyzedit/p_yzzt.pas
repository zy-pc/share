unit p_yzzt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  DBGridEh, GridsEh, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxCheckBox, Menus, cxLookAndFeelPainters, cxButtons;

type
  TFrm_yzzt = class(TForm)
    Qry_zt: TADOQuery;
    DS_zt: TDataSource;
    Splitter1: TSplitter;
    Qry_ztmx: TADOQuery;
    ds_ztmx: TDataSource;
    Panel3: TPanel;
    gvyzlist: TcxGridDBTableView;
    gcyzlistLevel1: TcxGridLevel;
    gcyzlist: TcxGrid;
    gvyzlistztid: TcxGridDBColumn;
    gvyzlistbqdm: TcxGridDBColumn;
    gvyzlistksdm: TcxGridDBColumn;
    gvyzlistysdm: TcxGridDBColumn;
    gvyzlistztmc: TcxGridDBColumn;
    gvyzlistColumn1: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    gcdetail: TcxGrid;
    gvdetail: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gvdetailColumn1: TcxGridDBColumn;
    gvdetailColumn2: TcxGridDBColumn;
    gvdetailColumn3: TcxGridDBColumn;
    gvdetailColumn4: TcxGridDBColumn;
    StylesDetail: TcxGridTableViewStyleSheet;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    GridTableViewStyleSheetMarinehighcolor: TcxGridTableViewStyleSheet;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    gvyzlistColumn2: TcxGridDBColumn;
    gvyzlistColumn3: TcxGridDBColumn;
    cmdpub: TADOCommand;
    gvyzlistColumn4: TcxGridDBColumn;
    gvyzlistColumn5: TcxGridDBColumn;
    gvdetailColumn5: TcxGridDBColumn;
    btChange: TcxButton;
    btDelete: TcxButton;
    btDetailDel: TcxButton;
    bt_zt: TcxButton;
    btExit: TcxButton;
    sp_yzmbdr: TADOStoredProc;
    qry_cx: TADOQuery;
    sp_yzmbdr_xse: TADOStoredProc;
    qry_t: TADOQuery;
    gxbzColumn6: TcxGridDBColumn;
    btn_NotSelectALL: TButton;
    btn_SelectALL: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bt_ztClick(Sender: TObject);
    procedure DS_ztDataChange(Sender: TObject; Field: TField);
    procedure Qry_ztAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btChangeClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btDetailDelClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure gvyzlistCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btn_NotSelectALLClick(Sender: TObject);
    procedure btn_SelectALLClick(Sender: TObject);
  private
    InEditMode: Boolean; //�Ƿ��ڱ༭ģʽ
    MyRecNo: Integer; //����༭ģʽ�ļ�¼��
    function isThatMyRecord: Boolean;
    function checkty(ztid: string): string;
    { Private declarations }
  public
    myztid: Integer;
    brfylb,tmh,zyh,xyfdm,zyfdm,dymk,mbzt,xsexh:string;//����ģ��mz-�������;zy-סԺ����

    { Public declarations }
  end;

var
  Frm_yzzt: TFrm_yzzt;

implementation

uses  p_dm, p_func;

{$R *.dfm}

procedure TFrm_yzzt.FormCreate(Sender: TObject);
begin
  InEditMode := False;
  MyRecNo := -1;
end;

procedure TFrm_yzzt.FormShow(Sender: TObject);
begin
//  qry_zt.Close;
//  qry_zt.SQL.Clear;
//  Qry_zt.SQl.Add('Select distinct * from zybl_ztdm Where ('+dymk+'bz=1' +' And czy=''' + pub_czydm + ''') OR ('+dymk+'bz=1 AND mblb='+#39+'����ģ��'+#39+' And ksdm='+#39+pub_ksdm+#39+')');
//  Qry_zt.SQl.Add(' order by ztID');
  if pub_yydm='0182' then
  begin
    gvyzlistColumn5.GroupIndex := 1;
    gvyzlist.OptionsView.GroupByBox := True;
  end;
  qry_zt.Close;
  qry_zt.SQL.Clear;
  Qry_zt.SQl.Text := 'exec zybl_cx_ztdm '''+dymk+''','''+pub_czydm+''','''+pub_ksdm+'''  ';
  Qry_zt.Open;
  gvyzlist.DataController.Groups.FullExpand;
end;

procedure TFrm_yzzt.gvyzlistCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if not InEditMode then
  begin
    Exit;
  end;
  
  if not isThatMyRecord then
  begin
    gvyzlist.DataController.FocusedRowIndex := MyRecNo;
  end
  else
  begin
    MyRecNo := gvyzlist.DataController.FocusedRowIndex;
  end;
end;

procedure TFrm_yzzt.Qry_ztAfterScroll(DataSet: TDataSet);
begin
  myztid := Qry_zt.FieldByName('ztid').AsInteger;
  if Qry_zt.IsEmpty then
    Qry_ztmx.close
  else
  begin
    Qry_ztmx.close;
    Qry_ztmx.Parameters.ParamByName('ztid').Value := myztid;
    Qry_ztmx.open;
  end;
  gvdetail.DataController.Groups.FullExpand;
end;

procedure TFrm_yzzt.DS_ztDataChange(Sender: TObject; Field: TField);
begin
  myztid := Qry_zt.FieldByName('ztid').AsInteger;
end;

procedure TFrm_yzzt.btChangeClick(Sender: TObject);
begin
  if btchange.Caption='�޸�ģ��(&C)' then
  begin
    if not isThatMyRecord then
    begin
      Application.MessageBox('���ܸĶ�����ҽ��������ģ��!', '��ʾ', MB_OK +
        MB_ICONINFORMATION);
      exit;
    end;

    InEditMode := True;
    MyRecNo := gvyzlist.DataController.FocusedRowIndex;
    gvyzlist.OptionsSelection.CellSelect:=true;
    btchange.Caption:='�����޸�(&S)';
    btdelete.Caption:='�����޸�(&C)';
    gcyzlist.SetFocus;
    gvyzlistztmc.Focused:=true;
  end
  else
  begin
    btchange.Caption:='�޸�ģ��(&C)';
    btdelete.Caption:='ɾ��ģ��(&D)';
    gvyzlist.OptionsSelection.CellSelect:=false;
    if qry_zt.Modified then
    begin
      qry_zt.Post;
      qry_zt.UpdateBatch();
    end;
    InEditMode := False;
    MyRecNo := -1;
  end;
end;

function TFrm_yzzt.isThatMyRecord;
begin
  Result := (pub_czydm = Trim(Qry_zt.fieldbyname('ysdm').asstring))
            or (pub_czyxm = Trim(Qry_zt.fieldbyname('ysdm').asstring));
end;

procedure TFrm_yzzt.btDeleteClick(Sender: TObject);
begin
  if btdelete.Caption='ɾ��ģ��(&D)' then
  begin
    if not isThatMyRecord then
    begin
      Application.MessageBox('����ɾ������ҽ��������ģ��!', '��ʾ', MB_OK + 
        MB_ICONINFORMATION);
      exit;  
    end;
    
    if application.MessageBox('���Ҫɾ����ҽ��ģ����', '��Ϣ��ʾ', 4 + 32) = 6 then
    begin
      dm_data.ado_mydata.BeginTrans;
      try
        cmdpub.CommandText:='delete from zybl_ztmx where ztid='+qry_zt.FieldByName('ztid').AsString;
        cmdpub.Execute;
        cmdpub.CommandText:='delete from zybl_ztdm where ztid='+qry_zt.FieldByName('ztid').AsString;
        cmdpub.Execute;
        qry_zt.Edit;
        qry_zt.Delete;
        //qry_zt.Post;
        //qry_zt.UpdateBatch(arall);
        dm_data.ado_mydata.CommitTrans;
      except
        dm_data.ado_mydata.RollbackTrans;
        application.MessageBox('����ʧ��', '��ʾ', 0 + 16);
      end;
    end;
    btchange.Caption:='�޸�ģ��(&C)';
    btdelete.Caption:='ɾ��ģ��(&D)';
  end
  else begin
   qry_zt.CancelUpdates;
   gvyzlist.OptionsSelection.CellSelect:=false;
   btchange.Caption:='�޸�ģ��(&C)';
   btdelete.Caption:='ɾ��ģ��(&D)';
   InEditMode := False;
   //qry_zt.Requery();
  end;
end;

procedure TFrm_yzzt.btDetailDelClick(Sender: TObject);
begin
  if not isThatMyRecord then
  begin
    Application.MessageBox('����ɾ������ҽ��������ģ����ϸ!', '��ʾ', MB_OK +
      MB_ICONINFORMATION);
    exit;
  end;

  if qry_ztmx.RecordCount<=0 then
    exit;

  if application.MessageBox('ɾ�����ָܻ�,���Ҫɾ����ҽ��ģ����ϸ��', '��Ϣ��ʾ', 4 + 32) = 6 then
  begin
    qry_ztmx.Edit;
    qry_ztmx.Delete;
    qry_ztmx.UpdateBatch();
  end;
end;

procedure TFrm_yzzt.btExitClick(Sender: TObject);
begin
close;
end;

{-------------------------------------------------------------------------------
  ������:    TFrm_yzzt.btn1Click
  ����:      yangshuai
  ����:      2017.03.09
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure TFrm_yzzt.btn_NotSelectALLClick(Sender: TObject);
begin
  Qry_ztmx.First;
  while not Qry_ztmx.Eof do
  begin
    Qry_ztmx.Edit;
    if Qry_ztmx.FieldByName('gxbz').AsInteger = 1 then
    begin
      Qry_ztmx['gxbz'] := 0;
    end else
    begin
      Qry_ztmx['gxbz'] := 1;
    end;
    Qry_ztmx.Post;
    Qry_ztmx.Next;
  end;
  Qry_ztmx.UpdateBatch();
end;

{-------------------------------------------------------------------------------
  ������:    TFrm_yzzt.btn2Click
  ����:      yangshuai
  ����:      2017.03.09
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure TFrm_yzzt.btn_SelectALLClick(Sender: TObject);
begin
Qry_ztmx.First;
while not Qry_ztmx.Eof do
begin
  Qry_ztmx.Edit;
  if Qry_ztmx.FieldByName('gxbz').AsInteger = 0 then
  begin
    Qry_ztmx['gxbz'] := 1;
  end;
  Qry_ztmx.Post;
  Qry_ztmx.Next;
end;
Qry_ztmx.UpdateBatch();
end;

{-------------------------------------------------------------------------------
  ������:    TFrm_yzzt.checkty
  ����:      yansghuai
  ����:      2015.12.24
  ����:      ztid: string
  ����ֵ:    string
-------------------------------------------------------------------------------}
function TFrm_yzzt.checkty(ztid: string): string;
begin
  result := '';
  qry_t.Close;
  qry_t.SQL.Text := 'select a.xmdm,a.xmmc from zybl_ztmx a,sys_yzxm b where a.xmdm=b.xmdm and (qybz=0 or zybz=0)  and a.ztid=' + #39 + ztid + #39 +
    'union all select a.xmdm,a.xmmc from zybl_ztmx a,sys_ypdm b where a.xmdm=b.ypdm and sybz=0 and a.ztid=' + #39 + ztid + #39;
  qry_t.Open;
  if qry_t.RecordCount = 0 then
  begin
    result := ''
  end
  else
  begin
    qry_t.First;
    while not qry_t.Eof do
    begin
      result := result + Trim(qry_t.FieldByName('xmmc').AsString) + ';';
      qry_t.Next;
    end;
  end;
end;




{-------------------------------------------------------------------------------
  ������:    TFrm_yzzt.bt_ztClick
  ����:      yansghuai
  ����:      2015.12.24
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure TFrm_yzzt.bt_ztClick(Sender: TObject);
var
fzbh:string;
rs,ztid:string;
tyyps:string;
begin
  tyyps:='';
  if qry_zt.RecordCount=0 then
         abort;
  ztid:=Trim(qry_zt.FieldByName('ztid').AsString);
  rs:=checkty(ztid);  //��Ŀͣ�ü��
  if rs<>'' then
  begin
     Application.MessageBox(pchar('��Ŀ����:'+'('+rs+')'+',����Ŀ�Ѿ�ͣ��,��ע��!'), '������ʾ', 16);
     Exit;
  end;
  try
    if Qry_ztmx.Modified then
    begin
      Qry_ztmx.Post;
      Qry_ztmx.UpdateBatch();
    end;
    if mbzt='xse' then
    begin
      sp_yzmbdr_xse.Close;
      sp_yzmbdr_xse.Parameters.Refresh;
      sp_yzmbdr_xse.Parameters.ParamByName('@tmh').Value := Trim(tmh);
      sp_yzmbdr_xse.Parameters.ParamByName('@zyh').Value := Trim(zyh);
      sp_yzmbdr_xse.Parameters.ParamByName('@mbh').Value := qry_zt.FieldValues['ztid'];
      sp_yzmbdr_xse.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
      sp_yzmbdr_xse.Parameters.ParamByName('@xyfksdm').Value := pub_zyxyfdm;
      sp_yzmbdr_xse.Parameters.ParamByName('@zyfksdm').Value := pub_zyzyfdm;
      sp_yzmbdr_xse.Parameters.ParamByName('@kdys').Value := pub_czydm;
      sp_yzmbdr_xse.Parameters.ParamByName('@dybz').Value := dymk;
      sp_yzmbdr_xse.Parameters.ParamByName('@xsexh').Value := xsexh;
      sp_yzmbdr_xse.Parameters.ParamValues['@brfylb'] := brfylb;//21Ϊ��ɫͨ����ɳ��
      sp_yzmbdr_xse.open;
      if sp_yzmbdr_xse.FieldByName('cwbz').AsInteger = 0 then
      begin
        tyyps:=Trim(sp_yzmbdr_xse.FieldByName('tyyp1').AsString) ;
        Application.MessageBox(PChar(tyyps), 'ϵͳ��ʾ', MB_OK + MB_ICONWARNING);
        Exit;
      end
    end else
    begin
      sp_yzmbdr.Close;
      sp_yzmbdr.Parameters.Refresh;
      sp_yzmbdr.Parameters.ParamByName('@tmh').Value := Trim(tmh);
      sp_yzmbdr.Parameters.ParamByName('@zyh').Value := Trim(zyh);
      sp_yzmbdr.Parameters.ParamByName('@mbh').Value := qry_zt.FieldValues['ztid'];
      sp_yzmbdr.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
      sp_yzmbdr.Parameters.ParamByName('@xyfksdm').Value := xyfdm;
      sp_yzmbdr.Parameters.ParamByName('@zyfksdm').Value := zyfdm;
      sp_yzmbdr.Parameters.ParamByName('@kdys').Value := pub_czydm;
      sp_yzmbdr.Parameters.ParamByName('@dybz').Value := dymk;
      sp_yzmbdr.Parameters.ParamValues['@brfylb'] := brfylb;//21Ϊ��ɫͨ����ɳ��
      sp_yzmbdr.open;
      if sp_yzmbdr.FieldByName('cwbz').AsInteger = 0 then
      begin
        tyyps:=Trim(sp_yzmbdr.FieldByName('tyyp1').AsString) ;
        Application.MessageBox(PChar(tyyps), 'ϵͳ��ʾ', MB_OK + MB_ICONWARNING);
        Exit;
      end
    else
    end;
    qry_cx.Close;
    qry_cx.SQL.text:='select distinct fzph from zybl_zyyz where zyh='+''''+Trim(zyh)+''''+' and rtrim(fzph)<>'''' and zxbz=0';
    qry_cx.open;
    qry_cx.First;
    while not qry_cx.eof do
    begin
      fzbh := get_sjh( pub_czydm );
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text:='update zybl_zyyz set fzph='+''''+fzbh+''''+' where zyh='+''''+Trim(zyh)+''''
                                 +' and fzph='+''''+trim(qry_cx.FieldByName('fzph').asstring)+'''';

      DM_data.qry_pub.ExecSQL;
      qry_cx.Next;
    end;
    Qry_ztmx.Close;
    Qry_ztmx.SQL.Clear;
    Qry_ztmx.SQL.Text:='update zybl_ztmx set gxbz=1 where gxbz=0';
    Qry_ztmx.ExecSQL;
    application.MessageBox('ҽ����Ŀ�������!', '��ʾ', 0 + 48);
    close;
  except
     on e: Exception do
     begin
       application.MessageBox(PChar('ҽ����Ŀ����ʧ��!'+ E.Message), '��ʾ', 0 + 48);
     end;
  end;
end;

procedure TFrm_yzzt.DBGrid1DblClick(Sender: TObject);
begin
  bt_zt.Click;
end;

end.

