object frm_fybl: Tfrm_fybl
  Left = 144
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #36153#29992#27604#29575#35774#32622
  ClientHeight = 577
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object dbeh_bl: TDBGridEh
    Left = 0
    Top = 41
    Width = 877
    Height = 536
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataGrouping.GroupLevels = <>
    DataSource = ds_sfxmbl
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    FrozenCols = 3
    RowDetailPanel.Color = clBtnFace
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'szdm'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22269#23478#20195#30721
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'fymc'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21517#31216
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'dw'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21333#20301
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'sfbz'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26631#20934'|'#25910#36153
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'ybbz'
        Footers = <>
        Title.Caption = #26631#20934'|'#21307#20445
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'sbfybl'
        Footers = <>
        Title.Caption = #30149#20154#33258#20184'|'#31038#20445
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'bxfybl'
        Footers = <>
        Title.Caption = #30149#20154#33258#20184'|'#20445#38505
        Width = 41
        WordWrap = True
      end
      item
        EditButtons = <>
        FieldName = 'htfybl'
        Footers = <>
        Title.Caption = #30149#20154#33258#20184'|'#21512#21516
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'sbfybl13'
        Footers = <>
        Title.Caption = #30149#20154#33258#20184'|'#20854#23427
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'jkyhfybl'
        Footers = <>
        Title.Caption = #21345#29992#25143#20248#24800#27604#29575'| '#37329#21345
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'ykyhfybl'
        Footers = <>
        Title.Caption = #21345#29992#25143#20248#24800#27604#29575'| '#38134#21345
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'ptkyhfybl'
        Footers = <>
        Title.Caption = #21345#29992#25143#20248#24800#27604#29575'| '#26222#36890#21345
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'qqkyhfybl'
        Footers = <>
        Title.Caption = #21345#29992#25143#20248#24800#27604#29575'| '#20146#24773#21345
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'kdksfpbl'
        Footers = <>
        Title.Caption = #24320#21333#25910#20837'|'#31185#23460
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'kdysfpbl'
        Footers = <>
        Title.Caption = #24320#21333#25910#20837'|'#21307#29983
        Width = 48
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 12
      Width = 64
      Height = 16
      Caption = #26816#32034#36153#29992
    end
    object sfxm: TEdit
      Left = 80
      Top = 8
      Width = 153
      Height = 24
      TabOrder = 0
      OnChange = sfxmChange
      OnKeyPress = sfxmKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 777
      Top = 10
      Width = 75
      Height = 25
      Caption = #36820#22238
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object cxComboBox1: TcxComboBox
      Left = 350
      Top = 10
      Properties.Items.Strings = (
        'sbfybl01'
        'sbfybl02'
        'sbfybl03'
        'sbfybl04'
        'sbfybl05'
        'sbfybl06'
        'sbfybl07'
        'sbfybl08'
        'sbfybl09'
        'sbfybl10'
        'sbfybl11'
        'sbfybl12'
        'sbfybl13')
      Properties.ReadOnly = False
      Properties.OnChange = cxComboBox1PropertiesChange
      TabOrder = 2
      Width = 113
    end
    object cxLabel1: TcxLabel
      Left = 246
      Top = 12
      Caption = #36873#25321#33258#20184#23383#27573
    end
    object cxLabel2: TcxLabel
      Left = 503
      Top = 13
      Caption = #33258#20184#27604#29575
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 577
      Top = 11
      Properties.MaxLength = 0
      TabOrder = 5
      OnKeyPress = cxMaskEdit1KeyPress
      Width = 56
    end
  end
  object DBGrid1: TDBGridEh
    Left = 24
    Top = 122
    Width = 775
    Height = 260
    DataGrouping.GroupLevels = <>
    DataSource = DS_yp
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'fydm'
        Footers = <>
        Title.Caption = #20195#30721
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'fymc'
        Footers = <>
        Title.Caption = #36153#29992#21517#31216
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'szdm'
        Footers = <>
        Title.Caption = #22269#26631#30721
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'dldm'
        Footers = <>
        Title.Caption = #31867#21035
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'pym'
        Footers = <>
        Title.Caption = #25340#30721#30721
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'dw'
        Footers = <>
        Title.Caption = #21333#20301
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'sfbz'
        Footers = <>
        Title.Caption = #25910#36153#26631#20934
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'mc'
        Footers = <>
        Title.Caption = #22788#32622#31185#23460
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'qybz'
        Footers = <>
        Title.Caption = #21551#29992
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object qry_sfxmbl: TADOQuery
    AutoCalcFields = False
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_kjsfxm')
    Left = 328
    Top = 192
    object qry_sfxmblszdm: TStringField
      DisplayWidth = 14
      FieldName = 'szdm'
      FixedChar = True
      Size = 14
    end
    object qry_sfxmblfymc: TStringField
      DisplayWidth = 100
      FieldName = 'fymc'
      Size = 100
    end
    object qry_sfxmblpym: TStringField
      DisplayWidth = 11
      FieldName = 'pym'
      Size = 50
    end
    object qry_sfxmbldw: TStringField
      DisplayWidth = 7
      FieldName = 'dw'
      FixedChar = True
      Size = 12
    end
    object qry_sfxmblsfbz: TBCDField
      DisplayWidth = 8
      FieldName = 'sfbz'
      Precision = 10
      Size = 2
    end
    object qry_sfxmblybbz: TBCDField
      FieldName = 'ybbz'
      Precision = 18
      Size = 2
    end
    object qry_sfxmblsbfybl: TBCDField
      FieldName = 'sbfybl'
      Precision = 7
    end
    object qry_sfxmblhtfybl: TIntegerField
      FieldName = 'htfybl'
    end
    object qry_sfxmblbxfybl: TIntegerField
      FieldName = 'bxfybl'
    end
    object qry_sfxmblqybz: TBooleanField
      DisplayWidth = 7
      FieldName = 'qybz'
    end
    object qry_sfxmblfydm: TStringField
      FieldName = 'fydm'
      FixedChar = True
      Size = 4
    end
    object qry_sfxmbljkyhfybl: TIntegerField
      FieldName = 'jkyhfybl'
    end
    object qry_sfxmblykyhfybl: TIntegerField
      FieldName = 'ykyhfybl'
    end
    object qry_sfxmblptkyhfybl: TIntegerField
      FieldName = 'ptkyhfybl'
    end
    object qry_sfxmblqqkyhfybl: TIntegerField
      FieldName = 'qqkyhfybl'
    end
    object qry_sfxmblkdksfpbl: TIntegerField
      FieldName = 'kdksfpbl'
    end
    object qry_sfxmblkdysfpbl: TIntegerField
      FieldName = 'kdysfpbl'
    end
    object qry_sfxmblsbfybl01: TBCDField
      FieldName = 'sbfybl01'
      Precision = 8
    end
    object qry_sfxmblsbfybl02: TBCDField
      FieldName = 'sbfybl02'
      Precision = 8
    end
    object qry_sfxmblsbfybl03: TBCDField
      FieldName = 'sbfybl03'
      Precision = 8
    end
    object qry_sfxmblsbfybl04: TBCDField
      FieldName = 'sbfybl04'
      Precision = 8
    end
    object qry_sfxmblsbfybl05: TBCDField
      FieldName = 'sbfybl05'
      Precision = 8
    end
    object qry_sfxmblsbfybl06: TBCDField
      FieldName = 'sbfybl06'
      Precision = 8
    end
    object qry_sfxmblsbfybl07: TBCDField
      FieldName = 'sbfybl07'
      Precision = 8
    end
    object qry_sfxmblsbfybl08: TBCDField
      FieldName = 'sbfybl08'
      Precision = 8
    end
    object qry_sfxmblsbfybl09: TBCDField
      FieldName = 'sbfybl09'
      Precision = 8
    end
    object qry_sfxmblsbfybl10: TBCDField
      FieldName = 'sbfybl10'
      Precision = 8
    end
    object qry_sfxmblsbfybl11: TBCDField
      FieldName = 'sbfybl11'
      Precision = 8
    end
    object qry_sfxmblsbfybl12: TBCDField
      FieldName = 'sbfybl12'
      Precision = 8
    end
    object qry_sfxmblsbfybl13: TBCDField
      FieldName = 'sbfybl13'
      Precision = 8
    end
  end
  object ds_sfxmbl: TDataSource
    DataSet = qry_sfxmbl
    Left = 391
    Top = 194
  end
  object SP_fyxm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'sys_cx_sfxm;1'
    Parameters = <
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = '123'
      end>
    Left = 216
    Top = 194
  end
  object DS_yp: TDataSource
    DataSet = SP_fyxm
    Left = 264
    Top = 192
  end
end