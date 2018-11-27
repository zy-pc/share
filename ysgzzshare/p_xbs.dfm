object frm_xbs: Tfrm_xbs
  Left = 0
  Top = 0
  Caption = #29616#30149#21490
  ClientHeight = 499
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 499
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 97
      Width = 760
      Height = 38
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lr: TcxButton
        Left = 43
        Top = 6
        Width = 80
        Height = 25
        Caption = #24405#20837#12304'E'#12305
        TabOrder = 0
        OnClick = lrClick
      end
      object cxButton2: TcxButton
        Left = 600
        Top = 6
        Width = 105
        Height = 25
        Caption = #20851#38381#31383#21475#12304'C'#12305
        TabOrder = 1
        OnClick = cxButton2Click
      end
      object xg: TcxButton
        Left = 146
        Top = 6
        Width = 80
        Height = 25
        Caption = #20462#25913#12304'R'#12305
        TabOrder = 2
        OnClick = xgClick
      end
      object bc: TcxButton
        Left = 349
        Top = 6
        Width = 80
        Height = 25
        Caption = #20445#23384#12304'S'#12305
        TabOrder = 3
        OnClick = bcClick
      end
      object sc: TcxButton
        Left = 248
        Top = 6
        Width = 80
        Height = 25
        Caption = #21024#38500#12304'D'#12305
        TabOrder = 4
        OnClick = scClick
      end
      object fq: TcxButton
        Left = 453
        Top = 6
        Width = 80
        Height = 25
        Caption = #25918#24323#12304'G'#12305
        TabOrder = 5
        OnClick = fqClick
      end
    end
    object ed_xbs: TEdit
      Left = 0
      Top = 41
      Width = 760
      Height = 56
      Align = alTop
      AutoSelect = False
      AutoSize = False
      TabOrder = 1
      OnKeyDown = ed_xbsKeyDown
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 135
      Width = 760
      Height = 364
      Align = alClient
      TabOrder = 2
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = ds_xbs
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Styles.StyleSheet = GridTableViewStyleSheetUserFormat2
        object cxGrid1DBTableView1tmh: TcxGridDBColumn
          Caption = #30149#21592#32534#21495
          DataBinding.FieldName = 'tmh'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 120
        end
        object cxGrid1DBTableView1czys: TcxGridDBColumn
          Caption = #21307#29983
          DataBinding.FieldName = 'ysmc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 100
        end
        object cxGrid1DBTableView1czks: TcxGridDBColumn
          Caption = #31185#23460
          DataBinding.FieldName = 'ksmc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 100
        end
        object cxGrid1DBTableView1nr: TcxGridDBColumn
          Caption = #30149#21490#20869#23481
          DataBinding.FieldName = 'nr'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 300
        end
        object cxGrid1DBTableView1czrq: TcxGridDBColumn
          Caption = #26085#26399
          DataBinding.FieldName = 'czrq'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object p_brjbxx: TPanel
      Left = 0
      Top = 0
      Width = 760
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lab_xbs: TcxLabel
        Left = 0
        Top = 0
        Align = alClient
        Caption = #30149#21592#32534#21495':'#22995#21517':'#24615#21035':'#24180#40836':'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -27
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
    end
  end
  object qry_xbs: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tmh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = #39'000'#39
      end>
    SQL.Strings = (
      
        'select a.*,b.mc ysmc,c.mc ksmc from sys_kyh_xbs a,sys_czy b,sys_' +
        'ksdm c  where tmh=:tmh and a.czys=b.dm and a.czks=c.dm')
    Left = 304
    Top = 8
  end
  object ds_xbs: TDataSource
    DataSet = qry_xbs
    Left = 344
    Top = 6
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
  object qry_xg: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    Left = 400
    Top = 8
  end
end
