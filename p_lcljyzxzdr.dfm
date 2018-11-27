object frm_lcljyzxzdr: Tfrm_lcljyzxzdr
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #35831#36873#25321#38656#35201#23548#20837#30340#21307#22065
  ClientHeight = 572
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 572
    Align = alClient
    TabOrder = 0
    object Button1: TButton
      Left = 523
      Top = 534
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 0
      OnClick = Button1Click
    end
    object RzCheckTree1: TRzCheckTree
      Left = 1
      Top = 1
      Width = 1002
      Height = 527
      Align = alTop
      Indent = 19
      SelectionPen.Color = clBtnShadow
      StateImages = RzCheckTree1.CheckImages
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = frm_yzinput.qry_ljxmjc
    Left = 424
    Top = 64
  end
end
