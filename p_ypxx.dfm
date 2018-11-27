object Frm_ypxx: TFrm_ypxx
  Left = 116
  Top = 86
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '药品信息'
  ClientHeight = 473
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = '宋体'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Page1: TPageControl
    Left = 0
    Top = 1
    Width = 506
    Height = 440
    ActivePage = Tab2
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '宋体'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Tab1: TTabSheet
      Caption = ' &1.基本属性 '
      Enabled = False
      object Bevel1: TBevel
        Left = 0
        Top = 267
        Width = 498
        Height = 85
        Align = alBottom
        Shape = bsFrame
        Style = bsRaised
      end
      object Label1: TLabel
        Left = 5
        Top = 9
        Width = 64
        Height = 16
        Caption = '药品代码'
      end
      object Label2: TLabel
        Left = 5
        Top = 35
        Width = 64
        Height = 16
        Caption = '药品名称'
      end
      object Label3: TLabel
        Left = 5
        Top = 113
        Width = 48
        Height = 16
        Caption = '拼音码'
      end
      object Label4: TLabel
        Left = 5
        Top = 87
        Width = 64
        Height = 16
        Caption = '药品别名'
      end
      object Label5: TLabel
        Left = 5
        Top = 61
        Width = 48
        Height = 16
        Caption = '助记码'
      end
      object Label8: TLabel
        Left = 5
        Top = 242
        Width = 64
        Height = 16
        Caption = '药品规格'
      end
      object Label9: TLabel
        Left = 8
        Top = 277
        Width = 64
        Height = 16
        Caption = '药品单位'
      end
      object Label10: TLabel
        Left = 257
        Top = 277
        Width = 64
        Height = 16
        Caption = '包装比例'
      end
      object Label6: TLabel
        Left = 8
        Top = 302
        Width = 64
        Height = 16
        Caption = '药品剂型'
      end
      object Label7: TLabel
        Left = 257
        Top = 302
        Width = 64
        Height = 16
        Caption = '药品类别'
      end
      object Label20: TLabel
        Left = 8
        Top = 329
        Width = 64
        Height = 16
        Caption = '所属库房'
      end
      object Label19: TLabel
        Left = 257
        Top = 329
        Width = 64
        Height = 16
        Caption = '制剂类别'
      end
      object Bevel3: TBevel
        Left = 0
        Top = 352
        Width = 498
        Height = 57
        Align = alBottom
        Shape = bsFrame
        Style = bsRaised
      end
      object Label35: TLabel
        Left = 5
        Top = 138
        Width = 72
        Height = 16
        Caption = '药品别名1'
      end
      object Label36: TLabel
        Left = 5
        Top = 164
        Width = 56
        Height = 16
        Caption = '拼音码1'
      end
      object Label37: TLabel
        Left = 5
        Top = 190
        Width = 72
        Height = 16
        Caption = '药品别名2'
      end
      object Label38: TLabel
        Left = 5
        Top = 216
        Width = 56
        Height = 16
        Caption = '拼音码2'
      end
      object DBEdit1: TDBEdit
        Left = 78
        Top = 5
        Width = 395
        Height = 24
        DataField = 'ypdm'
        DataSource = DS_ypdm
        Font.Charset = GB2312_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 78
        Top = 31
        Width = 395
        Height = 24
        DataField = 'ypmc'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 78
        Top = 83
        Width = 395
        Height = 24
        DataField = 'ypbm'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 78
        Top = 109
        Width = 395
        Height = 24
        DataField = 'pym'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 78
        Top = 57
        Width = 395
        Height = 24
        DataField = 'zjm'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 78
        Top = 239
        Width = 395
        Height = 24
        DataField = 'ypgg'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 73
        Top = 272
        Width = 166
        Height = 24
        DataField = 'kfdw'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 323
        Top = 272
        Width = 166
        Height = 24
        DataField = 'kfzhl'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit30: TDBEdit
        Left = 78
        Top = 135
        Width = 395
        Height = 24
        DataField = 'ypbm1'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit31: TDBEdit
        Left = 78
        Top = 161
        Width = 395
        Height = 24
        DataField = 'pym1'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit32: TDBEdit
        Left = 78
        Top = 187
        Width = 395
        Height = 24
        DataField = 'ypbm2'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit33: TDBEdit
        Left = 78
        Top = 213
        Width = 395
        Height = 24
        DataField = 'pym2'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 11
      end
      object DBCheckBox1: TDBCheckBox
        Left = 8
        Top = 360
        Width = 86
        Height = 17
        Caption = '精神药品'
        DataField = 'sfjsyp'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 12
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 8
        Top = 385
        Width = 86
        Height = 17
        Caption = '自费药品'
        DataField = 'sfzfyp'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 13
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 107
        Top = 360
        Width = 86
        Height = 17
        Caption = '贵重药品'
        DataField = 'sfgzyp'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 14
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 107
        Top = 385
        Width = 84
        Height = 17
        Caption = '甲类药品'
        DataField = 'sfjlyp'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 15
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 207
        Top = 360
        Width = 84
        Height = 17
        Caption = '毒麻药品'
        DataField = 'sfdmyp'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 16
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox7: TDBCheckBox
        Left = 207
        Top = 385
        Width = 86
        Height = 17
        Caption = '乙类药品'
        DataField = 'sfylyp'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 306
        Top = 360
        Width = 87
        Height = 17
        Caption = '是否GMP'
        DataField = 'sffcfyp'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 18
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox9: TDBCheckBox
        Left = 306
        Top = 385
        Width = 86
        Height = 17
        Caption = '招标药品'
        DataField = 'sfzbyp'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 19
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object Check5: TDBCheckBox
        Left = 405
        Top = 360
        Width = 87
        Height = 17
        Caption = '制剂药品'
        DataField = 'sfzjyp'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 20
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit36: TDBEdit
        Left = 73
        Top = 299
        Width = 166
        Height = 24
        DataField = 'jxbm'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 21
      end
      object DBEdit37: TDBEdit
        Left = 73
        Top = 325
        Width = 166
        Height = 24
        DataField = 'kfdm'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 22
      end
      object DBEdit38: TDBEdit
        Left = 323
        Top = 299
        Width = 166
        Height = 24
        DataField = 'lbdm'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 23
      end
      object DBEdit39: TDBEdit
        Left = 323
        Top = 325
        Width = 166
        Height = 24
        DataField = 'zjbm'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 24
      end
      object DBCheckBox8: TDBCheckBox
        Left = 405
        Top = 384
        Width = 86
        Height = 17
        Caption = '敏试药品'
        DataField = 'sfms'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 25
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object Tab2: TTabSheet
      Caption = ' &2.药品包装及价格 '
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 498
        Height = 186
        Align = alTop
        Caption = '药品包装(高低限以最小单位为准)'
        TabOrder = 0
        object Label11: TLabel
          Left = 43
          Top = 25
          Width = 64
          Height = 16
          Caption = '最小单位'
        end
        object Label13: TLabel
          Left = 11
          Top = 58
          Width = 96
          Height = 16
          Caption = '住院药房单位'
        end
        object Label15: TLabel
          Left = 11
          Top = 91
          Width = 96
          Height = 16
          Caption = '门诊药房单位'
        end
        object Label12: TLabel
          Left = 266
          Top = 25
          Width = 64
          Height = 16
          Caption = '包装比例'
        end
        object Label14: TLabel
          Left = 266
          Top = 58
          Width = 64
          Height = 16
          Caption = '包装比例'
        end
        object Label16: TLabel
          Left = 267
          Top = 91
          Width = 64
          Height = 16
          Caption = '包装比例'
        end
        object Label17: TLabel
          Left = 11
          Top = 124
          Width = 96
          Height = 16
          Caption = '住院药房低限'
        end
        object Label29: TLabel
          Left = 267
          Top = 124
          Width = 64
          Height = 16
          Caption = '库房低限'
        end
        object Label18: TLabel
          Left = 11
          Top = 157
          Width = 96
          Height = 16
          Caption = '门诊药房低限'
        end
        object Label30: TLabel
          Left = 267
          Top = 157
          Width = 64
          Height = 16
          Caption = '库房高限'
        end
        object DBEdit9: TDBEdit
          Left = 115
          Top = 20
          Width = 91
          Height = 24
          DataField = 'zxdw'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 115
          Top = 53
          Width = 91
          Height = 24
          DataField = 'zyyfdw'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 115
          Top = 86
          Width = 91
          Height = 24
          DataField = 'mzyfdw'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit10: TDBEdit
          Left = 336
          Top = 20
          Width = 121
          Height = 24
          DataField = 'zxzhl'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit12: TDBEdit
          Left = 336
          Top = 53
          Width = 121
          Height = 24
          DataField = 'zyyfzhl'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit14: TDBEdit
          Left = 336
          Top = 86
          Width = 121
          Height = 24
          DataField = 'mzyfzhl'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit25: TDBEdit
          Left = 116
          Top = 119
          Width = 91
          Height = 24
          DataField = 'zyyfdx'
          DataSource = DS_ypdm
          TabOrder = 6
        end
        object DBEdit15: TDBEdit
          Left = 336
          Top = 119
          Width = 121
          Height = 24
          DataField = 'kfdx'
          DataSource = DS_ypdm
          TabOrder = 7
        end
        object DBEdit26: TDBEdit
          Left = 116
          Top = 152
          Width = 91
          Height = 24
          DataField = 'mzyfdx'
          DataSource = DS_ypdm
          TabOrder = 8
        end
        object DBEdit16: TDBEdit
          Left = 336
          Top = 152
          Width = 121
          Height = 24
          DataField = 'kfgx'
          DataSource = DS_ypdm
          TabOrder = 9
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 186
        Width = 498
        Height = 146
        Align = alClient
        Caption = '药品价格'
        TabOrder = 1
        object Label21: TLabel
          Left = 16
          Top = 25
          Width = 80
          Height = 16
          Caption = '库房批发价'
        end
        object Label22: TLabel
          Left = 252
          Top = 25
          Width = 80
          Height = 16
          Caption = '库房零售价'
        end
        object Label23: TLabel
          Left = 16
          Top = 55
          Width = 80
          Height = 16
          Caption = '最小批发价'
        end
        object Label24: TLabel
          Left = 252
          Top = 55
          Width = 80
          Height = 16
          Caption = '最小零售价'
        end
        object Label25: TLabel
          Left = 16
          Top = 85
          Width = 80
          Height = 16
          Caption = '住院批发价'
        end
        object Label26: TLabel
          Left = 252
          Top = 85
          Width = 80
          Height = 16
          Caption = '住院零售价'
        end
        object Label27: TLabel
          Left = 16
          Top = 115
          Width = 88
          Height = 16
          Caption = '门诊批发价 '
        end
        object Label28: TLabel
          Left = 252
          Top = 115
          Width = 80
          Height = 16
          Caption = '门诊零售价'
        end
        object DBEdit17: TDBEdit
          Left = 104
          Top = 20
          Width = 121
          Height = 24
          DataField = 'kfpfj'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit18: TDBEdit
          Left = 336
          Top = 20
          Width = 121
          Height = 24
          DataField = 'kflsj'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit19: TDBEdit
          Left = 104
          Top = 50
          Width = 121
          Height = 24
          DataField = 'zxpfj'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit20: TDBEdit
          Left = 336
          Top = 50
          Width = 121
          Height = 24
          DataField = 'zxlsj'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit21: TDBEdit
          Left = 104
          Top = 80
          Width = 121
          Height = 24
          DataField = 'zypfj'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit22: TDBEdit
          Left = 336
          Top = 80
          Width = 121
          Height = 24
          DataField = 'zylsj'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit23: TDBEdit
          Left = 104
          Top = 110
          Width = 121
          Height = 24
          DataField = 'mzpfj'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit24: TDBEdit
          Left = 336
          Top = 110
          Width = 121
          Height = 24
          DataField = 'mzlsj'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 7
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 332
        Width = 498
        Height = 77
        Align = alBottom
        Caption = '报销比率'
        TabOrder = 2
        object Label32: TLabel
          Left = 16
          Top = 22
          Width = 64
          Height = 16
          Caption = '社保比率'
        end
        object Label33: TLabel
          Left = 181
          Top = 22
          Width = 64
          Height = 16
          Caption = '保险比率'
        end
        object Label31: TLabel
          Left = 339
          Top = 22
          Width = 64
          Height = 16
          Caption = '合同比率'
        end
        object DBEdit28: TDBEdit
          Left = 16
          Top = 42
          Width = 127
          Height = 24
          DataField = 'sbfybl'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit29: TDBEdit
          Left = 181
          Top = 42
          Width = 127
          Height = 24
          DataField = 'bxfybl'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit27: TDBEdit
          Left = 339
          Top = 42
          Width = 127
          Height = 24
          DataField = 'htfybl'
          DataSource = DS_ypdm
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = ' &3.其他信息 '
      ImageIndex = 2
      object Label42: TLabel
        Left = 15
        Top = 68
        Width = 64
        Height = 16
        Caption = '生产厂家'
      end
      object Label41: TLabel
        Left = 15
        Top = 35
        Width = 64
        Height = 16
        Caption = '供货单位'
      end
      object DBEdit34: TDBEdit
        Left = 86
        Top = 30
        Width = 386
        Height = 24
        DataField = 'ghdw'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 0
        OnExit = DBEdit34Exit
      end
      object DBEdit35: TDBEdit
        Left = 86
        Top = 64
        Width = 386
        Height = 24
        DataField = 'sccj'
        DataSource = DS_ypdm
        ReadOnly = True
        TabOrder = 1
        OnExit = DBEdit35Exit
      end
      object DBGrid2: TDBGrid
        Left = 85
        Top = 93
        Width = 386
        Height = 184
        DataSource = DS_sccj
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = '宋体'
        TitleFont.Style = []
        Visible = False
        OnDblClick = DBGrid2DblClick
        OnExit = DBGrid2Exit
        OnKeyPress = DBGrid2KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'dm'
            Title.Alignment = taCenter
            Title.Caption = '代码'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mc'
            Title.Alignment = taCenter
            Title.Caption = '名称'
            Width = 239
            Visible = True
          end>
      end
    end
  end
  object B_close: TBitBtn
    Left = 409
    Top = 444
    Width = 86
    Height = 29
    Caption = '退出(&X)'
    TabOrder = 1
    OnClick = B_closeClick
    Kind = bkClose
  end
  object B_ok: TBitBtn
    Left = 322
    Top = 444
    Width = 86
    Height = 29
    Caption = '确认(&S)'
    TabOrder = 2
    OnClick = B_okClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object DS_sccj: TDataSource
    DataSet = ADODataSet1
    Left = 38
    Top = 443
  end
  object DS_ypdm: TDataSource
    DataSet = qry_ypdm
    Left = 385
    Top = 258
  end
  object qry_ypdm: TADOQuery
    AutoCalcFields = False
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ypdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_ypdm where ypdm=:ypdm')
    Left = 420
    Top = 258
  end
  object ADODataSet1: TADODataSet
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 74
    Top = 444
  end
end
