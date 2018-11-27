object Frm_gytjsz: TFrm_gytjsz
  Left = 0
  Top = 0
  ActiveControl = b_add
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #32473#33647#36884#24452#35774#32622
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
      Left = 21
      Top = 10
      Width = 30
      Height = 15
      Caption = #24207#21495
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 183
      Top = 10
      Width = 30
      Height = 15
      Caption = #21517#31216
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 374
      Top = 10
      Width = 60
      Height = 15
      Caption = #25340#38899#32534#30721
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 51
      Top = 7
      Width = 64
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
      Left = 215
      Top = 7
      Width = 121
      Height = 21
      Ctl3D = False
      DataField = 'mc'
      DataSource = DsInsert
      ParentCtl3D = False
      TabOrder = 1
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 435
      Top = 7
      Width = 79
      Height = 21
      TabStop = False
      Ctl3D = False
      DataField = 'pym'
      DataSource = DsInsert
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
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
      Left = 83
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
      Left = 428
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mc'
          Title.Alignment = taCenter
          Title.Caption = #21517#31216
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pym'
          Title.Alignment = taCenter
          Title.Caption = #25340#38899#32534#30721
          Width = 78
          Visible = True
        end>
    end
  end
  object QryInsert: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = QryInsertAfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select * from sys_gytj')
    Left = 187
    Top = 134
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
  object DsInsert: TDataSource
    DataSet = QryInsert
    Left = 300
    Top = 129
  end
end
