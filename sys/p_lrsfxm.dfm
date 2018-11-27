object frm_lrsfxm: Tfrm_lrsfxm
  Left = 223
  Top = 176
  Caption = #25910#36153#39033#30446#24405#20837#31383#21475
  ClientHeight = 232
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 454
    Height = 232
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 23
      Width = 68
      Height = 15
      Caption = #26631#20934#20195#30721':'
    end
    object Label2: TLabel
      Left = 16
      Top = 65
      Width = 68
      Height = 15
      Caption = #39033#30446#21517#31216':'
    end
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 68
      Height = 15
      Caption = #39033#30446#21333#20301':'
    end
    object Label4: TLabel
      Left = 16
      Top = 142
      Width = 68
      Height = 15
      Caption = #39033#30446#21333#20215':'
    end
    object Label5: TLabel
      Left = 16
      Top = 176
      Width = 70
      Height = 15
      Caption = #22791'    '#27880':'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 19
      Width = 217
      Height = 23
      DataField = 'szdm'
      DataSource = frm_sfxm.ds_sfxm
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 59
      Width = 354
      Height = 23
      DataField = 'fymc'
      DataSource = frm_sfxm.ds_sfxm
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 99
      Width = 161
      Height = 23
      DataField = 'dw'
      DataSource = frm_sfxm.ds_sfxm
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 88
      Top = 136
      Width = 121
      Height = 23
      DataField = 'sfbz'
      DataSource = frm_sfxm.ds_sfxm
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 88
      Top = 172
      Width = 353
      Height = 23
      DataField = 'bak'
      DataSource = frm_sfxm.ds_sfxm
      TabOrder = 4
    end
    object Button1: TButton
      Left = 128
      Top = 205
      Width = 75
      Height = 25
      Caption = #20445#23384'(&S)'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 256
      Top = 205
      Width = 75
      Height = 25
      Caption = #25918#24323'(&C)'
      TabOrder = 6
      OnClick = Button2Click
    end
  end
end
