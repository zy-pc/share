unit p_bqwfypl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  ADODB, StdCtrls;

type
  Tfrm_bqwfypl = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel3: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Button1: TButton;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    qry_plh: TADOQuery;
    ds_plh: TDataSource;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    qry_ypmx: TADOQuery;
    ds_ypmx: TDataSource;
    Button2: TButton;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    qry_mx: TADOQuery;
    DS_mx: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure qry_plhAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qry_mxAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    Ffybz:Integer;
  public
    { Public declarations }
    property fybz:Integer read Ffybz write Ffybz;
  end;

var
  frm_bqwfypl: Tfrm_bqwfypl;
  f_ypsl:integer;
  f_zyh:string;
  f_ypdm: string;
  f_yplb: string;
  f_ypdw:string;
  f_oldcfbh:string;
  f_ypdwid:Integer;
  f_ypbzbl:real;
  f_ypdj:Real;
  f_kccgj:real;
  sfjsyp:Boolean;
  sfdmyp:Boolean;
  sfgzyp:Boolean;
  sfzfyp:Boolean;
  f_pldh:string;
  f_lsj:Real;
  i_pldh:string;
  f_yytj:string;
  f_ok:string;
  f_yfdm:string;   //药房代码
  i_cflb:string;
  f_ypph:string;
  f_ypxq:TDateTime;
  f_rkdh:string;
implementation


uses p_dm,p_bqtycfhj, p_icf;



{$R *.dfm}

procedure Tfrm_bqwfypl.Button1Click(Sender: TObject);
begin
   //f_ypdm:= '';
    //f_ypdw:= '';
    //f_ypdwid:= qry_ypmx.FieldByName('dwid').asinteger;
    //f_ypbzbl := qry_ypmx.fieldbyname('zhl').asfloat;
    //f_ypdj := qry_ypmx.fieldbyname('lsj').asfloat;
    //f_kccgj := qry_ypmx.fieldbyname('kccgj').asfloat;
    //sfdmyp:=   qry_ypmx.fieldbyname('sfdmyp').asboolean;
    //sfgzyp:=   qry_ypmx.fieldbyname('sfgzyp').asboolean;
    //sfjsyp:=   qry_ypmx.fieldbyname('sfjsyp').asboolean;
    //sfzfyp:=   qry_ypmx.fieldbyname('sfzfyp').asboolean;
    //f_pldh:=qry_plh.FieldByName('pldh').AsString;
    //f_lsj:=qry_ypmx.FieldByName('lsj').AsFloat;
    //f_yytj:= qry_ypmx.FieldByName('yytj').asstring;
    f_ok:='0';
    Close;
end;

procedure Tfrm_bqwfypl.Button2Click(Sender: TObject);
var sfjsyp,sfdmyp,sfmzyp:Boolean;
begin

    if (Frm_bqtycfhj.qry_mx.State = dsedit) or (Frm_bqtycfhj.qry_mx.State = dsinsert) then
      Frm_bqtycfhj.qry_mx.Cancel;
    f_ypdm := qry_ypmx.FieldByName('ypdm').asstring;
    if (Frm_bqtycfhj.qry_mx.isempty=False)  then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_ypdm where ypdm='+''''+
      Frm_bqtycfhj.qry_mx.FieldByName('ypdm').asstring+'''';
      DM_data.qry_pub.Open;
      sfjsyp:=DM_data.qry_pub.FieldByName('sfjsyp').AsBoolean;
      sfdmyp:=DM_data.qry_pub.FieldByName('sfdmyp').AsBoolean;
      sfmzyp:=DM_data.qry_pub.FieldByName('sfmzyp').AsBoolean;
      if sfjsyp=true then
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text:='select * from sys_ypdm where ypdm='+''''+
        f_ypdm+'''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.FieldByName('sfjsyp').asboolean<>true then
        begin
          application.MessageBox('已选药品为精神药品，不能再加入非精神药品到当前退药处方!', '注意', 16);
          exit;
        end;
      end;
      if sfdmyp=true then
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text:='select * from sys_ypdm where ypdm='+''''+
        f_ypdm+'''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.FieldByName('sfdmyp').asboolean<>true then
        begin
          application.MessageBox('已选药品为毒性药品，不能再加入非毒性药品到当前退药处方!', '注意', 16);
          exit;
        end;
      end;

      if sfmzyp=true then
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text:='select * from sys_ypdm where ypdm='+''''+
        f_ypdm+'''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.FieldByName('sfmzyp').asboolean<>true then
        begin
          application.MessageBox('已选药品为麻醉药品，不能再加入非麻醉药品到当前退药处方!', '注意', 16);
          exit;
        end;
      end;

      if (sfmzyp=false) and (sfdmyp=false) and (sfjsyp=false) then
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text:='select * from sys_ypdm where ypdm='+''''+
        f_ypdm+'''';
        DM_data.qry_pub.Open;
        if (DM_data.qry_pub.FieldByName('sfmzyp').asboolean=true) or
           (DM_data.qry_pub.FieldByName('sfjsyp').asboolean=true) or
           (DM_data.qry_pub.FieldByName('sfdmyp').asboolean=true)  then
        begin
          application.MessageBox('已选药品为普通药品，不能再加入毒麻精神等特殊药品到当前退药处方!', '注意', 16);
          exit;
        end;
      end;

    end;
    if Frm_bqtycfhj.qry_mx.Locate('ypdm', f_ypdm, []) then
    begin
      application.MessageBox('已有该药品，不能重复输入!', '注意', 16);
      abort;
    end;
//    Frm_bqtycfhj.sp_tyyp.close;
//    Frm_bqtycfhj.sp_tyyp.Parameters.Refresh;
//    Frm_bqtycfhj.sp_tyyp.Open;
//    Frm_bqtycfhj.sp_tyyp.Locate('ypdm', f_ypdm, []);
//    if Frm_bqtycfhj.sp_tyyp.Locate('ypdm', f_ypdm, []) = false then
//    begin
//      application.MessageBox('该病人此批量中没有该药品,不能退该药品!', '注意', 16);
//      abort;
//    end;
//    if qry_ypmx.FieldByName('lsj').asfloat = 0 then
//    begin
//      application.MessageBox('药品价格有误，不能划价!', '注意', 16);
//      abort;
//    end;
f_oldcfbh:= qry_ypmx.FieldByName('cfbh').asstring;
    f_ypdm:= qry_ypmx.FieldByName('ypdm').asstring;
    f_ypdw:= qry_ypmx.FieldByName('ypdw').asstring;
    f_ypdwid:= qry_ypmx.FieldByName('dwid').asinteger;
    f_ypbzbl := qry_ypmx.fieldbyname('zhl').asfloat;
    f_ypdj := qry_ypmx.fieldbyname('lsj').asfloat;
    f_kccgj := qry_ypmx.fieldbyname('kccgj').asfloat;
    f_ypph:= qry_ypmx.fieldbyname('ypph').AsString;
    f_ypxq:= qry_ypmx.fieldbyname('ypxq').AsDateTime;
    f_rkdh:= qry_ypmx.fieldbyname('rkdh').AsString;
    f_ypsl:= qry_ypmx.fieldbyname('ypsl').asinteger;
    sfdmyp:=   qry_ypmx.fieldbyname('sfdmyp').asboolean;
    sfgzyp:=   qry_ypmx.fieldbyname('sfgzyp').asboolean;
    sfjsyp:=   qry_ypmx.fieldbyname('sfjsyp').asboolean;
    sfzfyp:=   qry_ypmx.fieldbyname('sfzfyp').asboolean;
    f_pldh:=qry_plh.FieldByName('pldh').AsString;
    f_yfdm:=qry_plh.FieldByName('yfdm').AsString;     //药房代码
    f_lsj:=qry_ypmx.FieldByName('lsj').AsFloat;
    f_yytj:= qry_ypmx.FieldByName('yytj').asstring;
    Frm_bqtycfhj.v_cflb:= qry_ypmx.FieldByName('cflb').asstring;
    f_ok:='1';
    Close;


end;

procedure Tfrm_bqwfypl.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
Button2.Click;
end;

procedure Tfrm_bqwfypl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if f_ok<>'1' then
    begin
      f_ypdm:= '';
      f_ypdw:= '';
      f_pldh:=qry_plh.FieldByName('pldh').AsString;
    end;
end;

procedure Tfrm_bqwfypl.FormShow(Sender: TObject);
var
  ofc:TOffice;
begin
//  if i_cflb='' then
//  begin
    qry_plh.close;
    if (pub_yydm='0240') and ((pub_ksdm=ofc.sssdm) or (pub_ksdm=ofc.mzkdm)) then
    begin
      qry_plh.sql.text:='select distinct b.pldh,b.kssj,b.yfdm,c.mc yfmc from'+
                      ' zyxyf_zycfzb a,zyxyf_pltzb b,sys_ksdm c where a.zyh='+''''+f_zyh+''''+ ' and kdks=' + QuotedStr(pub_ksdm) +
                      ' and a.pldh like ''%'+i_pldh+'%'''+' and  a.pldh=b.pldh and b.yfdm=c.dm and a.fybz=0 and b.clbz=0 and (a.cflb=''zy'' or a.cflb=''zn'')';

    end
    else
    begin
      qry_plh.sql.text:='select distinct b.pldh,b.kssj,b.yfdm,c.mc yfmc from'+
                      ' zyxyf_zycfzb a,zyxyf_pltzb b,sys_ksdm c where a.zyh='+''''+f_zyh+''''+
                      ' and a.pldh like ''%'+i_pldh+'%'''+' and  a.pldh=b.pldh and b.yfdm=c.dm and a.fybz=0 and b.clbz=0 and (a.cflb=''zy'' or a.cflb=''zn'')';
    end;
    qry_plh.Open;
    f_ok:='';
//  end
//  else
//  begin
//    qry_plh.close;
//    qry_plh.sql.text:='select distinct b.pldh,b.kssj,b.yfdm,c.mc yfmc from'+
//                      ' zyxyf_zycfzb a,zyxyf_pltzb b,sys_ksdm c where a.zyh='+''''+f_zyh+''''+
//                      ' and a.pldh like ''%'+i_pldh+'%'''+' and  a.pldh=b.pldh and b.yfdm=c.dm and a.fybz=0 and b.clbz=0 and (a.cflb='+''''+i_cflb+''''+')';
//    qry_plh.Open;
//    f_ok:='';
//  end;


end;



procedure Tfrm_bqwfypl.qry_mxAfterScroll(DataSet: TDataSet);
begin
  if i_cflb='' then
  begin
    qry_ypmx.close;
    qry_ypmx.sql.text:='select b.cfbh, d.ypdm,d.ypgg,d.ypmc,b.yytj,sum(b.ypsl*isnull(a.cfjl,1)) ypsl,b.kccgj,b.ypph,b.rkdh,b.ypxq,'+
                       'b.ypdj lsj,zyyfdw ypdw,zydwid dwid,zyyfzhl zhl,sfjsyp,sfdmyp,sfgzyp,sfzfyp,a.cflb'+
                       ' from'+
                       ' zyxyf_zycfzb a,zyxyf_zycfmx b,zyxyf_pltzb c,sys_ypdm d '+
                       ' where a.zyh='+''''+f_zyh+''''+' and a.cfbh=b.cfbh and a.fybz=0'+' and d.ypdm='+''''+qry_mx.FieldByName('ypdm').asstring+''''+
                       ' and (a.cflb=''zy'' or a.cflb=''zn'') and  a.pldh=c.pldh and b.ypdm=d.ypdm and c.pldh='+''''+qry_plh.FieldByName('pldh').asstring+''''+
                       ' group by b.cfbh, d.ypdm,d.ypgg,d.ypmc,b.yytj,b.kccgj,b.ypdj,b.ypph,b.rkdh,b.ypxq,d.zylsj,zyyfdw,zydwid,zyyfzhl,kfcgj,sfjsyp,sfdmyp,sfgzyp,sfzfyp,a.cflb having sum(b.ypsl*isnull(a.cfjl,1))>0 ';
    qry_ypmx.Open;
  end
  else
  begin
    qry_ypmx.close;
    qry_ypmx.sql.text:='select b.cfbh, d.ypdm,d.ypgg,d.ypmc,b.yytj,sum(b.ypsl*isnull(a.cfjl,1)) ypsl,b.kccgj,b.ypph,b.rkdh,b.ypxq,'+
                       'b.ypdj lsj,zyyfdw ypdw,zydwid dwid,zyyfzhl zhl,sfjsyp,sfdmyp,sfgzyp,sfzfyp,a.cflb'+
                       ' from'+
                       ' zyxyf_zycfzb a,zyxyf_zycfmx b,zyxyf_pltzb c,sys_ypdm d '+
                       ' where a.zyh='+''''+f_zyh+''''+' and a.cfbh=b.cfbh and a.fybz=0'+' and d.ypdm='+''''+qry_mx.FieldByName('ypdm').asstring+''''+
                       ' and a.cflb='+''''+i_cflb+''''+' and  a.pldh=c.pldh and b.ypdm=d.ypdm and c.pldh='+''''+qry_plh.FieldByName('pldh').asstring+''''+
                       ' group by b.cfbh, d.ypdm,d.ypgg,d.ypmc,b.yytj,b.kccgj,b.ypdj,b.ypph,b.rkdh,b.ypxq,d.zylsj,zyyfdw,zydwid,zyyfzhl,kfcgj,sfjsyp,sfdmyp,sfgzyp,sfzfyp,a.cflb having sum(b.ypsl*isnull(a.cfjl,1))>0 ';
    qry_ypmx.Open;
  end;
end;

procedure Tfrm_bqwfypl.qry_plhAfterScroll(DataSet: TDataSet);
begin
   qry_mx.close;
    qry_mx.sql.text:='SELECT distinct d.ypdm,d.ypgg,d.ypmc,b.yytj,sum(b.ypsl*isnull(a.cfjl,1) )ypsl,b.kccgj lsj,zyyfdw ypdw,b.ypph,b.ypxq '+
                     'FROM zyxyf_zycfzb a,zyxyf_zycfmx b,zyxyf_pltzb c,sys_ypdm d '+
                     'WHERE a.zyh='+''''+f_zyh+''''+' and a.cfbh=b.cfbh and a.fybz=0  and  a.pldh=c.pldh and b.ypdm=d.ypdm and c.pldh='+''''+qry_plh.FieldByName('pldh').asstring+''''+
                     'GROUP by  d.ypgg,d.ypmc,b.yytj,b.kccgj,zyyfdw,kfcgj,b.ypph,b.ypxq,d.ypdm';
    qry_mx.Open;
//  if i_cflb='' then
//  begin
//    qry_ypmx.close;
//    qry_ypmx.sql.text:='select b.cfbh, d.ypdm,d.ypgg,d.ypmc,b.yytj,sum(b.ypsl*isnull(a.cfjl,1)) ypsl,b.kccgj,b.ypph,b.rkdh,b.ypxq,'+
//                       'b.ypdj lsj,zyyfdw ypdw,zydwid dwid,zyyfzhl zhl,sfjsyp,sfdmyp,sfgzyp,sfzfyp,a.cflb'+
//                       ' from'+
//                       ' zyxyf_zycfzb a,zyxyf_zycfmx b,zyxyf_pltzb c,sys_ypdm d '+
//                       ' where a.zyh='+''''+f_zyh+''''+' and a.cfbh=b.cfbh and a.fybz=0'+
//                       ' and (a.cflb=''zy'' or a.cflb=''zn'') and  a.pldh=c.pldh and b.ypdm=d.ypdm and c.pldh='+''''+qry_plh.FieldByName('pldh').asstring+''''+
//                       ' group by b.cfbh, d.ypdm,d.ypgg,d.ypmc,b.yytj,b.kccgj,b.ypdj,b.ypph,b.rkdh,b.ypxq,d.zylsj,zyyfdw,zydwid,zyyfzhl,kfcgj,sfjsyp,sfdmyp,sfgzyp,sfzfyp,a.cflb having sum(b.ypsl*isnull(a.cfjl,1))>0 ';
//    qry_ypmx.Open;
//  end
//  else
//  begin
//    qry_ypmx.close;
//    qry_ypmx.sql.text:='select b.cfbh, d.ypdm,d.ypgg,d.ypmc,b.yytj,sum(b.ypsl*isnull(a.cfjl,1)) ypsl,b.kccgj,b.ypph,b.rkdh,b.ypxq,'+
//                       'b.ypdj lsj,zyyfdw ypdw,zydwid dwid,zyyfzhl zhl,sfjsyp,sfdmyp,sfgzyp,sfzfyp,a.cflb'+
//                       ' from'+
//                       ' zyxyf_zycfzb a,zyxyf_zycfmx b,zyxyf_pltzb c,sys_ypdm d '+
//                       ' where a.zyh='+''''+f_zyh+''''+' and a.cfbh=b.cfbh and a.fybz=0'+
//                       ' and a.cflb='+''''+i_cflb+''''+' and  a.pldh=c.pldh and b.ypdm=d.ypdm and c.pldh='+''''+qry_plh.FieldByName('pldh').asstring+''''+
//                       ' group by b.cfbh, d.ypdm,d.ypgg,d.ypmc,b.yytj,b.kccgj,b.ypdj,b.ypph,b.rkdh,b.ypxq,d.zylsj,zyyfdw,zydwid,zyyfzhl,kfcgj,sfjsyp,sfdmyp,sfgzyp,sfzfyp,a.cflb having sum(b.ypsl*isnull(a.cfjl,1))>0 ';
//    qry_ypmx.Open;
//  end;
end;

end.
