unit P_bqzk;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, StdCtrls, Buttons, Db, DBTables, DBCtrls, QuickRpt, Qrctrls, p_dm,
    ADODB,p_tjyz;

type
    Tfrm_bqzk = class(TForm)
        Panel1: TPanel;
        Label1: TLabel;
        Panel2: TPanel;
        Label3: TLabel;
        Image1: TImage;
        Label2: TLabel;
        Label4: TLabel;
        Label5: TLabel;
        Label6: TLabel;
        Label7: TLabel;
        Label8: TLabel;
        Label9: TLabel;
        Label10: TLabel;
        Label11: TLabel;
        brxm: TEdit;
        bch: TEdit;
        tmh: TEdit;
        zyh: TEdit;
        xb: TEdit;
        zfy: TEdit;
        fylb: TEdit;
        ye: TEdit;
        zyj: TEdit;
        BitBtn1: TBitBtn;
        BitBtn2: TBitBtn;
        cb_ksmc: TComboBox;
        Label12: TLabel;
        Label14: TLabel;
        wjf: TEdit;
        sp_se_kscx: TADOStoredProc;
        sp_up_zk: TADOStoredProc;
        temp_sp_se_bczy: TADOStoredProc;
        sp_se_cwqk: TADOStoredProc;
    sp_dryz: TADOStoredProc;
    sp_tzyz: TADOStoredProc;
    sp_yzsj: TADOStoredProc;
        procedure BitBtn2Click(Sender: TObject);
        procedure BitBtn1Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure bchExit(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure brxmEnter(Sender: TObject);
        procedure brxmExit(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
        temp_tmh: string;
    end;

var
    frm_bqzk: Tfrm_bqzk;
    tzyzsj:string;
    icudm:string;

implementation

uses P_Main, P_login, p_func,p_pub_sj;

{$R *.DFM}

procedure Tfrm_bqzk.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure Tfrm_bqzk.BitBtn1Click(Sender: TObject);
var
  img1: Timage;
  zkxx,temp_bch, xb, hljb, zk, yksdm, xksdm: string;
  temp_zkjsbz: boolean;
  _yzsx,_id,_zhzxsj,_fzph,_yzsj:string;
  yztzsj: TDateTime;
  sczt:Integer;

  zdscyzToIcu:Boolean;
begin
    zdscyzToIcu := False;
    xksdm := copy(cb_ksmc.Text, 1, 4);

    if xksdm = icudm then
    begin
      if MessageBox(Handle, '是否自动生成病人未停止医嘱到ICU？', '提示',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
      begin
        zdscyzToIcu := True;
      end;
    end; 

    sp_se_kscx.Locate(trim('mc'), trim(xksdm), [loPartialKey]);
    temp_zkjsbz := true;
    while temp_zkjsbz do
    begin
        temp_sp_se_bczy.Close;
        temp_sp_se_bczy.Parameters.ParamByName('@sr_ksdm').value := pub_bqdm;
        temp_sp_se_bczy.active := true;
        if temp_sp_se_bczy.locate('zyh', zyh.text, []) then
        begin
            temp_bch := temp_sp_se_bczy['bcbh'];
            yksdm := temp_sp_se_bczy.fieldbyname('ksdm').asstring;
            with sp_up_zk do
            begin
                close;
                Parameters.Refresh;
                Parameters.ParamByName('@zyh').value := trim(zyh.text);
                Parameters.parambyname('@tmh').value := trim(tmh.text);
                Parameters.parambyname('@bch').value := temp_bch;
                Parameters.parambyname('@yksdm').value := yksdm;
                Parameters.parambyname('@ksdm').value := xksdm;

                Parameters.parambyname('@czydm').value := pub_czydm;
                Parameters.parambyname('@sczt').value := 'a';
                if Assigned(Parameters.FindParam('@zdscyzToIcu')) and zdscyzToIcu then
                  Parameters.FindParam('@zdscyzToIcu').Value := 1;
                ExecProc;
            end;
            if sp_up_zk.Parameters.parambyname('@sczt').value = '1' then
            begin
//              sp_dryz.Close;
//              sp_dryz.Parameters.ParamByName( '@zyh' ).Value := trim(zyh.text);
//              sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '全部';
//              sp_dryz.Open;
//              //停止所有长期医嘱
//
//              if Application.MessageBox( '下一步选择停止医嘱时间，' + '是否使用当前时间作停止时间?'+'点击‘否’选择停止时间。',
//                   '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1 ) = IDYES then
//              begin
//                yztzsj := Frm_func.curr_date();
//              end
//              else
//              begin
//                yztzsj := p_pub_sj.func_sjxz();
//              end;
//              if  yztzsj = strtodatetime( '1900-01-01' ) then
//                tzyzsj := formatdatetime( 'yyyy-mm-dd hh:mm:ss',Frm_func.curr_date)
//              else
//               tzyzsj := formatdatetime( 'yyyy-mm-dd hh:mm:ss', yztzsj );
//              //时间停止医嘱
//              sp_yzsj.Close;
//              sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := tzyzsj;
//              sp_yzsj.ExecProc;
//              _yzsj := formatdatetime( 'yyyymmdd', sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value );
//              sp_dryz.First;
//              while not sp_dryz.Eof do
//              begin
//                _yzsx := Trim( sp_dryz.FieldByName( 'yzsx' ).AsString );
//                 if ( not sp_dryz.FieldByName( 'tzbz' ).asboolean ) and
//                  ( sp_dryz.fieldbyname( 'zfrq' ).asdatetime <= 0 ) and
//                  ( sp_dryz.fieldbyname( 'id' ).AsString <> '' ) and
//                  ( _yzsx = '长期' )
//                 then
//                 begin
//                   _id := sp_dryz.FieldByName( 'id' ).AsString;
//                   _zhzxsj := sp_dryz.FieldByName( 'zhzxsj' ).AsString;
//                   _fzph := sp_dryz.FieldByName( 'fzph' ).AsString;
//                   if _fzph <> '' then
//                   begin
//                     sp_tzyz.Close;
//                     sp_tzyz.Parameters.Refresh;
//                     sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := trim(zyh.text);
//                     sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
//                     sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
//                     if Trim(frm_main.SP_SE_BRJBQK.FieldByName('zgys').asstring)='' then
//                       sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm
//                     else
//                       sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := Trim(frm_main.SP_SE_BRJBQK.FieldByName('zgys').asstring);
//                     sp_tzyz.Parameters.ParamByName( '@id' ).Value := 0;
//                     sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := _fzph;
//                     sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 8;
//                     sp_tzyz.ExecProc;
//                     sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
//                     if sczt <> 0 then
//                     application.MessageBox( '医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
//                   end
//                   else
//                   begin
//                     sp_tzyz.Close;
//                     sp_tzyz.Parameters.Refresh;
//                     sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := trim(zyh.text);
//                     sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
//                     sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
//                     if Trim(frm_main.SP_SE_BRJBQK.FieldByName('zgys').asstring)='' then
//                       sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm
//                     else
//                       sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := Trim(frm_main.SP_SE_BRJBQK.FieldByName('zgys').asstring);
//                     sp_tzyz.Parameters.ParamByName( '@id' ).Value := _id;
//                     sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := '';
//                     sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 8;
//                     sp_tzyz.ExecProc;
//                     sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
//                     if sczt <> 0 then
//                     application.MessageBox( '医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
//                   end;
//
//                 end;
//                sp_dryz.Next;
//              end;

//              Application.CreateForm(Tfrm_tjyz,frm_tjyz);
//              try
//                frm_tjyz.brxm := brxm.Text;
//                frm_tjyz.tmh := tmh.Text;
//                frm_tjyz.zyh := trim(zyh.text);
//                frm_tjyz.gbbsx := True;
//                frm_tjyz.Caption := '长期医嘱提交 ( 当前病人：卡号:' + tmh.Text + '  姓名: ' + trim( brxm.Text ) + ' )';
//                //frm_tjyz.show;
//                frm_tjyz.ShowModal;
//                //frm_tjyz.FormShow(nil);
//                //frm_tjyz.cxButton3.Click;
//              finally
//                frm_tjyz.Free;
//              end;
              //删除虚拟转科
              DM_data.qry_pub.close;
              DM_data.qry_pub.sql.text:='select *  from sys_brzkxx where zyh='+''''+trim(zyh.text)+'''';
              DM_data.qry_pub.open;
              if not DM_data.qry_pub.IsEmpty then
              begin
                DM_data.qry_pub.close;
                DM_data.qry_pub.sql.text:='delete  from sys_brzkxx with(rowlock) where zyh='+''''+trim(zyh.text)+'''';
                DM_data.qry_pub.ExecSQL;
              end;
              //删除虚拟转科结束
              //遂宁中医院转科保留医嘱
//              if (pub_yydm='0234') and (zdscyzToIcu=true) then
//              begin
//                DM_data.qry_pub.Close;
//                DM_data.qry_pub.SQL.Text :=
//                Format('update zybl_zyyz with(rowlock) set kdks=''%s'',kdrq=getdate() where yzsx=''长期'' and zyh=''%s''  and tzbz=0',
//                      [icudm,trim(zyh.text)]);
//                DM_data.qry_pub.ExecSQL;
//              end;


              zkxx:=frm_func.func_in_blsjzkmx(trim(tmh.text),trim(zyh.text),'4');
              if zkxx<>'1' then
                application.messagebox(pchar(zkxx), '信息', mb_ok + mb_iconinformation);
                frm_main.sp_se_bczy.Locate('bcbh', temp_bch, []);
                zk := 'br' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
                xb := 'xb' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
                hljb := 'hl' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
              //清除性别
                img1 := (frm_main.FindComponent(xb) as Timage);
                img1.Picture.Assign(nil);
                img1 := (frm_main.FindComponent(hljb) as Timage);
                img1.Picture.Assign(nil);
                (frm_main.FindComponent(zk) as Tlabel).caption := '';
                frm_main.tmh.text := '';
                frm_main.zyh.text := '';
                frm_main.brxm.text := '';
                frm_main.xb.text := '';
                frm_main.nl.Text := '';
                frm_main.dwmc.text := '';
                frm_main.fylb.Text := '';
                frm_main.ryqk.Text := '';
                frm_main.ryrq.Text := '';
                frm_main.ryzd.Text := '';
                frm_main.zzys.Text := '';
                frm_main.ksmc.Text := '';
                close;
            end
            else
            begin
                application.MessageBox('转科失败!', '错误：', 0 + 64);
                temp_zkjsbz := false;
            end
        end
        else
            temp_zkjsbz := false;
    end;
    close;
end;

procedure Tfrm_bqzk.FormShow(Sender: TObject);
var
    ls_zfy, ls_zyj: real;
begin
    sp_se_kscx.Active := true;
    if not (frm_main.pub_td = 'a') then
    begin
        brxm.text := frm_main.brxm.text;
        tmh.Text := frm_main.tmh.Text;
        bch.Text := frm_main.pub_bcbh;
        fylb.Text := frm_main.fylb.Text;
        xb.Text := frm_main.xb.Text;
        zyh.Text := frm_main.zyh.Text;
        zfy.text := floattostr(frm_main.sp_se_brjbqk.fieldbyname('zfy').asfloat);
        zyj.text := floattostr(frm_main.sp_se_brjbqk.fieldbyname('yjze').asfloat);
        ls_zfy := frm_main.sp_se_brjbqk.fieldbyname('zfy').asfloat;
        ls_zyj := frm_main.sp_se_brjbqk.fieldbyname('yjze').asfloat;
        ye.Text := floattostr(ls_zyj - ls_zfy);
        if ls_zyj >= ls_zfy then
            ye.Font.Color := clwindowtext
        else
            ye.Font.Color := clred;
        panel1.Enabled := false;
    end
    else
    begin
        brxm.text := '';
        tmh.Text := '';
        bch.Text := '';
        fylb.Text := '';
        xb.Text := '';
        zyh.Text := '';
        zfy.text := '0';
        zyj.text := '0';
        ye.Text := '0';
        panel1.Enabled := true;
    end;
    with sp_se_kscx do
    begin
        close;
        parameters.parambyname('@sr_ksdm').value := pub_ksdm;
        active := true;
    end;
    if sp_se_kscx.IsEmpty then
        showmessage('空')
    else
        while not sp_se_kscx.Eof do
        begin
            cb_ksmc.Items.Add(sp_se_kscx['dm'] + '_' + sp_se_kscx['mc']);
            sp_se_kscx.Next;
        end;
    cb_ksmc.ItemIndex := 0;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select icudm from sys_xt_kg';
  DM_data.qry_pub.Open;
  icudm := Trim(DM_data.qry_pub.FieldByName('icudm').AsString);
end;

procedure Tfrm_bqzk.bchExit(Sender: TObject);
var
    temp_zyh: string;
    ls_zfy, ls_zyj: real;
begin
    frm_func.restorecolor(sender);
//if key=13 then
    begin
        with sp_se_cwqk do
        begin
            close;
            parameters.ParamByName('@sr_bcbh').value := bch.Text;
            parameters.parambyname('@sr_ksdm').value := pub_bqdm;
            parameters.parambyname('@sc_zy').value := 'a';
            ExecProc;
        end;
        if sp_se_cwqk.parameters.parambyname('@sc_zy').value = 'y' then
        begin
            frm_main.sp_se_bczy.locate('bcbh', bch.text, []);
            brxm.text := frm_main.sp_se_bczy['brxm'];
            temp_tmh := frm_main.sp_se_bczy['tmh'];
            with frm_main.sp_se_brjbqk do
            begin
                close;
                parameters.ParamByName('@tmh').value := temp_tmh;
                parameters.parambyname('@brxm').value := brxm.text;
                active := true;
            end;
            tmh.Text := TEMP_TMH;
//       bch.Text:=frm_main.pub_bcbh;
            fylb.Text := frm_main.sp_se_brjbqk.fieldbyname('lbmc').asstring;
            xb.Text := frm_main.sp_se_brjbqk.fieldbyname('brxb').asstring;
            zyh.Text := frm_main.sp_se_brjbqk.fieldbyname('zyh').asstring;
            zfy.text := floattostr(frm_main.sp_se_brjbqk.fieldbyname('zfy').asfloat);
            zyj.text := floattostr(frm_main.sp_se_brjbqk.fieldbyname('yjze').asfloat);
            ls_zfy := frm_main.sp_se_brjbqk.fieldbyname('zfy').asfloat;
            ls_zyj := frm_main.sp_se_brjbqk.fieldbyname('yjze').asfloat;
            ye.Text := floattostr(ls_zyj - ls_zfy);
            if ls_zyj >= ls_zfy then
                ye.Font.Color := clwindowtext
            else
                ye.Font.Color := clred;
            panel1.Enabled := false;

            cb_ksmc.setfocus;
        end;
        if (sp_se_cwqk.parameters.parambyname('@sc_zy').value = 'w') and not BitBtn2.Focused then
        begin
            Application.MessageBox('本科室没有此病床编号！', '转床错误', 0 + 16);
            bch.setfocus;
        end;
        if (sp_se_cwqk.parameters.parambyname('@sc_zy').value = 'n') and not BitBtn2.Focused then
        begin
            Application.MessageBox('本科室没有此病人！', '转床错误', 0 + 16);
            bch.setfocus;
        end;
    end;
end;

procedure Tfrm_bqzk.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activeControl, true, true);
end;

procedure Tfrm_bqzk.brxmEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_bqzk.brxmExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);
end;

end.
