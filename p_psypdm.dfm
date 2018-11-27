object frm_psypdm: Tfrm_psypdm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #30382#35797#33647#21697#23545#30721
  ClientHeight = 557
  ClientWidth = 819
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 819
    Height = 273
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 778
    object GroupBox2: TGroupBox
      Left = 401
      Top = 1
      Width = 416
      Height = 271
      Align = alLeft
      Caption = #33647#21697
      TabOrder = 0
      object Panel3: TPanel
        Left = 2
        Top = 17
        Width = 412
        Height = 218
        Align = alTop
        TabOrder = 0
        ExplicitTop = 15
        ExplicitWidth = 396
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 410
          Height = 216
          Align = alClient
          DataSource = ds_cx_ypdm
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDblClick = DBGridEh1DblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ypmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#21517#31216
              Width = 235
            end
            item
              EditButtons = <>
              FieldName = 'ypgg'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #33647#21697#35268#26684
              Width = 124
            end>
        end
      end
      object Edit1: TEdit
        Left = 16
        Top = 240
        Width = 257
        Height = 23
        TabOrder = 1
        OnKeyPress = Edit1KeyPress
      end
      object Button1: TButton
        Left = 288
        Top = 240
        Width = 75
        Height = 25
        Caption = #26597#35810
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 400
      Height = 271
      Align = alLeft
      Caption = #30382#35797#39033#30446
      TabOrder = 1
      object Panel4: TPanel
        Left = 2
        Top = 17
        Width = 396
        Height = 218
        Align = alTop
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 394
          Height = 216
          Align = alClient
          DataSource = ds_cx_yzxm
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'xmmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #39033#30446#21517#31216
              Width = 228
            end
            item
              EditButtons = <>
              FieldName = 'dw'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #21333#20301
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'xmdm'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #39033#30446#20195#30721
              Width = 78
            end>
        end
      end
      object Edit2: TEdit
        Left = 72
        Top = 240
        Width = 135
        Height = 23
        TabOrder = 1
        OnKeyPress = Edit2KeyPress
      end
      object Button2: TButton
        Left = 216
        Top = 240
        Width = 75
        Height = 25
        Caption = #26597#35810
        TabOrder = 2
        OnClick = Button2Click
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 273
    Width = 819
    Height = 284
    Align = alClient
    TabOrder = 1
    ExplicitTop = 8
    ExplicitWidth = 778
    ExplicitHeight = 201
    object GroupBox3: TGroupBox
      Left = 1
      Top = 1
      Width = 817
      Height = 248
      Align = alTop
      Caption = #24050#23545#30721#39033#30446
      TabOrder = 0
      ExplicitWidth = 776
      object DBGridEh3: TDBGridEh
        Left = 2
        Top = 17
        Width = 813
        Height = 229
        Align = alClient
        DataSource = ds_cx_ydmxm
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'xmdm'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #39033#30446#20195#30721
          end
          item
            EditButtons = <>
            FieldName = 'xmmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #39033#30446#21517#31216
            Width = 217
          end
          item
            EditButtons = <>
            FieldName = 'dw'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21333#20301
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'ypmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #33647#21697#21517#31216
            Width = 235
          end
          item
            EditButtons = <>
            FieldName = 'ypgg'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #33647#21697#35268#26684
            Width = 124
          end>
      end
    end
    object Button3: TButton
      Left = 192
      Top = 254
      Width = 75
      Height = 25
      Caption = #21024#38500
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 432
      Top = 253
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 2
    end
  end
  object qry_cx_yzxm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    Left = 162
    Top = 102
  end
  object ds_cx_yzxm: TDataSource
    DataSet = qry_cx_yzxm
    Left = 200
    Top = 104
  end
  object ds_cx_ypdm: TDataSource
    DataSet = qry_cx_ypdm
    Left = 640
    Top = 104
  end
  object qry_cx_ypdm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    Left = 602
    Top = 102
  end
  object qry_cx_ydmxm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    Left = 282
    Top = 382
  end
  object ds_cx_ydmxm: TDataSource
    DataSet = qry_cx_ydmxm
    Left = 320
    Top = 384
  end
end
