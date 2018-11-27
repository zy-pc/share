{*******************************************************}
{                                                       }
{       单元名: p_zdjf_db 自动计费_担保                 }
{                                                       }
{       担保限额设置，多担保人适应                      }
{       患者的欠费限额为 所有担保的算术和               }
{*******************************************************}

unit p_zdjf_db;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, RzButton, RzPanel, RzBckgnd, ADODB, StdCtrls, Mask, RzEdit, Menus,
  cxLookAndFeelPainters, cxButtons, Grids, DBGrids, p_icf, cxTimeEdit,
  cxTextEdit;

type
  TFrm_zdjf_db = class(TForm)
    pnlRecords: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    rzsprtrTop: TRzSeparator;
    rzsprtrButtom: TRzSeparator;
    rzsprtrLeft: TRzSeparator;
    rzsprtrRight: TRzSeparator;
    pnlMain: TRzPanel;
    dsdbmx: TDataSource;
    ad_BBMX: TADODataSet;
    cxGrid1DBTableView1zyh: TcxGridDBColumn;
    cxGrid1DBTableView1dbrdm: TcxGridDBColumn;
    cxGrid1DBTableView1dbr: TcxGridDBColumn;
    cxGrid1DBTableView1czydm: TcxGridDBColumn;
    cxGrid1DBTableView1czymc: TcxGridDBColumn;
    cxGrid1DBTableView1dbje: TcxGridDBColumn;
    cxGrid1DBTableView1szrq: TcxGridDBColumn;
    pnlEditor: TPanel;
    lblTmh: TLabel;
    lblName: TLabel;
    edtTmh: TRzEdit;
    edtName: TRzEdit;
    edtZYKSMC: TRzEdit;
    lblZYKSMC: TLabel;
    lblDBR: TLabel;
    edtDBR: TRzEdit;
    lblFYZE: TLabel;
    edtFYZE: TRzEdit;
    lbl1: TLabel;
    edtDBJE: TRzEdit;
    lblYJZE: TLabel;
    edtYJZE: TRzEdit;
    lblZFZE: TLabel;
    edtZFZE: TRzEdit;
    lblBZ: TLabel;
    edtBZ: TRzEdit;
    pnlButtons: TRzPanel;
    btnSave: TcxButton;
    btnClose: TcxButton;
    DBGrid2: TDBGrid;
    lblKYYE: TLabel;
    edtKYYE: TRzEdit;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure edtTmhEnter(Sender: TObject);
    procedure edtTmhExit(Sender: TObject);
    procedure edtDBRExit(Sender: TObject);
    procedure edtDBREnter(Sender: TObject);
    procedure edtDBJEEnter(Sender: TObject);
    procedure edtDBJEExit(Sender: TObject);
    procedure edtTmhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDBRKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDBJEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCloseClick(Sender: TObject);
    procedure edtDBJEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    zy_tmh: string;
    zy_zyh: string;
    dbje: Real;//担保金额
    dbr: TUser;//担保人
    procedure init;
    procedure changeColor(Sender: TRzEdit);
    procedure restorecolor(Sender: TRzEdit);
    procedure updateZYDJ(v_zdjf: Real; v_zyh:string);//更新住院登记表
    procedure save(zyh: string; dbrdm: string; dbrmc: string; czydm: string;
                        czymc: string; dbje: Real; bz: string);
    procedure updateZDJFTZMX(zyh:string; dbrxm: string; czymc: string;
                             dbze:Real; szrq:TDateTime);//g
    function GetDbzeByZYH(zyh: string):Real;
    //数据校验
    function CheckData: Boolean;
  public
    { Public declarations }
  end;

var
  Frm_zdjf_db: TFrm_zdjf_db;

implementation

uses
  p_dm, p_func, p_UserLookup;

{$R *.dfm}

procedure TFrm_zdjf_db.DBGrid2DblClick(Sender: TObject);
begin
  DBGrid2Exit(sender);
end;

procedure TFrm_zdjf_db.DBGrid2Exit(Sender: TObject);
begin
  init;
  zy_zyh := dm_data.qry_pub.FieldByName('zyh').asstring;
  edtTmh.Text := Trim(dm_data.qry_pub.FieldByName('tmh').asstring);
  edtName.Text := Trim(dm_data.qry_pub.FieldByName('brxm').asstring);
  edtBZ.Text := dm_data.qry_pub.FieldByName('bz').asstring;
  //edtDBJE.Text := floattostr(dm_data.qry_pub.FieldByName('zdjf').asfloat);
  edtZYKSMC.Text := Trim(dm_data.qry_pub.FieldByName('ksmc').asstring);
  edtYJZE.Text := floattostr(dm_data.qry_pub.FieldByName('yjze').asfloat);
  edtFYZE.Text := floattostr(dm_data.qry_pub.FieldByName('zfy').asfloat);
  edtZFZE.Text := floattostr(dm_data.qry_pub.FieldByName('zfze').asfloat);
  //edtDBR.Text := Trim(dm_data.qry_pub.FieldByName('dbr').asstring);
  edtKYYE.Text := floattostr(dm_data.qry_pub.FieldByName('yjze').asfloat +
                dm_data.qry_pub.FieldByName('zdjf').asfloat -
                dm_data.qry_pub.FieldByName('zfze').asfloat);
  edtDBR.SetFocus;
  ad_BBMX.Close;
  ad_BBMX.CommandText := 'SELECT zyh ,dbrdm ,dbr ,czydm ,czymc ,dbje ,' +
                         'CONVERT(VARCHAR(16),szrq,120) szrq,bz FROM zysf_zdjftzmx_db ' +
                         'where zyh= ' + QuotedStr(zy_zyh)+ ' order by szrq asc';
  ad_BBMX.Open;
  btnSave.Enabled := true;
  btnSave.Enabled := true;
  dbgrid2.visible := false;
end;

procedure TFrm_zdjf_db.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then DBGrid2Exit(sender);
end;

procedure TFrm_zdjf_db.edtDBJEEnter(Sender: TObject);
begin
  changecolor(Sender as TRzEdit);
end;

procedure TFrm_zdjf_db.edtDBJEExit(Sender: TObject);
begin
  restorecolor(Sender as TRzEdit);
end;

procedure TFrm_zdjf_db.edtDBJEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then btnSave.SetFocus;
end;

procedure TFrm_zdjf_db.edtDBJEKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in [#13,'0','1','2','3','4','5','6','7','8','9']) then
    Exit;
end;

procedure TFrm_zdjf_db.edtDBREnter(Sender: TObject);
begin
  changecolor(Sender as TRzEdit);
end;

procedure TFrm_zdjf_db.edtDBRExit(Sender: TObject);
begin
  restorecolor(Sender as TRzEdit);
  if (btnclose.Focused) or (cxGrid1.Focused) or (btnSave.Focused) or
     (edtTmh.Focused) then Exit;

  Application.CreateForm(Tfrm_UserLookup, frm_UserLookUp);
  frm_UserLookUp.UserRecord := dbr;
  frm_UserLookUp.Condition := edtDBR.Text;
  frm_UserLookUp.ShowModal;
  edtDBR.Text := dbr.mc;
end;

procedure TFrm_zdjf_db.edtDBRKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    edtDBJE.SetFocus;
  end;
end;

procedure TFrm_zdjf_db.edtTmhEnter(Sender: TObject);
begin
  changecolor(Sender as TRzEdit);
end;

procedure TFrm_zdjf_db.edtTmhExit(Sender: TObject);
begin
  restorecolor(Sender as TRzEdit);
end;

procedure TFrm_zdjf_db.edtTmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    try
      edtTmh.text := formatex(strtoint(edtTmh.text), 9);
    except
    end;
    zy_tmh := edtTmh.text;
    with dm_data.qry_pub do
    begin
      Close;
      SQL.clear;
      SQL.Text := 'select a.tmh,a.zyh,a.zdjf,a.brxm,a.brxb,a.brnl,b.mc ksmc,' +
        'a.dbr,a.bz,a.zfy,a.zfze,a.yjze,a.bz' +
        ' from zysf_zydj a,sys_ksdm b' +
        ' where a.ksdm=b.dm and a.tmh<>' + #39 + '000000001' + #39 +
        ' and (a.tmh=' + #39 + zy_tmh + #39 + ' or a.brxm like ' +
        #39 + '%' + zy_tmh + '%' + #39 + ' or a.pym like ' +
        #39 + '%' + zy_tmh + '%' + #39 + ' ) and ' +
        ' jsbz=0 and cybz=0';
      open;
    end;
    if dm_data.qry_pub.IsEmpty then
    begin
      application.MessageBox('无此卡号！', '提示', 0 + 16);
      init;
      edtTmh.SetFocus;
      edtTmh.SelectAll;
      abort;
    end
    else
    if dm_data.qry_pub.RecordCount = 1 then
    begin
      zy_zyh := dm_data.qry_pub.FieldByName('zyh').asstring;
      edtName.Text := Trim(dm_data.qry_pub.FieldByName('brxm').asstring);
      edtBZ.Text := dm_data.qry_pub.FieldByName('bz').asstring;
      //edtDBJE.Text := floattostr(dm_data.qry_pub.FieldByName('zdjf').asfloat);
      edtZYKSMC.Text := Trim(dm_data.qry_pub.FieldByName('ksmc').asstring);
      edtYJZE.Text := floattostr(dm_data.qry_pub.FieldByName('yjze').asfloat);
      edtFYZE.Text := floattostr(dm_data.qry_pub.FieldByName('zfy').asfloat);
      edtZFZE.Text := floattostr(dm_data.qry_pub.FieldByName('zfze').asfloat);
      //edtDBR.Text := Trim(dm_data.qry_pub.FieldByName('dbr').asstring);
      edtKYYE.Text := floattostr(dm_data.qry_pub.FieldByName('yjze').asfloat +
                      dm_data.qry_pub.FieldByName('zdjf').asfloat -
                      dm_data.qry_pub.FieldByName('zfze').asfloat);
      edtDBR.SetFocus;
      ad_BBMX.Close;
      ad_BBMX.CommandText := 'SELECT zyh ,dbrdm ,dbr ,czydm ,czymc ,dbje ,' +
                             'CONVERT(VARCHAR(16),szrq,120) szrq,bz FROM ' +
                             'zysf_zdjftzmx_db  where zyh= ' + QuotedStr(zy_zyh) +
                             ' order by szrq asc';
      ad_BBMX.Open;
      btnSave.Enabled := true;
    end
    else
    begin
      dbgrid2.left := edtTmh.left;
      dbgrid2.top := edtTmh.top + edtTmh.height + 1;
      dbgrid2.visible := true;
      dbgrid2.setfocus;
    end;
  end;
end;

procedure TFrm_zdjf_db.FormCreate(Sender: TObject);
begin
  dbr := TUser.create;
end;

procedure TFrm_zdjf_db.FormShow(Sender: TObject);
begin
  init;
  edtTmh.SetFocus;
end;

procedure TFrm_zdjf_db.init;
begin
  edtTmh.Clear;
  edtName.Clear;
  edtZYKSMC.Clear;
  edtFYZE.Clear;
  edtDBR.Clear;
  edtDBJE.Clear;
  edtYJZE.Clear;
  edtZFZE.Clear;
  edtBZ.Clear;
  edtKYYE.Clear;
end;

procedure TFrm_zdjf_db.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_zdjf_db.btnSaveClick(Sender: TObject);
var
  v_dbze: Real;//担保总额
begin
  if not CheckData then exit; //数据校验

  save(zy_zyh,dbr.dm,dbr.mc,pub_czydm,pub_czyxm,dbje,edtBZ.Text);

  ad_BBMX.Close;
  ad_BBMX.Open;

  with cxGrid1DBTableView1.DataController.Summary do
  begin
    try
      v_dbze := FooterSummaryValues[FooterSummaryItems.IndexOfItemLink(
                  cxGrid1DBTableView1.GetColumnByFieldName('dbje'))];
    except
      v_dbze := 0.00;
    end;
  end;

  edtKYYE.Text := floattostr(StrToFloat(edtYJZE.Text) + v_dbze - StrToFloat(edtZFZE.Text));

  edtDBR.Clear;
  edtDBJE.Clear;
  dbr.clear;

  //更新住院登记表
  if Abs(v_dbze - GetDbzeByZYH(zy_zyh)) > 1e-6 then
  begin
    updateZYDJ_zdjf(v_dbze,zy_zyh);
    updateZDJFTZMX(zy_zyh,'-',pub_czyxm,v_dbze,Now);
  end;

end;

procedure TFrm_zdjf_db.changeColor(Sender: TRzEdit);
begin
  Sender.Color := clHotLight;
  Sender.Font.Color := clWindow;
end;

procedure TFrm_zdjf_db.restorecolor(Sender: TRzEdit);
begin
  Sender.Color := clWindow;
  Sender.Font.Color := clWindowText;
end;


{-------------------------------------------------------------------------------
  过程名:    TFrm_zdjf_db.save
  作者:      molin
  日期:      2015.04.13
  参数:      zyh: string;   住院号
             dbrdm: string; 担保人代码
             dbrmc: string; 担保人名称
             czydm: string; 操作源代码
             czymc: string; 操作员名称
             bz: string;    备注
             dbje: Real     但保金额
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_zdjf_db.save(zyh: string; dbrdm: string; dbrmc: string; czydm: string;
                            czymc: string; dbje: Real; bz: string);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text :=
    'INSERT INTO dbo.zysf_zdjftzmx_db' +
            '( zyh, dbrdm, dbr, czydm, czymc, dbje, szrq, bz ) '+
    'VALUES  (' + QuotedStr(Trim(zyh)) + ',' +
                  QuotedStr(Trim(dbrdm)) + ',' +
                  QuotedStr(Trim(dbrmc)) + ',' +
                  QuotedStr(Trim(czydm)) + ',' +
                  QuotedStr(Trim(czymc)) + ',' +
                  QuotedStr(FloatToStr(dbje)) + ',' +
                  'GETDATE()' + ',' +
                  QuotedStr(Trim(bz)) +
             ')';
  try
    DM_data.qry_pub.ExecSQL;
  except
    raise Exception.Create('担保记录写入失败：' + DM_data.qry_pub.SQL.Text);
  end;
end;


{-------------------------------------------------------------------------------
  函数名:    TFrm_zdjf_db.CheckData
  作者:      molin
  日期:      2015.04.13
  参数:      无
  返回值:    Boolean   返回true表示数据Ok 否这数据有问题
-------------------------------------------------------------------------------}
function TFrm_zdjf_db.CheckData:Boolean;
begin
  Result := True;
  if Trim(edtTmh.Text)='' then
  begin
    Application.MessageBox('卡号不能为空', '提示', MB_OK +
      MB_ICONINFORMATION);
    edtTmh.SetFocus;
    Result := false;
  end
  else
  if Trim(edtDBR.Text) = '' then
  begin
    Application.MessageBox('担保人不能为空', '提示', MB_OK +
      MB_ICONINFORMATION);
    edtDBR.SetFocus;
    Result := false;
  end
  else
  if Trim(edtDBJE.Text)='' then
  begin
    Application.MessageBox('担保金额不能为空', '提示', MB_OK +
      MB_ICONINFORMATION);
    edtDBJE.SetFocus;
    Result := false;
  end
  else
  if Trim(edtDBJE.Text)<>'' then
  begin
    try
       dbje := StrToFloat(edtDBJE.Text);
    except
      Application.MessageBox('担保金额不正确', '提示', MB_OK +
      MB_ICONINFORMATION);
      edtDBJE.SetFocus;
      Result := false;
    end;
  end;
end;

procedure TFrm_zdjf_db.updateZYDJ(v_zdjf: Real; v_zyh:string);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'UPDATE zysf_zydj SET zdjf=' + FloatToStr(v_zdjf) +
                              ' WHERE  zyh=' + QuotedStr(v_zyh);
  try
    DM_data.qry_pub.ExecSQL;
  except
    raise Exception.Create('更新失败：' +DM_data.qry_pub.SQL.Text);
  end;
end;

procedure TFrm_zdjf_db.updateZDJFTZMX(zyh: string; dbrxm: string; czymc: string;
                                      dbze: Real; szrq: TDateTime);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text :=
      'INSERT INTO dbo.zysf_zdjftzmx' +
              '( zyh, brxm, czymc, zdjf, szrq )' +
      'VALUES  (' + QuotedStr(Trim(zyh)) + ','+
                    QuotedStr('-') + ','+
                    QuotedStr(czymc) + ','+
                    FloatToStr(dbze) + ','+
                    'GETDATE()' +
                ')';
  try
    DM_data.qry_pub.ExecSQL;
  except
    raise Exception.Create('更新失败：' + DM_data.qry_pub.SQL.Text);
  end;
end;

function TFrm_zdjf_db.GetDbzeByZYH(zyh: string):Real;
begin
  Result := 0.00;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select isnull(zdjf,0.00) zdjf from zysf_zydj where zyh=' +
                                QuotedStr(Trim(zyh));
  try
    DM_data.qry_pub.Open;
  except
    raise Exception.Create('查询失败：' + DM_data.qry_pub.SQL.Text);
  end;
  if DM_data.qry_pub.RecordCount > 0 then
    Result := DM_data.qry_pub.FieldByName('zdjf').AsFloat;
end;

end.
