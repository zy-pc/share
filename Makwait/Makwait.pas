unit Makwait;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GIFImg, ExtCtrls, StdCtrls,adodb, Dbdao, ImgList;

type
  TMakWaitForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    ImageList1: TImageList;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    _dbda0:TDbdao;
    _isOpen:boolean;
    Msg:string;
    LoopCount:Integer;
    _HasError:Boolean;
    _ErrorMsg:string;
    { Private declarations }
    procedure OnThreadError (var Message: TMessage); message WM_QRY_ERROR;
  public
     _UseAdo:TCustomADODataSet;
    { Public declarations }
  end;

/// <summary>
///  查询数据时使用等待窗口
/// </summary>
/// <param name="Ado">要打开的数据访问对象</param>
/// <param name="WithOpenMethod">是否使用Open方法打开，如果要执行无返回语句，此参数应该为False</param>
/// <param name="Msg">等待界面显示的消息 默认为“数据准备中，请稍候”</param>
/// <param name="_CommandTimeout">语句执行超时时间！默认30  标示30秒</param>
/// <returns>打开是否成功</returns>
function waitForQuery(Ado:TCustomADODataSet; WithOpenMethod:Boolean=True;
   Msg:string='数据准备中，请稍候';_CommandTimeout:Integer=30):Boolean;overload;
   
function waitForQuery(Ado:TCustomADODataSet;_CommandTimeout:Integer):Boolean;overload;

implementation

{$R *.dfm}
function waitForQuery(Ado:TCustomADODataSet; WithOpenMethod:Boolean=True;
   Msg:string='数据准备中，请稍候';_CommandTimeout:Integer=30):Boolean;overload;
var
  MakWaitForm: TMakWaitForm;
begin
  MakWaitForm:= TMakWaitForm.Create(Application);
  try
    MakWaitForm._UseAdo := Ado;
    MakWaitForm._UseAdo.Connection.CommandTimeout := _CommandTimeout;
    MakWaitForm._isOpen := WithOpenMethod;
    if Msg='' then
      Msg := '数据准备中，请稍候';
    MakWaitForm.Msg := Msg;
    MakWaitForm.ShowModal;
    Result := MakWaitForm.ModalResult = mrOk;
  finally
    MakWaitForm.Free;
  end;
end;

function waitForQuery(Ado:TCustomADODataSet;_CommandTimeout:Integer):Boolean;overload;
begin
  Result := waitForQuery(Ado,True,'数据准备中，请稍候',_CommandTimeout);
end;

procedure TMakWaitForm.OnThreadError (var Message: TMessage);
begin
  _HasError := True;
  _ErrorMsg := string(Message.WParam);
end;  

procedure TMakWaitForm.FormCreate(Sender: TObject);
begin
  Timer1.Enabled := False;
  _HasError := False;
  LoopCount := 0;
  _ErrorMsg := '';
  TGIFImage(Image1.Picture.Graphic).AnimationSpeed := 1000;
  TGIFImage(Image1.Picture.Graphic).Animate := True;
  TGIFImage(Image2.Picture.Graphic).AnimationSpeed := 1000;
  TGIFImage(Image2.Picture.Graphic).Animate := True;
end;

procedure TMakWaitForm.FormDestroy(Sender: TObject);
begin
  if Assigned(_dbda0) then
    FreeAndNil(_dbda0);
end;

procedure TMakWaitForm.FormPaint(Sender: TObject);
begin
  Self.Canvas.Pen.Color := $00f9a24d;
  Self.Canvas.Pen.Width := 2;
  Self.Canvas.MoveTo(0,0);
  Self.Canvas.LineTo(Self.Width,0);
  Self.Canvas.LineTo(Self.Width, Self.Height);
  Self.Canvas.LineTo(0, Self.Height);
  Self.Canvas.LineTo(0, 0);
end;

procedure TMakWaitForm.FormShow(Sender: TObject);
begin
  _dbda0:=TDbdao.Create(Self.Handle ,_UseAdo, _isOpen);
  Label1.Caption := Msg;
  Timer1.Enabled := True;
end;

procedure TMakWaitForm.Timer1Timer(Sender: TObject);
begin
  if _HasError then
  begin
    Timer1.Enabled := False;
    Self.ModalResult := mrCancel;
    ShowMessage(_ErrorMsg);
  end else
  if (not Assigned(_dbda0)) or (_dbda0._EExitEd) then
  begin
    Self.ModalResult := mrOk;
    Timer1.Enabled := False;
  end else
  if LoopCount=0 then
  begin
    Label1.Caption := Msg;
    inc(LoopCount);
  end else if LoopCount>5 then
  begin
    LoopCount:=1;
    Label1.Caption := Msg;
  end else begin
    Label1.Caption := Label1.Caption + '.';
    inc(LoopCount);
  end;

end;

end.
