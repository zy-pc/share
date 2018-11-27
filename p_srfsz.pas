unit p_srfsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB;

type
  Tfrm_srfsz = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    cb_srf: TComboBox;
    btn_ok: TButton;
    btn_cancel: TButton;
    Label1: TLabel;
    qry_srf: TADOQuery;
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_srfsz: Tfrm_srfsz;

implementation

uses p_dm;

{$R *.dfm}

procedure Tfrm_srfsz.FormCreate(Sender: TObject);
begin
  cb_srf.Items.CommaText := Screen.Imes.CommaText; //�������ϵ��������뷨��ӵ������б�
  //��ѯ��ǰ����Ա��ǰ���õ����뷨===================================================
  with qry_srf do
  begin
    close;
    sql.Clear;
    sql.Add('select srf from sys_czy where dm=''' + p_dm.pub_czydm + '''');
    open;
    if recordcount > 0 then
    begin
      cb_srf.Text := trim(fieldbyname('srf').AsString);
    end;
    close;
  end;
  //====================================================================================
end;

procedure Tfrm_srfsz.btn_okClick(Sender: TObject);
begin
  //���õ�ǰ����Աϰ�ߵ��������뷨=============
  with qry_srf do
  begin
    close;
    sql.Clear;
    sql.Add('update sys_czy set srf=''' + trim(cb_srf.Text) + ''' where dm=''' + p_dm.pub_czydm + '''');
    try
      execsql;
      Application.MessageBox('���óɹ�', 'ϵͳ��ʾ', MB_OK + MB_ICONINFORMATION);
      self.ModalResult := mrOK;
    except
      on E: Exception do
      begin
        Application.MessageBox(pchar('���뷨����ʧ��!' + #13 + '������Ϣ:' + e.Message), 'ϵͳ��ʾ', MB_OK + MB_ICONERROR);
      end;
    end;
  end;
  //=========================================================================
end;

procedure Tfrm_srfsz.btn_cancelClick(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

end.
