unit p_Critical_Values_Operation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls;

type
  TOperationType=(INSPECTION,//检验
                  PACS       //PACS检查
                  );

type
  TFrm_Critical_Values_Operation = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    qry_clmm: TADOQuery;
    Button2: TButton;
    Panel1: TPanel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    z_zyh:string;

    { Public declarations }
  end;

var
  Frm_Critical_Values_Operation: TFrm_Critical_Values_Operation;


implementation

uses p_dm,p_func,P_main,p_jyjg;

{$R *.dfm}

procedure TFrm_Critical_Values_Operation.Button1Click(Sender: TObject);
begin
  qry_clmm.close;
  qry_clmm.SQL.Text:='select dbo.sys_xtjem(kl) mm from sys_czy where dm='+''''+
  Edit1.text+'''';
  qry_clmm.Open;
  if qry_clmm.IsEmpty then
  begin
    Application.MessageBox('无此帐号！', '提错误示', MB_OK + MB_ICONSTOP);
  end
  else
  begin
    if qry_clmm.FieldByName('mm').AsString<>Trim(Edit2.text) then
    begin
      Application.MessageBox('密码错误！', '提错误示', MB_OK + MB_ICONSTOP);
    end
    else
    begin
      try
        qry_clmm.Close;
        frm_main.qry_pacs_wjz.refresh;
        frm_main.qry_pacs_wjz.first;
        while not frm_main.qry_pacs_wjz.Eof do
        begin
          qry_clmm.SQL.Clear;
          qry_clmm.SQL.Text := 'UPDATE zybl_pacswjz SET clbz=1,clr=''' +
            pub_czydm + ''',clrq= GETDATE() WHERE tmh=''' +
            frm_main.qry_pacs_wjz.FieldByName('tmh').AsString + ''' AND jcxmmc='''+
            frm_main.qry_pacs_wjz.FieldByName('jcxmmc').AsString + ''' AND clbz=0';

          DM_data.ado_mydata.BeginTrans;
          qry_clmm.ExecSQL;
          DM_data.ado_mydata.CommitTrans;
          frm_main.qry_pacs_wjz.Next;
        end;
      except
        DM_data.ado_mydata.RollbackTrans;
        Application.MessageBox('写入失败！', '提错误示', MB_OK + MB_ICONSTOP);
      end;
      Self.Close;
    end;
  end;
end;

procedure TFrm_Critical_Values_Operation.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Critical_Values_Operation.Button3Click(Sender: TObject);
begin
  frm_main.tmh.Text := frm_main.qry_pacs_wjz.FieldByName('tmh').AsString;
  frm_main.zyysgzzi02Click(sender);
  
end;

procedure TFrm_Critical_Values_Operation.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Edit2.SetFocus;
  end;
end;

procedure TFrm_Critical_Values_Operation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  P_main.pacs_wjzxx:='0';
  frm_main.Timer10.Enabled := True;
end;

procedure TFrm_Critical_Values_Operation.FormShow(Sender: TObject);
begin
  EnableWindow(frm_main.Handle, true);
end;

end.
