object Frm_crbbgk: TFrm_crbbgk
  Left = 146
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20256#26579#30149#25253#21578#21345
  ClientHeight = 688
  ClientWidth = 839
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 201
    Height = 647
    Align = alLeft
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 199
      Height = 645
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DSinsert
      Flat = False
      FooterColor = clYellow
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnCellClick = DBGridEh1CellClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'dm'
          Footers = <>
          Title.Caption = #21345#29255#32534#21495
          Width = 104
        end
        item
          EditButtons = <>
          FieldName = 'hzxm'
          Footers = <>
          Title.Caption = #24739#32773#22995#21517
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'xb'
          Footers = <>
          Title.Caption = #24615#21035
          Width = 31
        end
        item
          EditButtons = <>
          FieldName = 'czy'
          Footers = <>
          Title.Caption = #25509#35786#21307#29983
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'xxxzdz'
          Footers = <>
          Title.Caption = #35814#32454#22320#22336
        end
        item
          EditButtons = <>
          FieldName = 'csrq'
          Footers = <>
          Title.Caption = #20986#29983#26085#26399
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'nl'
          Footers = <>
          Title.Caption = #24180#40836
          Width = 45
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 839
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label13: TLabel
      Left = 16
      Top = 13
      Width = 60
      Height = 15
      Caption = #24320#22987#26085#26399
    end
    object Label23: TLabel
      Left = 215
      Top = 13
      Width = 60
      Height = 15
      Caption = #32467#26463#26085#26399
    end
    object ksrq: TDateTimePicker
      Left = 82
      Top = 9
      Width = 127
      Height = 23
      Date = 39303.665401643520000000
      Time = 39303.665401643520000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object jsrq: TDateTimePicker
      Left = 280
      Top = 7
      Width = 127
      Height = 23
      Date = 39303.665401643520000000
      Time = 39303.665401643520000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 439
      Top = 9
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object Panel3: TPanel
    Left = 201
    Top = 41
    Width = 638
    Height = 647
    Align = alClient
    TabOrder = 2
    object Panel7: TPanel
      Left = 1
      Top = 612
      Width = 636
      Height = 34
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 1
      object B_save: TBitBtn
        Left = 408
        Top = 5
        Width = 81
        Height = 25
        Caption = '[&S]'#20445' '#23384
        TabOrder = 2
        OnClick = B_saveClick
      end
      object BitBtn6: TBitBtn
        Left = 495
        Top = 6
        Width = 90
        Height = 25
        Caption = #36864' '#20986'[&X]'
        TabOrder = 3
        OnClick = BitBtn6Click
        Kind = bkClose
      end
      object Button1: TButton
        Left = 18
        Top = 6
        Width = 75
        Height = 25
        Caption = #37325#25171'[&R]'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 327
        Top = 6
        Width = 75
        Height = 25
        Caption = #20462#25913'[&R]'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 636
      Height = 611
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 0
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 634
        Height = 36
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 17
          Top = 10
          Width = 60
          Height = 15
          Caption = #21345#21495#32534#21495
        end
        object Label2: TLabel
          Left = 232
          Top = 10
          Width = 60
          Height = 15
          Caption = #25253#21345#31867#21035
        end
        object Label41: TLabel
          Left = 415
          Top = 11
          Width = 210
          Height = 15
          Caption = #35828#26126#65306#32418#33394#23383#20307#26174#31034#20026#24517#22635#39033#30446
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 85
          Top = 6
          Width = 104
          Height = 23
          Color = clWhite
          DataField = 'dm'
          DataSource = DSinsert
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 0
        end
        object DBComboBox1: TDBComboBox
          Left = 295
          Top = 6
          Width = 118
          Height = 23
          Style = csDropDownList
          DataField = 'klb'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          ItemHeight = 15
          Items.Strings = (
            #21021#27425#25253#21578
            #35746#27491#25253#21578)
          TabOrder = 1
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 37
        Width = 634
        Height = 573
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 1
        OnClick = Panel6Click
        object Label3: TLabel
          Left = 19
          Top = 6
          Width = 60
          Height = 15
          Caption = #24739#32773#22995#21517
          FocusControl = DBEdit2
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 200
          Top = 6
          Width = 248
          Height = 15
          Caption = #65288#24739#20799#23478#38271#22995#21517'                '#65289
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 374
          Top = 42
          Width = 60
          Height = 15
          Caption = #36523#20221#35777#21495
        end
        object Label6: TLabel
          Left = 49
          Top = 40
          Width = 30
          Height = 15
          Caption = #24615#21035
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 424
          Top = 438
          Width = 60
          Height = 15
          Caption = #20986#29983#26085#26399
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 4
          Top = 438
          Width = 369
          Height = 15
          Caption = #24180#40836'            '#20363':22=22'#23681',3Y=3'#26376',1Y19T=1'#26376'19'#22825
        end
        object Label9: TLabel
          Left = 19
          Top = 73
          Width = 60
          Height = 15
          Caption = #24037#20316#21333#20301
          FocusControl = DBEdit5
        end
        object Label10: TLabel
          Left = 185
          Top = 39
          Width = 60
          Height = 15
          Caption = #32852#31995#30005#35805
          FocusControl = DBEdit7
        end
        object Label12: TLabel
          Left = 17
          Top = 139
          Width = 60
          Height = 15
          Caption = #35814#32454#22320#22336
          FocusControl = DBEdit9
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 214
          Top = 174
          Width = 60
          Height = 15
          Caption = #24739#32773#32844#19994
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 19
          Top = 242
          Width = 60
          Height = 15
          Caption = #35786#26029#31867#22411
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 214
          Top = 242
          Width = 60
          Height = 15
          Caption = #30149#20363#20998#31867
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 419
          Top = 174
          Width = 60
          Height = 15
          Caption = #21457#30149#26085#26399
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 19
          Top = 208
          Width = 60
          Height = 15
          Caption = #35786#26029#26085#26399
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 214
          Top = 208
          Width = 60
          Height = 15
          Caption = #27515#20129#26085#26399
          Font.Charset = GB2312_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 432
          Top = 6
          Width = 166
          Height = 15
          Caption = #65288#35828#26126#65306#23567#20110'14'#21608#23681#30340#65289
          Font.Charset = GB2312_CHARSET
          Font.Color = clGray
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 19
          Top = 104
          Width = 60
          Height = 15
          Caption = #29616#20303#22320#22336
          FocusControl = DBEdit16
        end
        object Label15: TLabel
          Left = 19
          Top = 174
          Width = 60
          Height = 15
          Caption = #22320#22336#31867#22411
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 9
          Top = 275
          Width = 70
          Height = 15
          Caption = 'ICD10'#32534#30721
          FocusControl = DBEdit8
        end
        object Label21: TLabel
          Left = 4
          Top = 309
          Width = 75
          Height = 15
          Caption = #30002#22411#30142#30149#31867
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 52
          Top = 408
          Width = 30
          Height = 15
          Caption = #22791#27880
        end
        object Label24: TLabel
          Left = 4
          Top = 344
          Width = 75
          Height = 15
          Caption = #20057#22411#30142#30149#31867
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 3
          Top = 376
          Width = 75
          Height = 15
          Caption = #19993#22411#30142#30149#31867
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 86
          Top = 5
          Width = 104
          Height = 23
          DataField = 'hzxm'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 0
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 308
          Top = 5
          Width = 118
          Height = 23
          TabStop = False
          DataField = 'jzxm'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 1
          OnKeyPress = DBEdit2KeyPress
        end
        object DBComboBox2: TDBComboBox
          Left = 86
          Top = 38
          Width = 98
          Height = 23
          Style = csDropDownList
          DataField = 'xb'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          ItemHeight = 15
          Items.Strings = (
            #30007
            #22899)
          TabOrder = 2
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 85
          Top = 70
          Width = 515
          Height = 23
          DataField = 'gzdw'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 5
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit7: TDBEdit
          Left = 246
          Top = 38
          Width = 122
          Height = 23
          DataField = 'lxdh'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 3
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 83
          Top = 140
          Width = 520
          Height = 23
          Hint = #26576#30465#26576#24066#26576#21439#65288#21306#65289#26576#20065#65288#38215#12289#34903#36947#65289#26576#26449#65288#38376#29260#21495#65289
          AutoSelect = False
          DataField = 'xxxzdz'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnDblClick = DBEdit9DblClick
          OnKeyDown = DBEdit9KeyDown
        end
        object DBComboBox3: TDBComboBox
          Left = 85
          Top = 169
          Width = 118
          Height = 23
          DataField = 'xzdzlx'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          ItemHeight = 15
          Items.Strings = (
            #26412#21439#21306
            #26412#24066#20854#20182#21439#21306
            #26412#30465#20854#20182#22320#26041
            #22806#30465
            #28207#28595#21488
            #22806#31821)
          TabOrder = 9
          OnKeyPress = DBEdit2KeyPress
        end
        object DBComboBox4: TDBComboBox
          Left = 281
          Top = 172
          Width = 118
          Height = 23
          DataField = 'hzzy'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          ItemHeight = 15
          Items.Strings = (
            #24188#25176#20799#31461
            #25955#23621#20799#31461
            #23398#29983#65288#22823#20013#23567#23398#65289
            #25945#24072
            #20445#32946#21592#21450#20445#22982
            #39184#39278#39135#21697#19994
            #21830#19994#26381#21153
            #21307#21153#20154#21592
            #24037#20154
            #27665#24037
            #20892#27665
            #29287#27665
            #28180#65288#33337#65289#27665
            #24178#37096#32844#21592
            #31163#36864#20154#21592
            #23478#21153#21450#24453#19994
            #20854#20182
            #19981#31077)
          TabOrder = 11
          OnKeyPress = DBEdit2KeyPress
        end
        object DBComboBox5: TDBComboBox
          Left = 86
          Top = 239
          Width = 118
          Height = 23
          DataField = 'zdlxmc'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          ItemHeight = 15
          Items.Strings = (
            #20020#24202#35786#26029#30149#20363
            #23454#39564#23460#35786#26029#30149#20363
            #30097#20284#30149#20363
            #30149#21407#25658#24102#32773
            #38451#24615#26816#27979)
          TabOrder = 14
          OnKeyPress = DBEdit2KeyPress
        end
        object DBComboBox6: TDBComboBox
          Left = 280
          Top = 243
          Width = 118
          Height = 23
          DataField = 'zdblfl'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          ItemHeight = 15
          Items.Strings = (
            #26410#20998#31867
            #24613#24615
            #24930#24615)
          TabOrder = 15
          OnKeyPress = DBEdit2KeyPress
        end
        object DBDateTimeEditEh2: TDBDateTimeEditEh
          Left = 485
          Top = 169
          Width = 118
          Height = 23
          DataField = 'fbrq'
          DataSource = DSinsert
          EditButtons = <>
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          Kind = dtkDateEh
          TabOrder = 10
          Visible = True
          OnKeyPress = DBEdit2KeyPress
        end
        object DBDateTimeEditEh3: TDBDateTimeEditEh
          Left = 86
          Top = 205
          Width = 118
          Height = 23
          DataField = 'zdrq'
          DataSource = DSinsert
          EditButtons = <>
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          Kind = dtkDateEh
          TabOrder = 12
          Visible = True
          OnKeyPress = DBEdit2KeyPress
        end
        object DBDateTimeEditEh4: TDBDateTimeEditEh
          Left = 281
          Top = 205
          Width = 118
          Height = 23
          DataField = 'swrq'
          DataSource = DSinsert
          EditButtons = <>
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          Kind = dtkDateEh
          TabOrder = 13
          Visible = True
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit16: TDBEdit
          Left = 196
          Top = 104
          Width = 407
          Height = 23
          Hint = #26576#30465#26576#24066#26576#21439#65288#21306#65289#26576#20065#65288#38215#12289#34903#36947#65289
          TabStop = False
          DataField = 'xzdzmc'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit18: TDBEdit
          Left = 84
          Top = 104
          Width = 106
          Height = 23
          Hint = #26576#30465#26576#24066#26576#21439#65288#21306#65289#26576#20065#65288#38215#12289#34903#36947#65289
          DataField = 'xzdzbm'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnDblClick = DBEdit18DblClick
          OnExit = DBEdit18Exit
          OnKeyPress = DBEdit18KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 86
          Top = 272
          Width = 118
          Height = 23
          TabStop = False
          DataField = 'icd10'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 16
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit20: TDBEdit
          Left = 210
          Top = 301
          Width = 264
          Height = 23
          TabStop = False
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 19
          Visible = False
        end
        object DBCheckBox1: TDBCheckBox
          Left = 487
          Top = 304
          Width = 118
          Height = 32
          Caption = #23494#20999#25509#35302#32773#26377#26080#30456#21516#30151#29366
          DataField = 'mqjz'
          DataSource = DSinsert
          TabOrder = 18
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          WordWrap = True
        end
        object DBEdit21: TDBEdit
          Left = 89
          Top = 404
          Width = 520
          Height = 23
          DataField = 'bz'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 24
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit10: TDBEdit
          Left = 207
          Top = 272
          Width = 382
          Height = 23
          TabStop = False
          DataField = 'icd10mc'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 17
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 434
          Top = 38
          Width = 171
          Height = 23
          DataField = 'hzsfz'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 4
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit11: TDBEdit
          Left = 85
          Top = 341
          Width = 118
          Height = 23
          DataField = 'ylcrb'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 20
          OnDblClick = DBEdit11DblClick
          OnExit = DBEdit11Exit
          OnKeyPress = DBEdit11KeyPress
        end
        object DBEdit12: TDBEdit
          Left = 209
          Top = 341
          Width = 264
          Height = 23
          TabStop = False
          DataField = 'jbbzmc'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 21
          OnKeyDown = DBEdit12KeyDown
        end
        object DBEdit13: TDBEdit
          Left = 85
          Top = 373
          Width = 118
          Height = 23
          DataField = 'blcrb'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 22
        end
        object DBEdit14: TDBEdit
          Left = 209
          Top = 373
          Width = 264
          Height = 23
          TabStop = False
          DataField = 'blcrb'
          DataSource = DSinsert
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 23
          OnKeyDown = DBEdit14KeyDown
        end
        object nl: TSXAgeBox
          Left = 35
          Top = 434
          Width = 90
          Height = 23
          Hint = #20363':22'#23681#36755#20837'22'#22238#36710',3'#26376#36755#20837'3Y'#22238#36710',1'#26376'19'#22825#36755#20837'1Y19T'#22238#36710
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 25
          OnExit = nlExit
          OnKeyDown = nlKeyDown
        end
        object dtp1: TDateTimePicker
          Left = 486
          Top = 434
          Width = 123
          Height = 23
          Date = 40753.624740300930000000
          Time = 40753.624740300930000000
          ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
          TabOrder = 26
          OnExit = dtp1Exit
          OnKeyDown = dtp1KeyDown
        end
        object edt1: TEdit
          Left = 85
          Top = 301
          Width = 121
          Height = 23
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          MaxLength = 10
          TabOrder = 27
          OnKeyDown = edt1KeyDown
        end
        object pnl1: TPanel
          Left = 79
          Top = 128
          Width = 554
          Height = 36
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 28
          Visible = False
          object lbl1: TLabel
            Left = 11
            Top = 12
            Width = 539
            Height = 15
            Caption = '    '#30465'      '#24066'      '#21439'('#21306')        '#20065'('#38215#12289#34903#36947')        '#26449'     ('#38376#29260#21495')'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
          end
          object dbedtdm: TDBEdit
            Left = 3
            Top = 8
            Width = 40
            Height = 21
            Color = clWhite
            DataField = 'sf'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 0
            OnKeyDown = dbedtdmKeyDown
          end
          object dbedtdm1: TDBEdit
            Left = 61
            Top = 8
            Width = 41
            Height = 21
            Color = clWhite
            DataField = 'sq'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 1
            OnKeyDown = dbedtdm1KeyDown
          end
          object dbedtdm2: TDBEdit
            Left = 122
            Top = 8
            Width = 45
            Height = 21
            Color = clWhite
            DataField = 'xc'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 2
            OnKeyDown = dbedtdm2KeyDown
          end
          object dbedtdm3: TDBEdit
            Left = 214
            Top = 8
            Width = 65
            Height = 21
            Color = clWhite
            DataField = 'xz'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 3
            OnKeyDown = dbedtdm3KeyDown
          end
          object dbedtdm4: TDBEdit
            Left = 369
            Top = 8
            Width = 64
            Height = 21
            Color = clWhite
            DataField = 'cz'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 4
          end
          object dbedtdm5: TDBEdit
            Left = 449
            Top = 8
            Width = 42
            Height = 21
            Color = clWhite
            DataField = 'mph'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 5
          end
        end
        object pnl2: TPanel
          Left = 2
          Top = 459
          Width = 630
          Height = 112
          Align = alBottom
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 29
          Visible = False
          object lbl2: TLabel
            Left = 2
            Top = 9
            Width = 112
            Height = 15
            Caption = #20057#32925#22635#20889#38468#34920#65306
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = #23435#20307
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl3: TLabel
            Left = 116
            Top = 8
            Width = 500
            Height = 15
            Caption = #20057#32925#39318#27425#21457#30149#26102#38388'     '#24180#65292#25110#39318#27425#26816#27979#20986#20057#32925#34920#38754#25239#21407#38451#24615#26102#38388'    '#24180';'#26412
          end
          object lbl4: TLabel
            Left = 4
            Top = 33
            Width = 624
            Height = 15
            Caption = #27425#26816#27979#32467#26524':HBsAg:        '#65288#38451#24615#12289#38452#24615#12289#26410#26597#65289';'#25239'HBclgM:       ('#38451#24615#12289#38452#24615#12289#26410#26597');'
          end
          object lbl5: TLabel
            Left = 4
            Top = 56
            Width = 464
            Height = 15
            Caption = 'ALT'#65288#35895#19993#36716#27688#37238#65289':          '#65292'AST'#65288#35895#33609#36716#27688#37238#65289':          '#12290
          end
          object lbl6: TLabel
            Left = 132
            Top = 87
            Width = 45
            Height = 15
            Caption = #36755#20837#22320
          end
          object dbedtmph: TDBEdit
            Left = 237
            Top = 5
            Width = 36
            Height = 21
            Color = clWhite
            DataField = 'yg_fbsj'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 0
          end
          object dbedtmph1: TDBEdit
            Left = 546
            Top = 5
            Width = 32
            Height = 21
            Color = clWhite
            DataField = 'yg_jcsj'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 1
          end
          object dbedtmph3: TDBEdit
            Left = 150
            Top = 54
            Width = 70
            Height = 21
            Color = clWhite
            DataField = 'alt_jg'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 2
          end
          object dbedtmph5: TDBEdit
            Left = 376
            Top = 54
            Width = 73
            Height = 21
            Color = clWhite
            DataField = 'ast_jg'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 3
          end
          object dbedtmph6: TDBEdit
            Left = 183
            Top = 83
            Width = 426
            Height = 21
            Color = clWhite
            DataField = 'jwsrdz'
            DataSource = DSinsert
            Font.Charset = GB2312_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
            ParentFont = False
            TabOrder = 4
          end
          object dbchk1: TDBCheckBox
            Left = 9
            Top = 87
            Width = 118
            Height = 17
            Caption = #22659#22806#36755#20837#30149#20363
            DataField = 'jwsr'
            DataSource = DSinsert
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dbcbb1: TDBComboBox
            Left = 429
            Top = 29
            Width = 58
            Height = 23
            DataField = 'hbclgm_jg'
            DataSource = DSinsert
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ItemHeight = 15
            Items.Strings = (
              #38451#24615
              #38452#24615
              #26410#26597)
            TabOrder = 6
          end
          object dbcbbhbclgm_jg: TDBComboBox
            Left = 136
            Top = 29
            Width = 66
            Height = 23
            DataField = 'hbsag_jg'
            DataSource = DSinsert
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ItemHeight = 15
            Items.Strings = (
              #38451#24615
              #38452#24615
              #26410#26597)
            TabOrder = 7
          end
        end
        object dbgrd_jbxx: TDBGrid
          Left = 281
          Top = 300
          Width = 210
          Height = 227
          DataSource = ds_jbmc
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 30
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Visible = False
          OnKeyDown = dbgrd_jbxxKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'jbmc'
              Title.Alignment = taCenter
              Title.Caption = #30142#30149#21517#31216
              Width = 281
              Visible = True
            end>
        end
        object dbgrd_dz: TDBGrid
          Left = 83
          Top = 160
          Width = 427
          Height = 97
          DataSource = ds_dz
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 31
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Visible = False
          OnKeyDown = dbgrd_dzKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'qhmc'
              Title.Alignment = taCenter
              Title.Caption = #22320#22336
              Width = 407
              Visible = True
            end>
        end
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 719
    Top = 286
    Width = 332
    Height = 191
    DataSource = DataSource3
    ImeName = #29579#30721#20116#31508#22411#36755#20837#27861'86'#29256
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid1DblClick
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #21517#31216
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 216
        Visible = True
      end>
  end
  object QuickRep1: TQuickRep
    Left = 555
    Top = 10000
    Width = 725
    Height = 834
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QryPrint
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      50.000000000000000000
      2206.625000000000000000
      50.000000000000000000
      1918.229166666670000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 19
      Width = 687
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        169.333333333333300000
        1817.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel10: TQRLabel
        Left = 206
        Top = 11
        Width = 274
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          545.041666666666700000
          29.104166666666670000
          724.958333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #20013#21326#20154#27665#20849#21644#22269#20256#26579#30149#25253#21578#21345
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 16
      end
      object QRLabel11: TQRLabel
        Left = 15
        Top = 45
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          119.062500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345#21495#32534#21495#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 369
        Top = 45
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          119.062500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25253#21345#31867#21035#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 443
        Top = 44
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          1172.104166666670000000
          116.416666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 462
        Top = 45
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1222.375000000000000000
          119.062500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21021#27425#25253#21578
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 532
        Top = 44
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          1407.583333333330000000
          116.416666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 551
        Top = 45
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1457.854166666667000000
          119.062500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35746#27491#25253#21578
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 81
        Top = 45
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          214.312500000000000000
          119.062500000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel3'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 19
      Top = 83
      Width = 687
      Height = 725
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1918.229166666667000000
        1817.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRLabel2: TQRLabel
        Left = 12
        Top = 7
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          18.520833333333330000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24739#32773#22995#21517#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 82
        Top = 8
        Width = 94
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          216.958333333333000000
          21.166666666666700000
          248.708333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'hzxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel4: TQRLabel
        Left = 180
        Top = 8
        Width = 217
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          21.166666666666670000
          574.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #65288#24739#20799#23478#38271#22995#21517'                '#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 275
        Top = 8
        Width = 104
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          727.604166666667000000
          21.166666666666700000
          275.166666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'jzxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Left = 12
        Top = 29
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          76.729166666666670000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36523#20221#35777#21495#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 82
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          216.958333333333000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 101
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          267.229166666667000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 120
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          317.500000000000000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 140
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          370.416666666667000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 159
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          420.687500000000000000
          76.729166666666680000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 178
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          470.958333333333300000
          76.729166666666680000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 197
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          521.229166666666700000
          76.729166666666680000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 216
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          571.500000000000000000
          76.729166666666680000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 235
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          621.770833333333000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 255
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          674.687500000000000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 274
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          724.958333333333000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 293
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          775.229166666667000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 312
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          825.500000000000000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 331
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          875.770833333333000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 350
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          926.041666666667000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 370
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          978.958333333333000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 389
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          1029.229166666670000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 408
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          1079.500000000000000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 436
        Top = 29
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          76.729166666666670000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 481
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          1272.645833333330000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 500
        Top = 30
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1322.916666666667000000
          79.375000000000000000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30007
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 522
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          1381.125000000000000000
          76.729166666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 541
        Top = 30
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1431.395833333333000000
          79.375000000000000000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22899
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 12
        Top = 48
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          127.000000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#29983#26085#26399#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 82
        Top = 48
        Width = 152
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          216.958333333333000000
          127.000000000000000000
          402.166666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'csrq1'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel37: TQRLabel
        Left = 237
        Top = 48
        Width = 395
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          627.062500000000000000
          127.000000000000000000
          1045.104166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '('#22914#20986#29983#26085#26399#19981#31077','#23454#36275#24180#40836'                  '#21333#20301#65306#23681#12289#26376#12289#22825')'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 398
        Top = 48
        Width = 115
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1053.041666666670000000
          127.000000000000000000
          304.270833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'nl'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel38: TQRLabel
        Left = 12
        Top = 90
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          238.125000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#20154#23646#20110#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 82
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 101
        Top = 91
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          240.770833333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26412#21439#21306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 154
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          407.458333333333300000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 173
        Top = 91
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          457.729166666666700000
          240.770833333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26412#24066#20854#20182#21439#21306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 266
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          703.791666666666700000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 285
        Top = 91
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          754.062500000000000000
          240.770833333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26412#30465#20854#20182#22320#26041
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 374
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          989.541666666666700000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 393
        Top = 91
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1039.812500000000000000
          240.770833333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22806#30465
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 429
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1135.062500000000000000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 448
        Top = 91
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1185.333333333333000000
          240.770833333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28207#28595#21488
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel49: TQRLabel
        Left = 494
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1307.041666666667000000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 514
        Top = 91
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1359.958333333333000000
          240.770833333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22806#31821
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 12
        Top = 109
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          288.395833333333300000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29616#20303#22320#22336#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 82
        Top = 109
        Width = 602
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          288.395833333333300000
          1592.791666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'xzdzmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel52: TQRLabel
        Left = 12
        Top = 128
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          338.666666666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24739#32773#32844#19994#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel53: TQRLabel
        Left = 82
        Top = 128
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          338.666666666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel54: TQRLabel
        Left = 104
        Top = 129
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          341.312500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24188#25176#20799#31461
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel55: TQRLabel
        Left = 163
        Top = 128
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          431.270833333333300000
          338.666666666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel56: TQRLabel
        Left = 182
        Top = 129
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          481.541666666666700000
          341.312500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25955#23621#20799#31461
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel57: TQRLabel
        Left = 241
        Top = 128
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          637.645833333333300000
          338.666666666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel58: TQRLabel
        Left = 260
        Top = 129
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          687.916666666666700000
          341.312500000000000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23398#29983#65288#22823#20013#23567#23398#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel59: TQRLabel
        Left = 371
        Top = 128
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          981.604166666666700000
          338.666666666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel60: TQRLabel
        Left = 390
        Top = 129
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1031.875000000000000000
          341.312500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25945#24072
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel61: TQRLabel
        Left = 425
        Top = 128
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1124.479166666667000000
          338.666666666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel62: TQRLabel
        Left = 444
        Top = 129
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1174.750000000000000000
          341.312500000000000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20445#32946#21592#21450#20445#22982
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel63: TQRLabel
        Left = 530
        Top = 128
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1402.291666666667000000
          338.666666666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel64: TQRLabel
        Left = 549
        Top = 129
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1452.562500000000000000
          341.312500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39184#39278#39135#21697#19994
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel65: TQRLabel
        Left = 82
        Top = 150
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          396.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel66: TQRLabel
        Left = 103
        Top = 152
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          272.520833333333300000
          402.166666666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21830#19994#26381#21153
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel67: TQRLabel
        Left = 163
        Top = 150
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          431.270833333333300000
          396.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel68: TQRLabel
        Left = 182
        Top = 152
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          481.541666666666700000
          402.166666666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#21153#20154#21592
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel69: TQRLabel
        Left = 241
        Top = 150
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          637.645833333333300000
          396.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel70: TQRLabel
        Left = 260
        Top = 152
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          687.916666666666700000
          402.166666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24037#20154
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel71: TQRLabel
        Left = 297
        Top = 150
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          785.812500000000000000
          396.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel72: TQRLabel
        Left = 316
        Top = 152
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          402.166666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27665#24037
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel73: TQRLabel
        Left = 351
        Top = 150
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          928.687500000000000000
          396.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel74: TQRLabel
        Left = 370
        Top = 152
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          978.958333333333300000
          402.166666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20892#27665
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel75: TQRLabel
        Left = 406
        Top = 150
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1074.208333333333000000
          396.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel76: TQRLabel
        Left = 425
        Top = 152
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1124.479166666667000000
          402.166666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29287#27665
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel77: TQRLabel
        Left = 461
        Top = 150
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1219.729166666667000000
          396.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel78: TQRLabel
        Left = 480
        Top = 152
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          402.166666666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28180#65288#33337#65289#27665
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel79: TQRLabel
        Left = 561
        Top = 150
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1484.312500000000000000
          396.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel80: TQRLabel
        Left = 581
        Top = 152
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1537.229166666667000000
          402.166666666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24178#37096#32844#21592
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel81: TQRLabel
        Left = 82
        Top = 171
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          452.437500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel82: TQRLabel
        Left = 102
        Top = 173
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          269.875000000000000000
          457.729166666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31163#36864#20154#21592
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel83: TQRLabel
        Left = 162
        Top = 171
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          428.625000000000000000
          452.437500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel84: TQRLabel
        Left = 181
        Top = 173
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          478.895833333333300000
          457.729166666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23478#21153#21450#24453#19994
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel85: TQRLabel
        Left = 255
        Top = 171
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          674.687500000000000000
          452.437500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel86: TQRLabel
        Left = 274
        Top = 173
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          724.958333333333300000
          457.729166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20854#20182
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel87: TQRLabel
        Left = 437
        Top = 171
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1156.229166666667000000
          452.437500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel88: TQRLabel
        Left = 456
        Top = 173
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          457.729166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19981#31077
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel89: TQRLabel
        Left = 307
        Top = 173
        Width = 125
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          812.270833333333300000
          457.729166666666700000
          330.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #65288'              '#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 320
        Top = 173
        Width = 95
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          846.666666666666700000
          457.729166666666700000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'qtzy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel90: TQRLabel
        Left = 12
        Top = 194
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          513.291666666666700000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#20363#20998#31867#65306#65288'1'#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel91: TQRLabel
        Left = 123
        Top = 193
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          325.437500000000000000
          510.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel92: TQRLabel
        Left = 143
        Top = 195
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          515.937500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30097#20284#30149#20363
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel93: TQRLabel
        Left = 202
        Top = 193
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          534.458333333333300000
          510.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel94: TQRLabel
        Left = 221
        Top = 195
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          584.729166666666700000
          515.937500000000000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20020#24202#35786#26029#30149#20363
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel95: TQRLabel
        Left = 313
        Top = 193
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          828.145833333333300000
          510.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel96: TQRLabel
        Left = 332
        Top = 195
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          878.416666666666700000
          515.937500000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23454#39564#23460#30830#35786#30149#20363
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel97: TQRLabel
        Left = 443
        Top = 193
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1172.104166666667000000
          510.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel98: TQRLabel
        Left = 462
        Top = 195
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1222.375000000000000000
          515.937500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21407#25658#24102#32773
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel99: TQRLabel
        Left = 77
        Top = 215
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          568.854166666666700000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #65288'2'#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel100: TQRLabel
        Left = 123
        Top = 213
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          325.437500000000000000
          563.562500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel101: TQRLabel
        Left = 143
        Top = 215
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          568.854166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24613#24615
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel102: TQRLabel
        Left = 202
        Top = 213
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          534.458333333333300000
          563.562500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel103: TQRLabel
        Left = 221
        Top = 215
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          584.729166666666700000
          568.854166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24930#24615
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel104: TQRLabel
        Left = 253
        Top = 215
        Width = 170
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          669.395833333333300000
          568.854166666666700000
          449.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #65288#20057#22411#32925#28814#12289#34880#21560#34411#30149#22635#20889#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel105: TQRLabel
        Left = 12
        Top = 238
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          629.708333333333300000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21457#30149#26085#26399#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel106: TQRLabel
        Left = 12
        Top = 263
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          695.854166666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35786#26029#26085#26399#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel107: TQRLabel
        Left = 12
        Top = 286
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          756.708333333333300000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27515#20129#26085#26399#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 82
        Top = 238
        Width = 289
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          629.708333333333300000
          764.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'fbrq1'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRDBText8: TQRDBText
        Left = 82
        Top = 263
        Width = 289
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          695.854166666666700000
          764.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'zdrq1'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRDBText9: TQRDBText
        Left = 82
        Top = 286
        Width = 289
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          756.708333333333300000
          764.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'swrq'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel108: TQRLabel
        Left = 375
        Top = 238
        Width = 222
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          629.708333333333300000
          587.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #65288#30149#21407#25658#24102#32773#22635#21021#26816#26085#26399#25110#23601#35786#26085#26399#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 304
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          804.333333333333300000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel109: TQRLabel
        Left = 12
        Top = 311
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          822.854166666666700000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30002#31867#20256#26579#30149#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel110: TQRLabel
        Left = 85
        Top = 311
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          224.895833333333300000
          822.854166666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel111: TQRLabel
        Left = 105
        Top = 311
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          277.812500000000000000
          822.854166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #40736#30123
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel112: TQRLabel
        Left = 164
        Top = 311
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          433.916666666666700000
          822.854166666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel113: TQRLabel
        Left = 183
        Top = 311
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          484.187500000000000000
          822.854166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38669#20081
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 332
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          878.416666666666700000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel114: TQRLabel
        Left = 12
        Top = 338
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          894.291666666666700000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20057#31867#20256#26579#30149#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel115: TQRLabel
        Left = 99
        Top = 337
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          261.937500000000000000
          891.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel116: TQRLabel
        Left = 119
        Top = 338
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          314.854166666666700000
          894.291666666666700000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20256#26579#24615#38750#20856#22411#32954#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel117: TQRLabel
        Left = 235
        Top = 337
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          621.770833333333300000
          891.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel118: TQRLabel
        Left = 255
        Top = 338
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          674.687500000000000000
          894.291666666666700000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33406#28363#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel119: TQRLabel
        Left = 302
        Top = 338
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          799.041666666666700000
          894.291666666666700000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#27602#24615#32925#28814#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel120: TQRLabel
        Left = 386
        Top = 337
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1021.291666666667000000
          891.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel121: TQRLabel
        Left = 404
        Top = 338
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1068.916666666667000000
          894.291666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30002#22411
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel122: TQRLabel
        Left = 437
        Top = 337
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1156.229166666667000000
          891.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel123: TQRLabel
        Left = 455
        Top = 338
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1203.854166666667000000
          894.291666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20057#22411
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel124: TQRLabel
        Left = 487
        Top = 337
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1288.520833333333000000
          891.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel125: TQRLabel
        Left = 505
        Top = 338
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1336.145833333333000000
          894.291666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19993#22411
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel126: TQRLabel
        Left = 538
        Top = 337
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1423.458333333333000000
          891.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel127: TQRLabel
        Left = 556
        Top = 338
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1471.083333333333000000
          894.291666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25098#22411
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel128: TQRLabel
        Left = 588
        Top = 337
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1555.750000000000000000
          891.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel129: TQRLabel
        Left = 606
        Top = 338
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1603.375000000000000000
          894.291666666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26410#20998#22411#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel130: TQRLabel
        Left = 24
        Top = 361
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          63.500000000000000000
          955.145833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel131: TQRLabel
        Left = 44
        Top = 362
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          957.791666666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33034#39635#28784#36136#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel132: TQRLabel
        Left = 115
        Top = 361
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          304.270833333333300000
          955.145833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel133: TQRLabel
        Left = 135
        Top = 362
        Width = 131
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          357.187500000000000000
          957.791666666666700000
          346.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#24863#26579#39640#33268#30149#24615#31165#27969#24863
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel134: TQRLabel
        Left = 272
        Top = 361
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          719.666666666666700000
          955.145833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel135: TQRLabel
        Left = 292
        Top = 362
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          772.583333333333300000
          957.791666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #40635#30137
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel136: TQRLabel
        Left = 325
        Top = 361
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          859.895833333333300000
          955.145833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel137: TQRLabel
        Left = 345
        Top = 362
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          912.812500000000000000
          957.791666666666700000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#20986#34880#28909
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel138: TQRLabel
        Left = 431
        Top = 361
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1140.354166666667000000
          955.145833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel139: TQRLabel
        Left = 451
        Top = 362
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1193.270833333333000000
          957.791666666666700000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29378#29356#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel140: TQRLabel
        Left = 497
        Top = 361
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1314.979166666667000000
          955.145833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel141: TQRLabel
        Left = 517
        Top = 362
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1367.895833333333000000
          957.791666666666700000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#20057#22411#33041#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel142: TQRLabel
        Left = 614
        Top = 361
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1624.541666666667000000
          955.145833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel143: TQRLabel
        Left = 634
        Top = 362
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1677.458333333333000000
          957.791666666666700000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30331#38761#28909
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel145: TQRLabel
        Left = 24
        Top = 383
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          1013.354166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28845#30141#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel144: TQRLabel
        Left = 71
        Top = 382
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          187.854166666666700000
          1010.708333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel146: TQRLabel
        Left = 91
        Top = 383
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          240.770833333333300000
          1013.354166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32954#28845#30141
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel147: TQRLabel
        Left = 139
        Top = 382
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          367.770833333333300000
          1010.708333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel148: TQRLabel
        Left = 158
        Top = 383
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          418.041666666666700000
          1013.354166666667000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30382#32932#28845#30141
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel149: TQRLabel
        Left = 217
        Top = 382
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          574.145833333333300000
          1010.708333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel150: TQRLabel
        Left = 236
        Top = 383
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          624.416666666666700000
          1013.354166666667000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26410#20998#22411#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel151: TQRLabel
        Left = 300
        Top = 383
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          793.750000000000000000
          1013.354166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30178#30142#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel152: TQRLabel
        Left = 343
        Top = 382
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          907.520833333333300000
          1010.708333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel153: TQRLabel
        Left = 362
        Top = 383
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          957.791666666666700000
          1013.354166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32454#33740#24615
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel154: TQRLabel
        Left = 409
        Top = 382
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1082.145833333333000000
          1010.708333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel155: TQRLabel
        Left = 428
        Top = 383
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1132.416666666667000000
          1013.354166666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38463#31859#24052#24615#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel156: TQRLabel
        Left = 504
        Top = 383
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          1013.354166666667000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32954#32467#26680#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel157: TQRLabel
        Left = 559
        Top = 382
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1479.020833333333000000
          1010.708333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel158: TQRLabel
        Left = 579
        Top = 383
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1531.937500000000000000
          1013.354166666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28034#38451
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel159: TQRLabel
        Left = 614
        Top = 382
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1624.541666666667000000
          1010.708333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel160: TQRLabel
        Left = 633
        Top = 383
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1674.812500000000000000
          1013.354166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20165#38506#38451
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel161: TQRLabel
        Left = 24
        Top = 403
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          63.500000000000000000
          1066.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel162: TQRLabel
        Left = 43
        Top = 404
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          113.770833333333300000
          1068.916666666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33740#38452
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel163: TQRLabel
        Left = 75
        Top = 403
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          198.437500000000000000
          1066.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel164: TQRLabel
        Left = 94
        Top = 404
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          248.708333333333300000
          1068.916666666667000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26410#30192#26816#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel165: TQRLabel
        Left = 152
        Top = 404
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          402.166666666666700000
          1068.916666666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20260#23506#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel166: TQRLabel
        Left = 195
        Top = 403
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          515.937500000000000000
          1066.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel167: TQRLabel
        Left = 214
        Top = 404
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          566.208333333333300000
          1068.916666666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20260#23506
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel168: TQRLabel
        Left = 247
        Top = 403
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          653.520833333333300000
          1066.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel169: TQRLabel
        Left = 266
        Top = 404
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          703.791666666666700000
          1068.916666666667000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21103#20260#23506#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel170: TQRLabel
        Left = 324
        Top = 403
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          857.250000000000000000
          1066.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel171: TQRLabel
        Left = 344
        Top = 404
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          910.166666666666700000
          1068.916666666667000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#33041#33034#39635#33180#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel172: TQRLabel
        Left = 455
        Top = 403
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1203.854166666667000000
          1066.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel173: TQRLabel
        Left = 475
        Top = 404
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1256.770833333333000000
          1068.916666666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30334#26085#21683
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel174: TQRLabel
        Left = 522
        Top = 403
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1381.125000000000000000
          1066.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel175: TQRLabel
        Left = 542
        Top = 404
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          1068.916666666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30333#21897
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel176: TQRLabel
        Left = 575
        Top = 403
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1521.354166666667000000
          1066.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel177: TQRLabel
        Left = 595
        Top = 404
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1574.270833333333000000
          1068.916666666667000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26032#29983#20799#30772#20260#39118
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel178: TQRLabel
        Left = 24
        Top = 424
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          63.500000000000000000
          1121.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel179: TQRLabel
        Left = 43
        Top = 425
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          113.770833333333300000
          1124.479166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29481#32418#28909
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel180: TQRLabel
        Left = 88
        Top = 424
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          232.833333333333300000
          1121.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel181: TQRLabel
        Left = 108
        Top = 425
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          285.750000000000000000
          1124.479166666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24067#40065#22763#33740#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel182: TQRLabel
        Left = 180
        Top = 424
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          476.250000000000000000
          1121.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel183: TQRLabel
        Left = 200
        Top = 425
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          529.166666666666700000
          1124.479166666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28107#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel184: TQRLabel
        Left = 233
        Top = 425
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          616.479166666666700000
          1124.479166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26757#27602#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel185: TQRLabel
        Left = 278
        Top = 424
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          735.541666666666700000
          1121.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel186: TQRLabel
        Left = 298
        Top = 425
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          788.458333333333300000
          1124.479166666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #8544#26399
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel187: TQRLabel
        Left = 331
        Top = 424
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          875.770833333333300000
          1121.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel188: TQRLabel
        Left = 350
        Top = 425
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          926.041666666666700000
          1124.479166666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #8545#26399
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel189: TQRLabel
        Left = 382
        Top = 424
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1010.708333333333000000
          1121.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel190: TQRLabel
        Left = 401
        Top = 425
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1060.979166666667000000
          1124.479166666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #8546#26399
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel191: TQRLabel
        Left = 433
        Top = 424
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1145.645833333333000000
          1121.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel192: TQRLabel
        Left = 452
        Top = 425
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1195.916666666667000000
          1124.479166666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32974#20256
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel193: TQRLabel
        Left = 484
        Top = 424
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1280.583333333333000000
          1121.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel194: TQRLabel
        Left = 503
        Top = 425
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1330.854166666667000000
          1124.479166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38544#24615#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel195: TQRLabel
        Left = 568
        Top = 425
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1502.833333333333000000
          1124.479166666667000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38057#31471#34746#26059#20307#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel196: TQRLabel
        Left = 551
        Top = 424
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1457.854166666667000000
          1121.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel197: TQRLabel
        Left = 24
        Top = 448
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          63.500000000000000000
          1185.333333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel198: TQRLabel
        Left = 43
        Top = 449
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          113.770833333333300000
          1187.979166666667000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #34880#21560#34411#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel199: TQRLabel
        Left = 105
        Top = 449
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          277.812500000000000000
          1187.979166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30111#30142#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel200: TQRLabel
        Left = 148
        Top = 448
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          391.583333333333300000
          1185.333333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel201: TQRLabel
        Left = 167
        Top = 449
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          441.854166666666700000
          1187.979166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38388#26085#30111
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel202: TQRLabel
        Left = 212
        Top = 448
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          560.916666666666700000
          1185.333333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel203: TQRLabel
        Left = 233
        Top = 449
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          616.479166666666700000
          1187.979166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24694#24615#30111
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel204: TQRLabel
        Left = 279
        Top = 448
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          738.187500000000000000
          1185.333333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel205: TQRLabel
        Left = 298
        Top = 449
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          788.458333333333300000
          1187.979166666667000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26410#20998#22411#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 470
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1243.541666666667000000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel206: TQRLabel
        Left = 12
        Top = 475
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1256.770833333333000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19993#31867#20256#26579#30149#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel207: TQRLabel
        Left = 102
        Top = 474
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          269.875000000000000000
          1254.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel208: TQRLabel
        Left = 122
        Top = 475
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          322.791666666666700000
          1256.770833333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#24863#20882
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel209: TQRLabel
        Left = 197
        Top = 474
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          521.229166666666700000
          1254.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel210: TQRLabel
        Left = 217
        Top = 475
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          574.145833333333300000
          1256.770833333333000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#33134#33146#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel211: TQRLabel
        Left = 303
        Top = 474
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          801.687500000000000000
          1254.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel212: TQRLabel
        Left = 323
        Top = 475
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          854.604166666666700000
          1256.770833333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39118#30137
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel213: TQRLabel
        Left = 357
        Top = 474
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          944.562500000000000000
          1254.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel214: TQRLabel
        Left = 377
        Top = 475
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          997.479166666666700000
          1256.770833333333000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24613#24615#20986#34880#24615#32467#33180#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel215: TQRLabel
        Left = 492
        Top = 474
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1301.750000000000000000
          1254.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel216: TQRLabel
        Left = 512
        Top = 475
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          1256.770833333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #40635#39118#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel217: TQRLabel
        Left = 24
        Top = 496
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          63.500000000000000000
          1312.333333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel218: TQRLabel
        Left = 44
        Top = 497
        Width = 144
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          1314.979166666667000000
          381.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#21644#22320#26041#24615#26001#30137#20260#23506
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel219: TQRLabel
        Left = 199
        Top = 496
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          526.520833333333300000
          1312.333333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel220: TQRLabel
        Left = 219
        Top = 497
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          579.437500000000000000
          1314.979166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #40657#28909#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel221: TQRLabel
        Left = 288
        Top = 496
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          762.000000000000000000
          1312.333333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel222: TQRLabel
        Left = 308
        Top = 497
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          814.916666666666700000
          1314.979166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21253#34411#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel223: TQRLabel
        Left = 361
        Top = 496
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          955.145833333333300000
          1312.333333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel224: TQRLabel
        Left = 381
        Top = 497
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1008.062500000000000000
          1314.979166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19997#34411#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel225: TQRLabel
        Left = 24
        Top = 518
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          63.500000000000000000
          1370.541666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel226: TQRLabel
        Left = 43
        Top = 520
        Width = 391
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          113.770833333333300000
          1375.833333333333000000
          1034.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38500#38669#20081#12289#32454#33740#24615#21644#38463#31859#24052#24615#30178#30142#12289#20260#23506#21644#21103#20260#23506#20197#22806#30340#24863#26579#24615#33145#27899#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 540
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1428.750000000000000000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel227: TQRLabel
        Left = 12
        Top = 547
        Width = 209
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1447.270833333333000000
          552.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20854#20182#27861#23450#31649#29702#21450#37325#28857#30417#27979#30340#20256#26579#30149#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 288
        Top = 518
        Width = 378
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          762.000000000000000000
          1370.541666666667000000
          1000.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'qtcrb'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 612
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1619.250000000000000000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel228: TQRLabel
        Left = 12
        Top = 617
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1632.479166666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35746#27491#30149#21517#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel229: TQRLabel
        Left = 12
        Top = 637
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1685.395833333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25253#21578#21333#20301#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel230: TQRLabel
        Left = 12
        Top = 658
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1740.958333333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25253#21578#21307#29983#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel231: TQRLabel
        Left = 12
        Top = 681
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1801.812500000000000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22791' '#27880#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel232: TQRLabel
        Left = 326
        Top = 617
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          1632.479166666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#21345#21407#22240#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel233: TQRLabel
        Left = 326
        Top = 637
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          1685.395833333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32852#31995#30005#35805#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel234: TQRLabel
        Left = 326
        Top = 658
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          1740.958333333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22635#21345#26085#26399#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 83
        Top = 617
        Width = 232
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          219.604166666666700000
          1632.479166666667000000
          613.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'dzbm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRDBText14: TQRDBText
        Left = 402
        Top = 617
        Width = 279
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1063.625000000000000000
          1632.479166666667000000
          738.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'tkyy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRDBText15: TQRDBText
        Left = 402
        Top = 637
        Width = 215
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1063.625000000000000000
          1685.395833333333000000
          568.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'lxdh1'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRDBText16: TQRDBText
        Left = 402
        Top = 658
        Width = 215
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1063.625000000000000000
          1740.958333333333000000
          568.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'tkrq1'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRDBText17: TQRDBText
        Left = 23
        Top = 701
        Width = 660
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          60.854166666666670000
          1854.729166666667000000
          1746.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'bz'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 677
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1791.229166666667000000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 440
        Top = 518
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1164.166666666667000000
          1370.541666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel235: TQRLabel
        Left = 461
        Top = 518
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1219.729166666667000000
          1370.541666666667000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25163#36275#21475#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel236: TQRLabel
        Left = 230
        Top = 547
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          608.541666666666700000
          1447.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel237: TQRLabel
        Left = 248
        Top = 547
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          656.166666666666700000
          1447.270833333333000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38750#28107#33740#24615#23615#36947#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel239: TQRLabel
        Left = 351
        Top = 547
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          928.687500000000000000
          1447.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel238: TQRLabel
        Left = 367
        Top = 547
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          971.020833333333300000
          1447.270833333333000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23574#38160#28287#30115
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel240: TQRLabel
        Left = 437
        Top = 547
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1156.229166666667000000
          1447.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel241: TQRLabel
        Left = 455
        Top = 547
        Width = 66
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1203.854166666667000000
          1447.270833333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29983#27542#22120#30129#30137
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel242: TQRLabel
        Left = 562
        Top = 547
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1486.958333333333000000
          1447.270833333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27700#30168
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel243: TQRLabel
        Left = 545
        Top = 547
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1441.979166666667000000
          1447.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel244: TQRLabel
        Left = 27
        Top = 568
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          71.437500000000000000
          1502.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel245: TQRLabel
        Left = 44
        Top = 568
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          116.416666666666700000
          1502.833333333333000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32925#21560#34411#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel246: TQRLabel
        Left = 109
        Top = 569
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          288.395833333333300000
          1505.479166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel247: TQRLabel
        Left = 126
        Top = 568
        Width = 131
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          333.375000000000000000
          1502.833333333333000000
          346.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29983#27542#36947#27801#30524#34915#21407#20307#24863#26579
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel248: TQRLabel
        Left = 263
        Top = 568
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          695.854166666666700000
          1502.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel249: TQRLabel
        Left = 284
        Top = 568
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          751.416666666666700000
          1502.833333333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24665#34411#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel251: TQRLabel
        Left = 334
        Top = 568
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          883.708333333333300000
          1502.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel252: TQRLabel
        Left = 351
        Top = 568
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          928.687500000000000000
          1502.833333333333000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26862#26519#33041#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel253: TQRLabel
        Left = 413
        Top = 568
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1092.729166666667000000
          1502.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel254: TQRLabel
        Left = 430
        Top = 568
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1137.708333333333000000
          1502.833333333333000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32467#26680#24615#33016#33180#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel255: TQRLabel
        Left = 520
        Top = 568
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1375.833333333333000000
          1502.833333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel256: TQRLabel
        Left = 536
        Top = 568
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          1502.833333333333000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#24863#26579#29482#38142#29699#33740
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel257: TQRLabel
        Left = 27
        Top = 590
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          71.437500000000000000
          1561.041666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel258: TQRLabel
        Left = 44
        Top = 590
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          116.416666666666700000
          1561.041666666667000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#31890#32454#32990#26080#24418#20307#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel259: TQRLabel
        Left = 157
        Top = 590
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          415.395833333333300000
          1561.041666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel260: TQRLabel
        Left = 173
        Top = 590
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          457.729166666666700000
          1561.041666666667000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19981#26126#21407#22240#32954#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel261: TQRLabel
        Left = 262
        Top = 590
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          693.208333333333300000
          1561.041666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel262: TQRLabel
        Left = 278
        Top = 590
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          735.541666666666700000
          1561.041666666667000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19981#26126#21407#22240
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel263: TQRLabel
        Left = 349
        Top = 590
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          923.395833333333300000
          1561.041666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel264: TQRLabel
        Left = 366
        Top = 590
        Width = 144
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          968.375000000000000000
          1561.041666666667000000
          381.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21457#28909#20276#34880#23567#26495#20943#23569#32508#21512#30151
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel265: TQRLabel
        Left = 520
        Top = 590
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1375.833333333333000000
          1561.041666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel266: TQRLabel
        Left = 536
        Top = 590
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          1561.041666666667000000
          58.208333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AFP'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel267: TQRLabel
        Left = 573
        Top = 590
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1516.062500000000000000
          1561.041666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel268: TQRLabel
        Left = 590
        Top = 590
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          1561.041666666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20854#23427
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel250: TQRLabel
        Left = 440
        Top = 497
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1164.166666666667000000
          1314.979166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel269: TQRLabel
        Left = 461
        Top = 497
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1219.729166666667000000
          1314.979166666667000000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30002#22411'H1N1 '#27969#24863
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel270: TQRLabel
        Left = 363
        Top = 449
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          960.437500000000000000
          1187.979166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel271: TQRLabel
        Left = 382
        Top = 449
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1010.708333333333000000
          1187.979166666667000000
          301.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#24863#26579'H7N9 '#31165#27969#24863
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel272: TQRLabel
        Left = 12
        Top = 69
        Width = 66
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          182.562500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24037#20316#21333#20301#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel273: TQRLabel
        Left = 376
        Top = 69
        Width = 66
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          994.833333333333300000
          182.562500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32852#31995#30005#35805#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 82
        Top = 69
        Width = 286
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          182.562500000000000000
          756.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry_xx
        DataField = 'gzdw'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRDBText13: TQRDBText
        Left = 447
        Top = 69
        Width = 162
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1182.687500000000000000
          182.562500000000000000
          428.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry_xx
        DataField = 'lxdh'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object qckrp2: TQuickRep
    Left = 70
    Top = 2000
    Width = 725
    Height = 930
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QryPrint
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      50.000000000000000000
      2460.625000000000000000
      50.000000000000000000
      1918.229166666667000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object qrbndPageHeaderBand1: TQRBand
      Left = 19
      Top = 19
      Width = 687
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        169.333333333333300000
        1817.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object qrlbl297: TQRLabel
        Left = 206
        Top = 11
        Width = 274
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          545.041666666666700000
          29.104166666666670000
          724.958333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #20013#21326#20154#27665#20849#21644#22269#20256#26579#30149#25253#21578#21345
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 16
      end
      object qrlbl298: TQRLabel
        Left = 15
        Top = 45
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          119.062500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21345#29255#32534#21495#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl299: TQRLabel
        Left = 369
        Top = 45
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          976.312500000000000000
          119.062500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25253#21345#31867#21035#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl300: TQRLabel
        Left = 443
        Top = 44
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333300000
          1172.104166666670000000
          116.416666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl301: TQRLabel
        Left = 462
        Top = 45
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1222.375000000000000000
          119.062500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1'#12289#21021#27425#25253#21578
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl302: TQRLabel
        Left = 544
        Top = 44
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1439.333333333333000000
          116.416666666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl303: TQRLabel
        Left = 563
        Top = 45
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1489.604166666667000000
          119.062500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2'#12289#35746#27491#25253#21578
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl304: TQRLabel
        Left = 81
        Top = 45
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          214.312500000000000000
          119.062500000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrlbl304'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object qrbndDetailBand1: TQRBand
      Left = 19
      Top = 83
      Width = 687
      Height = 806
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2132.541666666667000000
        1817.687500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object qrlbl305: TQRLabel
        Left = 209
        Top = 376
        Width = 196
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          552.979166666666700000
          994.833333333333300000
          518.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33406#28363#30149'(    '#33406#28363#30149#30149#20154'    HIV)'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl306: TQRLabel
        Left = 12
        Top = 7
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          18.520833333333330000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24739#32773#22995#21517'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxthzxm1: TQRDBText
        Left = 82
        Top = 8
        Width = 94
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          216.958333333333000000
          21.166666666666700000
          248.708333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'hzxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrlbl307: TQRLabel
        Left = 180
        Top = 8
        Width = 217
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          21.166666666666670000
          574.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #65288#24739#20799#23478#38271#22995#21517'                '#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtjzxm1: TQRDBText
        Left = 275
        Top = 8
        Width = 104
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          727.604166666667000000
          21.166666666666700000
          275.166666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'jzxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrlbl308: TQRLabel
        Left = 12
        Top = 29
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          76.729166666666670000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26377#25928#35777#20214#21495'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl309: TQRLabel
        Left = 93
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          246.062500000000000000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl310: TQRLabel
        Left = 112
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          296.333333333333300000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl311: TQRLabel
        Left = 131
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          346.604166666666700000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl312: TQRLabel
        Left = 151
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          399.520833333333300000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl313: TQRLabel
        Left = 170
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          449.791666666666700000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl314: TQRLabel
        Left = 189
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          500.062500000000000000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl315: TQRLabel
        Left = 208
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          550.333333333333300000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl316: TQRLabel
        Left = 227
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          600.604166666666700000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl317: TQRLabel
        Left = 246
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          650.875000000000000000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl318: TQRLabel
        Left = 266
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          703.791666666666700000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl319: TQRLabel
        Left = 285
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          754.062500000000000000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl320: TQRLabel
        Left = 304
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          804.333333333333300000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl321: TQRLabel
        Left = 323
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          854.604166666666700000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl322: TQRLabel
        Left = 342
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          904.875000000000000000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl323: TQRLabel
        Left = 361
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          955.145833333333300000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl324: TQRLabel
        Left = 381
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1008.062500000000000000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl325: TQRLabel
        Left = 400
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1058.333333333333000000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl326: TQRLabel
        Left = 419
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1108.604166666667000000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '1'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl327: TQRLabel
        Left = 447
        Top = 29
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1182.687500000000000000
          76.729166666666670000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24615#21035'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl328: TQRLabel
        Left = 492
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1301.750000000000000000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl329: TQRLabel
        Left = 511
        Top = 30
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1352.020833333333000000
          79.375000000000000000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30007
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl330: TQRLabel
        Left = 533
        Top = 29
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1410.229166666667000000
          76.729166666666670000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl331: TQRLabel
        Left = 554
        Top = 30
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1465.791666666667000000
          79.375000000000000000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22899
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl332: TQRLabel
        Left = 12
        Top = 48
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          127.000000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20986#29983#26085#26399'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtcsrq2: TQRDBText
        Left = 82
        Top = 48
        Width = 152
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          216.958333333333000000
          127.000000000000000000
          402.166666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'csrq1'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrlbl333: TQRLabel
        Left = 237
        Top = 48
        Width = 437
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          627.062500000000000000
          127.000000000000000000
          1156.229166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '('#22914#20986#29983#26085#26399#19981#31077','#23454#36275#24180#40836':           '#24180#40836#21333#20301#65306'    '#23681'    '#26376'    '#22825')'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtnl1: TQRDBText
        Left = 398
        Top = 48
        Width = 76
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1053.041666666667000000
          127.000000000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'nl'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrlbl334: TQRLabel
        Left = 12
        Top = 90
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          238.125000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#20154#23646#20110'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl335: TQRLabel
        Left = 82
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl336: TQRLabel
        Left = 101
        Top = 91
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          267.229166666666700000
          240.770833333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26412#21439#21306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl337: TQRLabel
        Left = 154
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          407.458333333333300000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl338: TQRLabel
        Left = 173
        Top = 91
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          457.729166666666700000
          240.770833333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26412#24066#20854#20182#21439#21306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl339: TQRLabel
        Left = 266
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          703.791666666666700000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl340: TQRLabel
        Left = 285
        Top = 91
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          754.062500000000000000
          240.770833333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26412#30465#20854#20182#22478#24066
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl341: TQRLabel
        Left = 374
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          989.541666666666700000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl342: TQRLabel
        Left = 393
        Top = 91
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1039.812500000000000000
          240.770833333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22806#30465
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl343: TQRLabel
        Left = 429
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1135.062500000000000000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl344: TQRLabel
        Left = 448
        Top = 91
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1185.333333333333000000
          240.770833333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28207#28595#21488
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl345: TQRLabel
        Left = 494
        Top = 90
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1307.041666666667000000
          238.125000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl346: TQRLabel
        Left = 514
        Top = 91
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1359.958333333333000000
          240.770833333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22806#31821
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl347: TQRLabel
        Left = 12
        Top = 134
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          354.541666666666700000
          296.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29616#20303#22336#65288#35814#22635#65289'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtxzdzmc1: TQRDBText
        Left = 124
        Top = 136
        Width = 50
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          328.083333333333300000
          359.833333333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'sf'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl348: TQRLabel
        Left = 12
        Top = 153
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          404.812500000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24739#32773#32844#19994'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl349: TQRLabel
        Left = 12
        Top = 171
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          452.437500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl350: TQRLabel
        Left = 34
        Top = 172
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          455.083333333333300000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24188#25176#20799#31461
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl351: TQRLabel
        Left = 93
        Top = 171
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          246.062500000000000000
          452.437500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl352: TQRLabel
        Left = 112
        Top = 172
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          296.333333333333300000
          455.083333333333300000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25955#23621#20799#31461
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl353: TQRLabel
        Left = 171
        Top = 171
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          452.437500000000000000
          452.437500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl354: TQRLabel
        Left = 190
        Top = 172
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          502.708333333333300000
          455.083333333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23398#29983#65288#22823#20013#23567#23398#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl355: TQRLabel
        Left = 301
        Top = 171
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          796.395833333333300000
          452.437500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl356: TQRLabel
        Left = 320
        Top = 172
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          846.666666666666700000
          455.083333333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25945#24072
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl357: TQRLabel
        Left = 355
        Top = 171
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          939.270833333333300000
          452.437500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl358: TQRLabel
        Left = 374
        Top = 172
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          989.541666666666700000
          455.083333333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20445#32946#21592#21450#20445#22982
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl359: TQRLabel
        Left = 460
        Top = 171
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1217.083333333333000000
          452.437500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl360: TQRLabel
        Left = 479
        Top = 172
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1267.354166666667000000
          455.083333333333300000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39184#39278#39135#21697#19994
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl361: TQRLabel
        Left = 12
        Top = 193
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          510.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl362: TQRLabel
        Left = 33
        Top = 195
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          87.312500000000000000
          515.937500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21830#19994#26381#21153
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl363: TQRLabel
        Left = 93
        Top = 193
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          246.062500000000000000
          510.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl364: TQRLabel
        Left = 112
        Top = 195
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          296.333333333333300000
          515.937500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#21153#20154#21592
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl365: TQRLabel
        Left = 171
        Top = 193
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          452.437500000000000000
          510.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl366: TQRLabel
        Left = 190
        Top = 195
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          502.708333333333300000
          515.937500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24037#20154
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl367: TQRLabel
        Left = 227
        Top = 193
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          600.604166666666700000
          510.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl368: TQRLabel
        Left = 246
        Top = 195
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          650.875000000000000000
          515.937500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27665#24037
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl369: TQRLabel
        Left = 281
        Top = 193
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          743.479166666666700000
          510.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl370: TQRLabel
        Left = 300
        Top = 195
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          793.750000000000000000
          515.937500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20892#27665
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl371: TQRLabel
        Left = 336
        Top = 193
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          889.000000000000000000
          510.645833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl372: TQRLabel
        Left = 355
        Top = 195
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          939.270833333333300000
          515.937500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29287#27665
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl373: TQRLabel
        Left = 389
        Top = 194
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1029.229166666667000000
          513.291666666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl374: TQRLabel
        Left = 410
        Top = 195
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1084.791666666667000000
          515.937500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28180#65288#33337#65289#27665
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl375: TQRLabel
        Left = 491
        Top = 197
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1299.104166666667000000
          521.229166666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl376: TQRLabel
        Left = 511
        Top = 195
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1352.020833333333000000
          515.937500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24178#37096#32844#21592
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl377: TQRLabel
        Left = 12
        Top = 214
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          566.208333333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl378: TQRLabel
        Left = 32
        Top = 216
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          571.500000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31163#36864#20154#21592
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl379: TQRLabel
        Left = 92
        Top = 214
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          243.416666666666700000
          566.208333333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl380: TQRLabel
        Left = 114
        Top = 216
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          301.625000000000000000
          571.500000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #23478#21153#21450#24453#19994
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl381: TQRLabel
        Left = 185
        Top = 214
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          489.479166666666700000
          566.208333333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl382: TQRLabel
        Left = 204
        Top = 216
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          539.750000000000000000
          571.500000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20854#20182
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl383: TQRLabel
        Left = 367
        Top = 214
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          971.020833333333300000
          566.208333333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl384: TQRLabel
        Left = 386
        Top = 216
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1021.291666666667000000
          571.500000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19981#31077
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl385: TQRLabel
        Left = 237
        Top = 215
        Width = 125
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          627.062500000000000000
          568.854166666666700000
          330.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #65288'              '#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtqtzy1: TQRDBText
        Left = 250
        Top = 216
        Width = 95
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          661.458333333333300000
          571.500000000000000000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'qtzy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrlbl386: TQRLabel
        Left = 12
        Top = 236
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          624.416666666666700000
          280.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#20363#20998#31867'*'#65306#65288'1'#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl387: TQRLabel
        Left = 123
        Top = 235
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          325.437500000000000000
          621.770833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl388: TQRLabel
        Left = 143
        Top = 237
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          627.062500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30097#20284#30149#20363
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl389: TQRLabel
        Left = 202
        Top = 235
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          534.458333333333300000
          621.770833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl390: TQRLabel
        Left = 221
        Top = 237
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          584.729166666666700000
          627.062500000000000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20020#24202#35786#26029#30149#20363
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl391: TQRLabel
        Left = 313
        Top = 235
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          828.145833333333300000
          621.770833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl392: TQRLabel
        Left = 332
        Top = 237
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          878.416666666666700000
          627.062500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30830#35786#30149#20363
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl393: TQRLabel
        Left = 395
        Top = 235
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1045.104166666667000000
          621.770833333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl394: TQRLabel
        Left = 414
        Top = 237
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1095.375000000000000000
          627.062500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#21407#25658#24102#32773
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl395: TQRLabel
        Left = 85
        Top = 257
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          224.895833333333300000
          679.979166666666700000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #65288'2'#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl396: TQRLabel
        Left = 123
        Top = 255
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          325.437500000000000000
          674.687500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl397: TQRLabel
        Left = 143
        Top = 257
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          679.979166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24613#24615
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl398: TQRLabel
        Left = 202
        Top = 255
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          534.458333333333300000
          674.687500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl399: TQRLabel
        Left = 221
        Top = 257
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          584.729166666666700000
          679.979166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24930#24615
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl400: TQRLabel
        Left = 253
        Top = 257
        Width = 235
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          669.395833333333300000
          679.979166666666700000
          621.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #65288#20057#22411#32925#28814#12289#19993#22411#32925#28814#12289#34880#21560#34411#30149#22635#20889#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl401: TQRLabel
        Left = 12
        Top = 275
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          727.604166666666700000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21457#30149#26085#26399'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl402: TQRLabel
        Left = 12
        Top = 294
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          777.875000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35786#26029#26085#26399'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl403: TQRLabel
        Left = 12
        Top = 313
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          828.145833333333300000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27515#20129#26085#26399#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtfbrq2: TQRDBText
        Left = 82
        Top = 275
        Width = 289
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          727.604166666666700000
          764.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'fbrq1'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrdbtxtzdrq2: TQRDBText
        Left = 82
        Top = 294
        Width = 289
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          777.875000000000000000
          764.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'zdrq1'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrlbl404: TQRLabel
        Left = 375
        Top = 275
        Width = 222
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          727.604166666666700000
          587.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #65288#30149#21407#25658#24102#32773#22635#21021#26816#26085#26399#25110#23601#35786#26102#38388#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrshp8: TQRShape
        Left = 0
        Top = 332
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          878.416666666666700000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrlbl405: TQRLabel
        Left = 12
        Top = 335
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          886.354166666666700000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30002#31867#20256#26579#30149'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl406: TQRLabel
        Left = 97
        Top = 335
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          256.645833333333300000
          886.354166666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl407: TQRLabel
        Left = 117
        Top = 335
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          309.562500000000000000
          886.354166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #40736#30123
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl408: TQRLabel
        Left = 164
        Top = 335
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          433.916666666666700000
          886.354166666666700000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl409: TQRLabel
        Left = 183
        Top = 335
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          484.187500000000000000
          886.354166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38669#20081
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrshp9: TQRShape
        Left = 0
        Top = 354
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          936.625000000000000000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrlbl410: TQRLabel
        Left = 12
        Top = 357
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          944.562500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20057#31867#20256#26579#30149'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl411: TQRLabel
        Left = 12
        Top = 375
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          992.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl412: TQRLabel
        Left = 32
        Top = 376
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          994.833333333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20256#26579#24615#38750#20856#22411#32954#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl413: TQRLabel
        Left = 263
        Top = 376
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          695.854166666666700000
          994.833333333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl414: TQRLabel
        Left = 443
        Top = 375
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1172.104166666667000000
          992.187500000000000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#27602#24615#32925#28814#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl415: TQRLabel
        Left = 529
        Top = 375
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1399.645833333333000000
          992.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl416: TQRLabel
        Left = 546
        Top = 376
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          994.833333333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30002#22411
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl417: TQRLabel
        Left = 579
        Top = 375
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1531.937500000000000000
          992.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl418: TQRLabel
        Left = 597
        Top = 376
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1579.562500000000000000
          994.833333333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20057#22411
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl419: TQRLabel
        Left = 629
        Top = 375
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1664.229166666667000000
          992.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl420: TQRLabel
        Left = 647
        Top = 376
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1711.854166666667000000
          994.833333333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19993#22411
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl421: TQRLabel
        Left = 12
        Top = 395
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          1045.104166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl422: TQRLabel
        Left = 32
        Top = 396
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          1047.750000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25098#22411
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl423: TQRLabel
        Left = 65
        Top = 395
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          171.979166666666700000
          1045.104166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl424: TQRLabel
        Left = 83
        Top = 396
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          219.604166666666700000
          1047.750000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26410#20998#22411#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl425: TQRLabel
        Left = 153
        Top = 396
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          404.812500000000000000
          1047.750000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl426: TQRLabel
        Left = 174
        Top = 396
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          460.375000000000000000
          1047.750000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33034#39635#28784#36136#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl427: TQRLabel
        Left = 260
        Top = 396
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          687.916666666666700000
          1047.750000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl428: TQRLabel
        Left = 280
        Top = 396
        Width = 131
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          740.833333333333300000
          1047.750000000000000000
          346.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#24863#26579#39640#33268#30149#24615#31165#27969#24863
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl429: TQRLabel
        Left = 429
        Top = 396
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1135.062500000000000000
          1047.750000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl430: TQRLabel
        Left = 449
        Top = 396
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1187.979166666667000000
          1047.750000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #40635#30137
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl431: TQRLabel
        Left = 496
        Top = 396
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1312.333333333333000000
          1047.750000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl432: TQRLabel
        Left = 516
        Top = 396
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1365.250000000000000000
          1047.750000000000000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#20986#34880#28909
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl433: TQRLabel
        Left = 616
        Top = 396
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1629.833333333333000000
          1047.750000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl434: TQRLabel
        Left = 634
        Top = 396
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1677.458333333333000000
          1047.750000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29378#29356#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl435: TQRLabel
        Left = 12
        Top = 416
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          1100.666666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl436: TQRLabel
        Left = 32
        Top = 417
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          1103.312500000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#20057#22411#33041#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl437: TQRLabel
        Left = 153
        Top = 416
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          404.812500000000000000
          1100.666666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl438: TQRLabel
        Left = 172
        Top = 417
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          455.083333333333300000
          1103.312500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30331#38761#28909
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl439: TQRLabel
        Left = 244
        Top = 417
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          645.583333333333300000
          1103.312500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28845#30141#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl440: TQRLabel
        Left = 291
        Top = 416
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          769.937500000000000000
          1100.666666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl441: TQRLabel
        Left = 311
        Top = 417
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          822.854166666666700000
          1103.312500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32954#28845#30141
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl442: TQRLabel
        Left = 359
        Top = 416
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          949.854166666666700000
          1100.666666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl443: TQRLabel
        Left = 378
        Top = 417
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          1103.312500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30382#32932#28845#30141
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl444: TQRLabel
        Left = 437
        Top = 416
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1156.229166666667000000
          1100.666666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl445: TQRLabel
        Left = 456
        Top = 417
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          1103.312500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26410#20998#22411#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl446: TQRLabel
        Left = 574
        Top = 417
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1518.708333333333000000
          1103.312500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30178#30142#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl447: TQRLabel
        Left = 617
        Top = 416
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1632.479166666667000000
          1100.666666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl448: TQRLabel
        Left = 634
        Top = 417
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1677.458333333333000000
          1103.312500000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32454#33740#24615
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl449: TQRLabel
        Left = 12
        Top = 437
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          1156.229166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl450: TQRLabel
        Left = 31
        Top = 436
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          82.020833333333330000
          1153.583333333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38463#31859#24052#24615#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl451: TQRLabel
        Left = 148
        Top = 436
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          391.583333333333300000
          1153.583333333333000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32954#32467#26680#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl452: TQRLabel
        Left = 203
        Top = 437
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          537.104166666666700000
          1156.229166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl453: TQRLabel
        Left = 223
        Top = 436
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          590.020833333333300000
          1153.583333333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28034#38451
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl454: TQRLabel
        Left = 263
        Top = 437
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          695.854166666666700000
          1156.229166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl455: TQRLabel
        Left = 282
        Top = 436
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          746.125000000000000000
          1153.583333333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20165#38506#38451
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl456: TQRLabel
        Left = 334
        Top = 437
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          883.708333333333300000
          1156.229166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl457: TQRLabel
        Left = 353
        Top = 436
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          933.979166666666700000
          1153.583333333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #33740#38452
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl458: TQRLabel
        Left = 389
        Top = 437
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1029.229166666667000000
          1156.229166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl459: TQRLabel
        Left = 409
        Top = 436
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1082.145833333333000000
          1153.583333333333000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26410#30192#26816#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl460: TQRLabel
        Left = 504
        Top = 436
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          1153.583333333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20260#23506#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl461: TQRLabel
        Left = 552
        Top = 437
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1460.500000000000000000
          1156.229166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl462: TQRLabel
        Left = 571
        Top = 436
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1510.770833333333000000
          1153.583333333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20260#23506
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl463: TQRLabel
        Left = 604
        Top = 437
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1598.083333333333000000
          1156.229166666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl464: TQRLabel
        Left = 621
        Top = 436
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1643.062500000000000000
          1153.583333333333000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21103#20260#23506#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl465: TQRLabel
        Left = 12
        Top = 458
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          1211.791666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl466: TQRLabel
        Left = 32
        Top = 457
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          1209.145833333333000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#33041#33034#39635#33180#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl467: TQRLabel
        Left = 156
        Top = 458
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          412.750000000000000000
          1211.791666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl468: TQRLabel
        Left = 177
        Top = 457
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          468.312500000000000000
          1209.145833333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30334#26085#21683
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl469: TQRLabel
        Left = 240
        Top = 458
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          635.000000000000000000
          1211.791666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl470: TQRLabel
        Left = 262
        Top = 457
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          693.208333333333300000
          1209.145833333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30333#21897
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl471: TQRLabel
        Left = 312
        Top = 458
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          825.500000000000000000
          1211.791666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl472: TQRLabel
        Left = 332
        Top = 457
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          878.416666666666700000
          1209.145833333333000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26032#29983#20799#30772#20260#39118
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl473: TQRLabel
        Left = 434
        Top = 458
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1148.291666666667000000
          1211.791666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl474: TQRLabel
        Left = 455
        Top = 457
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1203.854166666667000000
          1209.145833333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #29481#32418#28909
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl475: TQRLabel
        Left = 516
        Top = 458
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1365.250000000000000000
          1211.791666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl476: TQRLabel
        Left = 537
        Top = 457
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1420.812500000000000000
          1209.145833333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24067#40065#22763#33740#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl477: TQRLabel
        Left = 624
        Top = 458
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1651.000000000000000000
          1211.791666666667000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl478: TQRLabel
        Left = 647
        Top = 457
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1711.854166666667000000
          1209.145833333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28107#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl479: TQRLabel
        Left = 12
        Top = 478
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1264.708333333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26757#27602#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl480: TQRLabel
        Left = 59
        Top = 477
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          156.104166666666700000
          1262.062500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl481: TQRLabel
        Left = 77
        Top = 478
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          1264.708333333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #8544#26399
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl482: TQRLabel
        Left = 110
        Top = 477
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          291.041666666666700000
          1262.062500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl483: TQRLabel
        Left = 129
        Top = 478
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          341.312500000000000000
          1264.708333333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #8545#26399
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl484: TQRLabel
        Left = 161
        Top = 477
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          425.979166666666700000
          1262.062500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl485: TQRLabel
        Left = 180
        Top = 478
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          1264.708333333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #8546#26399
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl486: TQRLabel
        Left = 212
        Top = 477
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          560.916666666666700000
          1262.062500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl487: TQRLabel
        Left = 231
        Top = 478
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          611.187500000000000000
          1264.708333333333000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32974#20256
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl488: TQRLabel
        Left = 263
        Top = 477
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          695.854166666666700000
          1262.062500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl489: TQRLabel
        Left = 282
        Top = 478
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          746.125000000000000000
          1264.708333333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38544#24615#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl490: TQRLabel
        Left = 375
        Top = 478
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          992.187500000000000000
          1264.708333333333000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38057#31471#34746#26059#20307#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl491: TQRLabel
        Left = 358
        Top = 477
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          947.208333333333300000
          1262.062500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl492: TQRLabel
        Left = 504
        Top = 478
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          1264.708333333333000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #34880#21560#34411#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl493: TQRLabel
        Left = 12
        Top = 499
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1320.270833333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30111#30142#65288
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl494: TQRLabel
        Left = 55
        Top = 498
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          145.520833333333300000
          1317.625000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl495: TQRLabel
        Left = 74
        Top = 499
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          195.791666666666700000
          1320.270833333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38388#26085#30111
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl496: TQRLabel
        Left = 126
        Top = 498
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          333.375000000000000000
          1317.625000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl497: TQRLabel
        Left = 147
        Top = 499
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          388.937500000000000000
          1320.270833333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24694#24615#30111
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl498: TQRLabel
        Left = 202
        Top = 499
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          534.458333333333300000
          1320.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl499: TQRLabel
        Left = 221
        Top = 499
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          584.729166666666700000
          1320.270833333333000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26410#20998#22411#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrshp10: TQRShape
        Left = 0
        Top = 578
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1529.291666666667000000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrlbl500: TQRLabel
        Left = 12
        Top = 583
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1542.520833333333000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19993#31867#20256#26579#30149'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl501: TQRLabel
        Left = 108
        Top = 582
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          285.750000000000000000
          1539.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl502: TQRLabel
        Left = 132
        Top = 583
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          349.250000000000000000
          1542.520833333333000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#24863#20882
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl503: TQRLabel
        Left = 235
        Top = 582
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          621.770833333333300000
          1539.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl504: TQRLabel
        Left = 262
        Top = 583
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          693.208333333333300000
          1542.520833333333000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#33134#33146#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl505: TQRLabel
        Left = 371
        Top = 582
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          981.604166666666700000
          1539.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl506: TQRLabel
        Left = 396
        Top = 581
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1047.750000000000000000
          1537.229166666667000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39118#30137
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl507: TQRLabel
        Left = 452
        Top = 582
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1195.916666666667000000
          1539.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl508: TQRLabel
        Left = 475
        Top = 583
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1256.770833333333000000
          1542.520833333333000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24613#24615#20986#34880#24615#32467#33180#28814
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl509: TQRLabel
        Left = 609
        Top = 582
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1611.312500000000000000
          1539.875000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl510: TQRLabel
        Left = 634
        Top = 583
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1677.458333333333000000
          1542.520833333333000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #40635#39118#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl511: TQRLabel
        Left = 483
        Top = 478
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1277.937500000000000000
          1264.708333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl512: TQRLabel
        Left = 34
        Top = 605
        Width = 144
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          89.958333333333330000
          1600.729166666667000000
          381.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #27969#34892#24615#21644#22320#26041#24615#26001#30137#20260#23506
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl513: TQRLabel
        Left = 203
        Top = 604
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          537.104166666666700000
          1598.083333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl514: TQRLabel
        Left = 226
        Top = 605
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          597.958333333333300000
          1600.729166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #40657#28909#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl515: TQRLabel
        Left = 297
        Top = 604
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          785.812500000000000000
          1598.083333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl516: TQRLabel
        Left = 319
        Top = 605
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          844.020833333333300000
          1600.729166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21253#34411#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl517: TQRLabel
        Left = 388
        Top = 604
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1026.583333333333000000
          1598.083333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl518: TQRLabel
        Left = 412
        Top = 605
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1090.083333333333000000
          1600.729166666667000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #19997#34411#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl520: TQRLabel
        Left = 504
        Top = 606
        Width = 170
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          1603.375000000000000000
          449.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38500#38669#20081#12289#32454#33740#24615#21644#38463#31859#24052#24615#30178
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrshp11: TQRShape
        Left = 0
        Top = 648
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1714.500000000000000000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrlbl521: TQRLabel
        Left = 12
        Top = 655
        Width = 209
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1733.020833333333000000
          552.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20854#20182#27861#23450#31649#29702#21450#37325#28857#30417#27979#30340#20256#26579#30149#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtqtcrb1: TQRDBText
        Left = 227
        Top = 655
        Width = 378
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          600.604166666666700000
          1733.020833333333000000
          1000.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'qtcrb'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrshp12: TQRShape
        Left = 0
        Top = 675
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1785.937500000000000000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrlbl522: TQRLabel
        Left = 12
        Top = 684
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1809.750000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #35746#27491#30149#21517#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl523: TQRLabel
        Left = 12
        Top = 704
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1862.666666666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25253#21578#21333#20301#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl524: TQRLabel
        Left = 12
        Top = 725
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1918.229166666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25253#21578#21307#29983#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl525: TQRLabel
        Left = 12
        Top = 748
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1979.083333333333000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22791' '#27880#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl526: TQRLabel
        Left = 326
        Top = 684
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          1809.750000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36864#21345#21407#22240#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl527: TQRLabel
        Left = 326
        Top = 704
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          1862.666666666667000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32852#31995#30005#35805#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl528: TQRLabel
        Left = 326
        Top = 725
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          862.541666666666700000
          1918.229166666667000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22635#21345#26085#26399'*'#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtdzbm1: TQRDBText
        Left = 83
        Top = 684
        Width = 232
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          219.604166666666700000
          1809.750000000000000000
          613.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'dzbm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrdbtxttkyy1: TQRDBText
        Left = 402
        Top = 684
        Width = 279
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1063.625000000000000000
          1809.750000000000000000
          738.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'tkyy'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrdbtxtlxdh7: TQRDBText
        Left = 402
        Top = 704
        Width = 215
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1063.625000000000000000
          1862.666666666667000000
          568.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'lxdh1'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrdbtxttkrq2: TQRDBText
        Left = 402
        Top = 725
        Width = 215
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1063.625000000000000000
          1918.229166666667000000
          568.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'tkrq1'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrdbtxtbz1: TQRDBText
        Left = 65
        Top = 749
        Width = 618
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          171.979166666666700000
          1981.729166666667000000
          1635.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'bz'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrshp13: TQRShape
        Left = 0
        Top = 744
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          1968.500000000000000000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrlbl529: TQRLabel
        Left = 269
        Top = 627
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          711.729166666666700000
          1658.937500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl530: TQRLabel
        Left = 292
        Top = 627
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          772.583333333333300000
          1658.937500000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25163#36275#21475#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl531: TQRLabel
        Left = 302
        Top = 499
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          799.041666666666700000
          1320.270833333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl532: TQRLabel
        Left = 323
        Top = 499
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          854.604166666666700000
          1320.270833333333000000
          301.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20154#24863#26579'H7N9 '#31165#27969#24863
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl533: TQRLabel
        Left = 12
        Top = 69
        Width = 66
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          182.562500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24037#20316#21333#20301#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl534: TQRLabel
        Left = 376
        Top = 69
        Width = 66
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          994.833333333333300000
          182.562500000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32852#31995#30005#35805#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtgzdw1: TQRDBText
        Left = 82
        Top = 69
        Width = 286
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          216.958333333333300000
          182.562500000000000000
          756.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry_xx
        DataField = 'gzdw'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrdbtxtlxdh8: TQRDBText
        Left = 447
        Top = 69
        Width = 162
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1182.687500000000000000
          182.562500000000000000
          428.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry_xx
        DataField = 'lxdh'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl274: TQRLabel
        Left = 547
        Top = 48
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1447.270833333333000000
          127.000000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl275: TQRLabel
        Left = 592
        Top = 48
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1566.333333333333000000
          127.000000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl276: TQRLabel
        Left = 633
        Top = 48
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1674.812500000000000000
          127.000000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrshp7: TQRShape
        Left = 0
        Top = 769
        Width = 687
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          2034.645833333333000000
          1817.687500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrlbl278: TQRLabel
        Left = 425
        Top = 778
        Width = 211
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1124.479166666667000000
          2058.458333333333000000
          558.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #28246#21271#30465#30142#30149#39044#38450#25511#21046#20013#24515'2015'#24180#21360#21047
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl277: TQRLabel
        Left = 12
        Top = 112
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          296.333333333333300000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22659#22806#36755#20837#30149#20363#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl279: TQRLabel
        Left = 122
        Top = 114
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          37.041666666666670000
          322.791666666666700000
          301.625000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl280: TQRLabel
        Left = 171
        Top = 114
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          37.041666666666670000
          452.437500000000000000
          301.625000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl281: TQRLabel
        Left = 147
        Top = 114
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          388.937500000000000000
          301.625000000000000000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26159
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl282: TQRLabel
        Left = 194
        Top = 114
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          513.291666666666700000
          301.625000000000000000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21542
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl283: TQRLabel
        Left = 229
        Top = 112
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          605.895833333333300000
          296.333333333333300000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #36755#20837#22320#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtlxdh2: TQRDBText
        Left = 288
        Top = 114
        Width = 162
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          762.000000000000000000
          301.625000000000000000
          428.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qry_xx
        DataField = 'jwsrdz'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl284: TQRLabel
        Left = 352
        Top = 376
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          931.333333333333300000
          994.833333333333300000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl285: TQRLabel
        Left = 12
        Top = 522
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1381.125000000000000000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20057#32925#22635#20889#38468#34920#65306
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl286: TQRLabel
        Left = 129
        Top = 522
        Width = 543
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          341.312500000000000000
          1381.125000000000000000
          1436.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20057#32925#39318#27425#21457#30149#26102#38388'         '#24180#65292#25110#39318#27425#26816#27979#20986#20057#32925#34920#38754#25239#21407#38451#24615#26102#38388'         '#24180#65307#26412#27425#26816#27979
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl287: TQRLabel
        Left = 12
        Top = 540
        Width = 656
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1428.750000000000000000
          1735.666666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          #32467#26524#65306'HBsAg'#65306'     '#38451#24615'      '#38452#24615'      '#26410#26597#65307#25239'HBclgM:      '#38451#24615'      '#38452#24615'     '#26410#26597 +
          #65307'ALT'#65288#35895#19993#36716#27688
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl288: TQRLabel
        Left = 12
        Top = 559
        Width = 303
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1479.020833333333000000
          801.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #37238#65289#65306'        '#65292'AST'#65288#35895#33609#36716#27688#37238#65289#65306'        '#12290
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl289: TQRLabel
        Left = 172
        Top = 537
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          455.083333333333300000
          1420.812500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl290: TQRLabel
        Left = 108
        Top = 537
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          285.750000000000000000
          1420.812500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl291: TQRLabel
        Left = 243
        Top = 537
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          642.937500000000000000
          1420.812500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl292: TQRLabel
        Left = 385
        Top = 537
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1018.645833333333000000
          1420.812500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl293: TQRLabel
        Left = 450
        Top = 537
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1190.625000000000000000
          1420.812500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl294: TQRLabel
        Left = 515
        Top = 537
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1362.604166666667000000
          1420.812500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtlxdh3: TQRDBText
        Left = 239
        Top = 557
        Width = 59
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          632.354166666666700000
          1473.729166666667000000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'ast_jg'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrdbtxtlxdh4: TQRDBText
        Left = 46
        Top = 557
        Width = 59
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          121.708333333333300000
          1473.729166666667000000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'alt_jg'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrdbtxtlxdh5: TQRDBText
        Left = 238
        Top = 519
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          629.708333333333300000
          1373.187500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'yg_fbsj'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrdbtxtlxdh6: TQRDBText
        Left = 537
        Top = 519
        Width = 54
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1420.812500000000000000
          1373.187500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'yg_jcsj'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrlbl295: TQRLabel
        Left = 12
        Top = 604
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          31.750000000000000000
          1598.083333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl296: TQRLabel
        Left = 12
        Top = 627
        Width = 222
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          1658.937500000000000000
          587.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30142#12289#20260#23506#21644#21103#20260#23506#20197#22806#30340#24863#26579#24615#33145#27899#30149
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl1: TQRLabel
        Left = 473
        Top = 604
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          1251.479166666667000000
          1598.083333333333000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = #8730
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl2: TQRLabel
        Left = 174
        Top = 136
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          460.375000000000000000
          359.833333333333300000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30465
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl3: TQRLabel
        Left = 235
        Top = 136
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          621.770833333333300000
          359.833333333333300000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24066
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl4: TQRLabel
        Left = 305
        Top = 136
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          806.979166666666700000
          359.833333333333300000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21439#65288#21306#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl5: TQRLabel
        Left = 426
        Top = 136
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1127.125000000000000000
          359.833333333333300000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20065#65288#38215#12289#34903#36947#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl6: TQRLabel
        Left = 571
        Top = 136
        Width = 14
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1510.770833333333000000
          359.833333333333300000
          37.041666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26449
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl7: TQRLabel
        Left = 613
        Top = 136
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1621.895833333333000000
          359.833333333333300000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #65288#38376#29260#21495#65289
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtxzdzmc: TQRDBText
        Left = 189
        Top = 136
        Width = 45
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          500.062500000000000000
          359.833333333333300000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'sq'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtxzdzmc2: TQRDBText
        Left = 252
        Top = 136
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          666.750000000000000000
          359.833333333333300000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'xc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtxzdzmc3: TQRDBText
        Left = 360
        Top = 136
        Width = 66
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          952.500000000000000000
          359.833333333333300000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'xz'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtxzdzmc4: TQRDBText
        Left = 518
        Top = 136
        Width = 52
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1370.541666666667000000
          359.833333333333300000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'cz'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrdbtxtxzdzmc5: TQRDBText
        Left = 585
        Top = 136
        Width = 28
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1547.812500000000000000
          359.833333333333300000
          74.083333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QryPrint
        DataField = 'mph'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl8: TQRLabel
        Left = 82
        Top = 313
        Width = 289
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          216.958333333333300000
          828.145833333333300000
          764.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl9: TQRLabel
        Left = 83
        Top = 704
        Width = 232
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          219.604166666666700000
          1862.666666666667000000
          613.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlbl9'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlbl10: TQRLabel
        Left = 83
        Top = 725
        Width = 232
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          219.604166666666700000
          1918.229166666667000000
          613.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlbl10'
        Color = clWhite
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object ADOInsert: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = ADOInsertAfterScroll
    CommandText = 'Select * from dzbl_crbbgk'
    ParamCheck = False
    Parameters = <>
    Left = 21
    Top = 199
  end
  object DSinsert: TDataSource
    DataSet = ADOInsert
    Left = 61
    Top = 203
  end
  object QryPrint: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Vardm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      
        'Select *,csrq1=Convert(char(4),csrq,121)+'#39#24180#39'+Substring(Convert(c' +
        'har(10),csrq,121),6,2)+'#39#26376#39'+Substring(Convert(char(10),csrq,121),' +
        '9,2)+'#39#26085#39','
      
        '       fbrq1=Convert(char(4),fbrq,121)+'#39#24180#39'+Substring(Convert(cha' +
        'r(10),fbrq,121),6,2)+'#39#26376#39'+Substring(Convert(char(10),fbrq,121),9,' +
        '2)+'#39#26085#39','
      
        '       zdrq1=Convert(char(4),zdrq,121)+'#39#24180#39'+Substring(Convert(cha' +
        'r(10),zdrq,121),6,2)+'#39#26376#39'+Substring(Convert(char(10),zdrq,121),9,' +
        '2)+'#39#26085#39'+Substring(Convert(char(19),zdrq,120),12,2)+'#39#26102#39','
      
        '       tkrq1=Convert(char(4),tkrq,121)+'#39#24180#39'+Substring(Convert(cha' +
        'r(10),tkrq,121),6,2)+'#39#26376#39'+Substring(Convert(char(10),tkrq,121),9,' +
        '2)+'#39#26085#39
      'from dzbl_crbbgk '
      'Where dm=:Vardm')
    Left = 25
    Top = 267
  end
  object DSPrint: TDataSource
    DataSet = QryPrint
    Left = 61
    Top = 265
  end
  object QryLook: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 13
    Top = 125
  end
  object ad_sys: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 16
    Top = 96
  end
  object ADODataSet3: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 'select * from jkzx_crb_jbbz'
    Parameters = <>
    Left = 72
    Top = 88
  end
  object DataSource3: TDataSource
    DataSet = ADODataSet3
    Left = 104
    Top = 88
  end
  object qry_cx_nl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 32
    Top = 312
  end
  object qry_age: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'dm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select brnl from mzgh_ghmx where bybh=:dm')
    Left = 104
    Top = 120
  end
  object qry_xx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'dm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 18
        Value = Null
      end>
    SQL.Strings = (
      'select lxdh,gzdw,czy from dzbl_crbbgk where dm=:dm')
    Left = 48
    Top = 368
  end
  object qry_jbmc: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 472
    Top = 392
  end
  object ds_jbmc: TDataSource
    DataSet = qry_jbmc
    Left = 504
    Top = 392
  end
  object ds_dz: TDataSource
    DataSet = qry_dz
    Left = 440
    Top = 264
  end
  object qry_dz: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 400
    Top = 264
  end
end
