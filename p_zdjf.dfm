object frm_zdjf: Tfrm_zdjf
  Left = 195
  Top = 255
  BorderIcons = [biSystemMenu]
  Caption = #26368#22823#35760#24080
  ClientHeight = 433
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 499
    Height = 180
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 23
    Top = 14
    Width = 72
    Height = 16
    Caption = #21345'    '#21495':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 263
    Top = 17
    Width = 72
    Height = 16
    Caption = #22995'    '#21517':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 260
    Top = 117
    Width = 72
    Height = 16
    Caption = #27424#36153#38480#39069':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 0
    Top = 180
    Width = 499
    Height = 36
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
  end
  object Label4: TLabel
    Left = 24
    Top = 46
    Width = 72
    Height = 16
    Caption = #20303#38498#31185#23460':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 78
    Width = 72
    Height = 16
    Caption = #39044#20132#24635#39069':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 263
    Top = 78
    Width = 72
    Height = 16
    Caption = #33258#36153#24635#39069':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 263
    Top = 50
    Width = 72
    Height = 16
    Caption = #36153#29992#24635#39069':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 23
    Top = 116
    Width = 56
    Height = 16
    Caption = #25285#20445#20154':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 23
    Top = 149
    Width = 40
    Height = 16
    Caption = #22791#27880':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object tmh: TEdit
    Left = 102
    Top = 12
    Width = 133
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
  object brxm: TEdit
    Left = 338
    Top = 12
    Width = 133
    Height = 24
    TabStop = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object zdjf: TEdit
    Left = 339
    Top = 111
    Width = 133
    Height = 24
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    TabOrder = 2
    Text = '0.00'
    OnKeyDown = zdjfKeyDown
  end
  object b_save: TBitBtn
    Left = 306
    Top = 186
    Width = 68
    Height = 25
    Caption = #30830#35748'(&O)'
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = b_saveClick
    NumGlyphs = 2
  end
  object b_close: TBitBtn
    Left = 404
    Top = 185
    Width = 68
    Height = 25
    Caption = #36864#20986'(&X)'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = b_closeClick
    NumGlyphs = 2
  end
  object ksmc: TEdit
    Left = 102
    Top = 45
    Width = 133
    Height = 24
    TabStop = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object zyj: TEdit
    Left = 102
    Top = 78
    Width = 133
    Height = 24
    TabStop = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object zzf: TEdit
    Left = 338
    Top = 78
    Width = 133
    Height = 24
    TabStop = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object zfy: TEdit
    Left = 338
    Top = 45
    Width = 133
    Height = 24
    TabStop = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object dbr: TEdit
    Left = 101
    Top = 111
    Width = 133
    Height = 24
    TabStop = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    TabOrder = 1
    OnKeyPress = dbrKeyPress
  end
  object bz: TEdit
    Left = 70
    Top = 145
    Width = 401
    Height = 24
    TabStop = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 216
    Width = 499
    Height = 217
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = ds_tzmx
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = GB2312_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 12
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footers = <>
        Title.Caption = #25285#20445#20154
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'czymc'
        Footers = <>
        Title.Caption = #25805#20316#21592
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'zdjf'
        Footers = <>
        Title.Caption = #35774#32622#38480#39069
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGrid2: TDBGrid
    Left = 56
    Top = 344
    Width = 371
    Height = 143
    DataSource = DM_data.DS_pub
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid2DblClick
    OnExit = DBGrid2Exit
    OnKeyDown = DBGrid2KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #30149#21592#22995#21517
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxb'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #24615#21035
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brnl'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #24180#40836
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ksmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #20303#38498#31185#23460
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 84
        Visible = True
      end>
  end
  object sp_up_zdjf: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_up_zdjf;1'
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
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@czyxm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@brxm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@zdjf'
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
    Left = 211
    Top = 88
  end
  object qry_tzmx: TADOQuery
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
      'select *  from zysf_zdjftzmx where zyh= :zyh')
    Left = 264
    Top = 88
  end
  object ds_tzmx: TDataSource
    DataSet = qry_tzmx
    Left = 296
    Top = 88
  end
end
