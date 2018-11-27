object frm_jmjkkbd: Tfrm_jmjkkbd
  Left = 0
  Top = 0
  Caption = #23621#27665#20581#24247#21345#32465#23450
  ClientHeight = 357
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_tmh: TLabel
    Left = 214
    Top = 24
    Width = 48
    Height = 13
    Caption = #26465#30721#21495#65306
  end
  object btn_dk: TButton
    Left = 32
    Top = 16
    Width = 75
    Height = 25
    Caption = #35835#21345
    TabOrder = 0
    OnClick = btn_dkClick
  end
  object grp_kxx: TGroupBox
    Left = 24
    Top = 56
    Width = 657
    Height = 225
    Caption = #21345#20449#24687
    TabOrder = 1
    object lbl_cardNo: TLabel
      Left = 16
      Top = 24
      Width = 48
      Height = 13
      Caption = #21345'        '#21495
    end
    object lbl_sfzhm: TLabel
      Left = 280
      Top = 24
      Width = 60
      Height = 13
      Caption = #36523#20221#35777#21495#30721
    end
    object lbl_xm: TLabel
      Left = 16
      Top = 64
      Width = 48
      Height = 13
      Caption = #22995'        '#21517
    end
    object lbl_xb: TLabel
      Left = 256
      Top = 64
      Width = 24
      Height = 13
      Caption = #24615#21035
    end
    object lbl_mz: TLabel
      Left = 466
      Top = 64
      Width = 24
      Height = 13
      Caption = #27665#26063
    end
    object lbl_csrq: TLabel
      Left = 16
      Top = 104
      Width = 48
      Height = 13
      Caption = #20986#29983#26085#26399
    end
    object lbl_hy: TLabel
      Left = 256
      Top = 104
      Width = 24
      Height = 13
      Caption = #23130#23035
    end
    object lbl_zy: TLabel
      Left = 466
      Top = 104
      Width = 24
      Height = 13
      Caption = #32844#19994
    end
    object lbl_dz: TLabel
      Left = 16
      Top = 192
      Width = 48
      Height = 13
      Caption = #22320'        '#22336
    end
    object lbl_lxr: TLabel
      Left = 16
      Top = 144
      Width = 48
      Height = 13
      Caption = #32852'  '#31995'  '#20154
    end
    object lbl_lxrgx: TLabel
      Left = 220
      Top = 144
      Width = 60
      Height = 13
      Caption = #32852#31995#20154#20851#31995
    end
    object lbl_lxrdh: TLabel
      Left = 430
      Top = 144
      Width = 60
      Height = 13
      Caption = #32852#31995#20154#30005#35805
    end
    object lbl1: TLabel
      Left = 440
      Top = 192
      Width = 48
      Height = 13
      Caption = #25991#21270#31243#24230
    end
    object edt_cardNo: TEdit
      Left = 68
      Top = 21
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object edt_xm: TEdit
      Left = 68
      Top = 61
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object edt_xb: TEdit
      Left = 286
      Top = 61
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object edt_sfzhm: TEdit
      Left = 346
      Top = 21
      Width = 271
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object edt_mz: TEdit
      Left = 496
      Top = 61
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object edt_csrq: TEdit
      Left = 68
      Top = 101
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 5
    end
    object edt_hy: TEdit
      Left = 286
      Top = 101
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 6
    end
    object edt_zy: TEdit
      Left = 496
      Top = 101
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object edt_dz: TEdit
      Left = 68
      Top = 189
      Width = 341
      Height = 21
      Enabled = False
      TabOrder = 8
    end
    object edt_lxr: TEdit
      Left = 68
      Top = 141
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 9
    end
    object edt_lxrgx: TEdit
      Left = 286
      Top = 141
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 10
    end
    object edt_lxrdh: TEdit
      Left = 496
      Top = 141
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 11
    end
    object edt_whcd: TEdit
      Left = 496
      Top = 189
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 12
    end
  end
  object edt_tmh: TEdit
    Left = 264
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn_cancle: TBitBtn
    Left = 384
    Top = 312
    Width = 75
    Height = 25
    Caption = #36864' '#20986
    TabOrder = 3
    OnClick = btn_cancleClick
    Kind = bkCancel
  end
  object btn_save: TBitBtn
    Left = 229
    Top = 312
    Width = 75
    Height = 25
    Caption = #20445' '#23384
    Enabled = False
    TabOrder = 4
    OnClick = btn_saveClick
    Kind = bkOK
  end
  object qry_kyh: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from sys_kyh where 1=2 ')
    Left = 528
    Top = 16
  end
  object qry_bd: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 592
    Top = 16
  end
end
