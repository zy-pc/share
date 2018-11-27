object frm_cx_drdxmx: Tfrm_cx_drdxmx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #26126#32454
  ClientHeight = 750
  ClientWidth = 1320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 20
  object g_fy: TDBGridEh
    Left = 0
    Top = 0
    Width = 1320
    Height = 750
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = ds_cx_drdxmx
    EditActions = [geaCopyEh]
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = #23435#20307
    Font.Style = []
    FooterColor = clYellow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clMaroon
    FooterFont.Height = -22
    FooterFont.Name = #23435#20307
    FooterFont.Style = [fsBold]
    FooterRowCount = 1
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    RowHeight = 23
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -22
    TitleFont.Name = #23435#20307
    TitleFont.Style = [fsBold]
    TitleHeight = 30
    Columns = <
      item
        EditButtons = <>
        FieldName = 'sfrq'
        Footers = <
          item
            FieldName = 'sfrq'
            Value = #21512#35745
            ValueType = fvtStaticText
          end>
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26085#26399
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'fymc'
        Footer.FieldName = 'fymc'
        Footer.ValueType = fvtCount
        Footers = <
          item
            FieldName = 'fymc'
            Value = #21512#35745
            ValueType = fvtStaticText
          end>
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#21517#31216
        Width = 400
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
        Width = 100
      end
      item
        Alignment = taCenter
        Color = clYellow
        EditButtons = <>
        FieldName = 'fysl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -22
        Font.Name = #23435#20307
        Font.Style = []
        Footer.Alignment = taCenter
        Footer.FieldName = 'fysl'
        Footers = <
          item
            FieldName = 'fysl'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
        Title.Caption = #25968#37327
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'kdks'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24320#21333#31185#23460
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'czks'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22788#32622#31185#23460
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'sfczy'
        Footers = <>
        Title.Caption = #25805#20316#21592
        Width = 125
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sp_cx_drdxmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zysf_cx_drdxmx'
    Parameters = <>
    Left = 174
    Top = 257
  end
  object ds_cx_drdxmx: TDataSource
    DataSet = sp_cx_drdxmx
    Left = 239
    Top = 249
  end
end
