object Frm_lsyzqxfs: TFrm_lsyzqxfs
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20020#26102#21307#22065#21462#28040#26041#24335#35774#32622
  ClientHeight = 336
  ClientWidth = 618
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grp1: TGroupBox
    Left = 1
    Top = 0
    Width = 281
    Height = 333
    Caption = #20020#26102#21307#22065#21462#28040#26041#24335
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 3
      Top = 21
      Width = 275
      Height = 309
      Align = alCustom
      BiDiMode = bdLeftToRight
      ColumnDefValues.Title.Alignment = taCenter
      Ctl3D = False
      DataSource = ds_lsyzqxfs
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -14
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      OddRowColor = clInfoBk
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghHighlightFocus, dghClearSelection, dghDialogFind]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Pitch = fpFixed
      TitleFont.Style = [fsBold]
      OnCellClick = DBGridEh1CellClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Title.Caption = 'ID'
          Width = 74
        end
        item
          EditButtons = <>
          FieldName = 'name'
          Footers = <>
          Title.Caption = #21517#31216
          Width = 137
        end>
    end
  end
  object pnl1: TPanel
    Left = 288
    Top = 0
    Width = 330
    Height = 333
    TabOrder = 1
    object lbl2: TLabel
      Left = 51
      Top = 138
      Width = 42
      Height = 17
      Caption = #21517#31216#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 65
      Top = 95
      Width = 28
      Height = 17
      Caption = 'ID'#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edt_name: TEdit
      Left = 99
      Top = 136
      Width = 155
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      TabOrder = 0
    end
    object edt_id: TEdit
      Left = 99
      Top = 93
      Width = 151
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object btn_update: TButton
      Left = 90
      Top = 183
      Width = 40
      Height = 25
      Caption = #20462#25913
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn_updateClick
    end
    object btn_del: TButton
      Left = 147
      Top = 183
      Width = 40
      Height = 25
      Caption = #21024#38500
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn_delClick
    end
    object btn_add: TButton
      Left = 206
      Top = 183
      Width = 40
      Height = 25
      Caption = #22686#21152
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn_addClick
    end
  end
  object qry_lszyqxfs: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select id,name from zyyz_lsyzqxfs')
    Left = 288
    Top = 245
  end
  object ds_lsyzqxfs: TDataSource
    DataSet = qry_lszyqxfs
    Left = 287
    Top = 275
  end
  object qry_up: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 286
    Top = 303
  end
end
