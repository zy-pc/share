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
///  ��ѯ����ʱʹ�õȴ�����
/// </summary>
/// <param name="Ado">Ҫ�򿪵����ݷ��ʶ���</param>
/// <param name="WithOpenMethod">�Ƿ�ʹ��Open�����򿪣����Ҫִ���޷�����䣬�˲���Ӧ��ΪFalse</param>
/// <param name="Msg">�ȴ�������ʾ����Ϣ Ĭ��Ϊ������׼���У����Ժ�</param>
/// <param name="_CommandTimeout">���ִ�г�ʱʱ�䣡Ĭ��30  ��ʾ30��</param>
/// <returns>���Ƿ�ɹ�</returns>
function waitForQuery(Ado:TCustomADODataSet; WithOpenMethod:Boolean=True;
   Msg:string='����׼���У����Ժ�';_CommandTimeout:Integer=30):Boolean;overload;
   
function waitForQuery(Ado:TCustomADODataSet;_CommandTimeout:Integer):Boolean;overload;

implementation

{$R *.dfm}
function waitForQuery(Ado:TCustomADODataSet; WithOpenMethod:Boolean=True;
   Msg:string='����׼���У����Ժ�';_CommandTimeout:Integer=30):Boolean;overload;
var
  MakWaitForm: TMakWaitForm;
begin
  MakWaitForm:= TMakWaitForm.Create(Application);
  try
    MakWaitForm._UseAdo := Ado;
    MakWaitForm._UseAdo.Connection.CommandTimeout := _CommandTimeout;
    MakWaitForm._isOpen := WithOpenMethod;
    if Msg='' then
      Msg := '����׼���У����Ժ�';
    MakWaitForm.Msg := Msg;
    MakWaitForm.ShowModal;
    Result := MakWaitForm.ModalResult = mrOk;
  finally
    MakWaitForm.Free;
  end;
end;

function waitForQuery(Ado:TCustomADODataSet;_CommandTimeout:Integer):Boolean;overload;
begin
  Result := waitForQuery(Ado,True,'����׼���У����Ժ�',_CommandTimeout);
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
