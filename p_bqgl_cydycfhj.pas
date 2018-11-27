unit p_bqgl_cydycfhj;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, Db, ADODB, DBSumLst, Grids, DBGridEh, Mask, DBCtrls, StdCtrls,
    Buttons, DBGrids, ActnList, GridsEh, DBGridEhGrouping;
type
    THACKDBGRID = class(TCUSTOMGRID);
type
    Tfrm_cydycfhj = class(TForm)
        Panel1: TPanel;
        Panel2: TPanel;
        Label1: TLabel;
        tmh: TEdit;
        Label2: TLabel;
        Label3: TLabel;
        Label4: TLabel;
        fylb: TEdit;
        zfy: TEdit;
        zyj: TEdit;
        Label5: TLabel;
        bch: TEdit;
        Panel4: TPanel;
        ad_zycfmx: TADODataSet;
        ad_zyfymx_ls: TADODataSet;
        sp_cx_xyjg: TADOStoredProc;
        sp_cx_zybrjbqk: TADOStoredProc;
        ds_sfmx: TDataSource;
        ds_zycfmx: TDataSource;
        Label11: TLabel;
        Label12: TLabel;
        zzf: TEdit;
        syje: TEdit;
        B_ENTER: TBitBtn;
        B_CREATEBATCH: TBitBtn;
        B_FINAL: TBitBtn;
        ds_zybrjbqk: TDataSource;
        tempgrid1: TDBGrid;
        sp_get_cfbh: TADOStoredProc;
        ad_zyfymx_lsid: TAutoIncField;
        ad_zyfymx_lstmh: TStringField;
        ad_zyfymx_lszyh: TStringField;
        ad_zyfymx_lskdks: TStringField;
        ad_zyfymx_lsczks: TStringField;
        ad_zyfymx_lskdys: TStringField;
        ad_zyfymx_lsczys: TStringField;
        ad_zyfymx_lsfydm: TStringField;
        ad_zyfymx_lsfysl: TIntegerField;
        ad_zyfymx_lsfyje: TBCDField;
        ad_zyfymx_lszkje: TBCDField;
        ad_zyfymx_lsssje: TBCDField;
        ad_zyfymx_lszfje: TBCDField;
        ad_zyfymx_lssfczy: TStringField;
        ad_zyfymx_lssfrq: TDateTimeField;
        ad_zyfymx_lssjbh: TStringField;
        ad_zyfymx_lscfbh: TStringField;
        ad_zyfymx_lstfbz: TBooleanField;
        ad_zyfymx_lstfczy: TStringField;
        ad_zyfymx_lstfrq: TDateTimeField;
        ad_zyfymx_lsjzbz: TBooleanField;
        ad_zyfymx_lsjsbz: TBooleanField;
        ad_zyfymx_lsjsdh: TStringField;
        ad_zyfymx_lsbz: TStringField;
        ad_zyfymx_lsfydmmc: TStringField;
        ad_zycfmxcfbh: TStringField;
        ad_zycfmxxh: TIntegerField;
        ad_zycfmxypdm: TStringField;
        ad_zycfmxypdwid: TIntegerField;
        ad_zycfmxypdw: TStringField;
        ad_zycfmxypbzbl: TIntegerField;
        ad_zycfmxypsl: TBCDField;
        ad_zycfmxypdj: TBCDField;
        ad_zycfmxyplb: TStringField;
        ad_zycfmxypmc: TStringField;
        sp_cx_ypbz: TADOStoredProc;
        sp_cx_ypbzbzbl: TIntegerField;
        sp_cx_ypbzid: TAutoIncField;
        sp_cx_ypbzypdw: TStringField;
        ds_ypmc: TDataSource;
        ds_ypdw: TDataSource;
        ad_zycfmxzje: TCurrencyField;
        ad_zycfmxzfje: TCurrencyField;
        ad_zyfymx_lsph: TStringField;
        ActionList1: TActionList;
        jshj: TAction;
        jf: TAction;
        zf: TAction;
        xg: TAction;
        ad_zycfzb: TADODataSet;
        fydmgrid: TDBGrid;
        sp_cx_syje: TADOStoredProc;
        ad_ypdm: TADODataSet;
        ad_zycfmxypgg: TStringField;
        sp_up_brfymxcl: TADOStoredProc;
        ksys_grid: TDBGrid;
        sp_cx_czyks: TADOStoredProc;
        ds_ysks: TDataSource;
        sp_up_fypl: TADOStoredProc;
        B_giveup: TBitBtn;
        createbatch: TAction;
        Label13: TLabel;
        RYRQ: TEdit;
        Label15: TLabel;
        kdks: TEdit;
        Label16: TLabel;
        kdys: TEdit;
        Label17: TLabel;
        czks: TEdit;
        Label18: TLabel;
        czys: TEdit;
        sp_cx_xyjgypdm: TStringField;
        sp_cx_xyjgypmc: TStringField;
        sp_cx_xyjgpym: TStringField;
        sp_cx_xyjgypgg: TStringField;
        sp_cx_xyjgdwid: TIntegerField;
        sp_cx_xyjgypdw: TStringField;
        sp_cx_xyjgzhl: TIntegerField;
        sp_cx_xyjglsj: TBCDField;
        sp_cx_xyjgsybz: TStringField;
        sp_cx_xyjgkcsl: TBCDField;
        sp_cx_xyjgzxdwsl: TBCDField;
        sp_cx_xyjghtfybl: TBCDField;
        sp_cx_xyjgsbfybl: TBCDField;
        sp_cx_xyjgbxfybl: TBCDField;
        sp_cx_xyjgsfjsyp: TBooleanField;
        sp_cx_xyjgsfgzyp: TBooleanField;
        sp_cx_xyjgsfdmyp: TBooleanField;
        sp_cx_xyjgsfzfyp: TBooleanField;
        cfmx_input: TDBGridEh;
        ypdw_grid: TDBGrid;
        ypmc_grid: TDBGrid;
        ad_sfxm: TADODataSet;
        ad_zycfmxkccgj: TBCDField;
        ad_zycfmxsbfybl: TFloatField;
        ad_zycfmxhtfybl: TFloatField;
        ad_zycfmxbxfybl: TFloatField;
        ad_plcl: TADODataSet;
        ad_zycfmxXH1: TIntegerField;
        sp_cx_xyjgkccgj: TBCDField;
        Label6: TLabel;
        Label7: TLabel;
        bz: TEdit;
        zdqf: TEdit;
        ad_zycfmxjlyp: TBooleanField;
        ad_zycfmxylyp: TBooleanField;
        ad_zycfmxjylyp: TStringField;
        Label8: TLabel;
        Edit1: TEdit;
        cfbh: TEdit;
        Panel3: TPanel;
        Label22: TLabel;
        Label23: TLabel;
        ad_zycfmxspm: TStringField;
        sp_cx_xyjgypbm: TStringField;
        Label9: TLabel;
        qry_yf: TADOQuery;
        qry_yfdm: TADOQuery;
        e_fydm: TEdit;
        Label10: TLabel;
        e_dyyf: TEdit;
        Label14: TLabel;
        fs: TEdit;
    qry_gytj: TADOQuery;
    ad_zycfmxyf: TStringField;
    ad_zycfmxyl: TStringField;
    ad_zycfmxyldw: TStringField;
    ad_zycfmxyytj: TStringField;
    qry_ypyf: TADOQuery;
    qry_: TADOQuery;
    sp_cx_xyjgyzyldw: TStringField;
    sp_cx_xyjgsfmzyp: TBooleanField;
        procedure tmhExit(Sender: TObject);
        procedure tempgrid1Exit(Sender: TObject);
        procedure tempgrid1KeyPress(Sender: TObject; var Key: Char);
        procedure cfmx_inputColExit(Sender: TObject);
        procedure ad_zycfmxCalcFields(DataSet: TDataSet);
        procedure cfmx_inputColEnter(Sender: TObject);
        procedure ypmc_gridExit(Sender: TObject);
        procedure ypdw_gridExit(Sender: TObject);
        procedure cfmx_inputKeyPress(Sender: TObject; var Key: Char);
        procedure ad_zycfmxAfterInsert(DataSet: TDataSet);
        procedure B_FINALClick(Sender: TObject);
        procedure ad_zycfmxBeforePost(DataSet: TDataSet);
        procedure B_ENTERClick(Sender: TObject);
        procedure ad_zyfymx_lsAfterScroll(DataSet: TDataSet);
        procedure kdysExit(Sender: TObject);
        procedure czksExit(Sender: TObject);
        procedure czysExit(Sender: TObject);
        procedure ksys_gridExit(Sender: TObject);
        procedure kdksExit(Sender: TObject);
        procedure ad_zycfmxBeforeDelete(DataSet: TDataSet);
        procedure B_CREATEBATCHClick(Sender: TObject);
        procedure B_giveupClick(Sender: TObject);
        procedure tmhEnter(Sender: TObject);
        procedure jfExecute(Sender: TObject);
        procedure xgExecute(Sender: TObject);
        procedure createbatchExecute(Sender: TObject);
        procedure ad_zycfmxAfterDelete(DataSet: TDataSet);
        procedure fydmgridKeyPress(Sender: TObject; var Key: Char);
        procedure fydmgridEnter(Sender: TObject);
        procedure fylbEnter(Sender: TObject);
        procedure kdksEnter(Sender: TObject);
        procedure kdysEnter(Sender: TObject);
        procedure czksEnter(Sender: TObject);
        procedure czysEnter(Sender: TObject);
        procedure ggEnter(Sender: TObject);
        procedure sfbzEnter(Sender: TObject);
        procedure slEnter(Sender: TObject);
        procedure jeEnter(Sender: TObject);
        procedure fylbExit(Sender: TObject);
        procedure ggExit(Sender: TObject);
        procedure sfbzExit(Sender: TObject);
        procedure ad_zyfymx_lsAfterPost(DataSet: TDataSet);
        procedure ypdw_gridKeyPress(Sender: TObject; var Key: Char);
        procedure cfmx_inputKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure cfmx_inputEnter(Sender: TObject);
        procedure ad_zycfmxAfterPost(DataSet: TDataSet);
        procedure FormShow(Sender: TObject);
        procedure e_fydmExit(Sender: TObject);
        procedure e_fydmEnter(Sender: TObject);
        procedure e_fydmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure fsExit(Sender: TObject);
        procedure fsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    private
        procedure pljr(yfdm:string);
        procedure fydmcl(yfzdmc: string);
        { Private declarations }
    public
        { Public declarations }
        procedure displayvalue;
        procedure dispysks(tempedit: Tedit; dm: string; czfs: integer; var pri_var: string); //��ʾҽ������
        procedure xyhjinit(fydmstr: string); //��ҩ�����ĳ�ʼ������
        procedure ypmcprocess(SP_CX_JG: Tadostoredproc; ksdm: string; row: byte); //��ҩ���۴���ҩƷ��ѯ
        procedure ypbzprocess; //�����װ��λ
        //    procedure ypdmmcprocess(sp_cx_jg:tadostoredproc;row:byte); //����ҩƷ���ƴ���
        procedure ypdmmcprocess; //����ҩƷ���ƴ���
        procedure ypdwprocess; //����ҩƷ��λ�Ͱ�װ������ֵ
        procedure datasave(tablename: string); //����ҩ����
        procedure sfxmwriteIn; //�շ���Ŀд��
        procedure kdyskdks(cledit: Tedit; var dm: string);
        procedure ksprocess(tempedit: Tedit; var pri_var: string);
        procedure ysprocess(tempedit: Tedit; var pri_var: string);
        procedure locateypsl(tablename, fydm: string); //����ҩƷ���������Ĵ���
        procedure checksyje;
        procedure ScreenCap(LeftPos, TopPos, RightPos, BottomPos: integer);
        procedure calCsum(col: integer);

    end;

var
    frm_cydycfhj: Tfrm_cydycfhj;
    CFPH, ph, xycf_bh, v_zyh, v_ypmc, pri_kdks, pri_kdys, pri_czks, pri_czys, pri_fylb: string;
    ypmcxg, //��ʾҩƷ�������޸ı�
        qhbz, //��ʾ�Ƿ�������� true ��� false ����
        ysksischange: boolean; //��ʾ�ӿ������ҳ���ʱ�������ޱ仯
    changedflag: boolean; //��ʾҩƷ��ϸ���޸ı�
    hjlb: integer; // �����б�־��ĳ�г����򽫴��м���˱�������α���Ϊ-1
    csjls: integer;
    lostsender: Tobject;
    SavePlace: TBookmark;
    cfbz, czwcg, insertflag, czcg, syjechanged, fydmlostfocus: boolean; //ҩƷ���ҳɹ�
    dispinit: boolean = false; //��ʾ��ʼ��
    cflr: boolean = false; //��ʾ��ʼ��
    yycfsj: boolean = false; //��ʾ��ʼ��
    kssj: tdatetime;
    zqbcbz: boolean; //zyfymx_ls������ȷʱ�ô˱�־
    cfzje, zfzje: real;

    fydm, yfdm, yfmc, fymc, cflb, yfzdmc: string; //���ô��룬ҩ������

implementation
uses P_dm, p_func, p_zyplcffy, p_main;
{$R *.DFM}

procedure Tfrm_cydycfhj.calCsum(col: integer);
begin
    ad_zycfmx.DisableControls;
    ad_zycfmx.First;
    cfmx_input.SumList.SumCollection.Items[col].SumValue := 0;
    while not ad_zycfmx.Eof do
    begin
        cfmx_input.SumList.SumCollection.Items[col].SumValue := cfmx_input.SumList.SumCollection.Items[col].SumValue +
            ad_zycfmx.FieldByName(cfmx_input.SumList.SumCollection.Items[col].FieldName).AsFloat;
        ad_zycfmx.Next;
        //   self.Caption:=floattostr(cfmx_input.SumList.SumCollection.Items[col].SumValue);
    end;
    ad_zycfmx.EnableControls;
end;

procedure Tfrm_cydycfhj.fydmcl(yfzdmc: string);
begin
  //----------------------------------------------------------------
    qry_yfdm.close;
    qry_yfdm.sql.text := 'select * from sys_ksdm where dm = ' + '''' + pub_ksdm + '''';
    qry_yfdm.open;
    yfdm := trim(qry_yfdm.FieldByName(yfzdmc).AsString);
    pri_czks := yfdm;
    if yfdm = '' then
    begin
        e_dyyf.Text := '';
        showMessage('����δ��ҩ��' + ''#13'����ϵͳά�������еĿ��������а�ҩ��!');
        abort;
    end;
     //---------------------��ҩ��---���¼�����------
    if pub_yydm = '0111' then //�½�,Į�ϼ�������
    begin
        ad_plcl.close;
        ad_plcl.commandtext := 'select * from zyxyf_pltzb where ksdm=' + #39
            + pub_bqdm + #39 + ' and tzbz=0 and jjtz=0 and yfdm = ' + #39 + yfdm + #39;
        ad_plcl.Open;
        if ad_plcl.isempty then
        begin
            CFPH := get_sjh(pub_czydm);
        end
        else
        begin
            cfph := ad_plcl['pldh'];
        end;
        ph := cfph;
        pljr(yfdm);
    end
    else
    begin
//       if Messagedlg('�Ƿ����������', mtinformation, [mbYes, mbNo], 0) = mryes then
//       begin
//            ad_plcl.close;
//            ad_plcl.commandtext := 'select * from zyxyf_pltzb where ksdm=' + #39
//                + pub_bqdm + #39 + ' and tzbz=0 and jjtz=0 and yfdm = ' + #39 + yfdm + #39;
//            ad_plcl.Open;
//            if ad_plcl.isempty then
//            begin
//                CFPH := get_sjh(pub_czydm);
//            end
//            else
//            begin
//                cfph := ad_plcl['pldh'];
//            end;
//            ph := cfph;
//            pljr(yfdm);
//        end
//        else
//       begin
            ph := get_sjh(pub_czydm);
            CFPH := ph;
//        end;
    end;
     //-----------------------------------------------
    qry_yfdm.close;
    qry_yfdm.sql.text := 'select * from sys_ksdm where dm = ' + '''' + yfdm + '''';
    qry_yfdm.open;
    e_dyyf.Text := qry_yfdm.FieldByName('mc').AsString;
    yfmc := e_dyyf.Text;
    czks.Text := e_dyyf.Text;
  //---------------------------------------
    if ad_zyfymx_ls.RecordCount > 0 then
    begin
        ad_zyfymx_ls.edit;
        ad_zyfymx_ls['fydm'] := fydm;
        ad_zyfymx_ls['zyh'] := sp_cx_zybrjbqk['zyh'];
        ad_zyfymx_ls['tmh'] := sp_cx_zybrjbqk['tmh'];
        ad_zyfymx_ls['kdks'] := pri_kdks;
        ad_zyfymx_ls['kdys'] := pri_kdys;
        ad_zyfymx_ls['czks'] := pri_czks;
        ad_zyfymx_ls['czys'] := pri_czys;
        ad_zyfymx_ls['sfczy'] := pub_czydm;
        ad_zyfymx_ls['cfbh'] := xycf_bh;
        ad_zyfymx_ls['sfrq'] := frm_func.curr_date;
        ad_zyfymx_ls['ph'] := ph;
    end
    else
    begin
        xyhjinit(fydm);
    end;
  //------------------------------------------
    cfmx_input.setfocus;
    cfmx_input.SelectedIndex := 0;
end;

procedure Tfrm_cydycfhj.ScreenCap(LeftPos, TopPos, RightPos, BottomPos: integer);
var
    RectWidth, RectHeight: integer;
    SourceDC, DestDC, Bhandle: longint;
    Bitmap: TBitmap;
begin
    RectWidth := RightPos - LeftPos;
    RectHeight := BottomPos - TopPos;
    SourceDC := CreateDC('DISPLAY', '', '', nil);
{$R-}
    DestDC := CreateCompatibleDC(SourceDC);
    Bhandle := CreateCompatibleBitmap(SourceDC, RectWidth, RectHeight);
    SelectObject(DestDC, Bhandle);
    BitBlt(DestDC, 0, 0, RectWidth, RectHeight, SourceDC, LeftPos, TopPos, SRCCOPY);
    Bitmap := TBitmap.Create;
    Bitmap.Handle := BHandle;
    BitMap.SaveTofile(formatdatetime('yyyymmddhhnnss', frm_func.curr_date) + '.bmp');
    Bitmap.Free;
    DeleteDC(DestDC);
    ReleaseDC(Bhandle, SourceDC);
end;

procedure Tfrm_cydycfhj.displayvalue;
begin

    dispinit := true;
    qhbz := false;
    b_giveup.enabled := true;
    tmh.text := sp_cx_zybrjbqk.fieldbyname('tmh').asstring;
    Edit1.text := sp_cx_zybrjbqk.fieldbyname('brxm').asstring;
    bch.text := sp_cx_zybrjbqk.fieldbyname('bch').asstring;
    fylb.text := sp_cx_zybrjbqk.fieldbyname('lbmc').asstring;
    RYRQ.TEXT := datetostr(sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime);
    zyj.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('yjze').asfloat]);
    zfy.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('zfy').asfloat]);
    zzf.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('zfze').asfloat]);
    syje.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('yjze').asfloat - sp_cx_zybrjbqk.fieldbyname('zfze').asfloat]);
    v_zyh := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    pri_kdks := sp_cx_zybrjbqk.fieldbyname('ksdm').asstring;
    pri_kdys := sp_cx_zybrjbqk.fieldbyname('zgys').asstring;
    kdks.text := sp_cx_zybrjbqk.fieldbyname('ksmc').asstring;
    kdys.text := sp_cx_zybrjbqk.fieldbyname('ysxm').asstring;
    bz.text := sp_cx_zybrjbqk.fieldbyname('ryzd').asstring;
    if sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat < 100000 then
        zdqf.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat])
    else
        zdqf.text := '************';
    ad_zyfymx_ls.DisableControls;
    ad_zyfymx_ls.Close;
    ad_zyfymx_ls.commandtext := 'select * from zysf_zyfymx_ls where PH=' + #39 + PH + #39 + ' and zyh = ' + #39 + v_zyh + #39;
    ad_zyfymx_ls.open;
    xyhjinit(fydm);
    ad_zyfymx_ls.EnableControls;
    kdys.setfocus;
    if not cflr then
        //b_createbatch.Enabled := false;
end;

procedure Tfrm_cydycfhj.pljr(yfdm: string);
begin
    if ad_plcl.isempty then
    begin
        kssj := frm_func.curr_date();
        ad_plcl.Append;
        ad_plcl['ksdm'] := pub_bqdm;
        ad_plcl['kssj'] := kssj;
        ad_plcl['pldh'] := cfph;
        ad_plcl['tzbz'] := 0;
        ad_plcl['jjtz'] := 0;
        ad_plcl['yfdm'] := yfdm;
        ad_plcl.post;
    end;
end;

procedure Tfrm_cydycfhj.tmhExit(Sender: TObject);
var
    ls, s: string;
begin
    frm_func.restorecolor(sender);
    ls := trim(tmh.text);
    if not (B_FINAL.Focused or B_CREATEBATCH.focused) and (LS <> '') then
    begin
        //calmhawk 2006-02-10
        s := tmh.Text;
        if s[1] in ['0'..'9'] then
            s := stringofchar('0', 9 - length(s)) + s;
        tmh.Text := s;

        with sp_cx_zybrjbqk do
        begin
            Close;
            parameters.ParamByName('@tmh').value := trim(tmh.text);
            parameters.ParamByName('@xm').value := trim(tmh.text);
            parameters.ParamByName('@bch').value := trim(tmh.text);
            parameters.ParamByName('@ksdm').value := pub_bqdm;
            active := true;
        end;
        if sp_cx_zybrjbqk.isempty then
        begin
            Application.MessageBox('û�д˲��ˣ�', '����', 0 + 16);
            tmh.setfocus;
        end
        else
            if sp_cx_zybrjbqk.recordcount > 1 then
            begin
                tempgrid1.Columns.Clear;
                tempgrid1.Columns.add;
                tempgrid1.Columns[0].field := sp_cx_zybrjbqk.fieldlist[0];
                tempgrid1.Columns[0].title.caption := '�����';
                tempgrid1.Columns.add;
                tempgrid1.Columns[1].field := sp_cx_zybrjbqk.fieldlist[2];
                tempgrid1.Columns[1].title.caption := '����';
                tempgrid1.left := tmh.left;
                tempgrid1.top := tmh.top + tmh.Height;
                tempgrid1.visible := true;
                tempgrid1.setfocus;
            end
            else
            begin
                displayvalue;
            end;
    end
    else
        if (LS = '') and (not (b_final.focused or B_giveup.focused)) then
        begin
            Application.MessageBox('����������Ż򲡴��Ż���������', '����', 0 + 16);
            tmh.setfocus;
        end;
end;

procedure Tfrm_cydycfhj.tempgrid1Exit(Sender: TObject);
begin
    tmh.text := sp_cx_zybrjbqk['brxm'];
    tempgrid1.Visible := false;
    syj := sp_cx_zybrjbqk['yjbz'];
    displayvalue;
    //  ad_zyfymx_ls.Close;
    //  ad_zyfymx_ls.commandtext:='select * from zysf_zyfymx_ls where zyh='+#39+V_zyh+#39+' and ph='+#39+ph+#39;
    //  ad_zyfymx_ls.Open;
        //panel1.Enabled := false;
    cfmx_input.setfocus;
end;

procedure Tfrm_cydycfhj.tempgrid1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        SelectNext(activeControl, true, true);
    end
    else
        if (key in ['A'..'z']) or (key in ['0'..'9']) or (ord(key) > 127) then
            ysksischange := true;

end;

procedure Tfrm_cydycfhj.xyhjinit(fydmstr: string);
begin
    //������ҩ���ۼƷ�
   //����������
    pri_czks := yfdm;
    czks.text := yfmc;
    pri_czys := '';
    sp_get_cfbh.close;
    sp_get_cfbh.ExecProc;
    xycf_bh := sp_get_cfbh.parameters.parambyname('@cfbh').value;
    cfbh.text := xycf_bh;
    qhbz := false;
    sfxmwriteIn; //д���շ�
    ad_zycfmx.Close;
    ad_zycfmx.CommandText := 'select * from zyxyf_zycfmx where cfbh=:cfbh';
    ad_zycfmx.Parameters.ParamByName('cfbh').value := xycf_bh;
    //ad_zycfmx.commandtext:='select * from zyxyf_zycfmx where cfbh='+#39+xycf_bh+#39;
    ad_zycfmx.open; //�򿪴�����
    ad_zycfmx.first;
    ds_ypmc.DataSet := sp_cx_xyjg;
    //e_fydm.SetFocus;
    //cfmx_input.SetFocus;
//    cfmx_input.SelectedIndex := 0;
end;

procedure Tfrm_cydycfhj.ypmcprocess(SP_CX_JG: Tadostoredproc; ksdm: string; row: byte);
var
    ypsl: integer;
    myrect: trect;
begin
    if cfmx_input.SelectedIndex = 0 then //ȡҩƷ����
    begin
        begin
            sp_cx_jg.close;
            if trim(ad_zycfmx.fieldbyname('ypdm').asstring) = '' then
                sp_cx_jg.Parameters.ParamByName('@pym').value := ad_zycfmx['ypmc']
            else
                sp_cx_jg.Parameters.ParamByName('@pym').value := ad_zycfmx['ypdm'];

            sp_cx_jg.Parameters.ParamByName('@ksdm').value := yfdm;
            sp_cx_jg.Open;
            if ad_zycfmx.state = dsinsert then
                insertflag := true
            else
                insertflag := false;
            //  SAVEPLACE:=AD_ZYCFMX.GETBOOKMARK;
            if sp_cx_jg.IsEmpty then
            begin
                messagedlg('ҩƷ�����������������������룡', mterror, [mbok], 0);
                cfmx_input.setfocus;
                hjlb := 0;
                cfmx_input.selectedindex := 0;
                v_ypmc := '';
                czwcg := true;
                //     panel2.enabled:=false;
            end //ҩƷ������Ҳ��ɹ�
            else
                if sp_cx_jg.RecordCount = 1 then
                begin
                    czwcg := false;
                    panel2.enabled := true;
                    hjlb := 2;
                    ypdmmcprocess; //���ҳɹ�
                end
                else
                    if (sp_cx_jg.recordcount > 1) and (v_ypmc <> trim(ad_zycfmx.fieldbyname('ypmc').asstring)) then
                    begin
                        ypmc_grid.visible := true;
                        myrect := THACKDBGRID(cfmx_input).cellrect(0, THACKDBGRID(cfmx_input).row);
                        ypmc_grid.left := myrect.left;
                        if myrect.Bottom + ypmc_grid.height > cfmx_input.height then
                            ypmc_grid.top := myrect.top - ypmc_grid.Height
                        else
                            ypmc_grid.top := myrect.Bottom;
                        panel2.enabled := true;
                        czwcg := false;
                        ypmc_grid.setfocus;
                    end; //���ҳɹ�����������һ
        end
    end
    else
        if cfmx_input.selectedindex = 2 then
            hjlb := 4 //*************
        else
            if (cfmx_input.SelectedIndex = 8) and (trim(ad_zycfmx.fieldbyname('ypmc').asstring) <> '') then
            begin
                if ad_zycfmx.fieldbyname('ypsl').asfloat <= 0 then
                begin
                    hjlb := 4;
                    cfmx_input.selectedindex := 9;
                    messagedlg('ҩƷ��������ȷ����������ȷ����', mterror, [mbok], 0)
                end //�����ж�ҩƷ����Ϊ��Ϊ0
                else
                    if not pub_bqhjbz then //�ڿ��ҩƷ��������ʱ��׼����
                    begin
                        if (strtoint(fs.Text) * ad_zycfmx['ypsl'] * ad_zycfmx['ypbzbl'] > sp_cx_jg['zxdwsl']) and ((ad_zycfmx.State = dsedit) or (ad_zycfmx.State = dsinsert)) then
                        begin
                            messagedlg('ҩƷ�����������', mterror, [mbok], 0);
                            hjlb := 4;
                            cfmx_input.selectedindex := 9;
                        end
                        else
                        begin
                          if pub_yydm<>'0015' then
                          begin
                            ad_zycfmx.append;
                            hjlb := 0;
                          end
                          else
                          begin
                            if ad_zycfmx.RecordCount>=5 then
                            begin
                            messagedlg('һ�Ŵ���ֻ��¼5��ҩƷ�����ȱ�����ټ���¼��', mterror, [mbok], 0);
                            end
                            else
                            begin
                            ad_zycfmx.append;
                            hjlb := 0;
                            end;
                          end;
                        end
                    end
                    else
                        if (strtoint(fs.Text) * ad_zycfmx['ypsl'] > sp_cx_jg['zxdwsl']) and ((ad_zycfmx.State = dsedit) or (ad_zycfmx.State = dsinsert)) then
                        begin
                            messagedlg('ҩƷ�����������', mterror, [mbok], 0);
                            hjlb := 4;
                            cfmx_input.selectedindex := 9;
                        end
                        else
                        begin
                            if ad_zycfmx.RecordCount>=5 then
                            begin
                            messagedlg('һ�Ŵ���ֻ��¼5��ҩƷ�����ȱ�����ټ���¼��', mterror, [mbok], 0);
                            end
                            else
                            begin
                            ad_zycfmx.append;
                            hjlb := 0;
                            end;
                        end;
            end
end;

procedure Tfrm_cydycfhj.ypbzprocess; //�����װ��λ
begin
    cfmx_input.selectedindex := hjlb
end;

procedure Tfrm_cydycfhj.ypdmmcprocess; //����ҩƷ���ƴ���
var
    saveplace1: Tbookmark;
begin
    saveplace := ad_zycfmx.GetBookmark;
    if ad_zycfmx.state = dsinsert then
        insertflag := true
    else
        insertflag := false;
    if sp_cx_xyjg.fieldbyname('zxdwsl').asfloat > 0 then
    begin
        //    ad_zycfmx.DisableControls;
        if not (ad_zycfmx.Locate('ypdm', sp_cx_xyjg['ypdm'], [])) then
        begin
        //�ж�����ҩƷ��һ��ҩƷ�Ƿ�쿪--��ʼ
          if (sp_cx_xyjg.fieldbyname('sfdmyp').asboolean) and (ad_zycfmx.RecordCount>1)  then
          begin
            if (ad_zycfmx.bof) and (ad_zycfmx.RecordCount=1) then
            begin

            end
            else
            begin
              ad_zycfmx.First;
              while (not ad_zycfmx.eof)  do
              begin
                DM_data.qry_pub.Close;
                DM_data.qry_pub.SQL.text:='select * from sys_ypdm where ypdm='+''''+
                                       ad_zycfmx.FieldByName('ypdm').asstring+'''';
                DM_data.qry_pub.Open;
                if DM_data.qry_pub.FieldByName('sfdmyp').AsBoolean=false then
                begin
                  application.MessageBox('��ҩƷΪ����ҩƷ�����ܺ�����ҩƷ�쿪,��������¼��', '����', mb_ok + Mb_iconerror);
                  ad_zycfmx.Last;
                  ypmc_grid.Visible:=False;
                  cfmx_input.SetFocus;
                  Exit;
                end;
                ad_zycfmx.Next;
              end;
            end;
          end;


          if (sp_cx_xyjg.fieldbyname('sfmzyp').asboolean) and (ad_zycfmx.RecordCount>1)  then
          begin
            if (ad_zycfmx.bof) and (ad_zycfmx.RecordCount=1) then
            begin

            end
            else
            begin
              ad_zycfmx.First;
              while (not ad_zycfmx.eof)  do
              begin
                DM_data.qry_pub.Close;
                DM_data.qry_pub.SQL.text:='select * from sys_ypdm where ypdm='+''''+
                                       ad_zycfmx.FieldByName('ypdm').asstring+'''';
                DM_data.qry_pub.Open;
                if DM_data.qry_pub.FieldByName('sfmzyp').AsBoolean=false then
                begin
                  application.MessageBox('��ҩƷΪ����ҩƷ�����ܺ�����ҩƷ�쿪,��������¼��', '����', mb_ok + Mb_iconerror);
                  ad_zycfmx.Last;
                  ypmc_grid.Visible:=False;
                  cfmx_input.SetFocus;
                  Exit;
                end;
                ad_zycfmx.Next;
              end;
            end;
          end;

          if (sp_cx_xyjg.fieldbyname('sfjsyp').asboolean) and (ad_zycfmx.RecordCount>1)  then
          begin
            if (ad_zycfmx.bof) and (ad_zycfmx.RecordCount=1) then
            begin

            end
            else
            begin
              ad_zycfmx.First;
              while (not ad_zycfmx.eof)  do
              begin
                DM_data.qry_pub.Close;
                DM_data.qry_pub.SQL.text:='select * from sys_ypdm where ypdm='+''''+
                                       ad_zycfmx.FieldByName('ypdm').asstring+'''';
                DM_data.qry_pub.Open;
                if DM_data.qry_pub.FieldByName('sfjsyp').AsBoolean=false then
                begin
                  application.MessageBox('��ҩƷΪ����ҩƷ�����ܺ�����ҩƷ�쿪,��������¼��', '����', mb_ok + Mb_iconerror);
                  ad_zycfmx.Last;
                  ypmc_grid.Visible:=False;
                  cfmx_input.SetFocus;
                  Exit;
                end;
                ad_zycfmx.Next;
              end;
            end;
          end;

          if (not sp_cx_xyjg.fieldbyname('sfjsyp').asboolean) and
             (not sp_cx_xyjg.fieldbyname('sfdmyp').asboolean) and
             (not sp_cx_xyjg.fieldbyname('sfmzyp').asboolean) and (ad_zycfmx.RecordCount>1)   then
          begin
            if (ad_zycfmx.bof) and (ad_zycfmx.RecordCount=1) then
            begin

            end
            else
            begin
              ad_zycfmx.First;
              while (not ad_zycfmx.eof)  do
              begin
                DM_data.qry_pub.Close;
                DM_data.qry_pub.SQL.text:='select * from sys_ypdm where ypdm='+''''+
                                       ad_zycfmx.FieldByName('ypdm').asstring+'''';
                DM_data.qry_pub.Open;
                if (DM_data.qry_pub.FieldByName('sfjsyp').AsBoolean=true) or
                   (DM_data.qry_pub.FieldByName('sfmzyp').AsBoolean=true) or
                   (DM_data.qry_pub.FieldByName('sfdmyp').AsBoolean=true)then
                begin
                  application.MessageBox('��ҩƷΪ��ͨҩƷ�����ܺ�����ҩƷ�쿪,��������¼��', '����', mb_ok + Mb_iconerror);
                  ad_zycfmx.Last;
                  ypmc_grid.Visible:=False;
                  cfmx_input.SetFocus;
                  Exit;
                end;
                ad_zycfmx.Next;
              end;
            end;
          end;
          //�ж�����ҩƷ��һ��ҩƷ�Ƿ�쿪--����
            ad_zycfmx.GotoBookmark(saveplace);
            ad_zycfmx.edit;
            czwcg := false;
            ad_zycfmx['ypmc'] := trim(sp_cx_xyjg.fieldbyname('ypmc').asstring);
            ad_zycfmx['yldw'] := trim(sp_cx_xyjg.fieldbyname('yzyldw').asstring);
            ad_zycfmx['ypdm'] := trim(sp_cx_xyjg.fieldbyname('ypdm').asstring);
            ad_zycfmx['ypdw'] := trim(sp_cx_xyjg.fieldbyname('ypdw').asstring);
            ad_zycfmx['ypdj'] := sp_cx_xyjg.fieldbyname('lsj').asfloat;
            ad_zycfmx['ypbzbl'] := trim(sp_cx_xyjg.fieldbyname('zhl').asstring);
            ad_zycfmx['kccgj'] := sp_cx_xyjg.fieldbyname('kccgj').asfloat;
            ad_zycfmx['ypdwid'] := trim(sp_cx_xyjg.fieldbyname('dwid').asstring);
            if sp_cx_xyjg.fieldbyname('sfdmyp').asboolean then
              ad_zycfmx['yplb'] := '����ҩƷ'
            else if sp_cx_xyjg.fieldbyname('sfjsyp').asboolean then
              ad_zycfmx['yplb'] := '����ҩƷ'
            else if sp_cx_xyjg.fieldbyname('sfmzyp').asboolean then
              ad_zycfmx['yplb'] := '����ҩƷ';
            ad_zycfmx['cfbh'] := xycf_bh;
            v_ypmc := trim(sp_cx_xyjg.fieldbyname('ypmc').asstring);
            ad_zycfmx['cfbh'] := xycf_bh;
            ypmc_grid.Visible := false;
            cfmx_input.SetFocus;
            cfmx_input.SelectedIndex := 2;
        end
        else
        begin
            saveplace1 := ad_zycfmx.getbookmark;
            if ad_zycfmx.CompareBookmarks(saveplace, saveplace1) <> 0 then
            begin
                application.MessageBox('ͬһ�Ŵ���,�������ظ�ҩƷ', '����', mb_ok + Mb_iconerror);
                cfmx_input.setfocus;
                cfbz := true;
                if insertflag then
                    ad_zycfmx.Last
                else
                    ad_zycfmx.GotoBookmark(saveplace);
            end
            else
            begin
                cfmx_input.SetFocus;
                cfmx_input.SelectedIndex := 2;
            end;
            ypmc_grid.Visible := false;
            ad_zycfmx.FreeBookmark(saveplace1);
        end;
        ad_zycfmx.FreeBookmark(saveplace);
        ypmc_grid.Visible := false;
    end
    else
    begin
        cfmx_input.setfocus;
        cfmx_input.SelectedIndex := 0;
        ypmc_grid.Visible := false;
        messagedlg('�������Ϊ��,����������', mtinformation, [mbok], 0);
    end
end;

procedure Tfrm_cydycfhj.ypdwprocess; //����ҩƷ��λ�Ͱ�װ������ֵ
begin

end;

procedure Tfrm_cydycfhj.datasave(tablename: string);
var
    r, cgje, lsje, zfje: real;
begin
    try
        cfmx_input.SumList.RecalcAll;
        r := strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[9]));
        if r > 0 then
        begin
            if ad_zycfmx.Active then
            begin
                dm_data.ado_mydata.BeginTrans;
                try
                    ad_zycfmx.First;
                    cgje := 0;
                    lsje := 0;
                    zfje := 0;
                    ad_zycfmx.Filtered:=False;
                    ad_zycfmx.Filter:='ypdm='''' or ypsl<=0';
                    ad_zycfmx.Filtered:=True;
                    while not ad_zycfmx.IsEmpty do
                    begin
                      ad_zycfmx.Delete;
                    end;
                    ad_zycfmx.Filtered:=False;
//                    while not ad_zycfmx.Eof do
//                    begin
//                        if (trim(ad_zycfmx.fieldbyname('ypdm').asstring) = '') or (ad_zycfmx.fieldbyname('ypsl').asfloat <= 0) then
//                            ad_zycfmx.delete;
//                        ad_zycfmx.next;
//                    end;
                    ad_zycfmx.first;
                    while not ad_zycfmx.Eof do
                    begin
                        cgje := cgje + ad_zycfmx.fieldbyname('ypsl').asfloat * ad_zycfmx.fieldbyname('kccgj').asfloat * ad_zycfmx.fieldbyname('ypbzbl').asfloat;
                        lsje := lsje + ad_zycfmx.fieldbyname('ypsl').asfloat * ad_zycfmx.fieldbyname('ypdj').asfloat;
                        zfje := zfje + ad_zycfmx.fieldbyname('zfje').asfloat;
                        ad_zycfmx.Next;
                    end;
                    if not ad_zycfmx.IsEmpty then
                        ad_zycfmx.UpdateBatch(arall); //��ҩסԺ������ϸ�������
                    ad_zycfzb.Close;
                    ad_zycfzb.commandtext := 'select * from ' + tablename + ' where cfbh=' + #39 + xycf_bh + #39;
                    ad_zycfzb.Open;
                    if not ad_zycfmx.IsEmpty then
                    begin
                        if ad_zycfzb.isempty then
                            ad_zycfzb.append
                        else
                            ad_zycfzb.edit;
                        cfzje := strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[9]));
                        zfzje := strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[10]));
                        ad_zycfzb['tmh'] := sp_cx_zybrjbqk['tmh'];
                        ad_zycfzb['zyh'] := sp_cx_zybrjbqk['zyh'];
                        ad_zycfzb['cfbh'] := xycf_bh;
                        if (pub_yydm<>'0175') and (pub_yydm<>'0124') and (pub_yydm<>'0199') and (pub_yydm<>'0182') then
                        begin
                          ad_zycfzb['cfzje'] := lsje;
                          ad_zycfzb['zfzje'] := zfje;
                          ad_zycfzb['cgzje'] := cgje;
                        end
                        else
                        begin
                          ad_zycfzb['cfzje'] := lsje * strtoint(fs.Text);
                          ad_zycfzb['zfzje'] := zfje * strtoint(fs.Text);
                          ad_zycfzb['cgzje'] := cgje * strtoint(fs.Text);
                        end;
                        ad_zycfzb['ysdm'] := pri_kdys;
                        ad_zycfzb['hjczy'] := pub_czydm;
                        ad_zycfzb['hjrq'] := frm_func.curr_date();
                        ad_zycfzb['kdks'] := pri_kdks;
                        ad_zycfzb['czks'] := pri_czks;
                        ad_zycfzb['hjks'] := pub_ksdm;
                        ad_zycfzb['cflb'] := cflb;
                        ad_zycfzb['sfbz'] := true;
                        ad_zycfzb['cfjl'] := fs.Text;
                        ad_zycfzb['tssm'] := '���ڷ�ҩ(��)';
                        //����ҩ��������������
//                        if cflb = 'ZY' then
//                            ad_zycfzb['pldh'] := cfph;
                        ad_zycfzb.post;
                        ad_zycfzb.UpdateBatch(arall); //��ҩסԺ�����ܱ������
                    end;
                    dm_data.ado_mydata.CommitTrans;
                    if lsje > strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[9])) + 0.05 then
                        ScreenCap(0, 0, screen.Width, screen.Height);
                    changedflag := false;
                    cflr := true;
                    zqbcbz := true;
                except
                    dm_data.ado_mydata.RollbackTrans;
                    Application.MessageBox('����û����ȷ���棬���ٴα���', '����', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR)
                end;
            end;
        end
        else
        begin
            Application.MessageBox('�մ���1', '����', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR);
            cfmx_input.setfocus;
        end
    except
        begin
            Application.MessageBox(pchar('�մ���2 ' + cfmx_input.GetFooterValue(0, cfmx_input.columns[9]) + ' ' + floattostr(lsje)), '����', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR);
            cfmx_input.setfocus;
        end
    end;
end;

procedure Tfrm_cydycfhj.ad_zycfmxCalcFields(DataSet: TDataSet);
begin
    //��ÿһ�ֲ��˶�����ybndzje�������޶������Ʒѳ����˼����޶�����з��ü�Ϊ�Է�
    ad_zycfmx['zje'] := (ad_zycfmx.fieldbyname('ypsl').asfloat * ad_zycfmx.fieldbyname('ypdj').asfloat);
    if trim(sp_cx_zybrjbqk.fieldbyname('zfzdmc').asstring) <> '' then
    begin
        if sp_cx_zybrjbqk.fieldbyname('ybndzje').asfloat - sp_cx_zybrjbqk.fieldbyname('zfy').asfloat > 0 then /////-strtofloat(bcje.text)
            ad_zycfmx['zfje'] := (ad_zycfmx.fieldbyname('zje').asfloat *
                ad_zycfmx.fieldbyname(trim(sp_cx_zybrjbqk.fieldbyname('zfzdmc').asstring)).asfloat / 100)
        else
            ad_zycfmx['zfje'] := (ad_zycfmx.fieldbyname('zje').asfloat);
    end
    else
        ad_zycfmx['zfje'] := (ad_zycfmx.fieldbyname('zje').asfloat);
    if ad_zycfmx.fieldbyname('jlyp').asboolean then
        ad_zycfmx['jylyp'] := '����'
    else
        if ad_zycfmx.fieldbyname('ylyp').asboolean then
            ad_zycfmx['jylyp'] := '����'
        else
            ad_zycfmx['jylyp'] := '�Է�'
end;

procedure Tfrm_cydycfhj.cfmx_inputColExit(Sender: TObject);
var i:Integer;
    _temp:Boolean;
    a:real;
begin
    //ypmcprocess(sp_cx_xyjg, pub_zyxyfdm, 2)

  if  (cfmx_input.selectedindex = 4) then
  begin
              if (cfmx_input.Columns[4].DisplayText<>'') then
              begin
                DM_data.qry_pub.close;
                DM_data.qry_pub.SQL.Text:='select * from sys_ypyf where rtrim(mc)='+''''+
                Trim(cfmx_input.Columns[4].DisplayText)+'''';
                DM_data.qry_pub.Open;
                if DM_data.qry_pub.IsEmpty then
                begin
                  messagedlg('ҩƷ�÷��������������������룡', mterror, [mbok], 0);
                  cfmx_input.selectedindex := 4;
                end;
              end;
              cfbz := false;
  end;

  if (cfmx_input.selectedindex = 5) and (cfmx_input.Columns[5].DisplayText<>'') then
  begin
            try
            i := strtoint( trim( cfmx_input.Columns[5].DisplayText ) );
                if ( i > 0 ) and ( i < qry_gytj.RecordCount ) then
                begin
                  _temp := true;
                end
                else
                begin
                  _temp := false;
                end;
            except
                  _temp := false;
                end;
            if _temp then //�������ּ���
            begin
            qry_gytj.Filtered := false;
            qry_gytj.RecNo := i;
            qry_gytj.FieldByName( 'yytj' ).Value := qry_gytj.FieldByName( 'mc' ).AsString;
            end
            else
            begin
            qry_gytj.Filtered := false;
            if trim( cfmx_input.Columns[5].DisplayText ) <> '' then
            begin
            qry_gytj.Filter := 'pym like ' + #39 + '%' + Trim( ad_zycfmx.FieldByName( 'yytj' ).asstring ) + '%' + #39;
            qry_gytj.Filter := qry_gytj.Filter + ' or mc like ' + #39 + '%' + Trim( ad_zycfmx.FieldByName( 'yytj' ).asstring ) + '%' + #39; //grid_yzlr.Columns[6].DisplayText
            qry_gytj.Filtered := true;
            end;
            if qry_gytj.RecordCount > 0 then
            begin
              ad_zycfmx.FieldByName( 'yytj' ).Value := qry_gytj.FieldByName( 'mc' ).AsString;
            end
            else
            begin
              messagedlg('��ҩ;���������������������룡', mterror, [mbok], 0);
              cfmx_input.selectedindex := 5;
            end;
            end;
                cfbz := false;
  end ;
      //ypmcprocess(sp_cx_xyjg, pub_zyxyfdm, 2)
      if  (cfmx_input.selectedindex = 2) and (Trim(cfmx_input.Columns[2].DisplayText)<>'') then
      begin
        try
          a:=StrToFloat(trim(cfmx_input.Columns[2].DisplayText));
        except
          Application.MessageBox('�������ָ�ʽ����', '����', MB_OK + 
            MB_ICONSTOP);
          cfmx_input.selectedindex := 2;
        end;
      end;
end;

procedure Tfrm_cydycfhj.cfmx_inputColEnter(Sender: TObject);
begin
    ypbzprocess
end;

procedure Tfrm_cydycfhj.ypmc_gridExit(Sender: TObject);
begin
    ypdmmcprocess;
end;

procedure Tfrm_cydycfhj.ypdw_gridExit(Sender: TObject);
begin
    ypdw_grid.Visible := false;
    cfmx_input.setfocus;
    cfmx_input.selectedindex := 4;
end;

procedure Tfrm_cydycfhj.cfmx_inputKeyPress(Sender: TObject; var Key: Char);
var
    myrect: Trect;
    i:Integer;
    _temp:Boolean;
begin
    if (key in ['A'..'z', '0'..'9']) or (ord(key) > 127) then
    begin
        cfbz := true;
        changedflag := true;
    end
    else
        if (key = ' ') and (cfmx_input.SelectedIndex = 2) then
        begin
            sp_cx_ypbz.close;
            sp_cx_ypbz.Parameters.ParamByName('@ypdm').value := ad_zycfmx['ypdm'];
            sp_cx_ypbz.Open;
            if sp_cx_ypbz.recordcount > 1 then
            begin
                ypdw_grid.visible := true;
                ypdw_grid.visible := true;

                myrect := cfmx_input.cellrect(3, THACKDBGRID(cfmx_input).row);
                ypdw_grid.left := myrect.left;
                if myrect.Bottom + ypdw_grid.height > cfmx_input.height then
                    ypdw_grid.top := myrect.top - ypdw_grid.Height
                else
                    ypdw_grid.top := myrect.Bottom;
                ypdw_grid.setfocus;
            end
            else
                messagedlg('��ҩƷֻ��һ����װ', mtinformation, [mbok], 0);

            //����ҩƷ��λ�Ͱ�װ����
        end;
    if (key = #13) and (cfmx_input.SelectedIndex = 8) then //��������
    begin
        CFBZ := false;
        if (ad_zycfmx.fieldbyname('ypsl').asfloat <= 0) or ((trunc(ad_zycfmx.fieldbyname('ypsl').asfloat) - ad_zycfmx.fieldbyname('ypsl').asfloat) * 1000 <> 0) then
        begin
            messagedlg('ҩƷ��������ȷ����������ȷ����', mterror, [mbok], 0);
            ad_zycfmx.edit;
            ad_zycfmx['ypsl'] := 0;
        end //�����ж�ҩƷ����Ϊ��Ϊ0
        else
            if (strtoint(fs.Text) * ad_zycfmx['ypsl'] * ad_zycfmx['ypbzbl'] > sp_cx_xyjg['zxdwsl']) and ((ad_zycfmx.State = dsedit) or (ad_zycfmx.State = dsinsert)) then
            begin
                messagedlg('ҩƷ�����������', mterror, [mbok], 0);
                ad_zycfmx.edit;
                ad_zycfmx['ypsl'] := 0;
            end
            else
            begin
            if (ad_zycfmx.RecordCount>=5) and (pub_yydm='0015') then
            begin
            messagedlg('һ�Ŵ���ֻ��¼5��ҩƷ�����ȱ�����ټ���¼��', mterror, [mbok], 0);
            end
            else
            begin
            ad_zycfmx.append;
            cfmx_input.selectedindex := 0
            end;



            end
    end
    else
        if (key = #13) and (cfmx_input.selectedfield.FieldName = 'ypmc') then //����ҩƷ����
        begin
            sp_cx_xyjg.close;
            cfbz := false;
            if (trim(ad_zycfmx.fieldbyname('ypdm').asstring) = '') or (changedflag) then
                sp_cx_xyjg.Parameters.ParamByName('@pym').value := ad_zycfmx['ypmc']
            else
                sp_cx_xyjg.Parameters.ParamByName('@pym').value := ad_zycfmx['ypdm'];
            sp_cx_xyjg.Parameters.ParamByName('@ksdm').value := yfdm;
            sp_cx_xyjg.Open;
            changedflag := false;

            if sp_cx_xyjg.IsEmpty then
            begin
                messagedlg('ҩƷ�����������������������룡', mterror, [mbok], 0);
                cfmx_input.setfocus;
            end //ҩƷ������Ҳ��ɹ�
            else
                if sp_cx_xyjg.RecordCount = 1 then
                begin
                    ypdmmcprocess //���ҳɹ�
                end
                else
                    if (sp_cx_xyjg.recordcount > 1) and (v_ypmc <> trim(ad_zycfmx.fieldbyname('ypmc').asstring)) then
                    begin
                        ypmc_grid.visible := true;
                        //myrect := THACKDBGRID( cfmx_input ).cellrect( 0, THACKDBGRID( cfmx_input ).row );
                        ypmc_grid.left := myrect.left;
                        if myrect.Bottom + ypmc_grid.height > cfmx_input.height then
                            ypmc_grid.top := myrect.top - ypmc_grid.Height
                        else
                            ypmc_grid.top := myrect.Bottom;
                        panel2.enabled := true;
                        czwcg := false;
                        ypmc_grid.setfocus;
                    end; //���ҳɹ�����������һ
        end
        else
            if (key = #13) and (cfmx_input.selectedindex = 2) then
            begin
                cfmx_input.selectedindex := 4;
                cfbz := false;
            end
            else  if (key = #13) and (cfmx_input.selectedindex = 4) then
            begin
              if (cfmx_input.Columns[4].DisplayText<>'') then
              begin
                DM_data.qry_pub.close;
                DM_data.qry_pub.SQL.Text:='select * from sys_ypyf where rtrim(mc)='+''''+
                Trim(cfmx_input.Columns[4].DisplayText)+'''';
                DM_data.qry_pub.Open;
                if DM_data.qry_pub.IsEmpty then
                begin
                  messagedlg('ҩƷ�÷��������������������룡', mterror, [mbok], 0);
                  Exit;
                end;

              end;
              cfmx_input.selectedindex := 5;
              cfbz := false;
            end
            else  if (key = #13) and (cfmx_input.selectedindex = 5) and (cfmx_input.Columns[5].DisplayText<>'') then
            begin
            try
            i := strtoint( trim( cfmx_input.Columns[5].DisplayText ) );
                if ( i > 0 ) and ( i < qry_gytj.RecordCount ) then
                begin
                  _temp := true;
                end
                else
                begin
                  _temp := false;
                end;
            except
                  _temp := false;
                end;
            if _temp then //�������ּ���
            begin
            qry_gytj.Filtered := false;
            qry_gytj.RecNo := i;
            qry_gytj.FieldByName( 'yytj' ).Value := qry_gytj.FieldByName( 'mc' ).AsString;
            end
            else
            begin
            qry_gytj.Filtered := false;
            if trim( cfmx_input.Columns[5].DisplayText ) <> '' then
            begin
            qry_gytj.Filter := 'pym like ' + #39 + '%' + Trim( ad_zycfmx.FieldByName( 'yytj' ).asstring ) + '%' + #39;
            qry_gytj.Filter := qry_gytj.Filter + ' or mc like ' + #39 + '%' + Trim( ad_zycfmx.FieldByName( 'yytj' ).asstring ) + '%' + #39; //grid_yzlr.Columns[6].DisplayText
            qry_gytj.Filtered := true;
            end;
            if qry_gytj.RecordCount > 0 then
            begin
              ad_zycfmx.FieldByName( 'yytj' ).Value := qry_gytj.FieldByName( 'mc' ).AsString;
            end
            else
            begin
              messagedlg('��ҩ;���������������������룡', mterror, [mbok], 0);
              Exit;
            end;
            end;
                cfmx_input.selectedindex := 8;
                cfbz := false;
            end
            else if (key = #13) and (cfmx_input.selectedindex = 5) and (cfmx_input.Columns[5].DisplayText='') then
            begin
              ShowMessage('������д��ҩ;����');
              cfmx_input.selectedindex := 5;
              cfbz := false;
            end
            else if not ( (key = #13) or ( Key in ['0'..'9']) or ( Key in ['.']) or (key = #8) or (cfmx_input.selectedindex <> 2))  then
            begin
              key:=#0;
            end;
                 
end;

procedure Tfrm_cydycfhj.ad_zycfmxAfterInsert(DataSet: TDataSet);
begin
    cfmx_input.selectedindex := 0;
    ad_zyfymx_ls.edit;
    if cfmx_input.GetFooterValue(0, cfmx_input.columns[9]) <> '' then
        ad_zyfymx_ls['fyje'] := strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[9]));
    if cfmx_input.GetFooterValue(0, cfmx_input.columns[10]) <> '' then
        ad_zyfymx_ls['ZFje'] := strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[10]));
    ad_zyfymx_ls.post;
    sp_cx_syje.close;
    sp_cx_syje.Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    sp_cx_syje.Open;
    if cfmx_input.GetFooterValue(0, cfmx_input.columns[10]) = '' then
        syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat -
            sp_cx_syje.fieldbyname('zfze').asfloat - ad_zyfymx_ls.fieldbyname('ZFje').asfloat * strtoint(fs.Text)])
    else
        syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat -
            sp_cx_syje.fieldbyname('zfze').asfloat - strtoint(fs.Text) * strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[10]))]);
end;

procedure Tfrm_cydycfhj.B_FINALClick(Sender: TObject);
begin
    {if B_createbatch.Enabled then
    if application.messagebox('����û�����ɣ��Ƿ������������˳���','��ʾ',mb_yesno+mb_iconinformation)=IDYES then
    b_createbatch.Click;
    ad_zycfmx.close;
    ad_zyfymx_ls.close;}
    close;
end;

procedure Tfrm_cydycfhj.ad_zycfmxBeforePost(DataSet: TDataSet);
begin
    qhbz := true; //�˳����Ӵ˱�־��Ϊ�˶��˳�����ʱ����ʹ���
    if (cfmx_input.SelectedIndex = 8) then
        if ad_zycfmx.fieldbyname('ypsl').asfloat <= 0 then
        begin
            messagedlg('ҩƷ��������ȷ����������ȷ����', mterror, [mbok], 0)
        end; //�����ж�ҩƷ����Ϊ��Ϊ0
    //ad_zycfmx['XH'] := cfmx_input.RowCount - 3;

    if ad_zycfmx.fieldbyname('xh').asinteger = 0 then
        //    ad_zycfmx['XH'] := cfmx_input.RowCount - 3;
        if ad_zycfmx.RecNo = -1 then
            ad_zycfmx['XH'] := ad_zycfmx.RecordCount + 1
        else
            ad_zycfmx['XH'] := ad_zycfmx.RecNo + 1;

end;

procedure Tfrm_cydycfhj.sfxmwriteIn;
begin
    if not ad_zyfymx_ls.active then
    begin
        ad_zyfymx_ls.Close;
        ad_zyfymx_ls.commandtext := 'select * from zysf_zyfymx_ls where and zyh=' + #39 + v_zyh + #39 + ' and ph=' + #39 + ph + #39;
        ad_zyfymx_ls.open;
    end;
    if ad_zyfymx_ls.isempty  then
        ad_zyfymx_ls.append
    else
        if (not ad_zyfymx_ls.isempty) and (trim(ad_zyfymx_ls.FieldByName('fydm').asstring) = '') then
            ad_zyfymx_ls.edit;
    ad_zyfymx_ls['fydm'] := fydm;
    ad_zyfymx_ls['zyh'] := sp_cx_zybrjbqk['zyh'];
    ad_zyfymx_ls['tmh'] := sp_cx_zybrjbqk['tmh'];
    ad_zyfymx_ls['kdks'] := pri_kdks;
    ad_zyfymx_ls['kdys'] := pri_kdys;
    ad_zyfymx_ls['czks'] := pri_czks;
    ad_zyfymx_ls['czys'] := pri_czys;
    ad_zyfymx_ls['sfczy'] := pub_czydm;
    ad_zyfymx_ls['cfbh'] := xycf_bh;
    ad_zyfymx_ls['sfrq'] := frm_func.curr_date();
    ad_zyfymx_ls['ph'] := ph;
end;

procedure Tfrm_cydycfhj.B_ENTERClick(Sender: TObject);
var
    i: integer;
    returnvalue: string;
begin
    //д��zysf_zyfymx_ls
    //Ϊ���������ַѱ�־
    //����ʱ��д����ʽ��
    //ת������������һ��
    //b_enter.enabled:=true;
    //��������
    //ph:= '';
//    if Messagedlg( '�Ƿ����������', mtinformation, [mbYes, mbNo], 0 ) = mryes then
//    begin
//        pljr;
//    end;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.Text:='select * from zysf_zydj where zyh='+''''+
    sp_cx_zybrjbqk.fieldbyname('zyh').asstring+''''+' and jsbz<>1 and cybz<>1';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      Application.MessageBox('�ò����ѳ�Ժ�����ܻ�������', '����', MB_OK +
        MB_ICONSTOP);
      Exit;
    end;
    b_enter.setfocus;
    if ad_zycfmx.state in [dsedit, dsinsert] then
        ad_zycfmx.post;
    with dm_data.qry_pub do
    begin
        close;
        sql.clear;
        sql.text := 'select * from sys_jzzt';
        open;
    end;
    if dm_data.qry_pub['jzzt'] then
    begin
        application.MessageBox('ϵͳ���ڽ�ת�������Ժ�!', '��ʾ', 0 + 48);
        abort;
    end;
    cfzje := 0;
    zfzje := 0;
    if ad_zyfymx_ls.isempty then
    begin
        ad_zyfymx_ls.UpdateBatch(arall);
        messagedlg('�����Ѿ����', mtinformation, [mbok], 0);
        tmh.setfocus;
    end;
    zqbcbz := false;
    if strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[9])) > 0 then
    begin
        cfmx_input.SelectedIndex := 0;
        datasave('zyxyf_zycfzb');
        sp_cx_syje.close;
        sp_cx_syje.Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
        sp_cx_syje.Open;
        if cfmx_input.GetFooterValue(0, cfmx_input.columns[10]) = '' then
            syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat -
                sp_cx_syje.fieldbyname('zfze').asfloat - strtoint(fs.Text) * ad_zyfymx_ls.fieldbyname('ZFje').asfloat])
        else
            syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat -
                sp_cx_syje.fieldbyname('zfze').asfloat - strtoint(fs.Text) * strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[10]))]);
        b_enter.setfocus;
        i := 1;
        if (trim(pri_kdks) <> '') and (trim(pri_kdys) <> '') and (trim(pri_czks) <> '') then
        begin
            ad_zyfymx_ls.edit;
            ad_zyfymx_ls['zfje'] := zfzje * strtoint(fs.Text);
            ad_zyfymx_ls['fyje'] := cfzje * strtoint(fs.Text);
            ad_zyfymx_ls['cfbh'] := Trim(ad_zycfzb.FieldByName('cfbh').asstring);
            if (ad_zyfymx_ls.state = dsedit) or (ad_zyfymx_ls.state = dsinsert) then
                ad_zyfymx_ls.post;
            dm_data.ado_mydata.BeginTrans;
            try
                ad_zyfymx_ls.UpdateBatch(arall);
                dm_data.ado_mydata.CommitTrans;
            except
                zqbcbz := false;
                dm_data.ado_mydata.RollbackTrans;
                Application.MessageBox('����û����ȷ���棬���ٴ�ѡ��Ʒѹ��ܱ���', '����', MB_ok + MB_DEFBUTTON1 + MB_ICONERROR)
            end;
            if zqbcbz then // //ҩ������ //(strtofloat(syje.text) >= 0) or
                if (strtofloat(syje.text) + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat + pub_czje > 0) or (pub_yydm='0015')  then
                begin
//                    showmessage(inttostr(ad_zyfymx_ls.recordcount)+','+ad_zyfymx_ls['zyh']+','+ph) ;
                    sp_up_brfymxcl.close;
                    sp_up_brfymxcl.Parameters.ParamByName('@ph').value := ph;
                    sp_up_brfymxcl.Parameters.ParamByName('@zyh').value := ad_zyfymx_ls['zyh'];
                    sp_up_brfymxcl.Parameters.ParamByName('@fyze').value := cfzje;
                    sp_up_brfymxcl.Parameters.ParamByName('@zkje').value := 0;
                    sp_up_brfymxcl.Parameters.ParamByName('@zfje').value := zfzje;
                    sp_up_brfymxcl.Parameters.ParamByName('@qtfybs').value := ad_zyfymx_ls.recordcount;
                    sp_up_brfymxcl.Parameters.ParamByName('@xyfydm').value := fydm;
                    sp_up_brfymxcl.Parameters.ParamByName('@clfydm').value := fydm;
                    sp_up_brfymxcl.Parameters.ParamByName('@ksdm').value := pub_ksdm;
                    sp_up_brfymxcl.Parameters.ParamByName('@xyfksdm').value := yfdm;
                    sp_up_brfymxcl.Parameters.ParamByName('@zyfksdm').value := yfdm;
                    sp_up_brfymxcl.Parameters.ParamByName('@sczt').value := '';
                    sp_up_brfymxcl.ExecProc;
                    returnvalue := sp_up_brfymxcl.Parameters.ParamByName('@sczt').Value;
                    if returnvalue <> '1' then
                        if returnvalue = '3' then
                        begin
                            messagedlg('��ǰ������ҩ��������ҩƷ�����������', mtinformation, [mbok], 0);
                            DM_data.qry_pub.Close;
                            DM_data.qry_pub.SQL.Text := 'delete from zysf_zyfymx_ls where cfbh = '#39 + trim(cfbh.text) + #39;
                            DM_data.qry_pub.ExecSQL;
                            DM_data.qry_pub.Close;
                            DM_data.qry_pub.SQL.Text := 'delete from zyxyf_zycfzb where cfbh = '#39 + trim(cfbh.text) + #39;
                            DM_data.qry_pub.ExecSQL;
                            DM_data.qry_pub.Close;
                            DM_data.qry_pub.SQL.Text := 'delete from zyxyf_zycfmx where cfbh = '#39 + trim(cfbh.text) + #39;
                            DM_data.qry_pub.ExecSQL;

                        end
                        else
                            if returnvalue = '4' then
                            begin
                                messagedlg('��ǰ������ҩ��������ҩƷ�����������', mtinformation, [mbok], 0);

                                DM_data.qry_pub.Close;
                                DM_data.qry_pub.SQL.Text := 'delete from zysf_zyfymx_ls where cfbh = '#39 + trim(cfbh.text) + #39;
                                DM_data.qry_pub.ExecSQL;
                                DM_data.qry_pub.Close;
                                DM_data.qry_pub.SQL.Text := 'delete from zyxyf_zycfzb where cfbh = '#39 + trim(cfbh.text) + #39;
                                DM_data.qry_pub.ExecSQL;
                                DM_data.qry_pub.Close;
                                DM_data.qry_pub.SQL.Text := 'delete from zyxyf_zycfmx where cfbh = '#39 + trim(cfbh.text) + #39;
                                DM_data.qry_pub.ExecSQL;
                            end
                            else
                            begin
                                messagedlg('����û����ȷ���棬��ѡ�񡰼Ʒѡ����±���' + returnvalue, mtinformation, [mbok], 0);
                                DM_data.qry_pub.Close;
                                DM_data.qry_pub.SQL.Text := 'delete from zysf_zyfymx_ls where cfbh = '#39 + trim(cfbh.text) + #39;
                                DM_data.qry_pub.ExecSQL;
                                DM_data.qry_pub.Close;
                                DM_data.qry_pub.SQL.Text := 'delete from zyxyf_zycfzb where cfbh = '#39 + trim(cfbh.text) + #39;
                                DM_data.qry_pub.ExecSQL;
                                DM_data.qry_pub.Close;
                                DM_data.qry_pub.SQL.Text := 'delete from zyxyf_zycfmx where cfbh = '#39 + trim(cfbh.text) + #39;
                                DM_data.qry_pub.ExecSQL;
                            end

                        else
                            begin
                                Application.MessageBox('�Ƿѳɹ�!!!', '��ʾ', MB_ok + MB_DEFBUTTON1 + MB_ICONwarning);
                                //B_CREATEBATCH.Enabled := TRUE;
                                yycfsj := true;
                                panel1.enabled := true;
                                tmh.text := '';
                                tmh.SetFocus;
                            end;
                end
                else
                begin
                    if application.messagebox(pchar('���������ʽ��㣬���ܼƷѣ���ҩƷ���ᷢ��' + #13
                        + #13 + ' YES ɾ���������ݣ�' + #13 + #13 + '  �����ţ�' +
                        trim(cfbh.text)),
                        '��ʾ', mb_yesNo + mb_iconinformation) = IDyes then
                    begin
                        DM_data.qry_pub.Close;
                        DM_data.qry_pub.SQL.Text := 'delete from zysf_zyfymx_ls where cfbh = '#39 + trim(cfbh.text) + #39;
                        DM_data.qry_pub.ExecSQL;
                        DM_data.qry_pub.Close;
                        DM_data.qry_pub.SQL.Text := 'delete from zyxyf_zycfzb where cfbh = '#39 + trim(cfbh.text) + #39;
                        DM_data.qry_pub.ExecSQL;
                        DM_data.qry_pub.Close;
                        DM_data.qry_pub.SQL.Text := 'delete from zyxyf_zycfmx where cfbh = '#39 + trim(cfbh.text) + #39;
                        DM_data.qry_pub.ExecSQL;
                    end
                    else
                    begin
                        DM_data.qry_pub.Close;
                        DM_data.qry_pub.SQL.Text := 'update  zyxyf_zycfzb set sfbz=0 where cfbh = '#39 + trim(cfbh.text) + #39;
                        DM_data.qry_pub.ExecSQL;
                    end;
                    cfmx_input.setfocus;
                    panel1.enabled := true;
                    tmh.text := '';
                    tmh.SetFocus;
                end
        end
        else
        begin
            lostsender := b_enter;
            if trim(pri_kdks) = '' then
            begin
                application.MessageBox('û�����뿪������', '����', mb_ok + mb_iconerror);
                kdks.setfocus;
            end
            else
                if trim(pri_kdys) = '' then
                begin
                    application.MessageBox('û�����뿪��ҽ��', '����', mb_ok + mb_iconerror);
                    kdys.setfocus
                end
                else
                    if trim(pri_czks) = '' then
                    begin
                        application.MessageBox('û�����봦�ÿ���', '����', mb_ok + mb_iconerror);
                        czks.setfocus
                    end;
        end;
    end;
end;

procedure Tfrm_cydycfhj.locateypsl(tablename, fydm: string);
var
    sqls: widestring;
begin
    sqls := 'select * from zysf_zyfymx_ls where cfbh in (select * from ' + tablename + ' where cfbh=' + #39 + ad_zyfymx_ls['cfbh'] + #39;
    sqls := sqls + ' and ypdm in(select ypkc.ypdm from xyf_ypkc ypkc,(select ' + #39 + pub_zyxyfdm + #39 + ' ksdm,mx.ypdm,sum(mx.ypsl*mx.ypbzbl) ypsl';
    sqls := sqls + ' from zyxyf_zycfzb zb, zyxyf_zycfmx mx, ad_zyfymx_ls fy where zb.cfbh=mx.cfbh and ';
    sqls := sqls + ' zb.cfbh=fy.cfbh and fy.fydm=' + #39 + fydm + #39 + 'group by mx.ypdm) xyhj';
    sqls := sqls + ' where ypkc.zxdwsl-xyhj.ypsl<0  and ypkc.ypdm=xyhj.ypdm and ypkc.ksdm=xyhj.ksdm))';
    ad_zyfymx_ls.close;
    ad_zyfymx_ls.commandtext := sqls;
    ad_zyfymx_ls.open;
end;

procedure Tfrm_cydycfhj.ad_zyfymx_lsAfterScroll(DataSet: TDataSet);
begin
    if not ((ad_zyfymx_ls.state = dsInsert) or (ad_zyfymx_ls.state = dsedit)) then
    begin
        dispysks(kdys, ad_zyfymx_ls.fieldbyname('kdys').asstring, 1, pri_kdys);
        dispysks(kdks, ad_zyfymx_ls.fieldbyname('kdks').asstring, 2, pri_kdks);
        dispysks(czys, ad_zyfymx_ls.fieldbyname('czys').asstring, 1, pri_czys);
        dispysks(czks, ad_zyfymx_ls.fieldbyname('czks').asstring, 2, pri_czks);
    end;
    if (ad_zyfymx_ls['fydm'] = pub_xyfdm) and isbqxyhj then
    begin
        ad_zycfmx.Close;
        ad_zycfmx.commandtext := 'select * from zyxyf_zycfmx where cfbh=' + #39 + ad_zyfymx_ls['cfbh'] + #39;
        ad_zycfmx.open;
        //pri_czks := ad_zyfymx_ls.fieldbyname('czks').asstring;
        ds_ypmc.DataSet := sp_cx_xyjg;
    end
end;

procedure Tfrm_cydycfhj.kdysExit(Sender: TObject);
begin
    if ysksischange then
        ysprocess(kdys, pri_kdys)
    else
    begin
        if (pub_yf1 <> '') or (pub_yf2 <> '') or (pub_yf3 <> '') or (pub_yf4 <> '') then
        begin
            e_fydm.setfocus;
        end
        else
        begin
            cfmx_input.setfocus;
        end;
    end;
    frm_func.restorecolor(sender);
end;

procedure Tfrm_cydycfhj.kdyskdks(cledit: Tedit; var dm: string);
var
    sender: Tobject;
begin
    cledit.text := sp_cx_czyks['mc'];
    dm := sp_cx_czyks['dm'];
    cfmx_input.SetFocus;
    ksys_grid.visible := false;
end;

procedure Tfrm_cydycfhj.czksExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);
    if ysksischange then
        ksprocess(czks, pri_czks);
end;

procedure Tfrm_cydycfhj.czysExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);
    if ysksischange then
        ysprocess(czys, pri_czys)

end;

procedure Tfrm_cydycfhj.ksys_gridExit(Sender: TObject);
begin
    if ksys_grid.left = kdks.left then
        kdyskdks(kdks, pri_kdks)
    else
        if ksys_grid.left = kdys.left then
            kdyskdks(kdys, pri_kdys)
        else
            if ksys_grid.left = CZKS.left then
                kdyskdks(CZKS, pri_CZKS)
            else
                if ksys_grid.left = CZYS.left then
                    kdyskdks(CZYS, pri_CZys);
end;

procedure Tfrm_cydycfhj.ysprocess(tempedit: Tedit; var pri_var: string);
begin
    sp_cx_czyks.Close;
    sp_cx_czyks.Parameters.ParamByName('@srm').value := trim(tempedit.Text);
    sp_cx_czyks.Parameters.ParamByName('@czfs').value := 1;
    sp_cx_czyks.Parameters.ParamByName('@kssx').value := '09';
    sp_cx_czyks.Open;
    ysksischange := false;
    if sp_cx_czyks.IsEmpty then
    begin
        application.MessageBox('ҽ�����������������������', '����', mb_ok + mb_iconerror);
        tempedit.setfocus;
    end
    else
        if sp_cx_czyks.recordcount > 1 then
        begin
            ksys_grid.Columns.Clear;
            ksys_grid.Columns.add;
            ksys_grid.Columns[0].field := sp_cx_czyks.fieldlist[0];
            ksys_grid.Columns[0].title.caption := '����';
            ksys_grid.Columns.add;
            ksys_grid.Columns[1].field := sp_cx_czyks.fieldlist[1];
            ksys_grid.Columns[1].title.caption := '����';
            ksys_grid.Columns.add;
            ksys_grid.Columns[2].field := sp_cx_czyks.fieldlist[2];
            ksys_grid.Columns[2].title.caption := 'ƴ����д';
            ksys_grid.left := tempedit.left;
            ksys_grid.top := tempedit.top + tempedit.Height;
            ksys_grid.visible := true;
            ksys_grid.setfocus;
        end
        else
            if sp_cx_czyks.recordcount = 1 then
            begin
                kdyskdks(tempedit, pri_var)
            end
end;

procedure Tfrm_cydycfhj.ksprocess(tempedit: Tedit; var pri_var: string);
begin
    sp_cx_czyks.Close;
    sp_cx_czyks.Parameters.ParamByName('@srm').value := trim(tempedit.Text);
    sp_cx_czyks.Parameters.ParamByName('@czfs').value := 2;
    sp_cx_czyks.Parameters.ParamByName('@kssx').value := '09';
    sp_cx_czyks.Open;
    ysksischange := false;
    if sp_cx_czyks.IsEmpty then
    begin
        application.MessageBox('���Ҵ��������������������', '����', mb_ok + mb_iconerror);
        tempedit.setfocus;
    end
    else
        if sp_cx_czyks.recordcount > 1 then
        begin
            ksys_grid.Columns.Clear;
            ksys_grid.Columns.add;
            ksys_grid.Columns[0].field := sp_cx_czyks.fieldlist[0];
            ksys_grid.Columns[0].title.caption := '����';
            ksys_grid.Columns.add;
            ksys_grid.Columns[1].field := sp_cx_czyks.fieldlist[1];
            ksys_grid.Columns[1].title.caption := '��������';
            ksys_grid.Columns.add;
            ksys_grid.Columns[2].field := sp_cx_czyks.fieldlist[2];
            ksys_grid.Columns[2].title.caption := 'ƴ����д';
            ksys_grid.left := tempedit.left;
            ksys_grid.top := tempedit.top + tempedit.Height + panel1.top;
            ksys_grid.visible := true;
            ksys_grid.setfocus;
        end
        else
            if sp_cx_czyks.recordcount = 1 then
            begin
                kdyskdks(tempedit, pri_var)
            end
end;

procedure Tfrm_cydycfhj.kdksExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);
    if ysksischange then
        ksprocess(kdks, pri_kdks);
end;

procedure Tfrm_cydycfhj.ad_zycfmxBeforeDelete(DataSet: TDataSet);
var
    saveplace2: tbookmark;
begin
    saveplace2 := ad_zycfmx.getbookmark;
    if ad_zycfmx.CompareBookmarks(saveplace, saveplace2) = 0 then
    begin
        czwcg := false;
        panel2.enabled := true;
    end;
end;

procedure Tfrm_cydycfhj.B_CREATEBATCHClick(Sender: TObject);
begin
    try
        application.CreateForm(TFrm_zyplcffy, Frm_zyplcffy);
        Frm_zyplcffy.ShowModal;
    finally
        Frm_zyplcffy.Free;
    end;

end;

procedure Tfrm_cydycfhj.B_giveupClick(Sender: TObject);
begin
    b_giveup.setfocus;
    panel1.Enabled := true;
    tmh.text := '';
    tmh.setfocus;
end;

procedure Tfrm_cydycfhj.tmhEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
    if ad_zyfymx_ls.active then
        ad_zyfymx_ls.close;
    if ad_zycfmx.active then
        ad_zycfmx.close;
    bch.Text := '';
    fylb.Text := '';
    ryrq.Text := '';
    zfy.text := '0';
    zyj.text := '0';
    zzf.text := '0';
    syje.text := '0';

    //----------------
    fydm := '';
    fymc := '';
    //e_fydm.Text := '';
    e_dyyf.Text := '';
    yfdm := '';

end;

procedure Tfrm_cydycfhj.jfExecute(Sender: TObject);
begin
    if b_enter.enabled then
        B_ENTER.Click
end;

procedure Tfrm_cydycfhj.xgExecute(Sender: TObject);
begin
    if b_giveup.enabled then
        B_giveup.Click
end;

procedure Tfrm_cydycfhj.createbatchExecute(Sender: TObject);
begin
//    if B_createbatch.enabled then
//        B_CREATEBATCH.Click;
end;

procedure Tfrm_cydycfhj.ad_zycfmxAfterDelete(DataSet: TDataSet);
begin
    ad_zyfymx_ls.edit;
    if cfmx_input.GetFooterValue(0, cfmx_input.columns[9]) <> '' then
        ad_zyfymx_ls['fyje'] := strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[9]));
    if cfmx_input.GetFooterValue(0, cfmx_input.columns[10]) <> '' then
        ad_zyfymx_ls['ZFje'] := strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[10]));
    ad_zyfymx_ls.post;
    sp_cx_syje.close;
    sp_cx_syje.Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    sp_cx_syje.Open;
    if cfmx_input.GetFooterValue(0, cfmx_input.columns[10]) = '' then
        syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat -
            sp_cx_syje.fieldbyname('zfze').asfloat - strtoint(fs.Text) * ad_zyfymx_ls.fieldbyname('ZFje').asfloat])
    else
        syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat -
            sp_cx_syje.fieldbyname('zfze').asfloat - strtoint(fs.Text) * strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[10]))]);
    if ad_zycfmx.IsEmpty then
    begin
        ad_zycfmx.Close;
        if ad_zyfymx_ls.active then
            ad_zyfymx_ls.delete;
    end;
    if ad_zyfymx_ls.IsEmpty then
    begin
        ad_zyfymx_ls.close;
        changedflag := false;
        panel1.enabled := true;
        tmh.text := '';
        tmh.SetFocus;
    end;
end;

procedure Tfrm_cydycfhj.checksyje;
begin
    //��Ԥ�����������жϣ�ǰ��ʣ����-���η�����=syje.text+�����
    //�������Ƿ�ѽ��+�������Ա�ܹ�����Ĳ�Ա���Ƿ�� �Ƿ�С��0 �������ܼ�������
    // �����ǰ��ʣ����-���η�����=syje.text+�������Ա�ܹ�����Ĳ�Ա���Ƿ��
    //���С��0������ʾ����Ա��
    //�����ǰ��ʣ����-���η�����=syje.text���С��0������ʾ����Ա��
    if not B_ENTER.FOCUSED then
        if strtofloat(syje.text) + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat < 0 then
            if messagedlg('���ʽ��Ѿ��������������˽����ܼ�������' + #13 + #13 + '�Ƿ����ϴ˴μ��ˣ�', mtwarning, [mbyes, mbno], 0) = mryes then
                //�˴μ�������
            begin
                if ad_zycfmx.state in [dsedit, dsinsert] then
                    ad_zycfmx.post;
                if ad_zyfymx_ls.state in [dsedit, dsinsert] then
                    ad_zyfymx_ls.post;
                ad_zycfmx.delete;
                //   ad_zyfymx_ls.CancelBatch(arall);
                if ad_zycfmx.IsEmpty then
                begin
                    ad_zycfmx.Close;
                    if ad_zyfymx_ls.active then
                        ad_zyfymx_ls.delete;
                end;
                if ad_zyfymx_ls.IsEmpty then
                begin
                    ad_zyfymx_ls.close;
                    changedflag := false;
                    panel1.enabled := true;
                    tmh.text := '';
                    tmh.SetFocus;
                end;
            end
            else
            begin
                if ad_zycfmx.state in [dsedit, dsinsert] then
                    ad_zycfmx.Post;
                {   ad_zycfmx.CancelBatch(arcurrent);
                   messagedlg(' �뱣�洦�����Ʒ�',mtinformation,[mbok],0);//���������˱�־}
            end
                //������ǰ����
              {else
               if strtofloat(syje.text)+pub_czje<0 then
                 messagedlg('ע��:'+#13+'  �˲���Ƿ�˽���Ѿ������������������',mtinformation,[mbok],0)
               else
               if strtofloat(syje.text)<0 then
                 messagedlg('ע��:'+#13+'  ���Ͻ��Ѿ�Ϊ��!',mtinformation,[mbok],0);}
end;

procedure Tfrm_cydycfhj.dispysks(tempedit: Tedit; dm: string; czfs: integer; var pri_var: string);
begin
    if trim(dm) <> '' then
    begin
        sp_cx_czyks.Close;
        sp_cx_czyks.Parameters.ParamByName('@srm').value := trim(dm);
        sp_cx_czyks.Parameters.ParamByName('@czfs').value := czfs;
        sp_cx_czyks.Parameters.ParamByName('@kssx').value := '09';
        sp_cx_czyks.Open;
        tempedit.text := sp_cx_czyks.fieldbyname('mc').asstring;
        pri_var := trim(dm);
    end
    else
    begin
        pri_var := '';
        tempedit.text := '';
    end;
end;

procedure Tfrm_cydycfhj.e_fydmEnter(Sender: TObject);
begin
    e_fydm.SelectAll;
end;

procedure Tfrm_cydycfhj.e_fydmExit(Sender: TObject);
var
    _cflb: string; //�������
begin
    //------calmhawk----���ݷ��ô��룬����Ӧҩ����Ӧ����--------
    qry_yfdm.close;
    qry_yfdm.sql.text := 'select * from sys_kjsfxm where convert(char(2),dldm) = ' + #39 +
        '01' + #39 + ' and zyfy = 1 and yfzdmc <>' + #39 + #39;
    qry_yfdm.sql.Add(' and (fydm = ' + #39 + e_fydm.Text + #39);
    qry_yfdm.sql.Add(' or fymc like ' + #39 + '%' + e_fydm.Text + '%' + #39);
    qry_yfdm.sql.Add(' or pym like ' + #39 + '%' + e_fydm.Text + '%' + #39 + ')');
    qry_yfdm.open;
    if qry_yfdm.isempty then
    begin
        showMessage('��Ŀ��Ӧҩ�����δ���û򲻴��ڴ�ҩƷ��' + #13'����ϵͳά�������е�ϵͳ����������Ŀ��Ӧҩ�����!');
        abort;
    end;

    if fydm <> trim(qry_yfdm.FieldByName('fydm').AsString) then
    begin
        if ad_zycfmx.RecordCount > 0 then
        begin
            if Messagedlg('�ѻ���������𴦷���δ�Ƿѣ��Ƿ�������»���?', mtinformation, [mbYes, mbNo], 0) = mryes then
            begin
                ad_zycfmx.First;
                while not ad_zycfmx.IsEmpty do
                begin
                    ad_zycfmx.Delete;
                end;
            end
            else
            begin
                e_fydm.Text := fymc;
                abort;
            end;
        end;
    end;
    e_fydm.Text := trim(qry_yfdm.FieldByName('fymc').AsString);
    fymc := e_fydm.Text;
    fydm := trim(qry_yfdm.FieldByName('fydm').AsString);
    yfzdmc := trim(qry_yfdm.FieldByName('yfzdmc').AsString);
    _cflb := trim(qry_yfdm.FieldByName('cflb').AsString); //��ҩ��,�г�ҩ,�в�ҩ
    if _cflb = '��ҩ��' then
        cflb := 'ZY';
    if _cflb = '�в�ҩ' then
        cflb := 'ZC';
    if _cflb = '�г�ҩ' then
        cflb := 'ZN';
    //�в�ҩ�����������
    fs.Text := '1';
    if cflb = 'ZC' then
    begin
        fs.ReadOnly := false;
        fs.SetFocus;
        abort;
    end
    else
    begin
        fs.ReadOnly := true;
    end;
    fydmcl(yfzdmc);
end;

procedure Tfrm_cydycfhj.e_fydmKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
    begin
        cfmx_input.setfocus;
    end;
end;

procedure Tfrm_cydycfhj.fydmgridKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        SelectNext(activeControl, true, true)
end;

procedure Tfrm_cydycfhj.fsExit(Sender: TObject);
begin
    try
        if strtoint(fs.Text) < 0 then
        begin
            showMessage('�����������,��������� 0 ������!');
            fs.SetFocus;
        end
        else
        begin
            fydmcl(yfzdmc);
        end;
    except
        showMessage('�����������,��������� 0 ������!');
        fs.SetFocus;

    end;
end;

procedure Tfrm_cydycfhj.fsKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
    begin
        fs.OnExit(Sender);
    end;
end;

procedure Tfrm_cydycfhj.fydmgridEnter(Sender: TObject);
begin
    fydmlostfocus := false;
end;

procedure Tfrm_cydycfhj.fylbEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_cydycfhj.kdksEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_cydycfhj.kdysEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_cydycfhj.czksEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_cydycfhj.czysEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_cydycfhj.ggEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_cydycfhj.sfbzEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_cydycfhj.slEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_cydycfhj.jeEnter(Sender: TObject);
begin
    frm_func.changecolor(sender);
end;

procedure Tfrm_cydycfhj.fylbExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);
end;

procedure Tfrm_cydycfhj.ggExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);

end;

procedure Tfrm_cydycfhj.sfbzExit(Sender: TObject);
begin
    frm_func.restorecolor(sender);
end;

procedure Tfrm_cydycfhj.ad_zyfymx_lsAfterPost(DataSet: TDataSet);
begin
    if cfmx_input.GetFooterValue(0, cfmx_input.columns[9]) <> '0' then
    begin
        sp_cx_syje.Close;
        sp_cx_syje.Parameters.ParamByName('@zyh').value := v_zyh;
        sp_cx_syje.open;
        zyj.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat]);
        zzf.text := format('%3.2f', [sp_cx_syje.fieldbyname('zfze').asfloat +
            strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[10]))]);
        syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat -
            (sp_cx_syje.fieldbyname('zfze').asfloat + strtoint(fs.Text) * strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[10])))]);
    end;

end;

procedure Tfrm_cydycfhj.ypdw_gridKeyPress(Sender: TObject; var Key: Char);
var
    ypdj, cgdj, bzbl: real;
begin
    if key = #13 then
    begin
        cgdj := ad_zycfmx['kccgj'];
        ypdj := ad_zycfmx['ypdj'];
        bzbl := ad_zycfmx['ypbzbl'];
        ad_zycfmx.Edit;
        ad_zycfmx['ypdw'] := sp_cx_ypbz['ypdw'];
        ad_zycfmx['ypdwid'] := sp_cx_ypbz['id'];
        ad_zycfmx['ypbzbl'] := sp_cx_ypbz['bzbl'];
        ad_zycfmx['ypdj'] := (ypdj / bzbl) * sp_cx_ypbz['bzbl'];
        ad_zycfmx['kccgj'] := CGDJ;
        ypdw_grid.visible := false;
        cfmx_input.setfocus;
        //  ad_zycfmx.Post;
    end;
end;

procedure Tfrm_cydycfhj.cfmx_inputKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var
    i: integer;
begin

    if cfbz then
        if (key = vk_down) or (key = vk_up) or (key = vk_left) or (key = vk_right) or (key = vk_tab) then
            KEY := 0;

    if (key = 27) and (ad_zycfmx.RecordCount >0) then
    begin
        ad_zycfmx.delete;
        if ad_zycfmx.Active then
        begin
            ad_zycfmx.DisableControls;
            cfmx_input.SumList.Active := false;

            ad_zycfmx.First;
            for i := 1 to ad_zycfmx.RecordCount do
            begin
                ad_zycfmx.Edit;
                ad_zycfmx['XH'] := i;
                ad_zycfmx.next;
            end;

            ad_zycfmx.EnableControls;
            cfmx_input.SumList.Active := true;
            ad_zycfmx.AfterPost(ad_zycfmx);
        end;
    end;

end;

procedure Tfrm_cydycfhj.cfmx_inputEnter(Sender: TObject);
begin
    hjlb := 0;
    if e_dyyf.Text = '' then
    begin
        e_fydm.OnExit(Sender);
    end;
end;

procedure Tfrm_cydycfhj.ad_zycfmxAfterPost(DataSet: TDataSet);
begin
    calCsum(0);
    calCsum(1);
end;

procedure Tfrm_cydycfhj.FormShow(Sender: TObject);
begin

    tmh.setfocus;
    //if trim( tmh.text ) <> '' then
    //    tmhExit( tmh );

    //----��ѯ�󶨵�ҩ��------
  qry_gytj.Open;
  while not qry_gytj.Eof do
  begin
    cfmx_input.Columns[5].PickList.Add( trim( qry_gytj.FieldByName( 'mc' ).AsString ) );
    qry_gytj.Next;
  end;

  qry_ypyf.Open;
  while not qry_ypyf.Eof do
  begin
    cfmx_input.Columns[4].PickList.Add( trim( qry_ypyf.FieldByName( 'mc' ).AsString ) );
    qry_ypyf.Next;
  end;

end;

end.

