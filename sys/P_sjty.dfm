object frm_sjty: Tfrm_sjty
  Left = 66
  Top = 72
  Anchors = []
  BorderStyle = bsSingle
  Caption = #36130#21153#25910#25454#20572#29992
  ClientHeight = 435
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 69
    Width = 619
    Height = 347
    Align = alClient
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
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#31867#21035
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sjqh'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#36215#21495
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sjzh'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#27490#21495
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sjsl'
        Title.Alignment = taCenter
        Title.Caption = #25910#25454#25968#37327
        Width = 96
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 619
    Height = 34
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object b_ty: TBitBtn
      Left = 3
      Top = 3
      Width = 73
      Height = 28
      Caption = #20572#29992'(&A)'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      OnClick = b_tyClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object B_close: TBitBtn
      Left = 538
      Top = 3
      Width = 77
      Height = 28
      Caption = '&'#36864#20986'(&Q)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = B_closeClick
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
  object Panel1: TPanel
    Left = 0
    Top = 34
    Width = 619
    Height = 35
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 263
      Top = 10
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
    object Label4: TLabel
      Left = 7
      Top = 11
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
    object Edit1: TEdit
      Left = 348
      Top = 5
      Width = 63
      Height = 24
      TabOrder = 1
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 412
      Top = 5
      Width = 74
      Height = 24
      Enabled = False
      TabOrder = 2
    end
    object DBBox1: TDBLookupComboBox
      Left = 92
      Top = 6
      Width = 135
      Height = 24
      KeyField = 'dm'
      ListField = 'mc'
      ListSource = ds_sjlb
      TabOrder = 0
      OnKeyDown = DBBox1KeyDown
    end
  end
  object DBGrid3: TDBGrid
    Left = 347
    Top = 65
    Width = 164
    Height = 187
    DataSource = DS_czy
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 416
    Width = 619
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = #27880#65306#32511#24213#34013#23383#30340#35760#24405#20026#24050#20572#29992#30340#25910#25454#65281
  end
  object ds_sjlb: TDataSource
    DataSet = qry_sjlb
    Left = 252
    Top = 168
  end
  object DS_lymx: TDataSource
    DataSet = Qry_lymx
    Left = 252
    Top = 200
  end
  object DS_czy: TDataSource
    DataSet = qry_czy
    Left = 252
    Top = 232
  end
  object qry_sjlb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_sjlb')
    Left = 216
    Top = 168
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
      end
      item
        Name = 'sjlb'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.mc from sys_sjlymx a,sys_sjlb b '
      'where a.lyr=:czydm and a.sjlb=b.dm and a.sjlb=:sjlb'
      ' order by czrq')
    Left = 216
    Top = 200
  end
  object qry_czy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 216
    Top = 232
  end
end
