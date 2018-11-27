object frm_ydzxjlcx: Tfrm_ydzxjlcx
  Left = 0
  Top = 0
  Caption = #25191#34892#35760#24405
  ClientHeight = 463
  ClientWidth = 1016
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
    Width = 1016
    Height = 463
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1016
      Height = 57
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 748
      object cxButton1: TcxButton
        Left = 456
        Top = 17
        Width = 75
        Height = 25
        Caption = #26597#35810'[&F]'
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 864
        Top = 17
        Width = 75
        Height = 25
        Caption = #36864#20986'[&C]'
        TabOrder = 1
        OnClick = cxButton2Click
      end
      object date_ks: TcxDateEdit
        Left = 155
        Top = 18
        TabOrder = 2
        Width = 121
      end
      object date_js: TcxDateEdit
        Left = 297
        Top = 18
        TabOrder = 3
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 92
        Top = 19
        Caption = #25191#34892#26102#38388
      end
      object cxLabel2: TcxLabel
        Left = 279
        Top = 19
        Caption = #33267
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 57
      Width = 1016
      Height = 406
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 144
      ExplicitTop = 112
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DS_cx
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        object cxGrid1DBTableView1zxhsmc: TcxGridDBColumn
          Caption = #25191#34892#25252#22763
          DataBinding.FieldName = 'zxhsmc'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid1DBTableView1tmh: TcxGridDBColumn
          Caption = #20303#38498#21495
          DataBinding.FieldName = 'tmh'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid1DBTableView1bch: TcxGridDBColumn
          Caption = #30149#24202#21495
          DataBinding.FieldName = 'bch'
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGrid1DBTableView1brxm: TcxGridDBColumn
          Caption = #22995#21517
          DataBinding.FieldName = 'brxm'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid1DBTableView1xmmc: TcxGridDBColumn
          Caption = #21307#22065#21517#31216
          DataBinding.FieldName = 'xmmc'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object cxGrid1DBTableView1gg: TcxGridDBColumn
          Caption = #35268#26684
          DataBinding.FieldName = 'gg'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid1DBTableView1yzsx: TcxGridDBColumn
          Caption = #23646#24615
          DataBinding.FieldName = 'yzsx'
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object cxGrid1DBTableView1kdysmc: TcxGridDBColumn
          Caption = #24320#21333#21307#29983
          DataBinding.FieldName = 'kdysmc'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid1DBTableView1kdrq: TcxGridDBColumn
          Caption = #24320#21333#26085#26399
          DataBinding.FieldName = 'kdrq'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid1DBTableView1zxsj: TcxGridDBColumn
          Caption = #25191#34892#26102#38388
          DataBinding.FieldName = 'zxsj'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid1DBTableView1tzrq: TcxGridDBColumn
          Caption = #20572#27490#26102#38388
          DataBinding.FieldName = 'tzrq'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zxry'
        DataType = ftString
        Size = 4
        Value = '1003'
      end
      item
        Name = 'ksrq'
        DataType = ftString
        Size = 8
        Value = '20130320'
      end
      item
        Name = 'jsrq'
        DataType = ftString
        Size = 8
        Value = '20130320'
      end>
    SQL.Strings = (
      
        'select czy.mc zxhsmc,zydj.tmh,zydj.bch,zydj.brxm,zyyz.xmmc,zyyz.' +
        'gg,zyyz.yzsx,kdys.mc kdysmc,zyyz.kdrq,bf.zxsj,zyyz.tzrq,zyyz.tzb' +
        'z'
      'from zybl_zyyz_yzzxqd_mx_bf bf'
      'left join sys_czy czy on bf.zxry=czy.dm'
      'left join zysf_zydj zydj on zydj.zyh=bf.zyh'
      'left join zybl_zyyz zyyz on bf.yzid=zyyz.id'
      'left join sys_czy kdys on zyyz.kdys=kdys.dm'
      
        'where bf.zxry=:zxry and convert(varchar,bf.zxsj,112)>=:ksrq and ' +
        'convert(varchar,bf.zxsj,112)<=:jsrq')
    Left = 247
    Top = 121
    object Qry_cxzxhsmc: TStringField
      FieldName = 'zxhsmc'
      Size = 10
    end
    object Qry_cxtmh: TStringField
      FieldName = 'tmh'
      FixedChar = True
      Size = 9
    end
    object Qry_cxbch: TStringField
      FieldName = 'bch'
      FixedChar = True
      Size = 4
    end
    object Qry_cxbrxm: TStringField
      FieldName = 'brxm'
      FixedChar = True
      Size = 12
    end
    object Qry_cxxmmc: TStringField
      FieldName = 'xmmc'
      Size = 100
    end
    object Qry_cxgg: TStringField
      FieldName = 'gg'
      Size = 50
    end
    object Qry_cxyzsx: TStringField
      FieldName = 'yzsx'
      FixedChar = True
      Size = 4
    end
    object Qry_cxkdysmc: TStringField
      FieldName = 'kdysmc'
      Size = 10
    end
    object Qry_cxkdrq: TDateTimeField
      FieldName = 'kdrq'
    end
    object Qry_cxzxsj: TDateTimeField
      FieldName = 'zxsj'
    end
    object Qry_cxtzrq: TDateTimeField
      FieldName = 'tzrq'
    end
    object Qry_cxtzbz: TBooleanField
      FieldName = 'tzbz'
    end
  end
  object DS_cx: TDataSource
    DataSet = Qry_cx
    Left = 279
    Top = 120
  end
end
