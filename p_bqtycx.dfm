object Frm_bqtycx: TFrm_bqtycx
  Left = 57
  Top = 91
  BorderIcons = [biSystemMenu]
  BorderWidth = 4
  Caption = #20303#38498#30149#20154#26410#21457#33647#22788#26041#26597#35810
  ClientHeight = 362
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 632
    Height = 321
    Align = alClient
    DataSource = DS_mx
    Flat = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'tmh'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #21345#21495
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'cfbh'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22788#26041#32534#21495
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'cfzje'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22788#26041#37329#39069
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'mc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #21010#20215#21592
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'hjrq'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #21010#20215#26102#38388
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'pldh'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25209#37327#21333#21495
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 140
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 29
      Top = 9
      Width = 64
      Height = 16
      Caption = #30149#20154#22995#21517
    end
    object bch: TEdit
      Left = 94
      Top = 5
      Width = 130
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = bchExit
    end
    object BitBtn1: TBitBtn
      Left = 492
      Top = 4
      Width = 85
      Height = 25
      Caption = #36864#20986'(&X)'
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkIgnore
    end
  end
  object SP_save: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyyf_cx_wfycf'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end>
    Left = 111
    Top = 62
  end
  object DS_mx: TDataSource
    DataSet = SP_save
    Left = 149
    Top = 62
  end
end
