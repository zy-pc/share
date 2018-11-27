object frm_fylbtz: Tfrm_fylbtz
  Left = 219
  Top = 224
  BorderIcons = [biSystemMenu]
  Caption = #36153#29992#31867#21035#35843#25972
  ClientHeight = 472
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 249
    Width = 620
    Height = 202
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = ds_fylbtzmx
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 5
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'mc'
        Footers = <>
        Title.Caption = #25805#20316#21592
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'tzsj'
        Footers = <>
        Title.Caption = #35843#25972#26102#38388
        Width = 165
      end
      item
        EditButtons = <>
        FieldName = 'yfylb'
        Footers = <>
        Title.Caption = #21407#36153#29992#31867#21035
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'fylb'
        Footers = <>
        Title.Caption = #29616#36153#29992#31867#21035
        Width = 108
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 620
    Height = 209
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label27: TLabel
      Left = 36
      Top = 89
      Width = 75
      Height = 15
      Caption = #21407#36153#29992#31867#21035
    end
    object Bevel1: TBevel
      Left = 2
      Top = 2
      Width = 616
      Height = 74
      Align = alTop
      Shape = bsBottomLine
      ExplicitWidth = 577
    end
    object Label40: TLabel
      Left = 65
      Top = 12
      Width = 45
      Height = 15
      Caption = #26465#30721#21495
    end
    object Label1: TLabel
      Left = 36
      Top = 122
      Width = 75
      Height = 15
      Caption = #29616#36153#29992#31867#21035
    end
    object Label2: TLabel
      Left = 272
      Top = 120
      Width = 30
      Height = 15
      Caption = #21333#20301
    end
    object Label3: TLabel
      Left = 50
      Top = 178
      Width = 60
      Height = 15
      Caption = #36153#29992#38480#39069
    end
    object Label4: TLabel
      Left = 20
      Top = 43
      Width = 90
      Height = 15
      Caption = #24403#21069#27424#36153#38480#39069
    end
    object Label5: TLabel
      Left = 284
      Top = 13
      Width = 30
      Height = 15
      Caption = #22995#21517
    end
    object Label6: TLabel
      Left = 50
      Top = 150
      Width = 60
      Height = 15
      Caption = #31038#20445#21345#21495
    end
    object lbl1: TLabel
      Left = 272
      Top = 178
      Width = 45
      Height = 15
      Caption = #21333#30149#31181
    end
    object fylb: TEdit
      Left = 118
      Top = 87
      Width = 195
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 3
    end
    object tmh: TEdit
      Left = 118
      Top = 8
      Width = 144
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 0
      OnExit = tmhExit
      OnKeyPress = tmhKeyPress
    end
    object xfylb: TComboBox
      Left = 118
      Top = 117
      Width = 144
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 0
      TabOrder = 4
      OnChange = xfylbChange
      OnEnter = xfylbEnter
      OnExit = xfylbExit
    end
    object sbdw: TComboBox
      Left = 308
      Top = 118
      Width = 220
      Height = 23
      AutoComplete = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 0
      TabOrder = 5
      OnExit = sbdwExit
    end
    object sbzdfy: TEdit
      Left = 118
      Top = 176
      Width = 137
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 7
      Text = '0'
      OnExit = sbzdfyExit
      OnKeyPress = sbzdfyKeyPress
    end
    object Edit1: TEdit
      Left = 118
      Top = 38
      Width = 144
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 320
      Top = 8
      Width = 144
      Height = 24
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object sbkh: TEdit
      Left = 118
      Top = 147
      Width = 412
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 6
    end
  end
  object panel1: TPanel
    Left = 0
    Top = 209
    Width = 620
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 90
      Top = 7
      Width = 75
      Height = 25
      Caption = #20445#23384
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500055555500
        00005777FFFFFF77777750B077000003333057F77777777F555750B070888803
        B3B057F7F75FFF7F555700B07700000B3B3077F7F577777F555750B07777770B
        B3B057F7F555557F555750B07777770BBB3057F7FFFFFF7F555750B00000000B
        BBB057F77777777F555750B05F5F5F0BBBB057F7F7F7F77F555750B05F5F5F0B
        BBB057F7F7F7F77F555750B05F5F5F0BBBB057F7F7F7F77F555750B07777770B
        BBB057F77777777F555750B05F5F5F0BBBB057F7F757577F5557500055555503
        BBB057775555557F555755555555550B3BB055555555557F5557555555555503
        B3B055555555557FFFF755555555550000005555555555777777}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 178
      Top = 7
      Width = 75
      Height = 25
      Caption = #20462#25913
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 263
      Top = 7
      Width = 75
      Height = 25
      Caption = #25918#24323
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 394
      Top = 6
      Width = 75
      Height = 25
      Caption = #32467#26463
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn4Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
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
  end
  object tempgrid: TDBGrid
    Left = 52
    Top = 238
    Width = 149
    Height = 131
    DataSource = ds_fylb_cx
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = tempgridExit
    OnKeyPress = tempgridKeyPress
  end
  object DBGrid1: TDBGrid
    Left = 258
    Top = 238
    Width = 191
    Height = 139
    DataSource = ds_fylb_cx
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid1Exit
    OnKeyDown = DBGrid1KeyDown
  end
  object tempgrid1: TDBGrid
    Left = 52
    Top = 238
    Width = 243
    Height = 168
    DataSource = ds_cx_byjbqk
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = tempgrid1Exit
    OnKeyPress = tempgrid1KeyPress
  end
  object Panel2: TPanel
    Left = 0
    Top = 451
    Width = 620
    Height = 21
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object lbl_balj: TLabel
      Left = 20
      Top = 3
      Width = 8
      Height = 15
    end
  end
  object dbgrd1: TDBGrid
    Left = 320
    Top = 205
    Width = 289
    Height = 120
    DataSource = ds_dbz
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 7
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = dbgrd1Exit
    OnKeyPress = dbgrd1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dbzmc'
        Title.Alignment = taCenter
        Title.Caption = #21333#30149#31181#21517#31216
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bzxe'
        Title.Alignment = taCenter
        Title.Caption = #38480#39069
        Width = 70
        Visible = True
      end>
  end
  object edt_dbz: TEdit
    Left = 323
    Top = 176
    Width = 207
    Height = 23
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 8
    OnKeyPress = edt_dbzKeyPress
  end
  object sp_cx_zybrjbqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_ty_zybrjbqk;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end>
    Left = 256
    Top = 48
  end
  object sp_up_brfylb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_up_brfylbtz;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@fylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@xfylb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@czy'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sbdw'
        Attributes = [paNullable]
        DataType = ftString
        Size = 40
        Value = Null
      end
      item
        Name = '@sbkh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@dbzdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6
        Value = Null
      end
      item
        Name = '@ndzdjf'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 18
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 368
    Top = 46
  end
  object ds_fylb_cx: TDataSource
    DataSet = fylb_cx
    Left = 304
    Top = 48
  end
  object fylb_cx: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 128
    Top = 46
  end
  object ds_cx_byjbqk: TDataSource
    DataSet = sp_cx_zybrjbqk
    Left = 192
    Top = 49
  end
  object qry_fylbtzmx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'select tzmx.*,czy.mc from zysf_fylbtzmx tzmx,sys_czy czy where c' +
        'zy.dm=tzmx.czy and zyh= :zyh')
    Left = 208
    Top = 264
  end
  object ds_fylbtzmx: TDataSource
    DataSet = qry_fylbtzmx
    Left = 248
    Top = 264
  end
  object qry_dbzdm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    Left = 360
    Top = 240
  end
  object ds_dbz: TDataSource
    DataSet = qry_dbzdm
    Left = 392
    Top = 240
  end
end
