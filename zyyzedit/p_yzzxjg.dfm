object frm_yzzxjg: Tfrm_yzzxjg
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21307#22065#25191#34892#32467#26524
  ClientHeight = 395
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 669
    Height = 395
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 2
      Width = 665
      Height = 391
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      Ctl3D = False
      DataSource = frm_zxypyz.Ds_plzx
      EvenRowColor = clWindow
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      OddRowColor = clWindow
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghHighlightFocus, dghClearSelection, dghDialogFind]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      OnKeyDown = DBGridEh1KeyDown
      OnMouseDown = DBGridEh1MouseDown
      Columns = <
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'tmh'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #26465#30721#21495
          Width = 120
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'brxm'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #30149#20154#22995#21517
          Width = 120
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'ph'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25209#21495
          Width = 140
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'jg'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #32467#26524
          Width = 60
        end
        item
          ButtonStyle = cbsNone
          EditButtons = <>
          FieldName = 'sbyy'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #22833#36133#21407#22240
          Width = 180
        end>
    end
  end
end
