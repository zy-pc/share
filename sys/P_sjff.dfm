object frm_sjff: Tfrm_sjff
  Left = 42
  Top = 89
  Anchors = []
  BorderStyle = bsSingle
  Caption = #36130#21153#25910#25454#21457#25918
  ClientHeight = 438
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel5: TPanel
    Left = 453
    Top = 0
    Width = 223
    Height = 34
    BevelOuter = bvLowered
    TabOrder = 0
    object b_add: TBitBtn
      Left = 11
      Top = 3
      Width = 71
      Height = 27
      Caption = #26032#21152'(&A)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = b_addClick
      Glyph.Data = {
        42030000424D42030000000000003600000028000000110000000F0000000100
        1800000000000C030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FF00FFFFFF007F7F60CFCF60CFCF60CFCF60CFCF60CFCF60CFCF60CFCF60CFCF
        60CFCF60CFCF60CFCF60CFCF60CFCF000000FFFFFF00FFFFFF007F7FCFFFFF90
        CFFF90FFFF90CFFF90FFFF70707000000000000090FFFF90CFFF90CFFF90CFFF
        60CFCF000000FFFFFF00FFFFFF007F7FCFFFFF90FFFF90FFFF707070707070BF
        BFBF7F7F7F60606000000090FFFF90CFFF90CFFF60CFCF000000FFFFFF00FFFF
        FF007F7FCFFFFF90FFFF90FFFF7F7F7FFFFFFFD0D0D07F7F7F7F7F7F7F7F7F00
        000090FFFF90CFFF60CFCF000000FFFFFF00FBFBFB007F7FCFFFFF90FFFF90FF
        FF7F7F7FDFDFDF60FF2F0000FF0000007F7F7F00000090CFFF90FFFF60CFCF00
        0000FFFFFF00FFFFFF007F7FCFFFFF90FFFF90FFFF90FFFF7F7F7F7F7F7FAFAF
        AFAFAFAF00000090CFFF90FFFF90CFFF60CFCF000000FFFFFF00FFFFFF007F7F
        CFFFFF90FFFF90FFFF90FFFF90FFFF90FFFF7F7F7FFFFFFFFFFFFF00000090CF
        FF90FFFF60CFCF000000FFFFFF00FFFFFF007F7FCFFFFF90FFFF90FFFF90FFFF
        90FFFF90FFFF90FFFF7F7F7F7F7F7F90FFFF90FFFF90CFFF60CFCF000000FFFF
        FF00FFFFFF007F7FCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFF
        CFFFFFCFFFFFCFFFFF90FFFF60CFCF000000FFFFFF00FFFFFF007F7F60CFCF60
        CFCF60CFCF60CFCF60CFCF60CFCF60CFCF007F7F007F7F007F7F007F7F007F7F
        007F7FFFFFFFFFFFFF00FFFFFFFFFFFF007F7FEFEFEFCFFFFFCFFFFF90FFFF90
        FFFF007F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFFFFFFFF007F7F007F7F007F7F007F7F007F7FFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00}
    end
    object BitBtn4: TBitBtn
      Left = 138
      Top = 3
      Width = 78
      Height = 27
      Caption = '&'#36864#20986'(&Q)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn4Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 452
    Height = 416
    Align = alLeft
    DataSource = DS_lymx
    DefaultDrawing = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Fixedsys'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Fixedsys'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'czrq'
        Title.Alignment = taCenter
        Title.Caption = #39046#29992#26085#26399
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#31867#21035
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sjqh'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#36215#21495
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sjzh'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#27490#21495
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sjsl'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#25968#37327
        Width = 71
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 454
    Top = 38
    Width = 224
    Height = 378
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 87
      Width = 72
      Height = 16
      Caption = #39046#29992#20154#21592':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 202
      Width = 72
      Height = 16
      Caption = #25910#25454#36215#21495':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 259
      Width = 72
      Height = 16
      Caption = #25910#25454#27490#21495':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 145
      Width = 72
      Height = 16
      Caption = #39046#29992#26085#26399':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 6
      Top = 30
      Width = 80
      Height = 16
      Caption = #25910#25454#31867#21035#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 81
      Top = 140
      Width = 133
      Height = 24
      DataField = 'czrq'
      DataSource = DS_sjlymx
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 81
      Top = 197
      Width = 132
      Height = 24
      DataField = 'sjqh'
      DataSource = DS_sjlymx
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 81
      Top = 255
      Width = 132
      Height = 24
      DataField = 'sjzh'
      DataSource = DS_sjlymx
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 81
      Top = 82
      Width = 63
      Height = 24
      TabOrder = 1
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 145
      Top = 82
      Width = 74
      Height = 24
      Enabled = False
      TabOrder = 2
    end
    object b_cancel: TBitBtn
      Left = 138
      Top = 340
      Width = 74
      Height = 28
      Caption = #25918#24323'(&C)'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = b_cancelClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
        33333333333F8888883F33330000324334222222443333388F3833333388F333
        000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
        F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
        223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
        3338888300003AAAAAAA33333333333888888833333333330000333333333333
        333333333333333333FFFFFF000033333333333344444433FFFF333333888888
        00003A444333333A22222438888F333338F3333800003A2243333333A2222438
        F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
        22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
        33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object b_save: TBitBtn
      Left = 26
      Top = 340
      Width = 74
      Height = 28
      Caption = #20445#23384'(&S)'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = b_saveClick
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
    object DBBox1: TDBLookupComboBox
      Left = 81
      Top = 24
      Width = 135
      Height = 24
      DataField = 'sjlb'
      DataSource = DS_sjlymx
      KeyField = 'dm'
      ListField = 'mc'
      ListSource = ds_sjlb
      TabOrder = 0
    end
    object DBGrid3: TDBGrid
      Left = 56
      Top = 107
      Width = 164
      Height = 190
      DataSource = DS_czy
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 8
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Visible = False
      OnExit = DBGrid3Exit
      OnKeyPress = DBGrid3KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'dm'
          Title.Alignment = taCenter
          Title.Caption = #20195#30721
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mc'
          Title.Alignment = taCenter
          Title.Caption = #22995#21517
          Width = 84
          Visible = True
        end>
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 416
    Width = 677
    Height = 22
    Panels = <>
    SimplePanel = True
    SimpleText = #27880#65306#32511#24213#34013#23383#30340#35760#24405#20026#24050#20572#29992#30340#25910#25454#65281
  end
  object ds_sjlb: TDataSource
    DataSet = qry_sjlb
    Left = 88
    Top = 88
  end
  object DS_sjlymx: TDataSource
    DataSet = Qry_sjlymx
    Left = 88
    Top = 152
  end
  object DS_lymx: TDataSource
    DataSet = Qry_lymx
    Left = 88
    Top = 120
  end
  object DS_czy: TDataSource
    DataSet = qry_czy
    Left = 88
    Top = 184
  end
  object qry_sjlb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_sjlb')
    Left = 40
    Top = 88
  end
  object Qry_lymx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'czydm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.mc from sys_sjlymx a,sys_sjlb b'
      'where a.lyr=:czydm and a.sjlb=b.dm'
      'order by czrq')
    Left = 40
    Top = 120
  end
  object Qry_sjlymx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'lydh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_sjlymx where lydh=:lydh')
    Left = 40
    Top = 152
  end
  object qry_czy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'pym'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_czy where pym like :pym')
    Left = 40
    Top = 184
  end
  object SP_sjlyjc: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_sjlyjc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjlb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjqh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjzh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@zt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 30
        Value = Null
      end>
    Left = 61
    Top = 218
  end
end
