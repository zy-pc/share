object frm_zyjs: Tfrm_zyjs
  Left = 464
  Top = 500
  BorderStyle = bsSingle
  Caption = #20013#33647#21058#25968'&'#29992#27861#25552#31034#26694
  ClientHeight = 460
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 429
    Height = 337
    Align = alTop
    Caption = #20013#33647
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 19
      Width = 32
      Height = 16
      Caption = #21058#25968
    end
    object Label5: TLabel
      Left = 29
      Top = 139
      Width = 100
      Height = 19
      Caption = #20013#33647#24635#37329#39069
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 120
      Top = 20
      Width = 16
      Height = 16
      Caption = #21058
      Transparent = True
    end
    object Label7: TLabel
      Left = 30
      Top = 71
      Width = 96
      Height = 16
      Caption = #29006#27861#12289#21046#27861#65306
      Transparent = True
    end
    object Label2: TLabel
      Left = 29
      Top = 161
      Width = 100
      Height = 19
      Caption = #36153#29992#24635#37329#39069
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 106
      Top = 46
      Width = 16
      Height = 16
      Caption = #34955
      Transparent = True
      Visible = False
    end
    object Label3: TLabel
      Left = 30
      Top = 46
      Width = 16
      Height = 16
      Caption = #29006
      Transparent = True
      Visible = False
    end
    object CheckBox1: TCheckBox
      Left = 27
      Top = 118
      Width = 84
      Height = 17
      Caption = #21152#20837#33647#34955
      TabOrder = 5
    end
    object edt_js: TEdit
      Left = 63
      Top = 17
      Width = 39
      Height = 24
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 0
      Text = '1'
      OnChange = edt_jsChange
      OnExit = edt_jsExit
      OnKeyPress = edt_jsKeyPress
    end
    object Panel2: TPanel
      Left = 2
      Top = 239
      Width = 425
      Height = 24
      Align = alBottom
      TabOrder = 7
      object lbl_jyd: TLabel
        Left = 248
        Top = 4
        Width = 56
        Height = 16
        Caption = 'lbl_jyd'
        Visible = False
      end
      object cb_jyd: TCheckBox
        Left = 20
        Top = 3
        Width = 196
        Height = 17
        Caption = #29006#33647#34955'     '#25968#37327#65306
        TabOrder = 1
        OnClick = cb_jyfClick
      end
      object edt_jyd: TSpinEdit
        Left = 166
        Top = -1
        Width = 50
        Height = 26
        Enabled = False
        MaxLength = 3
        MaxValue = 1000
        MinValue = 0
        TabOrder = 0
        Value = 1
        OnKeyPress = edt_jydKeyPress
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 263
      Width = 425
      Height = 24
      Align = alBottom
      TabOrder = 8
      object lbljyf: TLabel
        Left = 248
        Top = 4
        Width = 48
        Height = 16
        Caption = 'lbljyf'
        Visible = False
      end
      object cb_jyf: TCheckBox
        Left = 20
        Top = 3
        Width = 164
        Height = 17
        Caption = #29006#33647#36153'     '#25968#37327#65306
        TabOrder = 1
        OnClick = cb_jyfClick
      end
      object edt_jyf: TSpinEdit
        Left = 166
        Top = -1
        Width = 50
        Height = 26
        Enabled = False
        MaxLength = 3
        MaxValue = 1000
        MinValue = 0
        TabOrder = 0
        Value = 1
        OnKeyPress = edt_jydKeyPress
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 287
      Width = 425
      Height = 24
      Align = alBottom
      TabOrder = 9
      object lbl_wjjg: TLabel
        Left = 248
        Top = 4
        Width = 64
        Height = 16
        Caption = 'lbl_wjjg'
        Visible = False
      end
      object cb_wjjg: TCheckBox
        Left = 20
        Top = 4
        Width = 164
        Height = 17
        Caption = #20024#21058#21152#24037'   '#25968#37327#65306
        TabOrder = 1
        OnClick = cb_jyfClick
      end
      object edt_wjjg: TSpinEdit
        Left = 166
        Top = -1
        Width = 50
        Height = 26
        Enabled = False
        MaxLength = 4
        MaxValue = 9999
        MinValue = 0
        TabOrder = 0
        Value = 1
        OnKeyPress = edt_jydKeyPress
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 311
      Width = 425
      Height = 24
      Align = alBottom
      TabOrder = 10
      object lbl_sjjg: TLabel
        Left = 248
        Top = 4
        Width = 64
        Height = 16
        Caption = 'lbl_sjjg'
        Visible = False
      end
      object cb_sjjg: TCheckBox
        Left = 20
        Top = 4
        Width = 164
        Height = 17
        Caption = #25955#21058#21152#24037'   '#25968#37327#65306
        TabOrder = 1
        OnClick = cb_jyfClick
      end
      object edt_sjjg: TSpinEdit
        Left = 166
        Top = -1
        Width = 50
        Height = 26
        Enabled = False
        MaxLength = 4
        MaxValue = 9999
        MinValue = 0
        TabOrder = 0
        Value = 1
        OnKeyPress = edt_jydKeyPress
      end
    end
    object UpDown1: TUpDown
      Left = 102
      Top = 17
      Width = 17
      Height = 24
      Associate = edt_js
      Min = 1
      Max = 1000
      Position = 1
      TabOrder = 1
    end
    object cb_zj: TCheckBox
      Left = 143
      Top = 20
      Width = 59
      Height = 18
      Caption = #33258#29006
      TabOrder = 3
    end
    object cb_jf: TComboBox
      Left = 30
      Top = 92
      Width = 165
      Height = 24
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ItemHeight = 16
      MaxLength = 20
      TabOrder = 4
      Text = #24120' '#35268' '#29006
      Items.Strings = (
        #24120' '#35268' '#29006
        #25991#28779#20037#29006
        #25991#28779#24613#29006
        #27494#28779#20037#29006
        #27494#28779#24613#29006
        #20813#29006
        #27700#29006#29038
        #37202#27873
        #25171#31881
        #21046#20024
        #35013#33014#22218
        #20854#20182)
    end
    object GroupBox2: TGroupBox
      Left = 218
      Top = 15
      Width = 196
      Height = 194
      Caption = #20351#29992#26041#27861
      TabOrder = 2
      object Label8: TLabel
        Left = 40
        Top = 85
        Width = 40
        Height = 16
        Caption = #27425'/'#26085
      end
      object Label9: TLabel
        Left = 168
        Top = 85
        Width = 24
        Height = 16
        Caption = '/'#27425
      end
      object Label10: TLabel
        Left = 3
        Top = 49
        Width = 48
        Height = 16
        Caption = #29992#27861#65306
        Transparent = True
      end
      object Labe_use: TLabel
        Left = 3
        Top = 140
        Width = 32
        Height = 16
        Caption = #20351#29992
        Visible = False
      end
      object Label11: TLabel
        Left = 3
        Top = 170
        Width = 16
        Height = 16
        Caption = #27599
      end
      object Label12: TLabel
        Left = 66
        Top = 170
        Width = 48
        Height = 16
        Caption = #26085#19968#21058
      end
      object rb1: TRadioButton
        Left = 3
        Top = 21
        Width = 81
        Height = 17
        Caption = #20869#26381'(&N)'
        Checked = True
        Font.Charset = GB2312_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = rb1Click
      end
      object rb2: TRadioButton
        Left = 90
        Top = 21
        Width = 75
        Height = 17
        Caption = #22806#29992'(&W)'
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rb2Click
      end
      object e_sl: TEdit
        Left = 3
        Top = 81
        Width = 36
        Height = 24
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        TabOrder = 3
        Text = '3'
      end
      object e_yl: TEdit
        Left = 87
        Top = 81
        Width = 36
        Height = 24
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        TabOrder = 4
        Text = '200'
      end
      object cb_yf: TComboBox
        Left = 47
        Top = 46
        Width = 134
        Height = 24
        ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
        ItemHeight = 16
        MaxLength = 20
        TabOrder = 2
        Text = #39277#21069#28201#26381
        OnChange = cb_yfChange
        Items.Strings = (
          #39277#21069#28201#26381
          #39277#21069#20937#26381
          #39277#21518#28201#26381
          #39277#21518#20937#26381
          #31354#33145#26381
          #39039#26381
          #24930#26381
          #28034#25830
          #28024#27873)
      end
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 101
        TabOrder = 5
        Height = 34
        Width = 185
        object cb_zao: TcxCheckBox
          Left = 3
          Top = 10
          Caption = #26089
          TabOrder = 0
          OnClick = cb_zaoClick
          Width = 38
        end
        object cb_zhong: TcxCheckBox
          Left = 63
          Top = 10
          Caption = #20013
          TabOrder = 1
          OnClick = cb_zhongClick
          Width = 38
        end
        object cb_wan: TcxCheckBox
          Left = 120
          Top = 10
          Caption = #26202
          TabOrder = 2
          OnClick = cb_wanClick
          Width = 38
        end
      end
      object edt_useday: TEdit
        Left = 39
        Top = 137
        Width = 41
        Height = 24
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 6
        Text = '1'
        Visible = False
        OnChange = edt_jsChange
        OnExit = edt_jsExit
        OnKeyPress = edt_jsKeyPress
      end
      object UpDown2: TUpDown
        Left = 80
        Top = 137
        Width = 18
        Height = 24
        Associate = edt_useday
        Min = 1
        Max = 1000
        Position = 1
        TabOrder = 7
        Visible = False
      end
      object Combo_useday: TComboBox
        Left = 105
        Top = 137
        Width = 45
        Height = 24
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 16
        ItemIndex = 1
        MaxLength = 20
        TabOrder = 8
        Text = #22825
        Visible = False
        Items.Strings = (
          #27425
          #22825
          #21608
          #26376
          #23395
          #24180)
      end
      object edt_mjsyts: TEdit
        Left = 25
        Top = 167
        Width = 35
        Height = 24
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 9
        Text = '1'
      end
      object cbb_yldw: TComboBox
        Left = 125
        Top = 81
        Width = 41
        Height = 24
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ItemHeight = 16
        TabOrder = 10
        Text = 'ml'
        Items.Strings = (
          'ml'
          'g'
          #31890)
      end
    end
    object RadioButton1: TRadioButton
      Left = 441
      Top = 121
      Width = 75
      Height = 17
      Caption = #22806#29992'(&W)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object SpinEdit1: TSpinEdit
      Left = 50
      Top = 43
      Width = 50
      Height = 26
      MaxLength = 3
      MaxValue = 1000
      MinValue = 0
      TabOrder = 11
      Value = 1
      Visible = False
      OnKeyPress = edt_jydKeyPress
    end
    object pnlAddingWater: TPanel
      Left = 2
      Top = 215
      Width = 425
      Height = 24
      Align = alBottom
      TabOrder = 12
      object lblWater: TLabel
        Left = 39
        Top = 4
        Width = 32
        Height = 16
        Caption = #21152#27700
      end
      object lblUnit: TLabel
        Left = 173
        Top = 4
        Width = 16
        Height = 16
        Caption = 'ML'
      end
      object lblRight: TLabel
        Left = 338
        Top = 4
        Width = 16
        Height = 16
        Caption = 'ML'
      end
      object lblSoup: TLabel
        Left = 201
        Top = 4
        Width = 32
        Height = 16
        Caption = #21462#27713
      end
      object edtWater: TEdit
        Left = 77
        Top = 0
        Width = 90
        Height = 24
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 0
        Text = 'edtWater'
      end
      object edtSoup: TEdit
        Left = 242
        Top = 0
        Width = 90
        Height = 24
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 1
        Text = 'edtSoup'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 410
    Width = 429
    Height = 50
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object b_ok: TButton
      Left = 146
      Top = 8
      Width = 107
      Height = 33
      Caption = #30830#23450
      ModalResult = 1
      TabOrder = 0
      OnClick = b_okClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 337
    Width = 429
    Height = 73
    Align = alTop
    Caption = #22791#27880
    TabOrder = 1
    object Memo2: TMemo
      Left = 2
      Top = 18
      Width = 425
      Height = 53
      Align = alTop
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      Lines.Strings = (
        'Memo2')
      TabOrder = 0
    end
  end
end
