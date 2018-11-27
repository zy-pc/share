object frm_czy_yjmxz: Tfrm_czy_yjmxz
  Left = 211
  Top = 153
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #20840#20307#25910#36153#21592#39044#20132#26126#32454#24080
  ClientHeight = 558
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 816
    Height = 33
    Align = alTop
    Shape = bsFrame
    Style = bsRaised
    ExplicitWidth = 669
  end
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 56
    Height = 16
    Caption = #36215#26085#26399':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 184
    Top = 9
    Width = 56
    Height = 16
    Caption = #27490#26085#26399':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
  end
  object ok2: TBitBtn
    Left = 735
    Top = 3
    Width = 71
    Height = 25
    Caption = #36864#20986'(&X)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ok2Click
    NumGlyphs = 2
  end
  object sdate: TDateTimePicker
    Left = 67
    Top = 4
    Width = 111
    Height = 24
    Date = 37028.604380682900000000
    Time = 37028.604380682900000000
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 558
    Top = 3
    Width = 71
    Height = 25
    Caption = #32479#35745'(&T)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object edate: TDateTimePicker
    Left = 241
    Top = 4
    Width = 111
    Height = 24
    Date = 37028.604380682900000000
    Time = 37028.604380682900000000
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 370
    Top = 9
    Width = 88
    Height = 17
    Caption = #36864#39044#20132#27454
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 816
    Height = 525
    Align = alClient
    TabOrder = 5
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = ds_yjmx
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #20154#27425
          Kind = skCount
        end
        item
          Kind = skCount
        end
        item
          Format = #37329#39069':0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Column5
        end
        item
          Format = #21512#35745':'
          Kind = skCount
          Column = cxGrid1DBTableView1Column1
        end
        item
          Format = '#0 '#20154
          Kind = skCount
          Column = cxGrid1DBTableView1Column2
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellMultiSelect = True
      OptionsView.Footer = True
      Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #30149#20154#21345#21495
        DataBinding.FieldName = 'tmh'
        HeaderAlignmentHorz = taCenter
        Width = 92
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #30149#20154#22995#21517
        DataBinding.FieldName = 'brxm'
        HeaderAlignmentHorz = taCenter
        Width = 86
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #25910#25454#21495
        DataBinding.FieldName = 'sjh'
        HeaderAlignmentHorz = taCenter
        Width = 96
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #25805#20316#21592
        DataBinding.FieldName = 'mc'
        HeaderAlignmentHorz = taCenter
        Width = 101
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #37329#39069
        DataBinding.FieldName = 'yjje'
        HeaderAlignmentHorz = taCenter
        Width = 102
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'sfrq'
        HeaderAlignmentHorz = taCenter
        Width = 121
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'bz'
        HeaderAlignmentHorz = taCenter
        Width = 152
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnDY: TBitBtn
    Left = 649
    Top = 3
    Width = 71
    Height = 25
    Caption = #25171#21360'(&U)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnDYClick
    NumGlyphs = 2
  end
  object ds_yjmx: TDataSource
    DataSet = qry_yjmx
    Left = 160
    Top = 89
  end
  object qry_yjmx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 's_date'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'e_date'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      
        'select yjmx.tmh,kyh.brxm,yjmx.sfrq,yjmx.yjje,rtrim(yjmx.yjxssm)+' +
        #39'('#39'+rtrim(fs.mc)+'#39')'#39' bz,czy.mc,yjmx.sjh,yjmx.tfbz'
      
        'from zysf_zyyjmxz yjmx,sys_czy czy,(select zyh,brxm from zysf_zy' +
        'dj union select zyh,brxm from zysf_cydj) kyh,sys_fkfs fs'
      'where yjmx.sfczy=czy.dm and'
      '          yjmx.zyh=kyh.zyh  and yjmx.yjxs=fs.dm and'
      '      convert(char,yjmx.sfrq,112)>=:s_date and  '
      '      convert(char,yjmx.sfrq,112)<=:e_date and'
      '      yjmx.yjlb in('#39'1'#39','#39'2'#39') '
      'order by czy.mc,yjmx.sfrq,yjmx.yjje')
    Left = 202
    Top = 89
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
      Color = 9234160
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 11788021
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 11193702
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5737262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5736750
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9157775
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
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
      Color = 4615972
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet
      Caption = 'UserFormat2'
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
end
