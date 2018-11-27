object Frm_ypfjxxwh: TFrm_ypfjxxwh
  Left = 139
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #33647#21697#38468#21152#20449#24687#32500#25252
  ClientHeight = 560
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 560
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 325
      Top = 1
      Height = 558
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 324
      Height = 558
      Align = alLeft
      BevelInner = bvLowered
      TabOrder = 0
      object Tree1: TTreeView
        Left = 2
        Top = 2
        Width = 320
        Height = 554
        Align = alClient
        HideSelection = False
        Images = ImageList1
        Indent = 20
        ReadOnly = True
        TabOrder = 0
        OnChange = Tree1Change
      end
    end
    object Panel4: TPanel
      Left = 328
      Top = 1
      Width = 468
      Height = 558
      Align = alClient
      TabOrder = 1
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 466
        Height = 341
        Align = alTop
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 464
          Height = 339
          Align = alClient
          DataSource = DS_ypdm
          DefaultDrawing = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ypdm'
              Title.Alignment = taCenter
              Title.Caption = #29289#36164'/'#33647#21697#20195#30721
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ypmc'
              Title.Alignment = taCenter
              Title.Caption = #29289#36164'/'#33647#21697#21517#31216
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'zjm'
              Title.Alignment = taCenter
              Title.Caption = #21161#35760#30721
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ypgg'
              Title.Alignment = taCenter
              Title.Caption = #35268#26684
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kfdw'
              Title.Alignment = taCenter
              Title.Caption = #21333#20301
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kflsj'
              Title.Alignment = taCenter
              Title.Caption = #38646#21806#20215
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'kfpfj'
              Title.Alignment = taCenter
              Title.Caption = #25209#21457#20215
              Width = 51
              Visible = True
            end>
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 518
        Width = 466
        Height = 39
        Align = alBottom
        TabOrder = 1
        object b_cx: TBitBtn
          Left = 298
          Top = 8
          Width = 72
          Height = 25
          Caption = #26597#35810#29289#21697
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = b_cxClick
          NumGlyphs = 2
        end
        object b_close: TBitBtn
          Left = 379
          Top = 8
          Width = 76
          Height = 25
          Caption = #36864#20986'(&X)'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = b_closeClick
          NumGlyphs = 2
        end
        object BitBtn1: TBitBtn
          Left = 213
          Top = 8
          Width = 75
          Height = 25
          Caption = #20462#25913'(&M)'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 128
          Top = 8
          Width = 75
          Height = 25
          Caption = #20445#23384'(&S)'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn2Click
        end
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 342
        Width = 466
        Height = 176
        Align = alClient
        Font.Charset = GB2312_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object lbl1: TLabel
          Left = 128
          Top = 120
          Width = 64
          Height = 16
          Caption = #21307#20445#22791#27880
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object DBCheckBox4: TDBCheckBox
          Left = 262
          Top = 34
          Width = 97
          Height = 17
          Caption = 'GMP'
          DataField = 'GMP'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 134
          Top = 34
          Width = 97
          Height = 17
          Caption = #36827#21475
          DataField = #36827#21475
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 6
          Top = 34
          Width = 97
          Height = 17
          Caption = #29983#29289
          DataField = #29983#29289
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 390
          Top = 34
          Width = 69
          Height = 17
          Caption = #30465#25307#26631
          DataField = #30465#25307#26631
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 7
          Top = 77
          Width = 97
          Height = 17
          Caption = #24066#25307#26631
          DataField = #24066#25307#26631
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox11: TDBCheckBox
          Left = 134
          Top = 77
          Width = 97
          Height = 17
          Caption = #25346#32593
          DataField = #25346#32593
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox12: TDBCheckBox
          Left = 262
          Top = 77
          Width = 97
          Height = 17
          Caption = #22791#26696
          DataField = #22791#26696
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox13: TDBCheckBox
          Left = 390
          Top = 77
          Width = 68
          Height = 17
          Caption = #31532#19968#23618
          DataField = #31532#19968#23618
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox14: TDBCheckBox
          Left = 5
          Top = 120
          Width = 97
          Height = 17
          Caption = #31532#20108#23618
          DataField = #31532#20108#23618
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object dbedt1: TDBEdit
          Left = 198
          Top = 117
          Width = 261
          Height = 24
          DataField = 'ybbz'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = -1
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBCheckBox1: TDBCheckBox
          Left = 6
          Top = 153
          Width = 97
          Height = 17
          Caption = #38480#37327#37319#36141
          DataField = #38480#37327#37319#36141
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 130
          Top = 153
          Width = 97
          Height = 17
          Caption = #39640#21361#33647#21697
          DataField = #39640#21361#33647#21697
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
  end
  object ImageList1: TImageList
    Height = 17
    Width = 17
    Left = 352
    Top = 178
    Bitmap = {
      494C010103000400180011001100FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000F7F70000F7F70000F7F70000F7F70000F7
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021290000212900002129000021
      2900002129000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000212900002129000021
      2900002129000021290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000F7F700EFD6
      DE00CEF7FF00CEF7FF0094F7FF0094F7FF0000F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000021
      2900EFD6DE00CEF7FF00CEF7FF0094F7FF0094F7FF0000212900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000212900F7E7EF00F7E7EF00F7E7EF00F7E7EF00F7E7EF00002129000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000F7F70063949C0063949C0063949C0063949C0063949C006394
      9C0063949C0000F7F70000F7F70000F7F70000F7F70000F7F70000F7F7000000
      000000000000000000000021290063949C0063949C0063949C0063949C006394
      9C0063949C0063949C0000212900002129000021290000212900002129000021
      290000000000000000000000000000212900F7E7EF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF00F7E7EF00002129000021290000212900002129000021
      2900002129000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F7F700CEF7FF00CEF7
      FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7
      FF00CEF7FF0094F7FF0063949C0000000000000000000000000000212900CEF7
      FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7FF00CEF7
      FF00CEF7FF00CEF7FF0094F7FF0063949C000000000000000000000000000021
      2900F7E7EF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF00F7E7EF00F7E7EF00F7E7EF00F7E7EF0063949C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000F7F700CEF7FF0094F7FF007BF7F7007BF7F7007BF7F70094F7
      FF0094F7FF0000F7F70000F7F70000F7F70094F7FF009494FF0063949C000000
      0000000000000000000000212900CEF7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009494FF006394
      9C0000000000000000000000000000212900F7E7EF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0063949C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F7F700CEF7FF0094F7
      FF007BF7F700FF310800000000000000F7000000F70000F7F70039F7FF0039F7
      FF0000F7F70094F7FF0063949C0000000000000000000000000000212900CEF7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009494
      FF0094F7FF009494FF0094F7FF0063949C000000000000000000002129000021
      2900002129000021290000212900002129000021290000212900002129000021
      2900002129000021290063949C0094F7FF0063949C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000F7F700CEF7FF0094F7FF007BF7F700000000000000000094F7
      FF0000F7F7000000000000F7F70063949C00000000009494FF0063949C000000
      000000000000000000005A636B00CEF7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF009494FF0094F7FF009494FF006394
      9C00000000000000000000212900F7E7EF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF009494FF0094F7FF009494FF0063949C00000000006394
      9C0063949C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF7FF0000F7F700CEF7FF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0000F7F70063949C0063949C0000F7
      F7000000000094F7FF0063949C0000000000000000000000000039525A00CEF7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF009494FF0094F7FF009494
      FF0094F7FF009494FF0094F7FF0063949C00000000000000000000212900F7E7
      EF0094F7FF0094F7FF0094F7FF0094F7FF009494FF0094F7FF0094F7FF009494
      FF0094F7FF0063949C000000000063949C0063949C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000F7F700CEF7FF0094F7FF007BF7F7007BF7F7007BF7F70094F7
      FF0094F7FF0000000000000000000000000094F7FF009494FF0063949C000000
      0000000000000000000021313900CEF7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF009494FF0094F7FF009494FF0094F7FF009494FF006394
      9C0000000000000000000000000000212900F7E7EF0094F7FF0094F7FF0094F7
      FF0094F7FF0094F7FF009494FF0094F7FF009494FF009494FF00002129000000
      0000002129000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F7F700CEF7FF0094F7
      FF007BF7F700FF3108000000000094F7FF009494FF0094F7FF000000F70094F7
      FF009494FF009494FF0063949C0000000000000000000000000000212900CEF7
      FF0094F7FF0094F7FF0094F7FF009494FF0094F7FF009494FF0094F7FF009494
      FF0094F7FF009494FF009494FF0063949C000000000000000000000000000021
      2900F7E7EF0094F7FF0094F7FF009494FF0094F7FF009494FF0094F7FF009494
      FF009494FF009494FF0063949C00000000000021290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000F7F700CEF7FF009494FF007BF7F70000000000000000000000
      F7000000F7000000F7000000F7009494FF009494FF009494FF0063949C000000
      0000000000000000000000212900CEF7FF009494FF0094F7FF009494FF0094F7
      FF009494FF0094F7FF009494FF0094F7FF009494FF009494FF009494FF006394
      9C000000000000000000000000000000000000212900F7E7EF009494FF0094F7
      FF009494FF0094F7FF009494FF009494FF009494FF009494FF0063949C000021
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F7F70063949C006394
      9C0063949C0063949C0063949C0063949C0063949C0063949C0063949C006394
      9C0063949C0063949C0063949C00000000000000000000000000002129006394
      9C0063949C0063949C0063949C0063949C0063949C0063949C0063949C006394
      9C0063949C0063949C0063949C0063949C000000000000000000000000000000
      0000002129000021290000212900002129000021290000212900002129000021
      2900002129000021290000212900002129000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001021210031636300000000000000
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
  object DS_ypdm: TDataSource
    DataSet = Qry_ypdm
    Left = 387
    Top = 178
  end
  object Query1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 483
    Top = 178
  end
  object Qry_ypdm: TADOQuery
    AutoCalcFields = False
    Connection = DM_data.ado_mydata
    AfterScroll = Qry_ypdmAfterScroll
    Parameters = <
      item
        Name = 'dldm'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_ypdm where sybz=1 and yplb like :dldm')
    Left = 451
    Top = 178
  end
  object sp_cxyplb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_cx_yplb;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@yplb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ypdl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end>
    Left = 546
    Top = 178
  end
  object ds_yplb: TDataSource
    DataSet = sp_cxyplb
    Left = 514
    Top = 178
  end
  object ad_ypfjxx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select * from sys_ypfjxx where ypdm=:ypdm'
    Parameters = <
      item
        Name = 'ypdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end>
    Left = 473
    Top = 226
  end
  object DataSource1: TDataSource
    DataSet = ad_ypfjxx
    Left = 545
    Top = 408
  end
end
