unit P_blps_ps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, OleCtrls, EMRPAD30Lib_TLB, Menus, cxControls, cxSplitter;

type
  Tfrm_blps_ps = class(TForm)
    qry_blnr: TADOQuery;
    ds_blnr: TDataSource;
    ds_psbz_xx: TDataSource;
    PageControl1: TPageControl;
    TabSheet_cyxz: TTabSheet;
    ds_cyxz: TDataSource;
    qry_cyxz: TADOQuery;
    qry_psdx_save: TADOQuery;
    qry_psbz_dx: TADOQuery;
    qry_psxx_save: TADOQuery;
    qry_xxsx: TADOQuery;
    sp_saveAll: TADOStoredProc;
    qry_psbz_xx: TADOQuery;
    qry_psbz_xxxh: TIntegerField;
    qry_psbz_xxdm: TIntegerField;
    qry_psbz_xxxxmc: TStringField;
    qry_psbz_xxzfs: TBCDField;
    qry_psbz_xxlb: TStringField;
    qry_psbz_xxxxsx: TStringField;
    qry_psbz_xxxxsxmc: TStringField;
    qry_psbz_xxxzzt: TStringField;
    qry_psbz_xxlxbz: TStringField;
    Panel_cmd: TPanel;
    TabSheet1: TTabSheet;
    ListView_psqk: TListView;
    Panel1: TPanel;
    DBGridEh_cyxz: TDBGridEh;
    GroupBox2: TGroupBox;
    DBGridEh_psxx: TDBGridEh;
    cxSplitter2: TcxSplitter;
    Panel2: TPanel;
    EMRPad301: TEMRPad30;
    BBtn_Next: TBitBtn;
    BBtn_Clear: TBitBtn;
    BBtn_drop: TBitBtn;
    BBtn_tsys: TBitBtn;
    BBtn_Save: TBitBtn;
    BitBtn1: TBitBtn;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qry_zkcx: TADOQuery;
    procedure BBtn_SaveClick(Sender: TObject);
    procedure BBtn_tsysClick(Sender: TObject);
    procedure BBtn_NextClick(Sender: TObject);
    procedure BBtn_dropClick(Sender: TObject);
    procedure DBGridEh_psxxDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh_psxxCellClick(Column: TColumnEh);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BBtn_ClearClick(Sender: TObject);
    procedure DBGridEh_cyxzKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh_cyxzDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    errorxx:string;
    tmh: string;
    Zyh: string; //סԺ��
    Blid: string; //����ID
    Lb: string; //���
    Cyid: Integer; //����ID
    Pszt: Boolean; //����״̬
    Prv_IsPSing: Boolean; //��������״̬
    Prv_YzqxCount: Integer; //����ȱ����
    BlPath: string; //��Ų�����ʱ���·��
    procedure Proc_SetEditor(zt: Integer); //���ñ༭����zt:0.���,1.����;2.�������пؼ�������
    procedure Proc_DrawSheetOfPsqk; //�������������ҳ��
    procedure Proc_GetCyblList; //��ȡ���������б�
    procedure Proc_Change; //�����ı�ѡ��
    procedure Proc_BlSelected; //ѡ����
    procedure Proc_GetPsblImfo; //��ȡ����������Ϣ
    procedure Proc_ClearAllCheck; //�������ѡ��
    procedure Proc_save(fs: Integer); //������ñ������
    procedure jkjc(xh:real;lb,brxb:string);
    function Func_Save(Fs: Integer; var v_ErrorText: string): Boolean; //����;fs: 1,Ԥ�󱣴�;2.���󱣴�
    function Func_SelectedToSave(psfs: Integer): Boolean; //ѡ��������б�
  public
    v_zksm:string;
    { Public declarations }
  end;

var
  frm_blps_ps: Tfrm_blps_ps;

implementation

uses p_dm,p_blps_blcy;

{$R *.dfm}

procedure Tfrm_blps_ps.Proc_SetEditor(zt: Integer);
begin
  if not Panel_cmd.Visible then Exit;
  BBtn_Next.Enabled := (zt = 0);
  BBtn_Clear.Enabled := (zt = 1);
  BBtn_drop.Enabled := (zt = 1);
  BBtn_tsys.Enabled := (zt = 1);
  BBtn_Save.Enabled := (zt = 1);
end;

procedure Tfrm_blps_ps.TabSheet1Enter(Sender: TObject);
begin
  if not qry_psbz_xx.Active then Exit;
  if qry_psbz_xx.RecordCount <= 0 then Exit;
  ListView_psqk.Items.Clear;
  Proc_DrawSheetOfPsqk; //������ʾ��
  ListView_psqk.SetFocus;
end;

procedure Tfrm_blps_ps.Proc_DrawSheetOfPsqk;
var v_RecNo: Integer;
  zf, kf, df: Real; //zf:�ܷ�;kf:�۷�;df:�÷�
begin
  with qry_psbz_xx do
  begin
    DisableControls;
    v_RecNo := RecNo;
    First;

    qry_xxsx.First;
    while not qry_xxsx.Eof do //�����ѡ������
    begin
      Filtered := False;
      Filter := 'xzzt=' + #39 + '��' + #39 + ' and '
        + 'xxsx=' + #39 + qry_xxsx.FieldByName('dm').AsString + #39;
      Filtered := True;
      if RecordCount > 0 then
      begin
        ListView_psqk.Items.Add; //�б�����һ��
        ListView_psqk.Items.Item[ListView_psqk.Items.Count - 1].Caption := qry_xxsx.FieldByName('mc').AsString;
        ListView_psqk.Items.Item[ListView_psqk.Items.Count - 1].SubItems.Add(IntToStr(RecordCount));
      end;
      qry_xxsx.Next;
    end;
    //���ܷ���
    Filtered := False;
    First;
    while not Eof do
    begin
      zf := zf + FieldByName('zfs').AsFloat;
      Next;
    end;

    //��۳��ܷ�
    Filtered := False;
    Filter := 'xzzt=' + #39 + '��' + #39;
    Filtered := True;
    kf := 0;
    First;
    while not Eof do
    begin
      kf := kf + FieldByName('zfs').AsFloat;
      Next;
    end;

    //�ָ�ԭʼ״̬
    Filtered := False;
    RecNo := v_RecNo;
    EnableControls;
    df := zf - kf; //�÷�
    ListView_psqk.Items.Add; //�б��ܷ���ʾ
    ListView_psqk.Items.Item[ListView_psqk.Items.Count - 1].Caption := '�ܷ�';
    ListView_psqk.Items.Item[ListView_psqk.Items.Count - 1].SubItems.Add(FloatToStr(zf));
    ListView_psqk.Items.Add; //�б�۷���ʾ
    ListView_psqk.Items.Item[ListView_psqk.Items.Count - 1].Caption := '�۷�';
    ListView_psqk.Items.Item[ListView_psqk.Items.Count - 1].SubItems.Add(FloatToStr(kf));
    ListView_psqk.Items.Add; //�б�ʵ�ʵõ÷�
    ListView_psqk.Items.Item[ListView_psqk.Items.Count - 1].Caption := 'ʵ�ʵ÷�';
    ListView_psqk.Items.Item[ListView_psqk.Items.Count - 1].SubItems.Add(FloatToStr(df));
  end;
end;

procedure Tfrm_blps_ps.Proc_GetCyblList;
begin
  with qry_cyxz do
  begin
    Close;
    ParaMeters.ParamByName('czydm').Value := pub_czydm;
    Open;
  end;
end;

procedure Tfrm_blps_ps.Proc_Change;
begin
  if Prv_IsPSing then
  begin
    Application.MessageBox('������ʾ:�в�����������,������ɺ���ѡ���Ĳ���!', '������ʾ', 16);
  end
  else
    Proc_BlSelected;
end;

procedure Tfrm_blps_ps.Proc_BlSelected;
begin
  if qry_cyxz.RecordCount <= 0 then exit;

  if qry_cyxz.FieldByName('bz').AsBoolean then
  begin
    Application.MessageBox('������ʾ:�ó����Ѿ��������,���������!', '������ʾ', 16);
    Exit;
  end;

  with qry_cyxz do
  begin
    tmh := FieldByName('tmh').AsString;
    Zyh := FieldByName('zyh').AsString;
    Blid := FieldByName('Blid').AsString;
    Lb := FieldByName('psdm').AsString;
    Cyid := FieldByName('Cyid').AsInteger;
    Pszt := FieldByName('bz').AsBoolean;
  end;

  Proc_GetPsblImfo; //��ȡ����������Ϣ
end;

procedure Tfrm_blps_ps.Proc_GetPsblImfo;
var v_Stream: TADOBlobStream;
  v_FileStream: TFileStream;
begin
  BlPath := GetCurrentDir + '\' + 'etemp';
  with qry_psbz_dx do //��ȡ������Ϣ
  begin
    Close;
    ParaMeters.ParamByName('dm').Value := Lb;
    Open;
  end;

  with qry_psbz_xx do //��ȡϸ����Ϣ
  begin
    Close;
    ParaMeters.ParamByName('zyh').Value := Zyh;
    ParaMeters.ParamByName('blid').Value := Blid;
    ParaMeters.ParamByName('cyid').Value := Cyid;
    ParaMeters.ParamByName('lb1').Value := Lb; //'03';
    ParaMeters.ParamByName('lb2').Value := Lb; //'03';// RecBLSX.Lb;
    Open;
  end;
  with qry_blnr do //��ѯ��������
  begin
    Close;
    ParaMeters.ParamByName('zyh').Value := Zyh;
    ParaMeters.ParamByName('blid').Value := Blid;
    ParaMeters.ParamByName('zyh1').Value := Zyh;
    ParaMeters.ParamByName('blid1').Value := Blid;
    Open;
    if RecordCount <= 0 then
      Application.MessageBox('������ʾ:��������δ�ҵ�!', '������ʾ', 16)
    else
    begin
      try
        v_Stream := TADOBlobStream.Create(qry_blnr.FieldByName('blwj') as TBlobField, bmRead);
        v_Stream.Position := 0;
        try
          v_FileStream := TFileStream.Create(BlPath, fmCreate);
          v_FileStream.Position := 0;
          v_FileStream.CopyFrom(v_Stream, v_Stream.Size);
        finally
          v_FileStream.Free;
        end;
      finally
        v_Stream.Free;
      end;
      EMRPad301.FileOpen(BlPath, 0);
      EMRPad301.SetDocumentMode(2);
      Prv_IsPSing := True; //���ò�������״̬
      Proc_SetEditor(1);
    end;
  end;
  Prv_YzqxCount := 0;
end;

procedure Tfrm_blps_ps.Proc_ClearAllCheck;
var v_RecNo: Integer;
begin
  with qry_psbz_xx do
  begin
    if Active then
      if RecordCount > 0 then
      begin
        DisableControls;
        v_RecNo := RecNo;
        First;
        while not Eof do
        begin
          Edit;
          FieldByName('xzzt').Value := Null;
          Post;
          Next;
        end;
        RecNo := v_RecNo;
        EnableControls;
      end;
  end;
  Prv_YzqxCount := 0;
end;

procedure Tfrm_blps_ps.Proc_save(fs: Integer);
var v_ErrorText: string;
begin
  v_ErrorText := '';
  Proc_SetEditor(2);

  if not Func_SelectedToSave(fs) then //����ѡ��ϸ��
  begin
    Application.MessageBox('������ʾ:����ϸ��������ݿ�ʧ��!', '������ʾ', 16);
    Exit;
  end;

  if not Func_Save(fs, v_ErrorText) then
    Application.MessageBox(PChar('������ʾ:����ԭ��: ' + v_ErrorText + '!'), '������ʾ', 16)
  else
    Application.MessageBox('��ʾ:���ݴ������ݿ�ɹ�!', '��ʾ', MB_ICONINFORMATION);
  Proc_SetEditor(0);
  Prv_IsPSing := False;
end;


function Tfrm_blps_ps.Func_Save(Fs: Integer; var v_ErrorText: string): Boolean;
var ErrorText: string;
begin
  Result := False;

  with sp_saveAll do
  begin
    ParaMeters.ParamByName('@tmh').Value := tmh;
    ParaMeters.ParamByName('@zyh').Value := Zyh;
    ParaMeters.ParamByName('@blid').Value := Blid;
    ParaMeters.ParamByName('@lb').Value := Lb;
    ParaMeters.ParamByName('@cyid').Value := Cyid;
    ParaMeters.ParamByName('@psks').Value := pub_ksdm;
    ParaMeters.ParamByName('@psys').Value := pub_czydm;
    ParaMeters.ParamByName('@psfs').Value := fs;
    ParaMeters.ParamByName('@ErrorText').Value := errorxx;
    ExecProc;
    ErrorText := ParaMeters.ParamByName('@ErrorText').Value;
    Result := (ErrorText = '');
    v_ErrorText := ErrorText;
  end;
  qry_cyxz.Edit;
  qry_cyxz.FieldByName('bz').AsBoolean := Result;
  qry_cyxz.Post;
end;

function Tfrm_blps_ps.Func_SelectedToSave(psfs: Integer): Boolean;
begin
  with qry_psxx_save do
  begin
    Close;
    Open;
    errorxx:='��������:';
    qry_psbz_xx.First;
    while not qry_psbz_xx.Eof do
    begin
      if qry_psbz_xx.FieldByName('xzzt').AsString = '��' then
      begin
        errorxx:= errorxx+ trim(qry_psbz_xx.FieldByName('xxmc').AsString);
        Append;
        Edit;
        FieldByName('tmh').AsString := tmh;
        FieldByName('zyh').AsString := Zyh;
        FieldByName('blid').AsString := Blid;
        FieldByName('cyid').AsInteger := Cyid;
        FieldByName('xh').AsInteger := qry_psbz_xx.FieldByName('xh').AsInteger;
        FieldByName('dm').AsInteger := qry_psbz_xx.FieldByName('dm').AsInteger;
        FieldByName('fs').AsFloat := qry_psbz_xx.FieldByName('zfs').AsFloat;
        FieldByName('lb').AsString := qry_psbz_xx.FieldByName('lb').AsString;
        FieldByName('dj').AsString := qry_psbz_xx.FieldByName('xxsx').AsString;
        FieldByName('psfs').AsInteger := psfs;
        FieldByName('cc').AsString := '��';
        Post;
      end;
      qry_psbz_xx.Next;
    end;
    UpdateBatch(arAll);
  end;
  Result := True;
end;

procedure Tfrm_blps_ps.N1Click(Sender: TObject);
begin
  EMRPad301.EditCopy();
end;

procedure Tfrm_blps_ps.jkjc(xh:real;lb,brxb:string);
const hc=Chr(13)+chr(10);
begin
  qry_zkcx.Close;
  qry_zkcx.SQL.text:='select * from sys_blljkzzb where lb='+''''+lb+''''+' and xh='
  +floattostr(xh);
  qry_zkcx.open;
  if not qry_zkcx.isempty then
  begin
    qry_zkcx.First;
    while not qry_zkcx.eof do
    begin
      if (qry_zkcx.FieldByName('fldm').AsString='01')
        and (qry_zkcx.FieldByName('ljgx').AsString='����A���ܴ���B')  then
      begin
        if (qry_zkcx.FieldByName('Ays').AsString=brxb) and
         (EMRPad301.FindField(trim(qry_zkcx.FieldByName('Bys').AsString)+'%', -1, 1, true)) then
        begin
          v_zksm:=v_zksm+'�Ա� '+ qry_zkcx.FieldByName('Ays').AsString+' ���ܴ��ڲ���Ԫ�� '+trim(qry_zkcx.FieldByName('Bys').AsString);
          v_zksm:=v_zksm+ hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString='02')
        and (qry_zkcx.FieldByName('ljgx').AsString='����A���ܴ���B')  then
      begin
        if (EMRPad301.FindField(trim(qry_zkcx.FieldByName('Ays').AsString)+'%', -1, 1, true)) and
         (EMRPad301.FindField(trim(qry_zkcx.FieldByName('Bys').AsString)+'%', -1, 1, true)) then
        begin
          v_zksm:=v_zksm+'������ڲ���Ԫ�� '+ qry_zkcx.FieldByName('Ays').AsString+' ���ܴ��ڲ���Ԫ�� '+trim(qry_zkcx.FieldByName('Bys').AsString);
          v_zksm:=v_zksm+ hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString='01')
        and (qry_zkcx.FieldByName('ljgx').AsString='����A����Ҳ����B')  then
      begin
        if (qry_zkcx.FieldByName('Ays').AsString=brxb) and
         (not EMRPad301.FindField(trim(qry_zkcx.FieldByName('Bys').AsString)+'%', -1, 1, true)) then
        begin
          v_zksm:=v_zksm+'�Ա�'+ qry_zkcx.FieldByName('Ays').AsString+' �������ڲ���Ԫ�� '+trim(qry_zkcx.FieldByName('Bys').AsString);
          v_zksm:=v_zksm+ hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString='02')
        and (qry_zkcx.FieldByName('ljgx').AsString='����A����Ҳ����B')  then
      begin
        if (EMRPad301.FindField(trim(qry_zkcx.FieldByName('Ays').AsString)+'%', -1, 1, true)) and
         (not EMRPad301.FindField(trim(qry_zkcx.FieldByName('Bys').AsString)+'%', -1, 1, true)) then
        begin
          v_zksm:=v_zksm+'���ڲ���Ԫ��'+ qry_zkcx.FieldByName('Ays').AsString+' �������ڲ���Ԫ�� '+trim(qry_zkcx.FieldByName('Bys').AsString);
          v_zksm:=v_zksm+ hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString='01')
        and (qry_zkcx.FieldByName('ljgx').AsString='A�������')  then
      begin
        if qry_zkcx.FieldByName('Ays').AsString<>brxb then
        begin
          v_zksm:=v_zksm+'�ò����Ա����Ϊ'+ qry_zkcx.FieldByName('Ays').AsString;
          v_zksm:=v_zksm+ hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString='02')
        and (qry_zkcx.FieldByName('ljgx').AsString='A�������')  then
      begin
        if  not EMRPad301.FindField(trim(qry_zkcx.FieldByName('Ays').AsString)+'%', -1, 1, true)  then
        begin
          v_zksm:=v_zksm+'�ò���������ڲ���Ԫ�� '+ qry_zkcx.FieldByName('Ays').AsString;
          v_zksm:=v_zksm+ hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString='01')
        and (qry_zkcx.FieldByName('ljgx').AsString='A���ܴ���')  then
      begin
        if qry_zkcx.FieldByName('Ays').AsString=brxb then
        begin
          v_zksm:=v_zksm+'�ò����Ա���Ϊ'+ qry_zkcx.FieldByName('Ays').AsString;
          v_zksm:=v_zksm+ hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString='02')
        and (qry_zkcx.FieldByName('ljgx').AsString='A���ܴ���')  then
      begin
        if  EMRPad301.FindField(trim(qry_zkcx.FieldByName('Ays').AsString)+'%', -1, 1, true)  then
        begin
          v_zksm:=v_zksm+'�ò������ܴ��ڲ���Ԫ�� '+ qry_zkcx.FieldByName('Ays').AsString;
          v_zksm:=v_zksm+ hc;
        end;
      end;
      qry_zkcx.Next;
    end;

  end;
    






end;

procedure Tfrm_blps_ps.N2Click(Sender: TObject);
var tsxx,mbdm,zklb,lbdm,brxb:string;
    xh:Real;
const hc=Chr(13)+chr(10);
begin
  v_zksm:='';
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from zysf_cydj where zyh='+''''+Zyh+'''';
  DM_data.qry_pub.Open;
  brxb:=DM_data.qry_pub.FieldByName('brxb').AsString;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from zydzbl_zydzblmx where zyh='+''''+Zyh+
  ''''+' and blid='+''''+pub_blid+'''';
  DM_data.qry_pub.Open;
  mbdm:=DM_data.qry_pub.FieldByName('mbdm').AsString;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_dzbl_mbmx where mbdm='+''''+mbdm+'''';
  DM_data.qry_pub.Open;
  zklb:=DM_data.qry_pub.FieldByName('psdm').AsString;
  if zklb='' then
  begin
    zklb:='00';
    xh:=0;
    jkjc(0,'00',brxb);
  end
  else
  begin
    jkjc(0,'00',brxb);
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from zydzbl_psbz_xx where lb='+''''+zklb+''' order by xh';
    DM_data.qry_pub.Open;
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      jkjc(DM_data.qry_pub.FieldByName('xh').AsFloat,zklb,brxb);
      DM_data.qry_pub.Next;
    end;
  end;
  tsxx:=Trim(v_zksm);
  if tsxx=''  then
  begin
    application.messagebox('���߼�����', '��ʾ', mb_ok);
  end
  else
  begin
     application.messagebox(PChar(tsxx), '��ʾ', mb_ok);
  end;
end;

procedure Tfrm_blps_ps.FormShow(Sender: TObject);
begin
  Proc_GetCyblList; //��ȡ�����б�
  Prv_IsPSing := False; //��������ΪFalse
  Prv_YzqxCount := 0; //����ȱ��Ϊ0
  Proc_SetEditor(0); //���ð�Ť״̬
  qry_xxsx.Close; //�ر�ϸ�������б�
  qry_xxsx.Open; //��ȡϸ�������б�
  PageControl1.ActivePage := TabSheet_cyxz; //��Ҫ���ڲ����ؼ����ȱ�����ʾ����ע��

end;

procedure Tfrm_blps_ps.DBGridEh_cyxzDblClick(Sender: TObject);
begin
  Proc_Change;
end;

procedure Tfrm_blps_ps.DBGridEh_cyxzKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then Proc_Change;
end;

procedure Tfrm_blps_ps.BBtn_ClearClick(Sender: TObject);
begin
  Proc_ClearAllCheck;
end;

procedure Tfrm_blps_ps.FormActivate(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction(pub_dzblzcm, '', 98, pub_dzblzch);
end;

procedure Tfrm_blps_ps.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if FileExists(BlPath) then
    DeleteFile(BlPath);
end;

procedure Tfrm_blps_ps.DBGridEh_psxxCellClick(Column: TColumnEh);
begin
  if DBGridEh_psxx.ReadOnly then Exit;
  with Column.Field.DataSet do
    if (Column.FieldName = 'xzzt') and Prv_IsPSing then //���ڽ��������ҵ�����Ϊxzzt
    begin
      Edit;
      if Column.Field.Value = '��' then //ѡ��
      begin
        if FieldByName('lxbz').AsString = '*' then
          Dec(Prv_YzqxCount);
        Column.Field.Value := null
      end
      else //ȡ��ѡ��
      begin
        if FieldByName('lxbz').AsString = '*' then
          Inc(Prv_YzqxCount, 1);
        Column.Field.Value := '��';
      end;
      Post;

      if FieldByName('lxbz').AsString = '+' then //������
        if Application.MessageBox('��ʾ:�Ѿ�ѡ�񡰵������������ؼ��������Ƿ�ȷ��?', '��ʾ', MB_YESNO + MB_ICONQUESTION) = IDYES then
          if Application.MessageBox('��ʾ:ѡ��[��]����"����ʽ"����,��֮��"Ԥ��ʽ"����!', '��ʾ:���淽ʽѡ��', MB_YESNO + MB_ICONQUESTION) = IDYES then
            proc_save(2)
          else
            proc_save(1)
        else
        begin
          Edit;
          Column.Field.Value := Null;
          Post;
        end
      else if FieldByName('lxbz').AsString = '*' then //����ȱ��
        if Prv_YzqxCount >= 3 then
          if Application.MessageBox('��ʾ:�Ѿ�ѡ������ȱ�ݡ��ﵽ������ؼ��������Ƿ�ȷ��?', '��ʾ', MB_YESNO + MB_ICONQUESTION) = IDYES then
            if Application.MessageBox('��ʾ:ѡ��[��]����"����ʽ"����,��֮��"Ԥ��ʽ"����!', '��ʾ:���淽ʽѡ��', MB_YESNO + MB_ICONQUESTION) = IDYES then
              proc_save(2)
            else
              proc_save(1)
          else
          begin
            Edit;
            Column.Field.Value := Null;
            Post;
            Dec(Prv_YzqxCount);
          end
    end;
end;

procedure Tfrm_blps_ps.DBGridEh_psxxDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  with Column.Field do
  begin
    if DataSet.Active then
      if DataSet.RecordCount > 0 then
      begin
        if DataSet.FieldByName('lxbz').AsString = '+' then //����
        begin
          DBGridEh_psxx.Canvas.brush.Color := clred;
          DBGridEh_psxx.Canvas.Font.Color := clblue;
        end
        else if DataSet.FieldByName('lxbz').AsString = '*' then //����
        begin
          DBGridEh_psxx.Canvas.brush.Color := clYellow;
          DBGridEh_psxx.Canvas.Font.Color := clblue;
        end
        else if DataSet.FieldByName('lxbz').AsString = '=' then //һ��
        begin
          DBGridEh_psxx.Canvas.brush.Color := clWindow;
          DBGridEh_psxx.Canvas.Font.Color := clblack;
        end;

        if DataSet.FieldByName('xzzt').AsString = '��' then //ѡ��
        begin
          DBGridEh_psxx.Canvas.brush.Color := $00FFD277;
          DBGridEh_psxx.Canvas.Font.Color := clblue;
        end;
        DBGridEh_psxx.DefaultDrawColumnCell(Rect, DataCol, Column, State); //�ػ�
      end;
  end;
end;

procedure Tfrm_blps_ps.BBtn_dropClick(Sender: TObject);
begin
  Prv_IsPSing := False; //����Ϊ������״̬
  Proc_SetEditor(0); //���ð�Ť
end;

procedure Tfrm_blps_ps.BBtn_NextClick(Sender: TObject);
begin
  if (not Prv_IsPSing) and qry_cyxz.Active then
    if qry_cyxz.RecordCount > 0 then
      if qry_cyxz.RecordCount > qry_cyxz.RecNo then
      begin
        qry_cyxz.Next;
        if qry_cyxz.FieldByName('bz').AsBoolean then
          BBtn_NextClick(Sender);
        Proc_BlSelected
      end
      else
        Application.MessageBox('��ʾ:�Ѿ������һ�ݳ���!', '��ʾ', MB_ICONINFORMATION);
end;

procedure Tfrm_blps_ps.BBtn_tsysClick(Sender: TObject);
begin
  Proc_save(1); //Ԥ��ʽ����
end;

procedure Tfrm_blps_ps.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_blps_ps.Button1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_blps_blcy, frm_blps_blcy);
  try
    frm_blps_blcy.pub_zycy:='CY';
    frm_blps_blcy.DBGrid1.Columns[2].Fieldname:='ksmc';
    frm_blps_blcy.DBGrid1.Columns[2].Title.Caption:='���˿���';
    frm_blps_blcy.DBGrid1.Columns[4].Fieldname:='cyrq';
    frm_blps_blcy.DBGrid1.Columns[4].Title.Caption:='��Ժ����';
    frm_blps_blcy.DBGrid2.Columns[2].Visible:=False;
    frm_blps_blcy.DBGrid2.Columns[3].Visible:=False;
    frm_blps_blcy.ShowModal;
  finally
    frm_blps_blcy.Free;
    qry_cyxz.Close;
    qry_cyxz.Parameters.ParamByName('czydm').Value:=pub_czydm;
    qry_cyxz.Open;
  end;
end;

procedure Tfrm_blps_ps.BBtn_SaveClick(Sender: TObject);
begin
  Proc_save(2); //����ʽ����
end;

end.

