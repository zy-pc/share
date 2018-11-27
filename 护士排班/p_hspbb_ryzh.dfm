object frm_hspbb_ryzh: Tfrm_hspbb_ryzh
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_hspbb_ryzh'
  ClientHeight = 819
  ClientWidth = 1212
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1212
    Height = 521
    Align = alTop
    Caption = #20154#21592#31649#29702
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = -27
      Top = 14
      Width = 1236
      Height = 504
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_czy
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = #26159#21542#25490#29677
          DataBinding.FieldName = 'sfpb'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = #20195#30721
          DataBinding.FieldName = 'dm'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = #22995#21517
          DataBinding.FieldName = 'mc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = #23703#20301
          DataBinding.FieldName = 'gw'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = #25490#29677#24207#21495
          DataBinding.FieldName = 'pbxh'
          PropertiesClassName = 'TcxTextEditProperties'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = #32452#21512'ID'
          DataBinding.FieldName = 'zhid'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = #20998#32452#21517#31216
          DataBinding.FieldName = 'zhmc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = #32852#31995#30005#35805
          DataBinding.FieldName = 'lxdh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxGrid1DBTableView1Column9: TcxGridDBColumn
          Caption = 'V'#32593
          DataBinding.FieldName = 'v_lxdh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 521
    Width = 1212
    Height = 298
    Align = alClient
    Caption = #26032#22686#20154#21592
    TabOrder = 1
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 1208
      Height = 281
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 523
        Height = 279
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 16
          Width = 38
          Height = 23
          Caption = #20195#30721
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 256
          Top = 16
          Width = 38
          Height = 23
          Caption = #22995#21517
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 62
          Width = 38
          Height = 23
          Caption = #23703#20301
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 235
          Top = 62
          Width = 76
          Height = 23
          Caption = #25490#29677#24207#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 102
          Width = 46
          Height = 18
          Caption = #32452#21512'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 235
          Top = 102
          Width = 76
          Height = 23
          Caption = #32852#31995#30005#35805
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 142
          Width = 30
          Height = 23
          Caption = 'V'#32593
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 167
          Top = 169
          Width = 105
          Height = 40
          Caption = #26032#22686
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 279
          Top = 169
          Width = 105
          Height = 41
          Caption = #20462#25913
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 8
          Top = 179
          Width = 105
          Height = 40
          Caption = #21024#38500
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Visible = False
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
          Left = 389
          Top = 169
          Width = 105
          Height = 40
          Caption = #20445#23384
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton6Click
        end
        object SpeedButton7: TSpeedButton
          Left = 278
          Top = 213
          Width = 216
          Height = 40
          Caption = #26032#22686#36134#21495
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton7Click
        end
        object Label9: TLabel
          Left = 92
          Top = 232
          Width = 180
          Height = 16
          Caption = #35268#22521#23454#20064#20154#21592#28857#20987#26032#22686#36134#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 72
          Top = 16
          Width = 150
          Height = 31
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = Edit1Exit
          OnKeyPress = Edit1KeyPress
        end
        object Edit2: TEdit
          Left = 345
          Top = 16
          Width = 150
          Height = 31
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = Edit2KeyPress
        end
        object Edit4: TEdit
          Left = 345
          Top = 62
          Width = 150
          Height = 31
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = Edit4KeyPress
        end
        object Edit6: TEdit
          Left = 345
          Top = 102
          Width = 150
          Height = 31
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = Edit6KeyPress
        end
        object Edit7: TEdit
          Left = 72
          Top = 142
          Width = 150
          Height = 31
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object CheckBox1: TCheckBox
          Left = 236
          Top = 143
          Width = 97
          Height = 17
          Caption = #26159#21542#25490#29677
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object ComboBox1: TComboBox
          Left = 72
          Top = 62
          Width = 150
          Height = 31
          ItemHeight = 23
          TabOrder = 6
          Text = 'A1'
          OnKeyPress = ComboBox1KeyPress
        end
        object ComboBox2: TComboBox
          Left = 72
          Top = 102
          Width = 150
          Height = 31
          ItemHeight = 23
          TabOrder = 7
        end
      end
      object GroupBox3: TGroupBox
        Left = 524
        Top = 1
        Width = 683
        Height = 279
        Align = alClient
        Caption = #20998#32452#31649#29702
        TabOrder = 1
        object Label1: TLabel
          Left = 6
          Top = 16
          Width = 76
          Height = 23
          Caption = #20998#32452#21517#31216
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 320
          Top = 10
          Width = 153
          Height = 41
          Caption = #26032#24314#20998#32452
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 488
          Top = 10
          Width = 153
          Height = 41
          Caption = #21024#38500#20998#32452
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object DBGridEh1: TDBGridEh
          Left = 6
          Top = 53
          Width = 679
          Height = 174
          DataGrouping.GroupLevels = <>
          DataSource = ds_fzmc
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'id'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #32452#21512'ID'
              Title.Color = clRed
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'zhmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20998#32452#21517#31216
              Width = 300
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object zhmc: TEdit
          Left = 88
          Top = 16
          Width = 209
          Height = 31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object qry_czy: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zybl_hspbb_czy where ksdm=:ksdm and ysbz=0 order b' +
        'y pbxh,zhid,dm')
    Left = 472
    Top = 136
  end
  object ds_czy: TDataSource
    DataSet = qry_czy
    OnDataChange = ds_czyDataChange
    Left = 520
    Top = 152
  end
  object qry_fzmc: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 224
    Top = 320
  end
  object ad_infzmc: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 304
    Top = 64
  end
  object ds_fzmc: TDataSource
    DataSet = qry_fzmc
    Left = 272
    Top = 264
  end
  object qry_rygj: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM sys_rygj where gjlx=1 order by id')
    Left = 992
    Top = 336
  end
  object ad_ryxz: TADODataSet
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 520
    Top = 384
  end
  object qry_de: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 368
    Top = 496
  end
  object qry_czy1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 648
    Top = 448
  end
  object qry_fzsc: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 840
    Top = 664
  end
  object qry2: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 504
    Top = 40
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_hspbb_sczh'
    Parameters = <>
    Left = 464
    Top = 80
  end
end
