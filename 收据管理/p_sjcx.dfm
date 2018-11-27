object frm_sjcx: Tfrm_sjcx
  Left = 356
  Top = 133
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #25910#25454#26597#35810
  ClientHeight = 250
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 231
      Top = 10
      Width = 60
      Height = 25
      Caption = #26597#35810
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edt_sjh: TLabeledEdit
      Left = 64
      Top = 11
      Width = 152
      Height = 23
      EditLabel.Width = 53
      EditLabel.Height = 15
      EditLabel.Caption = #25910#25454#21495':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edt_sjhKeyPress
    end
    object bt_zf: TButton
      Left = 312
      Top = 11
      Width = 60
      Height = 25
      Caption = #30830#35748
      TabOrder = 2
      OnClick = bt_zfClick
    end
    object Button3: TButton
      Left = 388
      Top = 10
      Width = 60
      Height = 25
      Caption = #36864#20986
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 464
    Height = 209
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 239
    object pnl_jbxx: TPanel
      Left = 1
      Top = 1
      Width = 462
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object cxLabel8: TcxLabel
        Left = 23
        Top = 32
        Caption = #30149#20154#21345#21495#65306
      end
      object cxLabel1: TcxLabel
        Left = 23
        Top = 9
        Caption = #25910#25454#31867#22411#65306
      end
      object cxLabel2: TcxLabel
        Left = 248
        Top = 32
        Caption = #30149#20154#22995#21517#65306
      end
      object cxLabel7: TcxLabel
        Left = 248
        Top = 5
        Caption = #25910#25454#29366#24577#65306
      end
      object edt_sjzt: TcxTextEdit
        Left = 321
        Top = 5
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 121
      end
      object edt_brxm: TcxTextEdit
        Left = 321
        Top = 32
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 121
      end
      object edt_brkh: TcxTextEdit
        Left = 94
        Top = 32
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 121
      end
      object edt_sjlx: TcxTextEdit
        Left = 94
        Top = 5
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 121
      end
    end
    object pnl_sf: TPanel
      Left = 1
      Top = 84
      Width = 462
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 90
      object cxLabel3: TcxLabel
        Left = 11
        Top = 4
        Caption = #25910#36153#25805#20316#21592#65306
      end
      object cxLabel5: TcxLabel
        Left = 249
        Top = 4
        Caption = #25910#36153#26102#38388#65306
      end
      object edt_sfczy: TcxTextEdit
        Left = 94
        Top = 4
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 121
      end
      object edt_sfsj: TcxTextEdit
        Left = 321
        Top = 4
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 121
      end
    end
    object pnl_tf: TPanel
      Left = 1
      Top = 113
      Width = 462
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object cxLabel4: TcxLabel
        Left = 11
        Top = 4
        Caption = #36864#36153#25805#20316#21592#65306
      end
      object cxLabel6: TcxLabel
        Left = 248
        Top = 4
        Caption = #36864#36153#26102#38388#65306
      end
      object edt_tfczy: TcxTextEdit
        Left = 94
        Top = 4
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 121
      end
      object edt_tfsj: TcxTextEdit
        Left = 321
        Top = 4
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 121
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 145
      Width = 462
      Height = 63
      Align = alClient
      TabOrder = 3
      ExplicitLeft = -15
      ExplicitTop = 161
      ExplicitWidth = 480
    end
    object pnl_fyxx: TPanel
      Left = 1
      Top = 56
      Width = 462
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object cxLabel10: TcxLabel
        Left = 248
        Top = 4
        Caption = #25910#25454#37329#39069#65306
      end
      object cxLabel9: TcxLabel
        Left = 23
        Top = 4
        Caption = #36153#29992#21517#31216#65306
      end
      object edt_fymc: TcxTextEdit
        Left = 94
        Top = 4
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 121
      end
      object edt_sjje: TcxTextEdit
        Left = 321
        Top = 4
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 121
      end
    end
  end
  object qry_sjzfcx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'sjbh'
        Size = -1
        Value = Null
      end
      item
        Name = 'shr'
        Size = -1
        Value = Null
      end
      item
        Name = 'shsj'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @sjbh int'
      'select @sjbh=:sjbh'
      'if not exists(select * from sjgl_zfsj where sjbh=@sjbh)'
      '  insert into sjgl_zfsj(sjbh,shbz,shr,shsj)'
      '  select @sjbh,0,:shr,:shsj')
    Left = 256
    Top = 208
  end
  object sp_sjcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    ProcedureName = 'sjgl_sjcx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@sjh'
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 224
    Top = 208
  end
  object qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 304
    Top = 208
  end
end
