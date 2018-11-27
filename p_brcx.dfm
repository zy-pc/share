object Frm_brcx: TFrm_brcx
  Left = 110
  Top = 85
  BorderIcons = [biSystemMenu]
  Caption = #30149#20154#36153#29992#27719#24635#26597#35810
  ClientHeight = 543
  ClientWidth = 864
  Color = clMenu
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 97
    Align = alTop
    BorderStyle = bsSingle
    Color = 15131854
    TabOrder = 0
    object Label10: TLabel
      Left = 566
      Top = 12
      Width = 68
      Height = 17
      Caption = #36153#29992#31867#21035
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 21
      Top = 12
      Width = 70
      Height = 17
      Caption = #22995'    '#21517
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 291
      Top = 12
      Width = 70
      Height = 17
      Caption = #24202'    '#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 566
      Top = 40
      Width = 69
      Height = 17
      Caption = #24635' '#39044' '#20132
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 21
      Top = 71
      Width = 69
      Height = 17
      Caption = #24635' '#36153' '#29992
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 566
      Top = 68
      Width = 68
      Height = 17
      Caption = #21097#20313#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 291
      Top = 41
      Width = 68
      Height = 17
      Caption = #20303#38498#22825#25968
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 21
      Top = 41
      Width = 68
      Height = 17
      Caption = #20837#38498#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 291
      Top = 71
      Width = 68
      Height = 17
      Caption = #33258#36153#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lbmc: TEdit
      Left = 634
      Top = 9
      Width = 133
      Height = 25
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 0
    end
    object brxm: TEdit
      Left = 89
      Top = 9
      Width = 123
      Height = 25
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 1
      OnExit = brxmExit
      OnKeyPress = brxmKeyPress
    end
    object bch: TEdit
      Left = 359
      Top = 9
      Width = 131
      Height = 25
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 2
    end
    object zyj: TEdit
      Left = 634
      Top = 36
      Width = 133
      Height = 25
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object zfy: TEdit
      Left = 89
      Top = 65
      Width = 123
      Height = 25
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object syyj: TEdit
      Left = 634
      Top = 64
      Width = 133
      Height = 25
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object ksmc: TEdit
      Left = 359
      Top = 37
      Width = 131
      Height = 25
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 6
    end
    object ryrq: TDateTimePicker
      Left = 89
      Top = 37
      Width = 123
      Height = 25
      Date = 36748.712903275490000000
      Time = 36748.712903275490000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 7
    end
    object zfze: TEdit
      Left = 359
      Top = 65
      Width = 131
      Height = 25
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 97
    Width = 864
    Height = 446
    ActivePage = TabSheet2
    Align = alClient
    MultiLine = True
    Style = tsButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #27719#24635#36153#29992'(F1)'
      OnShow = TabSheet1Show
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 856
        Height = 145
        Align = alTop
        Color = 15131854
        DataSource = ds_fyhz
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #23435#20307
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'mc1'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#21517#31216
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Color = 13017945
            Expanded = False
            FieldName = 'je1'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindow
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #37329#39069
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 117
            Visible = True
          end
          item
            Color = 11186287
            Expanded = False
            FieldName = 'je12'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindow
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #33258#36153#37329#39069
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mc2'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#21517#31216
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 102
            Visible = True
          end
          item
            Color = 13017945
            Expanded = False
            FieldName = 'je2'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindow
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #37329#39069
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 121
            Visible = True
          end
          item
            Color = 11186287
            Expanded = False
            FieldName = 'je22'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindow
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #33258#36153#37329#39069
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mc3'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#21517#31216
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 99
            Visible = True
          end
          item
            Color = 13017945
            Expanded = False
            FieldName = 'je3'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindow
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #37329#39069
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 119
            Visible = True
          end
          item
            Color = 11186287
            Expanded = False
            FieldName = 'je32'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindow
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #33258#36153#37329#39069
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 102
            Visible = True
          end>
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 145
        Width = 856
        Height = 267
        Align = alClient
        Color = 15131854
        DataGrouping.GroupLevels = <>
        DataSource = ds_tj
        EvenRowColor = clMoneyGreen
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = GB2312_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        FooterRowCount = 1
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'szdm'
            Footers = <>
            Title.Caption = #26631#20934#20195#30721
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'fydm'
            Footers = <>
            Title.Caption = #36153#29992#20195#30721
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'fymc'
            Footer.Value = #21512#35745
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#21517#31216
            Width = 157
          end
          item
            EditButtons = <>
            FieldName = 'dw'
            Footers = <>
            Title.Caption = #21333#20301
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'dj'
            Footers = <>
            Title.Caption = #21333#20215
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'sjfysl'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #25968#37327
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'fyje'
            Footers = <>
            Title.Caption = #37329#39069
            Width = 181
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'zfje'
            Footer.DisplayFormat = '0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #33258#36153#37329#39069
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'fylb'
            Footers = <>
            Title.Caption = #31867#21035
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #36153#29992#26126#32454'(F2)'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 856
        Height = 412
        Align = alClient
        AllowedOperations = []
        Color = 15131854
        DataGrouping.GroupLevels = <>
        DataSource = ds_fymx
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = GB2312_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'fydm'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#20195#30721
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'fymc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #36153#29992#39033#30446
            Width = 140
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'sfrq'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #35760#36153#26085#26399
            Width = 159
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'fyje'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #37329#39069
            Width = 99
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'zfje'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #33258#36153#37329#39069
            Width = 95
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'mc'
            Footers = <>
            MaxWidth = 800
            MinWidth = 100
            Title.Alignment = taCenter
            Title.Caption = #35760#24080#21592
            Width = 100
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'ksmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #22788#32622#31185#23460
            Width = 100
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'tfbz'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #36864#36153
            Width = 54
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'tfrq'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #36864#36153#26085#26399
            Width = 159
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'fylb'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #31867#21035
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #29992#33647#24773#20917'(F3)'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 856
        Height = 412
        ActivePage = TabSheet6
        Align = alClient
        TabOrder = 0
        object TabSheet6: TTabSheet
          Caption = #29992#33647#26126#32454
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 848
            Height = 198
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 0
            object DBGrid3: TDBGrid
              Left = 2
              Top = 2
              Width = 844
              Height = 164
              Align = alClient
              Color = 15131854
              DataSource = ds_cf
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = GB2312_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = #23435#20307
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cfbh'
                  Title.Alignment = taCenter
                  Title.Caption = #22788#26041#32534#21495
                  Width = 121
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'hjrq'
                  Title.Alignment = taCenter
                  Title.Caption = #21010#20215#26085#26399
                  Width = 180
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ysmc'
                  Title.Alignment = taCenter
                  Title.Caption = #24320#21333#21307#24072
                  Width = 91
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'hjczy'
                  Title.Alignment = taCenter
                  Title.Caption = #21010#20215#25805#20316#21592
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cfzje'
                  Title.Alignment = taCenter
                  Title.Caption = #21010#20215#37329#39069
                  Width = 89
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'sfrq'
                  Title.Alignment = taCenter
                  Title.Caption = #25910#36153#26085#26399
                  Width = 173
                  Visible = True
                end>
            end
            object Panel6: TPanel
              Left = 2
              Top = 166
              Width = 844
              Height = 30
              Align = alBottom
              TabOrder = 1
              object BitBtn1: TBitBtn
                Left = 139
                Top = 3
                Width = 90
                Height = 25
                Caption = '1-'#31532#19968#24352
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = BitBtn1Click
              end
              object BitBtn2: TBitBtn
                Left = 275
                Top = 3
                Width = 90
                Height = 25
                Caption = '2-'#19979#19968#24352
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = BitBtn2Click
              end
              object BitBtn3: TBitBtn
                Left = 411
                Top = 3
                Width = 90
                Height = 25
                Caption = '3-'#21069#19968#24352
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = BitBtn3Click
              end
              object BitBtn4: TBitBtn
                Left = 547
                Top = 3
                Width = 90
                Height = 25
                Caption = '4-'#21518#19968#24352
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = BitBtn4Click
              end
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 198
            Width = 848
            Height = 183
            Align = alClient
            BevelInner = bvLowered
            TabOrder = 1
            object DBGrid2: TDBGrid
              Left = 2
              Top = 2
              Width = 844
              Height = 179
              Align = alClient
              Color = 15131854
              DataSource = ds_cfmx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #23435#20307
              Font.Style = []
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = GB2312_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -14
              TitleFont.Name = #23435#20307
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ypmc1'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #33647#21697#21517#31216
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 305
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ypgg'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #33647#21697#35268#26684
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 111
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ypdw'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #21333#20301
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ypsl'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #25968#37327
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ypdj'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #21333#20215
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 69
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ypje'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = #37329#39069
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 92
                  Visible = True
                end>
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = #29992#33647#27719#24635
          ImageIndex = 1
          object DBGridEh4: TDBGridEh
            Left = 0
            Top = 0
            Width = 848
            Height = 381
            Align = alClient
            Color = 15131854
            DataGrouping.GroupLevels = <>
            DataSource = DS_yymx
            EditActions = [geaCopyEh]
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = GB2312_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = #23435#20307
            FooterFont.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = GB2312_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ypmc'
                Footers = <>
                Title.Caption = #33647#21697#21517#31216
                Width = 263
              end
              item
                EditButtons = <>
                FieldName = 'ypgg'
                Footers = <>
                Title.Caption = #33647#21697#35268#26684
                Width = 95
              end
              item
                EditButtons = <>
                FieldName = 'ypdw'
                Footers = <>
                Title.Caption = #21333#20301
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'ypsl'
                Footers = <>
                Title.Caption = #25968#37327
                Width = 61
              end
              item
                EditButtons = <>
                FieldName = 'cfje'
                Footers = <>
                Title.Caption = #37329#39069
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'yplb'
                Footers = <>
                Title.Caption = #31867#21035
                Width = 45
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = #20013#33647#26126#32454
          ImageIndex = 2
          object Panel8: TPanel
            Left = 0
            Top = 198
            Width = 848
            Height = 183
            Align = alClient
            BevelInner = bvLowered
            TabOrder = 0
            object DBGrid6: TDBGrid
              Left = 2
              Top = 2
              Width = 844
              Height = 179
              Align = alClient
              Color = 15131854
              DataSource = ds_cx_zycfmx
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -17
              Font.Name = #23435#20307
              Font.Style = []
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = GB2312_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -14
              TitleFont.Name = #23435#20307
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ypmc1'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #33647#21697#21517#31216
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 305
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ypgg'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #33647#21697#35268#26684
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 111
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ypdw'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #21333#20301
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ypsl'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #25968#37327
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ypdj'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = #21333#20215
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 69
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ypje'
                  Font.Charset = GB2312_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = #23435#20307
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = #37329#39069
                  Title.Font.Charset = GB2312_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -19
                  Title.Font.Name = #23435#20307
                  Title.Font.Style = []
                  Width = 92
                  Visible = True
                end>
            end
          end
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 848
            Height = 198
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 1
            object DBGrid7: TDBGrid
              Left = 2
              Top = 2
              Width = 844
              Height = 164
              Align = alClient
              Color = 15131854
              DataSource = ds_zycf
              ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = GB2312_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = #23435#20307
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cfbh'
                  Title.Alignment = taCenter
                  Title.Caption = #22788#26041#32534#21495
                  Width = 114
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'hjrq'
                  Title.Alignment = taCenter
                  Title.Caption = #21010#20215#26085#26399
                  Width = 164
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ysmc'
                  Title.Alignment = taCenter
                  Title.Caption = #24320#21333#21307#24072
                  Width = 83
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'hjczy'
                  Title.Alignment = taCenter
                  Title.Caption = #21010#20215#25805#20316#21592
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cfzje'
                  Title.Alignment = taCenter
                  Title.Caption = #21333#22788#26041#37329#39069
                  Width = 77
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cfjl'
                  Title.Alignment = taCenter
                  Title.Caption = #22788#26041#21058#37327
                  Width = 71
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'zcfzje'
                  Title.Alignment = taCenter
                  Title.Caption = #24635#22788#26041#37329#39069
                  Width = 92
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'sfrq'
                  Title.Alignment = taCenter
                  Title.Caption = #25910#36153#26085#26399
                  Width = 163
                  Visible = True
                end>
            end
            object Panel10: TPanel
              Left = 2
              Top = 166
              Width = 844
              Height = 30
              Align = alBottom
              TabOrder = 1
              object BitBtn9: TBitBtn
                Left = 139
                Top = 3
                Width = 90
                Height = 25
                Caption = '1-'#31532#19968#24352
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = BitBtn1Click
              end
              object BitBtn10: TBitBtn
                Left = 275
                Top = 3
                Width = 90
                Height = 25
                Caption = '2-'#19979#19968#24352
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = BitBtn2Click
              end
              object BitBtn11: TBitBtn
                Left = 411
                Top = 3
                Width = 90
                Height = 25
                Caption = '3-'#21069#19968#24352
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = BitBtn3Click
              end
              object BitBtn12: TBitBtn
                Left = 547
                Top = 3
                Width = 90
                Height = 25
                Caption = '4-'#21518#19968#24352
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -17
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = BitBtn4Click
              end
            end
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #26448#26009#26126#32454'(F4)'
      ImageIndex = 4
      OnShow = TabSheet5Show
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 856
        Height = 198
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object DBGrid4: TDBGrid
          Left = 2
          Top = 2
          Width = 852
          Height = 164
          Align = alClient
          Color = 15131854
          DataSource = ds_cl
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'cfbh'
              Title.Alignment = taCenter
              Title.Caption = #22788#26041#32534#21495
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hjrq'
              Title.Alignment = taCenter
              Title.Caption = #21010#20215#26085#26399
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ysmc'
              Title.Alignment = taCenter
              Title.Caption = #24320#21333#21307#24072
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'hjczy'
              Title.Alignment = taCenter
              Title.Caption = #21010#20215#25805#20316#21592
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfzje'
              Title.Alignment = taCenter
              Title.Caption = #21010#20215#37329#39069
              Width = 100
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 2
          Top = 166
          Width = 852
          Height = 30
          Align = alBottom
          TabOrder = 1
          object BitBtn5: TBitBtn
            Left = 139
            Top = 3
            Width = 90
            Height = 25
            Caption = '1-'#31532#19968#24352
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn5Click
          end
          object BitBtn6: TBitBtn
            Left = 275
            Top = 3
            Width = 90
            Height = 25
            Caption = '2-'#19979#19968#24352
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn6Click
          end
          object BitBtn7: TBitBtn
            Left = 411
            Top = 3
            Width = 90
            Height = 25
            Caption = '3-'#21069#19968#24352
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BitBtn7Click
          end
          object BitBtn8: TBitBtn
            Left = 547
            Top = 3
            Width = 90
            Height = 25
            Caption = '4-'#21518#19968#24352
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BitBtn8Click
          end
        end
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 198
        Width = 856
        Height = 214
        Align = alClient
        Color = 15131854
        DataSource = ds_clmx
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #23435#20307
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ypmc1'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #33647#21697#21517#31216
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 305
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypgg'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #33647#21697#35268#26684
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypdw'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #21333#20301
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypsl'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #25968#37327
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypdj'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #21333#20215
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ypje'
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = #23435#20307
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = #37329#39069
            Title.Font.Charset = GB2312_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = #23435#20307
            Title.Font.Style = []
            Width = 92
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #20132#27454#26126#32454'(F5)'
      ImageIndex = 3
      OnShow = TabSheet4Show
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 856
        Height = 412
        Align = alClient
        AllowedOperations = []
        Color = 15131854
        DataGrouping.GroupLevels = <>
        DataSource = ds_yjmx
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = GB2312_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'sfrq'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #25910#36153#26085#26399
            Width = 160
          end
          item
            EditButtons = <>
            FieldName = 'sjbh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #25910#25454#32534#21495
            Width = 140
          end
          item
            EditButtons = <>
            FieldName = 'yjje'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #39044#20132#37329#39069
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'fkfsmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20132#27454#26041#24335
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'czymc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #25910#36153#21592
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'tfbz'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #26159#21542#36864#36153
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'bz'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #22791#27880
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 534
    Top = 96
    Width = 248
    Height = 25
    BevelOuter = bvNone
    TabOrder = 2
    object B_prior: TSpeedButton
      Left = 0
      Top = 0
      Width = 81
      Height = 25
      Caption = 'F6-'#19978#19968#31508
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = B_priorClick
    end
    object b_next: TSpeedButton
      Left = 80
      Top = 0
      Width = 81
      Height = 25
      Caption = 'F7-'#19979#19968#31508
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      OnClick = b_nextClick
    end
    object Label7: TLabel
      Left = 0
      Top = 7
      Width = 36
      Height = 12
      Caption = 'Label7'
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object b_continue: TBitBtn
      Left = 159
      Top = 0
      Width = 89
      Height = 25
      Caption = #32487#32493#26597#35810'(F12)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = b_continueClick
    end
  end
  object tmpgrid: TDBGrid
    Left = 377
    Top = 174
    Width = 352
    Height = 188
    DataSource = ds_zybrjbqk
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = tmpgridDblClick
    OnKeyDown = tmpgridKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #21345#21495
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #22995#21517
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxb'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #24615#21035
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ksmc'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #31185#23460
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bch'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #24202#21495
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 50
        Visible = True
      end>
  end
  object ds_fyhz: TDataSource
    DataSet = sp_cx_brhz
    Left = 160
    Top = 248
  end
  object sp_cx_brhz: TADOStoredProc
    Connection = DM_data.ado_mydata
    AfterScroll = sp_cx_brhzAfterScroll
    ProcedureName = 'brcx_cx_brfyhz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ZYH'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 192
    Top = 248
    object sp_cx_brhzmc1: TStringField
      FieldName = 'mc1'
      Size = 18
    end
    object sp_cx_brhzje1: TBCDField
      FieldName = 'je1'
      DisplayFormat = '0.00'
      Precision = 19
    end
    object sp_cx_brhzje12: TBCDField
      FieldName = 'je12'
      DisplayFormat = '0.00'
      Precision = 19
    end
    object sp_cx_brhzmc2: TStringField
      FieldName = 'mc2'
      Size = 18
    end
    object sp_cx_brhzje2: TBCDField
      FieldName = 'je2'
      DisplayFormat = '0.00'
      Precision = 19
    end
    object sp_cx_brhzje22: TBCDField
      FieldName = 'je22'
      DisplayFormat = '0.00'
      Precision = 19
    end
    object sp_cx_brhzmc3: TStringField
      FieldName = 'mc3'
      Size = 18
    end
    object sp_cx_brhzje3: TBCDField
      FieldName = 'je3'
      DisplayFormat = '0.00'
      Precision = 19
    end
    object sp_cx_brhzje32: TBCDField
      FieldName = 'je32'
      DisplayFormat = '0.00'
      Precision = 19
    end
  end
  object ds_fymx: TDataSource
    DataSet = sp_cx_fymx
    Left = 264
    Top = 248
  end
  object ds_cfmx: TDataSource
    DataSet = sp_cx_cfmx
    Left = 544
    Top = 248
  end
  object ds_cf: TDataSource
    DataSet = sp_cx_cf
    Left = 336
    Top = 248
  end
  object sp_cx_fymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'brcx_cx_fymx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 17
        Value = ' 0736201002147525'
      end>
    Left = 236
    Top = 247
    object sp_cx_fymxsfrq: TDateTimeField
      FieldName = 'sfrq'
    end
    object sp_cx_fymxfyje: TBCDField
      FieldName = 'fyje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object sp_cx_fymxzfje: TBCDField
      FieldName = 'zfje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object sp_cx_fymxfymc: TStringField
      FieldName = 'fymc'
      Size = 100
    end
    object sp_cx_fymxmc: TStringField
      FieldName = 'mc'
      Size = 100
    end
    object sp_cx_fymxtfbz: TBooleanField
      FieldName = 'tfbz'
    end
    object sp_cx_fymxksmc: TStringField
      FieldName = 'ksmc'
    end
    object sp_cx_fymxfydm: TStringField
      FieldName = 'fydm'
      FixedChar = True
      Size = 4
    end
    object sp_cx_fymxtfrq: TDateTimeField
      FieldName = 'tfrq'
    end
    object sp_cx_fymxfylb: TStringField
      FieldName = 'fylb'
      Size = 6
    end
  end
  object sp_cx_cf: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = sp_cx_cfAfterScroll
    ProcedureName = 'brcx_cx_yymx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = ' '
      end>
    Left = 308
    Top = 247
    object sp_cx_cftmh: TStringField
      FieldName = 'tmh'
      FixedChar = True
      Size = 9
    end
    object sp_cx_cfzyh: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object sp_cx_cfcfbh: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object sp_cx_cfcfzje: TBCDField
      FieldName = 'cfzje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object sp_cx_cfhjks: TStringField
      FieldName = 'hjks'
      FixedChar = True
      Size = 4
    end
    object sp_cx_cfhjrq: TDateTimeField
      FieldName = 'hjrq'
    end
    object sp_cx_cfksmc: TStringField
      FieldName = 'ksmc'
      Size = 50
    end
    object sp_cx_cfysmc: TStringField
      FieldName = 'ysmc'
      Size = 100
    end
    object sp_cx_cfhjczy: TStringField
      FieldName = 'hjczy'
      Size = 100
    end
    object sp_cx_cfsfrq: TDateTimeField
      FieldName = 'sfrq'
    end
  end
  object sp_cx_cfmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = sp_cx_cfmxAfterScroll
    ProcedureName = 'brcx_cx_brcfmx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = ' '
      end>
    Left = 516
    Top = 247
    object sp_cx_cfmxcfbh: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object sp_cx_cfmxxh: TIntegerField
      FieldName = 'xh'
    end
    object sp_cx_cfmxypdm: TStringField
      FieldName = 'ypdm'
      FixedChar = True
      Size = 14
    end
    object sp_cx_cfmxypdwid: TIntegerField
      FieldName = 'ypdwid'
    end
    object sp_cx_cfmxypdw: TStringField
      FieldName = 'ypdw'
      FixedChar = True
      Size = 8
    end
    object sp_cx_cfmxypbzbl: TIntegerField
      FieldName = 'ypbzbl'
    end
    object sp_cx_cfmxypsl: TBCDField
      FieldName = 'ypsl'
      Precision = 18
      Size = 2
    end
    object sp_cx_cfmxypdj: TBCDField
      FieldName = 'ypdj'
      DisplayFormat = '0.00'
      Precision = 18
    end
    object sp_cx_cfmxkccgj: TBCDField
      FieldName = 'kccgj'
      DisplayFormat = '0.00'
      Precision = 18
    end
    object sp_cx_cfmxyplb: TStringField
      FieldName = 'yplb'
      FixedChar = True
      Size = 30
    end
    object sp_cx_cfmxypmc: TStringField
      FieldName = 'ypmc'
      Size = 30
    end
    object sp_cx_cfmxypje: TBCDField
      FieldName = 'ypje'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 32
      Size = 6
    end
    object sp_cx_cfmxypmc1: TStringField
      FieldName = 'ypmc1'
      FixedChar = True
      Size = 30
    end
    object sp_cx_cfmxypgg: TStringField
      FieldName = 'ypgg'
      FixedChar = True
    end
  end
  object ds_yjmx: TDataSource
    DataSet = sp_cx_yjmx
    Left = 408
    Top = 248
  end
  object sp_cx_yjmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = sp_cx_yjmxAfterScroll
    ProcedureName = 'brcx_cx_yjmx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = ' '
      end>
    Left = 380
    Top = 247
    object sp_cx_yjmxyjcs: TIntegerField
      FieldName = 'yjcs'
    end
    object sp_cx_yjmxyjje: TBCDField
      FieldName = 'yjje'
      DisplayFormat = '0.00'
      Precision = 19
      Size = 2
    end
    object sp_cx_yjmxbz: TStringField
      FieldName = 'bz'
      FixedChar = True
    end
    object sp_cx_yjmxfkfsmc: TStringField
      FieldName = 'fkfsmc'
      FixedChar = True
      Size = 10
    end
    object sp_cx_yjmxczymc: TStringField
      FieldName = 'czymc'
      Size = 10
    end
    object sp_cx_yjmxsjh: TStringField
      FieldName = 'sjh'
      FixedChar = True
      Size = 9
    end
    object sp_cx_yjmxsfrq: TDateTimeField
      FieldName = 'sfrq'
    end
    object sp_cx_yjmxtfbz: TBooleanField
      FieldName = 'tfbz'
    end
  end
  object ds_zybrjbqk: TDataSource
    DataSet = sp_cx_zybrjbqk
    Left = 580
    Top = 250
  end
  object sp_cx_zybrjbqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'brcx_cx_zybrqk;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = '0004'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0013'
      end>
    Left = 612
    Top = 250
  end
  object sp_cx_cl: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = sp_cx_clAfterScroll
    ProcedureName = 'brcx_cx_clmx;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 388
    Top = 175
  end
  object ds_cl: TDataSource
    DataSet = sp_cx_cl
    Left = 424
    Top = 176
  end
  object sp_cx_clmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = sp_cx_cfAfterScroll
    ProcedureName = 'brcx_cx_brcfmx_cl;1'
    Parameters = <
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end>
    Left = 388
    Top = 207
  end
  object ds_clmx: TDataSource
    DataSet = sp_cx_clmx
    Left = 424
    Top = 208
  end
  object sp_tj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zysf_cx_fymxhz;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 264
    Top = 393
  end
  object ds_tj: TDataSource
    DataSet = sp_tj
    Left = 304
    Top = 392
  end
  object SP_yymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'xyf_cx_zybryymx;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@jsdh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 364
    Top = 395
  end
  object DS_yymx: TDataSource
    DataSet = SP_yymx
    Left = 402
    Top = 396
  end
  object sp_cx_zycf: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = sp_cx_zycfAfterScroll
    ProcedureName = 'brcx_cx_zyyymx;1'
    Parameters = <>
    Left = 668
    Top = 215
    object StringField1: TStringField
      FieldName = 'tmh'
      FixedChar = True
      Size = 9
    end
    object StringField2: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object StringField3: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object BCDField1: TBCDField
      FieldName = 'cfzje'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object StringField4: TStringField
      FieldName = 'hjks'
      FixedChar = True
      Size = 4
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'hjrq'
    end
    object StringField5: TStringField
      FieldName = 'ksmc'
    end
    object StringField6: TStringField
      FieldName = 'ysmc'
      Size = 100
    end
    object StringField7: TStringField
      FieldName = 'hjczy'
      Size = 100
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'sfrq'
    end
    object sp_cx_zycfcfjl: TIntegerField
      FieldName = 'cfjl'
    end
    object sp_cx_zycfzcfzje: TFloatField
      FieldName = 'zcfzje'
    end
  end
  object ds_zycf: TDataSource
    DataSet = sp_cx_zycf
    Left = 696
    Top = 216
  end
  object ds_zyyymx: TDataSource
    DataSet = sp_zyyymx
    Left = 642
    Top = 404
  end
  object sp_zyyymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'xyf_cx_zybryymx;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@jsdh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 604
    Top = 403
  end
  object ds_cx_zycfmx: TDataSource
    DataSet = sp_cx_zycfmx
    Left = 488
    Top = 448
  end
  object sp_cx_zycfmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'brcx_cx_brzycfmx;1'
    Parameters = <>
    Left = 460
    Top = 447
    object StringField8: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object IntegerField1: TIntegerField
      FieldName = 'xh'
    end
    object StringField9: TStringField
      FieldName = 'ypdm'
      FixedChar = True
      Size = 14
    end
    object IntegerField2: TIntegerField
      FieldName = 'ypdwid'
    end
    object StringField10: TStringField
      FieldName = 'ypdw'
      FixedChar = True
      Size = 8
    end
    object IntegerField3: TIntegerField
      FieldName = 'ypbzbl'
    end
    object BCDField2: TBCDField
      FieldName = 'ypsl'
      Precision = 18
      Size = 2
    end
    object BCDField3: TBCDField
      FieldName = 'ypdj'
      DisplayFormat = '0.00'
      Precision = 18
    end
    object BCDField4: TBCDField
      FieldName = 'kccgj'
      DisplayFormat = '0.00'
      Precision = 18
    end
    object StringField11: TStringField
      FieldName = 'yplb'
      FixedChar = True
      Size = 30
    end
    object StringField12: TStringField
      FieldName = 'ypmc'
      Size = 30
    end
    object BCDField5: TBCDField
      FieldName = 'ypje'
      ReadOnly = True
      DisplayFormat = '0.00'
      Precision = 32
      Size = 6
    end
    object StringField13: TStringField
      FieldName = 'ypmc1'
      FixedChar = True
      Size = 30
    end
    object StringField14: TStringField
      FieldName = 'ypgg'
      FixedChar = True
    end
  end
  object sp_fymx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_fymx;1'
    Parameters = <
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
      end>
    Left = 430
    Top = 250
  end
end
