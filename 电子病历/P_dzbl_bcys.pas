unit P_dzbl_bcys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, OleCtrls, EMRPAD30Lib_TLB,ADODB, DB;

type
  Tfrm_dzbl_bcys = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    EMRPad302: TEMRPad30;
    qry_cx: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    pb_zyh:string;
    { Public declarations }
  end;

var
  frm_dzbl_bcys: Tfrm_dzbl_bcys;

implementation

uses p_dm;

{$R *.dfm}

procedure Tfrm_dzbl_bcys.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_dzbl_bcys.Button2Click(Sender: TObject);
var  stream, streamxml: TADOBlobStream;
     filename: string;
begin
  if frm_dzbl_bcys.Caption='添加系统宏' then
  begin
    if Trim(Edit1.Text)='' then
    begin
      Application.MessageBox('请填写增加宏的名字！', '错误', MB_OK +
      MB_ICONSTOP);
      Exit;
    end
    else
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:='select * from sys_dzbl_dyys where ysmc='+''''+
      Trim(Edit1.text)+'''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        try
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.Text:='insert into sys_dzbl_dyys select '+''''+
          Trim(Edit1.text)+'''';
          DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.Text:='alter table zydzbl_micro add '+
          Trim(Edit1.text)+' varchar(8000)';
          DM_data.qry_pub.ExecSQL;
          Application.MessageBox('添加成功！', '提示', MB_OK + MB_ICONINFORMATION);
          Close;
        except
          Application.MessageBox('添加失败！', '错误', MB_OK +
        MB_ICONSTOP);
        end;
      end
      else
      begin
        Application.MessageBox('此宏已经存在！', '错误', MB_OK +
        MB_ICONSTOP);
        Exit;
      end;
    end;

  end
  else
  begin
    if Trim(Edit1.Text)='' then
    begin
      Application.MessageBox('请填写需要保存的元素名字！', '错误', MB_OK +
      MB_ICONSTOP);
      Exit;
    end
    else
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.Text:='select * from zydzbl_ysbc where zyh='+''''+pb_zyh+''''+
      ' and rtrim(blmc)='+''''+Trim(Edit1.Text)+'''';
      DM_data.qry_pub.Open;
      if not DM_data.qry_pub.IsEmpty then
      begin
        Application.MessageBox('该元素已经存在，不能保存！', '错误', MB_OK +
        MB_ICONSTOP);
        Exit;
      end;
      EMRPad302.EditPaste;
      try
        qry_cx.Close;
        qry_cx.Parameters.ParamByName('zyh').Value := pb_zyh;
        qry_cx.Open;
        qry_cx.Append;
        qry_cx.FieldByName('zyh').asstring:=pb_zyh;
        qry_cx.FieldByName('blmc').asstring:=trim(Edit1.text);
        qry_cx.FieldByName('blys').asstring:=pub_czydm;
        qry_cx.Post;
        qry_cx.Close;
        qry_cx.sql.text:='select * from zydzbl_ysbc where zyh='+''''+pb_zyh+''''+' and '+
        ' blmc='+''''+trim(Edit1.text)+'''';
        qry_cx.Open;
        filename := GetCurrentDir + '\' + 'stemp';
        EMRPad302.FileSaveAs(FileName, 0, 0);
        EMRPad302.FileSaveAs(FileName + 'xml', 4, 0);
        qry_cx.Edit;
        stream := TADOBlobStream.Create(qry_cx.FieldByName('blwj') as TBlobField, bmWrite);
        stream.LoadFromFile(filename);
        streamxml := TADOBlobStream.Create(qry_cx.FieldByName('xmlwj') as TBlobField, bmWrite);
        streamxml.LoadFromFile(filename + 'xml');
      finally
        stream.Free;
        streamxml.Free;
      end;
      try
        qry_cx.Post;
        Application.MessageBox('保存成功！', '提示', MB_OK + MB_ICONINFORMATION);
        Close;
      except
        Application.MessageBox('保存失败！', '错误', MB_OK +
        MB_ICONSTOP);
      end;
    end;
  end;
end;

procedure Tfrm_dzbl_bcys.FormShow(Sender: TObject);
begin
  EMRPad302.UniversalBoolFunction(pub_dzblzcm, '', 98, pub_dzblzch);
end;

end.
