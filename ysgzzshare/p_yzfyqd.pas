unit p_yzfyqd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, ADODB, GridsEh, DBGridEh,
  Buttons, RzButton, RzRadChk, RzPanel, DBGridEhGrouping;

type
  Tfrm_yzfyqd = class( TForm )
    sp_fyxx: TADOStoredProc;
    ds_fyxx: TDataSource;
    Panel7: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    sp_yzjf: TADOStoredProc;
    Button1: TButton;
    Edit1: TEdit;
    Label4: TLabel;
    Button2: TButton;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    qry_ypgg: TADOQuery;
    Label8: TLabel;
    ComboBox2: TComboBox;
    qry_cx: TADOQuery;
    qry_yfcx: TADOQuery;
    qry_fyxx: TADOQuery;
    qry_fyxxlb: TStringField;
    qry_fyxxszxz: TBooleanField;
    qry_fyxxxmdm: TStringField;
    qry_fyxxxmmc: TStringField;
    qry_fyxxdw: TStringField;
    qry_fyxxsl: TBCDField;
    qry_fyxxdj: TBCDField;
    qry_fyxxczks: TStringField;
    qry_fyxxksmc: TStringField;
    qry_fyxxzyh: TStringField;
    qry_fyxxzt: TStringField;
    qry_fyxxid1: TIntegerField;
    qry_fyxxbz: TStringField;
    qry_fyxxzhsfsj: TDateTimeField;
    qry_fyxxyf: TStringField;
    qry_fyxxyl: TStringField;
    qry_fyxxyldw: TStringField;
    qry_fyxxyytj: TStringField;
    qry_fyxxfyje1: TBCDField;
    ComboBox3: TComboBox;
    Label9: TLabel;
    Button3: TButton;
    qry_fyxxypgg: TStringField;
    qry_cx_kdys: TADOQuery;
    sp_yzjf_zbsj: TADOStoredProc;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    ds_fymx: TDataSource;
    qry_fymx: TADOQuery;
    qry_cfmx: TADOQuery;
    ds_cfmx: TDataSource;
    ds_cx_bdfy: TDataSource;
    sp_cx_bdfy: TADOStoredProc;
    Label10: TLabel;
    sp_in_bdfymx: TADOStoredProc;
    ds_cx_dbfy1: TDataSource;
    sp_cx_bdfy1: TADOStoredProc;
    Button6: TButton;
    Panel4: TPanel;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    qry_brjbxx_1: TADOQuery;
    ds_brjbxx: TDataSource;
    qry_fyxxyzsx: TStringField;
    rzgrpbxLongShort: TRzGroupBox;
    ckbxLongTime: TRzCheckBox;
    ckbxShortTime: TRzCheckBox;
    qry_fyxxyzsx13: TStringField;
    qry_fyxxtzrq: TDateTimeField;
    qry1: TADOQuery;
    qry_fyxxph: TStringField;
    qry_fyxxsrsl: TFloatField;
    qry_fyxxmrsl: TFloatField;
    btn_CodePrint: TButton;
    qry_fyxxfzph: TStringField;
    lbl_liquid: TLabel;
    RzCheckBox1: TRzCheckBox;
    ckbxjcjy: TRzCheckBox;
    procedure FormShow( Sender: TObject );
    procedure DBGridEh1DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure BitBtn2Click( Sender: TObject );
    procedure sp_fyxxAfterOpen( DataSet: TDataSet );
    procedure BitBtn1Click( Sender: TObject );
    procedure Button1Click( Sender: TObject );
    procedure Edit1KeyPress( Sender: TObject; var Key: Char );
    procedure Button2Click( Sender: TObject );
    procedure Edit2KeyPress( Sender: TObject; var Key: Char );
    procedure FormCreate( Sender: TObject );
    procedure qry_fyxxCalcFields(DataSet: TDataSet);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure qry_fymxAfterScroll(DataSet: TDataSet);
    procedure DBGridEh4KeyPress(Sender: TObject; var Key: Char);
    procedure Button6Click(Sender: TObject);
    procedure ckbxLongTimeClick(Sender: TObject);
    procedure ckbxShortTimeClick(Sender: TObject);
    procedure btn_CodePrintClick(Sender: TObject);
    procedure ckbxjcjyClick(Sender: TObject);

  private
    { Private declarations }
    FLis_IP:string;
    procedure DeleteNonMedicineItems(var zyh,czydm:string);
    procedure DeletejstpItems(var zyh, czydm: string);
    procedure ActiveFilterString;
  public
    { Public declarations }
    ysdm: string;
    xyf_dm:string;
    zyf_dm:string;
    jffs: string;
    zyh_now:string;
  end;

var
  frm_yzfyqd: Tfrm_yzfyqd;
  sfkx:string;
  qybqfjfy:boolean;
  yzjfbxzys:Boolean;

implementation
uses p_dm, p_func,ShellAPI, p_bqgl_zxypyz, p_fygsys, p_brcx, p_xz_fyyf,p_bqgl_yzck;
{$R *.dfm}

procedure Tfrm_yzfyqd.BitBtn1Click( Sender: TObject );
var
  sczt: string;
  i: Integer;
  hjje, qfxe: Real;
  id1,jfph,ssks,vfltrStr,vxmmc:string;
begin
//  if pub_yydm='0271' then //掇刀医院
//  begin
//    DM_data.qry_pub.Close;
//    DM_data.qry_pub.sql.text:='select * from zybl_zyyz_brjfd_ls  a ,sys_ypdm as b where a.zyh=' +
//    #39 + zyh_now + #39 + ' and a.czydm= ' + #39 + pub_czydm+ #39 +
//    ' AND a.lb  IN (''药品'',''药一'',''成药'') and   a.xmdm =b.ypdm '+
//    ' and ( b.sfjsyp=1 or b.sfgzyp=1 or b.sfdmyp=1)';
//    DM_data.qry_pub.Open ;
//    if DM_data.qry_pub.RecordCount > 0 then
//    begin
//       Application.MessageBox(PChar('医嘱存在精神麻醉药品,请到住院药房计费！'), '提示', MB_OKCANCEL +
//       MB_ICONINFORMATION);
//       DeletejstpItems(zyh_now,pub_czydm);
//      qry_fyxx.Requery();
//      qry_fyxx.First;
//    end;
//  end;
  vxmmc:='';
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select * from sys_xt_kg ';
  DM_data.qry_pub.Open;

//   if ((sp_cx_xyjg.fieldbyname('sfjsyp').AsBoolean)
//    or (sp_cx_xyjg.fieldbyname('sfgzyp').AsBoolean)
//    or (sp_cx_xyjg.fieldbyname('sfdmyp').AsBoolean) )       //如果之前已经开了药，目前开的特殊药品

  if pub_yydm<>'0271' then  //掇刀医院
  begin
    qry_fyxx.Filtered:=false;
    qry_fyxx.Filter:=' szxz = 1';
    qry_fyxx.Filtered:=True;
  end else
  begin
    if ckbxjcjy.Checked then   //勾选检查检验
    begin
     vfltrStr := '(lb=''检查'' and szxz = 1)  or (lb=''检验'' and szxz = 1)' ;
    end else
    begin
     vfltrStr := '(lb<>''检查''and lb<>''检验'')  and  szxz = 1 ';
    end;
    qry_fyxx.Filtered := False;
    if (vfltrStr<>'') then
    begin
      qry_fyxx.Filter   := vfltrStr;
      qry_fyxx.Filtered := True;
    end;
  end;

  if qry_fyxx.IsEmpty then
  begin
    if DM_data.qry_pub.FieldByName('qybqfjfy').asboolean=true then
    begin
      sp_cx_bdfy.First;
      while not sp_cx_bdfy.eof do
      begin
        if sp_cx_bdfy.FieldByName('xz').AsBoolean=true then
        begin
          sp_in_bdfymx.Close;
          sp_in_bdfymx.Parameters.Refresh;
          sp_in_bdfymx.Parameters.ParamByName('@czydm').Value:=pub_czydm;
          sp_in_bdfymx.Parameters.ParamByName('@zyh').Value:=zyh_now;
          sp_in_bdfymx.Parameters.ParamByName('@kdys').Value:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
          sp_in_bdfymx.Parameters.ParamByName('@fydm').Value:= sp_cx_bdfy.FieldByName('fydm').AsString;
          if Trim(sp_cx_bdfy.FieldByName('fysl').AsString)<>'' then
          begin
            sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := sp_cx_bdfy.FieldByName('fysl').AsInteger;
          end
          else
          begin
             sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := 1;
          end;
          sp_in_bdfymx.Parameters.ParamByName('@kdks').Value := Trim(frm_zxypyz.sp_brxx.fieldbyname( 'ksdm' ).asstring);
          sp_in_bdfymx.ExecProc;
        end;
        sp_cx_bdfy.Next;
      end;
      sp_cx_bdfy1.First;
      while not sp_cx_bdfy1.eof do
      begin
        if sp_cx_bdfy1.FieldByName('xz').AsBoolean=true then
        begin
          sp_in_bdfymx.Close;
          sp_in_bdfymx.Parameters.Refresh;
          sp_in_bdfymx.Parameters.ParamByName('@czydm').Value:=pub_czydm;
          sp_in_bdfymx.Parameters.ParamByName('@zyh').Value:=zyh_now;
          sp_in_bdfymx.Parameters.ParamByName('@kdys').Value:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
          sp_in_bdfymx.Parameters.ParamByName('@fydm').Value:= sp_cx_bdfy1.FieldByName('fydm').AsString;
          if Trim(sp_cx_bdfy.FieldByName('fysl').AsString)<>'' then
          begin
            sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := sp_cx_bdfy1.FieldByName('fysl').AsInteger;
          end
          else
          begin
             sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := 1;
          end;
          sp_in_bdfymx.Parameters.ParamByName('@kdks').Value := Trim(frm_zxypyz.sp_brxx.fieldbyname( 'ksdm' ).asstring);
          sp_in_bdfymx.ExecProc;
        end;
        sp_cx_bdfy1.Next;
      end;
    end;
    Self.Close;
    exit;
  end
  else
  begin
    qry_fyxx.DisableControls;
    qry_fyxx.First;
    while not qry_fyxx.eof do
    begin
      if qry_fyxx.FieldByName('szxz').AsBoolean=True then
      begin
        if (qry_fyxx.FieldByName('lb').AsString = '药品') or (qry_fyxx.FieldByName('lb').AsString = '药一') then
        begin
           DM_data.qry_pub.Close;
           DM_data.qry_pub.SQL.Text := 'select * from sys_pdzt where ksdm= ' + Copy( Trim( ComboBox1.Text ), 1, 4 );
           DM_data.qry_pub.Open;
           if DM_data.qry_pub.FieldByName('pdzt').AsBoolean then
            begin
              ShowMessage('药房正在盘点，不能计费，请不要选择药品或者药一');
              Exit;
            end;
        end
        else if qry_fyxx.FieldByName('lb').AsString = '成药' then
        begin
            DM_data.qry_pub.Close;
           DM_data.qry_pub.SQL.Text := 'select * from sys_pdzt where ksdm= ' + Copy( Trim( ComboBox2.Text ), 1, 4 );
           DM_data.qry_pub.Open;
           if DM_data.qry_pub.FieldByName('pdzt').AsBoolean then
            begin
              ShowMessage('药房正在盘点，不能计费，请不要选择成药');
              Exit;
            end;
        end
        else if qry_fyxx.FieldByName('lb').AsString = '草药' then
        begin
           DM_data.qry_pub.Close;
           DM_data.qry_pub.SQL.Text := 'select * from sys_pdzt where ksdm in '
                              + ' (select isnull(cyyf,' + #39 + #39 + ')  yfdm from sys_bqzyfl a,sys_ksdm b where a.bqzydm=b.dm'
                               + ' and a.bqdm= ' + pub_bqdm + ')';
           DM_data.qry_pub.Open;
           if DM_data.qry_pub.FieldByName('pdzt').AsBoolean then
            begin
              ShowMessage('药房正在盘点，不能计费，请不要选择草药');
              Exit;
            end;

        end
        else if (pub_yydm = '0271') and (qry_fyxx.FieldByName('lb').AsString = '材料') then  //掇刀医院病区库房盘点后不能计费
        begin
          if frm_func.Func_CheckPDZT(pub_ksdm) then
          begin
            application.MessageBox('系统正在进行盘点，不能发材料!', '注意', 16);
            exit;
          end;
        end;
        /////
        if pub_yydm='0271' then //掇刀医院
        begin
          if (qry_fyxx.FieldByName('lb').AsString = '药品') or (qry_fyxx.FieldByName('lb').AsString = '药一') then
          begin
             DM_data.qry_pub.Close;
             DM_data.qry_pub.SQL.Text := 'select * from sys_ypdm where ypdm= ' +#39+
             Trim(qry_fyxx.FieldByName('xmdm').AsString)+#39+' and ( sfjsyp=1 or sfgzyp=1 or sfmzyp=1 or sfdmyp=1 or yplb=''0107'')';  //精神药品，管制药品，毒性药品，麻醉，妊娠
             DM_data.qry_pub.Open;
             if DM_data.qry_pub.RecordCount > 0 then
             begin
                vxmmc := vxmmc+','+ Trim(qry_fyxx.FieldByName('xmmc').AsString);
                qry1.Close;
                qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
                qry1.ExecSQL;
             end;
          end
        end;
      end;
      qry_fyxx.Next;
    end;
    qry_fyxx.EnableControls;
  end;

  if  vxmmc<>'' then  //掇刀医院
  begin
    Application.MessageBox(PChar('医嘱存在妊娠、精神、毒性麻醉药品'+ vxmmc + ' ,请到住院药房划价！'), '提示', MB_OK + MB_ICONINFORMATION);
    qry_fyxx.Requery();
  end;


  if (pub_yydm <> '0271') then
  begin
    qry_fyxx.Filtered:=false;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select * from sys_xt_kg ';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzjfqcd').AsBoolean=true then
  begin
    if (pub_yydm='0234') or (pub_yydm='0092') or (pub_yydm='0229') or (pub_yydm='0230')  or (pub_yydm='0212') or  (pub_yydm='0256')then
    begin
      if StrToInt(Edit2.text)>1 then
      begin
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if qry_fyxx.FieldByName('szxz').AsBoolean=True then
          begin

            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.text:='select * from zybl_zyyz_brjfd_ls where id1='+''''+
            qry_fyxx.FieldByName('id1').asstring+'''';
            DM_data.qry_pub.Open;
            id1:=DM_data.qry_pub.FieldByName('id').AsString;
            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.text:='select * from zybl_zyyz where id='+id1;
            DM_data.qry_pub.Open;
            if (DM_data.qry_pub.FieldByName('yzsx').AsString='临时') or (DM_data.qry_pub.FieldByName('lb').AsString='草药') then
            begin
                Application.MessageBox( '提示:临时医嘱和草药不能一次记几天的费用!', '提示', MB_ICONINFORMATION );
                qry_fyxx.EnableControls;
                Exit;
            end;
          end;

          qry_fyxx.Next;
        end;
        qry_fyxx.EnableControls;
      end;
    end;
//    if (pub_yydm='0003') or (pub_yydm='0234') or (pub_yydm='0229') or (pub_yydm='0230')  or   (pub_yydm='0212')
//    or (pub_yydm='0228') then
//    begin
      if Trim(ComboBox3.text)='全部' then
      begin
        if pub_yydm='0271' then
        begin
          if ckbxjcjy.Checked then   //勾选检查检验
          begin
            vfltrStr := '(lb=''检查'' and szxz = 1)  or (lb=''检验'' and szxz = 1)' ;
          end else
          begin
            vfltrStr := '(lb<>''检查''and lb<>''检验'')  and  szxz = 1 ';
          end;
          ///////////////////////////////// ////////////
          qry_fyxx.Filtered:=false;
          qry_fyxx.DisableControls;
          qry_fyxx.First;
          while not qry_fyxx.eof do
          begin
            if   ckbxjcjy.Checked then   //勾选显示检查检验
            begin
              if (qry_fyxx.FieldByName('lb').AsString<>'检查')
                and  (qry_fyxx.FieldByName('lb').AsString<>'检验')
              then
              begin
                qry1.Close;
                qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
                qry1.ExecSQL;
              end;
            end else  //不勾选显示药品
            begin
              if (qry_fyxx.FieldByName('lb').AsString='检查')
                  or  (qry_fyxx.FieldByName('lb').AsString='检验')
              then
              begin
                qry1.Close;
                qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
                qry1.ExecSQL;
              end;
            end;
            qry_fyxx.Next;
          end;

          qry_fyxx.Requery();
          qry_fyxx.Filtered := False;
          if (vfltrStr<>'') then
          begin
            qry_fyxx.Filter   := vfltrStr;
            qry_fyxx.Filtered := True;
            qry_fyxx.First;
          end;
           qry_fyxx.EnableControls;
        end;
      end
      else if Trim(ComboBox3.text)='药品' then
      begin
        qry_fyxx.Filtered:=false;
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if (qry_fyxx.FieldByName('lb').AsString<>'药品') and  (qry_fyxx.FieldByName('lb').AsString<>'成药')
             and  (qry_fyxx.FieldByName('lb').AsString<>'产生')
             and  (qry_fyxx.FieldByName('lb').AsString<>'药一') then
          begin

            qry1.Close;
            qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
            qry1.ExecSQL;
//            qry_fyxx.Edit;
//            qry_fyxx.FieldByName( 'szxz' ).AsBoolean := false;
//            qry_fyxx.Post;

          end;
          qry_fyxx.Next;
        end;
        qry_fyxx.Requery();
        qry_fyxx.Filter:='lb=''药品'' or lb=''成药'' or lb=''产生''  or lb=''药一'' ';
        qry_fyxx.Filtered:=True;
        qry_fyxx.First;
        qry_fyxx.EnableControls;
      end
      else if Trim(ComboBox3.text)='草药' then
      begin
        qry_fyxx.Filtered:=false;
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if (qry_fyxx.FieldByName('lb').AsString<>'草药')
             and  (qry_fyxx.FieldByName('lb').AsString<>'产生')
          then
          begin
            qry1.Close;
            qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
            qry1.ExecSQL;
//            qry_fyxx.edit;
//            qry_fyxx.FieldByName('szxz').AsBoolean:=False;
//            qry_fyxx.Post;
          end;
          qry_fyxx.Next;
        end;
        qry_fyxx.Requery();
        qry_fyxx.Filter:=' lb=''产生''  or lb=''草药'' ';
        qry_fyxx.Filtered:=True;
        qry_fyxx.First;
        qry_fyxx.EnableControls;
      end
      else
      begin
        qry_fyxx.Filtered:=false;
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if qry_fyxx.FieldByName('lb').AsString<>trim(ComboBox3.text) then
          begin
            qry1.Close;
            qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
            qry1.ExecSQL;
//            qry_fyxx.Edit;
//            qry_fyxx.FieldByName( 'szxz' ).AsBoolean := false;
//            qry_fyxx.Post;
          end;
          qry_fyxx.Next;
        end;
        qry_fyxx.Requery();
        qry_fyxx.Filter:='lb='+''''+trim(ComboBox3.text)+'''';
        qry_fyxx.Filtered:=True;
        qry_fyxx.First;
        qry_fyxx.EnableControls;
      end;
//
    xyf_dm:='';
    zyf_dm:='';
    dm_data.qry_pub.close;
    dm_data.qry_pub.sql.text := 'select * from zysf_zydj where zyh=' + '''' + zyh_now + '''';
    dm_data.qry_pub.open;
    if dm_data.qry_pub.FieldByName('cybz').AsBoolean=true then
    begin
    Application.MessageBox( '提示:该病人已办理出院！不能记费!', '提示', MB_ICONINFORMATION );
    Abort;
    end;
    qfxe := dm_data.qry_pub.fieldbyname( 'zdjf' ).asfloat;

    hjje := StrToFloat( DBGridEh1.GetFooterValue( 0, DBGridEh1.Columns[8] ) );
    if ( pub_yydm <> '0015' ) then
    begin
      //---------calmhawk---2011-06-13------修改 zfy 为  zfze-----
      if dm_data.qry_pub.FieldByName( 'yjze' ).AsFloat -
      dm_data.qry_pub.FieldByName( 'zfze' ).AsFloat -
      hjje * strtoint( edit2.text ) < 0 - qfxe - pub_cjje then
      begin
        Application.MessageBox( '提示:该病人本次记费后将超过最大欠费限额！不能记费!', '提示', MB_ICONINFORMATION );
        if pub_yydm='0234' then  //遂宁中医院记录挂账
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text:='delete from zybl_qfgzbr where zyh='+''''+zyh_now+
          '''';
          DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text:='insert into  zybl_qfgzbr select '+''''+zyh_now+
          ''''+','+''''+formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date )+'''';
          DM_data.qry_pub.ExecSQL;
        end;
        Abort;
      end;
    end;

    if ( trim( edit2.text ) <> '' ) and ( strtoint( trim( edit2.text ) ) > 0 ) then
    begin
      ysdm:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
      if ysdm <> '' then
      begin
        if Trim(xyf_dm)<>'' then
        begin
          for I := 0 to ComboBox1.Items.Count - 1 do
          begin
            if Pos( xyf_dm, ComboBox1.Items[i] ) > 0 then
            begin
              ComboBox1.ItemIndex := i;
            end;
          end;
        end;
        if Trim(zyf_dm)<>'' then
        begin
          for I := 0 to ComboBox2.Items.Count - 1 do
          begin
            if Pos( zyf_dm, ComboBox2.Items[i] ) > 0 then
            begin
              ComboBox2.ItemIndex := i;
            end;
          end;
        end;
        jfph:=get_sjh(pub_czydm);
        for I := 0 to StrToInt( Trim( edit2.text ) ) - 1 do
        begin
          if qry_fyxx.State in [dsedit] then
             qry_fyxx.Post;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='select distinct plxh from zybl_zyyz_brjfd_ls '+
                                   ' where zyh='+''''+zyh_now+''''+
                                   ' and czydm='+''''+pub_czydm+''' and szxz=1';
          DM_data.qry_pub.Open;
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            if yzjfbxzys=true then
            begin
              qry_cx_kdys.close;
              qry_cx_kdys.sql.Text:='select b.kdys from zybl_zyyz_brjfd_ls a,zybl_zyyz b '+
                                   ' where  a.zyh='+''''+zyh_now+''''+
                                   ' and charindex('',''+convert(varchar,b.id)+'','','',''+a.id+'','')>0 and a.zyh=b.zyh and a.czydm='+''''+pub_czydm+''''+' and a.plxh='+''''+
                                   DM_data.qry_pub.FieldByName('plxh').asstring+'''';
              qry_cx_kdys.open;
              if not qry_cx_kdys.IsEmpty then
              ysdm:=qry_cx_kdys.FieldByName('kdys').asstring;
              if pub_yydm='0246' then   //兴宁特殊修改，计费默认主管医生
              begin
                if Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring)<>'' then
                begin
                  ysdm:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
                end;
              end;
            end;
            sp_yzjf_zbsj.Close;
            sp_yzjf_zbsj.Parameters.Refresh;
            sp_yzjf_zbsj.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
            sp_yzjf_zbsj.Parameters.ParamByName( '@zyh' ).value := zyh_now;
            sp_yzjf_zbsj.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
            sp_yzjf_zbsj.Parameters.ParamByName( '@yfdm' ).Value := Copy( Trim( ComboBox1.Text ), 1, 4 );
            sp_yzjf_zbsj.Parameters.ParamByName( '@kdys' ).Value := ysdm;
            sp_yzjf_zbsj.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date + i );
            sp_yzjf_zbsj.Parameters.ParamByName( '@sczt' ).Value := '1';
            sp_yzjf_zbsj.Parameters.ParamByName( '@zyfdm' ).Value := Copy( Trim( ComboBox2.Text ), 1, 4 );
            sp_yzjf_zbsj.Parameters.ParamByName( '@plxh' ).Value := DM_data.qry_pub.FieldByName('plxh').asstring;
            sp_yzjf_zbsj.Parameters.ParamByName('@jfph').Value:=jfph;
            sp_yzjf_zbsj.ExecProc;
            sczt := sp_yzjf_zbsj.Parameters.ParamByName( '@sczt' ).Value;
            if sczt<>'0' then
              Break;
            DM_data.qry_pub.Next;
          end;
          if ( sczt = '0' ) and ( i = StrToInt( Trim( edit2.text ) ) - 1 ) then
          begin
            Application.MessageBox('右边将显示本次计费的费用明细，请核对后计费！', 
              '提示', MB_OK + MB_ICONINFORMATION);
            sfkx:='0'; 
            qry_fymx.close;
            qry_fymx.SQL.text:='select a.*,b.fymc from zysf_zyfymx_zbsj a,sys_kjsfxm b where a.fydm=b.fydm and zyh='+''''+zyh_now+
            ''''+' and jfph='+''''+jfph+'''';
            qry_fymx.Open;
            Panel3.Visible:=true;
            DBGridEh1.Width:=frm_yzfyqd.Width-Panel3.Width+130;
            BitBtn1.Enabled:=false;
          end
          else
          if ( sczt <> '0' ) then
          begin
            if  vxmmc=''  then
            application.MessageBox( pchar( sczt + '！！！' ), '提示', mb_ok + mb_iconwarning );
//            if pub_yydm<>'0234' then
//            self.close;
          end;
        end;
      end
      else
        application.MessageBox( '请先确定费用归属医生！！', '提示', mb_ok + mb_iconinformation );
    end
    else
    begin
      application.MessageBox( '请确定记费天数大于0！！', '提示', mb_ok + mb_iconinformation );
    end;
  end
  else
  begin
    if (pub_yydm='0234') or   (pub_yydm='0092') or  (pub_yydm='0229') or (pub_yydm='0230')  or   (pub_yydm='0212') then
    begin
      if StrToInt(Edit2.text)>1 then
      begin
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if qry_fyxx.FieldByName('szxz').AsBoolean=True then
          begin
            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.text:='select * from zybl_zyyz_brjfd_ls where id1='+''''+
            qry_fyxx.FieldByName('id1').asstring+'''';
            DM_data.qry_pub.Open;
            id1:=DM_data.qry_pub.FieldByName('id').AsString;
            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.text:='select * from zybl_zyyz where id='+id1;
            DM_data.qry_pub.Open;
            if (DM_data.qry_pub.FieldByName('yzsx').AsString='临时') or (DM_data.qry_pub.FieldByName('lb').AsString='草药') then
            begin
                Application.MessageBox( '提示:临时医嘱和草药不能一次记几天的费用!', '提示', MB_ICONINFORMATION );
                qry_fyxx.EnableControls;
                Exit;
            end;
          end;

          qry_fyxx.Next;
        end;
        qry_fyxx.EnableControls;
      end;
    end;
//    if (pub_yydm='0003') or (pub_yydm='0234') or  (pub_yydm='0229') or (pub_yydm='0230')  or   (pub_yydm='0212')
//    or (pub_yydm='0228') then
//    begin
      if Trim(ComboBox3.text)='全部' then
      begin
        if pub_yydm='0271' then
        begin
          if ckbxjcjy.Checked then   //勾选检查检验
          begin
            vfltrStr := '(lb=''检查'' and szxz = 1)  or (lb=''检验'' and szxz = 1)' ;
          end else
          begin
            vfltrStr := '(lb<>''检查''and lb<>''检验'')  and  szxz = 1 ';
          end;
          ///////////////////////////////// ////////////
          qry_fyxx.Filtered:=false;
          qry_fyxx.DisableControls;
          qry_fyxx.First;
          while not qry_fyxx.eof do
          begin
            if   ckbxjcjy.Checked then   //勾选显示检查检验
            begin
              if (qry_fyxx.FieldByName('lb').AsString<>'检查')
                and  (qry_fyxx.FieldByName('lb').AsString<>'检验')
              then
              begin
                qry1.Close;
                qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
                qry1.ExecSQL;
              end;
            end else  //不勾选显示药品
            begin
              if (qry_fyxx.FieldByName('lb').AsString='检查')
                  or  (qry_fyxx.FieldByName('lb').AsString='检验')
              then
              begin
                qry1.Close;
                qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
                qry1.ExecSQL;
              end;
            end;
            qry_fyxx.Next;
          end;

          qry_fyxx.Requery();
          qry_fyxx.Filtered := False;
          if (vfltrStr<>'') then
          begin
            qry_fyxx.Filter   := vfltrStr;
            qry_fyxx.Filtered := True;
            qry_fyxx.First;
          end;
           qry_fyxx.EnableControls;
        end;
      end
      else if Trim(ComboBox3.text)='药品' then
      begin
        qry_fyxx.Filtered:=false;
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if (qry_fyxx.FieldByName('lb').AsString<>'药品') and  (qry_fyxx.FieldByName('lb').AsString<>'成药')
             and  (qry_fyxx.FieldByName('lb').AsString<>'产生')
             and  (qry_fyxx.FieldByName('lb').AsString<>'药一') then
          begin

            qry1.Close;
            qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
            qry1.ExecSQL;
//            qry_fyxx.Edit;
//            qry_fyxx.FieldByName( 'szxz' ).AsBoolean := false;
//            qry_fyxx.Post;
          end;
          qry_fyxx.Next;
        end;
        qry_fyxx.Requery();
        qry_fyxx.Filter:='lb=''药品'' or lb=''成药'' or lb=''产生''  or lb=''药一'' ';
        qry_fyxx.Filtered:=True;
        qry_fyxx.First;
        qry_fyxx.EnableControls;
      end
      else if Trim(ComboBox3.text)='草药' then
      begin
        qry_fyxx.Filtered:=false;
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if
              (qry_fyxx.FieldByName('lb').AsString<>'产生')
             and  (qry_fyxx.FieldByName('lb').AsString<>'草药') then
          begin
            qry1.Close;
            qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
            qry1.ExecSQL;

//            qry_fyxx.Edit;
//            qry_fyxx.FieldByName( 'szxz' ).AsBoolean := false;
//            qry_fyxx.Post;
          end;
          qry_fyxx.Next;
        end;
        qry_fyxx.Requery();
        qry_fyxx.Filter:=' lb=''产生'' or lb=''草药'' ';
        qry_fyxx.Filtered:=True;
        qry_fyxx.First;
        qry_fyxx.EnableControls;
      end
      else
      begin
        qry_fyxx.Filtered:=false;
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if qry_fyxx.FieldByName('lb').AsString<>trim(ComboBox3.text) then
          begin
              qry1.Close;
              qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
              qry1.ExecSQL;
//            qry_fyxx.Edit;
//            qry_fyxx.FieldByName( 'szxz' ).AsBoolean := false;
//            qry_fyxx.Post;
          end;
          qry_fyxx.Next;
        end;
        qry_fyxx.Requery();
        qry_fyxx.Filter:='lb='+''''+trim(ComboBox3.text)+'''';
        qry_fyxx.Filtered:=True;
        qry_fyxx.First;
        qry_fyxx.EnableControls;
      end;
//    end;
    xyf_dm:='';
    zyf_dm:='';
    dm_data.qry_pub.close;
    dm_data.qry_pub.sql.text := 'select * from zysf_zydj where zyh=' + '''' + zyh_now + '''';
    dm_data.qry_pub.open;
    if dm_data.qry_pub.FieldByName('cybz').AsBoolean=true then
    begin
    Application.MessageBox( '提示:该病人已办理出院！不能记费!', '提示', MB_ICONINFORMATION );
    Abort;
    end;
    qfxe := dm_data.qry_pub.fieldbyname( 'zdjf' ).asfloat;

    hjje := StrToFloat( DBGridEh1.GetFooterValue( 0, DBGridEh1.Columns[8] ) );
    if ( pub_yydm <> '0015' ) then
    begin
      //---------calmhawk---2011-06-13------修改 zfy 为  zfze-----
      if dm_data.qry_pub.FieldByName( 'yjze' ).AsFloat -
      dm_data.qry_pub.FieldByName( 'zfze' ).AsFloat -
      hjje * strtoint( edit2.text ) < 0 - qfxe - pub_cjje then
      begin
        Application.MessageBox( '提示:该病人本次记费后将超过最大欠费限额！不能记费!', '提示', MB_ICONINFORMATION );
        if pub_yydm='0234' then  //遂宁中医院记录挂账
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text:='delete from zybl_qfgzbr where zyh='+''''+zyh_now+
          '''';
          DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text:='insert into  zybl_qfgzbr select '+''''+zyh_now+
          ''''+','+''''+formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date )+'''';
          DM_data.qry_pub.ExecSQL;
        end;
        Abort;
      end;
    end;

    if ( trim( edit2.text ) <> '' ) and ( strtoint( trim( edit2.text ) ) > 0 ) then
    begin
      if yzjfbxzys<>true then  //如果不是万源中医院，需要弹出医生选择框
      try
        application.createform( Tfrm_fygsys, frm_fygsys );
        frm_fygsys.ad_ysdm.parameters.parambyname( 'bqdm' ).value := pub_bqdm;
        frm_fygsys.ad_ysdm.parameters.parambyname( 'ksdm' ).value := pub_ksdm;
        //frm_fygsys.ad_ysdm.parameters.parambyname( 'zgys' ).value := Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + trim( frm_zxypyz.sp_brxx.FieldByName( 'zgys' ).asstring ) + '''';
        DM_data.qry_pub.Open;
        if not DM_data.qry_pub.IsEmpty then
          frm_fygsys.ad_ysdm.parameters.parambyname( 'zgysmc' ).value := Trim( frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring ) + '_' + Trim( DM_data.qry_pub.FieldByName( 'mc' ).asstring )
        else
          frm_fygsys.ad_ysdm.parameters.parambyname( 'zgysmc' ).value := '';
        frm_fygsys.ad_ysdm.open;
        frm_fygsys.DBComboBox1.Items.Clear;
        frm_fygsys.ad_ysdm.First;
        while not frm_fygsys.ad_ysdm.eof do
        begin
          frm_fygsys.dbcombobox1.Items.Add( frm_fygsys.ad_ysdm.FieldByName( 'mc' ).asstring );
          frm_fygsys.ad_ysdm.Next;
        end;
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text:='select * from sys_brzkxx where zyh='+''''+
        zyh_now+'''';
        dm_data.qry_pub.open;
        if not dm_data.qry_pub.isempty then
        begin
          ssks:= dm_data.qry_pub.fieldbyname('ksdm').asstring;
        end;
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text:='select kdys,b.mc kdysmc from zybl_zyyz a,sys_czy b where a.kdys=b.dm and  zyh='+''''+
        zyh_now+''''+' and kdks in'+
        ' (select bqzydm from  sys_bqzyfl where bqdm='+''''+pub_bqdm+''''+')';
        dm_data.qry_pub.open;

        if not dm_data.qry_pub.isempty then
        begin
          frm_fygsys.ad_ysdm.Locate( 'mc', dm_data.qry_pub.fieldbyname( 'kdysmc' ).asstring, [loPartialKey] );
          frm_fygsys.dbComboBox1.ItemIndex := frm_fygsys.dbComboBox1.Items.IndexOf( frm_fygsys.ad_ysdm.FieldByName( 'mc' ).AsString );
        end
        else
        begin
          frm_fygsys.ad_ysdm.Locate( 'mc', frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring, [loPartialKey] );
          frm_fygsys.dbComboBox1.ItemIndex := frm_fygsys.dbComboBox1.Items.IndexOf( frm_fygsys.ad_ysdm.FieldByName( 'mc' ).AsString );
        end;
        frm_fygsys.showmodal;
      finally
        frm_fygsys.free;
      end
      else
      ysdm:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
      if ysdm <> '' then
      begin
        if Trim(xyf_dm)<>'' then
        begin
          for I := 0 to ComboBox1.Items.Count - 1 do
          begin
            if Pos( xyf_dm, ComboBox1.Items[i] ) > 0 then
            begin
              ComboBox1.ItemIndex := i;
            end;
          end;
        end;
        if Trim(zyf_dm)<>'' then
        begin
          for I := 0 to ComboBox2.Items.Count - 1 do
          begin
            if Pos( zyf_dm, ComboBox2.Items[i] ) > 0 then
            begin
              ComboBox2.ItemIndex := i;
            end;
          end;
        end;
        for I := 0 to StrToInt( Trim( edit2.text ) ) - 1 do  //根据天数计费开始循环
        begin
          if qry_fyxx.State in [dsedit] then
             qry_fyxx.Post;
          DM_data.qry_pub.close;   //处理了在yzjfbxzys为0时，多天计费报错的问题  加上了yzsx
          DM_data.qry_pub.SQL.text:='select distinct plxh ,min(yzsx) as yzsx from zybl_zyyz_brjfd_ls '+
                                   ' where zyh='+''''+zyh_now+''''+
                                   ' and czydm='+''''+pub_czydm+''' and szxz=1 group  by plxh,yzsx';
          DM_data.qry_pub.Open;
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            if yzjfbxzys=true then
            begin
              qry_cx_kdys.close;
              qry_cx_kdys.sql.Text:='select b.kdys,b.yzsx from zybl_zyyz_brjfd_ls a,zybl_zyyz b '+
                                   ' where  a.zyh='+''''+zyh_now+''''+
                                   ' and charindex('',''+convert(varchar,b.id)+'','','',''+a.id+'','')>0 and a.zyh=b.zyh and a.czydm='+''''+pub_czydm+''''+' and a.plxh='+''''+
                                   DM_data.qry_pub.FieldByName('plxh').asstring+'''';
              qry_cx_kdys.open;
              if not qry_cx_kdys.IsEmpty then
              ysdm:=qry_cx_kdys.FieldByName('kdys').asstring;
              if pub_yydm='0246' then   //兴宁特殊修改，计费默认主管医生
              begin
                if Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring)<>'' then
                begin
                  ysdm:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
                end;
              end;
            end;
            //if not((i>0) and (qry_cx_kdys.FieldByName('yzsx').AsString='临时')) then
            //根据天数计费临时医嘱只记一天    20170227 
            if not((i>0) and (DM_data.qry_pub.FieldByName('yzsx').AsString='临时')) then    //根据天数计费临时医嘱只记一天
             begin
                sp_yzjf.Close;
                sp_yzjf.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
                sp_yzjf.Parameters.ParamByName( '@zyh' ).value := zyh_now;
                sp_yzjf.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
                sp_yzjf.Parameters.ParamByName( '@yfdm' ).Value := Copy( Trim( ComboBox1.Text ), 1, 4 );
                sp_yzjf.Parameters.ParamByName( '@kdys' ).Value := ysdm;
                sp_yzjf.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date + i );
                sp_yzjf.Parameters.ParamByName( '@sczt' ).Value := '1';
                sp_yzjf.Parameters.ParamByName( '@zyfdm' ).Value := Copy( Trim( ComboBox2.Text ), 1, 4 );
                sp_yzjf.Parameters.ParamByName( '@plxh' ).Value := DM_data.qry_pub.FieldByName('plxh').asstring;
                sp_yzjf.ExecProc;
                sczt := sp_yzjf.Parameters.ParamByName( '@sczt' ).Value;
                if sczt<>'0' then
                  Break;
             end;
          DM_data.qry_pub.Next;
          end;
          if (sczt='0') and (pub_yydm='0234') then
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text:='select *  from   zybl_zyjfbz  where  zyh= '+''''+zyh_now+
            ''''+' and  convert(varchar,rq,112)='+''''+ formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date + i )+
            '''';
            DM_data.qry_pub.Open ;
            if DM_data.qry_pub.IsEmpty then
            begin
              DM_data.qry_pub.Append;
              DM_data.qry_pub.FieldByName('tmh').AsString :=  frm_zxypyz.sp_brxx.FieldByName('tmh').AsString ;
              DM_data.qry_pub.FieldByName('zyh').AsString := frm_zxypyz.sp_brxx.FieldByName('zyh').AsString ;
              DM_data.qry_pub.FieldByName('bqdm').AsString :=  pub_bqdm ;
              DM_data.qry_pub.FieldByName('brxm').AsString :=  frm_zxypyz.sp_brxx.FieldByName('brxm').AsString;
              DM_data.qry_pub.FieldByName('rq').AsDateTime := frm_zxypyz.dT_zxsj.Date + i;
              formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date + i );
              DM_data.qry_pub.FieldByName('bz').AsString := '1';
              DM_data.qry_pub.Post;
            end;
          end;
          if ( sczt = '0' ) and ( i = StrToInt( Trim( edit2.text ) ) - 1 ) then
          begin
            application.MessageBox( '成功计费！！', '提示', mb_ok + mb_iconinformation );
            frm_zxypyz.sp_dryz.close;
            frm_zxypyz.sp_dryz.Parameters.ParamByName( '@zyh' ).value := zyh_now;
            frm_zxypyz.sp_dryz.Open;
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text:='delete from zybl_zyyz_brjfd_ls where czydm='+''''+pub_czydm+'''';
            DM_data.qry_pub.ExecSQL;
            if qybqfjfy=true then
            begin
              sp_cx_bdfy.First;
              while not sp_cx_bdfy.eof do
              begin
                if sp_cx_bdfy.FieldByName('xz').AsBoolean=true then
                begin
                  sp_in_bdfymx.Close;
                  sp_in_bdfymx.Parameters.Refresh;
                  sp_in_bdfymx.Parameters.ParamByName('@czydm').Value:=pub_czydm;
                  sp_in_bdfymx.Parameters.ParamByName('@zyh').Value:=zyh_now;
                  sp_in_bdfymx.Parameters.ParamByName('@kdys').Value:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
                  sp_in_bdfymx.Parameters.ParamByName('@fydm').Value:= sp_cx_bdfy.FieldByName('fydm').AsString;
                  if Trim(sp_cx_bdfy.FieldByName('fysl').AsString)<>'' then
                  begin
                    sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := sp_cx_bdfy.FieldByName('fysl').AsInteger;
                  end
                  else
                  begin
                     sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := 1;
                  end;
                  sp_in_bdfymx.Parameters.ParamByName('@kdks').Value := Trim(frm_zxypyz.sp_brxx.fieldbyname( 'ksdm' ).asstring);
                  sp_in_bdfymx.ExecProc;
                end;
                sp_cx_bdfy.Next;
              end;
              sp_cx_bdfy1.First;
              while not sp_cx_bdfy1.eof do
              begin
                if sp_cx_bdfy1.FieldByName('xz').AsBoolean=true then
                begin
                  sp_in_bdfymx.Close;
                  sp_in_bdfymx.Parameters.Refresh;
                  sp_in_bdfymx.Parameters.ParamByName('@czydm').Value:=pub_czydm;
                  sp_in_bdfymx.Parameters.ParamByName('@zyh').Value:=zyh_now;
                  sp_in_bdfymx.Parameters.ParamByName('@kdys').Value:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
                  sp_in_bdfymx.Parameters.ParamByName('@fydm').Value:= sp_cx_bdfy1.FieldByName('fydm').AsString;
                  if Trim(sp_cx_bdfy.FieldByName('fysl').AsString)<>'' then
                  begin
                    sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := sp_cx_bdfy1.FieldByName('fysl').AsInteger;
                  end
                  else
                  begin
                   sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := 1;
                  end;
                  sp_in_bdfymx.Parameters.ParamByName('@kdks').Value := Trim(frm_zxypyz.sp_brxx.fieldbyname( 'ksdm' ).asstring);
                  sp_in_bdfymx.ExecProc;
                end;
                sp_cx_bdfy1.Next;
              end;
            end;
            if pub_yydm='0234' then  //遂宁中医院记录挂账
            begin
              DM_data.qry_pub.Close;
              DM_data.qry_pub.SQL.Text:='delete from zybl_qfgzbr where zyh='+''''+zyh_now+
              ''''+' and rq='+''''+formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date )+'''';
              DM_data.qry_pub.ExecSQL;
            end;
            self.close;
          end
          else
          if ( sczt <> '0' ) then
          begin
            if  vxmmc=''  then
            application.MessageBox( pchar( sczt + '！！！' ), '提示', mb_ok + mb_iconwarning );
//            if pub_yydm<>'0234' then
//            self.close;
          end;
        end;

      end
      else
        application.MessageBox( '请先确定费用归属医生！！', '提示', mb_ok + mb_iconinformation );
    end
    else
    begin
      application.MessageBox( '请确定记费天数大于0！！', '提示', mb_ok + mb_iconinformation );
    end;
  end;

end;

procedure Tfrm_yzfyqd.BitBtn2Click( Sender: TObject );
begin
  self.close;
end;



procedure Tfrm_yzfyqd.btn_CodePrintClick(Sender: TObject);
var
  CFpath: TStrings;
  v_IP,visitAddr: string;
  I: integer;
begin
  inherited;
//  v_IP:='';
//  try
//    CFpath := Tstringlist.create;
//    ReadThirdJcJy(0, CFpath);
//    if trim(CFpath.Text) <> '' then
//    begin
//      for I := 0 to CFpath.Count - 1 do
//      begin
//          if Pos('IP',trim(CFpath.strings[I]))>0 then
//          v_IP := Copy(trim(CFpath.strings[I]),Length('IP')+2,length(trim(CFpath.strings[I])));
//      end;
//    end;
//  finally
//    CFpath.Free;
//  end;

  if FLis_IP <> '' then
  begin
    visitAddr := 'http://'+ FLis_IP+
    ':80/modules/main/sysMain.aspx?rmkj_userno=lis&HIS_PARAM_MODE=2';
    visitAddr := visitAddr + '&HIS_PARAM_WARD='+ Trim(pub_ksdm); //传病区代码
    ShellExecute(Handle, pchar('open'), pchar(visitAddr), nil, nil,
      SW_SHOWNORMAL);
//    WebBrowser1.Navigate(visitAddr);
  end;
  //  ShellExecute(application.Handle, 'open', pchar(Waycf), pchar(Instr), nil, sw_show);

end;


procedure Tfrm_yzfyqd.Button1Click( Sender: TObject );
begin
  try
    application.createform( tFrm_brcx, Frm_brcx );
    Frm_brcx.brxm.text := DBEdit19.text;
    Frm_brcx.Top := 80;
    Frm_brcx.Left := 2;
    Frm_brcx.showmodal;
  finally
    Frm_brcx.free;
  end;
end;

procedure Tfrm_yzfyqd.Button2Click( Sender: TObject );
begin
//  if Trim( qry_fyxx.FieldByName( 'lb' ).AsString ) = '药品' then
//    ShowMessage( '药品不能修改数量！' )
//  else
    if Trim( edit1.Text ) <> '' then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'update zybl_zyyz_brjfd_ls set sl=' + edit1.text + ',' +
        'je=' + edit1.text + '*dj where zyh=' + '''' + qry_fyxx.FieldByName( 'zyh' ).asstring + '''' +
        ' and czydm=' + '''' + pub_czydm + '''' + ' and xmdm=' + '''' + qry_fyxx.FieldByName( 'xmdm' ).asstring + ''''+
        ' and id1='+qry_fyxx.FieldByName( 'id1' ).asstring;
      DM_data.qry_pub.ExecSQL;
      qry_fyxx.Close;
      qry_fyxx.Parameters.ParamByName( 'zyh' ).value := zyh_now;
      qry_fyxx.Parameters.ParamByName( 'czydm' ).value := pub_czydm;
      qry_fyxx.open;

    end;

end;

procedure Tfrm_yzfyqd.Button3Click(Sender: TObject);
begin
    try
      application.createform( Tfrm_bqgl_yzck, frm_bqgl_yzck );
      frm_bqgl_yzck.zyh:= trim(zyh_now);
      frm_bqgl_yzck.sp_dryz.Close;
      frm_bqgl_yzck.sp_dryz.Parameters.ParamByName( '@zyh' ).Value := trim(zyh_now);
      frm_bqgl_yzck.sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
      if (pub_yydm = '0263') or (pub_yydm = '0264') then
        frm_bqgl_yzck.sp_dryz.Parameters.ParamByName( '@vkdks' ).Value := pub_ksdm
      else
        frm_bqgl_yzck.sp_dryz.Parameters.ParamByName( '@vkdks' ).Value := '';
      frm_bqgl_yzck.sp_dryz.Open;
      frm_bqgl_yzck.showmodal;
    finally
      frm_bqgl_yzck.free;
    end;
end;

procedure Tfrm_yzfyqd.Button4Click(Sender: TObject);
var
  sczt: string;
  i: Integer;
  hjje, qfxe: Real;
  id1,jfph,ssks:string;
begin
    if (pub_yydm='0234') or   (pub_yydm='0092') or   (pub_yydm='0229') or   (pub_yydm='0230')  or   (pub_yydm='0212')then
    begin
      if StrToInt(Edit2.text)>1 then
      begin
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if qry_fyxx.FieldByName('szxz').AsBoolean=True then
          begin
            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.text:='select * from zybl_zyyz_brjfd_ls where id1='+''''+
            qry_fyxx.FieldByName('id1').asstring+'''';
            DM_data.qry_pub.Open;
            id1:=DM_data.qry_pub.FieldByName('id').AsString;
            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.text:='select * from zybl_zyyz where id='+id1;
            DM_data.qry_pub.Open;
            if (DM_data.qry_pub.FieldByName('yzsx').AsString='临时') or (DM_data.qry_pub.FieldByName('lb').AsString='草药') then
            begin
                Application.MessageBox( '提示:临时医嘱和草药不能一次记几天的费用!', '提示', MB_ICONINFORMATION );
                qry_fyxx.EnableControls;
                Exit;
            end;
          end;

          qry_fyxx.Next;
        end;
        qry_fyxx.EnableControls;
      end;
    end;
//    if (pub_yydm='0003') or (pub_yydm='0234') or (pub_yydm='0229') or (pub_yydm='0230')  or   (pub_yydm='0212')
//    or (pub_yydm='0228') then
//    begin
      if Trim(ComboBox3.text)='全部' then
      begin

      end
      else if Trim(ComboBox3.text)='药品' then
      begin
        qry_fyxx.Filtered:=false;
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if (qry_fyxx.FieldByName('lb').AsString<>'药品') and  (qry_fyxx.FieldByName('lb').AsString<>'成药')
             and  (qry_fyxx.FieldByName('lb').AsString<>'产生')
             and  (qry_fyxx.FieldByName('lb').AsString<>'草药')
             and  (qry_fyxx.FieldByName('lb').AsString<>'药一') then
          begin
              qry1.Close;
              qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
              qry1.ExecSQL;
//            qry_fyxx.Edit;
//            qry_fyxx.FieldByName( 'szxz' ).AsBoolean := false;
//            qry_fyxx.Post;
          end;
          qry_fyxx.Next;
        end;
        qry_fyxx.Requery();
        qry_fyxx.Filter:='lb=''药品'' or lb=''成药'' or lb=''产生'' or lb=''草药'' or lb=''药一'' ';
        qry_fyxx.Filtered:=True;
        qry_fyxx.First;
        qry_fyxx.EnableControls;
      end
      else
      begin
        qry_fyxx.Filtered:=false;
        qry_fyxx.DisableControls;
        qry_fyxx.First;
        while not qry_fyxx.eof do
        begin
          if qry_fyxx.FieldByName('lb').AsString<>trim(ComboBox3.text) then
          begin
            qry1.Close;
            qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
            qry1.ExecSQL;
//            qry_fyxx.Edit;
//            qry_fyxx.FieldByName( 'szxz' ).AsBoolean := false;
//            qry_fyxx.Post;
          end;
          qry_fyxx.Next;
        end;
        qry_fyxx.Requery();
        qry_fyxx.Filter:='lb='+''''+trim(ComboBox3.text)+'''';
        qry_fyxx.Filtered:=True;
        qry_fyxx.First;
        qry_fyxx.EnableControls;
      end;
//    end;
    xyf_dm:='';
    zyf_dm:='';
    dm_data.qry_pub.close;
    dm_data.qry_pub.sql.text := 'select * from zysf_zydj where zyh=' + '''' + zyh_now + '''';
    dm_data.qry_pub.open;
    if dm_data.qry_pub.FieldByName('cybz').AsBoolean=true then
    begin
    Application.MessageBox( '提示:该病人已办理出院！不能记费!', '提示', MB_ICONINFORMATION );
    Abort;
    end;
    qfxe := dm_data.qry_pub.fieldbyname( 'zdjf' ).asfloat;

    hjje := StrToFloat( DBGridEh1.GetFooterValue( 0, DBGridEh1.Columns[8] ) );
    if ( pub_yydm <> '0015' ) then
    begin
      //---------calmhawk---2011-06-13------修改 zfy 为  zfze-----
      if dm_data.qry_pub.FieldByName( 'yjze' ).AsFloat -
      dm_data.qry_pub.FieldByName( 'zfze' ).AsFloat -
      hjje * strtoint( edit2.text ) < 0 - qfxe - pub_cjje then
      begin
        Application.MessageBox( '提示:该病人本次记费后将超过最大欠费限额！不能记费!', '提示', MB_ICONINFORMATION );
        Abort;
      end;
    end;

    if ( trim( edit2.text ) <> '' ) and ( strtoint( trim( edit2.text ) ) > 0 ) then
    begin
      if yzjfbxzys=False
      then  //如果不是万源中医院，需要弹出医生选择框
      try
        application.createform( Tfrm_fygsys, frm_fygsys );
        frm_fygsys.ad_ysdm.parameters.parambyname( 'bqdm' ).value := pub_bqdm;
        frm_fygsys.ad_ysdm.parameters.parambyname( 'ksdm' ).value := pub_ksdm;
        //frm_fygsys.ad_ysdm.parameters.parambyname( 'zgys' ).value := Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + trim( frm_zxypyz.sp_brxx.FieldByName( 'zgys' ).asstring ) + '''';
        DM_data.qry_pub.Open;
        if not DM_data.qry_pub.IsEmpty then
          frm_fygsys.ad_ysdm.parameters.parambyname( 'zgysmc' ).value := Trim( frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring ) + '_' + Trim( DM_data.qry_pub.FieldByName( 'mc' ).asstring )
        else
          frm_fygsys.ad_ysdm.parameters.parambyname( 'zgysmc' ).value := '';
        frm_fygsys.ad_ysdm.open;
        frm_fygsys.DBComboBox1.Items.Clear;
        frm_fygsys.ad_ysdm.First;
        while not frm_fygsys.ad_ysdm.eof do
        begin
          frm_fygsys.dbcombobox1.Items.Add( frm_fygsys.ad_ysdm.FieldByName( 'mc' ).asstring );
          frm_fygsys.ad_ysdm.Next;
        end;
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text:='select * from sys_brzkxx where zyh='+''''+
        zyh_now+'''';
        dm_data.qry_pub.open;
        if not dm_data.qry_pub.isempty then
        begin
          ssks:= dm_data.qry_pub.fieldbyname('ksdm').asstring;
        end;
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text:='select kdys,b.mc kdysmc from zybl_zyyz a,sys_czy b where a.kdys=b.dm and  zyh='+''''+
        zyh_now+''''+' and kdks in'+
        ' (select bqzydm from  sys_bqzyfl where bqdm='+''''+pub_bqdm+''''+')';
        dm_data.qry_pub.open;

        if not dm_data.qry_pub.isempty then
        begin
          frm_fygsys.ad_ysdm.Locate( 'mc', dm_data.qry_pub.fieldbyname( 'kdysmc' ).asstring, [loPartialKey] );
          frm_fygsys.dbComboBox1.ItemIndex := frm_fygsys.dbComboBox1.Items.IndexOf( frm_fygsys.ad_ysdm.FieldByName( 'mc' ).AsString );
        end
        else
        begin
          frm_fygsys.ad_ysdm.Locate( 'mc', frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring, [loPartialKey] );
          frm_fygsys.dbComboBox1.ItemIndex := frm_fygsys.dbComboBox1.Items.IndexOf( frm_fygsys.ad_ysdm.FieldByName( 'mc' ).AsString );
        end;
        frm_fygsys.showmodal;
      finally
        frm_fygsys.free;
      end
      else
      ysdm:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
      if ysdm <> '' then
      begin
        if Trim(xyf_dm)<>'' then
        begin
          for I := 0 to ComboBox1.Items.Count - 1 do
          begin
            if Pos( xyf_dm, ComboBox1.Items[i] ) > 0 then
            begin
              ComboBox1.ItemIndex := i;
            end;
          end;
        end;
        if Trim(zyf_dm)<>'' then
        begin
          for I := 0 to ComboBox2.Items.Count - 1 do
          begin
            if Pos( zyf_dm, ComboBox2.Items[i] ) > 0 then
            begin
              ComboBox2.ItemIndex := i;
            end;
          end;
        end;
        for I := 0 to StrToInt( Trim( edit2.text ) ) - 1 do
        begin
          if qry_fyxx.State in [dsedit] then
             qry_fyxx.Post;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='select distinct plxh from zybl_zyyz_brjfd_ls '+
                                   ' where zyh='+''''+zyh_now+''''+
                                   ' and czydm='+''''+pub_czydm+''' and szxz=1';
          DM_data.qry_pub.Open;
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            if yzjfbxzys=true then
            begin
              qry_cx_kdys.close;
              qry_cx_kdys.sql.Text:='select b.kdys from zybl_zyyz_brjfd_ls a,zybl_zyyz b '+
                                   ' where  a.zyh='+''''+zyh_now+''''+
                                   ' and charindex('',''+convert(varchar,b.id)+'','','',''+a.id+'','')>0 and a.zyh=b.zyh and a.czydm='+''''+pub_czydm+''''+' and a.plxh='+''''+
                                   DM_data.qry_pub.FieldByName('plxh').asstring+'''';
              qry_cx_kdys.open;
              if not qry_cx_kdys.IsEmpty then
              ysdm:=qry_cx_kdys.FieldByName('kdys').asstring;
              if pub_yydm='0246' then   //兴宁特殊修改，计费默认主管医生
              begin
                if Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring)<>'' then
                begin
                  ysdm:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
                end;
              end;
            end;
          sp_yzjf.Close;
          sp_yzjf.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
          sp_yzjf.Parameters.ParamByName( '@zyh' ).value := zyh_now;
          sp_yzjf.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
          sp_yzjf.Parameters.ParamByName( '@yfdm' ).Value := Copy( Trim( ComboBox1.Text ), 1, 4 );
          sp_yzjf.Parameters.ParamByName( '@kdys' ).Value := ysdm;
          sp_yzjf.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date + i );
          sp_yzjf.Parameters.ParamByName( '@sczt' ).Value := '1';
          sp_yzjf.Parameters.ParamByName( '@zyfdm' ).Value := Copy( Trim( ComboBox2.Text ), 1, 4 );
          sp_yzjf.Parameters.ParamByName( '@plxh' ).Value := DM_data.qry_pub.FieldByName('plxh').asstring;
          sp_yzjf.ExecProc;
          sczt := sp_yzjf.Parameters.ParamByName( '@sczt' ).Value;
          if sczt<>'0' then
            Break;
          DM_data.qry_pub.Next;
          end;
          if (sczt='0') and (pub_yydm='0234') then
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text:='select *  from   zybl_zyjfbz  where  zyh= '+''''+zyh_now+
            ''''+' and  convert(varchar,rq,112)='+''''+ formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date + i )+
            '''';
            DM_data.qry_pub.Open ;
            if DM_data.qry_pub.IsEmpty then
            begin
              DM_data.qry_pub.Append;
              DM_data.qry_pub.FieldByName('tmh').AsString :=  frm_zxypyz.sp_brxx.FieldByName('tmh').AsString ;
              DM_data.qry_pub.FieldByName('zyh').AsString := frm_zxypyz.sp_brxx.FieldByName('zyh').AsString ;
              DM_data.qry_pub.FieldByName('bqdm').AsString :=  pub_bqdm ;
              DM_data.qry_pub.FieldByName('brxm').AsString :=  frm_zxypyz.sp_brxx.FieldByName('brxm').AsString;
              DM_data.qry_pub.FieldByName('rq').AsDateTime := frm_zxypyz.dT_zxsj.Date + i;
              formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date + i );
              DM_data.qry_pub.FieldByName('bz').AsString := '1';
              DM_data.qry_pub.Post;
            end;
          end;
          if ( sczt = '0' ) and ( i = StrToInt( Trim( edit2.text ) ) - 1 ) then
          begin
            application.MessageBox( '成功计费！！', '提示', mb_ok + mb_iconinformation );
            sfkx:='1';
            frm_zxypyz.sp_dryz.close;
            frm_zxypyz.sp_dryz.Parameters.ParamByName( '@zyh' ).value := zyh_now;
            frm_zxypyz.sp_dryz.Open;
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text:='delete from zybl_zyyz_brjfd_ls where czydm='+''''+pub_czydm+'''';
            DM_data.qry_pub.ExecSQL;
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text:='delete from zyxyf_zycfmx_zbsj where cfbh in ( select cfbh from zysf_zyfymx_zbsj where zyh='+''''+zyh_now+''''+
            ' and jfph='+''''+qry_fymx.FieldByName('jfph').asstring+''')';
            DM_data.qry_pub.ExecSQL;
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text:='delete from zyxyf_zycfzb_zbsj where cfbh in ( select cfbh from zysf_zyfymx_zbsj where zyh='+''''+zyh_now+''''+
            ' and jfph='+''''+qry_fymx.FieldByName('jfph').asstring+''')';
            DM_data.qry_pub.ExecSQL;
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text:='delete from bqkf_zycfmx_zbsj where cfbh in ( select cfbh from zysf_zyfymx_zbsj where zyh='+''''+zyh_now+''''+
            ' and jfph='+''''+qry_fymx.FieldByName('jfph').asstring+''')';
            DM_data.qry_pub.ExecSQL;
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text:='delete from bqkf_zycfzb_zbsj where cfbh in ( select cfbh from zysf_zyfymx_zbsj where zyh='+''''+zyh_now+''''+
            ' and jfph='+''''+qry_fymx.FieldByName('jfph').asstring+''')';
            DM_data.qry_pub.ExecSQL;
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text:='delete from zysf_zyfymx_zbsj where zyh='+''''+zyh_now+''''+
            ' and jfph='+''''+qry_fymx.FieldByName('jfph').asstring+'''';
            DM_data.qry_pub.ExecSQL;
            if qybqfjfy=true then
            begin
              sp_cx_bdfy.First;
              while not sp_cx_bdfy.eof do
              begin
                if sp_cx_bdfy.FieldByName('xz').AsBoolean=true then
                begin
                  sp_in_bdfymx.Close;
                  sp_in_bdfymx.Parameters.Refresh;
                  sp_in_bdfymx.Parameters.ParamByName('@czydm').Value:=pub_czydm;
                  sp_in_bdfymx.Parameters.ParamByName('@zyh').Value:=zyh_now;
                  sp_in_bdfymx.Parameters.ParamByName('@kdys').Value:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
                  sp_in_bdfymx.Parameters.ParamByName('@fydm').Value:= sp_cx_bdfy.FieldByName('fydm').AsString;
                  if Trim(sp_cx_bdfy.FieldByName('fysl').AsString)<>'' then
                  begin
                    sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := sp_cx_bdfy.FieldByName('fysl').AsInteger;
                  end
                  else
                  begin
                     sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := 1;
                  end;
                  sp_in_bdfymx.Parameters.ParamByName('@kdks').Value := Trim(frm_zxypyz.sp_brxx.fieldbyname( 'ksdm' ).asstring);
                  sp_in_bdfymx.ExecProc;
                end;
                sp_cx_bdfy.Next;
              end;
              sp_cx_bdfy1.First;
              while not sp_cx_bdfy1.eof do
              begin
                if sp_cx_bdfy1.FieldByName('xz').AsBoolean=true then
                begin
                  sp_in_bdfymx.Close;
                  sp_in_bdfymx.Parameters.Refresh;
                  sp_in_bdfymx.Parameters.ParamByName('@czydm').Value:=pub_czydm;
                  sp_in_bdfymx.Parameters.ParamByName('@zyh').Value:=zyh_now;
                  sp_in_bdfymx.Parameters.ParamByName('@kdys').Value:= Trim(frm_zxypyz.sp_brxx.fieldbyname( 'zgys' ).asstring);
                  sp_in_bdfymx.Parameters.ParamByName('@fydm').Value:= sp_cx_bdfy1.FieldByName('fydm').AsString;
                  if Trim(sp_cx_bdfy.FieldByName('fysl').AsString)<>'' then
                  begin
                    sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := sp_cx_bdfy1.FieldByName('fysl').AsInteger;
                  end
                  else
                  begin
                     sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := 1;
                  end;
                  sp_in_bdfymx.Parameters.ParamByName('@kdks').Value := Trim(frm_zxypyz.sp_brxx.fieldbyname( 'ksdm' ).asstring);
                  sp_in_bdfymx.ExecProc;
                end;
                sp_cx_bdfy1.Next;
              end;
            end;
            self.close;
          end
          else
          if ( sczt <> '0' ) then
          begin
            application.MessageBox( pchar( sczt + '！！！' ), '提示', mb_ok + mb_iconwarning );
//            if pub_yydm<>'0234' then
//            self.close;
          end;
        end;
      end
      else
        application.MessageBox( '请先确定费用归属医生！！', '提示', mb_ok + mb_iconinformation );
    end
    else
    begin
      application.MessageBox( '请确定记费天数大于0！！', '提示', mb_ok + mb_iconinformation );
    end;
  //DBGridEh1.Height:=DBGridEh1.Height-panel3.Height;
end;

procedure Tfrm_yzfyqd.Button5Click(Sender: TObject);
begin
  sfkx:='1';
  Panel3.Visible:=false;
  DBGridEh1.Width:=frm_yzfyqd.Width-5;
  BitBtn1.Enabled:=true;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:='delete from zyxyf_zycfmx_zbsj where cfbh in ( select cfbh from zysf_zyfymx_zbsj where zyh='+''''+zyh_now+''''+
  ' and jfph='+''''+qry_fymx.FieldByName('jfph').asstring+''')';
  DM_data.qry_pub.ExecSQL;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:='delete from zyxyf_zycfzb_zbsj where cfbh in ( select cfbh from zysf_zyfymx_zbsj where zyh='+''''+zyh_now+''''+
  ' and jfph='+''''+qry_fymx.FieldByName('jfph').asstring+''')';
  DM_data.qry_pub.ExecSQL;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:='delete from bqkf_zycfmx_zbsj where cfbh in ( select cfbh from zysf_zyfymx_zbsj where zyh='+''''+zyh_now+''''+
  ' and jfph='+''''+qry_fymx.FieldByName('jfph').asstring+''')';
  DM_data.qry_pub.ExecSQL;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:='delete from bqkf_zycfzb_zbsj where cfbh in ( select cfbh from zysf_zyfymx_zbsj where zyh='+''''+zyh_now+''''+
  ' and jfph='+''''+qry_fymx.FieldByName('jfph').asstring+''')';
  DM_data.qry_pub.ExecSQL;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:='delete from zysf_zyfymx_zbsj where zyh='+''''+zyh_now+''''+
  ' and jfph='+''''+qry_fymx.FieldByName('jfph').asstring+'''';
  DM_data.qry_pub.ExecSQL;
end;

procedure Tfrm_yzfyqd.Button6Click(Sender: TObject);
begin
//   qry_fyxx.Filtered := False;
    if Button6.Caption='全选' then
    begin
      qry_fyxx.DisableControls;
      qry_fyxx.First;
      while not qry_fyxx.eof do
      begin
        qry1.Close;
        qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'1'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
        qry1.ExecSQL;
//        qry_fyxx.Edit;
//        qry_fyxx.FieldByName('szxz').Value := true;
//        qry_fyxx.Post;
        qry_fyxx.Next;
      end;
      qry_fyxx.First;
      qry_fyxx.EnableControls;
      Button6.Caption:='全不选';
      if (ckbxLongTime.Visible )and (ckbxShortTime.Visible) and (pub_yydm='0240') then
      begin
        ckbxLongTime.State := cbchecked;
        ckbxShortTime.State := cbchecked;
      end;
    end
    else
    begin
      qry_fyxx.DisableControls;
      qry_fyxx.First;
      while not qry_fyxx.eof do
      begin
        qry1.Close;
        qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
        qry1.ExecSQL;
//        qry_fyxx.Edit;
//        qry_fyxx.FieldByName('szxz').Value := false;
//        qry_fyxx.Post;
        qry_fyxx.Next;
      end;
      qry_fyxx.First;
      qry_fyxx.EnableControls;
      Button6.Caption:='全选';
      if (not ckbxLongTime.Visible) and (not ckbxShortTime.Visible) and (pub_yydm='0240') then
      begin
        ckbxLongTime.State := cbUnchecked;
        ckbxShortTime.State := cbUnchecked;
      end;
    end;
    qry_fyxx.Requery();
//    qry_fyxx.Close;
//    qry_fyxx.Parameters.ParamByName( 'zyh' ).value := zyh_now;
//    qry_fyxx.Parameters.ParamByName( 'czydm' ).value := pub_czydm;
//    qry_fyxx.open;
end;

procedure Tfrm_yzfyqd.ckbxjcjyClick(Sender: TObject);
var
  vfltrStr:string;
begin
   if ckbxjcjy.Checked then   //勾选检查检验
   begin
     vfltrStr := 'lb=''检查'' or lb=''检验''' ;
   end else
   begin
     vfltrStr := 'lb<>''检查''and lb<>''检验''';
   end;
   qry_fyxx.Filtered := False;
  if (vfltrStr<>'') then
  begin
    qry_fyxx.Filter   := vfltrStr;
    qry_fyxx.Filtered := True;
  end;
end;

procedure Tfrm_yzfyqd.ckbxLongTimeClick(Sender: TObject);
begin
  ActiveFilterString;
end;

procedure Tfrm_yzfyqd.ckbxShortTimeClick(Sender: TObject);
begin
  ActiveFilterString;
end;

procedure Tfrm_yzfyqd.ComboBox3Change(Sender: TObject);
begin
  ActiveFilterString;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_yzfyqd.DBGridEh1CellClick
  作者:      yangshuai
  日期:      2017.04.06
  参数:      Column: TColumnEh
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_yzfyqd.DBGridEh1CellClick(Column: TColumnEh);
var ph_1,zyh_1,szxz_1,id1_1,fzph_1:string;
jd :Integer;
var ph_2,zyh_2,id1_2:string;
begin
  if sfkx='1' then
  begin
//     qry_fyxx.Edit;
//    qry_fyxx.FieldByName('szxz').Value := not qry_fyxx.FieldByName('szxz').Value;
//    qry_fyxx.Post;
    ph_1:= qry_fyxx.FieldByName('ph').Value;
    zyh_1:=qry_fyxx.FieldByName('zyh').Value;
    szxz_1:=not qry_fyxx.FieldByName('szxz').Value;
    id1_1:= qry_fyxx.FieldByName('id1').Value;
    fzph_1:= qry_fyxx.FieldByName('fzph').value;  //添加了分组批号
    jd:= DBGridEh1.DataSource.DataSet.RecNo;
    //四会中医院在医嘱计费时 中药批量选择     wangwei 20170406
    if (pub_yydm='0261') and (qry_fyxx.FieldByName('lb').AsString='草药' )then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text:='select a.lb,a.szxz,a.xmdm,a.xmmc,a.dw,sum(a.sl) sl,a.dj,a.czks,a.ksmc,a.zyh,a.zt, id1,max(a.bz) bz,max(zhsfsj) zhsfsj,      ' +
                                'max(yf) yf,max(yl) yl,max(a.yldw) yldw,max(a.yytj) yytj,a.yzsx,b.srsl,b.mrsl,case b.tzbz when 1 then ''停止'' else '''' end as tzbz,   ' +
                                'b.tzrq,a.ph,Isnull(b.fzph,'''')fzph    ' +
                                'FROM zybl_zyyz_brjfd_ls a left join zybl_zyyz b on a.ph=b.ph and a.zyh=b.zyh        ' +
                                'WHERE  a.zyh='+''''+zyh_1 +''''+' and a.czydm='+''''+pub_czydm+''''+' AND fzph='+''''+fzph_1+''''+'GROUP by  '+
                                'a.lb,a.szxz,a.xmdm,a.xmmc,a.dw,a.dj,a.czks,a.ksmc,a.zyh,a.zt,a.id1,a.yzsx,b.srsl,b.mrsl,b.tzbz,b.tzrq,a.ph ,b.fzph   '+
                                'ORDER by id1,a.ph,a.lb ';
      DM_data.qry_pub.open;

      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        ph_2:=   DM_data.qry_pub.FieldByName('ph').Value;
        zyh_2:=   DM_data.qry_pub.FieldByName('zyh').Value ;
        id1_2:=    DM_data.qry_pub.FieldByName('id1').Value  ;
        qry1.Close;
        qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+szxz_1+''''+' where ph=' + ''''+ph_2+ '''' + ' and     '+
                        'zyh=' + '''' +  zyh_2 + ''''+ ' and id1=' + '''' + id1_2 + '''';
        qry1.ExecSQL;
        DM_data.qry_pub.Next;
      end;
      qry_fyxx.Close;
      qry_fyxx.Parameters.ParamByName( 'zyh' ).value := zyh_now;
      qry_fyxx.Parameters.ParamByName( 'czydm' ).value := pub_czydm;
      qry_fyxx.open;
    end else
    begin
      if szxz_1='TRUE' then
      begin
         szxz_1 := '1';
      end
      else
      begin
         szxz_1 := '0';
      end;
      qry1.Close;
      qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+szxz_1+''''+' where ph=' + ''''+ ph_1 + '''' + ' and zyh=' + '''' +  zyh_1 + ''''+ ' and id1=' + '''' +  id1_1 + '''';
      qry1.ExecSQL;
      qry_fyxx.Close;
      qry_fyxx.Parameters.ParamByName( 'zyh' ).value := zyh_now;
      qry_fyxx.Parameters.ParamByName( 'czydm' ).value := pub_czydm;
      qry_fyxx.open;
    end;
    DBGridEh1.DataSource.DataSet.RecNo := jd;
    DBGridEh1.SetFocus();
  end;
end;


procedure Tfrm_yzfyqd.DBGridEh1DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState );
begin
  if not qry_fyxx.fieldbyname( 'szxz' ).asboolean then
    DBGridEh1.Canvas.Brush.Color := clSkyBlue;
  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_yzfyqd.DBGridEh4KeyPress(Sender: TObject; var Key: Char);
begin
  if not ( ( key in ['0'..'9', #8] ) ) then
  begin
    key := #0;
  end;
end;

procedure Tfrm_yzfyqd.Edit1KeyPress( Sender: TObject; var Key: Char );
begin
  if not ( ( key in ['0'..'9', #8] ) ) then
  begin
    key := #0;
  end;
end;

procedure Tfrm_yzfyqd.Edit2KeyPress( Sender: TObject; var Key: Char );
begin
  if not ( ( key in ['0'..'9', #8] ) ) then
  begin
    key := #0;
  end;
end;

procedure Tfrm_yzfyqd.FormCreate( Sender: TObject );
begin
  Application.OnMessage := nil;
  if pub_yydm = '0257' then
  begin
    DBgridEh1.columns[19].Visible:=true;
    DBgridEh1.columns[20].Visible:=true;
    DBgridEh1.columns[21].Visible:=true;
    DBgridEh1.columns[22].Visible:=true;
  end;
end;

// 夏茂林 2014-07-11 江油市人民医院药品计费（医嘱计费） 只显示药品和本科室项目
// 功能：删除临时表中的非药品和非本科室项目
procedure Tfrm_yzfyqd.DeleteNonMedicineItems(var zyh, czydm: string);
begin
  if pub_yydm = '0015' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.text:='delete from zybl_zyyz_brjfd_ls where zyh=' +
      #39 + zyh + #39 + ' and czydm= ' + #39 + czydm+ #39 +
      ' AND ( ( lb NOT IN (''药品'',''药一'',''成药'') AND czks <> '+ #39 +
      pub_ksdm + #39 +' ) OR lb IN (''产生'') )';
    DM_data.qry_pub.ExecSQL;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_yzfyqd.DeletejstpItems
  作者:      yangshuai
  日期:      2017.09.25
  参数:      var zyh, czydm: string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_yzfyqd.DeletejstpItems(var zyh, czydm: string);
begin
  if pub_yydm = '0271' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.text:='delete from zybl_zyyz_brjfd_ls  a ,sys_ypdm where zyh=' +
      #39 + zyh + #39 + ' and czydm= ' + #39 + czydm+ #39 +
      ' AND ( ( lb  IN (''药品'',''药一'',''成药'')) and   xmdm in'+
      ' ( select ypdm  from  sys_ypdm  where sfjsyp=1 or sfgzyp=1 or sfdmyp=1)';
    DM_data.qry_pub.ExecSQL;
  end;
end;

procedure Tfrm_yzfyqd.FormShow( Sender: TObject );
var
  Vn:Integer;
  Vph:string;
  i,tsjg,ts,ys: Integer;
  prv_zyfdm: string;
  const 
  cWeekCn:array[1..7] of string =
  ( '星期日','星期一','星期二','星期三','星期四','星期五','星期六');
 begin
     //20170227 与工程沟通后说所有的医院全部显示医嘱属性    wangwei
//  if (pub_yydm <> '0240') and (pub_yydm <> '0256') and (pub_yydm<>'0258') and (pub_yydm<>'0261')then
//  begin
//    rzgrpbxLongShort.Visible := False;
//    if Assigned(DbGridEh1.Columns[18] ) then
//    begin
//      DbGridEh1.Columns[18].Destroy;
//    end;
//    if Assigned(qry_fyxxyzsx ) then
//    begin
//      qry_fyxxyzsx.Destroy;
//    end;
//  end
//  else
//  begin
    qry_fyxx.SQL.text :=
      'select Isnull(b.fzph,'''') fzph,a.lb,a.szxz,a.xmdm,a.xmmc,a.dw,sum(a.sl) sl,a.dj,a.czks,a.ksmc,a.zyh,a.zt, id1,' +
      'max(a.bz) bz,max(zhsfsj) zhsfsj,max(yf) yf,max(yl) yl,max(a.yldw) yldw,max(a.yytj) yytj,a.yzsx,b.srsl,b.mrsl,case b.tzbz when 1 then ''停止'' else '''' end as tzbz,b.tzrq,a.ph ' +
      'from zybl_zyyz_brjfd_ls a left join zybl_zyyz b on a.ph=b.ph and a.zyh=b.zyh where  a.zyh=:zyh and a.czydm=:czydm ' +
      'group by a.lb,a.szxz,a.xmdm,a.xmmc,a.dw,a.dj,a.czks,a.ksmc,a.zyh,a.zt,a.id1,a.yzsx,b.srsl,b.mrsl,b.tzbz,b.tzrq,a.ph,b.fzph ' +
      'order by id1,a.ph,a.lb ' ;
//  end;
  //Button6.Top := DBGridEh1.Top + DBGridEh1.Height - 25; //调整全选按钮的位置
  qry_brjbxx_1.Close;
  //qry_brjbxx_1.Parameters.Refresh;
  qry_brjbxx_1.Parameters.ParamByName('zyh').Value:=zyh_now;
  qry_brjbxx_1.Open;
 // ShowMessage(qry_fyxx.SQL.text );
  qybqfjfy:=false;
  sfkx:='1';
  Panel3.Visible:=false;
  DBGridEh1.Width:=frm_yzfyqd.Width-5;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  qybqfjfy:=DM_data.qry_pub.FieldByName('qybqfjfy').AsBoolean;
  yzjfbxzys:=DM_data.qry_pub.FieldByName('yzjfbxzys').AsBoolean;
  if qybqfjfy=true then
  begin
    sp_cx_bdfy.close;
    sp_cx_bdfy.Parameters.Refresh;
    sp_cx_bdfy.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
    sp_cx_bdfy.Open;
    sp_cx_bdfy1.close;
    sp_cx_bdfy1.Parameters.Refresh;
    sp_cx_bdfy1.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
    sp_cx_bdfy1.Open;
  end
  else
  begin
//    DBGridEh5.Visible:=false;
//    DBGridEh4.Visible:=false;
    Panel2.Height:=85;
     Panel4.Visible:=false;
     Label10.Visible:=false;
//    Shape1.top:=Shape1.Top+180;
//    Label2.Top:= Label2.Top+180;
//    Label1.Top:= Label1.Top+180;
//    Label3.Top:= Label3.Top+180;
//    Button6.Top:= Button6.Top+180;
//    Button3.Top:= Button3.Top+180;
//    Label9.Top:= Label9.Top+180;
//    ComboBox3.Top:= ComboBox3.Top+180;
  end;
  if DM_data.qry_pub.FieldByName('yzkfyddjf').AsBoolean=true then
  begin
    sp_fyxx.Close;
    if jffs='0' then
    begin
      sp_fyxx.ProcedureName:='zybl_create_yzjfmx_fkf';  
    end
    else
    begin
      sp_fyxx.ProcedureName:='zybl_create_yzjfmx_kf';
    end;
    sp_fyxx.Parameters.Refresh;
    sp_fyxx.Parameters.ParamByName( '@zyh' ).Value := zyh_now;
    sp_fyxx.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date );
    sp_fyxx.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
    sp_fyxx.Parameters.ParamByName( '@ksdm' ).Value := pub_ksdm;
    sp_fyxx.Open;
  end
  else
  begin
    //ShowMessage(cWeekCn[DayOfWeek(Now)]);
    sp_fyxx.Close;
    sp_fyxx.ProcedureName:='zybl_create_yzjfmx';
    sp_fyxx.Parameters.Refresh;
    sp_fyxx.Parameters.ParamByName( '@zyh' ).Value := zyh_now;
    sp_fyxx.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyyMMdd', frm_zxypyz.dT_zxsj.Date );
    sp_fyxx.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
    sp_fyxx.Parameters.ParamByName( '@ksdm' ).Value := pub_ksdm;
    sp_fyxx.Open;
    DeleteNonMedicineItems(zyh_now, pub_czydm); // 夏茂林 2014-07-11 删除临时表中的非药品项目

  end;
  qry_fyxx.Close;
  qry_fyxx.Parameters.ParamByName( 'zyh' ).value := zyh_now;
  qry_fyxx.Parameters.ParamByName( 'czydm' ).value := pub_czydm;
  qry_fyxx.open;
  Vn := 0;
  if (pub_yydm = '0263') or (pub_yydm = '0264') then
  begin
    lbl_liquid.Visible := True;
    qry_fyxx.First;
    while not qry_fyxx.Eof do
    begin
      if qry_fyxx.FieldByName('fzph').AsString = '' then
      begin
        qry_fyxx.Next;
        Continue;
      end;
      if Vph <> Trim(qry_fyxx.FieldByName('fzph').AsString) then
      begin
        Vph := Trim(qry_fyxx.FieldByName('fzph' ).AsString);
        Vn := Vn + 1;
      end;
      qry_fyxx.Next;
    end;
    lbl_liquid.Caption := '本次计费液体共计 ' + IntToStr(Vn) + ' 组';
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text:='select * from SYS_BQKFGLFS where bqkfdm='+''''+pub_ksdm+'''';
  DM_data.qry_pub.Open;

  qry_fyxx.Filtered:=False;
  qry_fyxx.Filter:='lb=''材料''';
  qry_fyxx.Filtered:=True;
  if (DM_data.qry_pub.IsEmpty) and (not qry_fyxx.IsEmpty) then
  begin
    Application.MessageBox('该病区未启用病区库房，材料医嘱将无法计费！','提示',48);
    qry_fyxx.Filtered:=False;
    qry_fyxx.Filter:='lb<>''材料''';
    qry_fyxx.Filtered:=True;
  end
  else
  begin
    qry_fyxx.Filtered:=False;
  end;
  if qry_fyxx.RecordCount > 0 then
  begin
    qry_fyxx.First;
    while not qry_fyxx.eof do
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text:='select * from zybl_bsflb where lbmc='+''''+
                                Trim( qry_fyxx.FieldByName( 'lb' ).Asstring )+'''';

      DM_data.qry_pub.Open;


        if ( DM_data.qry_pub.RecordCount>0) or
          ( Trim( qry_fyxx.FieldByName( 'bz' ).Asstring ) = '自备' ) or
          (Trim( qry_fyxx.FieldByName( 'lb' ).Asstring )='药一') then
        begin
          qry1.Close;
          qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
          qry1.ExecSQL;
//          qry_fyxx.Edit;
//          qry_fyxx.FieldByName( 'szxz' ).AsBoolean := False;
//          qry_fyxx.Post;
        end;

        if (pos('星期',Trim( qry_fyxx.FieldByName( 'bz' ).Asstring )) > 0 ) and
          ( Trim( qry_fyxx.FieldByName( 'bz' ).Asstring ) <> '' ) and
          (pos(cWeekCn[DayOfWeek(frm_zxypyz.dT_zxsj.Date)],Trim( qry_fyxx.FieldByName( 'bz' ).Asstring ))<1 ) then

        begin
          qry1.Close;
          qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
          qry1.ExecSQL;
//          qry_fyxx.Edit;
//          qry_fyxx.FieldByName( 'szxz' ).AsBoolean := False;
//          qry_fyxx.Post;
        end;

        if ( pub_yydm = '0013' ) and (qry_fyxx.FieldByName( 'lb' ).Asstring = '药品') and (qry_fyxx.FieldByName( 'xmdm' ).Asstring = '01000001000357')
        and  (qry_fyxx.FieldByName( 'yl' ).AsFloat <>400) then
        begin
            qry1.Close;
            qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
            qry1.ExecSQL;
//          qry_fyxx.Edit;
//          qry_fyxx.FieldByName( 'szxz' ).AsBoolean := False;
//          qry_fyxx.Post;
        end;

        if ( pub_yydm = '0013' ) and (qry_fyxx.FieldByName( 'lb' ).Asstring = '药品') and (qry_fyxx.FieldByName( 'xmdm' ).Asstring = '01000001000357')
        and  (qry_fyxx.FieldByName( 'yl' ).AsFloat =400) then
        begin
          qry1.Close;
          qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'1'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
          qry1.ExecSQL;
//          qry_fyxx.Edit;
//          qry_fyxx.FieldByName( 'szxz' ).AsBoolean := true;
//          qry_fyxx.Post;
        end;
        if (pub_yydm='0046') and (qry_fyxx.FieldByName( 'lb' ).Asstring = '药品') then   //罗江县医院胰岛素
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text:='select * from sys_ypdm where yplb='+'''011304'''+
          ' and ypdm='+''''+Trim( qry_fyxx.FieldByName( 'xmdm' ).Asstring )+'''';
          DM_data.qry_pub.Open;
          if (not DM_data.qry_pub.IsEmpty) and  (qry_fyxx.FieldByName( 'yl' ).AsFloat <>400)
           and (qry_fyxx.FieldByName( 'yl' ).AsFloat <>300) then
          begin
            qry1.Close;
            qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
            qry1.ExecSQL;
//            qry_fyxx.Edit;
//            qry_fyxx.FieldByName( 'szxz' ).AsBoolean := false;
//            qry_fyxx.Post;
          end;
          if (not DM_data.qry_pub.IsEmpty) and ( (qry_fyxx.FieldByName( 'yl' ).AsFloat =400)
              or (qry_fyxx.FieldByName( 'yl' ).AsFloat =300) ) then
          begin
              qry1.Close;
              qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'1'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
              qry1.ExecSQL;
//            qry_fyxx.Edit;
//            qry_fyxx.FieldByName( 'szxz' ).AsBoolean := true;
//            qry_fyxx.Post;
          end;
        end;

        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='select * from sys_ypyf where rtrim(mc)='+''''+
                                   Trim(qry_fyxx.FieldByName( 'yf' ).AsString)+'''';
        DM_data.qry_pub.Open;

        if not DM_data.qry_pub.IsEmpty then
        begin
          tsjg:=DM_data.qry_pub.FieldByName('sjjg').AsInteger;
          if (tsjg<>0) and (Trim(qry_fyxx.FieldByName( 'zhsfsj' ).AsString)<>'') then
          begin
            DM_data.qry_pub.close;
            DM_data.qry_pub.SQL.text:='select datediff(day,'+''''+Trim(qry_fyxx.FieldByName( 'zhsfsj' ).AsString)
                                      +''''+','+''''+formatdatetime( 'yyyy-MM-dd', frm_zxypyz.dT_zxsj.Date )+
                                      ''''+') ts';
                                      
            DM_data.qry_pub.Open;
            ts:=DM_data.qry_pub.FieldByName('ts').AsInteger;
            ys:=ts mod (tsjg+1);
            if ys<>0 then
            begin
              qry1.Close;
              qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
              qry1.ExecSQL;
//              qry_fyxx.Edit;
//              qry_fyxx.FieldByName( 'szxz' ).AsBoolean := false;
//              qry_fyxx.Post;
            end;
          end;
                                                                 
        end;

        qry_fyxx.Next;
    end;
    qry_fyxx.Requery();
    qry_fyxx.First;
  end;

  ComboBox1.Items.Clear;
  DM_data.qry_pub.Close;
  if pub_yydm='0158' then
  begin
    DM_data.qry_pub.SQL.Text := 'select * from sys_ksdm where kssx in ('+#13+'02'+#13+','+#13+'04'+#13+')';
  end
  else
  begin
    DM_data.qry_pub.SQL.Text := 'select * from sys_ksdm where kssx ='+#13+'02'+#13;
  end;
  DM_data.qry_pub.Open;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox1.Items.Add( DM_data.qry_pub.FieldByName( 'dm' ).asstring + '_' + trim( DM_data.qry_pub.FieldByName( 'mc' ).asstring ) );
    DM_data.qry_pub.Next;
  end;
  //  prv_zyfdm := Trim( qry_cx.FieldByName( 'chyf' ).AsString );
  if pub_yydm <> '0020' then
  begin
    for I := 0 to ComboBox1.Items.Count - 1 do
    begin
      if Pos( pub_zyxyfdm, ComboBox1.Items[i] ) > 0 then
      begin
        ComboBox1.ItemIndex := i;
      end;
    end;
  end
  else
  begin
    if ( formatdatetime( 'hh:mm', frm_func.curr_date ) >= '07:50' ) and ( formatdatetime( 'hh:mm', frm_func.curr_date ) <= '17:50' ) then
    begin
      for I := 0 to ComboBox1.Items.Count - 1 do
      begin
        if Pos( pub_zyxyfdm, ComboBox1.Items[i] ) > 0 then
        begin
          ComboBox1.ItemIndex := i;
        end;
      end;
    end
    else
    begin
      for I := 0 to ComboBox1.Items.Count - 1 do
      begin
        if Pos( pub_zyxyfdm, ComboBox1.Items[i] ) < 1 then
        begin
          ComboBox1.ItemIndex := i;
        end;
      end;
    end;
  end;

  ComboBox2.Items.Clear;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_ksdm where kssx=''02'' or kssx=''04''';
  DM_data.qry_pub.Open;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    ComboBox2.Items.Add( DM_data.qry_pub.FieldByName( 'dm' ).asstring + '_' + trim( DM_data.qry_pub.FieldByName( 'mc' ).asstring ) );
    DM_data.qry_pub.Next;
  end;
  with qry_cx do
  begin
    Close;
    SQL.Text := 'select * from sys_ksdm where dm =' + #39 + pub_ksdm + #39;
    Open;
  end;
  prv_zyfdm := Trim( qry_cx.FieldByName( 'cyyf' ).AsString );
  if pub_yydm <> '0020' then
  begin
    for I := 0 to ComboBox2.Items.Count - 1 do
    begin
      if Pos( prv_zyfdm, ComboBox2.Items[i] ) > 0 then
      begin
        ComboBox2.ItemIndex := i;
      end;
    end;
  end
  else
  begin
    if ( formatdatetime( 'hh:mm', frm_func.curr_date ) >= '07:50' ) and ( formatdatetime( 'hh:mm', frm_func.curr_date ) <= '17:50' ) then
    begin
      for I := 0 to ComboBox2.Items.Count - 1 do
      begin
        if Pos( prv_zyfdm, ComboBox2.Items[i] ) > 0 then
        begin
          ComboBox2.ItemIndex := i;
        end;
      end;
    end
    else
    begin
      for I := 0 to ComboBox2.Items.Count - 1 do
      begin
        if Pos( prv_zyfdm, ComboBox2.Items[i] ) > 0 then
        begin
          ComboBox2.ItemIndex := i;
        end;
      end;
    end;
  end;

  if ( pub_yydm = '0015' ) or ( pub_yydm = '0013' ) then
    for I := 0 to ComboBox2.Items.Count - 1 do
    begin
      if Pos( Copy( Trim( ComboBox1.Text ), 1, 4 ), ComboBox2.Items[i] ) > 0 then
      begin
        ComboBox2.ItemIndex := i;
      end;
    end;

  Edit2.text := '1';
  DBGridEh1.SetFocus;

  if qry_fyxx.RecordCount=0 then
    DBGridEh1.Enabled := False
  else
    DBGridEh1.Enabled := True;

  if pub_yydm <>'0136' then  //石泉中医院代码
  begin
    btn_CodePrint.Visible:=False;
  end else
  begin
    btn_CodePrint.Visible:=True;
    FLis_IP := get_lisIP;
  end;
  if pub_yydm='0271' then  //掇刀医院
  begin
    ckbxjcjy.Visible:=True;
    ckbxjcjy.Checked:=False;
    ckbxjcjyClick(nil) ;
  end else
  begin
    ckbxjcjy.Visible:=False;
  end;
end;

procedure Tfrm_yzfyqd.qry_fymxAfterScroll(DataSet: TDataSet);
begin
  if  Trim(qry_fymx.FieldByName('cfbh').AsString)<>'' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from zyxyf_zycfzb_zbsj where cfbh='+''''+Trim(qry_fymx.FieldByName('cfbh').AsString)+
    ''''+' and zyh='+''''+Trim(qry_fymx.FieldByName('zyh').AsString)+''''+' and jfph='+''''+Trim(qry_fymx.FieldByName('jfph').AsString)+'''';
    DM_data.qry_pub.Open;
    if not DM_data.qry_pub.IsEmpty then
    begin
      qry_cfmx.Close;
      qry_cfmx.SQL.Text:='select c.ypmc,a.ypsl*isnull(b.cfjl,1) ypsl,a.ypdw,a.ypdj,a.ypdj*a.ypsl*isnull(b.cfjl,1) je from zyxyf_zycfmx_zbsj a,zyxyf_zycfzb_zbsj b,sys_ypdm c where '+
      ' a.cfbh=b.cfbh and a.ypdm=c.ypdm and a.cfbh='+''''+Trim(qry_fymx.FieldByName('cfbh').AsString)+
      '''';
      qry_cfmx.Open;
    end
    else
    begin
      qry_cfmx.Close;
      qry_cfmx.SQL.Text:='select c.ypmc,a.ypsl,a.ypdw,a.ypdj,a.ypdj*a.ypsl je from bqkf_zycfmx_zbsj a,bqkf_zycfzb_zbsj b,sys_ypdm c where '+
      ' a.cfbh=b.cfbh and a.ypdm=c.ypdm and a.cfbh='+''''+Trim(qry_fymx.FieldByName('cfbh').AsString)+
      '''';
      qry_cfmx.Open;
    end;
  end
  else
  begin
    qry_cfmx.close;
  end;

end;

procedure Tfrm_yzfyqd.qry_fyxxCalcFields(DataSet: TDataSet);
begin
  if qry_fyxx.fieldbyname( 'szxz' ).asboolean then
    qry_fyxx.fieldbyname( 'fyje' ).asfloat :=
    qry_fyxx.fieldbyname( 'sl' ).asfloat * qry_fyxx.fieldbyname( 'dj' ).asfloat;
end;

procedure Tfrm_yzfyqd.sp_fyxxAfterOpen( DataSet: TDataSet );
begin
  //bitbtn1.Enabled := not sp_fyxx.isempty
end;

procedure Tfrm_yzfyqd.ActiveFilterString;
var
  fltrStr: string;
begin
  fltrStr := '';
  if ckbxLongTime.Checked and (not ckbxShortTime.Checked) then
  begin
    fltrStr := 'yzsx=' + QuotedStr('长期') + '';
    qry_fyxx.DisableControls;
    qry_fyxx.First;
    while (not qry_fyxx.eof)do
    begin
        qry1.Close;
        qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
        qry1.ExecSQL;
        qry1.Close;         //20170227在zybl_zyyz_brjfd_ls表中无zysx字段；这句修改语句中把zysx改成了yzsx  wangwei  （与临时一样）
        qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'1'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + ''''+' and yzsx=''长期''';
        qry1.ExecSQL;
//      qry_fyxx.Edit;
//      if qry_fyxx.FieldByName('yzsx').AsString='长期' then
//        qry_fyxx.FieldByName('szxz').Value := True
//      else
//        qry_fyxx.FieldByName('szxz').Value := False;
//      qry_fyxx.Post;
      qry_fyxx.Next;
    end;
    qry_fyxx.First;
    qry_fyxx.EnableControls;
    qry_fyxx.requery();
  end
  else if (not ckbxLongTime.Checked) and ckbxShortTime.Checked then
  begin
    fltrStr := 'yzsx=' + QuotedStr('临时') + '';
    qry_fyxx.DisableControls;
    qry_fyxx.First;
    while (not qry_fyxx.eof)do
    begin
        qry1.Close;
        qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'0'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + '''';
        qry1.ExecSQL;
        qry1.Close;
        qry1.SQL.Text:= 'update  zybl_zyyz_brjfd_ls  set szxz='+''''+'1'+''''+' where ph=' + ''''+ qry_fyxx.FieldByName('ph').Value + '''' + ' and zyh=' + '''' +  qry_fyxx.FieldByName('zyh').Value + ''''+' and yzsx=''临时''';
        qry1.ExecSQL;
//      qry_fyxx.Edit;
//      if  qry_fyxx.FieldByName('yzsx').AsString='临时' then
//        qry_fyxx.FieldByName('szxz').Value := True
//      else
//      qry_fyxx.FieldByName('szxz').Value := False;
//      qry_fyxx.Post;
      qry_fyxx.Next;
    end;
    qry_fyxx.First;
    qry_fyxx.EnableControls;
    qry_fyxx.requery();
  end;

  if Trim(ComboBox3.text)='全部' then
    //do nothing
  else if Trim(ComboBox3.text)='药品' then
  begin
    if fltrStr <> '' then
      fltrStr := '(' +fltrStr + ' and lb=''药品'') or (' +
                    fltrStr + ' and lb=''成药'') or (' +
                    fltrStr + ' and lb=''产生'') or (' +
                    fltrStr + ' and lb=''药一'') '
    else
      fltrStr := ' lb=''药品'' or lb=''成药'' or lb=''产生'' or lb=''药一'' '
  end
  else if Trim(ComboBox3.text)='草药' then
  begin
    if fltrStr <> '' then
      fltrStr := '(' +fltrStr + ' and lb=''产生'') or (' + fltrStr + ' and lb=''草药'') '
    else
      fltrStr := 'lb=''产生'' or lb=''草药'' '
  end
  else
  begin
    if fltrStr <> '' then
      fltrStr := '(' + fltrStr + ') and (lb='''+trim(ComboBox3.text)+''') '
    else
      fltrStr := ' lb='''+trim(ComboBox3.text)+''' '
  end;

  qry_fyxx.Filtered := False;
  if (fltrStr<>'') then
  begin
    qry_fyxx.Filter   := fltrStr;
    qry_fyxx.Filtered := True;
  end;
end;

end.

