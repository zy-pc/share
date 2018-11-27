object frm_mzghth: Tfrm_mzghth
  Left = 181
  Top = 202
  Caption = #25346#21495#31649#29702'-'#38376#35786#25346#21495#36864#21495
  ClientHeight = 189
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 604
    Height = 57
    Align = alTop
    Caption = #30149#20154#20449#24687
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 25
      Width = 48
      Height = 16
      Caption = #25910#25454#21495
    end
    object sjh: TEdit
      Left = 60
      Top = 22
      Width = 153
      Height = 24
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 0
      OnEnter = sjhEnter
      OnExit = sjhExit
      OnKeyPress = sjhKeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 57
    Width = 604
    Height = 101
    Align = alClient
    Caption = #25346#21495#25968#25454
    Enabled = False
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 26
      Top = 21
      Width = 32
      Height = 16
      Caption = #31185#23460
    end
    object Label6: TLabel
      Left = 279
      Top = 21
      Width = 32
      Height = 16
      Caption = #31181#31867
    end
    object Label7: TLabel
      Left = 457
      Top = 21
      Width = 32
      Height = 16
      Caption = #21307#29983
    end
    object Label8: TLabel
      Left = 10
      Top = 61
      Width = 48
      Height = 16
      Caption = #25346#21495#36153
    end
    object Label13: TLabel
      Left = 247
      Top = 61
      Width = 64
      Height = 16
      Caption = #23454#25910#36153#29992
    end
    object ks: TEdit
      Left = 60
      Top = 16
      Width = 153
      Height = 24
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      TabOrder = 0
      OnEnter = ksEnter
    end
    object zl: TEdit
      Left = 313
      Top = 16
      Width = 80
      Height = 24
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      TabOrder = 1
      OnEnter = ksEnter
    end
    object ys: TEdit
      Left = 494
      Top = 16
      Width = 80
      Height = 24
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      TabOrder = 2
      OnEnter = ksEnter
    end
    object ghf: TEdit
      Left = 60
      Top = 56
      Width = 153
      Height = 24
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      TabOrder = 3
      OnEnter = ksEnter
    end
    object ssf: TEdit
      Left = 313
      Top = 56
      Width = 80
      Height = 24
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      TabOrder = 4
      OnEnter = ksEnter
      OnExit = ssfExit
    end
    object cbbl: TCheckBox
      Left = 457
      Top = 56
      Width = 73
      Height = 17
      TabStop = False
      Caption = #30149#21382#36153
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 158
    Width = 604
    Height = 31
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 464
      Top = 3
      Width = 75
      Height = 25
      Caption = #36864#20986'(&X)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 384
      Top = 3
      Width = 75
      Height = 25
      Caption = #36864#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object SBar1: TStatusBar
      Left = 1
      Top = 1
      Width = 304
      Height = 29
      Align = alLeft
      Panels = <
        item
          Text = #25346#21495#21592
          Width = 40
        end
        item
          Width = 80
        end
        item
          Width = 50
        end>
    end
  end
  object sp_cx_ghqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzgh_cx_ghqk;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ghdhm'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 528
    Top = 16
  end
  object sp_up_ghth: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_in_sjtf;1'
    Parameters = <
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@zt'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@sjbh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@tffs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
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
    Left = 480
    Top = 15
  end
end
