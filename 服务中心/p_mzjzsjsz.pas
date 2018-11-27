unit p_mzjzsjsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxCheckBox, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxTimeEdit, cxControls, cxContainer, cxEdit, cxGroupBox, DB, ADODB, Menus,
  cxLookAndFeelPainters, cxButtons;

type
  Tfrm_mzjzsjsz = class(TForm)
    Panel1: TPanel;
    cxGroupBox_zw1: TcxGroupBox;
    td_zw_ks1: TcxTimeEdit;
    td_zw_js1: TcxTimeEdit;
    Label1: TLabel;
    Label2: TLabel;
    qry_zw: TADOQuery;
    ds_zw: TDataSource;
    ds_ws: TDataSource;
    qry_ws: TADOQuery;
    Panel2: TPanel;
    but_ok: TcxButton;
    but_close: TcxButton;
    cb_zw1: TcxCheckBox;
    cxGroupBox_ws1: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    td_ws_ks1: TcxTimeEdit;
    td_ws_js1: TcxTimeEdit;
    cb_ws1: TcxCheckBox;
    chk_week1: TCheckBox;
    cxGroupBox_zw2: TcxGroupBox;
    lbl3: TLabel;
    lbl4: TLabel;
    td_zw_ks2: TcxTimeEdit;
    td_zw_js2: TcxTimeEdit;
    cb_zw2: TcxCheckBox;
    cxGroupBox_ws2: TcxGroupBox;
    lbl5: TLabel;
    lbl6: TLabel;
    td_ws_ks2: TcxTimeEdit;
    td_ws_js2: TcxTimeEdit;
    cb_ws2: TcxCheckBox;
    cxGroupBox_zw3: TcxGroupBox;
    lbl7: TLabel;
    lbl8: TLabel;
    td_zw_ks3: TcxTimeEdit;
    td_zw_js3: TcxTimeEdit;
    cb_zw3: TcxCheckBox;
    cxGroupBox_ws3: TcxGroupBox;
    lbl9: TLabel;
    lbl10: TLabel;
    td_ws_ks3: TcxTimeEdit;
    td_ws_js3: TcxTimeEdit;
    cb_ws3: TcxCheckBox;
    cxGroupBox_zw4: TcxGroupBox;
    lbl11: TLabel;
    lbl12: TLabel;
    td_zw_ks4: TcxTimeEdit;
    td_zw_js4: TcxTimeEdit;
    cb_zw4: TcxCheckBox;
    cxGroupBox_ws4: TcxGroupBox;
    lbl13: TLabel;
    lbl14: TLabel;
    td_ws_ks4: TcxTimeEdit;
    td_ws_js4: TcxTimeEdit;
    cb_ws4: TcxCheckBox;
    cxGroupBox_ws5: TcxGroupBox;
    lbl15: TLabel;
    lbl16: TLabel;
    td_ws_ks5: TcxTimeEdit;
    td_ws_js5: TcxTimeEdit;
    cb_ws5: TcxCheckBox;
    cxGroupBox_zw5: TcxGroupBox;
    lbl17: TLabel;
    lbl18: TLabel;
    td_zw_ks5: TcxTimeEdit;
    td_zw_js5: TcxTimeEdit;
    cb_zw5: TcxCheckBox;
    cxGroupBox_ws6: TcxGroupBox;
    lbl19: TLabel;
    lbl20: TLabel;
    td_ws_ks6: TcxTimeEdit;
    td_ws_js6: TcxTimeEdit;
    cb_ws6: TcxCheckBox;
    cxGroupBox_zw6: TcxGroupBox;
    lbl21: TLabel;
    lbl22: TLabel;
    td_zw_ks6: TcxTimeEdit;
    td_zw_js6: TcxTimeEdit;
    cb_zw6: TcxCheckBox;
    cxGroupBox_ws7: TcxGroupBox;
    lbl23: TLabel;
    lbl24: TLabel;
    td_ws_ks7: TcxTimeEdit;
    td_ws_js7: TcxTimeEdit;
    cb_ws7: TcxCheckBox;
    cxGroupBox_zw7: TcxGroupBox;
    lbl25: TLabel;
    lbl26: TLabel;
    td_zw_ks7: TcxTimeEdit;
    td_zw_js7: TcxTimeEdit;
    cb_zw7: TcxCheckBox;
    chk_week2: TCheckBox;
    chk_week3: TCheckBox;
    chk_week4: TCheckBox;
    chk_week5: TCheckBox;
    chk_week6: TCheckBox;
    chk_week7: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure but_okClick(Sender: TObject);
    procedure but_closeClick(Sender: TObject);
    procedure but_noClick(Sender: TObject);
    procedure chk_week1Click(Sender: TObject);
  private
    { Private declarations }
    zw_ks, zw_js, ws_ks, ws_js: TDateTime;
    function FindForm(aFormClassType: string; var aSubForm: TCheckBox): Boolean;
  public
    { Public declarations }
  end;

var
  frm_mzjzsjsz: Tfrm_mzjzsjsz;

implementation
uses p_dm, p_main;

{$R *.dfm}

procedure Tfrm_mzjzsjsz.but_closeClick(Sender: TObject);
begin
  qry_zw.Close;
  qry_ws.Close;
  Close;
end;

procedure Tfrm_mzjzsjsz.but_noClick(Sender: TObject);
begin
  try
    if qry_zw.Active then
    begin
      qry_zw.Delete;
      td_zw_ks1.Time := 0;
      td_zw_js1.Time := 0;
    end;
    if qry_ws.Active then
    begin
      qry_ws.Delete;
      qry_ws.Post;
      td_ws_ks1.Time := 0;
      td_ws_js1.Time := 0;
    end;
    Application.MessageBox('清除设置成功！', '提示', MB_OKCANCEL);
  except
    Application.MessageBox('清除设置出错，请检查！', '提示', 16);
  end;
end;

procedure Tfrm_mzjzsjsz.but_okClick(Sender: TObject);
var
  vIndex,vCount:integer;
  xh:string;
  vis:Boolean;
  vControl: TControl;
  vSubForm: TCheckBox;
begin
  try
    vCount := panel1.ControlCount;
    for vIndex := 0 to vCount - 1 do
    begin
        vControl := panel1.Controls[vIndex];
      // 第一个页面中还有一个导航窗体，所以需要处理一下
      if (vControl is TCheckBox)  then
      begin
        if  (pos(copy(TCheckBox(vControl).Name,1,Length(TCheckBox(vControl).Name)-1), 'chk_week') > 0) then  //(CompareText(TCheckBox(vControl).Name, '') = 0) then    //and (TCheckBox(vControl).Name= 'chk_week' + IntToStr(vIndex))
        begin
          xh:= copy(TCheckBox(vControl).Name, pos('chk_week', TCheckBox(vControl).Name) + Length('chk_week'),1);
          if (TCheckBox(vControl).Checked)  then
          begin
            if  TCheckBox(Self.FindComponent('cb_zw' + xh)).Checked then
            begin
              qry_zw.Close;
              qry_zw.SQL.Text := 'select bc,kssj,jssj,week from sys_mzgh_jzsjsz where bc=' + #39 + 'zw' + #39
              + ' and week=' + #39 + xh + #39;
              qry_zw.Open;
              if qry_zw.RecordCount < 1 then
              qry_zw.Insert
              else
              qry_zw.Edit;
              qry_zw['bc'] := 'zw';
              qry_zw['kssj'] :=  TcxTimeEdit(Self.FindComponent('td_zw_ks' + xh)).Time;//  td_zw_ks1.Time;
              qry_zw['jssj'] :=  TcxTimeEdit(Self.FindComponent('td_zw_js' + xh)).Time;//td_zw_js1.Time;
              qry_zw['week'] := xh;
              qry_zw.Post;
            end
            else
            begin
              qry_zw.Close;
              qry_zw.SQL.Text := 'delete sys_mzgh_jzsjsz where bc=' + #39 + 'zw' + #39
              + ' and week=' + #39 + xh + #39;
              qry_zw.ExecSQL;
            end;
            //////////////////////////////
            if  TCheckBox(Self.FindComponent('cb_ws' + xh)).Checked then
            begin
              qry_ws.Close;
              qry_ws.SQL.Text := 'select bc,kssj,jssj,week from sys_mzgh_jzsjsz where bc=' + #39 + 'ws' + #39
                + ' and week=' + #39 + xh + #39;
              qry_ws.Open;
              if qry_ws.RecordCount < 1 then
                qry_ws.Insert
              else
                qry_ws.Edit;
              qry_ws['bc'] := 'ws';
              qry_ws['kssj'] := TcxTimeEdit(Self.FindComponent('td_ws_ks' + xh)).Time ;
              qry_ws['jssj'] := TcxTimeEdit(Self.FindComponent('td_ws_js' + xh)).Time;
              qry_ws['week'] := xh;
              qry_ws.Post;
            end
            else
            begin
              qry_ws.Close;
              qry_ws.SQL.Text := 'delete sys_mzgh_jzsjsz where bc=' + #39 + 'ws' + #39
               + ' and week=' + #39 + xh + #39;
              qry_ws.ExecSQL;
            end;

          end else  //删除周
          begin
            qry_zw.Close;
            qry_zw.SQL.Text := 'delete sys_mzgh_jzsjsz where week=' + #39 + xh + #39;
            qry_zw.ExecSQL;
          end;
          /////
          ///
        end;
      end;
    end;
//    for   vIndex := 0   to   Self.Componentcount - 1   do//Self.Componentcount就是TForm1的控件数量
//    begin
//      if   Self.Components[vIndex]   is   TCheckBox   then     //判断控件是否为TEdit
//      begin
//       //vis:= TCheckBox(FindComponent('chk_week'+inttostr(vIndex))).Checked;
////        if  ( Self.Components[vIndex].Name ='chk_week' + IntToStr(vIndex))
////          and   TCheckBox(Self.Controls[vIndex]).Checked then //TCheckBox(FindComponent('chk_week'+inttostr(vIndex))).Checked then   //星期几
////        begin
//
//        if FindForm('chk_week'+inttostr(vIndex),vSubForm)  then
//        begin
//          if  TCheckBox(Self.FindComponent('cb_zw' + inttostr(vIndex))).Checked then
//          begin
//            qry_zw.Close;
//            qry_zw.SQL.Text := 'select bc,kssj,jssj,week from sys_mzgh_jzsjsz where bc=' + #39 + 'zw' + #39
//            + ' and week=' + #39 + IntToStr(vIndex) + #39;
//            qry_zw.Open;
//            if qry_zw.RecordCount < 1 then
//            qry_zw.Insert
//            else
//            qry_zw.Edit;
//            qry_zw['bc'] := 'zw';
//            qry_zw['kssj'] := td_zw_ks1.Time;
//            qry_zw['jssj'] := td_zw_js1.Time;
//            qry_zw['week'] := 'vIndex';
//            qry_zw.Post;
//          end
//          else
//          begin
//            qry_zw.Close;
//            qry_zw.SQL.Text := 'delete sys_mzgh_jzsjsz where bc=' + #39 + 'zw' + #39;
//            qry_zw.ExecSQL;
//          end;
//        end else
//        begin
//          qry_zw.Close;
//          qry_zw.SQL.Text := 'delete sys_mzgh_jzsjsz where week=' + #39 +  IntToStr(vIndex) + #39;
//          qry_zw.ExecSQL;
//        end;
//      end;
//    end;
//
//    Exit;
//    if cb_zw1.Checked then
//    begin
//      qry_zw.Close;
//      qry_zw.SQL.Text := 'select bc,kssj,jssj from sys_mzgh_jzsjsz where bc=' + #39 + 'zw' + #39;
//      qry_zw.Open;
//      if qry_zw.RecordCount < 1 then
//        qry_zw.Insert
//      else
//        qry_zw.Edit;
//      qry_zw['bc'] := 'zw';
//      qry_zw['kssj'] := td_zw_ks1.Time;
//      qry_zw['jssj'] := td_zw_js1.Time;
//      qry_zw.Post;
//    end
//    else
//    begin
//      qry_zw.Close;
//      qry_zw.SQL.Text := 'delete sys_mzgh_jzsjsz where bc=' + #39 + 'zw' + #39;
//      qry_zw.ExecSQL;
//    end;
//
//    if cb_ws1.Checked then
//    begin
//      qry_ws.Close;
//      qry_ws.SQL.Text := 'select bc,kssj,jssj from sys_mzgh_jzsjsz where bc=' + #39 + 'ws' + #39;
//      qry_ws.Open;
//      if qry_ws.RecordCount < 1 then
//        qry_ws.Insert
//      else
//        qry_ws.Edit;
//      qry_ws['bc'] := 'ws';
//      qry_ws['kssj'] := td_ws_ks1.Time;
//      qry_ws['jssj'] := td_ws_js1.Time;
//      qry_ws.Post;
//    end
//    else
//    begin
//      qry_ws.Close;
//      qry_ws.SQL.Text := 'delete sys_mzgh_jzsjsz where bc=' + #39 + 'ws' + #39;
//      qry_ws.ExecSQL;
//    end;
    Application.MessageBox('保存设置成功！', '提示', MB_OK);
  except
    on E: Exception do
      Frm_main.ApplicationEvents1Exception(Sender, e);
  end;
end;


procedure Tfrm_mzjzsjsz.chk_week1Click(Sender: TObject);
var
  vIndex,vCount:integer;
  xh:string;
  vis:Boolean;
  vControl: TControl;
  vSubForm: TCheckBox;
begin
  vCount := panel1.ControlCount;
  for vIndex := 0 to vCount - 1 do
  begin
      vControl := panel1.Controls[vIndex];
    // 第一个页面中还有一个导航窗体，所以需要处理一下
    if (vControl is TCheckBox)  then
    begin
      if  (pos(copy(TCheckBox(vControl).Name,1,Length(TCheckBox(vControl).Name)-1), 'chk_week') > 0) then  //(CompareText(TCheckBox(vControl).Name, '') = 0) then    //and (TCheckBox(vControl).Name= 'chk_week' + IntToStr(vIndex))
      begin
        xh:= copy(TCheckBox(vControl).Name, pos('chk_week', TCheckBox(vControl).Name) + Length('chk_week'),1);
        if (TCheckBox(vControl).Checked)  then
        begin
            TcxGroupBox(Self.FindComponent('cxGroupBox_zw' + xh)).Enabled := True;
            TcxGroupBox(Self.FindComponent('cxGroupBox_ws' + xh)).Enabled := True;
        end else
        begin
           TcxGroupBox(Self.FindComponent('cxGroupBox_zw' + xh)).Enabled := False;
           TcxGroupBox(Self.FindComponent('cxGroupBox_ws' + xh)).Enabled := False;
        end;
      end;
    end;
  end;
end;

//function Tfrm_mzjzsjsz.FindForm(const aFormClassType: string;
//  var aTabIndex: Integer): Boolean;
//var
//  vIndex, vCount: Integer;
//  vSubForm: TForm;
//  vRet: Boolean;
//begin
//  vRet := False;
//  vCount := advfcpgrForm.AdvPageCount;
//  for vIndex := 0 to vCount - 1 do
//  begin
//    if FindForm(vIndex , vSubForm) then
//    begin
//      if vSubForm.ClassType.ClassName = aFormClassType then
//      begin
//        aTabIndex := vIndex;
//        vRet := True;
//        Break;
//      end;
//    end else
//    begin
//      Continue;
//    end;
//  end;
//
//  Result := vRet;
//end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzjzsjsz.FindForm
  作者:      yangshuai
  日期:      2017.07.24
  参数:      aTabIndex: Integer; var aSubForm: TForm
  返回值:    Boolean
-------------------------------------------------------------------------------}
function Tfrm_mzjzsjsz.FindForm( aFormClassType: string;
  var aSubForm: TCheckBox): Boolean;
var
  vIndex, vCount: Integer;
  vControl: TControl;
  vRet: Boolean;
begin
  aSubForm := nil;
  vRet := False;
  vCount := panel1.ControlCount;
  for vIndex := 0 to vCount - 1 do
  begin
    vControl := panel1.Controls[vIndex];
    // 第一个页面中还有一个导航窗体，所以需要处理一下
    if (vControl is TCheckBox) and
       (TCheckBox(vControl).ClassType.ClassName = aFormClassType) then
    begin
      aSubForm := TCheckBox(vControl);
      ShowMessage(aSubForm.Caption);
      vRet := True;
      Break;
    end;
  end;
  Result := vRet;
end;


procedure Tfrm_mzjzsjsz.FormShow(Sender: TObject);
var
  vweek:string;
  vCount,vIndex:Integer;
  vControl: TControl;
begin
  //初始化控件
  vCount := panel1.ControlCount;
  for vIndex := 0 to vCount - 1 do
  begin
     vControl := panel1.Controls[vIndex];
    if (vControl is TcxTimeEdit)  then //TcxTimeEdit
    begin
       TcxTimeEdit(vControl).Time:=0;
    end;
    if (vControl is TCheckBox) then //TCheckBox
    begin
      TCheckBox(vControl).Checked:=false;
    end;
     if (vControl is TcxCheckBox) then  // TcxCheckBox
    begin
      TcxCheckBox(vControl).Checked:=false;
    end;
     if (vControl is TcxGroupBox) then  //TcxGroupBox
    begin
      TcxGroupBox(vControl).Enabled:=false;
    end;
  end;


  //中午急诊时间
  qry_zw.Close;
  qry_zw.Open;
  while not qry_zw.Eof do
  begin
     vweek := qry_zw.FieldByName('week').AsString;
     TcxTimeEdit(Self.FindComponent('td_zw_ks' + vweek)).Time :=  qry_zw.FieldByName('kssj').AsDateTime;
     TcxTimeEdit(Self.FindComponent('td_zw_js' + vweek)).Time :=  qry_zw.FieldByName('jssj').AsDateTime;
     TcxCheckBox(Self.FindComponent('cb_zw' + vweek)).Checked := True;
     TCheckBox(Self.FindComponent('chk_week' + vweek)).Checked := True;
     TcxGroupBox(Self.FindComponent('cxGroupBox_zw' + vweek)).Enabled := True;
     qry_zw.Next;
  end;


//  if qry_zw.RecordCount > 0 then
//  begin
//    td_zw_ks1.Time := qry_zw.FieldByName('kssj').AsDateTime;
//    td_zw_js1.Time := qry_zw.FieldByName('jssj').AsDateTime;
//    cb_zw1.Checked := True;
//  end
//  else
//  begin
//    td_zw_ks1.time := 0;
//    td_zw_js1.time := 0;
//    cb_zw1.Checked := False;
//  end;



  //晚上急诊时间
  qry_ws.Close;
  qry_ws.Open;
  while not qry_ws.Eof do
  begin
     vweek := qry_ws.FieldByName('week').AsString;
     TcxTimeEdit(Self.FindComponent('td_ws_ks' + vweek)).Time :=  qry_ws.FieldByName('kssj').AsDateTime;
     TcxTimeEdit(Self.FindComponent('td_ws_js' + vweek)).Time :=  qry_ws.FieldByName('jssj').AsDateTime;
     TcxCheckBox(Self.FindComponent('cb_ws' + vweek)).Checked := True;
     TCheckBox(Self.FindComponent('chk_week' + vweek)).Checked := True;
     TcxGroupBox(Self.FindComponent('cxGroupBox_ws' + vweek)).Enabled := True;
    qry_ws.Next;
  end;


//  if qry_ws.RecordCount > 0 then
//  begin
//    td_ws_ks1.Time := qry_ws.FieldByName('kssj').AsDateTime;
//    td_ws_js1.Time := qry_ws.FieldByName('jssj').AsDateTime;
//    cb_ws1.Checked := True;
//  end
//  else
//  begin
//    td_ws_ks1.time := 0;
//    td_ws_js1.time := 0;
//    cb_ws1.Checked := False;
//  end;
end;

end.

