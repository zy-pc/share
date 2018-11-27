object frm_bqzc: Tfrm_bqzc
  Left = 195
  Top = 200
  BorderIcons = [biSystemMenu]
  Caption = #36716'    '#24202
  ClientHeight = 257
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 24
    Top = 117
    Width = 305
    Height = 85
    TabOrder = 1
    object Label3: TLabel
      Left = 61
      Top = 40
      Width = 48
      Height = 16
      Caption = #36716'  '#33267
    end
    object Image1: TImage
      Left = 125
      Top = 32
      Width = 41
      Height = 33
      Picture.Data = {
        055449636F6E0000010002002020100000000000E80200002600000010101000
        00000000280100000E0300002800000020000000400000000100040000000000
        8002000000000000000000000000000000000000000000000000800000800000
        0080800080000000800080008080000080808000C0C0C0000000FF0000FF0000
        00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000004500000000
        0000000000000000000000545400000000000000000000000000004545450000
        0000000000000000000000545454540000000000000000000000004545454545
        0000000054545454545454545454545454000000454545454545454545454545
        4545000054545454545454545454545454545400454545454545454545454545
        454585C05454545454545454545454545488CC00488888888888888545454545
        88CC00005CCCCCCCCCCCCCC454545488CC0000000000000000000045454588CC
        0000000000000000000000545488CC0000000000000000000000004588CC0000
        000000000000000000000088CC0000000000000000000000000000CC00000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFC3FFFFFFC0FFF
        FFFC03FFFFFC00FF0000003F0000000F0000000300000001000000030000000F
        0000003FFFFC00FFFFFC03FFFFFC0FFFFFFC3FFFFFFCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000
        0100040000000000C00000000000000000000000000000000000000000000000
        000080000080000000808000800000008000800080800000C0C0C00080808000
        0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
        0000000000000000000000000000000000000000000000000000000000000004
        5000000000000005454000005454545454545000454545454545454054545454
        5454577CCCCCCCC545477C0000000004577C0000000000077C0000000000000C
        00000000000000000000000000000000000000000000000000000000FFFF0000
        FFFF0000FFFF0000FFFF0000FE7F0000FE1F0000000700000001000000000000
        00030000FE0F0000FE3F0000FEFF0000FFFF0000FFFF0000FFFF0000}
    end
    object Label4: TLabel
      Left = 241
      Top = 40
      Width = 16
      Height = 16
      Caption = #24202
    end
    object xch: TEdit
      Left = 184
      Top = 36
      Width = 44
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      OnEnter = ychEnter
      OnExit = ychExit
      OnKeyDown = xchKeyDown
    end
    object cwh_gyzhtsxq: TEdit
      Left = 184
      Top = 6
      Width = 51
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
      OnKeyDown = xchKeyDown
    end
  end
  object Panel1: TPanel
    Left = 24
    Top = 16
    Width = 305
    Height = 101
    TabOrder = 0
    object Label2: TLabel
      Left = 99
      Top = 61
      Width = 16
      Height = 16
      Caption = #24202
    end
    object Label1: TLabel
      Left = 40
      Top = 27
      Width = 88
      Height = 16
      Caption = ' '#26159' '#21542' '#23558' :'
    end
    object Label5: TLabel
      Left = 140
      Top = 61
      Width = 48
      Height = 16
      Caption = #30149'  '#20154
    end
    object ych: TEdit
      Left = 38
      Top = 57
      Width = 54
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      OnEnter = ychEnter
      OnExit = ychExit
      OnKeyDown = ychKeyDown
    end
    object brxm: TEdit
      Left = 196
      Top = 57
      Width = 93
      Height = 24
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
      OnEnter = ychEnter
      OnExit = ychExit
    end
  end
  object ok: TBitBtn
    Left = 69
    Top = 221
    Width = 89
    Height = 25
    Caption = '&Y.'#30830#23450
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = okClick
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
  object no: TBitBtn
    Left = 189
    Top = 221
    Width = 89
    Height = 25
    Cancel = True
    Caption = '&C.'#21462#28040
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = noClick
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
  object sp_up_zc: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_up_zkzc;1'
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
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
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
        Name = '@ybch'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@yksdm'
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
    Left = 82
    Top = 111
  end
  object sp_se_cwqk: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_se_cwqk;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@sr_ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sr_bcbh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@sc_zy'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 162
    Top = 111
  end
  object cwh: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 264
    Top = 120
  end
end
