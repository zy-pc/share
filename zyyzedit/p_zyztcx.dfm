object Frm_zyztcx: TFrm_zyztcx
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #21307#22065#27169#26495
  ClientHeight = 448
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 245
    Width = 655
    Height = 2
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 655
    Height = 210
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 118
      Top = 2
      Width = 535
      Height = 206
      Align = alClient
      DataSource = DS_zt
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ztid'
          Title.Alignment = taCenter
          Title.Caption = #20195#30721
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ztmc'
          Title.Alignment = taCenter
          Title.Caption = #20027#23548#21517#31216
          Width = 441
          Visible = True
        end>
    end
    object TreeView1: TTreeView
      Left = 2
      Top = 2
      Width = 116
      Height = 206
      Align = alLeft
      AutoExpand = True
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      Indent = 19
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = TreeView1Change
      Items.NodeData = {
        010300000021000000020000000000000002000000FFFFFFFF00000000000000
        0004C5753A53C47E575921000000020000000000000002000000FFFFFFFF0000
        00000000000004134E1A4EC47E575921000000020000000000000002000000FF
        FFFFFF0000000000000000042A4EBA4EC47E5759}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 247
    Width = 655
    Height = 201
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 2
      Width = 651
      Height = 197
      Hint = #20987#8220'ESC'#8221#38190#21024#38500#25968#25454
      Align = alClient
      DataSource = ds_ztmx
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
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
          Title.Caption = #20195#30721
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'xmmc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #39033#30446#21517#31216
          Width = 232
        end
        item
          EditButtons = <>
          FieldName = 'yzlb'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #31867#21035
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'sl'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25968#37327
          Width = 42
        end
        item
          EditButtons = <>
          FieldName = 'hotKey'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #28909#38190
          Width = 38
        end
        item
          EditButtons = <>
          FieldName = 'dw'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #21333#20301
          Width = 42
        end
        item
          EditButtons = <>
          FieldName = 'qybz'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #26631#24535
        end
        item
          EditButtons = <>
          FieldName = 'bz'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #22791'  '#27880
          Width = 238
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 262
      Top = 5
      Width = 75
      Height = 25
      Caption = #22686#21152'[&A]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 536
      Top = 5
      Width = 87
      Height = 25
      Caption = #36864#20986'[&X]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Kind = bkClose
    end
    object BitBtn4: TBitBtn
      Left = 414
      Top = 5
      Width = 75
      Height = 25
      Caption = #21024#38500'[&D]'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 338
      Top = 5
      Width = 75
      Height = 25
      Caption = #20462#25913'[&E]'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn5Click
    end
  end
  object Qry_look: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_ztdm')
    Left = 184
    Top = 80
  end
  object Qry_zt: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = Qry_ztAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_ztdm')
    Left = 224
    Top = 80
  end
  object DS_zt: TDataSource
    DataSet = Qry_zt
    OnDataChange = DS_ztDataChange
    Left = 319
    Top = 80
  end
  object Qry_ztmx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Varid1'
        Size = -1
        Value = Null
      end
      item
        Name = 'Varid2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select aa.yzlb,aa.sl,bb.xmdm,bb.xmmc,bb.hotkey,bb.dw,bb.bz,bb.qy' +
        'bz from  zybl_ztmx aa,sys_yzxm bb '
      'where aa.ztid=:Varid1 And aa.yzdm=bb.xmdm'
      'union'
      
        'Select aa.yzlb,aa.sl,aa.yzdm,bb.ypmc,'#39#39' as hotkey,bb.zyyfdw,bb.b' +
        'z,bb.sybz from  zybl_ztmx aa,sys_ypdm bb'
      'where aa.ztid=:Varid2 and aa.yzdm=bb.ypdm '
      'Order by yzlb ')
    Left = 135
    Top = 306
  end
  object ds_ztmx: TDataSource
    DataSet = Qry_ztmx
    Left = 180
    Top = 306
  end
  object SP_zydm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zybl_up_zyztdel;1'
    Parameters = <
      item
        Name = '@ztID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sc_cg'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 273
    Top = 79
  end
end
