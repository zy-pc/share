object Frm_zfjk_cx: TFrm_zfjk_cx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #23621#27665#20581#24247#21345'-'#25903#20184#26597#35810
  ClientHeight = 398
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 65
    Align = alTop
    TabOrder = 0
    object lbl_orderno: TLabel
      Left = 368
      Top = 27
      Width = 45
      Height = 16
      Caption = #35746#21333#21495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn_cx: TButton
      Left = 624
      Top = 21
      Width = 75
      Height = 25
      Caption = #26597#35810
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn_cxClick
    end
    object rg_zffs: TRadioGroup
      Left = 48
      Top = 9
      Width = 137
      Height = 43
      Caption = #25903#20184#26041#24335
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #24494#20449
        #25903#20184#23453)
      TabOrder = 2
      OnClick = rg_zffsClick
    end
    object rg_jyfs: TRadioGroup
      Left = 216
      Top = 9
      Width = 129
      Height = 43
      Caption = #20132#26131#26041#24335
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #25903#20184
        #36864#27454)
      TabOrder = 3
      OnClick = rg_jyfsClick
    end
    object edt_orderno: TEdit
      Left = 420
      Top = 24
      Width = 183
      Height = 21
      TabOrder = 0
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 65
    Width = 728
    Height = 271
    Align = alClient
    TabOrder = 1
    object lbl1: TLabel
      Left = 73
      Top = 40
      Width = 48
      Height = 13
      Caption = #21830#25143#21495#65306
    end
    object lbl2: TLabel
      Left = 423
      Top = 40
      Width = 60
      Height = 13
      Caption = #35746#21333#29366#24577#65306
    end
    object lbl3: TLabel
      Left = 73
      Top = 96
      Width = 60
      Height = 13
      Caption = #35746#21333#37329#39069#65306
    end
    object lbl4: TLabel
      Left = 423
      Top = 96
      Width = 60
      Height = 13
      Caption = #19979#21333#26102#38388#65306
    end
    object lbl5: TLabel
      Left = 73
      Top = 152
      Width = 60
      Height = 13
      Caption = #24050#36864#27454#25968#65306
    end
    object lbl6: TLabel
      Left = 423
      Top = 152
      Width = 72
      Height = 13
      Caption = #24050#36864#27454#37329#39069#65306
    end
    object lbl7: TLabel
      Left = 73
      Top = 204
      Width = 48
      Height = 13
      Caption = #27969#27700#21495#65306
    end
    object lbl8: TLabel
      Left = 423
      Top = 204
      Width = 60
      Height = 13
      Caption = #35746#21333#26085#26399#65306
    end
    object edt_appid: TEdit
      Left = 127
      Top = 37
      Width = 171
      Height = 21
      TabOrder = 0
    end
    object edt_status: TEdit
      Left = 489
      Top = 37
      Width = 171
      Height = 21
      TabOrder = 1
    end
    object edt_amount: TEdit
      Left = 139
      Top = 93
      Width = 159
      Height = 21
      TabOrder = 2
    end
    object edt_time: TEdit
      Left = 489
      Top = 93
      Width = 171
      Height = 21
      TabOrder = 3
    end
    object edt_num: TEdit
      Left = 139
      Top = 149
      Width = 159
      Height = 21
      TabOrder = 4
    end
    object edt_amt: TEdit
      Left = 501
      Top = 149
      Width = 159
      Height = 21
      TabOrder = 5
    end
    object edt_lsh: TEdit
      Left = 127
      Top = 201
      Width = 171
      Height = 21
      TabOrder = 6
    end
    object edt_finishDate: TEdit
      Left = 489
      Top = 201
      Width = 171
      Height = 21
      TabOrder = 7
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 336
    Width = 728
    Height = 62
    Align = alBottom
    TabOrder = 2
    object lbl9: TLabel
      Left = 24
      Top = 22
      Width = 60
      Height = 13
      Caption = #36864#27454#21407#22240#65306
    end
    object btn_tk: TButton
      Left = 284
      Top = 16
      Width = 75
      Height = 25
      Caption = #36864#27454#12304'&T'#12305
      Enabled = False
      TabOrder = 1
      OnClick = btn_tkClick
    end
    object btn_cancle: TButton
      Left = 394
      Top = 16
      Width = 75
      Height = 25
      Caption = #21462#28040#12304'&C'#12305
      TabOrder = 2
      OnClick = btn_cancleClick
    end
    object edt_reason: TEdit
      Left = 80
      Top = 19
      Width = 161
      Height = 21
      TabOrder = 0
    end
  end
end
