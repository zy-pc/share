object frm_zysf_fybl: Tfrm_zysf_fybl
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #20303#38498#36153#29992#33258#23450#20041#36153#29992#25253#34920
  ClientHeight = 536
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 106
      Height = 15
      Caption = #32479#35745#26085#26399'  '#20174#65306
    end
    object Label2: TLabel
      Left = 240
      Top = 10
      Width = 15
      Height = 15
      Caption = #33267
    end
    object BitBtn1: TBitBtn
      Left = 434
      Top = 2
      Width = 80
      Height = 25
      Caption = #36873#21015'(&S)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
    object b_tc: TBitBtn
      Left = 692
      Top = 2
      Width = 80
      Height = 25
      Caption = #36820#22238'(&B)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = b_tcClick
      NumGlyphs = 2
    end
    object b_tj: TBitBtn
      Left = 563
      Top = 2
      Width = 80
      Height = 25
      Caption = #32479#35745'(&T)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = b_tjClick
      NumGlyphs = 2
    end
    object star_date: TDateTimePicker
      Left = 114
      Top = 5
      Width = 113
      Height = 23
      Date = 37048.968005694400000000
      Time = 37048.968005694400000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
    end
    object end_date: TDateTimePicker
      Left = 278
      Top = 4
      Width = 108
      Height = 23
      Date = 37048.968221400500000000
      Time = 37048.968221400500000000
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 779
    Height = 30
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 7
      Top = 9
      Width = 105
      Height = 15
      Caption = #36873#25321#36153#29992#22823#31867#65306
    end
    object Bevel1: TBevel
      Left = 392
      Top = 2
      Width = 385
      Height = 25
      Shape = bsFrame
    end
    object RadioButton2: TRadioButton
      Left = 616
      Top = 8
      Width = 49
      Height = 17
      Caption = #21307#29983
      TabOrder = 0
    end
    object RadioButton3: TRadioButton
      Left = 712
      Top = 8
      Width = 57
      Height = 17
      Caption = #30149#20154
      TabOrder = 1
    end
    object RadioButton1: TRadioButton
      Left = 400
      Top = 8
      Width = 57
      Height = 17
      Caption = #31185#23460
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 136
      Top = 3
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'kmdm'
      Properties.ListColumns = <
        item
          Caption = #31185#30446#21517#31216
          FieldName = 'kmmc'
        end>
      Properties.ListSource = ds_fydl
      Style.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.Kind = lfStandard
      TabOrder = 3
      Width = 249
    end
    object RadioButton4: TRadioButton
      Left = 504
      Top = 8
      Width = 57
      Height = 17
      Caption = #30149#21306
      TabOrder = 4
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 61
    Width = 779
    Height = 475
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #25968#25454#34920#31034
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter2: TSplitter
        Left = 615
        Top = 0
        Width = 4
        Height = 444
        Align = alRight
        ExplicitHeight = 445
      end
      object Panel3: TPanel
        Left = 619
        Top = 0
        Width = 152
        Height = 444
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 72
          Height = 16
          Align = alTop
          Caption = #36153#29992#27604#20363':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object ListBox1: TListBox
          Left = 0
          Top = 16
          Width = 152
          Height = 428
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = clInactiveCaptionText
          Ctl3D = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #23435#20307
          Font.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ItemHeight = 16
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 615
        Height = 444
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 28
          Width = 615
          Height = 416
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = ds_fybl
          EditActions = [geaCopyEh, geaSelectAllEh]
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDblClick = DBGridEh1DblClick
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 615
          Height = 28
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            Left = 8
            Top = 5
            Width = 38
            Height = 15
            Caption = #20195#30721':'
          end
          object edit1: TEdit
            Left = 48
            Top = 0
            Width = 185
            Height = 23
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            TabOrder = 0
            OnKeyDown = edit1KeyDown
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #22270#24418#34920#31034
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Chart1: TChart
        Left = 0
        Top = 0
        Width = 771
        Height = 444
        AllowPanning = pmNone
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Pen.Visible = False
        Legend.LegendStyle = lsValues
        Legend.TextStyle = ltsRightValue
        Title.Text.Strings = (
          'TChart')
        AxisVisible = False
        ClipPoints = False
        Frame.Visible = False
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Zoom.Allow = False
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        OnDblClick = Chart1DblClick
        object Series1: TPieSeries
          Marks.Callout.Brush.Color = clBlack
          Marks.Style = smsLabelPercent
          Marks.Visible = True
          PercentFormat = '####0.## %'
          ValueFormat = '#####0.00##'
          Gradient.Direction = gdRadial
          OtherSlice.Legend.Visible = False
          OtherSlice.Text = 'Other'
          PieValues.Name = 'Pie'
          PieValues.Order = loNone
        end
      end
    end
  end
  object StaticText1: TStaticText
    Left = 157
    Top = 68
    Width = 112
    Height = 16
    Caption = '('#21452#20987#21487#22312#39029#38754#20999#25442')'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object qry_fydl: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zysf_kjkmzb where len(rtrim(kmdm))=2'
      'order by kmdm')
    Left = 152
    Top = 187
  end
  object ds_fydl: TDataSource
    DataSet = qry_fydl
    Left = 152
    Top = 224
  end
  object sp_fybl: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = sp_fyblAfterScroll
    ProcedureName = 'cwk_cx_fybl_zy;1'
    Parameters = <
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0717'
      end
      item
        Name = '@kssj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20060401'
      end
      item
        Name = '@jssj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20060601'
      end
      item
        Name = '@fydl'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = '01'
      end
      item
        Name = '@tjfs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = '@tjfw'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    Left = 104
    Top = 184
  end
  object ds_fybl: TDataSource
    DataSet = sp_fybl
    Left = 104
    Top = 224
  end
end
