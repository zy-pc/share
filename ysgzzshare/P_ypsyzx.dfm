object frm_yyzx: Tfrm_yyzx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #35199#33647#29992#33647#21672#35810
  ClientHeight = 555
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 555
    Align = alLeft
    TabOrder = 0
    object TreeView1: TTreeView
      Left = 1
      Top = 93
      Width = 247
      Height = 461
      Align = alClient
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      Images = ImageList3
      Indent = 19
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = TreeView1Change
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 247
      Height = 92
      Align = alTop
      TabOrder = 1
      object Edit1: TEdit
        Left = 17
        Top = 16
        Width = 132
        Height = 21
        Hint = '('#25552#31034':'#36755#20837#33647#21697#20195#30721#25110#21517#31216#23454#29616#24555#36895#23450#20301')'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyDown = Edit1KeyDown
      end
      object BitBtn1: TBitBtn
        Left = 156
        Top = 12
        Width = 73
        Height = 25
        Caption = #23450#20301
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object rb_ypmc: TRadioButton
        Left = 8
        Top = 48
        Width = 113
        Height = 17
        Hint = #21487#36755#20837#33647#21697#36890#29992#21517'/'#36890#29992#21517#25340#38899#32553#20889'/'#33647#21697#20195#30721'/'#25110#33521#25991#21517
        Caption = #25353#33647#21697#21517#31216
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object rb_pym: TRadioButton
        Left = 8
        Top = 71
        Width = 113
        Height = 17
        Hint = #21487#36755#20837#33647#21697#21830#21697#21517'/'#21035#21517'/'#25340#38899#32553#20889
        Caption = #25353#33647#21697#21035#21517
        TabOrder = 3
      end
      object rb_ypbm: TRadioButton
        Left = 116
        Top = 48
        Width = 113
        Height = 17
        Hint = #28151#21512#20197#19978#20004#31181#26041#24335'-'#36895#24230#24930
        Caption = #25353#28151#21512#26597#35810
        TabOrder = 4
      end
    end
  end
  object Panel2: TPanel
    Left = 257
    Top = 0
    Width = 517
    Height = 555
    Align = alClient
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 515
      Height = 553
      ActivePage = TabSheet_basic
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet_basic: TTabSheet
        Caption = #33647#21697#20449#24687'(&B)'
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 507
          Height = 523
          Align = alClient
          DataSource = ds_yp
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDblClick = DBGridEh1DblClick
          OnDrawColumnCell = DBGridEh1DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ypdm'
              Footer.Value = #33647#21697#24635#35745#65306
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = #33647#21697#20195#30721
            end
            item
              EditButtons = <>
              FieldName = 'ypmc'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = #33647#21697#21517#31216
              Width = 153
            end
            item
              EditButtons = <>
              FieldName = 'pym'
              Footers = <>
              Title.Caption = #21161#35760#30721
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'ywmc'
              Footers = <>
              Title.Caption = #33521#25991#21517#31216
              Width = 135
            end>
        end
      end
      object TabSheet_html: TTabSheet
        Caption = 'HTML'#26174#31034'(&H)'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object WebBrowser1: TWebBrowser
          Left = 0
          Top = 30
          Width = 507
          Height = 493
          Align = alClient
          TabOrder = 0
          OnCommandStateChange = WebBrowser1CommandStateChange
          ExplicitTop = 34
          ExplicitHeight = 489
          ControlData = {
            4C00000066340000F43200000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
        object CoolBar1: TCoolBar
          Left = 0
          Top = 0
          Width = 507
          Height = 30
          AutoSize = True
          Bands = <
            item
              Control = ToolBar1
              ImageIndex = -1
              MinHeight = 26
              Width = 501
            end>
          object ToolBar1: TToolBar
            Left = 10
            Top = 0
            Width = 489
            Height = 26
            AutoSize = True
            ButtonHeight = 26
            ButtonWidth = 37
            Caption = 'ToolBar1'
            Images = NavigatorImages
            TabOrder = 0
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Caption = 'ToolButton1'
              Enabled = False
              ImageIndex = 0
              OnClick = ToolButton1Click
            end
            object ToolButton2: TToolButton
              Left = 37
              Top = 0
              Caption = 'ToolButton2'
              Enabled = False
              ImageIndex = 1
              OnClick = ToolButton2Click
            end
            object ToolButton4: TToolButton
              Left = 74
              Top = 0
              Caption = 'ToolButton4'
              ImageIndex = 3
              OnClick = ToolButton4Click
            end
          end
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 249
    Top = 0
    Width = 8
    Height = 555
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AutoSnap = True
    Control = Panel1
  end
  object DBGrid1: TDBGrid
    Left = 46
    Top = 99
    Width = 300
    Height = 205
    DataSource = ds_find
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'ypdm'
        Title.Caption = #33647#21697#20195#30721
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypmc'
        Title.Caption = #33647#21697#21517#31216
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 184
        Visible = True
      end>
  end
  object ImageList3: TImageList
    Left = 399
    Top = 63
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      00000000000000000000000000000000000000000000FEEAD200FEE8CE00FEE5
      C900FEE3C500FEE1C000FEE0BE00FEDDB800FEDCB600FEDAB200FDD9AF00FDD8
      AD00FDD7AD00FDD7AD00FDD7AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10003131310000000000000000000000000000000000FEEBD600FEEAD2000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000FDD7AD00FDD7AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      940000949400009494000000000000000000000000000094940063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE000000000000000000FEEEDC00FEECD800FEEA
      D300FEE8D000FEE5C900FEE4C700FEE1C000FEDFBD00FEDDB800FEDCB600FEDA
      B200FDD9B000FDD8AD00FDD7AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000949400F7F7
      F70094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CEFF0094CE
      FF0063CECE000094940000000000000000000000000000949400CEFFFF0094CE
      FF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094CEFF0094CEFF0063CECE000000000000000000FEF0DF00FEEEDC000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000FDD8AE00FDD8AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CE
      FF0063CECE000000000000949400000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094CEFF0063CECE000000000000000000FEF3E600FEF1E300FEEF
      DD00FEEDD900FEEAD300FEE8D000FEE6CB00FEE4C700FEE1C100FEE0BE00FEDE
      BA00FEDCB700FEDAB200FEDAB200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094CE
      FF000094940000000000009494000000000000000000219C9C00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094FFFF0094CEFF0063CECE000000000000000000FEF4E800FEF3E6000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000FEDBB500FEDAB200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000949400F7F7F70094FFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094FFFF0094CEFF0094FFFF0063CE
      CE000000000063CECE0063CECE00000000000000000039ADAD00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0063CECE000000000000000000FEF6ED00FEF6ED00FEF2
      E500FEF1E300FEEFDD00FEEDDA00FEEAD300FEE9D100FEE5C900FEE4C700FEE2
      C200FEE0BE00FEDEBA00FEDDB800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000949400F7F7F70094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0063CE
      CE000000000063CECE0063CECE0000000000000000005AB5B500CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CE
      FF0094FFFF0094CEFF0063CECE000000000000000000FEF8F100FEF7EF000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000FEDFBC00FEDEBA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000094940000949400009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      940063CECE0094FFFF0063CECE00000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0063CECE000000000000000000FEFAF500FEF9F300FEF7
      EF00FEF6ED00FEF3E600FEF1E300FEEEDC00FEEDDA00FEEAD400FEE9D100FEE6
      CB00FEE5C900FEE2C200FEE1C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0063CECE00000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094CEFF0063CECE000000000000000000FEFBF700FEFAF5000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000FEE3C500FEE2C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF00F7F7F700F7F7
      F700F7F7F700F7F7F70063CECE00000000000000000000949400CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF0094FFFF0063CECE000000000000000000FEFCFA00FEFCFA00FEFB
      F700FEF9F300FEF7EF00FEF6ED00FEF3E600FEF1E300FEEFDD00FEEEDC00FEEA
      D400FEE9D100FEE6CB00FEE5C900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF00F7F7F70000949400009494000094
      940000949400009494000094940000000000000000000094940063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0000949400009494000094
      94000094940000949400009494000000000000000000FEFCFA00FEFCFA000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000FEE8D000FEE6CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000949400F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7000094940000000000000000000000
      000000000000000000000000000000000000000000000000000000949400EFEF
      EF00CEFFFF00CEFFFF0094FFFF0094FFFF000094940000000000000000000000
      00000000000000000000000000000000000000000000FEFCFA00FEFCFA00FEFC
      FA00FEFCFA00FEFBF700FEFAF500FEF8F100FEF6ED00FEF4E800FEF2E500FEF0
      DF00FEEEDC00FEEBD600FEEAD200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400009494000094940000949400009494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400009494000094940000949400009494000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFCFA00FEFCFA00FEFC
      FA00FEFCFA00FEFCF900FEFBF700FEF9F300FEF7EF00FEF5EA00FEF4E800FEF0
      E100FEEFDD00FEEDD900FEEBD600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFF80010000
      E000C00080010000C000800080010000C0008000800100008000800080010000
      8000800080010000000080008001000000008000800100000000800080010000
      800080008001000080008000800100008001800180010000C07FC03F80010000
      E0FFE07F80010000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object qry_yp: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'lbdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select *  from xyyd_jbxx'
      'where lbdm like :lbdm')
    Left = 360
    Top = 144
  end
  object qry_find: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'dm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'cxfs'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'exec xyyd_cx_ypcx_html :dm :cxfs')
    Left = 416
    Top = 144
  end
  object qry_lb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from xyyd_yplbzb'
      'order by lbdm')
    Left = 312
    Top = 144
  end
  object ds_find: TDataSource
    DataSet = sp_find
    Left = 217
    Top = 145
  end
  object qry_html: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
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
      'select html from xyyd_html'
      '  where ypdm=:ypdm')
    Left = 464
    Top = 144
  end
  object NavigatorImages: TImageList
    Height = 20
    Width = 30
    Left = 360
    Top = 64
    Bitmap = {
      494C010105000A0004001E001400FFFFFFFF0510FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000780000002800000001000400000000006009
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000011111110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000011111111110000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000011111111111100000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001111111111111000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000001111FF
      F111FFF110000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000011111FFF1FFF11
      1000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000111111FFFFF11111000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000001111111FFF11111100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000171111FFFFF111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000017111FFF1FFF1111000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001111FFF111FFF11100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001711111111111110000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000011711
      1111111111000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000117111111111
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001117771111100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001111111000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFFFFFFFFFFFFF0000000000000000000
      0000000000000000000000000000000000000000000000000000000008888888
      0000000000000000000000FFFFFFFFFFFFFFF000000000000000000000000000
      0000000000000000000000000000000000000000000000008888888888000000
      00000000000000FFFFFFF8FFFFFFF00000000000000000000000000000000000
      0000000000000000000000000000000000000008888888888880000000000000
      000000FFFFFF88FFFFFFF0000000000000000000000000000000000000000000
      00000000000000000000000000000008888888888888000000000000000000FF
      FFF88888FFFFF0000000000000000000F0000000000000000000000000000000
      F0000000000000000000008888FFF888FFF8800000000000000000FFFFFF88FF
      8FFFF000000000000000000FF0000000000000000000000000000000FF000000
      0000000000000088888FFF8FFF88800000000000000000FFFFFFF8FF8FFFF000
      00000000000000FFF0000000000000000000000000000000FFF0000000000000
      000000888888FFFFF888880000000000000000FFFFFFFFFF8FFFF00000000000
      00000FFFFFFFFFFFF000000000000000FFFFFFFFFFFF00000000000000000088
      88888FFF8888880000000000000000FFFF8FFFFFFFFFF000000000000000FFFF
      FFFFFFFFF000000000000000FFFFFFFFFFFFF00000000000000000878888FFFF
      F888880000000000000000FFFF8FF8FFFFFFF0000000000000000FFFFFFFFFFF
      F000000000000000FFFFFFFFFFFF00000000000000000087888FFF8FFF888800
      00000000000000FFFF8FF88FFFFFF00000000000000000FFF000000000000000
      0000000000000000FFF00000000000000000008888FFF888FFF8880000000000
      000000FFFFF88888FFFFF000000000000000000FF00000000000000000000000
      00000000FF0000000000000000000008788888888888880000000000000000FF
      FFFFF88FFFFFF0000000000000000000F0000000000000000000000000000000
      F00000000000000000000008878888888888880000000000000000FFFFFFF8FF
      F000000000000000000000000000000000000000000000000000000000000000
      0000000000000000887888888888800000000000000000FFFFFFFFFFF0FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000088877788888000000000000000000FFFFFFFFFFF0F0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000888888800000000000000000000FFFFFFFFFFF00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000078000000280000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00FFE03FFC000000000000000000000000
      FF800FFC000000000000000000000000FF0007FC000000000000000000000000
      FE0003FC000000000000000000000000FC0001FC000000000000000000000000
      FC0001FC000000000000000000000000F80000FC000000000000000000000000
      F80000FC000000000000000000000000F80000FC000000000000000000000000
      F80000FC000000000000000000000000F80000FC000000000000000000000000
      F80000FC000000000000000000000000F80000FC000000000000000000000000
      FC0001FC000000000000000000000000FC0001FC000000000000000000000000
      FE0003FC000000000000000000000000FF0007FC000000000000000000000000
      FF800FFC000000000000000000000000FFE03FFC000000000000000000000000
      FFFFFFFC000000000000000000000000FFFFFFFFFFFFFFFFFE03FFFF80003F00
      FFFFFFFFFFFFFFFFF800FFFF80003F00FFFFFFFFFFFFFFFFF0007FFF80003F00
      FFFFFFFFFFFFFFFFE0003FFF80003F00FFFBFFFFFFEFFFFFC0001FFF80003F00
      FFF3FFFFFFE7FFFFC0001FFF80003F00FFE3FFFFFFE3FFFF80000FFF80003F00
      FFC3FFFFFFE1FFFF80000FFF80003F00FF8003FFE000FFFF80000FFF80003F00
      FF0003FFE0007FFF80000FFF80003F00FE0003FFE0003FFF80000FFF80003F00
      FF0003FFE0007FFF80000FFF80003F00FF8003FFE000FFFF80000FFF80003F00
      FFC3FFFFFFE1FFFFC0001FFF80003F00FFE3FFFFFFE3FFFFC0001FFF80003F00
      FFF3FFFFFFE7FFFFE0003FFF80007F00FFFBFFFFFFEFFFFFF0007FFF8000FF00
      FFFFFFFFFFFFFFFFF800FFFF8001FF00FFFFFFFFFFFFFFFFFE03FFFF8003FF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
      000000000000}
  end
  object ds_yp: TDataSource
    DataSet = qry_yp
    Left = 177
    Top = 146
  end
  object sp_find: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'xyyd_cx_ypcx_html;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@dm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@cxfs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 264
    Top = 144
  end
end
