object frm_kjsfxm: Tfrm_kjsfxm
  Left = 175
  Top = 123
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #36153#29992#20195#30721#35774#32622
  ClientHeight = 652
  ClientWidth = 937
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
  object Splitter2: TSplitter
    Left = 0
    Top = 440
    Width = 937
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 363
    ExplicitWidth = 758
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 937
    Height = 440
    Align = alTop
    BevelInner = bvLowered
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    ParentBiDiMode = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 305
      Top = 2
      Height = 432
      ExplicitHeight = 355
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 303
      Height = 432
      Align = alLeft
      BevelInner = bvLowered
      TabOrder = 0
      object treeviewzp: TTreeView
        Left = 2
        Top = 2
        Width = 299
        Height = 428
        Align = alClient
        AutoExpand = True
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Images = ImageList1
        Indent = 19
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnChange = treeviewzpChange
      end
    end
    object Panel4: TPanel
      Left = 308
      Top = 2
      Width = 623
      Height = 432
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      object Panel1: TPanel
        Left = 2
        Top = 2
        Width = 619
        Height = 428
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 619
          Height = 32
          Align = alTop
          Shape = bsFrame
          Style = bsRaised
          ExplicitWidth = 440
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 32
          Width = 619
          Height = 396
          ActivePage = TabSheet1
          Align = alClient
          TabOrder = 0
          object TabSheet1: TTabSheet
            Caption = #22522#26412#35774#32622
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 611
              Height = 364
              Align = alClient
              Enabled = False
              TabOrder = 0
              object Label1: TLabel
                Left = 17
                Top = 6
                Width = 72
                Height = 16
                Caption = #36153#29992#20195#30721':'
                FocusControl = DBEdit1
              end
              object Label10: TLabel
                Left = 231
                Top = 6
                Width = 72
                Height = 16
                Caption = #36153#29992#31867#21035':'
                FocusControl = DBEdit10
              end
              object Label2: TLabel
                Left = 17
                Top = 34
                Width = 72
                Height = 16
                Caption = #36153#29992#21517#31216':'
                FocusControl = DBEdit2
              end
              object Label3: TLabel
                Left = 33
                Top = 60
                Width = 56
                Height = 16
                Caption = #25340#38899#30721':'
                FocusControl = DBEdit3
              end
              object Label5: TLabel
                Left = 231
                Top = 60
                Width = 72
                Height = 16
                Caption = #26631#20934#20195#30721':'
                FocusControl = DBEdit5
              end
              object Label13: TLabel
                Left = 17
                Top = 86
                Width = 72
                Height = 16
                Caption = #25171#21360#21517#31216':'
                FocusControl = DBEdit13
              end
              object Label4: TLabel
                Left = 17
                Top = 135
                Width = 72
                Height = 16
                Caption = #36153#29992#21333#20301':'
                FocusControl = DBEdit4
              end
              object Label6: TLabel
                Left = 231
                Top = 135
                Width = 72
                Height = 16
                Caption = #25910#36153#26631#20934':'
                FocusControl = DBEdit6
              end
              object Label12: TLabel
                Left = 231
                Top = 112
                Width = 72
                Height = 16
                Caption = #28909'    '#38190':'
                FocusControl = DBEdit13
              end
              object Label7: TLabel
                Left = 1
                Top = 160
                Width = 88
                Height = 16
                Caption = #31038#20445#33258#36153#29575':'
                FocusControl = DBEdit7
              end
              object Label8: TLabel
                Left = 215
                Top = 162
                Width = 88
                Height = 16
                Caption = #21512#21516#33258#36153#29575':'
                FocusControl = DBEdit8
              end
              object Label9: TLabel
                Left = 1
                Top = 186
                Width = 88
                Height = 16
                Caption = #20445#38505#33258#36153#29575':'
                FocusControl = DBEdit9
              end
              object Label11: TLabel
                Left = 17
                Top = 210
                Width = 72
                Height = 16
                Caption = #38376#35786#31185#23460':'
              end
              object Label16: TLabel
                Left = 231
                Top = 210
                Width = 72
                Height = 16
                Caption = #20303#38498#31185#23460':'
              end
              object Label21: TLabel
                Left = 33
                Top = 109
                Width = 56
                Height = 16
                Caption = #21161#35760#30721':'
                FocusControl = DBEdit13
              end
              object Label23: TLabel
                Left = 247
                Top = 186
                Width = 64
                Height = 16
                Caption = #26597#35810#30721#65306
                FocusControl = DBEdit21
              end
              object lbl_yfxz: TLabel
                Left = 17
                Top = 232
                Width = 72
                Height = 16
                Caption = #33647#25151#36873#25321':'
              end
              object Label27: TLabel
                Left = 30
                Top = 322
                Width = 40
                Height = 16
                Caption = #35268#26684':'
              end
              object Label28: TLabel
                Left = 247
                Top = 292
                Width = 56
                Height = 16
                Caption = #20934#23383#21495':'
              end
              object Label29: TLabel
                Left = 231
                Top = 322
                Width = 72
                Height = 16
                Caption = #29983#20135#21378#23478':'
              end
              object lb_yblbmc: TLabel
                Left = 233
                Top = 232
                Width = 160
                Height = 16
                Caption = #21307#20445#31867#21035'('#39033#30446')'#21517#31216#65306
              end
              object DBEdit1: TDBEdit
                Left = 97
                Top = 2
                Width = 117
                Height = 24
                DataField = 'fydm'
                DataSource = ds_fydm
                Enabled = False
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ReadOnly = True
                TabOrder = 0
                OnChange = DBEdit1Change
              end
              object DBEdit10: TDBEdit
                Left = 306
                Top = 2
                Width = 106
                Height = 24
                TabStop = False
                DataField = 'dldm'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 1
                OnExit = DBEdit10Exit
              end
              object DBEdit2: TDBEdit
                Left = 97
                Top = 30
                Width = 316
                Height = 24
                DataField = 'fymc'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 2
                OnExit = DBEdit2Exit
              end
              object DBEdit3: TDBEdit
                Left = 97
                Top = 55
                Width = 117
                Height = 24
                DataField = 'pym'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 3
              end
              object DBEdit5: TDBEdit
                Left = 306
                Top = 55
                Width = 106
                Height = 24
                DataField = 'szdm'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 4
              end
              object DBEdit14: TDBEdit
                Left = 97
                Top = 81
                Width = 316
                Height = 24
                DataField = 'dymc'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 5
                OnExit = DBEdit14Exit
              end
              object DBEdit4: TDBEdit
                Left = 97
                Top = 130
                Width = 106
                Height = 24
                DataField = 'dw'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 8
              end
              object DBEdit6: TDBEdit
                Left = 306
                Top = 130
                Width = 106
                Height = 24
                DataField = 'sfbz'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 9
              end
              object DBEdit13: TDBEdit
                Left = 305
                Top = 106
                Width = 106
                Height = 24
                DataField = 'hotkey'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 7
              end
              object DBEdit7: TDBEdit
                Left = 97
                Top = 155
                Width = 106
                Height = 24
                DataField = 'sbfybl'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 10
              end
              object DBEdit8: TDBEdit
                Left = 305
                Top = 155
                Width = 106
                Height = 24
                DataField = 'htfybl'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 11
              end
              object DBEdit9: TDBEdit
                Left = 97
                Top = 180
                Width = 106
                Height = 24
                DataField = 'bxfybl'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 12
              end
              object editmzks: TEdit
                Left = 97
                Top = 205
                Width = 106
                Height = 24
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 14
                OnChange = editmzksChange
                OnEnter = editmzksEnter
                OnExit = editmzksExit
                OnKeyPress = editmzksKeyPress
              end
              object editzyks: TEdit
                Left = 306
                Top = 205
                Width = 106
                Height = 24
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 15
                OnChange = editzyksChange
                OnEnter = editzyksEnter
                OnExit = editzyksExit
                OnKeyPress = editzyksKeyPress
              end
              object DBCheckBox2: TDBCheckBox
                Left = 27
                Top = 264
                Width = 97
                Height = 17
                Caption = #38376#35786#36153#29992
                DataField = 'mzfy'
                DataSource = ds_fydm
                TabOrder = 19
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                OnClick = DBCheckBox2Click
              end
              object DBCheckBox3: TDBCheckBox
                Left = 148
                Top = 264
                Width = 87
                Height = 17
                Caption = #20303#38498#36153#29992
                DataField = 'zyfy'
                DataSource = ds_fydm
                TabOrder = 20
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                OnClick = DBCheckBox3Click
              end
              object DBCheckBox1: TDBCheckBox
                Left = 267
                Top = 264
                Width = 89
                Height = 17
                Caption = #21551#29992#26631#24535
                DataField = 'qybz'
                DataSource = ds_fydm
                TabOrder = 21
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                OnClick = DBCheckBox1Click
              end
              object DBEdit19: TDBEdit
                Left = 97
                Top = 104
                Width = 105
                Height = 24
                DataField = 'typym'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 6
              end
              object DBEdit21: TDBEdit
                Left = 306
                Top = 180
                Width = 106
                Height = 24
                DataField = 'newfydm'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 13
              end
              object cbb_yfxz: TComboBox
                Left = 97
                Top = 230
                Width = 105
                Height = 24
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ItemHeight = 16
                TabOrder = 16
                OnChange = cbb_yfxzChange
                Items.Strings = (
                  ''
                  #35199#33647#25151
                  #25104#33647#25151
                  #33609#33647#25151)
              end
              object dbedt_yfzdmc: TDBEdit
                Left = 209
                Top = 232
                Width = 24
                Height = 24
                DataField = 'yfzdmc'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 18
                Visible = False
              end
              object DBEdit22: TDBEdit
                Left = 76
                Top = 319
                Width = 126
                Height = 24
                DataField = 'fygg'
                DataSource = ds_jbxx
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                MaxLength = 20
                TabOrder = 23
              end
              object DBEdit23: TDBEdit
                Left = 305
                Top = 289
                Width = 107
                Height = 24
                DataField = 'zzh'
                DataSource = ds_jbxx
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                MaxLength = 20
                TabOrder = 22
              end
              object DBEdit24: TDBEdit
                Left = 305
                Top = 319
                Width = 168
                Height = 24
                DataField = 'sccj'
                DataSource = ds_jbxx
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                MaxLength = 100
                TabOrder = 24
              end
              object DBEdit25: TDBEdit
                Left = 384
                Top = 230
                Width = 121
                Height = 24
                DataField = 'lbxmmc'
                DataSource = ds_fydm
                TabOrder = 17
                OnKeyPress = DBEdit25KeyPress
              end
            end
            object rb1: TRadioButton
              Left = 27
              Top = 291
              Width = 62
              Height = 17
              Caption = #30002#31867
              Enabled = False
              TabOrder = 1
            end
            object rb2: TRadioButton
              Left = 104
              Top = 291
              Width = 60
              Height = 17
              Caption = #20057#31867
              Enabled = False
              TabOrder = 2
            end
            object rb3: TRadioButton
              Left = 138
              Top = 291
              Width = 60
              Height = 17
              Caption = #33258#36153
              Enabled = False
              TabOrder = 3
            end
          end
          object TabSheet2: TTabSheet
            Caption = #20854#23427#35774#32622
            ImageIndex = 1
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 611
              Height = 364
              Align = alClient
              Enabled = False
              TabOrder = 0
              object Label19: TLabel
                Left = 9
                Top = 52
                Width = 72
                Height = 16
                Caption = #19968#33324#20248#24800':'
                FocusControl = DBEdit17
              end
              object Label14: TLabel
                Left = 1
                Top = 6
                Width = 88
                Height = 16
                Caption = #31185#23460#20998#37197#29575':'
                FocusControl = DBEdit11
              end
              object Label18: TLabel
                Left = 214
                Top = 31
                Width = 72
                Height = 16
                Caption = #38134#21345#20248#24800':'
                FocusControl = DBEdit16
              end
              object Label20: TLabel
                Left = 14
                Top = 79
                Width = 40
                Height = 16
                Caption = #22791#27880':'
              end
              object Label17: TLabel
                Left = 9
                Top = 29
                Width = 72
                Height = 16
                Caption = #37329#21345#20248#24800':'
                FocusControl = DBEdit15
              end
              object Label25: TLabel
                Left = 15
                Top = 158
                Width = 72
                Height = 16
                Caption = #36130#21153#31867#21035':'
              end
              object Label26: TLabel
                Left = 151
                Top = 158
                Width = 72
                Height = 16
                Caption = #38500#22806#20869#23481':'
              end
              object Label24: TLabel
                Left = 15
                Top = 102
                Width = 72
                Height = 16
                Caption = #39033#30446#20869#28085':'
              end
              object Label15: TLabel
                Left = 214
                Top = 5
                Width = 88
                Height = 16
                Caption = #21307#29983#20998#37197#29575':'
                FocusControl = DBEdit11
              end
              object Label22: TLabel
                Left = 214
                Top = 54
                Width = 88
                Height = 16
                Caption = #20146#24773#21345#20248#24800':'
                FocusControl = DBEdit20
              end
              object lbl_cldym: TLabel
                Left = 11
                Top = 209
                Width = 88
                Height = 16
                Caption = #26448#26009#23545#24212#30721':'
              end
              object lbl_ypmc: TLabel
                Left = 224
                Top = 211
                Width = 30
                Height = 12
                Caption = #21517#31216':'
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
              end
              object lbl_ypgg: TLabel
                Left = 372
                Top = 209
                Width = 30
                Height = 12
                Caption = #35268#26684':'
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
              end
              object Label30: TLabel
                Left = 420
                Top = 80
                Width = 80
                Height = 16
                Caption = #25240#25187#27604#20363#65306
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 9
                Top = 231
                Width = 404
                Height = 85
                Caption = #33258#21160#25910#36153
                DataField = 'zdsf'
                DataSource = ds_fydm
                Items.Strings = (
                  #20303#38498#30149#20154#30331#35760#21518#24403#22825#26202#19978#35760#24405#19968#27425#36153#29992'   ['#33258#21160#19968#27425']'
                  #20303#38498#30149#20154#30331#35760#21518#27599#22825#26202#19978#35760#24405#19968#27425#36153#29992'   ['#33258#21160#27599#22825']'
                  #20303#38498#30149#20154#30331#35760#21518#20572#27490#33258#21160#35760#24405#36153#29992'       ['#20572#27490#33258#21160'] ')
                ParentBackground = True
                TabOrder = 16
                Values.Strings = (
                  #19968#27425
                  #27599#22825
                  #20572#27490)
              end
              object DBEdit11: TDBEdit
                Left = 89
                Top = -1
                Width = 106
                Height = 24
                DataField = 'kdksfpbl'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 0
              end
              object DBEdit17: TDBEdit
                Left = 89
                Top = 48
                Width = 106
                Height = 24
                DataField = 'ptkyhfybl'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 4
              end
              object DBEdit15: TDBEdit
                Left = 89
                Top = 25
                Width = 106
                Height = 24
                DataField = 'jkyhfybl'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 2
              end
              object DBEdit16: TDBEdit
                Left = 306
                Top = 25
                Width = 106
                Height = 24
                DataField = 'ykyhfybl'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 3
              end
              object ComboBox1: TComboBox
                Left = 89
                Top = 156
                Width = 58
                Height = 24
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ItemHeight = 16
                TabOrder = 10
                Items.Strings = (
                  'A'
                  'B'
                  'C'
                  'D'
                  'E'
                  'F'
                  'G'
                  'H'
                  'I'
                  'J'
                  'K'
                  'L'
                  'M'
                  'N'
                  'O'
                  'P'
                  'Q'
                  'R'
                  'S'
                  'T'
                  'U'
                  'V'
                  'W'
                  'K'
                  'Y'
                  'Z')
              end
              object DBMemo2: TDBMemo
                Left = 225
                Top = 156
                Width = 188
                Height = 48
                DataField = 'cwnr'
                DataSource = ds_fydm
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = #23435#20307
                Font.Style = []
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 11
              end
              object DBMemo1: TDBMemo
                Left = 89
                Top = 98
                Width = 323
                Height = 56
                DataField = 'xmnh'
                DataSource = ds_fydm
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = #23435#20307
                Font.Style = []
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ParentFont = False
                ScrollBars = ssVertical
                TabOrder = 9
              end
              object DBEdit12: TDBEdit
                Left = 306
                Top = -1
                Width = 106
                Height = 24
                DataField = 'kdysfpbl'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 1
              end
              object DBEdit20: TDBEdit
                Left = 306
                Top = 50
                Width = 106
                Height = 24
                DataField = 'qqkyhfybl'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 5
              end
              object DBEdit18: TDBEdit
                Left = 89
                Top = 73
                Width = 323
                Height = 24
                DataField = 'bak'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 7
              end
              object dbedt_cldym: TDBEdit
                Left = 98
                Top = 201
                Width = 121
                Height = 24
                DataField = 'cldym'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 12
                OnChange = dbedt_cldymChange
                OnKeyPress = dbedt_cldymKeyPress
              end
              object dbedt_ypmc: TDBEdit
                Left = 253
                Top = 208
                Width = 116
                Height = 20
                DataField = 'ypmc'
                DataSource = ds_cldym
                Enabled = False
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ParentFont = False
                TabOrder = 13
              end
              object dbedt_ypgg: TDBEdit
                Left = 404
                Top = 208
                Width = 69
                Height = 20
                DataField = 'ypgg'
                DataSource = ds_cldym
                Enabled = False
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                ParentFont = False
                TabOrder = 14
              end
              object dbgrd_ypmc: TDBGrid
                Left = 98
                Top = 227
                Width = 320
                Height = 120
                DataSource = ds_ypmc
                Font.Charset = GB2312_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                ReadOnly = True
                TabOrder = 15
                TitleFont.Charset = GB2312_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -16
                TitleFont.Name = #23435#20307
                TitleFont.Style = []
                Visible = False
                OnKeyPress = dbgrd_ypmcKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ypdm'
                    Title.Caption = #33647#21697#20195#30721
                    Title.Font.Charset = GB2312_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -12
                    Title.Font.Name = #23435#20307
                    Title.Font.Style = []
                    Width = 92
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ypmc'
                    Title.Caption = #33647#21697#21517#31216
                    Title.Font.Charset = GB2312_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -12
                    Title.Font.Name = #23435#20307
                    Title.Font.Style = []
                    Width = 126
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ypgg'
                    Title.Caption = #35268#26684
                    Title.Font.Charset = GB2312_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -12
                    Title.Font.Name = #23435#20307
                    Title.Font.Style = []
                    Width = 104
                    Visible = True
                  end>
              end
              object DBEditZKJbl: TDBEdit
                Left = 496
                Top = 76
                Width = 106
                Height = 24
                DataField = 'ZKJbl'
                DataSource = ds_fydm
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                TabOrder = 8
              end
              object dbchkqybz: TDBCheckBox
                Left = 416
                Top = 53
                Width = 113
                Height = 17
                Caption = #26159#21542#25240#25187#20215
                DataField = 'ISZKJ'
                DataSource = ds_fydm
                TabOrder = 6
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                OnClick = DBCheckBox1Click
              end
            end
          end
        end
        object DBGrid3: TDBGrid
          Left = 313
          Top = 314
          Width = 197
          Height = 82
          DataSource = ds_ylml
          TabOrder = 1
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
              FieldName = 'lbxmmc'
              Title.Alignment = taCenter
              Title.Caption = #39033#30446#21517#31216
              Width = 166
              Visible = True
            end>
        end
      end
      object b_add: TButton
        Left = 9
        Top = 6
        Width = 52
        Height = 25
        Caption = #22686#21152
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = b_addClick
      end
      object b_edit: TButton
        Left = 64
        Top = 6
        Width = 52
        Height = 25
        Caption = #20462#25913
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = b_editClick
      end
      object b_close: TButton
        Left = 387
        Top = 6
        Width = 52
        Height = 25
        Caption = #36864#20986
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = b_closeClick
      end
      object b_print: TBitBtn
        Left = 227
        Top = 6
        Width = 52
        Height = 25
        Caption = #25171#21360
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = b_printClick
      end
      object b_cx: TButton
        Left = 173
        Top = 6
        Width = 52
        Height = 25
        Caption = #26597#35810
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = b_cxClick
      end
      object b_delete: TBitBtn
        Left = 118
        Top = 6
        Width = 52
        Height = 24
        Caption = #21024#38500
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = b_deleteClick
      end
      object b_bl: TBitBtn
        Left = 282
        Top = 6
        Width = 52
        Height = 25
        Caption = #27604#29575
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = b_blClick
      end
      object b_save: TButton
        Left = 504
        Top = 351
        Width = 81
        Height = 28
        Caption = #20445' '#23384
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = b_saveClick
      end
      object b_cancel: TButton
        Left = 504
        Top = 385
        Width = 81
        Height = 29
        Caption = #25918' '#24323
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = b_cancelClick
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 443
    Width = 937
    Height = 209
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object dbgrid2: TDBGridEh
      Left = 2
      Top = 2
      Width = 933
      Height = 205
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_fydm
      EditActions = [geaCopyEh]
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -16
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnDrawColumnCell = dbgrid2DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'fydm'
          Footers = <>
          Title.Caption = #20195#30721
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'szdm'
          Footers = <>
          Title.Caption = #26631#20934#20195#30721
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = 'fymc'
          Footers = <>
          Title.Caption = #26631#20934#21517#31216
          Width = 184
        end
        item
          EditButtons = <>
          FieldName = 'pym'
          Footers = <>
          Title.Caption = #25340#38899#30721
          Width = 96
        end
        item
          EditButtons = <>
          FieldName = 'dymc'
          Footers = <>
          Title.Caption = #36890#29992#21517#31216
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'dw'
          Footers = <>
          Title.Caption = #21333#20301
          Width = 37
        end
        item
          EditButtons = <>
          FieldName = 'sfbz'
          Footers = <>
          Title.Caption = #21333#20215
          Width = 81
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 437
    Top = 449
    Width = 222
    Height = 175
    DataSource = ds_pub
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Caption = #20195#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Caption = #31185#23460#21517#31216
        Width = 133
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 646
    Top = 11
    Width = 44
    Height = 24
    Caption = #23548#20837
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object ImageList1: TImageList
    Left = 111
    Top = 10
    Bitmap = {
      494C010102000400680010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      940000949400009494000000000000000000000000000094940063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000949400F7F7
      F70094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CEFF0094CE
      FF0063CECE000094940000000000000000000000000000949400CEFFFF0094CE
      FF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094CEFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CE
      FF0063CECE000000000000949400000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094CE
      FF000094940000000000009494000000000000000000219C9C00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000949400F7F7F70094FFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094FFFF0094CEFF0094FFFF0063CE
      CE000000000063CECE0063CECE00000000000000000039ADAD00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000949400F7F7F70094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0063CE
      CE000000000063CECE0063CECE0000000000000000005AB5B500CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CE
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000094940000949400009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      940063CECE0094FFFF0063CECE00000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0063CECE00000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF00F7F7F700F7F7
      F700F7F7F700F7F7F70063CECE00000000000000000000949400CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF00F7F7F70000949400009494000094
      940000949400009494000094940000000000000000000094940063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0000949400009494000094
      9400009494000094940000949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000949400F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7000094940000000000000000000000
      000000000000000000000000000000000000000000000000000000949400EFEF
      EF00CEFFFF00CEFFFF0094FFFF0094FFFF000094940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400009494000094940000949400009494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400009494000094940000949400009494000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      E000C00000000000C000800000000000C0008000000000008000800000000000
      8000800000000000000080000000000000008000000000000000800000000000
      800080000000000080008000000000008001800100000000C07FC03F00000000
      E0FFE07F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ds_fydm: TDataSource
    DataSet = qry_fydmcx
    Left = 87
    Top = 67
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ksdm')
    Left = 24
    Top = 10
  end
  object qry_fydm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qry_fydmAfterScroll
    Parameters = <
      item
        Name = 'fydm'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_kjsfxm where fydm=:fydm')
    Left = 156
    Top = 11
  end
  object Querytree: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from fb_qddmtree order by bm')
    Left = 75
    Top = 10
  end
  object ds_pub: TDataSource
    DataSet = qry_pub
    Left = 32
    Top = 66
  end
  object sp_fysycx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_cx_fyxmsy;1'
    Parameters = <
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@fysybz'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 197
    Top = 11
  end
  object sp_cxfylb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_cx_fylb;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@dldm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@sc_zt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 234
    Top = 11
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = dbgrid2
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #23435#20307
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 126
    Top = 132
  end
  object sp_fyxgsfbz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_in_kjsfxg;1'
    Parameters = <
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 148
    Top = 68
  end
  object qry_fydmcx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qry_fydmAfterScroll
    Parameters = <
      item
        Name = 'vdldm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_kjsfxm where dldm like :vdldm')
    Left = 220
    Top = 67
  end
  object qry_cldym: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 720
    Top = 272
  end
  object ds_cldym: TDataSource
    DataSet = qry_cldym
    Left = 752
    Top = 272
  end
  object qry_ypmc: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 664
    Top = 408
  end
  object ds_ypmc: TDataSource
    DataSet = qry_ypmc
    Left = 696
    Top = 408
  end
  object qry_jbxx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'fydm'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * from kjsfxm_jbxx where fydm=:fydm')
    Left = 664
    Top = 456
  end
  object ds_jbxx: TDataSource
    DataSet = qry_jbxx
    Left = 696
    Top = 456
  end
  object qry_ylml: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pym'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT distinct lbxmmc  FROM sbjk_tsyycldzb'
      'WHERE xmpym LIKE :pym')
    Left = 856
    Top = 280
  end
  object ds_ylml: TDataSource
    DataSet = qry_ylml
    Left = 888
    Top = 280
  end
end
