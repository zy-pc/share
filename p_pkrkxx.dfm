object frm_pkrkxx: Tfrm_pkrkxx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #36139#22256#20154#21475#20449#24687#19978#20256
  ClientHeight = 741
  ClientWidth = 823
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 823
    Height = 741
    Align = alClient
    TabOrder = 0
    object btn1: TButton
      Left = 43
      Top = 9
      Width = 224
      Height = 25
      Caption = #19978#20256
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn3: TButton
      Left = 301
      Top = 9
      Width = 224
      Height = 25
      Caption = #25764#38144
      TabOrder = 1
      OnClick = btn3Click
    end
    object pgc1: TPageControl
      Left = 0
      Top = 36
      Width = 822
      Height = 720
      ActivePage = ts2
      TabOrder = 2
      OnChange = pgc1Change
      object ts1: TTabSheet
        Caption = #19978#20256#20449#24687
        object lbl1: TLabel
          Left = 10
          Top = 6
          Width = 61
          Height = 19
          Caption = #26465' '#30721' '#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_tmh: TEdit
          Left = 92
          Top = 3
          Width = 250
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = edt_tmhKeyDown
        end
        object grp1: TGroupBox
          Left = 3
          Top = 31
          Width = 808
          Height = 124
          Caption = #22522#26412#20449#24687
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object lbl2: TLabel
            Left = 3
            Top = 24
            Width = 64
            Height = 16
            Caption = ' '#30149#20154#22995#21517
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl3: TLabel
            Left = 7
            Top = 94
            Width = 60
            Height = 16
            Caption = #36523#20221#35777#21495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl4: TLabel
            Left = 3
            Top = 59
            Width = 64
            Height = 16
            Caption = ' '#30149#20154#24615#21035
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl5: TLabel
            Left = 255
            Top = 59
            Width = 64
            Height = 16
            Caption = ' '#30149#20154#24180#40836
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl7: TLabel
            Left = 274
            Top = 24
            Width = 45
            Height = 16
            Caption = #26465#30721#21495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl9: TLabel
            Left = 539
            Top = 24
            Width = 45
            Height = 16
            Caption = #20303#38498#21495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl6: TLabel
            Left = 524
            Top = 59
            Width = 60
            Height = 16
            Caption = #30149#20154#31867#21035
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl29: TLabel
            Left = 524
            Top = 94
            Width = 60
            Height = 16
            Caption = #20986#38498#26085#26399
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edt_brxm: TEdit
            Left = 89
            Top = 20
            Width = 160
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object edt_sfzh: TEdit
            Left = 89
            Top = 90
            Width = 399
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyDown = edt_sfzhKeyDown
          end
          object edt_brxb: TEdit
            Left = 89
            Top = 55
            Width = 160
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edt_brnl: TEdit
            Left = 328
            Top = 57
            Width = 160
            Height = 27
            TabOrder = 3
          end
          object edt_tmh1: TEdit
            Left = 328
            Top = 24
            Width = 160
            Height = 27
            TabOrder = 4
          end
          object edt_zyh: TEdit
            Left = 616
            Top = 20
            Width = 160
            Height = 27
            TabOrder = 5
          end
          object grid_zybrqk: TDBGridEh
            Left = 89
            Top = 118
            Width = 368
            Height = 120
            DataGrouping.GroupLevels = <>
            DataSource = ds_cxbrxx
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnExit = grid_zybrqkExit
            OnKeyPress = grid_zybrqkKeyPress
            Columns = <
              item
                EditButtons = <>
                FieldName = 'tmh'
                Footers = <>
                Title.Caption = #26465#30721#21495
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'brxm'
                Footers = <>
                Title.Caption = #30149#20154#22995#21517
                Width = 83
              end
              item
                EditButtons = <>
                FieldName = 'cyrq'
                Footers = <>
                Title.Caption = #26102#38388
                Width = 101
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object edt_cyrq: TEdit
            Left = 616
            Top = 90
            Width = 160
            Height = 27
            TabOrder = 7
          end
          object cbb_brlb: TComboBox
            Left = 616
            Top = 53
            Width = 160
            Height = 27
            ItemHeight = 19
            TabOrder = 8
            Items.Strings = (
              #20303#38498
              #38376#35786)
          end
        end
        object grp2: TGroupBox
          Left = 3
          Top = 154
          Width = 808
          Height = 174
          Caption = #22522#26412#21442#25968
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DesignSize = (
            808
            174)
          object lbl10: TLabel
            Left = 3
            Top = 31
            Width = 48
            Height = 13
            Caption = #19968#32423#30142#30149
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl11: TLabel
            Left = 343
            Top = 31
            Width = 48
            Height = 13
            Caption = #25937#27835#31181#31867
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl12: TLabel
            Left = 3
            Top = 87
            Width = 48
            Height = 13
            Caption = #20854#20182#30142#30149
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl13: TLabel
            Left = 3
            Top = 59
            Width = 48
            Height = 13
            Caption = #20108#32423#30142#30149
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl15: TLabel
            Left = 582
            Top = 31
            Width = 48
            Height = 13
            Caption = #27835#30103#26041#24335
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl19: TLabel
            Left = 343
            Top = 63
            Width = 48
            Height = 13
            Caption = #27835#30103#25928#26524
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl8: TLabel
            Left = 75
            Top = 2
            Width = 724
            Height = 13
            Caption = #30142#30149#21517#31216#33719#21462#24179#21488#30142#30149#21517#31216','#33509#35201#22635#20889#20108#32423#30142#30149#38656#20808#36873#25321#19968#32423#30142#30149#21517#31216','#22914#27809#26377#19968#32423#30142#30149#36873#25321#39#20854#20182#30142#30149#39#24182#22312#20854#20182#30142#30149#26694#20013#25163#21160#22635#20889#20854#20182#30142#30149'!'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl24: TLabel
            Left = 344
            Top = 96
            Width = 48
            Height = 13
            Caption = #20445#38556#25919#31574
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl14: TLabel
            Left = 582
            Top = 63
            Width = 48
            Height = 13
            Caption = #21307#38498#23646#22320
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edt_yjjb: TEdit
            Left = 57
            Top = 28
            Width = 273
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = edt_yjjbKeyDown
          end
          object mmo1: TMemo
            Left = 57
            Top = 86
            Width = 272
            Height = 85
            Anchors = [akLeft, akTop, akRight, akBottom]
            ScrollBars = ssVertical
            TabOrder = 1
            OnKeyDown = mmo1KeyDown
          end
          object cbb_zlzl: TComboBox
            Left = 401
            Top = 27
            Width = 150
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 2
            OnChange = cbb_zlzlChange
            OnKeyDown = cbb_zlzlKeyDown
            Items.Strings = (
              #22823#30149#38598#20013#25937#27835
              #24930#24615#31614#32422#26381#21153#31649#29702
              #37325#30149#20828#24213#20445#38556
              #20854#20182)
          end
          object cbb_zlfs: TComboBox
            Left = 636
            Top = 27
            Width = 150
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 3
            OnKeyDown = cbb_zlfsKeyDown
            Items.Strings = (
              #25163#26415#27835#30103
              #33647#29289#27835#30103
              #25163#26415#36716#33647#29289#27835#30103
              #20854#20182)
          end
          object cbb_zlxg: TComboBox
            Left = 401
            Top = 59
            Width = 150
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 4
            OnKeyDown = cbb_zlxgKeyDown
            Items.Strings = (
              #27835#24840
              #30149#24773#22909#36716
              #38271#26399#24247#22797
              #27515#20129
              #27835#30103#20013)
          end
          object chk_xnh: TCheckBox
            Left = 398
            Top = 92
            Width = 131
            Height = 17
            Caption = #26032#20892#21512#65288#21547#23621#27665#21307#20445#65289
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object chk_yljz: TCheckBox
            Left = 579
            Top = 92
            Width = 74
            Height = 17
            Caption = #21307#30103#25937#21161
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object chk_fpjjjz: TCheckBox
            Left = 398
            Top = 121
            Width = 131
            Height = 17
            Caption = #25206#36139#22522#37329#25937#21161
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object chk_dbbx: TCheckBox
            Left = 702
            Top = 92
            Width = 74
            Height = 17
            Caption = #22823#30149#20445#38505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object chk_lsjz: TCheckBox
            Left = 579
            Top = 121
            Width = 74
            Height = 17
            Caption = #20020#26102#25937#21161
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object chk_sybx: TCheckBox
            Left = 702
            Top = 121
            Width = 74
            Height = 17
            Caption = #21830#19994#20445#38505
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object chk_csjz: TCheckBox
            Left = 398
            Top = 150
            Width = 131
            Height = 17
            Caption = #24904#21892#25937#21161
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object chk_w: TCheckBox
            Left = 702
            Top = 150
            Width = 74
            Height = 17
            Caption = #26080
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
          end
          object chk_qt: TCheckBox
            Left = 579
            Top = 150
            Width = 74
            Height = 17
            Caption = #20854#20182
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object edt_erjb: TEdit
            Left = 57
            Top = 57
            Width = 272
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            OnKeyDown = edt_erjbKeyDown
          end
          object grid_yjjb: TDBGridEh
            Left = 57
            Top = 50
            Width = 312
            Height = 108
            DataGrouping.GroupLevels = <>
            DataSource = ds_cxjbxx
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 5
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnExit = grid_yjjbExit
            OnKeyPress = grid_ejbKeyPress
            Columns = <
              item
                EditButtons = <>
                FieldName = 'jbbm'
                Footers = <>
                Title.Caption = #32534#30721
                Width = 59
              end
              item
                EditButtons = <>
                FieldName = 'jbmc'
                Footers = <>
                Title.Caption = #30142#30149#21517#31216
                Width = 211
              end>
            object RowDetailData: TRowDetailPanelControlEh
              object grid1: TDBGridEh
                Left = -307
                Top = -108
                Width = 307
                Height = 108
                DataGrouping.GroupLevels = <>
                DataSource = ds_cxjbxx
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -16
                FooterFont.Name = 'Tahoma'
                FooterFont.Style = []
                RowDetailPanel.Color = clBtnFace
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -16
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Visible = False
                OnKeyPress = grid_ejbKeyPress
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'jbbm'
                    Footers = <>
                    Title.Caption = #32534#30721
                    Width = 59
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jbmc'
                    Footers = <>
                    Title.Caption = #30142#30149#21517#31216
                    Width = 211
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
          object grid_ejjb: TDBGridEh
            Left = 57
            Top = 78
            Width = 312
            Height = 120
            DataGrouping.GroupLevels = <>
            DataSource = ds_cxejjb
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnExit = grid_ejjbExit
            OnKeyPress = grid_ejjbKeyPress
            Columns = <
              item
                EditButtons = <>
                FieldName = 'jbbm'
                Footers = <>
                Title.Caption = #32534#30721
                Width = 59
              end
              item
                EditButtons = <>
                FieldName = 'jbmc'
                Footers = <>
                Title.Caption = #30142#30149#21517#31216
                Width = 209
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object cbb_yysd: TComboBox
            Left = 636
            Top = 59
            Width = 150
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 13
            ParentFont = False
            TabOrder = 17
            Items.Strings = (
              #21439#22495
              #21439#22806)
          end
          object grid_icd10: TDBGridEh
            Left = 57
            Top = 1
            Width = 296
            Height = 84
            DataGrouping.GroupLevels = <>
            DataSource = ds_icd10
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            RowDetailPanel.Color = clBtnFace
            TabOrder = 18
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Visible = False
            OnExit = grid_icd10Exit
            OnKeyPress = grid_icd10KeyPress
            Columns = <
              item
                EditButtons = <>
                FieldName = 'jbbm'
                Footers = <>
                Title.Caption = #32534#30721
                Width = 59
              end
              item
                EditButtons = <>
                FieldName = 'jbmc'
                Footers = <>
                Title.Caption = #30142#30149#21517#31216
                Width = 198
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object grp3: TGroupBox
          Left = 3
          Top = 327
          Width = 808
          Height = 370
          Caption = #30149#20154#36153#29992
          TabOrder = 3
          object lbl16: TLabel
            Left = 60
            Top = 16
            Width = 60
            Height = 13
            Caption = #21307#30103#24635#36153#29992
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl17: TLabel
            Left = 313
            Top = 16
            Width = 72
            Height = 13
            Caption = #21307#30103#26426#26500#20943#20813
          end
          object lbl18: TLabel
            Left = 583
            Top = 16
            Width = 72
            Height = 13
            Caption = #22522#26412#21307#30103#20445#38505
          end
          object lbl20: TLabel
            Left = 48
            Top = 52
            Width = 72
            Height = 13
            Caption = #22823#30149#21307#30103#20445#38505
          end
          object lbl21: TLabel
            Left = 313
            Top = 52
            Width = 72
            Height = 13
            Caption = #27665#25919#21307#30103#25937#21161
          end
          object lbl22: TLabel
            Left = 48
            Top = 88
            Width = 72
            Height = 13
            Caption = #30142#30149#24212#24613#25937#21161
          end
          object lbl23: TLabel
            Left = 456
            Top = 339
            Width = 144
            Height = 13
            Caption = #21306#22495#20869#20303#38498#36153#29992#20840#25253#38144#25937#21161
          end
          object lbl25: TLabel
            Left = 583
            Top = 52
            Width = 72
            Height = 13
            Caption = #21307#33647#29233#24515#22522#37329
          end
          object lbl26: TLabel
            Left = 559
            Top = 88
            Width = 96
            Height = 13
            Caption = #37325#22823#30142#30149#25206#36139#22522#37329
          end
          object lbl27: TLabel
            Left = 313
            Top = 88
            Width = 72
            Height = 13
            Caption = #21355#29983#25206#36139#22522#37329
          end
          object lbl28: TLabel
            Left = 72
            Top = 124
            Width = 48
            Height = 13
            Caption = #21830#19994#20445#38505
          end
          object lbl_qtbxje: TLabel
            Left = 313
            Top = 124
            Width = 72
            Height = 13
            Caption = #20854#20182#25253#38144#37329#39069
          end
          object lbl_lsjz: TLabel
            Left = 607
            Top = 124
            Width = 48
            Height = 13
            Caption = #20020#26102#25937#21161
          end
          object lbl_lfbxbzfy: TLabel
            Left = 24
            Top = 160
            Width = 96
            Height = 13
            Caption = #32047#35745#25253#38144#34917#21161#36153#29992
          end
          object lbl32: TLabel
            Left = 313
            Top = 160
            Width = 72
            Height = 13
            Caption = #33258#36153#21307#30103#36153#29992
          end
          object lbl33: TLabel
            Left = 595
            Top = 160
            Width = 60
            Height = 13
            Caption = #19968#33324#35786#30103#36153
          end
          object lbl34: TLabel
            Left = 60
            Top = 196
            Width = 60
            Height = 13
            Caption = #38498#20869#20250#35786#36153
          end
          object lbl35: TLabel
            Left = 289
            Top = 195
            Width = 96
            Height = 13
            Caption = #30333#20869#38556#22797#26126#25163#26415#36153
          end
          object lbl36: TLabel
            Left = 559
            Top = 195
            Width = 96
            Height = 13
            Caption = #33406#28363#30149#25239#30149#27602#27835#30103
          end
          object lbl37: TLabel
            Left = 24
            Top = 232
            Width = 96
            Height = 13
            Caption = #22522#26412#20844#20849#21355#29983#26381#21153
          end
          object lbl38: TLabel
            Left = 289
            Top = 231
            Width = 96
            Height = 13
            Caption = #22919#24188#21355#29983#20581#24247#26381#21153
          end
          object lbl39: TLabel
            Left = 583
            Top = 231
            Width = 72
            Height = 13
            Caption = #24033#22238#21307#30103#26381#21153
          end
          object lbl40: TLabel
            Left = 36
            Top = 268
            Width = 84
            Height = 13
            Caption = #33647#29289#27835#30103#21253#34411#30149
          end
          object lbl41: TLabel
            Left = 289
            Top = 266
            Width = 96
            Height = 13
            Caption = #22522#26412#21307#20445#20010#20154#32564#36153
          end
          object lbl42: TLabel
            Left = 547
            Top = 266
            Width = 108
            Height = 13
            Caption = #36139#22256#23381#20135#22919#20303#38498#20998#23081
          end
          object lbl43: TLabel
            Left = 12
            Top = 304
            Width = 108
            Height = 13
            Caption = #26202#26399#34880#21560#34411#30149#20154#34917#21161
          end
          object lbl44: TLabel
            Left = 277
            Top = 304
            Width = 108
            Height = 13
            Caption = #25163#26415#27835#30103#21253#34411#30149#34917#21161
          end
          object lbl45: TLabel
            Left = 547
            Top = 304
            Width = 108
            Height = 13
            Caption = #22823#39592#33410#30149#24739#32773#24180#34917#21161
          end
          object lbl46: TLabel
            Left = 3
            Top = 340
            Width = 226
            Height = 13
            Caption = '_0-6'#23681#27531#30142#20799#31461#25163#26415#12289#24247#22797#24247#22797#35757#32451#21644#36741#20855
          end
          object edt_zfy: TEdit
            Left = 126
            Top = 12
            Width = 120
            Height = 21
            TabOrder = 0
          end
          object edt_jbyjjz: TEdit
            Left = 126
            Top = 84
            Width = 120
            Height = 21
            TabOrder = 1
          end
          object edt_yljgjm: TEdit
            Left = 398
            Top = 12
            Width = 120
            Height = 21
            TabOrder = 2
          end
          object edt_ybzlf: TEdit
            Left = 661
            Top = 156
            Width = 120
            Height = 21
            TabOrder = 3
          end
          object edt_sybx: TEdit
            Left = 126
            Top = 120
            Width = 120
            Height = 21
            TabOrder = 4
          end
          object edt_wsfpjj: TEdit
            Left = 398
            Top = 84
            Width = 120
            Height = 21
            TabOrder = 5
          end
          object edt_zfulfy: TEdit
            Left = 398
            Top = 156
            Width = 120
            Height = 21
            TabOrder = 6
          end
          object edt_jbggwsfw: TEdit
            Left = 126
            Top = 227
            Width = 120
            Height = 21
            TabOrder = 7
          end
          object edt_fywsjkfw: TEdit
            Left = 398
            Top = 227
            Width = 120
            Height = 21
            TabOrder = 8
          end
          object edt_ywzlbcb: TEdit
            Left = 126
            Top = 263
            Width = 120
            Height = 21
            TabOrder = 9
          end
          object edt_xhylfw: TEdit
            Left = 661
            Top = 227
            Width = 120
            Height = 21
            TabOrder = 10
          end
          object edt_ylhzf: TEdit
            Left = 126
            Top = 191
            Width = 120
            Height = 21
            TabOrder = 11
          end
          object edt_qtbxje: TEdit
            Left = 398
            Top = 120
            Width = 120
            Height = 21
            TabOrder = 12
          end
          object edt_zyfyqbx: TEdit
            Left = 606
            Top = 335
            Width = 170
            Height = 21
            TabOrder = 13
          end
          object edt_jbylbx: TEdit
            Left = 661
            Top = 12
            Width = 120
            Height = 21
            TabOrder = 14
          end
          object edt_wqxxcbebz: TEdit
            Left = 126
            Top = 300
            Width = 120
            Height = 21
            TabOrder = 15
          end
          object edt_pkyfzyfm: TEdit
            Left = 661
            Top = 263
            Width = 120
            Height = 21
            TabOrder = 16
          end
          object edt_cjetsh: TEdit
            Left = 235
            Top = 335
            Width = 170
            Height = 21
            TabOrder = 17
          end
          object edt_bnzfmsff: TEdit
            Left = 398
            Top = 191
            Width = 120
            Height = 21
            TabOrder = 18
          end
          object edt_lsjz: TEdit
            Left = 661
            Top = 120
            Width = 120
            Height = 21
            TabOrder = 19
          end
          object edt_dbylbx: TEdit
            Left = 126
            Top = 48
            Width = 120
            Height = 21
            TabOrder = 20
          end
          object edt_mzyljz: TEdit
            Left = 398
            Top = 48
            Width = 120
            Height = 21
            TabOrder = 21
          end
          object edt_sszlbcbbz: TEdit
            Left = 398
            Top = 300
            Width = 120
            Height = 21
            TabOrder = 22
          end
          object edt_ylaxjj: TEdit
            Left = 661
            Top = 48
            Width = 120
            Height = 21
            TabOrder = 23
          end
          object edt_zdjbfpjj: TEdit
            Left = 661
            Top = 84
            Width = 120
            Height = 21
            TabOrder = 24
          end
          object edt_ljbxbzfy: TEdit
            Left = 126
            Top = 156
            Width = 120
            Height = 21
            TabOrder = 25
          end
          object edt_azbkbdzl: TEdit
            Left = 661
            Top = 191
            Width = 120
            Height = 21
            TabOrder = 26
          end
          object edt_jbybgejf: TEdit
            Left = 398
            Top = 262
            Width = 120
            Height = 21
            TabOrder = 27
          end
          object edt_dgjbhznbz: TEdit
            Left = 661
            Top = 300
            Width = 120
            Height = 21
            TabOrder = 28
          end
        end
      end
      object ts2: TTabSheet
        Caption = #25764#38144#20449#24687
        ImageIndex = 1
        object lbl30: TLabel
          Left = 3
          Top = 19
          Width = 115
          Height = 16
          Caption = #26465#30721#21495'/'#30149#20154#22995#21517':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl47: TLabel
          Left = 17
          Top = 436
          Width = 60
          Height = 16
          Caption = #30149#20154#22995#21517
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl48: TLabel
          Left = 281
          Top = 436
          Width = 45
          Height = 16
          Caption = #26465#30721#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl49: TLabel
          Left = 561
          Top = 436
          Width = 45
          Height = 16
          Caption = #20303#38498#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl50: TLabel
          Left = 17
          Top = 497
          Width = 60
          Height = 16
          Caption = #36523#20221#35777#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl51: TLabel
          Left = 266
          Top = 497
          Width = 60
          Height = 16
          Caption = #30149#20154#24180#40836
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl52: TLabel
          Left = 549
          Top = 497
          Width = 60
          Height = 16
          Caption = #19978#20256#26102#38388
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl53: TLabel
          Left = 17
          Top = 559
          Width = 60
          Height = 16
          Caption = #19968#32423#30142#30149
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl54: TLabel
          Left = 271
          Top = 559
          Width = 60
          Height = 16
          Caption = #20108#32423#30142#30149
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl55: TLabel
          Left = 549
          Top = 559
          Width = 60
          Height = 16
          Caption = #20854#20182#30142#30149
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl56: TLabel
          Left = 17
          Top = 620
          Width = 45
          Height = 16
          Caption = #24635#36153#29992
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl57: TLabel
          Left = 276
          Top = 620
          Width = 45
          Height = 16
          Caption = #33258#36153#29992
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl58: TLabel
          Left = 549
          Top = 620
          Width = 60
          Height = 16
          Caption = #32047#35745#25253#38144
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edt1: TEdit
          Left = 137
          Top = 15
          Width = 215
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = edt1KeyDown
        end
        object grid_brxxcx: TDBGridEh
          Left = 3
          Top = 45
          Width = 808
          Height = 344
          DataGrouping.GroupLevels = <>
          DataSource = ds_brxxcx
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = grid_brxxcxCellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'tmh'
              Footers = <>
              Title.Caption = #26465#30721#21495
            end
            item
              EditButtons = <>
              FieldName = 'zyh'
              Footers = <>
              Title.Caption = #20303#38498#21495
              Width = 88
            end
            item
              EditButtons = <>
              FieldName = 'sfzh'
              Footers = <>
              Title.Caption = #36523#20221#35777#21495
              Width = 125
            end
            item
              EditButtons = <>
              FieldName = 'brxm'
              Footers = <>
              Title.Caption = #30149#20154#22995#21517
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'brbz'
              Footers = <>
              Title.Caption = #26631#24535
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'scrq'
              Footers = <>
              Title.Caption = #19978#20256#26102#38388
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'zfy'
              Footers = <>
              Title.Caption = #24635#36153#29992
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'zfje'
              Footers = <>
              Title.Caption = #33258#36153#37329#39069
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'bxje'
              Footers = <>
              Title.Caption = #25253#38144#37329#39069
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'yjjb'
              Footers = <>
              Title.Caption = #19968#32423#30142#30149
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'ejjb'
              Footers = <>
              Title.Caption = #20108#32423#30142#30149
              Width = 115
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object e_tmh: TDBEdit
          Left = 344
          Top = 432
          Width = 150
          Height = 24
          DataField = 'tmh'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object e_yjjb: TDBEdit
          Left = 98
          Top = 555
          Width = 150
          Height = 24
          DataField = 'yjjb'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object e_brnl: TDBEdit
          Left = 344
          Top = 493
          Width = 150
          Height = 24
          DataField = 'brnl'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object e_brxm: TDBEdit
          Left = 98
          Top = 432
          Width = 150
          Height = 24
          DataField = 'brxm'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object e_sfzh: TDBEdit
          Left = 98
          Top = 493
          Width = 150
          Height = 24
          DataField = 'sfzh'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object e_zfy: TDBEdit
          Left = 98
          Top = 616
          Width = 150
          Height = 24
          DataField = 'zfy'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object e_ejjb: TDBEdit
          Left = 344
          Top = 555
          Width = 150
          Height = 24
          DataField = 'ejjb'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object e_zyh: TDBEdit
          Left = 629
          Top = 432
          Width = 150
          Height = 24
          DataField = 'zyh'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object e_ljbx: TDBEdit
          Left = 629
          Top = 616
          Width = 150
          Height = 24
          DataField = 'bxje'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object e_scsj: TDBEdit
          Left = 629
          Top = 493
          Width = 150
          Height = 24
          DataField = 'scrq'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object e_zfje: TDBEdit
          Left = 344
          Top = 616
          Width = 150
          Height = 24
          DataField = 'zfje'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object e_qtjb: TDBEdit
          Left = 629
          Top = 555
          Width = 150
          Height = 24
          DataField = 'qtjb'
          DataSource = ds_brxxcx
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
      end
    end
    object btn4: TButton
      Left = 559
      Top = 9
      Width = 224
      Height = 25
      Caption = #21462#28040
      TabOrder = 3
      OnClick = btn4Click
    end
  end
  object xml1: TXMLDocument
    Left = 352
    Top = 40
    DOMVendorDesc = 'MSXML'
  end
  object HTTPReqResp1: THTTPReqResp
    UseUTF8InHeader = True
    InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    UDDIBindingKey = 'b2de5375df9a8f55b64fe6a7886180a6'
    UDDIOperator = '283237cb9e35406badc6a10981a858f4'
    Left = 272
    Top = 40
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 432
    Top = 40
  end
  object idhtp2: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 472
    Top = 40
  end
  object idhtp3: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.AcceptEncoding = 'UTF-8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 504
    Top = 40
  end
  object HTTPRIO1: THTTPRIO
    URL = 'http://106.14.237.176:8182/api.asmx?wsdl'
    HTTPWebNode = HTTPReqResp1
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 544
    Top = 40
  end
  object HTTPRIO2: THTTPRIO
    URL = 'http://106.14.237.176:8182/api.asmx?wsdl'
    HTTPWebNode = HTTPReqResp1
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 312
    Top = 40
  end
  object qry1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 576
    Top = 40
  end
  object qry_cxjbxx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pkrk_yjjbxx where 1=2')
    Left = 688
    Top = 40
  end
  object ds_cxjbxx: TDataSource
    DataSet = qry_cxjbxx
    Left = 720
    Top = 40
  end
  object qry_cxejjb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from pkrk_ejjbxx where 1=2')
    Left = 752
    Top = 40
  end
  object ds_cxejjb: TDataSource
    DataSet = qry_cxejjb
    Left = 784
    Top = 40
  end
  object qry_cxbrxx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  b.tmh,b.zyh,b.brxm,b.cyrq'
      'FROM zysf_cydj b'
      'JOIN sbjk_sbjs c on b.zyh=c.zyh and 1=2')
    Left = 648
    Top = 40
  end
  object ds_cxbrxx: TDataSource
    DataSet = qry_cxbrxx
    Left = 616
    Top = 40
  end
  object qry_brxxcx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM pkrk_scxx_x'
      'where cxbz=0 order by  scrq desc')
    Left = 560
    Top = 72
  end
  object ds_brxxcx: TDataSource
    DataSet = qry_brxxcx
    Left = 592
    Top = 72
  end
  object idhtp4: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 400
    Top = 40
  end
  object qry_icd10: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select jbbm,jbmc from bagl..icd10')
    Left = 512
    Top = 72
  end
  object ds_icd10: TDataSource
    DataSet = qry_icd10
    Left = 480
    Top = 72
  end
end