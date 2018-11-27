object Print_frm: TPrint_frm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Print form'
  ClientHeight = 474
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grdsgnrResult: TGRDesigner
    Left = 0
    Top = 0
    Width = 922
    Height = 474
    Align = alClient
    TabOrder = 0
    OnSaveReport = grdsgnrResultSaveReport
    ExplicitLeft = 88
    ExplicitTop = 8
    ExplicitWidth = 121
    ExplicitHeight = 65
    ControlData = {
      000900000B0010000B0004000B0000000B0001001300FFFFFFFF1300FFFFFFFF
      0300010000000B0020000B00002003000100000003000F00000000000000}
  end
  object grdprprtResult: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 40
    Top = 32
  end
end
