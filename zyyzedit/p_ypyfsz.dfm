object Frm_ypyfsz: TFrm_ypyfsz
  Left = 0
  Top = 0
  ActiveControl = b_add
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #33647#21697#29992#27861#35774#32622
  ClientHeight = 315
  ClientWidth = 534
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 35
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 10
      Width = 30
      Height = 15
      Caption = #24207#21495
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 103
      Top = 10
      Width = 30
      Height = 15
      Caption = #21517#31216
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 271
      Top = 10
      Width = 30
      Height = 15
      Caption = #27425#25968
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 359
      Top = 10
      Width = 60
      Height = 15
      Caption = #26102#38388#21333#20301
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 7
      Width = 46
      Height = 21
      TabStop = False
      Ctl3D = False
      DataField = 'id'
      DataSource = DsInsert
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 139
      Top = 7
      Width = 121
      Height = 21
      Ctl3D = False
      DataField = 'mc'
      DataSource = DsInsert
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 307
      Top = 7
      Width = 43
      Height = 21
      Ctl3D = False
      DataField = 'sl'
      DataSource = DsInsert
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = DBEdit3KeyPress
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 424
      Top = 6
      DataBinding.DataField = 'dw'
      DataBinding.DataSource = DsInsert
      Properties.Items.Strings = (
        #27599#21322#23567#26102
        #27599#23567#26102
        #27599#21313#20108#23567#26102
        #27599#22825
        #27599#21608
        #27599#26376)
      TabOrder = 3
      Width = 97
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 35
    Width = 534
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object b_delete: TBitBtn
      Left = 264
      Top = 4
      Width = 60
      Height = 25
      Caption = #21024#38500'[&D]'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = b_deleteClick
    end
    object b_edit: TButton
      Left = 84
      Top = 4
      Width = 60
      Height = 25
      Caption = #20462#25913'[&E]'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = b_editClick
    end
    object b_add: TButton
      Left = 24
      Top = 4
      Width = 60
      Height = 25
      Caption = #22686#21152'[&A]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = b_addClick
    end
    object b_save: TButton
      Left = 144
      Top = 4
      Width = 60
      Height = 25
      Caption = #20445#23384'[&S]'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = b_saveClick
    end
    object b_cancel: TButton
      Left = 204
      Top = 4
      Width = 60
      Height = 25
      Caption = #21462#28040'[&C]'
      Enabled = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = b_cancelClick
    end
    object BitBtn1: TBitBtn
      Left = 407
      Top = 4
      Width = 87
      Height = 25
      Caption = #36864#20986'[&X]'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Kind = bkClose
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 68
    Width = 534
    Height = 247
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 530
      Height = 243
      Align = alClient
      DataSource = DsInsert
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = GB2312_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = #24207#21495
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mc'
          Title.Alignment = taCenter
          Title.Caption = #21517#31216
          Width = 224
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sl'
          Title.Alignment = taCenter
          Title.Caption = #27425#25968
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dw'
          Title.Alignment = taCenter
          Title.Caption = #26102#38388#21333#20301
          Width = 105
          Visible = True
        end>
    end
  end
  object QryInsert: TADOQuery
    Active = True
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = QryInsertAfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select * from sys_ypyf')
    Left = 187
    Top = 134
  end
  object DsInsert: TDataSource
    DataSet = QryInsert
    Left = 300
    Top = 129
  end
  object QryLook: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'Select * from sys_ypyf')
    Left = 244
    Top = 202
  end
end
