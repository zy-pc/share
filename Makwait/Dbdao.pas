unit Dbdao;

interface

uses
  Windows, Classes, SysUtils, db, ADODB, ActiveX, Messages;

const
  WM_QRY_ERROR = WM_USER + 1; 

type
  TDbDao = class(TThread)
  private
    _useAdo:TCustomADODataSet;
    _isOpen:Boolean;

    _OwnerHandle:Thandle;
    { Private declarations }
  protected
    procedure Execute; override;
  public
    _EExitEd:Boolean;
    constructor create(OwnerHandle:Thandle; var ado: TCustomADODataSet; isOpen:Boolean);
    destructor Destroy; override;
  end;

implementation

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure DbDao.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ DbDao }

procedure TDbDao.Execute;
begin
  CoInitialize(nil);
  try
    try
      if _isOpen then
      begin
        _useAdo.Open;
      end else if _useAdo is TADOQuery then
      begin
        (_useAdo as TADOQuery).CommandTimeout := (_useAdo as TADOQuery).Connection.CommandTimeout;
        (_useAdo as TADOQuery).ExecSQL;
      end else if _useAdo is TADOStoredProc then
      begin
        (_useAdo as TADOStoredProc).CommandTimeout := (_useAdo as TADOStoredProc).Connection.CommandTimeout;
        (_useAdo as TADOStoredProc).ExecProc;
      end;
    except
      on e:Exception do
      begin
        SendMessage(_OwnerHandle, WM_QRY_ERROR, Integer(@E.Message[1]), 0);
      end;
    end;
  finally
    CoUnInitialize;
    _EExitEd := True;
  end;
end;

constructor TDbDao.create(OwnerHandle:Thandle; var ado: TCustomADODataSet; isOpen:Boolean );
begin
  Self._OwnerHandle := OwnerHandle;
  Self._useAdo := ado;
  Self._isOpen := isOpen;
  //FreeOnTerminate := True;
  _EExitEd := False;
  inherited create(false);
end;

destructor TDbDao.destroy;
begin
  inherited destroy;
end;

end.
