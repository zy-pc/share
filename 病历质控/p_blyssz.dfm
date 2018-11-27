object frm_blyssz: Tfrm_blyssz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #30149#20154#30149#21382#21307#29983#25480#26435#35774#32622
  ClientHeight = 507
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object btok: TBitBtn
    Left = 136
    Top = 472
    Width = 75
    Height = 23
    Caption = #30830#23450
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btokClick
  end
  object btclose: TBitBtn
    Left = 320
    Top = 469
    Width = 75
    Height = 25
    Caption = #25918#24323
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btcloseClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 547
    Height = 65
    Align = alTop
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvSpace
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object Label7: TLabel
      Left = 16
      Top = 25
      Width = 60
      Height = 15
      Caption = #31185#23460#20027#31649
    end
    object editkszg: TEdit
      Left = 79
      Top = 23
      Width = 161
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 547
    Height = 392
    Align = alTop
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvSpace
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 51
      Width = 62
      Height = 15
      Caption = #21345'    '#21495
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 86
      Width = 61
      Height = 15
      Caption = #20303' '#38498' '#21495
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 118
      Width = 60
      Height = 15
      Caption = #30149#21382#21307#29983
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 152
      Width = 60
      Height = 15
      Caption = #20027#31649#21307#29983
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 184
      Width = 60
      Height = 15
      Caption = #31185#23460#20027#31649
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 16
      Top = 18
      Width = 60
      Height = 15
      Caption = #30149#20154#22995#21517
      FocusControl = DBEdit1
    end
    object Label8: TLabel
      Left = 16
      Top = 217
      Width = 60
      Height = 15
      Caption = #25163#26415#21307#29983
      FocusControl = DBEdit6
    end
    object Label9: TLabel
      Left = 16
      Top = 283
      Width = 54
      Height = 15
      Caption = 'ICU'#21307#29983
      FocusControl = DBEdit7
    end
    object Label10: TLabel
      Left = 15
      Top = 342
      Width = 60
      Height = 15
      Caption = #20250#35786#21307#29983
      FocusControl = DBEdit7
    end
    object Label11: TLabel
      Left = 16
      Top = 252
      Width = 60
      Height = 15
      Caption = #40635#37257#21307#29983
      FocusControl = DBEdit9
    end
    object DBEdit1: TDBEdit
      Left = 81
      Top = 48
      Width = 139
      Height = 21
      Ctl3D = False
      DataField = 'tmh'
      DataSource = ds_blyssz
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 81
      Top = 81
      Width = 201
      Height = 21
      Ctl3D = False
      DataField = 'zyh'
      DataSource = ds_blyssz
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 81
      Top = 114
      Width = 201
      Height = 21
      Ctl3D = False
      DataField = 'blys'
      DataSource = ds_blyssz
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 81
      Top = 147
      Width = 201
      Height = 21
      Ctl3D = False
      DataField = 'zzys'
      DataSource = ds_blyssz
      ParentCtl3D = False
      TabOrder = 3
      OnKeyPress = DBEdit4KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 81
      Top = 180
      Width = 201
      Height = 21
      Ctl3D = False
      DataField = 'zgys'
      DataSource = ds_blyssz
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
      OnKeyPress = DBEdit5KeyPress
    end
    object Edit1: TEdit
      Left = 81
      Top = 15
      Width = 140
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 81
      Top = 214
      Width = 201
      Height = 21
      Ctl3D = False
      DataField = 'ssys'
      DataSource = ds_blyssz
      ParentCtl3D = False
      TabOrder = 6
      OnKeyPress = DBEdit6KeyPress
    end
    object DBEdit7: TDBEdit
      Left = 81
      Top = 304
      Width = 437
      Height = 21
      Ctl3D = False
      DataField = 'jfys'
      DataSource = ds_blyssz
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 81
      Top = 364
      Width = 436
      Height = 21
      Ctl3D = False
      DataField = 'hzys'
      DataSource = ds_blyssz
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object edtICU: TEdit
      Left = 81
      Top = 278
      Width = 58
      Height = 21
      Hint = #19981#36755#20837#20219#20309#20869#23481#30830#35748#23558#21487#20197#28165#38500#25480#26435#21307#29983
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      OnKeyPress = edtICUKeyPress
    end
    object edthzys: TEdit
      Left = 81
      Top = 337
      Width = 58
      Height = 21
      Hint = #19981#36755#20837#20219#20309#20869#23481#30830#35748#23558#21487#20197#28165#38500#25480#26435#21307#29983
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      OnKeyPress = edthzysKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 81
      Top = 249
      Width = 201
      Height = 21
      Ctl3D = False
      DataField = 'mzysmc'
      DataSource = ds_blyssz
      ParentCtl3D = False
      TabOrder = 11
      OnKeyPress = DBEdit9KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 187
    Top = 71
    Width = 238
    Height = 280
    DataSource = DM_data.DS_pub
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
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
        Title.Caption = #20195#30721
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Caption = #21307#29983#21517#31216
        Width = 133
        Visible = True
      end>
  end
  object qry_blyssz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * from  zydzbl_blys where zyh=:zyh')
    Left = 408
    Top = 16
  end
  object ds_blyssz: TDataSource
    DataSet = qry_blyssz
    Left = 376
    Top = 16
  end
end
