object frm_mzczysf_all: Tfrm_mzczysf_all
  Left = 1
  Top = 147
  BorderIcons = [biSystemMenu]
  Caption = #25910#36153#21592#32564#27454#34920
  ClientHeight = 559
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 195
      Top = 12
      Width = 16
      Height = 16
      Caption = #21040
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 72
      Height = 16
      Caption = #24320#22987#26085#26399':'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 745
      Top = 6
      Width = 77
      Height = 27
      Caption = #36820#22238'(&R)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object BitBtn1: TBitBtn
      Left = 350
      Top = 6
      Width = 77
      Height = 27
      Caption = #32479#35745'(&T)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object edate: TDateTimePicker
      Left = 224
      Top = 8
      Width = 104
      Height = 24
      Date = 37028.604380682900000000
      Format = 'yyyy-MM-dd'
      Time = 37028.604380682900000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 2
    end
    object sdate: TDateTimePicker
      Left = 81
      Top = 8
      Width = 104
      Height = 24
      Date = 37028.604380682900000000
      Format = 'yyyy-MM-dd'
      Time = 37028.604380682900000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 3
      OnChange = sdateChange
    end
    object cxBtn_hzdy: TcxButton
      Left = 435
      Top = 6
      Width = 77
      Height = 27
      Caption = #27719#24635#25171#21360
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfStandard
    end
    object cxBtn_rbb: TcxButton
      Left = 518
      Top = 6
      Width = 77
      Height = 27
      Caption = #32467#24080#21333#25171#21360
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      DropDownMenu = PopupMenu2
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfStandard
    end
    object cxBBtn_export: TcxButton
      Left = 601
      Top = 6
      Width = 77
      Height = 27
      Caption = #25968#25454#23548#20986
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      DropDownMenu = PopupMenu3
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfStandard
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 41
    Align = alTop
    Caption = #25910#36153#27719#24635#24773#20917
    TabOrder = 1
    Height = 240
    Width = 830
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 826
      Height = 220
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = ds_gzl_all
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'sfje'
            Column = cxGrid1DBTableView1sfje
          end
          item
            Format = #21512#35745#65306
            Kind = skCount
            Column = cxGrid1DBTableView1mc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'tfje'
            Column = cxGrid1DBTableView1tfje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'fxjtfrc'
            Column = cxGrid1DBTableView1fxjtfrc
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'sfrc'
            Column = cxGrid1DBTableView1sfrc
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'tfrc'
            Column = cxGrid1DBTableView1tfrc
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'zfrc'
            Column = cxGrid1DBTableView1zfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'zfje'
            Column = cxGrid1DBTableView1zfje
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'ssje'
            Column = cxGrid1DBTableView1ssje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'fxjsfrc'
            Column = cxGrid1DBTableView1fxjsfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'fxjsfje'
            Column = cxGrid1DBTableView1fxjsfje
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'fxjtfje'
            Column = cxGrid1DBTableView1fxjtfje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'fxjzfrc'
            Column = cxGrid1DBTableView1fxjzfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'fxjzfje'
            Column = cxGrid1DBTableView1fxjzfje
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'fxjssje'
            Column = cxGrid1DBTableView1fxjssje
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'sbsrrc'
            Column = cxGrid1DBTableView1sbsrrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'sbsrje'
            Column = cxGrid1DBTableView1sbsrje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'sbtfrc'
            Column = cxGrid1DBTableView1sbtfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'sbtfje'
            Column = cxGrid1DBTableView1sbtfje
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = yktsyjGrid1DBTableView1yktsyj
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = yktsyjGrid1DBTableView1tyjje
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1mc: TcxGridDBColumn
          Caption = #25805#20316#21592
          DataBinding.FieldName = 'mc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1jzrq: TcxGridDBColumn
          Caption = #32467#27490#26085#26399
          DataBinding.FieldName = 'jzrq'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1sfrc: TcxGridDBColumn
          Caption = #25910#36153#20154#27425
          DataBinding.FieldName = 'sfrc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1sfje: TcxGridDBColumn
          Caption = #25910#36153#37329#39069
          DataBinding.FieldName = 'sfje'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1tfrc: TcxGridDBColumn
          Caption = #36864#36153#20154#27425
          DataBinding.FieldName = 'tfrc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1tfje: TcxGridDBColumn
          Caption = #36864#36153#37329#39069
          DataBinding.FieldName = 'tfje'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1zfrc: TcxGridDBColumn
          Caption = #20316#24223#20154#27425
          DataBinding.FieldName = 'zfrc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1zfje: TcxGridDBColumn
          Caption = #20316#24223#37329#39069
          DataBinding.FieldName = 'zfje'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1ssje: TcxGridDBColumn
          Caption = #23454#25910#37329#39069
          DataBinding.FieldName = 'ssje'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1fxjsfrc: TcxGridDBColumn
          Caption = #38750#29616#37329#20154#27425
          DataBinding.FieldName = 'fxjsfrc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1fxjsfje: TcxGridDBColumn
          Caption = #38750#29616#37329#37329#39069
          DataBinding.FieldName = 'fxjsfje'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1fxjtfrc: TcxGridDBColumn
          Caption = #38750#29616#37329#36864#36153#20154#27425
          DataBinding.FieldName = 'fxjtfrc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1fxjtfje: TcxGridDBColumn
          Caption = #38750#29616#37329#36864#36153#37329#39069
          DataBinding.FieldName = 'fxjtfje'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1fxjzfrc: TcxGridDBColumn
          Caption = #38750#29616#37329#20316#24223#20154#27425
          DataBinding.FieldName = 'fxjzfrc'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1fxjzfje: TcxGridDBColumn
          Caption = #38750#29616#37329#20316#24223#37329#39069
          DataBinding.FieldName = 'fxjzfje'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1fxjssje: TcxGridDBColumn
          Caption = #38750#29616#37329#23454#25910#37329#39069
          DataBinding.FieldName = 'fxjssje'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1sbsrrc: TcxGridDBColumn
          Caption = #31038#20445#20154#27425
          DataBinding.FieldName = 'sbsrrc'
        end
        object cxGrid1DBTableView1sbsrje: TcxGridDBColumn
          Caption = #31038#20445#25910#36153#37329#39069
          DataBinding.FieldName = 'sbsrje'
        end
        object cxGrid1DBTableView1sbtfrc: TcxGridDBColumn
          Caption = #31038#20445#36864#36153#20154#27425
          DataBinding.FieldName = 'sbtfrc'
        end
        object cxGrid1DBTableView1sbtfje: TcxGridDBColumn
          Caption = #31038#20445#36864#36153#37329#39069
          DataBinding.FieldName = 'sbtfje'
        end
        object cxgrdbclmnGrid1DBTableView1yhkhkje: TcxGridDBColumn
          Caption = #38134#34892#21010#21345#37329#39069
          DataBinding.FieldName = 'yhkhkje'
          HeaderAlignmentHorz = taCenter
          Width = 125
        end
        object yktsyjGrid1DBTableView1yktsyj: TcxGridDBColumn
          Caption = #25910#39044#20132#37329#39069
          DataBinding.FieldName = 'mzsyjje'
          HeaderAlignmentHorz = taCenter
        end
        object yktsyjGrid1DBTableView1tyjje: TcxGridDBColumn
          Caption = #36864#39044#20132#37329#39069
          DataBinding.FieldName = 'mztyjje'
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 281
    Align = alClient
    Caption = #27599#26085#32467#24080#24773#20917
    TabOrder = 2
    Height = 278
    Width = 830
    object cxGrid2: TcxGrid
      Left = 2
      Top = 18
      Width = 826
      Height = 258
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfStandard
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_cxjz_mx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #21512#35745#65306
            Kind = skCount
            Column = cxGridDBTableView1mc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'czyysje'
            Column = cxGridDBTableView1Column1
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'ssje'
            Column = cxGridDBTableView1Column2
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'sfrc'
            Column = cxGridDBTableView1sfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'sfje'
            Column = cxGridDBTableView1sfje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'tfrc'
            Column = cxGridDBTableView1tfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'tfje'
            Column = cxGridDBTableView1tfje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'zfrc'
            Column = cxGridDBTableView1zfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'zfje'
            Column = cxGridDBTableView1zfje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'sbsrrc'
            Column = cxGridDBTableView1sbsrrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'sbsrje'
            Column = cxGridDBTableView1sbsrje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'sbtfrc'
            Column = cxGridDBTableView1sbtfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'sbtfje'
            Column = cxGridDBTableView1sbtfje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'fxjsfrc'
            Column = cxGridDBTableView1fxjsfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'fxjsfje'
            Column = cxGridDBTableView1fxjsfje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'fxjtfrc'
            Column = cxGridDBTableView1fxjtfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'fxjtfje'
            Column = cxGridDBTableView1fxjtfje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'sjsl'
            Column = cxGridDBTableView1sjsl
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'fxjzfje'
            Column = cxGridDBTableView1fxjzfje
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'fxjzfrc'
            Column = cxGridDBTableView1fxjzfrc
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = yktsyjGridDBTableView1syjje
          end
          item
            Format = '0'
            Kind = skSum
            Column = yktsyjGridDBTableView1tyjje
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellMultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1mc: TcxGridDBColumn
          Caption = #21517#31216
          DataBinding.FieldName = 'mc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1jzdh: TcxGridDBColumn
          Caption = #32467#24080#21333#21495
          DataBinding.FieldName = 'jzdh'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1jzrq: TcxGridDBColumn
          Caption = #32467#24080#26085#26399
          DataBinding.FieldName = 'jzrq'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = #24212#25910#37329#39069
          DataBinding.FieldName = 'czyysje'
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = #23454#25910#37329#39069
          DataBinding.FieldName = 'ssje'
        end
        object cxGridDBTableView1sfrc: TcxGridDBColumn
          Caption = #25910#36153#20154#27425
          DataBinding.FieldName = 'sfrc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1sfje: TcxGridDBColumn
          Caption = #25910#36153#37329#39069
          DataBinding.FieldName = 'sfje'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1tfrc: TcxGridDBColumn
          Caption = #36864#36153#20154#27425
          DataBinding.FieldName = 'tfrc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1tfje: TcxGridDBColumn
          Caption = #36864#36153#37329#39069
          DataBinding.FieldName = 'tfje'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1zfrc: TcxGridDBColumn
          Caption = #20316#24223#20154#27425
          DataBinding.FieldName = 'zfrc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1zfje: TcxGridDBColumn
          Caption = #20316#24223#37329#39069
          DataBinding.FieldName = 'zfje'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1sbsrrc: TcxGridDBColumn
          Caption = #31038#20445#20154#27425
          DataBinding.FieldName = 'sbsrrc'
        end
        object cxGridDBTableView1sbsrje: TcxGridDBColumn
          Caption = #31038#20445#25910#36153#37329#39069
          DataBinding.FieldName = 'sbsrje'
        end
        object cxGridDBTableView1sbtfrc: TcxGridDBColumn
          Caption = #31038#20445#36864#36153#20154#27425
          DataBinding.FieldName = 'sbtfrc'
        end
        object cxGridDBTableView1sbtfje: TcxGridDBColumn
          Caption = #31038#20445#36864#36153#37329#39069
          DataBinding.FieldName = 'sbtfje'
        end
        object cxGridDBTableView1fxjsfrc: TcxGridDBColumn
          Caption = #38750#29616#37329#25910#36153#20154#27425
          DataBinding.FieldName = 'fxjsfrc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1fxjsfje: TcxGridDBColumn
          Caption = #38750#29616#37329#25910#36153#37329#39069
          DataBinding.FieldName = 'fxjsfje'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1fxjtfrc: TcxGridDBColumn
          Caption = #38750#29616#37329#36864#36153#20154#27425
          DataBinding.FieldName = 'fxjtfrc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1fxjtfje: TcxGridDBColumn
          Caption = #38750#29616#37329#36864#36153#37329#39069
          DataBinding.FieldName = 'fxjtfje'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1fxjzfrc: TcxGridDBColumn
          Caption = #38750#29616#37329#20316#24223#20154#27425
          DataBinding.FieldName = 'fxjzfrc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1fxjzfje: TcxGridDBColumn
          Caption = #38750#29616#37329#20316#24223#37329#39069
          DataBinding.FieldName = 'fxjzfje'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxGridDBTableView1sjsl: TcxGridDBColumn
          Caption = #25910#25454#25968#37327
          DataBinding.FieldName = 'sjsl'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 80
        end
        object cxgrdbclmnGridDBTableView1yhkhkje: TcxGridDBColumn
          Caption = #38134#34892#21010#21345#37329#39069
          DataBinding.FieldName = 'yhkhkje'
          Width = 114
        end
        object yktsyjGridDBTableView1syjje: TcxGridDBColumn
          Caption = #25910#39044#20132#37329#39069
          DataBinding.FieldName = 'mzsyjje'
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object yktsyjGridDBTableView1tyjje: TcxGridDBColumn
          Caption = #36864#39044#20132#37329#39069
          DataBinding.FieldName = 'mztyjje'
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object ds_gzl_all: TDataSource
    DataSet = sp_gzl_all
    Left = 139
    Top = 92
  end
  object sp_gzl_all: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterClose = sp_gzl_allAfterClose
    OnCalcFields = sp_gzl_allCalcFields
    ProcedureName = 'cwk_cx_mzczysf_all;1'
    Parameters = <
      item
        Name = '@s_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 38353d
      end
      item
        Name = '@e_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 38540d
      end
      item
        Name = '@tjfs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    Left = 184
    Top = 92
    object sp_gzl_allfxjsfrc: TIntegerField
      FieldName = 'fxjsfrc'
    end
    object sp_gzl_allfxjsfje: TBCDField
      FieldName = 'fxjsfje'
      Precision = 18
      Size = 2
    end
    object sp_gzl_allmc: TStringField
      FieldName = 'mc'
      Size = 10
    end
    object sp_gzl_allczydm: TStringField
      FieldName = 'czydm'
      FixedChar = True
      Size = 4
    end
    object sp_gzl_allsfrc: TIntegerField
      FieldName = 'sfrc'
    end
    object sp_gzl_allsfje: TBCDField
      FieldName = 'sfje'
      Precision = 18
      Size = 2
    end
    object sp_gzl_alltfrc: TIntegerField
      FieldName = 'tfrc'
    end
    object sp_gzl_alltfje: TBCDField
      FieldName = 'tfje'
      Precision = 18
      Size = 2
    end
    object sp_gzl_allzfrc: TIntegerField
      FieldName = 'zfrc'
    end
    object sp_gzl_alljzrq: TDateTimeField
      FieldName = 'jzrq'
    end
    object sp_gzl_allzfje: TBCDField
      FieldName = 'zfje'
      Precision = 18
      Size = 2
    end
    object sp_gzl_allxybs: TIntegerField
      FieldName = 'xybs'
    end
    object sp_gzl_allssje: TBCDField
      FieldName = 'ssje'
      Precision = 18
      Size = 2
    end
    object sp_gzl_allfxjtfrc: TIntegerField
      FieldName = 'fxjtfrc'
    end
    object sp_gzl_allfxjtfje: TBCDField
      FieldName = 'fxjtfje'
      Precision = 18
      Size = 2
    end
    object sp_gzl_allfxjzfrc: TIntegerField
      FieldName = 'fxjzfrc'
    end
    object sp_gzl_allfxjzfje: TBCDField
      FieldName = 'fxjzfje'
      Precision = 18
      Size = 2
    end
    object sp_gzl_allfxjssje: TFloatField
      FieldKind = fkCalculated
      FieldName = 'fxjssje'
      Calculated = True
    end
    object sp_gzl_allsbsrrc: TIntegerField
      FieldName = 'sbsrrc'
      ReadOnly = True
    end
    object sp_gzl_allsbsrje: TBCDField
      FieldName = 'sbsrje'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sp_gzl_allsbtfrc: TIntegerField
      FieldName = 'sbtfrc'
      ReadOnly = True
    end
    object sp_gzl_allsbtfje: TBCDField
      FieldName = 'sbtfje'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object sp_gzl_allssbje: TBCDField
      FieldName = 'ssbje'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object bcdfld_gzl_allmzsyjje: TBCDField
      FieldName = 'mzsyjje'
    end
    object bcdfld_gzl_allmztyjje: TBCDField
      FieldName = 'mztyjje'
    end
    object sp_gzl_allyhkhkje: TFloatField
      FieldName = 'yhkhkje'
    end
  end
  object sp_mx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_cx_czyjzmxhz;1'
    Parameters = <
      item
        Name = '@s_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@e_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 236
    Top = 93
  end
  object ds_cxjz_mx: TDataSource
    DataSet = qry_cxjzsjd_mx
    Left = 184
    Top = 166
  end
  object PopupMenu1: TPopupMenu
    Left = 504
    Top = 120
    object N1: TMenuItem
      Caption = #29616#37329#25171#21360
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #38750#29616#37329#25171#21360
      OnClick = N3Click
    end
    object N10: TMenuItem
      Caption = #25805#20316#21592#32564#27454#27719#24635
      OnClick = N10Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N16: TMenuItem
      Caption = #32467#24080#19968#35272#34920'('#38750#29616#37329')'
      OnClick = N16Click
    end
    object N5: TMenuItem
      Caption = #32467#24080#19968#35272#34920'('#29616#37329')'
      OnClick = N5Click
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #32467#24080#25805#20316#21592#22823#39033#27719#24635#21333
      OnClick = N2Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 552
    Top = 120
    object N8: TMenuItem
      Caption = #32467#24080#32564#27454#21333
      OnClick = N8Click
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Caption = #32467#24080#22823#39033#32564#27454#21333
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object N9: TMenuItem
      Caption = #32467#24080#26126#32454#32564#27454#21333
      OnClick = N9Click
    end
  end
  object qry_cwkjzrq: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'jzdh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'czydm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select convert(char(10),ksrq,102)+space(2)+convert(char(10),ksrq' +
        ',108) ksrq,'
      
        '       convert(char(10),jsrq,102)+space(2)+convert(char(10),jsrq' +
        ',108) jsrq'
      ' from mzsf_cwkjz'
      ' where jzdh=:jzdh   and'
      '       czydm=:czydm')
    Left = 228
    Top = 167
  end
  object qry_dy_sfmx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'czydm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from mzsf_czyrb where czydm=:czydm'
      '')
    Left = 315
    Top = 166
  end
  object sp_jzdy: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'mzsf_in_czyrb;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@jzdh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end>
    Left = 272
    Top = 166
  end
  object qry_cxjz_mxdy: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'jzdh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'czydm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from mzsf_czyjz '
      '  where jzdh=:jzdh and czydm=:czydm')
    Left = 360
    Top = 168
  end
  object SaveDialog1: TSaveDialog
    Left = 592
    Top = 120
  end
  object PopupMenu3: TPopupMenu
    Left = 632
    Top = 120
    object N12: TMenuItem
      Caption = #25910#36153#27719#24635#24773#20917#23548#20986'...'
      OnClick = N12Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object N13: TMenuItem
      Caption = #27599#26085#32467#24080#24773#20917#36716#20986'...'
      OnClick = N13Click
    end
  end
  object sp_jzdxjkd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'mzsf_cx_czyjz_dx;1'
    Parameters = <
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20090426'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20090427'
      end
      item
        Name = '@dldm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = '01'
      end>
    Left = 288
    Top = 96
  end
  object ds_jzdxjkd: TDataSource
    DataSet = sp_jzdxjkd
    Left = 336
    Top = 96
  end
  object qry_cxjzsjd_mx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qry_cxjzsjd_mxAfterOpen
    AfterClose = qry_cxjzsjd_mxAfterClose
    Parameters = <
      item
        Name = 'ksrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'jsrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'czydm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,a.sfje-a.tfje czyysje,b.mc '
      'from mzsf_czyjz a,sys_czy b'
      'where a.czydm=b.dm and   '
      '  convert(varchar,a.jzrq,112)>=convert(varchar, :ksrq ,112) and'
      '  convert(varchar,a.jzrq,112)<=convert(varchar, :jsrq ,112) and'
      '  a.czydm like :czydm')
    Left = 144
    Top = 166
  end
end
