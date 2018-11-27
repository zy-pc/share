object frm_jyxmwrite: Tfrm_jyxmwrite
  Left = 290
  Top = 167
  Caption = #26816#39564#39033#30446#36755#20837
  ClientHeight = 554
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 984
    Height = 537
    ActivePage = cxTabSheet2
    Align = alClient
    OwnerDraw = True
    Style = 10
    TabOrder = 2
    OnChange = cxPageControl1Change
    ClientRectBottom = 537
    ClientRectRight = 984
    ClientRectTop = 22
    object cxTabSheet2: TcxTabSheet
      Caption = '  '#36873#25321#26041#24335'A  '
      ImageIndex = 1
      OnShow = cxTabSheet2Show
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 285
        Height = 515
        Align = alLeft
        BevelKind = bkFlat
        BevelOuter = bvLowered
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 279
          Height = 40
          Align = alTop
          TabOrder = 1
          object txt_A: TcxTextEdit
            Left = 52
            Top = 9
            ParentFont = False
            Properties.OnChange = txt_APropertiesChange
            Style.BorderColor = 14859373
            Style.BorderStyle = ebsThick
            Style.Color = 16577773
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            OnKeyPress = txt_AKeyPress
            Width = 120
          end
          object bt_A: TcxButton
            Left = 178
            Top = 8
            Width = 80
            Height = 25
            Caption = #30830#23450'(&O)'
            ModalResult = 1
            TabOrder = 1
            OnClick = bt_AClick
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
          end
          object cxLabel2: TcxLabel
            Left = 6
            Top = 10
            Caption = #26597#25214':'
          end
        end
        object tv_A: TTreeView
          Left = 1
          Top = 41
          Width = 279
          Height = 469
          Align = alClient
          Images = ImageList1
          Indent = 19
          ReadOnly = True
          RowSelect = True
          TabOrder = 0
          OnChange = tv_AChange
        end
      end
      object Panel2: TPanel
        Left = 285
        Top = 0
        Width = 699
        Height = 515
        Align = alClient
        TabOrder = 1
        object clb: TCheckListBox
          Left = 1
          Top = 1
          Width = 697
          Height = 513
          OnClickCheck = clbClickCheck
          Align = alClient
          BevelInner = bvLowered
          Columns = 3
          ItemHeight = 21
          Style = lbOwnerDrawFixed
          TabOrder = 0
          OnDrawItem = clbDrawItem
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = '  '#36873#25321#26041#24335'B  '
      ImageIndex = 0
      object Panel7: TPanel
        Left = 285
        Top = 0
        Width = 699
        Height = 515
        Align = alClient
        TabOrder = 1
        object gcList: TcxGrid
          Left = 1
          Top = 1
          Width = 697
          Height = 513
          Align = alClient
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = True
          object gvList: TcxGridDBTableView
            OnKeyPress = gvListKeyPress
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_sfxm
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.DataRowHeight = 23
            OptionsView.GroupByBox = False
            Styles.StyleSheet = GridTableViewStyleSheetUserFormat3
            object gvListColumn1: TcxGridDBColumn
              Caption = #20195#30721
              DataBinding.FieldName = 'xmdm'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object gvListColumn2: TcxGridDBColumn
              Caption = #39033#30446#21517#31216
              DataBinding.FieldName = 'xmmc'
              HeaderAlignmentHorz = taCenter
              Width = 280
            end
            object gvListColumn3: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'dw'
              HeaderAlignmentHorz = taCenter
            end
            object gvListColumn4: TcxGridDBColumn
              Caption = #26679#26412
              DataBinding.FieldName = 'yb'
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object gvListColumn5: TcxGridDBColumn
              Caption = #26174#31034
              DataBinding.FieldName = 'xsbz'
              PropertiesClassName = 'TcxCheckBoxProperties'
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object gvListColumn6: TcxGridDBColumn
              Caption = #24207#21495
              DataBinding.FieldName = 'sx'
              HeaderAlignmentHorz = taCenter
              Width = 60
            end
            object gvListColumn7: TcxGridDBColumn
              Caption = #25340#38899#30721
              DataBinding.FieldName = 'pym'
              HeaderAlignmentHorz = taCenter
              Width = 150
            end
          end
          object gcListLevel1: TcxGridLevel
            GridView = gvList
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 285
        Height = 515
        Align = alLeft
        BevelInner = bvLowered
        Caption = 'Panel1'
        TabOrder = 0
        object Panel6: TPanel
          Left = 2
          Top = 2
          Width = 281
          Height = 40
          Align = alTop
          TabOrder = 1
          object txt_B: TcxTextEdit
            Left = 52
            Top = 10
            ParentFont = False
            Properties.OnChange = txt_BPropertiesChange
            Style.BorderColor = 14859373
            Style.BorderStyle = ebsThick
            Style.Color = 16577773
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            OnKeyPress = txt_BKeyPress
            Width = 120
          end
          object bt_B: TcxButton
            Left = 178
            Top = 9
            Width = 80
            Height = 25
            Caption = #30830#23450'(&O)'
            TabOrder = 1
            OnClick = bt_BClick
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
          end
          object cxLabel3: TcxLabel
            Left = 6
            Top = 10
            Caption = #26597#25214':'
          end
        end
        object tv_B: TTreeView
          Left = 2
          Top = 42
          Width = 281
          Height = 471
          Align = alClient
          Images = ImageList1
          Indent = 19
          TabOrder = 0
          OnChange = tv_BChange
        end
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 537
    Width = 984
    Height = 17
    Align = alBottom
    Step = 1
    TabOrder = 0
  end
  object cxLabel1: TcxLabel
    Left = 315
    Top = 539
    Caption = #25968#25454#20934#22791#36827#24230'(0%)'
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clLime
    Style.Font.Height = -15
    Style.Font.Name = #23435#20307
    Style.Font.Style = []
    Style.TextColor = clFuchsia
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleHot.BorderStyle = ebsNone
    Transparent = True
  end
  object ad_sfxm: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select dm,mc,a.pym,xmdm,xmmc, dw,mcjx,dldm,xsbz,sx,yb from sys_y' +
      'zdl a, sys_yzxm b where dm=dldm and dldm  like :vdldm order by d' +
      'ldm,sx,xmmc'
    Parameters = <
      item
        Name = 'vdldm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    Left = 336
    Top = 168
  end
  object ad_sfdl: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 329
    Top = 56
  end
  object ds_sfxm: TDataSource
    DataSet = ad_sfxm
    Left = 168
    Top = 80
  end
  object ImageList1: TImageList
    Left = 114
    Top = 10
    Bitmap = {
      494C010102000400340010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      940000949400009494000000000000000000000000000094940063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000949400F7F7
      F70094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CEFF0094CE
      FF0063CECE000094940000000000000000000000000000949400CEFFFF0094CE
      FF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094CEFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CE
      FF0063CECE000000000000949400000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094CE
      FF000094940000000000009494000000000000000000219C9C00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000949400F7F7F70094FFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094FFFF0094CEFF0094FFFF0063CE
      CE000000000063CECE0063CECE00000000000000000039ADAD00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000949400F7F7F70094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0063CE
      CE000000000063CECE0063CECE0000000000000000005AB5B500CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CE
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000094940000949400009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      940063CECE0094FFFF0063CECE00000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0063CECE00000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF00F7F7F700F7F7
      F700F7F7F700F7F7F70063CECE00000000000000000000949400CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF00F7F7F70000949400009494000094
      940000949400009494000094940000000000000000000094940063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0000949400009494000094
      9400009494000094940000949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000949400F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7000094940000000000000000000000
      000000000000000000000000000000000000000000000000000000949400EFEF
      EF00CEFFFF00CEFFFF0094FFFF0094FFFF000094940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400009494000094940000949400009494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400009494000094940000949400009494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      E000C00000000000C000800000000000C0008000000000008000800000000000
      8000800000000000000080000000000000008000000000000000800000000000
      800080000000000080008000000000008001800100000000C07FC03F00000000
      E0FFE07F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object ad_cyjc: TADODataSet
    Connection = DM_data.ado_mydata
    CommandText = 
      'select * from sys_jyxm_fzdl a,sys_jyxm_fzmx b where dm=dldm  and' +
      ' xzxm=1 order by dldm,sx,fymc'#13#10
    Parameters = <>
    Left = 464
    Top = 224
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16775416
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16443110
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14599344
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8519755
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 14481663
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 191
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 13749760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle11: TcxStyle
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
      Styles.Content = cxStyle1
      Styles.ContentEven = cxStyle2
      Styles.ContentOdd = cxStyle3
      Styles.Inactive = cxStyle8
      Styles.Selection = cxStyle11
      Styles.Footer = cxStyle4
      Styles.Group = cxStyle5
      Styles.GroupByBox = cxStyle6
      Styles.Header = cxStyle7
      Styles.Indicator = cxStyle9
      Styles.Preview = cxStyle10
      BuiltIn = True
    end
  end
  object cmd_jydr: TADOCommand
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Size = -1
        Value = Null
      end
      item
        Size = -1
        Value = Null
      end
      item
        Size = -1
        Value = Null
      end>
    Left = 168
    Top = 176
  end
end
