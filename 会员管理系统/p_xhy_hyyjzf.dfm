object frm_xhy_hyyjzf: Tfrm_xhy_hyyjzf
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #20250#21592#39044#20132#20316#24223
  ClientHeight = 550
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -18
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 18
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 89
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 711
      Height = 54
      Caption = 
        #20250#21592#39044#20132#20316#24223':'#35813#21151#33021#29992#20110#23545#24050#32463#20805#20540#30340#39044#20132#37329#39069#36827#34892#20316#24223#25805#20316#12290#23558#30456#24212#20943#23569#20250#21592#21345#20313#39069#21450#13#10#24635#39044#20132#37329#39069#12290#20316#24223#30340#20805#20540#39044#20132#23558#30001#32418#33394#26174#31034#20986#26469#12290 +
        #13#10#19979#26041#36755#20837#21345#21495#36827#34892#20805#20540#39044#20132#26597#35810
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 89
    Width = 757
    Height = 80
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 72
      Height = 18
      Caption = #20250#21592#21345#21495
    end
    object Label3: TLabel
      Left = 240
      Top = 16
      Width = 72
      Height = 18
      Caption = #20250#21592#22995#21517
    end
    object Label4: TLabel
      Left = 456
      Top = 16
      Width = 72
      Height = 18
      Caption = #36523#20221#35777#21495
    end
    object Label5: TLabel
      Left = 42
      Top = 48
      Width = 54
      Height = 18
      Caption = #24635#39044#20132
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -18
      Font.Name = #40657#20307
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 258
      Top = 48
      Width = 54
      Height = 18
      Caption = #24635#36153#29992
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -18
      Font.Name = #40657#20307
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 456
      Top = 48
      Width = 72
      Height = 18
      Caption = #20250#21592#20313#39069
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -18
      Font.Name = #40657#20307
      Font.Style = []
      ParentFont = False
    end
    object e_tmh: TEdit
      Left = 102
      Top = 13
      Width = 127
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 0
      OnEnter = e_tmhEnter
      OnKeyDown = e_tmhKeyDown
    end
    object e_brxm: TEdit
      Left = 319
      Top = 13
      Width = 127
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 1
      OnKeyDown = e_brxmKeyDown
      OnKeyPress = e_syjeKeyPress
    end
    object e_sfzhm: TEdit
      Left = 534
      Top = 13
      Width = 185
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 2
      OnKeyDown = e_brxmKeyDown
      OnKeyPress = e_syjeKeyPress
    end
    object e_zyj: TEdit
      Left = 102
      Top = 45
      Width = 127
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
      OnKeyDown = e_brxmKeyDown
      OnKeyPress = e_syjeKeyPress
    end
    object e_zfy: TEdit
      Left = 319
      Top = 45
      Width = 127
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 4
      OnKeyDown = e_brxmKeyDown
      OnKeyPress = e_syjeKeyPress
    end
    object e_syje: TEdit
      Left = 534
      Top = 45
      Width = 127
      Height = 26
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 5
      OnKeyDown = e_brxmKeyDown
      OnKeyPress = e_syjeKeyPress
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 169
    Width = 757
    Height = 381
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object pnl4: TPanel
      Left = 2
      Top = 2
      Width = 753
      Height = 303
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object cxGrid_yjmx: TcxGrid
        Left = 2
        Top = 2
        Width = 749
        Height = 299
        Align = alClient
        TabOrder = 0
        object cxGrid_yjmxDBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid_yjmxDBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGrid_yjmxDBTableView1CustomDrawCell
          DataController.DataSource = ds_yjmxcx
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #20849#35745':0.00'
              Kind = skSum
              FieldName = 'yjje'
              Column = cxgrdbclmnGrid_yjmxDBTableView1Column2
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Background = cxStyle1
          Styles.Header = cxStyle10
          object cxgrdbclmnGrid_yjmxDBTableView1Column1: TcxGridDBColumn
            Caption = #20316#24223#29366#24577
            DataBinding.FieldName = 'tfbz'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
          object cxgrdbclmnGrid_yjmxDBTableView1Column2: TcxGridDBColumn
            Caption = #39044#20132#37329#39069
            DataBinding.FieldName = 'yjje'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            HeaderAlignmentHorz = taCenter
            Width = 114
          end
          object cxgrdbclmnGrid_yjmxDBTableView1Column7: TcxGridDBColumn
            Caption = #25910#25454#32534#21495
            DataBinding.FieldName = 'sjbh'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            HeaderAlignmentHorz = taCenter
            Width = 82
          end
          object cxgrdbclmnGrid_yjmxDBTableView1Column3: TcxGridDBColumn
            Caption = #20184#27454#26041#24335
            DataBinding.FieldName = 'fkfsmc'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            HeaderAlignmentHorz = taCenter
            Width = 88
          end
          object cxgrdbclmnGrid_yjmxDBTableView1Column4: TcxGridDBColumn
            Caption = #25805#20316#21592
            DataBinding.FieldName = 'czymc'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
          object cxgrdbclmnGrid_yjmxDBTableView1Column5: TcxGridDBColumn
            Caption = #39044#20132#26085#26399
            DataBinding.FieldName = 'sfrq'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            HeaderAlignmentHorz = taCenter
            Width = 184
          end
          object cxgrdbclmnGrid_yjmxDBTableView1Column6: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'bz'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            HeaderAlignmentHorz = taCenter
            Width = 104
          end
        end
        object cxGrid_yjmxLevel1: TcxGridLevel
          GridView = cxGrid_yjmxDBTableView1
        end
      end
    end
    object cxbut_zf: TcxButton
      Left = 261
      Top = 328
      Width = 100
      Height = 33
      Caption = #20316#24223
      TabOrder = 1
      OnClick = cxbut_zfClick
    end
    object cxbut_tc: TcxButton
      Left = 367
      Top = 328
      Width = 100
      Height = 33
      Caption = #36864#20986
      TabOrder = 2
      OnClick = cxbut_tcClick
    end
  end
  object cxgrid_xzlb: TcxGrid
    Left = 725
    Top = 26
    Width = 458
    Height = 137
    TabOrder = 3
    Visible = False
    OnExit = cxgrid_xzlbExit
    object cxgrid_xzlbDBTableView1: TcxGridDBTableView
      OnDblClick = cxgrid_xzlbDBTableView1DblClick
      OnKeyDown = cxgrid_xzlbDBTableView1KeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DM_data.ds_hy_jbxx
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxgrdbclmnGrid2DBTableView1Column1: TcxGridDBColumn
        Caption = #20250#21592#21345#21495
        DataBinding.FieldName = 'tmh'
        Width = 113
      end
      object cxgrdbclmnGrid2DBTableView1Column2: TcxGridDBColumn
        Caption = #20250#21592#22995#21517
        DataBinding.FieldName = 'brxm'
        Width = 84
      end
      object cxgrdbclmnGrid2DBTableView1Column3: TcxGridDBColumn
        Caption = #24615#21035
        DataBinding.FieldName = 'brxb'
        Width = 53
      end
      object cxgrdbclmnGrid2DBTableView1Column4: TcxGridDBColumn
        Caption = #36523#20221#35777#21495
        DataBinding.FieldName = 'sfzhm'
        Width = 159
      end
    end
    object cxgrid_xzlbLevel1: TcxGridLevel
      GridView = cxgrid_xzlbDBTableView1
    end
  end
  object sp_yjmxcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'hy_cx_yjmx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end>
    Left = 224
    Top = 315
  end
  object ds_yjmxcx: TDataSource
    DataSet = sp_yjmxcx
    Left = 255
    Top = 315
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16775416
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16443110
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14599344
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8519755
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 14481663
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 191
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 166
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet
      Caption = 'UserFormat3'
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.Inactive = cxStyle9
      Styles.Selection = cxStyle12
      Styles.Footer = cxStyle5
      Styles.Group = cxStyle6
      Styles.GroupByBox = cxStyle7
      Styles.Header = cxStyle8
      Styles.Indicator = cxStyle10
      Styles.Preview = cxStyle11
      BuiltIn = True
    end
  end
  object sp_up_tyj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'hy_up_tyj'
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
        Size = 16
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
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end>
    Left = 392
    Top = 248
  end
end
