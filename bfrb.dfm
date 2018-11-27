object bfrbc: Tbfrbc
  Left = 57
  Top = 101
  BorderIcons = []
  Caption = #30149#25151#26085#25253
  ClientHeight = 346
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 0
    Width = 222
    Height = 38
    Caption = #30149#25151#24037#20316#26085#25253
    Font.Charset = GB2312_CHARSET
    Font.Color = clYellow
    Font.Height = -37
    Font.Name = #21326#25991#26032#39759
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 205
    Top = 0
    Width = 222
    Height = 38
    Caption = #30149#25151#24037#20316#26085#25253
    Font.Charset = GB2312_CHARSET
    Font.Color = clFuchsia
    Font.Height = -37
    Font.Name = #21326#25991#26032#39759
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 12
    Top = 56
    Width = 30
    Height = 15
    Caption = #31185#23460
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 506
    Top = 56
    Width = 30
    Height = 15
    Caption = #26102#38388
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label22: TLabel
    Left = 276
    Top = 56
    Width = 45
    Height = 15
    Caption = #30149#24202#25968
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 43
    Top = 52
    Width = 118
    Height = 21
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object PageControl1: TPageControl
    Left = 1
    Top = 79
    Width = 710
    Height = 236
    ActivePage = TabSheet1
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnExit = PageControl1Exit
    object TabSheet1: TTabSheet
      Caption = #25968#25454#24405#20837
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 13
        Width = 704
        Height = 168
        BevelInner = bvLowered
        BevelWidth = 2
        BorderStyle = bsSingle
        TabOrder = 0
        object Bevel1: TBevel
          Left = 52
          Top = 4
          Width = 2
          Height = 120
        end
        object Bevel2: TBevel
          Left = 101
          Top = 4
          Width = 2
          Height = 120
        end
        object Bevel3: TBevel
          Left = 150
          Top = 4
          Width = 2
          Height = 120
        end
        object Bevel4: TBevel
          Left = 199
          Top = 4
          Width = 2
          Height = 120
        end
        object Bevel5: TBevel
          Left = 248
          Top = 4
          Width = 2
          Height = 119
        end
        object Bevel6: TBevel
          Left = 298
          Top = 4
          Width = 2
          Height = 120
        end
        object Bevel7: TBevel
          Left = 347
          Top = 4
          Width = 2
          Height = 120
        end
        object Bevel8: TBevel
          Left = 396
          Top = 4
          Width = 2
          Height = 120
        end
        object Bevel9: TBevel
          Left = 446
          Top = 4
          Width = 2
          Height = 120
        end
        object Bevel10: TBevel
          Left = 495
          Top = 4
          Width = 2
          Height = 119
        end
        object Bevel11: TBevel
          Left = 2
          Top = 84
          Width = 695
          Height = 2
        end
        object Label3: TLabel
          Left = 17
          Top = 12
          Width = 26
          Height = 65
          Caption = #26152#26085'    '#30041#38498'   '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label4: TLabel
          Left = 66
          Top = 12
          Width = 26
          Height = 65
          Caption = #20170#26085'    '#20837#38498'    '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label5: TLabel
          Left = 114
          Top = 12
          Width = 26
          Height = 65
          Caption = #20182#31185'    '#36716#20837'    '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label6: TLabel
          Left = 163
          Top = 12
          Width = 26
          Height = 65
          Caption = #20170#26085'   '#20986#38498'    '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label9: TLabel
          Left = 260
          Top = 12
          Width = 26
          Height = 65
          Caption = #36716#24448'    '#20182#31185'    '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label10: TLabel
          Left = 309
          Top = 12
          Width = 26
          Height = 65
          Caption = #29616#26377'    '#20303#38498'    '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label11: TLabel
          Left = 357
          Top = 12
          Width = 26
          Height = 65
          Caption = #25250#25937'           '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label12: TLabel
          Left = 406
          Top = 12
          Width = 26
          Height = 65
          Caption = #37325#30149'           '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label13: TLabel
          Left = 503
          Top = 12
          Width = 26
          Height = 65
          Caption = #19968#32423'    '#30149#20154'    '#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label14: TLabel
          Left = 211
          Top = 12
          Width = 26
          Height = 65
          Caption = #27515#20129'           '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label15: TLabel
          Left = 551
          Top = 12
          Width = 34
          Height = 65
          Alignment = taCenter
          Caption = ' '#24046'         '#38169'        ('#27425')'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Bevel12: TBevel
          Left = 2
          Top = 122
          Width = 695
          Height = 2
        end
        object Bevel14: TBevel
          Left = 544
          Top = 4
          Width = 2
          Height = 119
        end
        object Label7: TLabel
          Left = 600
          Top = 12
          Width = 33
          Height = 65
          Alignment = taCenter
          Caption = #20005#37325'     '#24046#38169'       ('#27425')'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label8: TLabel
          Left = 10
          Top = 138
          Width = 65
          Height = 13
          Caption = #36755#28082#20154#27425#65306
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 147
          Top = 138
          Width = 91
          Height = 13
          Caption = #36755#28082#21453#24212#20154#27425#65306
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 328
          Top = 138
          Width = 65
          Height = 13
          Caption = #36755#34880#20154#27425#65306
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 480
          Top = 138
          Width = 91
          Height = 13
          Caption = #36755#34880#21453#24212#20154#27425#65306
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 454
          Top = 12
          Width = 26
          Height = 65
          Caption = #30149#21361'           '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Bevel13: TBevel
          Left = 593
          Top = 4
          Width = 2
          Height = 119
        end
        object Bevel15: TBevel
          Left = 127
          Top = 123
          Width = 2
          Height = 37
        end
        object Bevel16: TBevel
          Left = 314
          Top = 123
          Width = 2
          Height = 37
        end
        object Bevel17: TBevel
          Left = 460
          Top = 123
          Width = 2
          Height = 37
        end
        object Bevel18: TBevel
          Left = 644
          Top = 3
          Width = 2
          Height = 119
        end
        object Label23: TLabel
          Left = 651
          Top = 12
          Width = 28
          Height = 65
          Alignment = taCenter
          Caption = #38506#25252'                '#20154#25968
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object DBEdit1: TDBEdit
          Left = 5
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R1'
          DataSource = DataSource1
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 54
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R2'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 104
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R3'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 153
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R4'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 202
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R5'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 4
          OnExit = DBEdit5Exit
        end
        object DBEdit6: TDBEdit
          Left = 251
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R6'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 301
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R7'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 6
          OnExit = DBEdit7Exit
        end
        object DBEdit8: TDBEdit
          Left = 350
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R8'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 399
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R9'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 498
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R11'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit11: TDBEdit
          Left = 547
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R12'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit12: TDBEdit
          Left = 596
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R13'
          DataSource = DataSource1
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit13: TDBEdit
          Left = 72
          Top = 133
          Width = 45
          Height = 22
          AutoSize = False
          DataField = 'R14'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit14: TDBEdit
          Left = 237
          Top = 133
          Width = 51
          Height = 22
          AutoSize = False
          DataField = 'R15'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 14
        end
        object DBEdit15: TDBEdit
          Left = 391
          Top = 133
          Width = 51
          Height = 22
          AutoSize = False
          DataField = 'R16'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit16: TDBEdit
          Left = 569
          Top = 133
          Width = 51
          Height = 22
          AutoSize = False
          DataField = 'R17'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit17: TDBEdit
          Left = 448
          Top = 95
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R10'
          DataSource = DataSource1
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit19: TDBEdit
          Left = 647
          Top = 94
          Width = 45
          Height = 21
          AutoSize = False
          DataField = 'R18'
          DataSource = DataSource1
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #25968#25454#27983#35272
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 702
        Height = 205
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataSource = DataSource1
        EditActions = [geaCopyEh, geaSelectAllEh]
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = GB2312_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        FrozenCols = 2
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        SumList.Active = True
        SumList.ExternalRecalc = True
        SumList.VirtualRecords = True
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KB'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #31185#21035
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'KS'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #31185#23460
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'SJ'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #26102#38388
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'R1'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #26152#26085#30041#38498
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R2'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20170#26085#20837#38498
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R3'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20182#31185#36716#20837
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R4'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20986#38498#35745
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'R5'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #27515#20129
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'R6'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #36716#24448#20182#31185
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R7'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20170#26085#30041#38498
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'BCS'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #30149#24202#25968
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'R8'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #25250#25937#20154#25968
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R9'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #37325#30149#20154#25968
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R10'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #30149#21361#20154#25968
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R11'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #19968#32423#30149#20154
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R12'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #24046#38169
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'R13'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #20005#37325#24046#38169
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R14'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #36755#28082#20154#25968
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R15'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #36755#28082#21453#24212
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R16'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #36755#34880#20154#25968
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R17'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #36755#34880#20154#25968
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'R18'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #38506#25252#20154#25968
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'CZY'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #25805#20316#21592
            Title.Color = 10184960
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clYellow
            Title.Font.Height = -13
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 40
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 313
    Width = 704
    Height = 33
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object DBNavigator2: TDBNavigator
      Left = 459
      Top = 4
      Width = 144
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        #39318#35760#24405
        #19978#19968#35760#24405
        #19979#19968#35760#24405
        #23614#35760#24405)
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object BB_ADD: TBitBtn
      Left = 4
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Caption = #22686#21152'(&A)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BB_ADDClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008888777777778888888800008800
        00000000788888880000880BFFFBFFF0777777880000880F444444F000000078
        0000880FFBFFFBF0FBFFF0780000880F444444F04444F0780000880BFFFBFFF0
        FFFBF0780000880F444444F04444F0780000880FFBFFFBF0FBFFF0780000880F
        44F000004477F0780000880BFFF0FFF0FF0007780000880F44F0FB00F70A0778
        0000880FFBF0F0FF000A00080000880000000F470AAAAA080000888888880FFB
        000A00080000888888880000770A088800008888888888888800088800008888
        88888888888888880000}
      Spacing = 0
    end
    object BB_DEL: TBitBtn
      Left = 271
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Caption = #21024#38500'(&D)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BB_DELClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFF000
        0FFFFFFFFFF0088770FFFFFFF008888770FFFFF00882888770FFFFF788222287
        770FFFF782828287770FFF7882888887770FFF7822282287770FFF7882882287
        7770FF788822FFFF7770F78888FF7777FF70F788FF77F7FF7FF0F7FF77FFF7FF
        777FF777FFFF7FFF7FFFFFF77FF7FF77FFFFFFFFF77F77FFFFFF}
      Spacing = 0
    end
    object BB_CA: TBitBtn
      Left = 173
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #25918#24323'(&C)'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BB_OKClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888889800008898888888888888898800008899
        88777777777798880000889990000000000998880000888990BFFFBFFF998888
        0000888899FCCCCCCF97888800008888999FBFFFB9978888000088888999CCC9
        990788880000888880999FB99F0788880000888880FC9999CF07888800008888
        80FF9999BF0788880000888880FC9999000788880000888880B99F099F078888
        0000888880999F099998888800008888999FBF0F089988880000889999000000
        8889988800008899988888888888898800008888888888888888889800008888
        88888888888888880000}
      Spacing = 0
    end
    object BB_OK: TBitBtn
      Left = 93
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Caption = #20445#23384'(&S)'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 1
      OnClick = BB_OKClick
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333333333FFFFFFFFFFFF33333380000000000008333
        33338888888888883F333330CC08CCF770CC03333338F38F333338F38F333330
        CC08CCF770CC03333338F38F333338F38F333330CC07887770CC03333338F38F
        FFFFF8338F333330CC60000006CC03333338F338888883338F333330CCCCCCCC
        CCCC03333338F33FFFFFFFF38F333330C6000000006C03333338F3888888883F
        8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330C0FFFFFFFF0C0333
        3338F8F33333338F8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330
        C0FFFFFFFF0C03333338F8F33333338F8F33333000FFFFFFFF0003333338F8F3
        3333338F8F333330C0FFFFFFFF0C03333338F8FFFFFFFF8F8333333800000000
        0000833333338888888888883333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      Spacing = 0
    end
    object BB_RET: TBitBtn
      Left = 624
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Caption = #36820#22238'(&X)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BB_RETClick
      Kind = bkIgnore
      Spacing = 0
    end
    object BitBtn1: TBitBtn
      Left = 351
      Top = 4
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Caption = #20462#25913'(&E)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777770000007777717777747777770000007777111777444777770000007771
        7177777474777700000077177777777777477700000071777000000077747700
        000071770788888807747700000017770F77777807774700000017770F777778
        07774700000017770F77777807774700000017770F7777780777470000001777
        0F77777807774700000071770FFFFFF707747700000071777000000077747700
        0000771777777777774777000000777171777774747777000000777711177744
        477777000000777771777774777777000000}
      Spacing = 0
    end
  end
  object DBEdit18: TDBEdit
    Left = 322
    Top = 52
    Width = 74
    Height = 21
    TabStop = False
    DataField = 'BCS'
    DataSource = DataSource1
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    TabOrder = 1
  end
  object Dtp1: TDBDateTimeEditEh
    Left = 539
    Top = 52
    Width = 107
    Height = 21
    DataField = 'SJ'
    DataSource = DataSource1
    EditButtons = <>
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Kind = dtkDateEh
    ParentFont = False
    TabOrder = 5
    Visible = True
    OnExit = Dtp1Exit
  end
  object Panel3: TPanel
    Left = 26
    Top = 400
    Width = 175
    Height = 198
    AutoSize = True
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 4
    Visible = False
    object DBGrid1: TDBGrid
      Left = 3
      Top = 3
      Width = 169
      Height = 192
      Align = alTop
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -7
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'DM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Title.Caption = #20195#30721
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Title.Caption = #21517#31216
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SRM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = []
          Title.Caption = #25340#38899
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = #23435#20307
          Title.Font.Style = []
          Visible = True
        end>
    end
  end
  object ADODataSet1: TADODataSet
    Connection = baglc.ADOConnection1
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select * from dbo.bfgzrb'
    FieldDefs = <
      item
        Name = 'KB'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 3
      end
      item
        Name = 'R1'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R2'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R3'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R4'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R5'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R6'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R7'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R8'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R9'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R10'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R11'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'SJ'
        Attributes = [faFixed]
        DataType = ftDateTime
      end
      item
        Name = 'CZY'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'KS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'R12'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R13'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R14'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R15'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R16'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R17'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'BCS'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'R18'
        Attributes = [faFixed]
        DataType = ftInteger
      end>
    Parameters = <>
    StoreDefs = True
    Left = 8
    object ADODataSet1KB: TStringField
      FieldName = 'KB'
      FixedChar = True
      Size = 3
    end
    object ADODataSet1SJ: TDateTimeField
      FieldName = 'SJ'
    end
    object ADODataSet1CZY: TStringField
      FieldName = 'CZY'
      Size = 10
    end
    object ADODataSet1KS: TStringField
      FieldName = 'KS'
      Size = 10
    end
    object ADODataSet1R1: TIntegerField
      FieldName = 'R1'
    end
    object ADODataSet1R2: TIntegerField
      FieldName = 'R2'
    end
    object ADODataSet1R3: TIntegerField
      FieldName = 'R3'
    end
    object ADODataSet1R4: TIntegerField
      FieldName = 'R4'
    end
    object ADODataSet1R5: TIntegerField
      FieldName = 'R5'
    end
    object ADODataSet1R6: TIntegerField
      FieldName = 'R6'
    end
    object ADODataSet1R7: TIntegerField
      FieldName = 'R7'
    end
    object ADODataSet1R8: TIntegerField
      FieldName = 'R8'
    end
    object ADODataSet1R9: TIntegerField
      FieldName = 'R9'
    end
    object ADODataSet1R10: TIntegerField
      FieldName = 'R10'
    end
    object ADODataSet1R11: TIntegerField
      FieldName = 'R11'
    end
    object ADODataSet1R12: TIntegerField
      FieldName = 'R12'
    end
    object ADODataSet1R13: TIntegerField
      FieldName = 'R13'
    end
    object ADODataSet1R14: TIntegerField
      FieldName = 'R14'
    end
    object ADODataSet1R15: TIntegerField
      FieldName = 'R15'
    end
    object ADODataSet1R16: TIntegerField
      FieldName = 'R16'
    end
    object ADODataSet1R17: TIntegerField
      FieldName = 'R17'
    end
    object ADODataSet1R18: TIntegerField
      FieldName = 'R18'
    end
    object ADODataSet1BCS: TIntegerField
      FieldName = 'BCS'
    end
  end
  object ADODataSet2: TADODataSet
    Connection = baglc.ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from dbo.ksdm'
    Parameters = <>
    Left = 56
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 8
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = ADODataSet2
    Left = 56
    Top = 24
  end
end
