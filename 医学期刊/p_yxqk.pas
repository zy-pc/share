unit p_yxqk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Menus, ComCtrls, OleCtrls, Buttons, ToolWin, ActnList, ImgList, shdocvw,
  DB, ADODB;

const
  CM_HOMEPAGEREQUEST = WM_USER + $1000;

type
  Tfrm_yxqk = class(TForm)
    StatusBar1: TStatusBar;
    NavigatorImages: TImageList;
    NavigatorHotImages: TImageList;
    LinksImages: TImageList;
    LinksHotImages: TImageList;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    BackBtn: TToolButton;
    ForwardBtn: TToolButton;
    StopBtn: TToolButton;
    RefreshBtn: TToolButton;
    ToolBar2: TToolBar;
    Animate1: TAnimate;
    URLs: TComboBox;
    ActionList1: TActionList;
    BackAction: TAction;
    ForwardAction: TAction;
    StopAction: TAction;
    RefreshAction: TAction;
    WebBrowser1: TWebBrowser;
    qry_wkxx: TADOQuery;
    procedure Exit1Click(Sender: TObject);
    procedure StopClick(Sender: TObject);
    procedure URLsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure LinksClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure BackClick(Sender: TObject);
    procedure ForwardClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure URLsClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Toolbar3Click(Sender: TObject);
    procedure Statusbar2Click(Sender: TObject);
    procedure BackActionUpdate(Sender: TObject);
    procedure ForwardActionUpdate(Sender: TObject);
    procedure WebBrowser1BeforeNavigate2(Sender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure WebBrowser1DownloadBegin(Sender: TObject);
    procedure WebBrowser1DownloadComplete(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    HistoryIndex: Integer;
    HistoryList: TStringList;
    UpdateCombo: Boolean;
    procedure FindAddress;
    procedure HomePageRequest(var message: tmessage); message CM_HOMEPAGEREQUEST;
  end;

var
  frm_yxqk: Tfrm_yxqk;

implementation

uses
p_dm;
{$R *.DFM}

procedure Tfrm_yxqk.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_yxqk.FindAddress;
var
  Flags: OLEVariant;

begin
  Flags := 0;
  UpdateCombo := True;
 // if pos('172.16.10.181', urls.text) > 0 then
    WebBrowser1.Navigate(WideString(Urls.Text), Flags, Flags, Flags, Flags);
end;

procedure Tfrm_yxqk.StopClick(Sender: TObject);
begin
  WebBrowser1.Stop;
end;

procedure Tfrm_yxqk.URLsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    FindAddress;
  end;
end;

procedure Tfrm_yxqk.URLsClick(Sender: TObject);
begin
  FindAddress;
end;

procedure Tfrm_yxqk.LinksClick(Sender: TObject);
begin
  if (Sender as TToolButton).Hint = '' then Exit;
  URLs.Text := (Sender as TToolButton).Hint;
  FindAddress;
end;

procedure Tfrm_yxqk.RefreshClick(Sender: TObject);
begin
  FindAddress;
end;

procedure Tfrm_yxqk.BackClick(Sender: TObject);
begin
  URLs.Text := HistoryList[HistoryIndex - 1];
  FindAddress;
end;

procedure Tfrm_yxqk.ForwardClick(Sender: TObject);
begin
  URLs.Text := HistoryList[HistoryIndex + 1];
  FindAddress;
end;

procedure Tfrm_yxqk.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [ssAlt] then
    if (Key = VK_RIGHT) and ForwardBtn.Enabled then
      ForwardBtn.Click
    else if (Key = VK_LEFT) and BackBtn.Enabled then
      BackBtn.Click;
end;

procedure Tfrm_yxqk.FormShow(Sender: TObject);
var
ToolButton : TToolButton;
begin
    qry_wkxx.Close;
    qry_wkxx.SQL.Text:='select * from dzbl_yxwk';
    qry_wkxx.Open;
    while not qry_wkxx.Eof do
    begin
      ToolButton:=TToolButton.Create(nil);
      ToolButton.Caption:=qry_wkxx.FieldByName('wkmc').AsString;
      ToolButton.Hint:=qry_wkxx.FieldByName('wkdz').AsString;
      ToolButton.ImageIndex:=1;
      ToolButton.OnClick := LinksClick;
      ToolButton.Parent := ToolBar2;
      qry_wkxx.Next;
    end;
end;

procedure Tfrm_yxqk.Toolbar3Click(Sender: TObject);
begin
  with Sender as TMenuItem do
  begin
    Checked := not Checked;
    Coolbar1.Visible := Checked;
  end;
end;

procedure Tfrm_yxqk.Statusbar2Click(Sender: TObject);
begin
  with Sender as TMenuItem do
  begin
    Checked := not Checked;
    StatusBar1.Visible := Checked;
  end;
end;

procedure Tfrm_yxqk.HomePageRequest(var Message: TMessage);
begin
  URLs.Text := 'http://172.16.10.181:8000/';
  FindAddress;
end;

procedure Tfrm_yxqk.FormCreate(Sender: TObject);
begin
  HistoryIndex := -1;
  HistoryList := TStringList.Create;
  { Load the animation from the AVI file in the startup directory.  An
    alternative to this would be to create a .RES file including the cool.avi
    as an AVI resource and use the ResName or ResId properties of Animate1 to
    point to it. }
//  Animate1.FileName := ExtractFilePath(Application.ExeName) + 'cool.avi';
  { Find the home page - needs to be posted because HTML control hasn't been
    registered yet. }
  PostMessage(Handle, CM_HOMEPAGEREQUEST, 0, 0);
end;

procedure Tfrm_yxqk.FormDestroy(Sender: TObject);
begin
  try
  HistoryList.Free;
  except
  ShowMessage('1');
  end;
end;

procedure Tfrm_yxqk.BackActionUpdate(Sender: TObject);
begin
  if HistoryList.Count > 0 then
    BackAction.Enabled := HistoryIndex > 0
  else
    BackAction.Enabled := False;
end;

procedure Tfrm_yxqk.ForwardActionUpdate(Sender: TObject);
begin
  if HistoryList.Count > 0 then
    ForwardAction.Enabled := HistoryIndex < HistoryList.Count - 1
  else
    ForwardAction.Enabled := False;
end;

procedure Tfrm_yxqk.WebBrowser1BeforeNavigate2(Sender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
var
  NewIndex: Integer;
begin
  NewIndex := HistoryList.IndexOf(URL);
  if NewIndex = -1 then
  begin
    { Remove entries in HistoryList between last address and current address }
    if (HistoryIndex >= 0) and (HistoryIndex < HistoryList.Count - 1) then
      while HistoryList.Count > HistoryIndex do
        HistoryList.Delete(HistoryIndex);
    HistoryIndex := HistoryList.Add(URL);
  end
  else
    HistoryIndex := NewIndex;
  if UpdateCombo then
  begin
    UpdateCombo := False;
    NewIndex := URLs.Items.IndexOf(URL);
    if NewIndex = -1 then
      URLs.Items.Insert(0, URL)
    else
      URLs.Items.Move(NewIndex, 0);
  end;
  URLs.Text := URL;
  Statusbar1.Panels[0].Text := URL;
end;

procedure Tfrm_yxqk.WebBrowser1DownloadBegin(Sender: TObject);
begin
  { Turn the stop button dark red }
  StopBtn.ImageIndex := 4;
  { Play the avi from the first frame indefinitely }
//  Animate1.Active := True;
end;

procedure Tfrm_yxqk.WebBrowser1DownloadComplete(Sender: TObject);
begin
  { Turn the stop button grey }
  StopBtn.ImageIndex := 2;
  { Stop the avi and show the first frame }
//  Animate1.Active := False;
end;

procedure Tfrm_yxqk.ToolButton1Click(Sender: TObject);
begin
  if (Sender as TToolButton).Hint = '' then Exit;
  URLs.Text := (Sender as TToolButton).Hint;
  FindAddress;
end;

end.
