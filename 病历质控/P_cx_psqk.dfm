object frm_cx_psqk: Tfrm_cx_psqk
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #30149#21382#35780#23457#26597#35810
  ClientHeight = 559
  ClientWidth = 887
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 28
    Width = 887
    Height = 531
    ActivePage = cxTabSheet2
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 531
    ClientRectRight = 887
    ClientRectTop = 26
    object cxTabSheet2: TcxTabSheet
      Caption = #26102#38388#36136#25511#32479#35745
      ImageIndex = 1
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 505
        Align = alClient
        TabOrder = 0
        object cxGrid3DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_sszkts
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          object cxGrid3DBTableView1ksmc: TcxGridDBColumn
            Caption = #31185#23460
            DataBinding.FieldName = 'ksmc'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Width = 154
          end
          object cxGrid3DBTableView1psry: TcxGridDBColumn
            Caption = #35780#23457#20154#21592
            DataBinding.FieldName = 'psry'
            Options.Editing = False
            Width = 108
          end
          object cxGrid3DBTableView1ysmc: TcxGridDBColumn
            Caption = #20027#31649#21307#29983
            DataBinding.FieldName = 'ysmc'
            Options.Editing = False
            Width = 109
          end
          object cxGrid3DBTableView1fsrq: TcxGridDBColumn
            Caption = #35780#23457#26102#38388
            DataBinding.FieldName = 'fsrq'
            Options.Editing = False
            Width = 231
          end
          object cxGrid3DBTableView1message: TcxGridDBColumn
            Caption = #35780#23457#20449#24687
            DataBinding.FieldName = 'message'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Width = 226
          end
          object cxGrid3DBTableView1isreaded: TcxGridDBColumn
            Caption = #21307#29983#38405#35835#26631#24535
            DataBinding.FieldName = 'isreaded'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 110
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 887
    Height = 28
    Align = alTop
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object rbmn: TRadioButton
      Left = 125
      Top = 5
      Width = 38
      Height = 15
      Caption = #24180
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = rbmnClick
    end
    object rbmy: TRadioButton
      Left = 45
      Top = 5
      Width = 38
      Height = 15
      Caption = #26376
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbmyClick
    end
    object rbmj: TRadioButton
      Left = 84
      Top = 5
      Width = 38
      Height = 15
      Caption = #23395
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbmjClick
    end
    object rbdr: TRadioButton
      Left = 169
      Top = 5
      Width = 49
      Height = 15
      Caption = #22810#26085
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbdrClick
    end
    object rbmr: TRadioButton
      Left = 5
      Top = 5
      Width = 38
      Height = 15
      Caption = #26085
      Checked = True
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = True
      OnClick = rbmrClick
    end
    object DTPicker1: TDateTimePicker
      Left = 216
      Top = 2
      Width = 115
      Height = 21
      Date = 37201.495810544000000000
      Time = 37201.495810544000000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTPicker2: TDateTimePicker
      Left = 331
      Top = 2
      Width = 115
      Height = 21
      Date = 37201.495881828700000000
      Time = 37201.495881828700000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object cbmn: TComboBox
      Left = 216
      Top = 2
      Width = 115
      Height = 21
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 7
      Text = 'cbmn'
      Visible = False
    end
    object cbnj: TComboBox
      Left = 331
      Top = 2
      Width = 115
      Height = 21
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 8
      Text = 'cbnj'
      Visible = False
    end
    object b_tj: TBitBtn
      Left = 488
      Top = 3
      Width = 57
      Height = 22
      Caption = #32479#35745
      TabOrder = 9
      OnClick = b_tjClick
      Layout = blGlyphBottom
    end
    object BitBtn1: TBitBtn
      Left = 570
      Top = 2
      Width = 57
      Height = 22
      Caption = #25171#21360
      TabOrder = 10
      OnClick = BitBtn1Click
      Layout = blGlyphBottom
    end
    object BitBtn2: TBitBtn
      Left = 824
      Top = 4
      Width = 57
      Height = 22
      Caption = #36820#22238
      TabOrder = 11
      OnClick = BitBtn2Click
      Layout = blGlyphBottom
    end
  end
  object ds_sszkts: TDataSource
    DataSet = qry_sszkts
    Left = 352
    Top = 248
  end
  object qry_sszkts: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select ks.mc ksmc,fsczy.mc psry,ys.mc ysmc,fsrq,message,isreaded' +
      ' '#13#10'from zydzbl_message xx,sys_czy fsczy,sys_ksdm ks, sys_czy ys'#13 +
      #10'where xx.fsczy=fsczy.dm and'#13#10'      xx.ksdm=ks.dm     and'#13#10'     ' +
      ' xx.ysdm=ys.dm     '
    Parameters = <>
    Left = 392
    Top = 248
  end
end
