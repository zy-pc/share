object frm_kjsfxm: Tfrm_kjsfxm
  Left = 228
  Top = 132
  Anchors = []
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #21307#22065#39033#30446#20195#30721#35774#32622
  ClientHeight = 519
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter2: TSplitter
    Left = 0
    Top = 318
    Width = 743
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 743
    Height = 318
    Align = alTop
    BevelInner = bvLowered
    BiDiMode = bdLeftToRight
    BorderStyle = bsSingle
    ParentBiDiMode = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 305
      Top = 2
      Height = 310
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 303
      Height = 310
      Align = alLeft
      BevelInner = bvLowered
      TabOrder = 0
      object treeviewzp: TTreeView
        Left = 2
        Top = 2
        Width = 299
        Height = 306
        Align = alClient
        AutoExpand = True
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
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
      Height = 310
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 1
      object Panel1: TPanel
        Left = 2
        Top = 2
        Width = 425
        Height = 306
        Align = alClient
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object Bevel2: TBevel
          Left = 0
          Top = 32
          Width = 425
          Height = 230
          Align = alTop
          Shape = bsFrame
          Style = bsRaised
        end
        object Label1: TLabel
          Left = 19
          Top = 47
          Width = 60
          Height = 15
          Caption = #39033#30446#20195#30721
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 19
          Top = 76
          Width = 60
          Height = 15
          AutoSize = False
          Caption = #39033#30446#21517#31216
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 19
          Top = 106
          Width = 60
          Height = 15
          AutoSize = False
          Caption = #25340#38899#32534#30721
          FocusControl = DBEdit3
        end
        object Label11: TLabel
          Left = 19
          Top = 168
          Width = 60
          Height = 15
          Caption = #38376#35786#31185#23460
        end
        object Label10: TLabel
          Left = 235
          Top = 47
          Width = 60
          Height = 15
          Caption = #39033#30446#31867#21035
          FocusControl = DBEdit10
        end
        object Label12: TLabel
          Left = 235
          Top = 137
          Width = 62
          Height = 15
          AutoSize = False
          Caption = #28909'    '#38190
          FocusControl = DBEdit13
        end
        object Label16: TLabel
          Left = 235
          Top = 168
          Width = 60
          Height = 15
          Caption = #20303#38498#31185#23460
        end
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 425
          Height = 32
          Align = alTop
          Shape = bsFrame
          Style = bsRaised
        end
        object Label5: TLabel
          Left = 20
          Top = 137
          Width = 54
          Height = 15
          AutoSize = False
          Caption = #21333'   '#20301
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 235
          Top = 106
          Width = 60
          Height = 15
          AutoSize = False
          Caption = #21161#35760#32534#30721
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 19
          Top = 199
          Width = 60
          Height = 15
          Caption = #36153#29992#20195#30721
        end
        object Label8: TLabel
          Left = 20
          Top = 230
          Width = 54
          Height = 15
          Caption = #22791'   '#27880
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 83
          Top = 44
          Width = 130
          Height = 21
          Ctl3D = False
          DataField = 'xmdm'
          DataSource = ds_fydm
          Enabled = False
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 83
          Top = 73
          Width = 333
          Height = 21
          AutoSize = False
          Ctl3D = False
          DataField = 'xmmc'
          DataSource = ds_fydm
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 2
          OnExit = DBEdit2Exit
        end
        object DBEdit3: TDBEdit
          Left = 83
          Top = 103
          Width = 130
          Height = 21
          AutoSize = False
          Ctl3D = False
          DataField = 'pym'
          DataSource = ds_fydm
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 83
          Top = 134
          Width = 130
          Height = 21
          AutoSize = False
          Ctl3D = False
          DataField = 'dw'
          DataSource = ds_fydm
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBCheckBox1: TDBCheckBox
          Left = 304
          Top = 198
          Width = 107
          Height = 17
          Alignment = taLeftJustify
          Caption = #21551#29992#26631#24535
          Ctl3D = True
          DataField = 'qybz'
          DataSource = ds_fydm
          ParentCtl3D = False
          TabOrder = 11
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnClick = DBCheckBox1Click
        end
        object editzyks: TEdit
          Left = 299
          Top = 165
          Width = 117
          Height = 21
          Ctl3D = False
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 8
          OnChange = editzyksChange
          OnKeyPress = editzyksKeyPress
        end
        object editmzks: TEdit
          Left = 83
          Top = 165
          Width = 130
          Height = 21
          Ctl3D = False
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 7
          OnChange = editmzksChange
          OnKeyPress = editmzksKeyPress
        end
        object DBEdit10: TDBEdit
          Left = 299
          Top = 44
          Width = 117
          Height = 21
          Ctl3D = False
          DataField = 'dldm'
          DataSource = ds_fydm
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 299
          Top = 134
          Width = 117
          Height = 21
          AutoSize = False
          Ctl3D = False
          DataField = 'hotkey'
          DataSource = ds_fydm
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit5: TDBEdit
          Left = 299
          Top = 103
          Width = 117
          Height = 21
          AutoSize = False
          Ctl3D = False
          DataField = 'typym'
          DataSource = ds_fydm
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 4
        end
        object Edit1: TEdit
          Left = 83
          Top = 196
          Width = 64
          Height = 21
          Ctl3D = False
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 9
          OnKeyPress = Edit1KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 83
          Top = 227
          Width = 333
          Height = 21
          Ctl3D = False
          DataField = 'bz'
          DataSource = ds_fydm
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 12
          OnKeyPress = DBEdit6KeyPress
        end
        object Edit2: TEdit
          Left = 148
          Top = 196
          Width = 107
          Height = 21
          Ctl3D = False
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentCtl3D = False
          TabOrder = 10
        end
        object b_cancel: TButton
          Left = 283
          Top = 271
          Width = 63
          Height = 25
          Caption = #25918#24323'[&C]'
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = b_cancelClick
        end
        object b_save: TButton
          Left = 62
          Top = 271
          Width = 68
          Height = 25
          Caption = #20445#23384'[&S]'
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnClick = b_saveClick
        end
      end
      object b_add: TButton
        Left = 9
        Top = 6
        Width = 59
        Height = 24
        Caption = #22686#21152'[&A]'
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = b_addClick
      end
      object b_edit: TButton
        Left = 68
        Top = 6
        Width = 59
        Height = 24
        Caption = #20462#25913'[&E]'
        Enabled = False
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = b_editClick
      end
      object b_print: TBitBtn
        Left = 188
        Top = 6
        Width = 59
        Height = 24
        Caption = #25171#21360'[&P]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = b_printClick
      end
      object b_cx: TButton
        Left = 128
        Top = 6
        Width = 59
        Height = 24
        Caption = #26597#35810'[&L]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = b_cxClick
      end
      object b_delete: TBitBtn
        Left = 248
        Top = 6
        Width = 59
        Height = 24
        Caption = #21024#38500'[&D]'
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = b_deleteClick
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 321
    Width = 743
    Height = 198
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object dbgrid2: TDBGridEh
      Left = 2
      Top = 2
      Width = 739
      Height = 194
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_fydm
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = GB2312_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
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
          Width = 170
        end
        item
          EditButtons = <>
          FieldName = 'pym'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #25340#38899#30721
          Width = 96
        end
        item
          EditButtons = <>
          FieldName = 'hotKey'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #28909' '#38190
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'dw'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #21333#20301
          Width = 43
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
          Width = 150
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 512
    Top = 333
    Width = 210
    Height = 175
    DataSource = ds_pub
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGrid1Exit
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'dm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #31185#23460#21517#31216
        Width = 111
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 395
    Top = 223
    Width = 350
    Height = 144
    DataSource = DS_yp
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = GB2312_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid3DblClick
    OnExit = DBGrid3Exit
    OnKeyPress = DBGrid3KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'fymc'
        Title.Alignment = taCenter
        Title.Caption = #36153#29992#21517#31216
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fydm'
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dw'
        Title.Alignment = taCenter
        Title.Caption = #21333#20301
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfbz'
        Title.Alignment = taCenter
        Title.Caption = #25910#36153#26631#20934
        Width = 69
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 638
    Top = 10
    Width = 89
    Height = 24
    Caption = #36864#20986'[&X]'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = b_deleteClick
    Kind = bkClose
  end
  object ImageList1: TImageList
    Left = 111
    Top = 10
    Bitmap = {
      494C010102000400080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object ds_fydm: TDataSource
    DataSet = qry_fydm
    Left = 143
    Top = 83
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ksdm')
    Left = 24
    Top = 10
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
      'select * from sys_yzxm where dldm like :vdldm')
    Left = 210
    Top = 49
  end
  object Querytree: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      'select * from fb_qddmtree order by bm')
    Left = 75
    Top = 10
  end
  object ds_pub: TDataSource
    DataSet = qry_pub
    Left = 48
    Top = 90
  end
  object sp_fysycx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_cx_yzxmsy;1'
    Parameters = <
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@fysybz'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 128
    Top = 171
  end
  object sp_cxfylb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_cx_yzlb;1'
    Parameters = <
      item
        Name = '@dldm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@sc_zt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 1
        Value = Null
      end>
    Left = 249
    Top = 97
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = dbgrid2
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
    Left = 274
    Top = 12
  end
  object sp_fyxgsfbz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'sys_in_kjsfxg;1'
    Parameters = <
      item
        Name = '@fydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 212
    Top = 156
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
        Value = 'a'
      end>
    Left = 402
    Top = 240
  end
  object DS_yp: TDataSource
    DataSet = SP_fyxm
    Left = 448
    Top = 255
  end
end
