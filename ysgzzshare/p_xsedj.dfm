object frm_xsedj: Tfrm_xsedj
  Left = 0
  Top = 0
  Caption = #26032#29983#20799#20449#24687#30331#35760
  ClientHeight = 222
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label5: TLabel
    Left = 4
    Top = 46
    Width = 90
    Height = 15
    Caption = #26032#29983#20799#22995#21517#65306
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 222
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 60
      Width = 75
      Height = 15
      Caption = #27597#20146#22995#21517#65306
    end
    object Label2: TLabel
      Left = 247
      Top = 60
      Width = 45
      Height = 15
      Caption = #24202#21495#65306
    end
    object Label3: TLabel
      Left = 6
      Top = 94
      Width = 90
      Height = 15
      Caption = #26032#29983#20799#22995#21517#65306
    end
    object Label4: TLabel
      Left = 215
      Top = 94
      Width = 90
      Height = 15
      Caption = #26032#29983#20799#24615#21035#65306
    end
    object Label6: TLabel
      Left = 14
      Top = 128
      Width = 75
      Height = 15
      Caption = #20986#29983#26085#26399#65306
    end
    object Label7: TLabel
      Left = 15
      Top = 24
      Width = 135
      Height = 15
      Caption = #35831#36873#25321#24050#30331#35760#26032#29983#20799
    end
    object Edit1: TEdit
      Left = 93
      Top = 55
      Width = 111
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 304
      Top = 55
      Width = 111
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 304
      Top = 89
      Width = 65
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      ItemIndex = 0
      TabOrder = 2
      Text = #30007
      Items.Strings = (
        #30007
        #22899)
    end
    object DateTimePicker1: TDateTimePicker
      Left = 93
      Top = 123
      Width = 111
      Height = 23
      Date = 40639.470867511580000000
      Time = 40639.470867511580000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
    end
    object Button1: TButton
      Left = 104
      Top = 173
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 4
      OnClick = Button1Click
    end
    object frm_xsrdj: TButton
      Left = 297
      Top = 173
      Width = 75
      Height = 25
      Caption = #25918#24323
      TabOrder = 5
      OnClick = frm_xsrdjClick
    end
    object Button2: TButton
      Left = 201
      Top = 173
      Width = 75
      Height = 25
      Caption = #21307#22065#24405#20837
      TabOrder = 6
      OnClick = Button2Click
    end
    object ComboBox2: TComboBox
      Left = 163
      Top = 20
      Width = 145
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 0
      TabOrder = 7
      Text = 'ComboBox2'
      OnChange = ComboBox2Change
    end
    object Button3: TButton
      Left = 9
      Top = 173
      Width = 75
      Height = 25
      Caption = #26032#22686
      TabOrder = 8
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 391
      Top = 173
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 9
      OnClick = Button4Click
    end
    object btn_yzcx: TButton
      Left = 297
      Top = 142
      Width = 169
      Height = 25
      Caption = #21307#22065#26597#35810
      TabOrder = 10
      Visible = False
      OnClick = btn_yzcxClick
    end
  end
  object Edit4: TEdit
    Left = 93
    Top = 89
    Width = 111
    Height = 23
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 1
    OnExit = Edit4Exit
  end
end
