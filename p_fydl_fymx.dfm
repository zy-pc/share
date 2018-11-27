object frm_fydl_fymx: Tfrm_fydl_fymx
  Left = 236
  Top = 228
  BorderIcons = [biSystemMenu]
  Caption = #36153#29992#39033#30446#26126#32454
  ClientHeight = 600
  ClientWidth = 1034
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object g_fy: TDBGridEh
    Left = 0
    Top = 0
    Width = 1034
    Height = 560
    Align = alClient
    DataGrouping.GroupLevels = <>
    EditActions = [geaCopyEh]
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    FooterColor = clYellow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clMaroon
    FooterFont.Height = -16
    FooterFont.Name = #23435#20307
    FooterFont.Style = [fsBold]
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    RowHeight = 23
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    TitleHeight = 30
    OnDblClick = g_fyDblClick
    OnKeyDown = FormKeyDown
    OnMouseDown = g_fyMouseDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'sfrq'
        Footer.Value = #21512#35745
        Footers = <
          item
            FieldName = 'sfrq'
            Value = #21512#35745
            ValueType = fvtStaticText
          end>
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26085#26399
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = [fsBold]
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'fymc'
        Footer.FieldName = 'fymc'
        Footer.ValueType = fvtCount
        Footers = <
          item
            FieldName = 'fymc'
            ValueType = fvtCount
          end>
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#21517#31216
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = [fsBold]
        Width = 200
      end
      item
        Alignment = taCenter
        DisplayFormat = '#0.00'
        EditButtons = <>
        FieldName = 'fyje'
        Footer.Alignment = taCenter
        Footer.FieldName = 'fyje'
        Footer.ValueType = fvtSum
        Footers = <
          item
            FieldName = 'fyje'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#37329#39069
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = [fsBold]
        Width = 100
      end
      item
        Alignment = taCenter
        DisplayFormat = '#0.00'
        EditButtons = <>
        FieldName = 'zfje'
        Footer.Alignment = taCenter
        Footer.FieldName = 'zfje'
        Footer.ValueType = fvtSum
        Footers = <
          item
            FieldName = 'zfje'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
        Title.Caption = #33258#20184#37329#39069
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = [fsBold]
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'kdksmc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24320#21333#31185#23460
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = [fsBold]
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'czksmc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22788#32622#31185#23460
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = [fsBold]
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'mc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25805#20316#21592
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = [fsBold]
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 560
    Width = 1034
    Height = 40
    Align = alBottom
    TabOrder = 1
    object btnFYLBCX: TButton
      Left = 168
      Top = 5
      Width = 100
      Height = 30
      Caption = #25353#31867#21035#26597#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnFYLBCXClick
    end
  end
  object sp_cx_zyfydl: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_zyfydl'
    Parameters = <>
    Left = 174
    Top = 257
  end
  object ds_cx_zyfydl: TDataSource
    DataSet = sp_cx_zyfydl
    Left = 239
    Top = 249
  end
end
