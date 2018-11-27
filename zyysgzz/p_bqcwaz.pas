unit p_bqcwaz;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, DBTables, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, ADODB;

type
    Tfrm_bqcwaz = class(TForm)
        DataSource1: TDataSource;
        Panel1: TPanel;
        Label1: TLabel;
        bch: TEdit;
        bqgl_up_cwaz: TADOStoredProc;
        bqgl_se_dazbr: TADOStoredProc;
        GroupBox1: TGroupBox;
        DBGrid1: TDBGrid;
        BitBtn1: TBitBtn;
        BitBtn2: TBitBtn;
        BitBtn3: TBitBtn;
        BitBtn4: TBitBtn;
        procedure BitBtn2Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure BitBtn1Click(Sender: TObject);
        procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure FormActivate(Sender: TObject);
        procedure bchEnter(Sender: TObject);
        procedure bchExit(Sender: TObject);
        procedure DBGrid1DblClick(Sender: TObject);
        procedure BitBtn3Click(Sender: TObject);
        procedure BitBtn4Click(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    frm_bqcwaz: Tfrm_bqcwaz;

implementation

uses P_login, P_main, P_dm, P_func, p_wazbr, p_jbqk;

{$R *.DFM}

procedure Tfrm_bqcwaz.BitBtn2Click(Sender: TObject);
begin
    frm_main.pub_cwaz := 'a';
    close;
end;

procedure Tfrm_bqcwaz.FormShow(Sender: TObject);
begin

    bch.Text := frm_main.pub_bcbh;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+
                              pub_bqdm+''''+' and bcbh='+''''+trim(frm_main.pub_bcbh)+'''';
    DM_data.qry_pub.Open;
    bch.Text:=Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
    with bqgl_se_dazbr do
    begin
        close;
        parameters.ParamByName('@ksdm').value := pub_bqdm; //病区
        active := true;
    end;
    GroupBox1.Caption := '&1.待安置病人：' + inttostr(bqgl_se_dazbr.RecordCount) + '人';
end;

procedure Tfrm_bqcwaz.BitBtn1Click(Sender: TObject);
var
    zkxx,zk, xb, hljb: string;
    img1: Timage;
    dqzyh,dqtmh: string;
    zkzcnum: Integer;
begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'select * from zysf_zyzkzc WHERE zyh = '''+trim(bqgl_se_dazbr['zyh'])+''' AND tmh = '''+trim(bqgl_se_dazbr['tmh'])+''' ';
    DM_data.qry_pub.Open;
    zkzcnum := DM_data.qry_pub.RecordCount;

    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='select * from sys_kscwsz where  tybz=0 and   bqdm='+''''+pub_bqdm+
                              ''''+' and yybch='+''''+trim(bch.text)+'''';
    DM_data.qry_pub.Open;
    if not bqgl_se_dazbr.isempty then
    begin
        with bqgl_up_cwaz do
        begin
            close;
            parameters.Refresh;          //add by zhangli
            dqzyh := trim(bqgl_se_dazbr['zyh']);
            dqtmh := trim(bqgl_se_dazbr['tmh']);
            parameters.ParamByName('@zyh').value := trim(bqgl_se_dazbr['zyh']);
            parameters.parambyname('@tmh').value := trim(bqgl_se_dazbr['tmh']);
            parameters.parambyname('@bch').value := DM_data.qry_pub.FieldByName('bcbh').asstring;
            if Parameters.FindParam('@czydm') <> nil then
              parameters.ParamByName('@czydm').value := pub_czydm;
            parameters.parambyname('@bclb').value := pub_xcbz;
            parameters.parambyname('@sczt').value := 'a';

            ExecProc;
        end;
        frm_main.pub_cwaz := bqgl_up_cwaz.parameters.ParamByName('@sczt').value;
        if bqgl_up_cwaz.parameters.ParamByName('@sczt').value = '1' then
        begin
            zkxx:=frm_func.func_in_blsjzkmx(trim(bqgl_se_dazbr['tmh']),trim(bqgl_se_dazbr['zyh']),'1');
            if zkxx<>'1' then
              application.messagebox(pchar(zkxx), '信息', mb_ok + mb_iconinformation);

            frm_main.sp_se_bczy.Locate('bcbh', Trim(bch.Text), []);
            zk := 'br' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
            xb := 'xb' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
            hljb := 'hl' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
            (frm_main.FindComponent(zk) as Tlabel).caption := trim(bqgl_se_dazbr['brxm']);
            img1 := (frm_main.FindComponent(xb) as Timage);
            if (bqgl_se_dazbr.fieldbyname('brnl').asfloat <= 12) and (bqgl_se_dazbr['brxm'] <> '') then
            begin
                if img1 <> nil then
                    imgimport(img1, frm_main.imagelist2, 5)
            end
            else
                if trim(bqgl_se_dazbr.fieldbyname('brxb').asstring) = '男' then
                begin
                    if img1 <> nil then
                        imgimport(img1, frm_main.imagelist2, 3)
                end
                else
                    if trim(bqgl_se_dazbr.fieldbyname('brxb').asstring) = '女' then
                        if img1 <> nil then
                            imgimport(img1, frm_main.imagelist2, 4);
          //加入护理级别
            img1 := (frm_main.FindComponent(hljb) as Timage);
            imgimport(img1, frm_main.imagelist2, 0);
            bqgl_se_dazbr.close;
            bqgl_se_dazbr.parameters.ParamByName('@ksdm').value := pub_bqdm;
            bqgl_se_dazbr.active := true;

            if pub_yydm = '0266' then      //广元昭化
            begin
              if zkzcnum = 0 then
              begin
                if MessageBox(Self.Handle,'是否将该患者入院时间修改为当前时间？','提示',MB_ICONINFORMATION+MB_OkCancel)= idOk then
                begin
                  DM_data.qry_pub.Close;
                  DM_data.qry_pub.SQL.Text := 'UPDATE dbo.zysf_zydj SET ryrq = ''' + formatdatetime('yyyy-mm-dd hh:mm:ss', now) +''' WHERE zyh = '''+dqzyh+''' AND tmh = '''+dqtmh+''' ';
                  try
                    DM_data.qry_pub.ExecSQL;
                  except

                  end;
                end else
                begin

                end;
              end else
              begin

              end;
            end;
        end
        else
            Application.MessageBox('病床安置错误！', '错误', 0 + 16);
        if pub_yydm = '0274' then  //南通医院
        begin
          try
            application.createform(tfrm_jbqk, frm_jbqk);
            frm_jbqk.tmh.text := dqtmh;
            frm_jbqk.crzyh:= dqzyh;
            Application.OnMessage := nil;
            frm_jbqk.showmodal;
          finally
            frm_jbqk.free;
          end;
        end;
    end
    else
        self.close;
end;

procedure Tfrm_bqcwaz.DBGrid1KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then bch.SetFocus;
end;

procedure Tfrm_bqcwaz.FormActivate(Sender: TObject);
begin
    if bqgl_se_dazbr.RecordCount = 0 then
    begin
        Application.MessageBox('没有未安置病人！', '错误', 0 + 16);
        dbgrid1.ReadOnly := true;
        bitbtn1.Enabled := false;
    end;
end;

procedure Tfrm_bqcwaz.bchEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_bqcwaz.bchExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);
end;

procedure Tfrm_bqcwaz.DBGrid1DblClick(Sender: TObject);
begin
    bch.SetFocus;
end;

procedure Tfrm_bqcwaz.BitBtn3Click(Sender: TObject);
begin
    try
        application.createform(tfrm_wazbr, frm_wazbr);
        frm_wazbr.showmodal;
    finally
        frm_wazbr.free;
    end;
end;

procedure Tfrm_bqcwaz.BitBtn4Click(Sender: TObject);
begin
    bqgl_se_dazbr.close;
    bqgl_se_dazbr.parameters.ParamByName('@ksdm').value := pub_bqdm; //病区
    bqgl_se_dazbr.active := true;
    GroupBox1.Caption := '&1.待安置病人：' + inttostr(bqgl_se_dazbr.RecordCount) + '人';
end;

end.
