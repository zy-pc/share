object frm_jypljf: Tfrm_jypljf
  Left = 0
  Top = 0
  Caption = #25209#37327#26816#39564#35760#36153
  ClientHeight = 588
  ClientWidth = 832
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
    Width = 832
    Height = 588
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 263
      Top = 1
      Width = 558
      Height = 536
      DataSource = ds_fymx
      Flat = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterColor = clYellow
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clNavy
      FooterFont.Height = -15
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      FooterRowCount = 1
      OddRowColor = clInfoBk
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      UseMultiTitle = True
      OnExit = DBGridEh1Exit
      Columns = <
        item
          EditButtons = <>
          FieldName = 'lb'
          Footers = <>
          ReadOnly = True
          Title.Caption = #31867#21035
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = 'szxz'
          Footers = <>
          Title.Caption = #36873#25321#29366#24577
          Width = 36
        end
        item
          EditButtons = <>
          FieldName = 'xmdm'
          Footers = <>
          ReadOnly = True
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'xmmc'
          Footer.Value = #21512#35745#37329#39069
          Footer.ValueType = fvtStaticText
          Footers = <>
          ReadOnly = True
          Title.Caption = #39033#30446
          Width = 155
        end
        item
          EditButtons = <>
          FieldName = 'dw'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21333#20301
          Width = 24
        end
        item
          EditButtons = <>
          FieldName = 'sl'
          Footers = <>
          Title.Caption = #25968#37327
          Width = 35
        end
        item
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'dj'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21333#20215
          Width = 46
        end
        item
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'je'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #37329#39069
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'czks'
          Footers = <>
          ReadOnly = True
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'ksmc'
          Footers = <>
          ReadOnly = True
          Title.Caption = #22788#32622#31185#23460
          Width = 117
        end
        item
          EditButtons = <>
          FieldName = 'id1'
          Footers = <>
          Visible = False
        end
        item
          EditButtons = <>
          FieldName = 'bz'
          Footers = <>
          Title.Caption = #22791#27880
          Width = 76
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 537
      Width = 820
      Height = 50
      TabOrder = 1
      object Button1: TButton
        Left = 268
        Top = 16
        Width = 129
        Height = 25
        Caption = #35760#36153
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 456
        Top = 16
        Width = 129
        Height = 25
        Caption = #36864#20986
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 256
      Height = 530
      Caption = #30149#20154#21015#34920
      TabOrder = 2
      object DBGridEh2: TDBGridEh
        Left = 2
        Top = 17
        Width = 252
        Height = 511
        Align = alClient
        DataSource = ds_brlb
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnCellClick = DBGridEh2CellClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ksmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #31185#23460#21517#31216
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'bch'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #30149#24202#21495
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'brxm'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #22995#21517
            Width = 91
          end>
      end
    end
  end
  object Panel4: TPanel
    Left = 117
    Top = 232
    Width = 622
    Height = 33
    TabOrder = 1
    Visible = False
    object ProgressBar2: TProgressBar
      Left = 1
      Top = 1
      Width = 620
      Height = 31
      Align = alClient
      TabOrder = 0
    end
  end
  object ds_fymx: TDataSource
    DataSet = qry_fymx
    Left = 288
    Top = 144
  end
  object ds_brlb: TDataSource
    DataSet = qry_brlb
    Left = 88
    Top = 144
  end
  object qry_brlb: TADOQuery
    Connection = DM_data.ado_mydata
    AfterOpen = qry_brlbAfterOpen
    AfterScroll = qry_brlbAfterScroll
    Parameters = <>
    Left = 120
    Top = 144
  end
  object sp_jypljf: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyyz_in_writefymx_jypljf'
    Parameters = <>
    Left = 392
    Top = 216
  end
  object qry_fymx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select a.lb,a.szxz,a.xmdm,a.xmmc,a.dw,sl,a.dj,a.czks,a.ksmc,a.zy' +
      'h,a.zt,a.id1,bz from zybl_zyyz_brjfd_ls_jypljf a where  a.zyh=:z' +
      'yh and a.czydm=:czydm  order by a.lb,a.xmmc,a.ksmc'
    Parameters = <
      item
        Name = 'zyh'
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
    Left = 328
    Top = 144
    object qry_fymxlb: TStringField
      FieldName = 'lb'
      Size = 4
    end
    object qry_fymxszxz: TBooleanField
      FieldName = 'szxz'
    end
    object qry_fymxxmdm: TStringField
      FieldName = 'xmdm'
      Size = 16
    end
    object qry_fymxxmmc: TStringField
      FieldName = 'xmmc'
      Size = 100
    end
    object qry_fymxdw: TStringField
      FieldName = 'dw'
    end
    object qry_fymxsl: TBCDField
      FieldName = 'sl'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object qry_fymxdj: TBCDField
      FieldName = 'dj'
      Precision = 18
    end
    object qry_fymxczks: TStringField
      FieldName = 'czks'
      Size = 4
    end
    object qry_fymxksmc: TStringField
      FieldName = 'ksmc'
    end
    object qry_fymxzyh: TStringField
      FieldName = 'zyh'
      Size = 16
    end
    object qry_fymxfyje: TFloatField
      FieldKind = fkCalculated
      FieldName = 'je'
      Calculated = True
    end
    object qry_fymxzt: TStringField
      FieldName = 'zt'
    end
    object qry_fymxbz: TStringField
      FieldName = 'bz'
    end
  end
end
