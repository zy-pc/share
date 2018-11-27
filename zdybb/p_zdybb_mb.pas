unit p_zdybb_mb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, OleCtrls, grproLib_TLB, ADODB, DB, ComCtrls,
  OleServer, GRUtility, cxGraphics, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, SXSearchBox,
  SXComboBox, grdesLib_TLB, cxCalendar;

type
  Tfrm_zdybb_mb = class(TForm)
    pnl_cs_bg: TPanel;
    pnl_bb: TPanel;
    pnl_cs1: TPanel;
    pnl_mc3: TPanel;
    pnl_mc2: TPanel;
    pnl_mc1: TPanel;
    btn_tj: TButton;
    btn_print: TButton;
    pnl_cs3: TPanel;
    pnl_mc9: TPanel;
    pnl_zj8: TPanel;
    pnl_mc8: TPanel;
    pnl_zj7: TPanel;
    pnl_mc7: TPanel;
    pnl_zj9: TPanel;
    pnl_cs2: TPanel;
    pnl_mc6: TPanel;
    pnl_zj5: TPanel;
    pnl_mc5: TPanel;
    pnl_zj4: TPanel;
    pnl_mc4: TPanel;
    pnl_zj6: TPanel;
    qry_bb: TADOQuery;
    sp1: TADOStoredProc;
    qry_cs: TADOQuery;
    GridppReport1: TGridppReport;
    qry_bbid: TAutoIncField;
    qry_bblbdm: TStringField;
    qry_bbdm: TIntegerField;
    qry_bbmc: TStringField;
    qry_bbpym: TStringField;
    qry_bbnr: TBlobField;
    qry_bbbl: TBlobField;
    qry_bbqybz: TBooleanField;
    qry_bbbz: TStringField;
    qry_bbcjr: TStringField;
    qry_bbcjrq: TStringField;
    qry_bbxgr: TStringField;
    qry_bbord: TBooleanField;
    qry_bbxgrq: TStringField;
    sp2: TADOStoredProc;
    qry_cxtj: TADOQuery;
    qry2: TADOQuery;
    qry_sjj: TADOQuery;
    qry_cf: TADOQuery;
    sp_cf: TADOStoredProc;
    pnl_zj1: TPanel;
    pnl_zj2: TPanel;
    pnl_zj3: TPanel;
    GRPrintViewer1: TGRPrintViewer;
    cxCheckComboBox1: TcxCheckComboBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_tjClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure GridppReport1FetchRecord(Sender: TObject);
  private
    procedure CreateDateTimePick(i, _rqCount: Integer; frm_csck1: Tfrm_zdybb_mb;
      dateList: array of TcxDateEdit);
    procedure CreateEdit(editList: array of TEdit; frm_csck1: Tfrm_zdybb_mb;
      i, _zjCount: Integer);
    procedure CreateSBoxs(frm_csck1: Tfrm_zdybb_mb;
      sBoxList: array of TSXSearchBox; i, _jsCount: Integer);
    procedure CreateSerPar(frm_csck1: Tfrm_zdybb_mb; var i: Integer);
    procedure Tj;
    function bljk(pt: TControl): string;
    procedure SetProcVar(I: Integer);
    procedure SetQryVar(var j: Integer; I: Integer);
    procedure CreatesComboBox(i, _zjCount: Integer; frm_csck1: Tfrm_zdybb_mb;
      sComboBoxList: array of TSXComboBox);
    procedure CreatesCheckComboBox(i, _zjCount: Integer;
      frm_csck1: Tfrm_zdybb_mb;
      cxCheckComboBoxList: array of Tcxcheckcombobox);
    procedure AppendParAndDataSet(qryList: array of TADOQuery; _SubRepList: array of TGridppReport; var spList: array of TADOStoredProc; I: Integer);
        { Private declarations }
  public

        { Public declarations }
  end;

var
  frm_zdybb_mb: Tfrm_zdybb_mb;

  gcm: array of string;
  gcm_bl: array of string;
  gcm_sqlm: array of string;
    //判断重复子报表数据填充
    //yitianjia: array of string;
    //----------------

procedure CreatHISRep(lbdm, dm: string);

implementation

uses p_dm, p_func;

{$R *.dfm}

procedure Tfrm_zdybb_mb.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Self.SelectNext(Self.ActiveControl as TWinControl, True, true);
  end;
end;

procedure Tfrm_zdybb_mb.GridppReport1FetchRecord(Sender: TObject);
begin
    //GRFetchRecordFromDataSet(rptProductList, ADOQuery1, False);
end;

procedure CreatHISRep(lbdm, dm: string);
var
  frm_csck1: Tfrm_zdybb_mb;
  i, j: Integer;
begin

  Application.CreateForm(Tfrm_zdybb_mb, frm_csck1);
  with frm_csck1 do
  begin

    qry_bb.Close;
    qry_bb.SQL.Text := 'select * from sys_zdybb where lbdm = ' + #39 + lbdm + #39 +
      ' and dm = ' + #39 + dm + #39;
    qry_bb.Open;
    qry_cs.Close;
    qry_cs.SQL.Text := 'select max(id) id,lbdm,mc,xsmc,sjlx,mrz,srlb,js_bm,js_jszd,js_xszd,js_z,xxlb,jsgytj,txtField ' +
      ' from sys_zdybb_cs where lbdm = ' + #39 + lbdm + #39 +
      ' group by lbdm,mc,xsmc,sjlx,srlb,js_bm,mrz,js_jszd,js_xszd,js_z,xxlb,jsgytj,txtField' +
      ' order by max(id)';
    qry_cs.Open;

    qry_sjj.Close;
    qry_sjj.SQL.Text := 'select mc,xsmc,lb,sqlyj,xh from sys_zdybb_sjj where ';
    qry_sjj.SQL.Add(' dm = ' + #39 + lbdm + #39);
    qry_sjj.SQL.Add(' group by mc,xsmc,lb,sqlyj,xh order by xh');
    qry_sjj.Open;
    qry_sjj.Filter := 'lb=02';
    qry_sjj.Filtered := true;

    j := 0;
    SetLength(gcm, qry_sjj.RecordCount);
    SetLength(gcm_sqlm, qry_sjj.RecordCount);
        //SetLength( yitianjia, qry_sjj.RecordCount );
    while not qry_sjj.Eof do
    begin

      gcm[j] := qry_sjj.FieldByName('sqlyj').AsString;
      gcm_sqlm[j] := qry_sjj.FieldByName('mc').AsString;

      j := j + 1;
      qry_sjj.Next;
    end;
    qry_sjj.Filter := 'lb=01';
    qry_sjj.Filtered := true;
    j := 0;
    SetLength(gcm_bl, qry_sjj.RecordCount);
    while not qry_sjj.Eof do
    begin
      gcm_bl[j] := qry_sjj.FieldByName('mc').AsString;
      j := j + 1;
      qry_sjj.Next;
    end;

        //生成窗口输入参数控件
    CreateSerPar(frm_csck1, i);

    Caption := '思迅科技自定义报表 － ' + qry_bb.FieldByName('mc').AsString;

    btn_tj.TabOrder := i + 1;
    btn_print.TabOrder := i + 2;
    frm_csck1.ShowModal;
  end;
end;

procedure Tfrm_zdybb_mb.CreateSerPar(frm_csck1: Tfrm_zdybb_mb; var i: Integer);
var
  _rowCount: Integer;
  j, _jsCount, _zjCount, _rqCount, _dxCount, _duxCount: Integer;
  dateList: array of TcxDateEdit;
  sBoxList: array of TSXSearchBox;
  editList: array of TEdit;
  sComboBoxList: array of TSXComboBox;
  cxCheckComboBoxList: array of TcxcheckComboBox;
begin
    //设置数组长度
  qry_cs.Filter := 'srlb=' + '''' + '查询方式' + '''';
  qry_cs.Filtered := true;
  setlength(sBoxList, qry_cs.RecordCount);
  qry_cs.Filter := 'srlb=' + '''' + '直接输入' + '''' +
    ' and sjlx <>' + '''' + '日期' + '''' + ' and sjlx <>' + '''' + '日期时间' + '''';
  qry_cs.Filtered := true;
  setlength(editList, qry_cs.RecordCount);
  qry_cs.Filter := 'srlb=' + '''' + '直接输入' + '''' +
    ' and (sjlx=' + '''' + '日期' + '''' + ') or (sjlx=' + '''' + '日期时间' + '''' + ')';
  qry_cs.Filtered := true;
  setlength(dateList, qry_cs.RecordCount);
  qry_cs.Filter := 'srlb=' + '''' + '单项选择' + '''';
  qry_cs.Filtered := true;
  setlength(sComboBoxList, qry_cs.RecordCount);
  qry_cs.Filter := 'srlb=' + '''' + '多项选择' + '''';
  qry_cs.Filtered := true;
  setlength(cxCheckComboBoxList, qry_cs.RecordCount);
    //qry_cs.Filtered := false;
  qry_cs.Filter := '(srlb<>' + #39 + '固定值' + #39 + ') and (srlb<>' + #39 + '系统参数' + #39 + ')';
  qry_cs.Filtered := true;
  frm_csck1.pnl_cs_bg.Height := 28;
  _rowCount := (qry_cs.RecordCount + 2) div 3;
  case _rowCount of
    2:
      begin
        frm_csck1.pnl_cs2.Visible := true;
        frm_csck1.pnl_cs_bg.Height := 28 * 2;
      end;
    3:
      begin
        frm_csck1.pnl_cs2.Visible := true;
        frm_csck1.pnl_cs3.Visible := true;
        frm_csck1.pnl_cs_bg.Height := 28 * 3;
      end;
  end;
  i := 0;
//    j := 0;
  _jsCount := 0;
  _zjCount := 0;
  _rqCount := 0;
  _dxCount := 0;
  _duxCount := 0;
  qry_cs.First;
  while not qry_cs.Eof do
  begin
    if Trim(qry_cs.FieldByName('srlb').AsString) = '查询方式' then
    begin
      CreateSBoxs(frm_csck1, sBoxList, i, _jsCount);
      _jsCount := _jsCount + 1;
    end;
    if (Trim(qry_cs.FieldByName('srlb').AsString) = '直接输入') and
      (Trim(qry_cs.FieldByName('sjlx').AsString) <> '日期') and
      (Trim(qry_cs.FieldByName('sjlx').AsString) <> '日期时间') then
    begin
      CreateEdit(editList, frm_csck1, i, _zjCount);
      _zjCount := _zjCount + 1;
    end;
    if (Trim(qry_cs.FieldByName('srlb').AsString) = '直接输入') and
      ((Trim(qry_cs.FieldByName('sjlx').AsString) = '日期') or
      (Trim(qry_cs.FieldByName('sjlx').AsString) = '日期时间')) then
    begin
      CreateDateTimePick(i, _rqCount, frm_csck1, dateList);
      _rqCount := _rqCount + 1;
    end;

    if (Trim(qry_cs.FieldByName('srlb').AsString) = '单项选择') then
    begin
      CreatesComboBox(i, _dxCount, frm_csck1, sComboBoxList);
      _dxCount := _dxCount + 1;
    end;
    if (Trim(qry_cs.FieldByName('srlb').AsString) = '多项选择') then
    begin
      CreatesCheckComboBox(i, _duxCount, frm_csck1, cxCheckComboBoxList);
      _duxCount := _duxCount + 1;
    end;
    qry_cs.Next;
    i := i + 1;
//        if j >= 2 then
//        begin
//            j := 0;
//        end
//        else
//        begin
//            j := j + 1;
//        end;
  end;
end;

procedure Tfrm_zdybb_mb.CreateSBoxs(frm_csck1: Tfrm_zdybb_mb; sBoxList: array of TSXSearchBox; i, _jsCount: Integer);
var
  _caption: TLabel;
begin
  _caption := TLabel.Create(frm_csck1);
  _caption.Name := 'c_' + StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
  _caption.Caption := qry_cs.FieldByName('xsmc').AsString + ':';
  _caption.Align := alRight;
  _caption.Layout := tlCenter;
  TPanel(frm_csck1.FindComponent('pnl_mc' + inttostr(i + 1))).InsertControl(_caption);
  sBoxList[_jsCount] := TSXSearchBox.CreateA(nil, true, true);
  sBoxList[_jsCount].Connection := p_dm.DM_data.ado_mydata;
  sBoxList[_jsCount].ValueField := qry_cs.FieldByName('js_z').AsString;
  sBoxList[_jsCount].TableName := qry_cs.FieldByName('js_bm').AsString;
  extractstrings(['|'], [], PChar(qry_cs.FieldByName('js_jszd').AsString), sBoxList[_jsCount].SerchFieldList);
  extractstrings(['|'], [], PChar(qry_cs.FieldByName('js_xszd').AsString), sBoxList[_jsCount].ShowFildList);
  sBoxList[_jsCount].SerCondition := qry_cs.FieldByName('jsgytj').AsString;
  sBoxList[_jsCount].TextField := qry_cs.FieldByName('txtField').AsString;
  sBoxList[_jsCount].Name := 'rc_' + StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
  TPanel(frm_csck1.FindComponent('pnl_zj' + inttostr(i + 1))).InsertControl(sBoxList[_jsCount]);
  sBoxList[_jsCount].Top := ((sBoxList[_jsCount].Parent.Height - sBoxList[_jsCount].Height) div 2);
  sBoxList[_jsCount].Left := 0;
  sBoxList[_jsCount].Width := sBoxList[_jsCount].Parent.Width - 5;
  sBoxList[_jsCount].TabOrder := i;
  sBoxList[_jsCount].FormCtrlFocus := true;
  sBoxList[_jsCount].Text := '';
end;

procedure Tfrm_zdybb_mb.CreateEdit(editList: array of TEdit; frm_csck1: Tfrm_zdybb_mb; i, _zjCount: Integer);
var
  _caption: TLabel;
begin
  _caption := TLabel.Create(frm_csck1);
  _caption.Name := 'c_' + StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
  _caption.Caption := qry_cs.FieldByName('xsmc').AsString + ':';
  _caption.Layout := tlCenter;
  _caption.Align := alRight;

  TPanel(frm_csck1.FindComponent('pnl_mc' + inttostr(i + 1))).InsertControl(_caption);
  editList[_zjCount] := TEdit.Create(frm_csck1);
  editList[_zjCount].Name := 'rc_' + StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
  TPanel(frm_csck1.FindComponent('pnl_zj' + inttostr(i + 1))).InsertControl(editList[_zjCount]);
  editList[_zjCount].Top := ((editList[_zjCount].Parent.Height - editList[_zjCount].Height) div 2);
  editList[_zjCount].Left := 0;
  editList[_zjCount].Width := editList[_zjCount].Parent.Width - 5;
  editList[_zjCount].TabOrder := i;
  editList[_zjCount].Text := '';
end;

procedure Tfrm_zdybb_mb.CreatesComboBox(i, _zjCount: Integer; frm_csck1: Tfrm_zdybb_mb; sComboBoxList: array of TSXComboBox);
var
  _caption: TLabel;
  _strings: TStrings;
  k, _index, _len: Integer;
  _temp, _str: string;
  _showField, _valueField, _tableName: string;
  _qry_temp: TADOQuery;
begin
  _caption := TLabel.Create(frm_csck1);
  _caption.Name := 'c_' + StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
  _caption.Caption := qry_cs.FieldByName('xsmc').AsString + ':';
  _caption.Layout := tlCenter;
  _caption.Align := alRight;
  TPanel(frm_csck1.FindComponent('pnl_mc' + inttostr(i + 1))).InsertControl(_caption);
  sComboBoxList[_zjCount] := TSXComboBox.Create(nil);
  sComboBoxList[_zjCount].Name := 'rc_' + StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
  TPanel(frm_csck1.FindComponent('pnl_zj' + inttostr(i + 1))).InsertControl(sComboBoxList[_zjCount]);
  if Trim(qry_cs.FieldByName('xxlb').AsString) <> '' then //如果是非数据集列表
  begin
    _strings := TStringList.Create;
    extractstrings(['|'], [], PChar(qry_cs.FieldByName('xxlb').AsString), _strings);
    for k := 0 to _strings.Count - 1 do
    begin
      _index := Pos(':', _strings[k]);
      _str := _strings[k];
      if _index > 0 then
      begin
        _len := Length(_str);
        _temp := Copy(_str, 0, _index - 1);
        sComboBoxList[_zjCount].ValueList.Add(Copy(_str, _index + 1, _len - _index));
      end
      else
      begin
        _temp := _strings[k];
      end;
      sComboBoxList[_zjCount].Items.Add(_temp);
    end;
  end
  else
  begin
    if Trim(qry_cs.FieldByName('js_bm').AsString) <> '' then
    begin
      _valueField := qry_cs.FieldByName('js_z').AsString;
      _showField := qry_cs.FieldByName('js_xszd').AsString;
      _tableName := qry_cs.FieldByName('js_bm').AsString;
      _qry_temp := TADOQuery.Create(nil);
      _qry_temp.Connection := p_dm.DM_data.ado_mydata;
      _qry_temp.SQL.Text := 'SELECT ' + _showField + ',' + _valueField +
        ' FROM ' + _tableName;
      if Trim(qry_cs.FieldByName('jsgytj').AsString) <> '' then
        _qry_temp.SQL.Add(' WHERE ' + qry_cs.FieldByName('jsgytj').AsString);
      _qry_temp.Open;
      while not _qry_temp.Eof do
      begin
        sComboBoxList[_zjCount].Items.Add(Trim(_qry_temp.FieldByName(_showField).AsString));
        sComboBoxList[_zjCount].ValueList.Add(Trim(_qry_temp.FieldByName(_valueField).AsString));
        _qry_temp.Next;
      end;
    end;
    sComboBoxList[_zjCount].UsesQry := true;
  end;
  sComboBoxList[_zjCount].Top := ((sComboBoxList[_zjCount].Parent.Height - sComboBoxList[_zjCount].Height) div 2);
  sComboBoxList[_zjCount].Left := 0;
  sComboBoxList[_zjCount].Width := sComboBoxList[_zjCount].Parent.Width - 5;
  sComboBoxList[_zjCount].TabOrder := i;
  sComboBoxList[_zjCount].Text := '';
  sComboBoxList[_zjCount].Style := csDropDownList;
  if sComboBoxList[_zjCount].Items.Count > 0 then
  begin
    sComboBoxList[_zjCount].ItemIndex := 0;
  end;
end;

procedure Tfrm_zdybb_mb.CreatesCheckComboBox(i, _zjCount: Integer; frm_csck1: Tfrm_zdybb_mb; cxCheckComboBoxList: array of Tcxcheckcombobox);
var
  _caption: TLabel;
  _strings: TStrings;
  k, _index, _len: Integer;
  _temp, _str, _showField, _valueField, _tableName: string;
  _qry_temp: TADOQuery;
begin
  _caption := TLabel.Create(frm_csck1);
  _caption.Name := 'c_' + StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
  _caption.Caption := qry_cs.FieldByName('xsmc').AsString + ':';
  _caption.Layout := tlCenter;
  _caption.Align := alRight;
  TPanel(frm_csck1.FindComponent('pnl_mc' + inttostr(i + 1))).InsertControl(_caption);
  cxCheckComboBoxList[_zjCount] := Tcxcheckcombobox.Create(frm_csck1);
  cxCheckComboBoxList[_zjCount].Name := 'rc_' + StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
  cxCheckComboBoxList[_zjCount].Properties.EditValueFormat := cxCheckComboBox1.Properties.EditValueFormat;
  TPanel(frm_csck1.FindComponent('pnl_zj' + inttostr(i + 1))).InsertControl(cxCheckComboBoxList[_zjCount]);

  if Trim(qry_cs.FieldByName('xxlb').AsString) <> '' then //如果是非数据集列表
  begin
    _strings := TStringList.Create;
    extractstrings(['|'], [], PChar(qry_cs.FieldByName('xxlb').AsString), _strings);
    for k := 0 to _strings.Count - 1 do
    begin
      _index := Pos(':', _strings[k]);
      _str := _strings[k];
      if _index > 0 then
      begin
        _len := Length(_str);
        _temp := Copy(_str, 0, _index - 1);
        cxCheckComboBoxList[_zjCount].Properties.Items.Add;
        cxCheckComboBoxList[_zjCount].Properties.Items[k].Description := _temp;
        if cxCheckComboBoxList[_zjCount].Hint = '' then
        begin
          cxCheckComboBoxList[_zjCount].Hint := (Copy(_str, _index + 1, _len - _index));
        end
        else
        begin
          cxCheckComboBoxList[_zjCount].Hint :=
            cxCheckComboBoxList[_zjCount].Hint + '|' + (Copy(_str, _index + 1, _len - _index));
        end;
      end
      else
      begin
        _temp := _strings[k];

      end;
            //cxCheckComboBoxList[_zjCount].Items.Add( _temp );
    end;
  end
  else //数据从数据库来
    if Trim(qry_cs.FieldByName('js_bm').AsString) <> '' then
    begin
      _valueField := qry_cs.FieldByName('js_z').AsString;
      _showField := qry_cs.FieldByName('js_xszd').AsString;
      _tableName := qry_cs.FieldByName('js_bm').AsString;
      _qry_temp := TADOQuery.Create(nil);
      _qry_temp.Connection := p_dm.DM_data.ado_mydata;
      _qry_temp.SQL.Text := 'SELECT ' + _showField + ',' + _valueField +
        ' FROM ' + _tableName;
      if Trim(qry_cs.FieldByName('jsgytj').AsString) <> '' then
        _qry_temp.SQL.Add(' WHERE ' + qry_cs.FieldByName('jsgytj').AsString);
      _qry_temp.Open;
      k := 0;
      while not _qry_temp.Eof do
      begin
        cxCheckComboBoxList[_zjCount].Properties.Items.Add;
        cxCheckComboBoxList[_zjCount].Properties.Items[k].Description :=
          Trim(_qry_temp.FieldByName(_showField).AsString);
        if cxCheckComboBoxList[_zjCount].Hint = '' then
        begin
          cxCheckComboBoxList[_zjCount].Hint := Trim(_qry_temp.FieldByName(_valueField).AsString);
        end
        else
        begin
          cxCheckComboBoxList[_zjCount].Hint :=
            cxCheckComboBoxList[_zjCount].Hint + '|' + Trim(_qry_temp.FieldByName(_valueField).AsString);
        end;
        k := k + 1;
        _qry_temp.Next;
      end;
    end;

  cxCheckComboBoxList[_zjCount].Top := ((cxCheckComboBoxList[_zjCount].Parent.Height - cxCheckComboBoxList[_zjCount].Height) div 2);
  cxCheckComboBoxList[_zjCount].Left := 0;
  cxCheckComboBoxList[_zjCount].Width := cxCheckComboBoxList[_zjCount].Parent.Width - 5;
  cxCheckComboBoxList[_zjCount].TabOrder := i;
  cxCheckComboBoxList[_zjCount].Text := '';
    //cxCheckComboBoxList[_zjCount].Style := csDropDownList;
//    if cxCheckComboBoxList[_zjCount].Items.Count > 0 then
//    begin
//        cxCheckComboBoxList[_zjCount].ItemIndex := 0;
//    end;
end;

procedure Tfrm_zdybb_mb.AppendParAndDataSet(qryList: array of TADOQuery; _SubRepList: array of TGridppReport; var spList: array of TADOStoredProc; I: Integer);
var
  Y: Integer;
  Local_I: Integer;
  k: Integer;
  _SubRepList_1: array of TGridppReport;
begin
  for Local_I := 0 to length(gcm) - 1 do
  begin
    if pos('select ', gcm[Local_I]) = 0 then
    begin
      spList[Local_I] := TADOStoredProc.Create(nil);
      spList[Local_I].Connection := p_dm.DM_data.ado_mydata;
      spList[Local_I].Close;
      spList[Local_I].ProcedureName := gcm[Local_I];
      spList[Local_I].Parameters.Refresh;
      for Y := 0 to spList[Local_I].Parameters.Count - 1 do
      begin
        if spList[Local_I].Parameters[Y].Name <> '@RETURN_VALUE' then
        begin
          if qry_cxtj.Locate('mc', StringReplace(spList[Local_I].Parameters.Items[Y].Name, '@', '', [rfReplaceAll]), []) then
          begin
            spList[Local_I].Parameters.Items[Y].Value := qry_cxtj.FieldByName('zhi').AsString;
          end
          else
          begin
            ShowMessage('入参错误！找不到:' + spList[Local_I].Parameters[Y].Name);
          end;
        end;
      end;
      spList[Local_I].Open;
    end
    else
    begin
      qryList[Local_I] := TADOQuery.Create(nil);
      qryList[Local_I].Connection := p_dm.DM_data.ado_mydata;
      qryList[Local_I].Close;
      qryList[Local_I].SQL.Clear;
      qryList[Local_I].SQL.Text := gcm[Local_I];
      if pos(':', gcm[Local_I]) > 0 then
      begin
        for Y := 0 to qryList[Local_I].Parameters.Count - 1 do
        begin
          if qry_cxtj.Locate('mc', qryList[Local_I].Parameters.Items[Y].Name, []) then
          begin
            qryList[Local_I].Parameters.Items[Y].Value := qry_cxtj.FieldByName('zhi').AsString;
          end
          else
          begin
            ShowMessage('入参错误！找不到:' + qryList[Local_I].Parameters[Y].Name);
          end;
        end;
      end;
      qryList[Local_I].Open;
    end;
    if Local_I > 0 then
    begin
      try
        if pos('select ', gcm[Local_I]) = 0 then
        begin
          _SubRepList[Local_I - 1] := TGridppReport.Create(nil);
          GridppReport1.ControlByName(gcm[Local_I]).AsSubReport.Report := _SubRepList[Local_I - 1].DefaultInterface;
                    //yitianjia[Local_I] := gcm[Local_I];
          _SubRepList[Local_I - 1].dataset := spList[Local_I];
          for k := 0 to 3 - 1 do
          begin
            try
              setlength(_SubRepList_1, 3);
              _SubRepList_1[k] := TGridppReport.Create(nil);
              GridppReport1.ControlByName(gcm[Local_I] + inttostr(k)).AsSubReport.Report := _SubRepList_1[k].DefaultInterface;
              _SubRepList_1[k].dataset := spList[Local_I];
            except

            end;
          end;
        end
        else
        begin
          _SubRepList[Local_I - 1] := TGridppReport.Create(nil);
          GridppReport1.ControlByName(gcm_sqlm[Local_I]).AsSubReport.Report := _SubRepList[Local_I - 1].DefaultInterface;
                    //yitianjia[Local_I] := gcm_sqlm[Local_I];
          _SubRepList[Local_I - 1].dataset := qryList[Local_I];
          for k := 0 to 3 - 1 do
          begin
            try
              setlength(_SubRepList_1, 3);
              _SubRepList_1[k] := TGridppReport.Create(nil);
              GridppReport1.ControlByName(gcm[Local_I] + inttostr(k)).AsSubReport.Report := _SubRepList_1[k].DefaultInterface;
              _SubRepList_1[k].dataset := qryList[Local_I];
            except

            end;
          end;
        end;
      except
      end;
    end
    else
    begin
      if pos('select ', gcm[Local_I]) = 0 then
      begin
        GridppReport1.DataSet := spList[Local_I];
      end
      else
      begin
        GridppReport1.DataSet := qryList[Local_I];
      end;
    end;
  end;
end;

procedure Tfrm_zdybb_mb.btn_printClick(Sender: TObject);
begin
  GridppReport1.Print(false);
end;

procedure Tfrm_zdybb_mb.btn_tjClick(Sender: TObject);
begin
    //统计
  Tj;
end;

procedure Tfrm_zdybb_mb.CreateDateTimePick(i, _rqCount: Integer; frm_csck1: Tfrm_zdybb_mb; dateList: array of TcxDateEdit);
var
  _caption: TLabel;
  _pal: TPanel;
begin
  _caption := TLabel.Create(frm_csck1);
  try
    _caption.Name := 'c_' + StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
  except

  end;
  _caption.Caption := qry_cs.FieldByName('xsmc').AsString + ':';
  _caption.Layout := tlCenter;
  _caption.Align := alRight;
  _pal := TPanel(frm_csck1.FindComponent('pnl_mc' + inttostr(i + 1)));
  _pal.InsertControl(_caption);

  dateList[_rqCount] := TcxDateEdit.Create(frm_csck1);
  dateList[_rqCount].Date := StrToDateTime(formatdatetime('yyyy-MM-dd', Now));
  if Trim(qry_cs.FieldByName('sjlx').AsString) = '日期时间' then
  begin
    dateList[_rqCount].Properties.Kind := ckDateTime;
  end else
  begin
    dateList[_rqCount].Properties.Kind := ckDateTime;
    dateList[_rqCount].Properties.Kind := ckDate;
  end;

  try
    dateList[_rqCount].Name := 'rc_' + StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
  except

  end;
  TPanel(frm_csck1.FindComponent('pnl_zj' + inttostr(i + 1))).InsertControl(dateList[_rqCount]);
  dateList[_rqCount].Top := ((dateList[_rqCount].Parent.Height - dateList[_rqCount].Height) div 2);
  dateList[_rqCount].Left := 0;
  dateList[_rqCount].Width := dateList[_rqCount].Parent.Width - 5;
  dateList[_rqCount].TabOrder := i;



end;

function Tfrm_zdybb_mb.bljk(pt: TControl): string;
var
  re, _parName, _labName, _mulCheck, _temp: string;
  m: Integer;
  _label: TLabel;
  _pan: TPanel;
  _mulCheckValue: TStrings;
  i: Integer;
begin
  _label := TLabel.Create(nil);
  if pt.ClassType.ClassName = TPanel.ClassName then
  begin
    for m := 0 to (pt as Tpanel).ControlCount - 1 do
    begin
      re := bljk((pt as Tpanel).Controls[m]);
    end;
  end
  else
  begin
    if Copy(pt.Name, 1, 3) = 'rc_' then
    begin
      if pt.ClassType.ClassName = TEdit.ClassName then
      begin
        qry_cxtj.Insert;
        qry_cxtj.FieldByName('mc').Value := StringReplace(
          pt.Name, 'rc_', '', [rfReplaceAll]);
        qry_cxtj.FieldByName('zhi').Value := TEdit(pt).Text;
        qry_cxtj.Post;

        _labName := StringReplace(pt.Name, 'rc_', 'c_', [rfReplaceAll]);
        _label := TLabel(FindComponent(_labName));
        _parName := StringReplace(_label.Caption, ':', '', [rfReplaceAll]);
        GridppReport1.ParameterByName(_parName).Value := TEdit(pt).Text;
      end;
      if pt.ClassType.ClassName = TcxDateEdit.ClassName then
      begin
        qry_cxtj.Insert;
        qry_cxtj.FieldByName('mc').Value := StringReplace(
          pt.Name, 'rc_', '', [rfReplaceAll]);
        qry_cxtj.FieldByName('zhi').Value := FormatDateTime('yyyy-MM-dd hh:mm:ss', TcxDateEdit(pt).Date);
        qry_cxtj.Post;
        _labName := StringReplace(pt.Name, 'rc_', 'c_', [rfReplaceAll]);
        _label := TLabel(FindComponent(_labName));
        _parName := StringReplace(_label.Caption, ':', '', [rfReplaceAll]);
        GridppReport1.ParameterByName(_parName).Value := FormatDateTime('yyyy-MM-dd hh:mm:ss', TcxDateEdit(pt).Date);
      end;
      if pt.ClassType.ClassName = TSXSearchBox.ClassName then
      begin
        qry_cxtj.Insert;
        qry_cxtj.FieldByName('mc').Value := StringReplace(
          pt.Name, 'rc_', '', [rfReplaceAll]);
        qry_cxtj.FieldByName('zhi').Value := TSXSearchBox(pt).Value;
        qry_cxtj.Post;
        _labName := StringReplace(pt.Name, 'rc_', 'c_', [rfReplaceAll]);
        _label := TLabel(FindComponent(_labName));
        _parName := StringReplace(_label.Caption, ':', '', [rfReplaceAll]);
        GridppReport1.ParameterByName(_parName).Value := TSXSearchBox(pt).Text;
      end;
      if pt.ClassType.ClassName = TSXComboBox.ClassName then
      begin
        qry_cxtj.Insert;
        qry_cxtj.FieldByName('mc').Value := StringReplace(
          pt.Name, 'rc_', '', [rfReplaceAll]);
        qry_cxtj.FieldByName('zhi').Value := TSXComboBox(pt).Value;
        qry_cxtj.Post;
        _labName := StringReplace(pt.Name, 'rc_', 'c_', [rfReplaceAll]);
        _label := TLabel(FindComponent(_labName));
        _parName := StringReplace(_label.Caption, ':', '', [rfReplaceAll]);
        GridppReport1.ParameterByName(_parName).Value := TSXComboBox(pt).Text;
      end;
      if pt.ClassType.ClassName = Tcxcheckcombobox.ClassName then
      begin
        _mulCheck := '';
        _temp := Tcxcheckcombobox(pt).Value;
        _mulCheckValue := TStringList.Create;
        extractstrings(['|'], [], PChar(Tcxcheckcombobox(pt).Hint), _mulCheckValue);
        i := 0;
        while Length(_temp) > 0 do
        begin
          if Copy(_temp, 1, 1) = '1' then
          begin
            if _mulCheck = '' then
            begin
              _mulCheck := #39 + _mulCheckValue[i] + #39;
            end
            else
            begin
              _mulCheck := _mulCheck + ',' + #39 + _mulCheckValue[i] + #39;
            end;
          end;
          i := i + 1;
          _temp := Copy(_temp, 2, length(_temp) - 1);
        end;

        qry_cxtj.Insert;
        qry_cxtj.FieldByName('mc').Value := StringReplace(
          pt.Name, 'rc_', '', [rfReplaceAll]);
        qry_cxtj.FieldByName('zhi').Value := _mulCheck;
        qry_cxtj.Post;
        _labName := StringReplace(pt.Name, 'rc_', 'c_', [rfReplaceAll]);
        _label := TLabel(FindComponent(_labName));
        _parName := StringReplace(_label.Caption, ':', '', [rfReplaceAll]);
        GridppReport1.ParameterByName(_parName).Value := Tcxcheckcombobox(pt).Text;
      end;
    end;
  end;
end;

procedure Tfrm_zdybb_mb.SetProcVar(I: Integer);
var
  j: Integer;
  k: Integer;
begin
  sp2.Close;
  sp2.ProcedureName := gcm_bl[i];
  if sp2.ProcedureName <> '' then
  begin
    sp2.Parameters.Refresh;
        //sp2.Parameters.ParamByName('@RETURN_VALUE')
    for j := 0 to sp2.Parameters.Count - 1 do
    begin
      if sp2.Parameters[j].Name <> '@RETURN_VALUE' then
      begin
        if qry_cxtj.Locate('mc', StringReplace(sp2.Parameters[j].Name, '@', '', [rfReplaceAll]), []) then
        begin
          sp2.Parameters[j].Value := qry_cxtj.FieldByName('zhi').AsString;
        end
        else
        begin
          ShowMessage('入参错误！找不到:' + sp2.Parameters[j].Name);
        end;
      end;
    end;
    sp2.Open;
    for k := 0 to sp2.Fields.Count - 1 do
    begin
      if GridppReport1.ParameterByName(sp2.Fields[k].FieldName).DataType = grptDateTime then
      begin
        if sp2.FieldByName(sp2.Fields[k].FieldName).AsString <> '' then
          GridppReport1.ParameterByName(sp2.Fields[k].FieldName).Value := sp2.FieldByName(sp2.Fields[k].FieldName).AsDateTime
        else
          GridppReport1.ParameterByName(sp2.Fields[k].FieldName).Value := '';
      end
      else
        GridppReport1.ParameterByName(sp2.Fields[k].FieldName).Value := sp2.FieldByName(sp2.Fields[k].FieldName).AsString;
    end;
  end;
end;

procedure Tfrm_zdybb_mb.SetQryVar(var j: Integer; I: Integer);
var
  k: Integer;
  Local_j: Integer;
begin
  qry2.Close;
  qry2.SQL.Text := gcm_bl[i];
  if qry2.SQL.Text <> '' then
  begin
    qry2.Parameters.Refresh;
    qry_cxtj.First;
    for Local_j := 0 to sp2.Parameters.Count - 1 do
    begin
      if qry_cxtj.Locate('mc', StringReplace(sp2.Parameters[Local_j].Name, '@', '', [rfReplaceAll]), []) then
      begin
        qry2.Parameters[Local_j].Value := qry_cxtj.FieldByName('zhi').AsString;
      end
      else
      begin
        ShowMessage('入参错误！找不到:' + qry2.Parameters[Local_j].Name);
      end;
    end;
    qry2.Open;
    for k := 0 to sp2.Fields.Count - 1 do
    begin
      GridppReport1.ParameterByName(sp2.Fields[k].Name).Value := sp2.FieldByName(sp2.Fields[k].Name).AsString;
    end;
  end;
end;

procedure Tfrm_zdybb_mb.Tj;
var
  I, m: Integer;
  j, Y, k: Integer;
  zhen: boolean;
  duostring: string;
  SubRepList: TGridppReport;
  _SubRepList: array of TGridppReport;
  spList: array of TADOStoredProc;
  qryList: array of TADOQuery;

  res, _labName, _parName: string;
    //rptProductList: TGridppReport;
begin
  qry_cxtj.Close;
  qry_cxtj.Open;
    //rptProductList := TGridppReport.Create( nil );
  GRPrintViewer1.Stop;
  GridppReport1.Clear;
  GridppReport1.LoadFromBlobField(qry_bbnr);

    //------遍历输入----------------------------------------
  for m := 0 to ControlCount - 1 do
  begin
    bljk(Controls[m]);
  end;
    //------------------------------------------------------
  qry_cs.Filtered := false;
  qry_cs.First;
  while not qry_cs.Eof do
  begin
    if qry_cs.FieldByName('srlb').AsString = '固定值' then
    begin
      _labName := qry_cs.FieldByName('xsmc').AsString;
      _parName := StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);
      qry_cxtj.Insert;
      qry_cxtj.FieldByName('mc').Value := _parName;
      qry_cxtj.FieldByName('zhi').Value := qry_cs.FieldByName('mrz').AsString;
      qry_cxtj.Post;
      try
        GridppReport1.ParameterByName(_labName).Value := qry_cs.FieldByName('mrz').AsString;
      except
        Application.MessageBox(PChar('未找到变量<' + _labName + '>' + #13 +
          '修改了报表类别后，请先在设计报表处重新保存报表！'), '提示', MB_OK + MB_ICONWARNING)
      end;
    end;

    if qry_cs.FieldByName('srlb').AsString = '系统参数' then
    begin
      _labName := qry_cs.FieldByName('xsmc').AsString;
      _parName := StringReplace(qry_cs.FieldByName('mc').AsString, '@', '', [rfReplaceAll]);

      qry_cxtj.Insert;
      qry_cxtj.FieldByName('mc').Value := _parName;
      if qry_cs.FieldByName('xxlb').AsString = 'pub_czydm' then
      begin
        qry_cxtj.FieldByName('zhi').Value := pub_czydm;
      end;
      if qry_cs.FieldByName('xxlb').AsString = 'pub_czyxm' then
      begin
        qry_cxtj.FieldByName('zhi').Value := pub_czyxm;
      end;
      if qry_cs.FieldByName('xxlb').AsString = 'pub_ksdm' then
      begin
        qry_cxtj.FieldByName('zhi').Value := pub_ksdm;
      end;
      if qry_cs.FieldByName('xxlb').AsString = 'pub_ksmc' then
      begin
        qry_cxtj.FieldByName('zhi').Value := pub_ksmc;
      end;
      if qry_cs.FieldByName('xxlb').AsString = 'pub_bqdm' then
      begin
        qry_cxtj.FieldByName('zhi').Value := pub_bqdm;
      end;
      if qry_cs.FieldByName('xxlb').AsString = 'pub_bqmc' then
      begin
        qry_cxtj.FieldByName('zhi').Value := pub_bqmc;
      end;
      if qry_cs.FieldByName('xxlb').AsString = 'pub_xtsj' then
      begin
        qry_cxtj.FieldByName('zhi').Value := FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date);
      end;
      qry_cxtj.Post;
      try
        GridppReport1.ParameterByName(_labName).Value := qry_cs.FieldByName('mrz').AsString;
      except
        Application.MessageBox(PChar('未找到变量<' + _labName + '>' + #13 +
          '修改了报表类别后，请先在设计报表处重新保存报表！'), '提示', MB_OK + MB_ICONWARNING)
      end;
    end;
    qry_cs.Next;
  end;

  if length(gcm_bl) > 0 then
  begin
    for I := 0 to length(gcm_bl) - 1 do
    begin
      if Pos('select', gcm_bl[i]) <= 0 then
      begin
        SetProcVar(I); //设置过程变量
      end
      else
      begin
        SetQryVar(j, I); //设置查询变量
      end;
    end;
  end;
    //-----------------------
  if length(gcm) > 0 then
  begin
    SetLength(spList, length(gcm));
    SetLength(qryList, length(gcm));
    SetLength(_SubRepList, length(gcm) - 1);

        //添加参数和数据集
    AppendParAndDataSet(qryList, _SubRepList, spList, I);

  end;

  res := frm_func.SetCReportXtcs(GridppReport1);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin

    GRPrintViewer1.Report := GridppReport1;
    GRPrintViewer1.Refresh;
  end;

end;
end.
