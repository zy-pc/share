object frm_yzzdsz: Tfrm_yzzdsz
  Left = 141
  Top = 108
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #21307#22065#27169#26495#35774#32622
  ClientHeight = 554
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter2: TSplitter
    Left = 0
    Top = 309
    Width = 743
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Panel2: TPanel
    Left = 0
    Top = 312
    Width = 743
    Height = 242
    Align = alBottom
    BevelInner = bvLowered
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    ParentBiDiMode = False
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 305
      Top = 2
      Height = 234
      Visible = False
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 303
      Height = 234
      Align = alLeft
      BevelInner = bvLowered
      TabOrder = 0
      object treeviewzp: TTreeView
        Left = 2
        Top = 2
        Width = 299
        Height = 230
        Align = alClient
        AutoExpand = True
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        Images = ImageList1
        Indent = 19
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnChange = treeviewzpChange
      end
    end
    object Panel4: TPanel
      Left = 308
      Top = 2
      Width = 429
      Height = 301
      BevelInner = bvLowered
      TabOrder = 1
      object b_save: TButton
        Left = 62
        Top = 298
        Width = 68
        Height = 25
        Caption = #20445#23384
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object b_cancel: TButton
        Left = 283
        Top = 299
        Width = 63
        Height = 25
        Caption = #25918#24323
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBGridEh2: TDBGridEh
        Left = 2
        Top = 2
        Width = 425
        Height = 297
        DataSource = ds_fydm
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = GB2312_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnDblClick = DBGridEh2DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'xmdm'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20195#30721
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'xmmc'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #39033#30446#21517#31216
            Width = 284
          end
          item
            EditButtons = <>
            FieldName = 'dw'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #21333#20301
            Width = 48
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 743
    Height = 238
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 2
      Width = 739
      Height = 234
      Hint = #20987#8220'ESC'#8221#38190#21024#38500#25968#25454
      Align = alClient
      DataSource = ds_ztmx
      Flat = False
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
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      OnKeyDown = DBGridEh1KeyDown
      Columns = <
        item
          EditButtons = <>
          FieldName = 'xmdm'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #20195#30721
          Width = 135
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 261
      Top = 14
      Width = 60
      Height = 15
      Caption = #27169#26495#21517#31216
    end
    object BitBtn2: TBitBtn
      Left = 599
      Top = 6
      Width = 55
      Height = 25
      Caption = #20445#23384'[&S]'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object CheckBox1: TCheckBox
      Left = 5
      Top = 11
      Width = 80
      Height = 17
      Alignment = taLeftJustify
      Caption = #30149#21306#27169#26495
      TabOrder = 2
    end
    object CheckBox2: TCheckBox
      Left = 91
      Top = 12
      Width = 80
      Height = 17
      Alignment = taLeftJustify
      Caption = #19987#19994#27169#26495
      TabOrder = 3
    end
    object CheckBox3: TCheckBox
      Left = 177
      Top = 12
      Width = 78
      Height = 17
      Alignment = taLeftJustify
      Caption = #20010#20154#27169#26495
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 327
      Top = 8
      Width = 204
      Height = 21
      Ctl3D = False
      DataField = 'ztmc'
      DataSource = DS_zt
      ParentCtl3D = False
      TabOrder = 5
      OnExit = DBEdit1Exit
    end
    object BitBtn1: TBitBtn
      Left = 660
      Top = 6
      Width = 69
      Height = 25
      Caption = #36864#20986'[&X]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Kind = bkClose
    end
    object b_adddl: TButton
      Left = 537
      Top = 6
      Width = 56
      Height = 25
      Caption = #22686#21152'(&A)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = b_adddlClick
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 273
    Width = 743
    Height = 36
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 3
    object Label2: TLabel
      Left = 15
      Top = 11
      Width = 30
      Height = 15
      Caption = #25968#37327
    end
    object Label3: TLabel
      Left = 118
      Top = 11
      Width = 30
      Height = 15
      Caption = #31867#21035
    end
    object Label4: TLabel
      Left = 272
      Top = 11
      Width = 60
      Height = 15
      Caption = #21307#22065#32534#30721
    end
    object BitBtn6: TBitBtn
      Left = 527
      Top = 6
      Width = 93
      Height = 25
      Caption = #22686#21152#26126#32454'[&O]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn6Click
    end
    object Edit1: TEdit
      Left = 47
      Top = 7
      Width = 42
      Height = 23
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      Text = '1'
    end
    object ComboBox1: TComboBox
      Left = 153
      Top = 7
      Width = 104
      Height = 23
      Ctl3D = True
      ItemHeight = 15
      ParentCtl3D = False
      TabOrder = 2
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
      Items.Strings = (
        #33647#21697
        #26816#26597
        #26816#39564
        #26448#26009
        #27835#30103)
    end
    object UpDown1: TUpDown
      Left = 89
      Top = 7
      Width = 15
      Height = 23
      Associate = Edit1
      Min = 1
      Max = 5
      Position = 1
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 334
      Top = 8
      Width = 118
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnKeyPress = Edit2KeyPress
    end
    object Button1: TButton
      Left = 454
      Top = 8
      Width = 52
      Height = 21
      Caption = #26597' '#35810
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object bt_delete: TButton
      Left = 619
      Top = 6
      Width = 94
      Height = 25
      Caption = #21024#38500#26126#32454'[&D]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = bt_deleteClick
    end
  end
  object Panel6: TPanel
    Left = 3
    Top = 316
    Width = 735
    Height = 237
    BevelInner = bvLowered
    Caption = 'Panel6'
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 4
    Visible = False
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 734
      Height = 236
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_cx_yp_yz
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'ypbm'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 159
        end
        object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
          Caption = #33647#21697#21517#31216
          DataBinding.FieldName = 'ypmc'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 243
        end
        object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
          Caption = #33647#21697#35268#26684
          DataBinding.FieldName = 'ypgg'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 143
        end
        object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
          Caption = #21333#20301
          DataBinding.FieldName = 'zyyfdw'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 41
        end
        object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
          Caption = #21333#20215
          DataBinding.FieldName = 'zylsj'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 56
        end
        object cxGrid1DBTableView1DBColumn6: TcxGridDBColumn
          Caption = #21161#35760#30721
          DataBinding.FieldName = 'zjm'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 72
        end
        object cxGrid1DBTableView1DBColumn7: TcxGridDBColumn
          Caption = #30002#31867
          DataBinding.FieldName = 'sfjlyp'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 45
        end
        object cxGrid1DBTableView1DBColumn8: TcxGridDBColumn
          Caption = #20057#31867
          DataBinding.FieldName = 'sfylyp'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 41
        end
        object cxGrid1DBTableView1DBColumn9: TcxGridDBColumn
          Caption = #29992#37327#21333#20301
          DataBinding.FieldName = 'yldw'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object ds_fydm: TDataSource
    DataSet = qry_fydm
    Left = 442
    Top = 354
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ksdm')
    Left = 43
    Top = 387
  end
  object qry_fydm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qry_fydmAfterScroll
    Parameters = <
      item
        Name = 'vdldm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_yzxm Where dldm like :vdldm')
    Left = 472
    Top = 351
  end
  object Querytree: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from fb_qddmtree order by bm')
    Left = 110
    Top = 386
  end
  object ds_pub: TDataSource
    DataSet = qry_pub
    Left = 58
    Top = 437
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #23435#20307
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 229
    Top = 382
  end
  object Qry_zt: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = Qry_ztAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_ztdm where czy='#39'9999'#39)
    Left = 92
    Top = 166
  end
  object DS_zt: TDataSource
    DataSet = Qry_zt
    Left = 62
    Top = 165
  end
  object Qry_look: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_ztdm')
    Left = 163
    Top = 354
  end
  object Qry_ztmx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    AfterScroll = Qry_ztmxAfterScroll
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
      'Order by yzlb')
    Left = 318
    Top = 118
  end
  object ds_ztmx: TDataSource
    DataSet = Qry_ztmx
    OnDataChange = ds_ztmxDataChange
    Left = 275
    Top = 121
  end
  object QryLook: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 219
    Top = 170
  end
  object ImageList1: TImageList
    Left = 31
    Top = 170
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000313131000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      940000949400009494000000000000000000000000000094940063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CECE0063CE
      CE0063CECE0063CECE0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000949400F7F7
      F70094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CEFF0094CE
      FF0063CECE000094940000000000000000000000000000949400CEFFFF0094CE
      FF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094CEFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094CEFF0094CE
      FF0063CECE000000000000949400000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094CE
      FF000094940000000000009494000000000000000000219C9C00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CE
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000949400F7F7F70094FFFF0094FF
      FF0094FFFF0094FFFF0094CEFF0094FFFF0094FFFF0094CEFF0094FFFF0063CE
      CE000000000063CECE0063CECE00000000000000000039ADAD00CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000949400F7F7F70094FFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FFFF0094CEFF0063CE
      CE000000000063CECE0063CECE0000000000000000005AB5B500CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CE
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000094940000949400009494000094
      9400009494000094940000949400009494000094940000949400009494000094
      940063CECE0094FFFF0063CECE00000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094CEFF0094FF
      FF0094CEFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094FFFF0063CECE00000000000000000000949400CEFFFF0094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FF
      FF0094FFFF0094CEFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF0094FFFF00F7F7F700F7F7
      F700F7F7F700F7F7F70063CECE00000000000000000000949400CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF0094FFFF0063CECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000949400F7F7F70094FF
      FF0094FFFF0094FFFF0094FFFF0094FFFF00F7F7F70000949400009494000094
      940000949400009494000094940000000000000000000094940063CECE0063CE
      CE0063CECE0063CECE0063CECE0063CECE0063CECE0000949400009494000094
      9400009494000094940000949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000949400F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F7000094940000000000000000000000
      000000000000000000000000000000000000000000000000000000949400EFEF
      EF00CEFFFF00CEFFFF0094FFFF0094FFFF000094940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400009494000094940000949400009494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000094
      9400009494000094940000949400009494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      E000C00000000000C000800000000000C0008000000000008000800000000000
      8000800000000000000080000000000000008000000000000000800000000000
      800080000000000080008000000000008001800100000000C07FC03F00000000
      E0FFE07F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object Qry_yzxm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from sys_yzxm')
    Left = 504
    Top = 133
  end
  object DS_yzxm: TDataSource
    DataSet = Qry_yzxm
    Left = 472
    Top = 133
  end
  object sp_cx_yp_yz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_ypyz;1'
    Parameters = <
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@jsfs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 328
    Top = 392
  end
  object ds_cx_yp_yz: TDataSource
    DataSet = sp_cx_yp_yz
    Left = 296
    Top = 392
  end
end
