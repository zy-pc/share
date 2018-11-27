object frm_mzsjdr: Tfrm_mzsjdr
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #38376#35786#25968#25454#23548#20837
  ClientHeight = 241
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 54
    Width = 747
    Height = 133
    Align = alClient
    Enabled = False
    TabOrder = 1
    object LabeledEdit1: TLabeledEdit
      Left = 103
      Top = 50
      Width = 159
      Height = 25
      BiDiMode = bdLeftToRight
      EditLabel.Width = 42
      EditLabel.Height = 17
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = #22995#21517#65306
      EditLabel.ParentBiDiMode = False
      LabelPosition = lpLeft
      ParentBiDiMode = False
      TabOrder = 1
    end
    object LabeledEdit2: TLabeledEdit
      Left = 103
      Top = 14
      Width = 159
      Height = 25
      BiDiMode = bdLeftToRight
      EditLabel.Width = 56
      EditLabel.Height = 17
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = #38376#35786#21495#65306
      EditLabel.ParentBiDiMode = False
      LabelPosition = lpLeft
      ParentBiDiMode = False
      TabOrder = 0
    end
    object LabeledEdit3: TLabeledEdit
      Left = 333
      Top = 50
      Width = 159
      Height = 25
      BiDiMode = bdLeftToRight
      EditLabel.Width = 42
      EditLabel.Height = 17
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = #24615#21035#65306
      EditLabel.ParentBiDiMode = False
      LabelPosition = lpLeft
      ParentBiDiMode = False
      TabOrder = 2
    end
    object LabeledEdit4: TLabeledEdit
      Left = 564
      Top = 50
      Width = 158
      Height = 25
      BiDiMode = bdLeftToRight
      EditLabel.Width = 42
      EditLabel.Height = 17
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = #24180#40836#65306
      EditLabel.ParentBiDiMode = False
      LabelPosition = lpLeft
      ParentBiDiMode = False
      TabOrder = 3
    end
    object LabeledEdit5: TLabeledEdit
      Left = 103
      Top = 85
      Width = 619
      Height = 25
      BiDiMode = bdLeftToRight
      EditLabel.Width = 70
      EditLabel.Height = 17
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = #30149#20154#22320#22336#65306
      EditLabel.ParentBiDiMode = False
      LabelPosition = lpLeft
      ParentBiDiMode = False
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 187
    Width = 747
    Height = 54
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 624
      Top = 10
      Width = 98
      Height = 33
      Caption = #30830#23450
      ModalResult = 1
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 54
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 21
      Width = 84
      Height = 17
      Caption = #22995#21517#25110#38376#35786#21495
    end
    object Edit1: TEdit
      Left = 126
      Top = 17
      Width = 156
      Height = 25
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object Button2: TButton
      Left = 290
      Top = 13
      Width = 98
      Height = 33
      Caption = #26597#35810
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 126
    Top = 46
    Width = 440
    Height = 157
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        ReadOnly = True
        Title.Caption = #38376#35786#21495
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Caption = #22995#21517
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxb'
        Title.Caption = #24615#21035
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brnl'
        Title.Caption = #24180#40836
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jdrq'
        Title.Caption = #38376#35786#26102#38388
        Width = 116
        Visible = True
      end>
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 272
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 224
    Top = 112
  end
end
