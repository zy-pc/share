unit P_BQZC;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, StdCtrls, Buttons, Db, DBTables, p_dm, ADODB;

type
    Tfrm_bqzc = class(TForm)
        Panel1: TPanel;
        ych: TEdit;
        Label2: TLabel;
        brxm: TEdit;
        Label1: TLabel;
        ok: TBitBtn;
        no: TBitBtn;
        Label5: TLabel;
        Panel2: TPanel;
        Label3: TLabel;
        Image1: TImage;
        xch: TEdit;
        Label4: TLabel;
        sp_up_zc: TADOStoredProc;
        sp_se_cwqk: TADOStoredProc;
	    cwh: TADOQuery;
	    cwh_gyzhtsxq: TEdit;
        procedure noClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure okClick(Sender: TObject);
        procedure xchKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure ychKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure ychEnter(Sender: TObject);
        procedure ychExit(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
        temp_tmh: string;
    end;

var
    frm_bqzc: Tfrm_bqzc;

implementation

uses P_login, p_main, p_func;



{$R *.DFM}

procedure Tfrm_bqzc.noClick(Sender: TObject);
begin
    close;
end;

procedure Tfrm_bqzc.FormShow(Sender: TObject);
begin
    if frm_main.pub_td = 'y' then
    begin
        ych.text := frm_main.pub_ych;
        xch.text := frm_main.pub_xch;
        brxm.text := frm_main.brxm.Text;
        Panel1.Enabled := false;
        Panel2.Enabled := false;
        ok.Enabled := true;
    end
    else
        if frm_main.pub_td = 'n' then
        begin
            ych.text := frm_main.pub_YCH;
            xch.text := '';
            brxm.text := frm_main.brxm.Text;
            Panel2.Enabled := True;
            Panel1.Enabled := False;
            ok.Enabled := false;
        end
        else
            if frm_main.pub_td = 'a' then
            begin
                ych.text := frm_main.pub_YCH;
                xch.text := '';
                brxm.text := frm_main.brxm.Text;
                Panel2.Enabled := True;
                Panel1.Enabled := true;
                ok.Enabled := false;
            end;
  if pub_yydm='0266' then  //直接转床时 对病人转床位进行判断设置显示床位号
  begin
    cwh.Close;
    cwh.SQL.text:='select * from sys_kscwsz where bcbh='+''''+trim(xch.Text)+''''+' and bqdm= '+''''+pub_bqdm+''''+' and ksdm= '+''''+pub_ksdm+'''';
    cwh.Open;
    cwh_gyzhtsxq.Top:=36;
    cwh_gyzhtsxq.Width:=44;
    xch.Visible:=False;
    if cwh.RecordCount>0 then
    begin
      cwh_gyzhtsxq.Text:=Trim(cwh.FieldByName('yybch').Value);
    end;
  end else
  begin
    cwh_gyzhtsxq.Free;
  end;
end;

procedure Tfrm_bqzc.okClick(Sender: TObject);
var zk, xb, hljb, kb, xb1, hljb1: string;
    img1: timage;
begin

    with sp_up_zc do
    begin
        close;
        prepared;
        if not (frm_main.sp_se_brjbqk.active) or (trim(frm_main.zyh.text) = '') then
        begin
            with frm_main.sp_se_brjbqk do
            begin
                close;
                parameters.ParamByName('@tmh').value := temp_tmh;
                parameters.parambyname('@brxm').value := brxm.text;
                active := true;
            end;
        end;
        if frm_main.pub_td = 'a' then
        begin
            parameters.ParamByName('@zyh').value := frm_main.sp_se_bczy['zyh'];
            parameters.parambyname('@tmh').value := frm_main.sp_se_bczy['tmh'];
        end
        else
        begin
            parameters.ParamByName('@zyh').value := frm_main.sp_se_brjbqk['zyh'];
            parameters.parambyname('@tmh').value := frm_main.sp_se_brjbqk['tmh'];
        end;
        parameters.parambyname('@ybch').value := ych.text;
        parameters.parambyname('@bch').value := xch.text;
        parameters.parambyname('@ksdm').value := pub_ksdm;
        parameters.parambyname('@yksdm').value := pub_ksdm;
        parameters.parambyname('@bclb').value := pub_xcbz;
        parameters.parambyname('@sczt').value := 'a';
        parameters.parambyname('@czydm').value := pub_czydm;
        execproc;
    end;
    frm_main.pub_cwaz := sp_up_zc.parameters.ParamByName('@sczt').value;

    if sp_up_zc.Parameters.ParamByName('@sczt').value = '1' then
    begin
        frm_main.sp_se_bczy.close;
        frm_main.sp_se_bczy.active := true;
        frm_main.sp_se_bczy.Locate('bcbh', xch.text, []);
        zk := 'br' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
        xb := 'xb' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
        hljb := 'hl' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
        kb := 'kb' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
        (frm_main.FindComponent(zk) as Tlabel).caption := trim(frm_main.sp_se_brjbqk['brxm']);
        (frm_main.FindComponent(kb) as Tlabel).caption := copy(trim(frm_main.sp_se_bczy.fieldbyname('ksmc').asstring), 1, 6);

        img1 := (frm_main.FindComponent(xb) as Timage);
        if frm_main.sp_se_bczy.fieldbyname('brnl1').value <= 12 then
        begin
            if img1 <> nil then
                imgimport(img1, frm_main.imagelist2, 5)
        end
        else
            if trim(frm_main.sp_se_bczy.fieldbyname('brxb').asstring) = '男' then
            begin
                if img1 <> nil then
                    imgimport(img1, frm_main.imagelist2, 3)
            end
            else
                if trim(frm_main.sp_se_bczy.fieldbyname('brxb').asstring) = '女' then
                    if img1 <> nil then
                        imgimport(img1, frm_main.imagelist2, 4);
          //加入护理级别
        img1 := (frm_main.FindComponent(hljb) as Timage);
        if trim(frm_main.sp_se_bczy.fieldbyname('hljb').ASSTRING) <> '' then
            imgimport(img1, frm_main.imagelist2, strtoint(trim(frm_main.sp_se_bczy.fieldbyname('hljb').ASSTRING)) - 1);

        frm_main.sp_se_bczy.Locate('bcbh', ych.text, []);
        zk := 'br' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
        xb1 := 'xb' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
        hljb1 := 'hl' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
        kb := 'kb' + trim(inttostr(frm_main.sp_se_bczy['plcx']));
          //清除性别
        img1 := (frm_main.FindComponent(xb1) as Timage);
        img1.Picture.Assign(nil);
        img1 := (frm_main.FindComponent(hljb1) as Timage);
        img1.Picture.Assign(nil);
        (frm_main.FindComponent(zk) as Tlabel).caption := '';
        (frm_main.FindComponent(kb) as Tlabel).caption := '';

        close;
    end
    else
        if sp_up_zc.Parameters.ParamByName('@sczt').value = 'b' then
            application.messagebox('不能转往虚拟床位', '错误', mb_ok + mb_iconerror)
        else
            Application.MessageBox('转床失败！', '转床', 0 + 64);
  if pub_yydm='0266' then
    frm_main.ToolButton2.Click;
end;

procedure Tfrm_bqzc.xchKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if (pub_yydm='0266') and(xch.Text='') and(key = 13) then  //直接转床时 对病人转床位进行判断设置显示床位号
    begin

      cwh.Close;
      cwh.SQL.text:='select * from sys_kscwsz where yybch='+''''+trim(cwh_gyzhtsxq.Text)+''''+' and bqdm= '+''''+pub_bqdm+''''+'and ksdm= '+''''+pub_ksdm+'''';
      cwh.Open;
      cwh_gyzhtsxq.Top:=36;
      cwh_gyzhtsxq.Width:=44;
      xch.Visible:=False;
      if cwh.RecordCount>0 then
      xch.Text:=Trim(cwh.FieldByName('bcbh').Value);
    end;


    if key = 13 then
    begin
        if xch.text <> ych.text then
        begin
            with sp_se_cwqk do
            begin
                close;
                parameters.ParamByName('@sr_bcbh').value := xch.Text;
                parameters.parambyname('@sr_ksdm').value := pub_bqdm;
                parameters.parambyname('@sc_zy').value := 'a';
                ExecProc;
            end;
            if sp_se_cwqk.parameters.parambyname('@sc_zy').value = 'y' then
                Application.MessageBox('该病床已安置病人！', '转床错误', 0 + 16);
            if sp_se_cwqk.parameters.parambyname('@sc_zy').value = 'w' then
                Application.MessageBox('本科室没有此病床编号！', '转床错误', 0 + 16);
            if sp_se_cwqk.parameters.parambyname('@sc_zy').value = 'n' then
                ok.Enabled := true
        end
        else
            Application.MessageBox('本床不能转本床！', '转床错误', 0 + 16);
    end

end;

procedure Tfrm_bqzc.ychKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
    begin
        with sp_se_cwqk do
        begin
            close;
            parameters.ParamByName('@sr_bcbh').value := ych.Text;
            parameters.parambyname('@sr_ksdm').value := pub_bqdm;
            parameters.parambyname('@sc_zy').value := 'a';
            ExecProc;
        end;
        if sp_se_cwqk.parameters.parambyname('@sc_zy').value = 'y' then
        begin
            frm_main.sp_se_bczy.locate('bcbh', ych.text, []);
            brxm.text := frm_main.sp_se_bczy['brxm'];
            temp_tmh := frm_main.sp_se_bczy['tmh'];
            xch.setfocus;
        end;
        if sp_se_cwqk.parameters.parambyname('@sc_zy').value = 'w' then
            Application.MessageBox('本科室没有此病床编号！', '转床错误', 0 + 16);
    end;
end;

procedure Tfrm_bqzc.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activeControl, true, true);
end;

procedure Tfrm_bqzc.ychEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_bqzc.ychExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);
end;

end.

