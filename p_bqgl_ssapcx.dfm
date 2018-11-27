object frm_ssapcx: Tfrm_ssapcx
  Left = 196
  Top = 125
  BorderIcons = [biSystemMenu]
  Caption = #25163#26415#23433#25490#26597#35810
  ClientHeight = 484
  ClientWidth = 714
  Color = clBtnFace
  Constraints.MaxHeight = 511
  Constraints.MaxWidth = 722
  Constraints.MinHeight = 511
  Constraints.MinWidth = 722
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 714
    Height = 75
    Align = alTop
    TabOrder = 0
    object Label7: TLabel
      Left = 11
      Top = 47
      Width = 8
      Height = 15
    end
    object Label8: TLabel
      Left = 4
      Top = 16
      Width = 61
      Height = 15
      AutoSize = False
      Caption = #26597#35810#26085#26399'    '
    end
    object Label9: TLabel
      Left = 210
      Top = 16
      Width = 23
      Height = 15
      AutoSize = False
      Caption = #65374
    end
    object Label11: TLabel
      Left = 384
      Top = 47
      Width = 55
      Height = 15
      AutoSize = False
      Caption = #30149'  '#20154'   '
    end
    object Label12: TLabel
      Left = 376
      Top = 15
      Width = 65
      Height = 15
      AutoSize = False
      Caption = #20027#20992#21307#24072
    end
    object Label1: TLabel
      Left = 4
      Top = 48
      Width = 60
      Height = 15
      AutoSize = False
      Caption = #25163#26415#21517#31216
    end
    object dtp1: TDateTimePicker
      Left = 64
      Top = 11
      Width = 121
      Height = 23
      Date = 37747.820364699100000000
      Time = 37747.820364699100000000
      TabOrder = 0
      OnKeyDown = dtp1KeyDown
    end
    object dtp2: TDateTimePicker
      Left = 254
      Top = 11
      Width = 115
      Height = 23
      Date = 37747.820364699100000000
      Time = 37747.820364699100000000
      TabOrder = 1
      OnKeyDown = dtp2KeyDown
    end
    object EditBR: TEdit
      Left = 448
      Top = 40
      Width = 121
      Height = 23
      TabOrder = 3
      OnChange = EditBRChange
      OnExit = EditBRExit
      OnKeyDown = EditBRKeyDown
    end
    object Button2: TButton
      Left = 600
      Top = 11
      Width = 83
      Height = 25
      Caption = #26597#12288#35810'(&S)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object Editczy: TEdit
      Left = 448
      Top = 11
      Width = 121
      Height = 23
      TabOrder = 2
      OnChange = EditczyChange
      OnExit = EditczyExit
      OnKeyDown = EditczyKeyDown
    end
    object Button3: TButton
      Left = 600
      Top = 41
      Width = 83
      Height = 25
      Caption = #25171#12288#21360'(&P)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object Editssmc: TEdit
      Left = 63
      Top = 43
      Width = 120
      Height = 23
      TabOrder = 6
      OnChange = EditssmcChange
      OnExit = EditssmcExit
      OnKeyDown = EditssmcKeyDown
    end
    object Edit1: TEdit
      Left = 254
      Top = 43
      Width = 113
      Height = 23
      TabOrder = 7
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 75
    Width = 714
    Height = 409
    Align = alClient
    DataSource = DataSource2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'tmh'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #26465#30721#21495
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22995#21517
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'brnl'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24180#40836
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'brxb'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24615#21035
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'sssqr'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25163#26415#30830#35748
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'mzqr'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #40635#37257#30830#35748
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'ssrq'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25163#26415#26085#26399
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ssmc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25163#26415#21517#31216
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'sqzd'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20837#38498#35786#26029
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'zdys'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20027#20992#21307#29983
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'mzfs'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #40635#37257#26041#24335
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'sqsssj'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #25163#26415#30003#35831#26085#26399
        Width = 100
      end>
  end
  object DBGridssmc: TDBGrid
    Left = 62
    Top = 64
    Width = 121
    Height = 145
    DataSource = DataSource1
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGridssmcDblClick
    OnExit = DBGridssmcExit
    OnKeyDown = DBGridssmcKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'Fymc'
        Title.Caption = #31185' '#23460
        Visible = True
      end>
  end
  object DBGridfl: TDBGrid
    Left = 254
    Top = 64
    Width = 113
    Height = 145
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'mc'
        Title.Caption = #31185' '#23460
        Visible = True
      end>
  end
  object DBGridbr: TDBGrid
    Left = 448
    Top = 64
    Width = 121
    Height = 145
    DataSource = DataSource1
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGridbrDblClick
    OnExit = DBGridbrExit
    OnKeyDown = DBGridbrKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Caption = #31185' '#23460
        Visible = True
      end>
  end
  object DBGridczy: TDBGrid
    Left = 448
    Top = 32
    Width = 121
    Height = 145
    DataSource = DataSource1
    Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGridczyDblClick
    OnExit = DBGridczyExit
    OnKeyDown = DBGridczyKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'mc'
        Title.Caption = #31185' '#23460
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery
    Left = 600
    Top = 80
  end
  object DataSource2: TDataSource
    DataSet = ADOQuerySSAP
    Left = 592
    Top = 136
  end
  object ADOQuerySSAP: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select b.brxm,b.tmh,c.mc ksmc,b.brnl,b.brxb,a.zyh,ssrq,ssmc,sqzd' +
        ',zdys,yz yzys,ez ezys,zghs,ssj,sssx,pzsssj,mzs mzsxm,mzfs,qxpzr,' +
        'qxrq,xhhs,sqsssj,tzys,sslx,a.id'
      '    from bqgl_ssap a,zysf_zydj b,sys_ksdm c'
      '     where a.zyh=b.zyh and  b.ksdm=c.dm ')
    Left = 648
    Top = 136
  end
  object ADOQuery: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 648
    Top = 80
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    Title.Strings = (
      #25163#26415#23433#25490)
    Units = MM
    Left = 480
    Top = 224
  end
end
