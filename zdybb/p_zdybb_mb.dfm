object frm_zdybb_mb: Tfrm_zdybb_mb
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frm_zdybb_mb'
  ClientHeight = 623
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object pnl_cs_bg: TPanel
    Left = 0
    Top = 0
    Width = 1012
    Height = 91
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object pnl_cs1: TPanel
      Left = 2
      Top = 2
      Width = 1008
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object pnl_mc3: TPanel
        Left = 580
        Top = 0
        Width = 110
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
      end
      object pnl_mc2: TPanel
        Left = 290
        Top = 0
        Width = 110
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
      end
      object pnl_mc1: TPanel
        Left = 0
        Top = 0
        Width = 110
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object pnl_zj1: TPanel
        Left = 110
        Top = 0
        Width = 180
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
      end
      object pnl_zj2: TPanel
        Left = 400
        Top = 0
        Width = 180
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 4
      end
      object pnl_zj3: TPanel
        Left = 690
        Top = 0
        Width = 180
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 5
      end
    end
    object pnl_cs3: TPanel
      Left = 2
      Top = 54
      Width = 1008
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object pnl_mc9: TPanel
        Left = 580
        Top = 0
        Width = 110
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 4
      end
      object pnl_zj8: TPanel
        Left = 400
        Top = 0
        Width = 180
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
      end
      object pnl_mc8: TPanel
        Left = 290
        Top = 0
        Width = 110
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
      end
      object pnl_zj7: TPanel
        Left = 110
        Top = 0
        Width = 180
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
      end
      object pnl_mc7: TPanel
        Left = 0
        Top = 0
        Width = 110
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object pnl_zj9: TPanel
        Left = 690
        Top = 0
        Width = 180
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 5
      end
    end
    object pnl_cs2: TPanel
      Left = 2
      Top = 28
      Width = 1008
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      Visible = False
      object pnl_mc6: TPanel
        Left = 580
        Top = 0
        Width = 110
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 4
      end
      object pnl_zj5: TPanel
        Left = 400
        Top = 0
        Width = 180
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
      end
      object pnl_mc5: TPanel
        Left = 290
        Top = 0
        Width = 110
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
      end
      object pnl_zj4: TPanel
        Left = 110
        Top = 0
        Width = 180
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
      end
      object pnl_mc4: TPanel
        Left = 0
        Top = 0
        Width = 110
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object pnl_zj6: TPanel
        Left = 690
        Top = 0
        Width = 180
        Height = 26
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 5
      end
    end
  end
  object pnl_bb: TPanel
    Left = 0
    Top = 91
    Width = 1012
    Height = 532
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object GRPrintViewer1: TGRPrintViewer
      Left = 2
      Top = 2
      Width = 1008
      Height = 528
      Align = alClient
      TabOrder = 0
      ControlData = {
        000900000300010000000200030002000200020064000B0001000B0001000300
        030000000300010000000B0001000B0000000B0001002000000048484848484D
        474548464643494646434846494F4A43484A484A4747474C4643}
    end
  end
  object btn_tj: TButton
    Left = 875
    Top = 3
    Width = 75
    Height = 25
    Caption = #32479#35745'(&T)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn_tjClick
  end
  object btn_print: TButton
    Left = 953
    Top = 3
    Width = 75
    Height = 25
    Caption = #25171#21360'(&P)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn_printClick
  end
  object cxCheckComboBox1: TcxCheckComboBox
    Left = 104
    Top = 400
    EditValue = '0000'
    Properties.EditValueFormat = cvfStatesString
    Properties.Items = <
      item
        Description = #22312#38498
        ShortDescription = '123'
      end
      item
        Description = #20986#38498
      end
      item
        Description = 'a'
      end
      item
        Description = 'b'
      end>
    TabOrder = 4
    Visible = False
    Width = 361
  end
  object qry_bb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_zdybb')
    Left = 576
    Top = 312
    object qry_bbid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qry_bblbdm: TStringField
      FieldName = 'lbdm'
      Size = 6
    end
    object qry_bbdm: TIntegerField
      FieldName = 'dm'
    end
    object qry_bbmc: TStringField
      FieldName = 'mc'
      Size = 50
    end
    object qry_bbpym: TStringField
      FieldName = 'pym'
      Size = 50
    end
    object qry_bbnr: TBlobField
      FieldName = 'nr'
    end
    object qry_bbbl: TBlobField
      FieldName = 'bl'
    end
    object qry_bbqybz: TBooleanField
      FieldName = 'qybz'
    end
    object qry_bbbz: TStringField
      FieldName = 'bz'
      Size = 200
    end
    object qry_bbcjr: TStringField
      FieldName = 'cjr'
    end
    object qry_bbcjrq: TStringField
      FieldName = 'cjrq'
    end
    object qry_bbxgr: TStringField
      FieldName = 'xgr'
    end
    object qry_bbord: TBooleanField
      FieldName = 'ord'
    end
    object qry_bbxgrq: TStringField
      FieldName = 'xgrq'
    end
  end
  object sp1: TADOStoredProc
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 576
    Top = 344
  end
  object qry_cs: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 608
    Top = 312
  end
  object GridppReport1: TGridppReport
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    OnFetchRecord = GridppReport1FetchRecord
    Left = 576
    Top = 280
  end
  object sp2: TADOStoredProc
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 544
    Top = 344
  end
  object qry_cxtj: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select mc,mrz zhi from sys_zdybb_cs where 1=2')
    Left = 640
    Top = 312
  end
  object qry2: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 672
    Top = 312
  end
  object qry_sjj: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select mc,mrz zhi from sys_zdybb_cs where 1=2')
    Left = 544
    Top = 312
  end
  object qry_cf: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 704
    Top = 312
  end
  object sp_cf: TADOStoredProc
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 704
    Top = 344
  end
end
