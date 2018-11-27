object frm_blsj_dglx: Tfrm_blsj_dglx
  Left = 0
  Top = 0
  Caption = #19981#33391#20107#20214#23548#31649#33073#33853#36873#25321
  ClientHeight = 442
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 442
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Label2: TLabel
      Left = 109
      Top = 7
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 86
      Top = 17
      Width = 180
      Height = 15
      Caption = #36873#25321#23548#31649#33073#33853#20855#20307#23548#31649#21517#31216
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 49
      Width = 455
      Height = 392
      Align = alBottom
      DataGrouping.GroupLevels = <>
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          EditButtons = <>
          FieldName = 'pfdx'
          Footers = <>
          HideDuplicates = True
          Title.Caption = #39033#30446
          Width = 145
        end
        item
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          EditButtons = <>
          FieldName = 'pfxx'
          Footers = <>
          Title.Caption = #23548#31649#21517#31216
          Width = 202
        end
        item
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          EditButtons = <>
          FieldName = 'xzbz'
          Footers = <>
          Title.Caption = #36873#25321
          Width = 60
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Button1: TButton
      Left = 352
      Top = 10
      Width = 73
      Height = 33
      Caption = #30830#23450
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOStoredProc1
    Left = 288
    Top = 272
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'blsj_dgtlfx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
      end
      item
        Name = '@sjid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 320
    Top = 272
  end
  object qry_ins: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 344
    Top = 160
  end
  object ADODataSet1: TADODataSet
    Connection = DM_data.ado_mydata
    CommandText = 'select * from zybl_hljld_pf where 1=2'
    Parameters = <>
    Left = 456
    Top = 176
  end
end
