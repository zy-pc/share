object frm_zdxz: Tfrm_zdxz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #24120#29992#23383#20856#36873#25321
  ClientHeight = 533
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 13
      Width = 45
      Height = 15
      Caption = #36807#28388#65306
    end
    object edt_pym: TEdit
      Left = 53
      Top = 10
      Width = 249
      Height = 23
      TabOrder = 0
      OnEnter = edt_pymEnter
      OnKeyDown = edt_pymKeyDown
    end
    object BBtn_seek: TBitBtn
      Left = 309
      Top = 8
      Width = 68
      Height = 25
      Caption = #26597#35810
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBtn_seekClick
    end
    object BBtn_use: TBitBtn
      Left = 528
      Top = 8
      Width = 75
      Height = 25
      Caption = #20351#29992#35789#20856
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBtn_useClick
    end
    object BBtn_exit: TBitBtn
      Left = 650
      Top = 8
      Width = 75
      Height = 25
      Caption = #36864#20986
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BBtn_exitClick
    end
  end
  object Panel2: TPanel
    Left = 273
    Top = 41
    Width = 456
    Height = 492
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 456
      Height = 492
      Align = alClient
      Caption = #23383#20856#20449#24687'('#25552#31034':'#22312#34920#26684#20013#25353'Enter'#38190','#21487#30452#25509#36873#25321')'
      TabOrder = 0
      object DBGrid2: TDBGrid
        Left = 2
        Top = 17
        Width = 452
        Height = 319
        Align = alClient
        DataSource = ds_mx
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnKeyDown = DBGrid2KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Alignment = taCenter
            Title.Caption = #24207#21495
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mc'
            Title.Alignment = taCenter
            Title.Caption = #21517#31216
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pym'
            Title.Alignment = taCenter
            Title.Caption = #25340#38899#30721
            Width = 179
            Visible = True
          end>
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 336
        Width = 452
        Height = 154
        Align = alBottom
        Caption = #24403#21069#23383#20856
        TabOrder = 1
        object DBMemo1: TDBMemo
          Left = 2
          Top = 17
          Width = 448
          Height = 135
          Align = alClient
          DataField = 'mc'
          DataSource = ds_mx
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 273
    Height = 492
    Align = alLeft
    Caption = #35789#20856#31867#21035
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 17
      Width = 269
      Height = 473
      Align = alClient
      DataSource = ds_zb
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = #32534#21495
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mc'
          Title.Alignment = taCenter
          Title.Caption = #21517#31216
          Width = 193
          Visible = True
        end>
    end
  end
  object qry_zb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qry_zbAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from sys_cd_zb order by id')
    Left = 240
    Top = 176
  end
  object qry_mx: TADOQuery
    CacheSize = 1000
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from sys_cd_mx_fysm')
    Left = 320
    Top = 176
  end
  object ds_zb: TDataSource
    DataSet = qry_zb
    Left = 240
    Top = 224
  end
  object ds_mx: TDataSource
    DataSet = qry_mx
    Left = 320
    Top = 224
  end
end
