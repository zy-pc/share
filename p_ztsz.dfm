object frm_ztsz: Tfrm_ztsz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #29366#24577#35774#32622
  ClientHeight = 323
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 466
    Height = 273
    Align = alTop
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 464
      Height = 271
      Align = alClient
      DataSource = ds_cx_ztlb
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'dm'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #20195#30721
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'mc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #29366#24577#21517#31216
          Width = 165
        end
        item
          Checkboxes = True
          EditButtons = <>
          FieldName = 'jcbz'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #21487#22797#21046#21069#26085#29366#24577
          Width = 118
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 273
    Width = 466
    Height = 50
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 222
    object Button1: TButton
      Left = 12
      Top = 14
      Width = 75
      Height = 25
      Caption = #28155#21152
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 120
      Top = 14
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 239
      Top = 14
      Width = 75
      Height = 25
      Caption = #21024#38500
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 355
      Top = 14
      Width = 75
      Height = 25
      Caption = #36820#22238
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object qry_cx_ztlb: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 152
    Top = 96
  end
  object ds_cx_ztlb: TDataSource
    DataSet = qry_cx_ztlb
    Left = 208
    Top = 104
  end
end
