object frm_bqgl_yzck: Tfrm_bqgl_yzck
  Left = 0
  Top = 0
  Caption = #21307#22065#26597#30475
  ClientHeight = 569
  ClientWidth = 1228
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 1228
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 10
      Width = 25
      Height = 9
      AutoSize = False
      Color = clSkyBlue
      ParentColor = False
    end
    object Label3: TLabel
      Left = 106
      Top = 8
      Width = 105
      Height = 15
      Caption = #24403#22825#24050#25191#34892#21307#22065
    end
    object Label8: TLabel
      Left = 475
      Top = 8
      Width = 15
      Height = 15
      Caption = #21040
    end
    object Label9: TLabel
      Left = 689
      Top = 8
      Width = 150
      Height = 15
      Caption = #30149#20154#24403#21069#27491#22312#25191#34892#21307#22065
    end
    object ComboBox1: TComboBox
      Left = 216
      Top = 6
      Width = 145
      Height = 23
      ItemHeight = 15
      ItemIndex = 0
      TabOrder = 0
      Text = #20840#37096
      OnChange = ComboBox1Change
      Items.Strings = (
        #20840#37096
        #38271#26399
        #20020#26102)
    end
    object DateTimePicker1: TDateTimePicker
      Left = 367
      Top = 5
      Width = 104
      Height = 23
      Date = 40401.666157951390000000
      Time = 40401.666157951390000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 492
      Top = 5
      Width = 104
      Height = 23
      Date = 40401.666157951390000000
      Time = 40401.666157951390000000
      TabOrder = 2
    end
    object Button2: TButton
      Left = 602
      Top = 2
      Width = 73
      Height = 25
      Caption = #26102#38388#36807#28388
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 867
      Top = 4
      Width = 73
      Height = 25
      Caption = #21047#26032
      TabOrder = 4
      OnClick = Button4Click
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 33
    Width = 1228
    Height = 536
    Align = alClient
    TabOrder = 1
    object DBGridEh4: TDBGridEh
      Left = 0
      Top = -1
      Width = 1586
      Height = 515
      DataGrouping.GroupLevels = <>
      DataSource = ds_dryz
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      HorzScrollBar.Visible = False
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.VisibleMode = sbNeverShowEh
      OnColWidthsChanged = DBGridEh4ColWidthsChanged
      OnDrawColumnCell = DBGridEh4DrawColumnCell
      OnEnter = DBGridEh4Enter
      OnExit = DBGridEh4Exit
      Columns = <
        item
          EditButtons = <>
          FieldName = 'lb'
          Footers = <>
          Title.Caption = #31867#21035
        end
        item
          EditButtons = <>
          FieldName = 'yzsx'
          Footers = <>
          Title.Caption = #23646#24615
        end
        item
          EditButtons = <>
          FieldName = 'kdrq'
          Footers = <>
          Title.Caption = #24320#22987#26102#38388
          Width = 151
        end
        item
          EditButtons = <>
          FieldName = 'ph'
          Footers = <>
          Title.Caption = #25209#21495
          Visible = False
          Width = 95
        end
        item
          EditButtons = <>
          FieldName = 'xmmc'
          Footers = <>
          Title.Caption = #39033#30446#21517#31216
          Width = 243
        end
        item
          EditButtons = <>
          FieldName = 'sl'
          Footers = <>
          Title.Caption = #25968#37327
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'dw'
          Footers = <>
          Title.Caption = #21333#20301
          Width = 35
        end
        item
          EditButtons = <>
          FieldName = 'ypyl'
          Footers = <>
          Title.Caption = #29992#37327
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'yldw'
          Footers = <>
          Title.Caption = '  '
          Width = 17
        end
        item
          EditButtons = <>
          FieldName = 'ypyf'
          Footers = <>
          Title.Caption = #29992#27861
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'yytj'
          Footers = <>
          Title.Caption = #29992#33647#36884#24452
          Width = 62
        end
        item
          EditButtons = <>
          FieldName = 'yplsj'
          Footers = <>
          Title.Caption = #21333#20215
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'jyyb'
          Footers = <>
          Title.Caption = #26816#39564#26679#26412
          Width = 38
        end
        item
          EditButtons = <>
          FieldName = 'bz'
          Footers = <>
          Title.Caption = #35828#26126
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'gg'
          Footers = <>
          Title.Caption = #35268#26684
          Width = 78
        end
        item
          EditButtons = <>
          FieldName = 'kdysmc'
          Footers = <>
          Title.Caption = #24320#21333
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = 'czksmc'
          Footers = <>
          Title.Caption = #22788#32622#31185#23460
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'zhzxsj'
          Footers = <>
          Title.Caption = #35745#36153#26102#38388
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'tzfs'
          Footers = <>
          Title.Caption = #32467#26463#26102#38388
          Width = 152
        end
        item
          EditButtons = <>
          FieldName = 'xmdm'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'ypdwid'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'zyh'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'ypbzbl'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'ypcgj'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'yplb'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'jcmd'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'tmh'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'tzbz'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'zfbz'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'zxbz'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'fzbz'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'tzrq'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'tzry'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'zfrq'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'zfry'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'zxrq'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'zxry'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'xgrq'
          Footers = <>
          Title.Caption = #25552#20132#26102#38388
          Width = 166
        end
        item
          EditButtons = <>
          FieldName = 'xgry'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'czks'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'kdks'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'kdys'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'yzrq'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'shbz'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'shry'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'jcbw'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'jcff'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'ypkcbz'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'czys'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'fzph'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'drzxcs'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'yjjssj'
          Footers = <>
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object ds_dryz: TDataSource
    DataSet = sp_dryz
    Left = 552
    Top = 416
  end
  object sp_dryz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_dryzAfterOpen
    ProcedureName = 'zybl_cx_dryzxm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@yzsx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@vkdks'
        DataType = ftString
        Value = Null
      end>
    Left = 552
    Top = 456
  end
end
