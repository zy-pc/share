inherited frm_InfTree_wh: Tfrm_InfTree_wh
  BorderIcons = [biSystemMenu]
  Caption = #31867#21035#32467#26500#21450#24402#31867
  ClientHeight = 552
  ClientWidth = 775
  OnShow = FormShow
  ExplicitWidth = 781
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 15
  inherited grp1: TGroupBox
    Top = 41
    Height = 511
    TabOrder = 1
    ExplicitTop = 41
    ExplicitHeight = 511
    inherited tv_lb: TTreeView
      Height = 492
      Images = il_lb
      Indent = 20
      ReadOnly = True
      OnChange = tv_lbChange
      ExplicitHeight = 492
    end
    object dbgrdh_ygl: TDBGridEh
      Left = 2
      Top = 17
      Width = 325
      Height = 492
      Align = alClient
      DataSource = ds_ygl
      EditActions = [geaSelectAllEh]
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #21517#31216
          Width = 285
        end>
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object btn_add: TBitBtn
      Left = 24
      Top = 5
      Width = 75
      Height = 29
      Caption = #22686#21152#31867#21035
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn_addClick
    end
    object btn_addChild: TBitBtn
      Left = 112
      Top = 5
      Width = 75
      Height = 29
      Caption = #22686#21152#19979#32423
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn_addChildClick
    end
    object btn_change: TBitBtn
      Left = 200
      Top = 5
      Width = 75
      Height = 29
      Caption = #20462#25913#39033#30446
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn_changeClick
    end
    object btn_exit: TBitBtn
      Left = 632
      Top = 5
      Width = 75
      Height = 29
      Caption = #36864#20986
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn_exitClick
    end
  end
  object pnl2: TPanel
    Left = 329
    Top = 41
    Width = 446
    Height = 511
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object pnl_lb: TPanel
      Left = 2
      Top = 19
      Width = 442
      Height = 490
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object grp2: TGroupBox
        Left = 0
        Top = 0
        Width = 442
        Height = 135
        Align = alTop
        Caption = #31867#21035#20449#24687
        TabOrder = 0
        object Label1: TLabel
          Left = 48
          Top = 48
          Width = 60
          Height = 15
          Caption = #31867#21035#21517#31216
        end
        object edt_mc: TEdit
          Left = 126
          Top = 43
          Width = 243
          Height = 23
          TabOrder = 0
        end
        object btn_save: TBitBtn
          Left = 101
          Top = 98
          Width = 81
          Height = 31
          Caption = #20445#23384
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btn_saveClick
        end
        object btn_drop: TBitBtn
          Left = 261
          Top = 98
          Width = 81
          Height = 31
          Caption = #25918#24323
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btn_dropClick
        end
      end
    end
    object pnl_gl: TPanel
      Left = 2
      Top = 19
      Width = 442
      Height = 490
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pnl5: TPanel
        Left = 0
        Top = 0
        Width = 38
        Height = 490
        Align = alLeft
        BevelInner = bvLowered
        TabOrder = 0
        object btn_gl_2: TSpeedButton
          Left = 7
          Top = 103
          Width = 25
          Height = 33
          Caption = '<<'
          OnClick = btn_gl_2Click
        end
        object btn_gl_4: TSpeedButton
          Left = 7
          Top = 309
          Width = 25
          Height = 33
          Caption = '>>'
          OnClick = btn_gl_4Click
        end
      end
      object dbgrdh_wgl: TDBGridEh
        Left = 38
        Top = 0
        Width = 404
        Height = 490
        Align = alClient
        DataSource = ds_wgl
        EditActions = [geaSelectAllEh]
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21517#31216
            Width = 285
          end>
      end
    end
    object ts1: TTabSet
      Left = 2
      Top = 2
      Width = 442
      Height = 17
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      Tabs.Strings = (
        #31867#21035#35774#32622
        #24402#31867#35774#32622)
      TabIndex = 0
      TabPosition = tpTop
      OnChange = ts1Change
    end
  end
  object qry_tree: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from dzbl_mbzb')
    Left = 160
    Top = 296
  end
  object il_lb: TImageList
    Height = 17
    Width = 17
    Left = 160
    Top = 346
    Bitmap = {
      494C0101030004001C0011001100FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000440000001100000001002000000000001012
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001010100031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE000000000000000000000000000094940063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE000000000000000000000000000000
      0000009494000094940000949400009494000094940000949400009494000094
      9400009494000094940000949400009494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B00CEFFFF0094CEFF007B7B7B0000000000000000000000
      7B0000007B0000007B0000007B0094CEFF0094CEFF0094CEFF0063CECE000000
      0000000000000000000000949400CEFFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CEFF0063CE
      CE000000000000000000000000000000000000949400F7F7F70094CEFF0094FF
      FF0094CEFF0094FFFF0094CEFF0094CEFF0094CEFF0094CEFF0063CECE000094
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B00CEFFFF0094FF
      FF007B7B7B00FF9C00000000000094FFFF0094CEFF0094FFFF0000007B0094FF
      FF0094CEFF0094CEFF0063CECE0000000000000000000000000000949400CEFF
      FF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094FFFF0094CEFF0094CEFF0063CECE000000000000000000000000000094
      9400F7F7F70094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094CEFF0094CEFF0063CECE00000000000094940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B00CEFFFF0094FFFF007B7B7B007B7B7B007B7B7B0094FF
      FF0094FFFF0000000000000000000000000094FFFF0094CEFF0063CECE000000
      00000000000000000000219C9C00CEFFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0063CE
      CE0000000000000000000000000000949400F7F7F70094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF00009494000000
      0000009494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00007B7B00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF00007B7B0063CECE0063CECE00007B
      7B000000000094FFFF0063CECE0000000000000000000000000039ADAD00CEFF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094FFFF0094CEFF0094FFFF0063CECE00000000000000000000949400F7F7
      F70094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094FFFF0094CE
      FF0094FFFF0063CECE000000000063CECE0063CECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B00CEFFFF0094FFFF007B7B7B00000000000000000094FF
      FF00007B7B0000000000007B7B0063CECE000000000094CEFF0063CECE000000
      000000000000000000005AB5B500CEFFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0063CE
      CE00000000000000000000949400F7F7F70094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0063CECE000000000063CE
      CE0063CECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B00CEFFFF0094FF
      FF007B7B7B00FF9C00000000000000007B0000007B00007B7B0039FFFF0039FF
      FF00007B7B0094FFFF0063CECE0000000000000000000000000000949400CEFF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CE
      FF0094FFFF0094CEFF0094FFFF0063CECE000000000000000000009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      9400009494000094940063CECE0094FFFF0063CECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B00CEFFFF0094FFFF007B7B7B007B7B7B007B7B7B0094FF
      FF0094FFFF00007B7B00007B7B00007B7B0094FFFF0094CEFF0063CECE000000
      0000000000000000000000949400CEFFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0063CE
      CE0000000000000000000000000000949400F7F7F70094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0063CECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF0094FFFF0063CECE0000000000000000000000000000949400CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF0094FFFF0063CECE000000000000000000000000000094
      9400F7F7F70094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF00F7F7F700F7F7F700F7F7F700F7F7F70063CECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B000000
      000000000000000000000094940063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0000949400009494000094940000949400009494000094
      940000000000000000000000000000949400F7F7F70094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF00F7F7F700009494000094940000949400009494000094
      9400009494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B7B00EFEF
      EF00CEFFFF00CEFFFF0094FFFF0094FFFF00007B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400EFEFEF00CEFFFF00CEFFFF0094FFFF0094FFFF0000949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000949400F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700009494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000007B7B00007B7B00007B7B00007B7B00007B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000094940000949400009494000094
      9400009494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400009494000094
      9400009494000094940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E00000028000000440000001100000001000100
      00000000CC0000000000000000000000000000000000000000000000FFFFFF00
      FFFFFFFFFFFFE00000000000FFFFFFFFFFFFE00000000000FFFFFFFFFFFFE000
      00000000C000E00078002000000000008000C00070002000000000008000C000
      70002000000000008000C00060002000000000008000C0006000200000000000
      0000C00040002000000000008040C00040002000000000008000C00040002000
      000000008000C00060002000000000008000C00060002000000000008001C000
      E000600000000000C07FE01FF01FE00000000000E0FFF03FF83FE00000000000
      FFFFFFFFFFFFE000000000000000000000000000000000000000000000000000
      0000}
  end
  object qry_cmd: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <>
    Left = 232
    Top = 296
  end
  object qry_ygl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 280
    Top = 296
  end
  object qry_wgl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 384
    Top = 296
  end
  object ds_ygl: TDataSource
    DataSet = qry_ygl
    Left = 280
    Top = 344
  end
  object ds_wgl: TDataSource
    DataSet = qry_wgl
    Left = 384
    Top = 344
  end
end
