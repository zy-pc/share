unit P_zyyzmbmc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxGraphics, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckBox, DB, ADODB;

type
  Tfrm_zyyzmbmc = class(TForm)
    edit_mbmc: TEdit;
    Label1: TLabel;
    b_ok: TBitBtn;
    b_close: TBitBtn;
    cmb_mblb: TcxComboBox;
    Label2: TLabel;
    chkzy: TcxCheckBox;
    chkmz: TcxCheckBox;
    qry_yzmbmx: TADOQuery;

    procedure b_closeClick(Sender: TObject);
    procedure b_okClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    qry_yz: TADOQuery;
    dymk: string;
    { Private declarations }


  public
    { Public declarations }
  end;

var
  frm_zyyzmbmc: Tfrm_zyyzmbmc;
procedure frm_yzmbsave(qry_yzmx: TADOQuery; mc, dy: string);
implementation
uses p_dm, p_func;
{$R *.dfm}

procedure Tfrm_zyyzmbmc.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zyyzmbmc.b_okClick(Sender: TObject);
var
  zyyz_mbmc, zyyz_mblb: string;
  zyyz_mbmz, zyyz_mbzy, ztid: Integer;
begin
  zyyz_mbmc := trim(edit_mbmc.Text);
  zyyz_mblb := cmb_mblb.Text;

  if chkzy.Checked then
    zyyz_mbzy := 1
  else
    zyyz_mbzy := 0;
  if chkmz.Checked then
    zyyz_mbmz := 1
  else
    zyyz_mbmz := 0;
  if qry_yz.RecordCount = 0 then
    Abort;
  dm_data.qry_pub.Close;
  dm_data.qry_pub.SQL.Text := 'select * from zybl_ztdm where ztmc=' + #39 + zyyz_mbmc + #39 + ' and ' +
    'czy=' + #39 + pub_czydm + #39;
  dm_data.qry_pub.open;
  if not dm_data.qry_pub.isempty then
  begin
    application.MessageBox('已经存在相同名称的模板，请重新命名模板名称！！！', '提示', 0 + 48);
    abort;
  end;
  dm_data.qry_pub.Close;
  dm_data.qry_pub.SQL.Text := 'insert into zybl_ztdm(bqdm,ksdm,ysdm,ztmc,czy,mzbz,zybz,mblb,bqmc,ksmc) values(' +
    #39 + pub_bqdm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + pub_czydm + #39 +
    ',' + #39 + zyyz_mbmc + #39 + ',' + #39 + pub_czydm + #39 + ',' + inttostr(zyyz_mbmz) + ',' + inttostr(zyyz_mbzy) + ',' +
    #39 + zyyz_mblb + #39 + ',' + #39 + pub_bqmc + #39 + ',' + #39 + pub_ksmc + #39 + ')';
  dm_data.qry_pub.ExecSQL;
  dm_data.qry_pub.Close;
  dm_data.qry_pub.SQL.Text := 'select ztid from zybl_ztdm where ztmc=' + #39 + zyyz_mbmc + #39 +
    ' and czy=' + #39 + pub_czydm + #39;
  dm_data.qry_pub.Open;
  ztid := dm_data.qry_pub.FieldByName('ztid').AsInteger;
  qry_yzmbmx.Close;
  qry_yzmbmx.Open;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (qry_yz.FieldByName('xmmc').AsString <> '') and
      (qry_yz.FieldByName('sl').AsString <> '') then
    begin
      qry_yzmbmx.Append;
      if pub_yydm='0269' then        //台山加入处方费别（门特处方和普通处方）
      begin
        qry_yzmbmx.FieldByName('MTLB').AsString := qry_yz.FieldByName('mtlb').AsString;
      end;
      qry_yzmbmx.FieldByName('ztid').AsInteger := ztid;
      qry_yzmbmx.FieldByName('yzsx').AsString := qry_yz.FieldByName('yzsx').AsString;
      qry_yzmbmx.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
      qry_yzmbmx.FieldByName('xmdm').AsString := qry_yz.FieldByName('xmdm').AsString;
      qry_yzmbmx.FieldByName('xmmc').AsString := qry_yz.FieldByName('xmmc').AsString;
      qry_yzmbmx.FieldByName('ypyf').AsString := qry_yz.FieldByName('ypyf').AsString;
      qry_yzmbmx.FieldByName('ypyl').AsString := qry_yz.FieldByName('ypyl').AsString;
      qry_yzmbmx.FieldByName('yldw').AsString := qry_yz.FieldByName('yldw').AsString;
      qry_yzmbmx.FieldByName('dw').AsString := qry_yz.FieldByName('dw').AsString;
      qry_yzmbmx.FieldByName('sl').AsInteger := qry_yz.FieldByName('sl').AsInteger;
      qry_yzmbmx.FieldByName('yytj').AsString := qry_yz.FieldByName('yytj').AsString;
      qry_yzmbmx.FieldByName('czks').AsString := qry_yz.FieldByName('czks').AsString;
      qry_yzmbmx.FieldByName('kdks').AsString := qry_yz.FieldByName('kdks').AsString;
      qry_yzmbmx.FieldByName('yplb').AsString := qry_yz.FieldByName('yplb').AsString;
      qry_yzmbmx.FieldByName('gg').AsString := qry_yz.FieldByName('gg').AsString;
      qry_yzmbmx.FieldByName('yplsj').AsString := qry_yz.FieldByName('yplsj').AsString;
      qry_yzmbmx.FieldByName('ypbzbl').AsInteger := qry_yz.FieldByName('ypbzbl').AsInteger;
      qry_yzmbmx.FieldByName('bz').AsString := qry_yz.FieldByName('bz').AsString;
      qry_yzmbmx.FieldByName('jyyb').AsString := qry_yz.FieldByName('jyyb').AsString;
      qry_yzmbmx.FieldByName('jyflbh').AsString := qry_yz.FieldByName('jyflbh').AsString;
      qry_yzmbmx.FieldByName('id').AsString := qry_yz.FieldByName('xh').AsString;
      qry_yzmbmx.FieldByName('ypdwid').AsString := qry_yz.FieldByName('ypdwid').AsString;
      qry_yzmbmx.FieldByName('fzbz').AsString := qry_yz.FieldByName('fzbz').AsString;
      qry_yzmbmx.FieldByName('syfzbh').AsString := qry_yz.FieldByName('fzph').AsString;
      qry_yzmbmx.Post;
    end;
    qry_yz.Next;
  end;
  qry_yzmbmx.UpdateBatch(arall);

  close;
end;

procedure Tfrm_zyyzmbmc.FormShow(Sender: TObject);
begin
  chkmz.Visible := False;
  chkzy.Visible := False;
{ 2011-01-13 姜超修改为不显示
  if dymk = 'mz' then
  begin
    chkmz.Checked := True;
    chkmz.Visible := False;
    chkzy.Visible := True;
    chkzy.Left := 229;
  end;
  if dymk = 'zy' then
  begin
    chkzy.Checked := True;
    chkzy.Visible := False;
    chkmz.Visible := True;
    chkmz.Left := 229;
  end;
  }
  edit_mbmc.SetFocus;
end;

procedure frm_yzmbsave(qry_yzmx: TADOQuery; mc, dy: string);
begin
  application.CreateForm(Tfrm_zyyzmbmc, frm_zyyzmbmc);
  try
    frm_zyyzmbmc.edit_mbmc.Text := mc + '_' + pub_czyxm;
    frm_zyyzmbmc.qry_yz := qry_yzmx;
    frm_zyyzmbmc.dymk := dy;
    if dy = 'mz' then
    begin
      frm_zyyzmbmc.chkmz.Checked := True;
      frm_zyyzmbmc.chkzy.Checked := False;
    end;
    if dy = 'zy' then
    begin
      frm_zyyzmbmc.chkmz.Checked := False;
      frm_zyyzmbmc.chkzy.Checked := True;
    end;
    frm_zyyzmbmc.ShowModal;
  finally
    frm_zyyzmbmc.free;
  end; ;
end;
end.
