object frm_LCLJBJ: Tfrm_LCLJBJ
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #20020#24202#36335#24452#20449#24687
  ClientHeight = 639
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 15
  object bvl1: TBevel
    Left = 36
    Top = 22
    Width = 465
    Height = 34
    Shape = bsBottomLine
  end
  object bvl2: TBevel
    Left = 36
    Top = 56
    Width = 465
    Height = 89
    Shape = bsBottomLine
  end
  object lbl1: TLabel
    Left = 83
    Top = 35
    Width = 55
    Height = 15
    AutoSize = False
    Caption = #20998#31867#65306
  end
  object lbl2: TLabel
    Left = 36
    Top = 64
    Width = 45
    Height = 15
    AutoSize = False
    Caption = #32534#30721#65306
  end
  object lbl3: TLabel
    Left = 189
    Top = 64
    Width = 40
    Height = 15
    AutoSize = False
    Caption = #21517#31216#65306
  end
  object lbl4: TLabel
    Left = 36
    Top = 101
    Width = 45
    Height = 15
    AutoSize = False
    Caption = #35828#26126#65306
  end
  object lbl5: TLabel
    Left = 36
    Top = 164
    Width = 71
    Height = 15
    AutoSize = False
    Caption = #30149#20363#20998#22411#65306
  end
  object lbl6: TLabel
    Left = 259
    Top = 164
    Width = 73
    Height = 15
    AutoSize = False
    Caption = #36866#29992#30149#24773#65306
  end
  object lbl7: TLabel
    Left = 259
    Top = 201
    Width = 72
    Height = 15
    AutoSize = False
    Caption = #36866#29992#24180#40836#65306
  end
  object lbl8: TLabel
    Left = 36
    Top = 241
    Width = 71
    Height = 15
    AutoSize = False
    Caption = #36866#29992#24615#21035#65306
  end
  object lbl11: TLabel
    Left = 38
    Top = 575
    Width = 70
    Height = 15
    AutoSize = False
    Caption = #30830#35786#22825#25968
  end
  object lbl12: TLabel
    Left = 379
    Top = 201
    Width = 8
    Height = 15
    Caption = '-'
  end
  object lblDRC: TLabel
    Left = 36
    Top = 201
    Width = 71
    Height = 15
    AutoSize = False
    Caption = #35786#26029#20998#31867':'
  end
  object bvl3: TBevel
    Left = 36
    Top = 151
    Width = 465
    Height = 118
    Shape = bsBottomLine
  end
  object lbl13: TLabel
    Left = 83
    Top = 6
    Width = 405
    Height = 15
    Caption = #20020#24202#36335#24452#30340#22522#26412#20449#24687#65292#36866#29992#23545#35937#65292#24212#29992#33539#22260#65292#23545#24212#30149#31181#31561#35774#32622
    Color = clCream
    ParentColor = False
  end
  object lbl9: TLabel
    Left = 145
    Top = 575
    Width = 345
    Height = 15
    AutoSize = False
    Caption = #20837#38498#26102#38388#36229#36807#30830#35786#22825#25968#19981#33021#23548#20837#36335#24452
  end
  object img1: TImage
    Left = 40
    Top = 8
    Width = 37
    Height = 39
    Picture.Data = {
      07544269746D617096010000424D960100000000000076000000280000001800
      0000180000000100040000000000200100000000000000000000100000000000
      0000000000000000800000800000008080008000000080008000808000008080
      8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00333333333333333333333333333333333333333333333333330000000000
      00000000003333080FFFFFFFFFFFFFFFF033330F0F444444F4444444F0333308
      0FFFFFFFFFFFFFFFF033330F0FF00000000000FFF03333080F40FFFFFFFFF04F
      F033330F0FF0F1FFFFF1F0FFF03333080F40F1FFFFF1F04FF033330F0FF0F1FF
      FFF1F0FFF03333080F40F1FF1FF1F044F033330F0FF0F1F1F1F1F0FFF0333308
      0F40F1F1F1F1F04FF033330F0FF0F11FFF11F0FFF03333080F40FFFFFFFFF044
      F033330F0FF00000000000FFF03333080FFFFFFFFFFFFFFFF033330F0FFFFFFF
      FFFFFFFFF03333000000000000000000003333080F888888F888888880333300
      0000000000000000003333333333333333333333333333333333333333333333
      3333}
    Stretch = True
  end
  object bvl4: TBevel
    Left = 100
    Top = 571
    Width = 38
    Height = 21
    Shape = bsBottomLine
  end
  object cbbType: TComboBox
    Left = 121
    Top = 27
    Width = 192
    Height = 23
    ItemHeight = 0
    TabOrder = 0
  end
  object edtcode: TEdit
    Left = 82
    Top = 62
    Width = 78
    Height = 23
    TabStop = False
    ReadOnly = True
    TabOrder = 1
  end
  object edtname: TEdit
    Left = 232
    Top = 62
    Width = 269
    Height = 23
    TabOrder = 2
  end
  object moinfo: TMemo
    Left = 82
    Top = 98
    Width = 419
    Height = 40
    HelpType = htKeyword
    Lines.Strings = (
      '')
    TabOrder = 3
  end
  object cbbProper: TComboBox
    Left = 108
    Top = 161
    Width = 145
    Height = 23
    Style = csDropDownList
    ItemHeight = 15
    ItemIndex = 0
    TabOrder = 4
    Items.Strings = (
      ''
      #21333#32431#26222#36890#22411
      #21333#32431#24613#30151#22411
      #22797#26434#30097#38590#22411
      #22797#26434#21361#37325#22411)
  end
  object cbbApplyCondit: TComboBox
    Left = 334
    Top = 161
    Width = 167
    Height = 23
    Style = csDropDownList
    ItemHeight = 15
    ItemIndex = 0
    TabOrder = 5
    Text = #19981#21306#20998#30149#24773
    Items.Strings = (
      #19981#21306#20998#30149#24773
      #21361
      #37325
      #19968#33324)
  end
  object edtForAgeF: TEdit
    Left = 334
    Top = 198
    Width = 41
    Height = 23
    TabOrder = 7
    OnKeyPress = edtForAgeFKeyPress
  end
  object edtForAgeB: TEdit
    Left = 395
    Top = 198
    Width = 38
    Height = 23
    TabOrder = 8
    OnKeyPress = edtForAgeFKeyPress
  end
  object cbbAge: TComboBox
    Left = 443
    Top = 198
    Width = 58
    Height = 23
    Style = csDropDownList
    ItemHeight = 15
    ItemIndex = 0
    TabOrder = 9
    Text = #23681
    Items.Strings = (
      #23681
      #26376
      #22825)
  end
  object cbbSex: TComboBox
    Left = 108
    Top = 238
    Width = 145
    Height = 23
    Style = csDropDownList
    ItemHeight = 15
    ItemIndex = 0
    TabOrder = 10
    Text = #19981#21306#20998#24615#21035
    Items.Strings = (
      #19981#21306#20998#24615#21035
      #30007#24615
      #22899#24615)
  end
  object cbbDRC: TComboBox
    Left = 107
    Top = 198
    Width = 145
    Height = 23
    Style = csDropDownList
    ItemHeight = 0
    TabOrder = 6
  end
  object edtday: TEdit
    Left = 103
    Top = 571
    Width = 32
    Height = 18
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clSkyBlue
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 13
    OnKeyPress = edtForAgeFKeyPress
  end
  object pnl1: TPanel
    Left = 0
    Top = 598
    Width = 530
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 14
    object chkcontine: TCheckBox
      Left = 32
      Top = 16
      Width = 97
      Height = 17
      Caption = #36830#32493#28155#21152
      TabOrder = 0
    end
    object btnADD: TButton
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Caption = #30830#23450
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnADDClick
    end
    object btnCancel: TButton
      Left = 425
      Top = 8
      Width = 75
      Height = 25
      Caption = #21462#28040
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
  object grp1: TGroupBox
    Left = 32
    Top = 268
    Width = 469
    Height = 150
    Caption = #24212#29992#33539#22260
    TabOrder = 11
    object lbl14: TLabel
      Left = 23
      Top = 24
      Width = 60
      Height = 15
      Caption = #25351#23450#31185#23460
    end
    object btnKSADD: TButton
      Left = 409
      Top = 16
      Width = 56
      Height = 25
      Caption = #28155#21152
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnKSADDClick
    end
    object lstKS: TListBox
      Left = 89
      Top = 48
      Width = 313
      Height = 97
      ItemHeight = 15
      TabOrder = 2
    end
    object sxsrchbx_zdbz: TSXSearchBox
      Left = 89
      Top = 19
      Width = 313
      Height = 23
      TabOrder = 0
      ValueField = 'dm'
      Connection = DM_data.ado_mydata
      TableName = 'sys_ksdm'
      SerchFieldList.Strings = (
        'dm'
        'mc'
        'pym')
      ShowFildList.Strings = (
        'dm:50'
        'mc'
        'pym')
      SerCondition = 'sybz=1 and kssx='#39'09'#39
      TextField = 'mc'
      DropDownListHeight = 120
      DropDownListWidth = 250
      FormCtrlFocus = True
    end
  end
  object grp2: TGroupBox
    Left = 32
    Top = 419
    Width = 469
    Height = 150
    Caption = #23545#24212#30149#31181
    TabOrder = 12
    object lbl10: TLabel
      Left = 23
      Top = 24
      Width = 60
      Height = 15
      Caption = #25351#23450#30149#31181
    end
    object btnBZADD: TButton
      Left = 409
      Top = 20
      Width = 56
      Height = 25
      Caption = #28155#21152
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnBZADDClick
    end
    object lstBZ: TListBox
      Left = 89
      Top = 48
      Width = 313
      Height = 97
      ItemHeight = 15
      TabOrder = 2
    end
    object sxsrchbxjb: TSXSearchBox
      Left = 89
      Top = 19
      Width = 313
      Height = 23
      TabOrder = 0
      ValueField = 'jbbm'
      Connection = DM_data.ado_mydata
      TableName = 'ICD10'
      SerchFieldList.Strings = (
        'jbbm'
        'jbmc'
        'pybm')
      ShowFildList.Strings = (
        'jbbm:50'
        'jbmc:200')
      TextField = 'jbmc'
      DropDownListHeight = 120
      DropDownListWidth = 250
      FormCtrlFocus = True
    end
  end
  object spLCLJ_Insert: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'LCLJ_LCLJML_INSERT;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LJID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@FL'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@BM'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@MC'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@TY'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@BLFX'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@SYBQ'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@SYXB'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SYNL'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@SM'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@QZTS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ZDXGFL'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@KSID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1500
        Value = Null
      end
      item
        Name = '@JBID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1500
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 30
        Value = Null
      end>
    Left = 152
    Top = 344
  end
  object spLJML_Update: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'LCLJ_LCLJML_UPDATE;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LJID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@FL'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@BM'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = Null
      end
      item
        Name = '@MC'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@TY'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@BLFX'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@SYBQ'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@SYXB'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SYNL'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@SM'
        Attributes = [paNullable]
        DataType = ftString
        Size = 200
        Value = Null
      end
      item
        Name = '@QZTS'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ZDXGFL'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@KSID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1500
        Value = Null
      end
      item
        Name = '@JBID'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1500
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 30
        Value = Null
      end>
    Left = 208
    Top = 344
  end
  object spLJML_Delete: TADOStoredProc
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 256
    Top = 344
  end
end
