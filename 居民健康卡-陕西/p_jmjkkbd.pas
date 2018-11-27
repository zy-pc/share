unit p_jmjkkbd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Buttons, superobject;

type
  Tfrm_jmjkkbd = class(TForm)
    btn_dk: TButton;
    grp_kxx: TGroupBox;
    lbl_cardNo: TLabel;
    edt_cardNo: TEdit;
    lbl_tmh: TLabel;
    edt_tmh: TEdit;
    qry_kyh: TADOQuery;
    lbl_sfzhm: TLabel;
    lbl_xm: TLabel;
    edt_xm: TEdit;
    lbl_xb: TLabel;
    edt_xb: TEdit;
    edt_sfzhm: TEdit;
    lbl_mz: TLabel;
    edt_mz: TEdit;
    lbl_csrq: TLabel;
    edt_csrq: TEdit;
    lbl_hy: TLabel;
    edt_hy: TEdit;
    lbl_zy: TLabel;
    edt_zy: TEdit;
    lbl_dz: TLabel;
    edt_dz: TEdit;
    lbl_lxr: TLabel;
    edt_lxr: TEdit;
    lbl_lxrgx: TLabel;
    edt_lxrgx: TEdit;
    lbl_lxrdh: TLabel;
    edt_lxrdh: TEdit;
    qry_bd: TADOQuery;
    btn_cancle: TBitBtn;
    btn_save: TBitBtn;
    lbl1: TLabel;
    edt_whcd: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_dkClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_cancleClick(Sender: TObject);
  private
    bdbz: Boolean;
    { Private declarations }
  public
    tmh: string;
    { Public declarations }
  end;

var
  frm_jmjkkbd: Tfrm_jmjkkbd;

implementation
uses p_dm, jkk_fun;

{$R *.dfm}

procedure Tfrm_jmjkkbd.btn_dkClick(Sender: TObject);
var link_js, address_js: ISuperObject;
var link_arr, address_arr: TSuperArray;
var i,j: Integer;
begin
//  cardNo := edt_cardNo.text;    //������
  try
    sr := '{"departmentCode": "'+pub_ksdm+'",'+
        '"departmentName": "'+pub_ksmc+'",'+
        '"operatorCode": "'+pub_czydm+'",'+
        '"operatorName": "'+pub_czyxm+'",'+
        '"useSystem": "1",'+
        '"medicalType": "2",'+
        '"departmentType": "1",'+
        '"payMode": "0",'+
        '"terminalType": "1",'+
        '"amount": "0.00"}';
    readCard('readCardInfo',sr,'') ;

    if Assigned(sc_json['responseInfo.isSuccess']) then     //����ע��
    begin
      isSuccess := sc_json['responseInfo.isSuccess'].AsString;
      if isSuccess = '0' then
      begin
        if Assigned(sc_json['businessInfo.cardNo']) then
        begin
          cardNo := sc_json['businessInfo.cardNo'].AsString ;
          edt_cardNo.text := cardNo;
        end;
        chipSerialNo := sc_json['businessInfo.chipSerialNo'].AsString;//оƬ���к�
        cardSerialNo := sc_json['businessInfo.cardSerialNo'].AsString;//�������к�
        cardIssuersCode := sc_json['businessInfo.cardIssuersCode'].AsString;//������������
        appCityCode := sc_json['businessInfo.appCityCode'].AsString;//Ӧ�ó��д���

        //��ѯ���񽡿����Ƿ��Ѿ���
        if cx_jzkbd(cardNo) <> '' then
        begin
          bdbz := True;
          tmh := cx_jzkbd(cardNo);       //�Ѱ�
        end else
        begin
          bdbz := False ;
          tmh := jmjkk_get_tmh('mz');   //δ�� �� �Զ����������
        end;
        edt_tmh.text := tmh ;
      end;
    end;
    sr := '{"departmentCode":"'+pub_ksdm+'",'+
          '"departmentName":"'+pub_ksmc+'",'+
          '"operatorCode":"'+pub_czydm+'",'+
          '"operatorName":"'+pub_czyxm+'",'+
          '"useSystem":"1",'+
          '"medicalType":"1",'+
          '"departmentType":"3",'+  //��������: 3�������
          '"payMode":"3",'+    //���ʽ: 3�ֽ�֧��
          '"terminalType":"1",'+ //ˢ���ն�����: 1�˹�����  2�����ն�
          '"amount":"0.00",'+ //ˢ�����
          '"identityNo":"'+cardNo+'",'+
          '"chipSerialNo":"'+chipSerialNo+'",'+
          '"cardSerialNo":"'+cardSerialNo+'",'+
          '"cardIssuersCode":"'+cardIssuersCode+'",'+
          '"appCityCode":"'+appCityCode+'"}';
    readcard('readPeopleInfo',sr,'');
    if Assigned(sc_json['responseInfo.isSuccess']) then
    begin
      isSuccess := sc_json['responseInfo.isSuccess'].AsString;
      if isSuccess = '0' then
      begin
        if Assigned(sc_json['businessInfo']) then
        begin
          jkk_sfzhm := sc_json['businessInfo.identityNo'].AsString;
          edt_sfzhm.text := sc_json['businessInfo.identityNo'].AsString;
          edt_xm.text := sc_json['businessInfo.name'].AsString;
          edt_xb.text := jmjkk_dmtomc('xbdm',sc_json['businessInfo.sex'].AsString);
          edt_mz.text := jmjkk_dmtomc('mzdm',sc_json['businessInfo.nation'].AsString);
          jkk_mz := jmjkk_dmtomc('mzdm',sc_json['businessInfo.nation'].AsString);
          edt_csrq.text := sc_json['businessInfo.birth'].AsString;
          edt_hy.text := jmjkk_dmtomc('hyzkdm',sc_json['businessInfo.maritalStatusCode'].AsString);
          edt_zy.text := jmjkk_dmtomc('zydm',sc_json['businessInfo.occupationCode'].AsString);
          edt_whcd.Text := jmjkk_dmtomc('whcddm',sc_json['businessInfo.culturalDegreeCode'].AsString);
        end;
        //���� json����
        if Assigned(sc_json['businessInfo.linkManInfo']) then
        begin
          link_js := sc_json['businessInfo.linkManInfo'];  ////������Ϊjson
          link_arr := link_js.AsArray;   //����

          for I := 0 to link_arr.Length - 1 do
          begin
            if link_arr[i]['name'].AsString <> '' then
            begin
              edt_lxr.Text := link_arr[i]['name'].AsString;   //��ϵ������
              edt_lxrgx.Text := jmjkk_dmtomc('gxdm',link_arr[i]['relationCode'].AsString); //��ϵ�˹�ϵ
              edt_lxrdh.Text := link_arr[i]['phoneNo'].AsString;  //��ϵ�˵绰
              break;
            end;
          end;
        end;
        if Assigned(sc_json['businessInfo.addressInfo']) then
        begin
          address_js := sc_json['businessInfo.addressInfo'];
          address_arr := address_js.AsArray;   //����
          for j := 0 to address_arr.Length - 1 do
          begin
            if address_arr[j]['address'].AsString <> '' then
            begin
              edt_dz.Text := address_arr[j]['address'].AsString;
              break;
            end;
          end;
        end;
      end;
    end;
    if bdbz then
    begin
      MessageBox(Handle,pchar('�ý������Ѱ󶨣��󶨿��ţ�'+tmh),'ϵͳ��ʾ',64);
    end else
    begin
      btn_save.Enabled := True ;
    end;
  except

  end;

end;

procedure Tfrm_jmjkkbd.btn_cancleClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_jmjkkbd.btn_saveClick(Sender: TObject);
begin
  if bdbz = False then
  begin
    //��sys_kyhд����
    qry_kyh.Close;
    qry_kyh.Open;
    qry_kyh.edit;
    qry_kyh['tmh'] := tmh;
    qry_kyh['brxm'] := trim(edt_xm.text);
    qry_kyh['brxb'] := trim(edt_xb.text);
    if Trim(edt_csrq.Text) = '' then
      qry_kyh['csrq'] := null
    else
      qry_kyh['csrq'] := StrToDateTimeDef(Trim(edt_csrq.Text),Now()); //StrToDateTime(Trim(edt_csrq.Text));
    qry_kyh['brzy'] := trim(edt_zy.text);
    qry_kyh['brmz'] := trim(edt_mz.Text);
    qry_kyh['brdz'] := Trim(edt_dz.Text);
    qry_kyh['dbr'] := Trim(edt_lxr.Text);
    qry_kyh['sfzhm'] := jkk_sfzhm;
    qry_kyh['jkrq'] := Now;
    qry_kyh.Post;

    qry_bd.Close;
    qry_bd.SQL.text := 'INSERT INTO jmjkk_kyhbd VALUES ('+quotedstr(cardNo)+','
        +quotedstr(tmh)+','+quotedstr(datetimetostr(now()))+',1)' ;
    qry_bd.ExecSQL;
  end;
  Close;
end;

procedure Tfrm_jmjkkbd.FormCreate(Sender: TObject);
begin
  Position := poScreenCenter ;
end;

procedure Tfrm_jmjkkbd.FormShow(Sender: TObject);
begin
  bdbz := True;
end;

end.
