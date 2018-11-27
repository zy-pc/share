object frm_bqcwaz: Tfrm_bqcwaz
  Left = 217
  Top = 153
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = #24202#20301#23433#32622
  ClientHeight = 439
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 617
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 9
      Width = 48
      Height = 16
      Caption = #30149#24202#21495
    end
    object bch: TEdit
      Left = 61
      Top = 5
      Width = 107
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      OnEnter = bchEnter
      OnExit = bchExit
    end
    object BitBtn1: TBitBtn
      Left = 208
      Top = 4
      Width = 80
      Height = 25
      Caption = #30830#23450'(&Y)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
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
    object BitBtn2: TBitBtn
      Left = 452
      Top = 4
      Width = 80
      Height = 25
      Caption = #36864#20986'(&X)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
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
    object BitBtn3: TBitBtn
      Left = 366
      Top = 4
      Width = 80
      Height = 25
      Caption = #26597#35810'(&L)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn3Click
      Kind = bkHelp
    end
    object BitBtn4: TBitBtn
      Left = 288
      Top = 4
      Width = 80
      Height = 25
      Caption = #21047#26032'(&R)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn4Click
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 33
    Width = 617
    Height = 406
    Align = alClient
    Caption = #24453#23433#32622#30149#20154#65306
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 18
      Width = 613
      Height = 386
      Align = alClient
      DataSource = DataSource1
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'tmh'
          Title.Alignment = taCenter
          Title.Caption = #21345#21495
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'brxm'
          Title.Alignment = taCenter
          Title.Caption = #22995#21517
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'brxb'
          Title.Alignment = taCenter
          Title.Caption = #24615#21035
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fylb'
          Title.Alignment = taCenter
          Title.Caption = #36153#29992#31867#21035
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ryrq'
          Title.Alignment = taCenter
          Title.Caption = #20837#38498#26085#26399
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ryzd'
          Title.Alignment = taCenter
          Title.Caption = #20837#38498#35786#26029
          Width = 103
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = bqgl_se_dazbr
    Left = 257
    Top = 221
  end
  object bqgl_up_cwaz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_up_cwaz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
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
      end
      item
        Name = '@bch'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@bclb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
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
    Left = 117
    Top = 222
  end
  object bqgl_se_dazbr: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'bqgl_se_dazbr;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 192
    Top = 222
  end
end
