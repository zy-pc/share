object Frm_bqtycfhj: TFrm_bqtycfhj
  Left = 8
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #30149#21306#36864#26410#21457#33647#33647#21697#22788#26041#21010#20215
  ClientHeight = 536
  ClientWidth = 853
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel4: TPanel
    Left = 0
    Top = 88
    Width = 853
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label7: TLabel
      Left = 8
      Top = 7
      Width = 56
      Height = 16
      Caption = #21333#20301'[&W]'
      FocusControl = DBEdit1
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 395
      Top = 7
      Width = 80
      Height = 16
      Caption = #26412#25209#37327#29992#37327
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 135
      Top = 7
      Width = 64
      Height = 16
      Caption = #36864#33647#25968#37327
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 274
      Top = 7
      Width = 32
      Height = 16
      Caption = #21333#20215
    end
    object Label13: TLabel
      Left = 542
      Top = 7
      Width = 32
      Height = 16
      Caption = #31867#21035
    end
    object DBEdit1: TDBEdit
      Left = 66
      Top = 3
      Width = 68
      Height = 24
      DataField = 'ypdw'
      DataSource = DS_mx
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 310
      Top = 4
      Width = 83
      Height = 24
      DataField = 'ypdj'
      DataSource = DS_mx
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 1
    end
    object E_kc: TEdit
      Left = 472
      Top = 4
      Width = 68
      Height = 24
      Color = clInfoBk
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 576
      Top = 4
      Width = 73
      Height = 24
      DataField = 'yplb'
      DataSource = DS_mx
      Enabled = False
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 201
      Top = 4
      Width = 68
      Height = 24
      DataField = 'ypsl'
      DataSource = DS_mx
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 4
      OnExit = DBEdit3Exit
      OnKeyPress = DBEdit3KeyPress
    end
    object ComboBox1: TComboBox
      Left = 718
      Top = 3
      Width = 129
      Height = 24
      Style = csDropDownList
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 0
      TabOrder = 5
      Visible = False
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 155
    Width = 853
    Height = 381
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 2
      Top = 2
      Width = 849
      Height = 377
      Align = alClient
      DataSource = DS_mx
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnEnter = DBGrid2Enter
      Columns = <
        item
          Color = clAqua
          Expanded = False
          FieldName = 'xh'
          Title.Alignment = taCenter
          Title.Caption = #24207#21495
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ypmc'
          Title.Alignment = taCenter
          Title.Caption = #33647#21697#21517#31216
          Width = 227
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ypgg'
          Title.Alignment = taCenter
          Title.Caption = #33647#21697#35268#26684
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ypdw'
          Title.Alignment = taCenter
          Title.Caption = #21333#20301
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ypsl'
          Title.Alignment = taCenter
          Title.Caption = #25968#37327
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ypdj'
          Title.Alignment = taCenter
          Title.Caption = #21333#20215
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hj'
          Title.Alignment = taCenter
          Title.Caption = #37329#39069
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel11: TPanel
    Left = 0
    Top = 0
    Width = 853
    Height = 55
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 4
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 212
      Height = 51
      Align = alLeft
      BevelInner = bvLowered
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 5
        Top = 32
        Width = 42
        Height = 14
        Caption = #21307'  '#29983
      end
      object Label11: TLabel
        Left = 5
        Top = 7
        Width = 42
        Height = 14
        Caption = #30913#21345#21495
      end
      object E_ys: TEdit
        Left = 53
        Top = 27
        Width = 57
        Height = 22
        Enabled = False
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 1
        OnChange = E_ysChange
        OnKeyPress = E_ysKeyPress
      end
      object Edit4: TEdit
        Left = 113
        Top = 28
        Width = 92
        Height = 22
        Enabled = False
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 2
      end
      object E_tmh: TEdit
        Left = 53
        Top = 4
        Width = 150
        Height = 22
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        MaxLength = 9
        TabOrder = 0
        OnChange = E_tmhChange
        OnKeyPress = E_tmhKeyPress
      end
    end
    object Panel7: TPanel
      Left = 214
      Top = 2
      Width = 637
      Height = 51
      Align = alClient
      BevelInner = bvLowered
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label14: TLabel
        Left = 14
        Top = 9
        Width = 28
        Height = 14
        Caption = #22995#21517
      end
      object Label18: TLabel
        Left = 14
        Top = 31
        Width = 28
        Height = 14
        Caption = #24615#21035
      end
      object Label1: TLabel
        Left = 125
        Top = 9
        Width = 42
        Height = 14
        Caption = #31185'  '#23460
      end
      object Label6: TLabel
        Left = 277
        Top = 9
        Width = 56
        Height = 14
        Caption = #30149' '#24202' '#21495
      end
      object Label16: TLabel
        Left = 125
        Top = 31
        Width = 42
        Height = 14
        Caption = #24635#36153#29992
      end
      object Label15: TLabel
        Left = 277
        Top = 31
        Width = 56
        Height = 14
        Caption = #39044#20132#37329#39069
      end
      object Label23: TLabel
        Left = 420
        Top = 9
        Width = 56
        Height = 14
        Caption = #36153#29992#31867#21035
      end
      object DBEdit10: TDBEdit
        Left = 42
        Top = 4
        Width = 66
        Height = 22
        DataField = 'brxm'
        DataSource = DS_zydj
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 0
        OnChange = DBEdit10Change
      end
      object DBEdit11: TDBEdit
        Left = 42
        Top = 27
        Width = 66
        Height = 22
        DataField = 'brxb'
        DataSource = DS_zydj
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 1
      end
      object DBEdit12: TDBEdit
        Left = 167
        Top = 4
        Width = 96
        Height = 22
        DataField = 'ksmc'
        DataSource = DS_zydj
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 2
      end
      object DBEdit13: TDBEdit
        Left = 333
        Top = 4
        Width = 70
        Height = 22
        DataField = 'bch'
        DataSource = DS_zydj
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 3
      end
      object DBEdit9: TDBEdit
        Left = 167
        Top = 27
        Width = 96
        Height = 22
        DataField = 'zfy'
        DataSource = DS_zydj
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 333
        Top = 27
        Width = 70
        Height = 22
        DataField = 'yjze'
        DataSource = DS_zydj
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 477
        Top = 4
        Width = 71
        Height = 22
        DataField = 'fylbmc'
        DataSource = DS_zydj
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 6
      end
    end
  end
  object Panel21: TPanel
    Left = 0
    Top = 55
    Width = 853
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 5
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 213
      Height = 29
      Align = alLeft
      BevelInner = bvLowered
      Enabled = False
      TabOrder = 0
      object Button1: TButton
        Left = 15
        Top = 3
        Width = 178
        Height = 25
        Caption = #32487#32493#28155#21152#33647#21697
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Panel6: TPanel
      Left = 215
      Top = 2
      Width = 636
      Height = 29
      Align = alClient
      BevelInner = bvLowered
      Enabled = False
      TabOrder = 1
      object Label3: TLabel
        Left = 4
        Top = 8
        Width = 48
        Height = 15
        Caption = #22788#26041#21495
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 192
        Top = 7
        Width = 64
        Height = 15
        Caption = #22788#26041#37329#39069
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 457
        Top = 8
        Width = 32
        Height = 15
        Caption = #20313#39069
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 339
        Top = 8
        Width = 32
        Height = 15
        Caption = #33258#36153
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit4: TDBEdit
        Left = 257
        Top = 3
        Width = 75
        Height = 23
        DataField = 'cfzje'
        DataSource = DS_zb
        Font.Charset = GB2312_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        TabOrder = 0
      end
      object E_cfh: TEdit
        Left = 53
        Top = 3
        Width = 132
        Height = 23
        Font.Charset = GB2312_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        TabOrder = 1
      end
      object E_ye: TEdit
        Left = 488
        Top = 3
        Width = 75
        Height = 23
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 372
        Top = 3
        Width = 75
        Height = 23
        DataField = 'zfzje'
        DataSource = DS_zb
        Font.Charset = GB2312_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 121
    Width = 853
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object Label19: TLabel
      Left = 4
      Top = 9
      Width = 128
      Height = 16
      Caption = #36873#25321#21152#20837#30340#25209#37327#21495
    end
    object B_add: TBitBtn
      Left = 360
      Top = 6
      Width = 66
      Height = 25
      Caption = #26032#22686'(&A)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = B_addClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333393333
        333333333337F3333333333333397333333333333337FF333333333333C94333
        3333333333737F333333333333C9473333333333337373F3333333333CC94433
        3333333337F7F7F3333333333CC94473333333333737F73F33333333CCC94443
        333333337F37F37F33333333CCC94447333333337337F373F333333CCCC94444
        33333337F337F337F333333CCCC94444733333373337F3373F3333CCCCC94444
        4333337F3337FF337F3333CCCCC94444473333733F7773FF73F33CCCCC393444
        443337F37737F773F7F33CCC33393374447337F73337F33737FFCCC333393333
        444377733337F333777FC3333339333337437333333733333373}
      NumGlyphs = 2
    end
    object b_cont: TBitBtn
      Left = 430
      Top = 6
      Width = 66
      Height = 25
      Caption = #32487#32493
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = b_contClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00559999999995
        5555557777777775F5555559999999505555555777777757FFF5555555555550
        0955555555555FF7775F55555555995501955555555577557F75555555555555
        01995555555555557F5755555555555501905555555555557F57555555555555
        0F905555555555557FF75555555555500005555555555557777555555555550F
        F05555555555557F57F5555555555008F05555555555F775F755555555570000
        05555555555775577555555555700007555555555F755F775555555570000755
        55555555775F77555555555700075555555555F75F7755555555570007555555
        5555577F77555555555500075555555555557777555555555555}
      NumGlyphs = 2
    end
    object b_save: TBitBtn
      Left = 499
      Top = 6
      Width = 67
      Height = 25
      Caption = #20445#23384
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = b_saveClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object b_del: TBitBtn
      Left = 564
      Top = 6
      Width = 66
      Height = 25
      Caption = #21024#38500
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = b_delClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object b_delcf: TBitBtn
      Left = 630
      Top = 6
      Width = 80
      Height = 25
      Caption = #25918#24323#22788#26041
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = b_delcfClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object b_close: TBitBtn
      Left = 780
      Top = 6
      Width = 69
      Height = 25
      Caption = #36864#20986'(&X)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = b_closeClick
      Kind = bkClose
    end
    object BitBtn2: TBitBtn
      Left = 710
      Top = 6
      Width = 70
      Height = 25
      Caption = #26597#35810'(&Q)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn2Click
      Kind = bkHelp
    end
    object edt_pldh: TEdit
      Left = 129
      Top = 5
      Width = 229
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 7
    end
  end
  object DBGrid5: TDBGrid
    Left = 17
    Top = 412
    Width = 174
    Height = 193
    DataSource = DS_ypbz
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid5Exit
    OnKeyPress = DBGrid5KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ypdw'
        Title.Alignment = taCenter
        Title.Caption = #33647#21697#21333#20301
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bzbl'
        Title.Alignment = taCenter
        Title.Caption = #21253#35013#27604#20363
        Width = 81
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 145
    Top = 187
    Width = 159
    Height = 166
    DataSource = DS_ys
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid4Exit
    OnKeyPress = DBGrid4KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #22995#21517
        Width = 73
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 10
    Top = 157
    Width = 320
    Height = 120
    DataSource = DS_zydj
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 7
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
        FieldName = 'tmh'
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Alignment = taCenter
        Title.Caption = #30149#21592#22995#21517
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ksmc'
        Title.Alignment = taCenter
        Title.Caption = #20303#38498#31185#23460
        Width = 93
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 55
    Top = 283
    Width = 782
    Height = 167
    DataSource = DS_yp
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 8
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ypmc'
        Title.Alignment = taCenter
        Title.Caption = #33647#21697#21517#31216
        Width = 231
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pym'
        Title.Alignment = taCenter
        Title.Caption = #25340#38899#30721
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypgg'
        Title.Alignment = taCenter
        Title.Caption = #33647#21697#35268#26684
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ypdw'
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Width = 74
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'kcsl'
        Title.Alignment = taCenter
        Title.Caption = #24211#23384#25968#37327
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lsj'
        Title.Alignment = taCenter
        Title.Caption = #21333#20215
        Width = 78
        Visible = True
      end>
  end
  object DS_ys: TDataSource
    DataSet = Qry_ys
    Left = 143
    Top = 304
  end
  object DS_zb: TDataSource
    DataSet = Qry_zb
    Left = 574
    Top = 186
  end
  object DS_mx: TDataSource
    DataSet = Qry_mx
    Left = 522
    Top = 188
  end
  object DS_yp: TDataSource
    DataSet = SP_yp
    Left = 200
    Top = 299
  end
  object DS_ypbz: TDataSource
    DataSet = Qry_ypbz
    Left = 693
    Top = 194
  end
  object DS_zydj: TDataSource
    DataSet = qry_zydj
    Left = 374
    Top = 310
  end
  object Qry_ys: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'pym'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_czy'
      'where pym like :pym and'
      '      ysbz=1 and sybz=1'
      'order by mc')
    Left = 90
    Top = 178
  end
  object SP_yp: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyxyf_cx_ypkc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 254
    Top = 305
  end
  object SP_tyyp: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyxyf_ty_wfyypcx;1'
    Parameters = <>
    Left = 141
    Top = 180
  end
  object Qry_zb: TADOQuery
    AutoCalcFields = False
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'cfbh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select * from zyxyf_zycfzb where cfbh=:cfbh')
    Left = 193
    Top = 180
  end
  object Qry_mx: TADOQuery
    AutoCalcFields = False
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = Qry_mxCalcFields
    Parameters = <
      item
        Name = 'cfbh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end>
    SQL.Strings = (
      'select * from zyxyf_zycfmx'
      'where cfbh=:cfbh')
    Left = 239
    Top = 183
    object Qry_mxcfbh: TStringField
      FieldName = 'cfbh'
      FixedChar = True
      Size = 12
    end
    object Qry_mxxh: TIntegerField
      FieldName = 'xh'
    end
    object Qry_mxypdm: TStringField
      FieldName = 'ypdm'
      FixedChar = True
      Size = 14
    end
    object Qry_mxypdwid: TIntegerField
      FieldName = 'ypdwid'
    end
    object Qry_mxypdw: TStringField
      FieldName = 'ypdw'
      FixedChar = True
      Size = 8
    end
    object Qry_mxypbzbl: TIntegerField
      FieldName = 'ypbzbl'
    end
    object Qry_mxypsl: TBCDField
      FieldName = 'ypsl'
      Precision = 18
      Size = 2
    end
    object Qry_mxypdj: TBCDField
      FieldName = 'ypdj'
      Precision = 18
    end
    object Qry_mxypmc: TStringField
      FieldKind = fkLookup
      FieldName = 'ypmc'
      LookupDataSet = Qry_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'ypmc'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object Qry_mxypgg: TStringField
      FieldKind = fkLookup
      FieldName = 'ypgg'
      LookupDataSet = Qry_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'ypgg'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object Qry_mxhj: TFloatField
      FieldKind = fkCalculated
      FieldName = 'hj'
      Calculated = True
    end
    object Qry_mxyplb: TStringField
      FieldName = 'yplb'
      FixedChar = True
      Size = 30
    end
    object Qry_mxzfje: TFloatField
      FieldKind = fkCalculated
      FieldName = 'zfje'
      Calculated = True
    end
    object Qry_mxkccgj: TBCDField
      FieldName = 'kccgj'
      Precision = 18
    end
    object Qry_mxsbfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'sbfybl'
      LookupDataSet = Qry_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'sbfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object Qry_mxhtfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'htfybl'
      LookupDataSet = Qry_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'htfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object Qry_mxbxfybl: TFloatField
      FieldKind = fkLookup
      FieldName = 'bxfybl'
      LookupDataSet = Qry_ypdm
      LookupKeyFields = 'ypdm'
      LookupResultField = 'bxfybl'
      KeyFields = 'ypdm'
      Lookup = True
    end
    object Qry_mxyytj: TStringField
      FieldName = 'yytj'
      Size = 8
    end
    object Qry_mxypxq: TDateTimeField
      FieldName = 'ypxq'
    end
    object Qry_mxypph: TStringField
      FieldName = 'ypph'
      Size = 16
    end
    object Qry_mxrkdh: TStringField
      FieldName = 'rkdh'
      Size = 16
    end
    object Qry_mxoldcfbh: TStringField
      FieldName = 'oldcfbh'
      FixedChar = True
      Size = 12
    end
  end
  object Qry_ypdm: TADOQuery
    AutoCalcFields = False
    CacheSize = 1000
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ypdm')
    Left = 290
    Top = 183
  end
  object SP_cfbh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zy_getcfbh;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@cfbh'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 12
        Value = Null
      end>
    Left = 349
    Top = 181
  end
  object Qry_ypbz: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ypdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 14
        Value = Null
      end>
    SQL.Strings = (
      'select xyk_bzb.bzbl,xyk_ypdw.id,xyk_ypdw.ypdw'
      'from xyk_bzb,xyk_ypdw'
      'where xyk_bzb.ypdm=:ypdm and'
      '      xyk_bzb.xyk_ypdw_id=xyk_ypdw.id'
      'order by  xyk_bzb.id')
    Left = 408
    Top = 182
  end
  object qry_zydj: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'tmh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end>
    SQL.Strings = (
      'select dj.*,ks.mc ksmc,lb.mc fylbmc,lb.fyxz,lb.zfzdmc'
      'from zysf_zydj dj,sys_ksdm ks,sys_fylb lb'
      'where dj.tmh=:tmh and ksdm=ks.dm '
      '      and dj.fylb=lb.dm and dj.cybz=0')
    Left = 465
    Top = 185
  end
  object SP_save: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_zyxyf_cfty;1'
    Parameters = <>
    Left = 641
    Top = 188
  end
  object ad_plcl: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 315
    Top = 305
  end
end
