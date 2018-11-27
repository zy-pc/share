object frm_dgtlfx: Tfrm_dgtlfx
  Left = 0
  Top = 0
  Caption = #23548#31649#33073#33853#39118#38505#35780#20272#34920
  ClientHeight = 535
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 549
    Height = 535
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 551
    object Label1: TLabel
      Left = 9
      Top = 7
      Width = 32
      Height = 19
      Caption = #24635#20998
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
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
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 86
      Width = 547
      Height = 448
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
          Title.Caption = #35780#20272#20869#23481
          Width = 202
        end
        item
          Alignment = taCenter
          BiDiMode = bdLeftToRight
          EditButtons = <>
          FieldName = 'fz'
          Footers = <>
          HideDuplicates = True
          Title.Caption = #20998#20540
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
    object Edit1: TEdit
      Left = 45
      Top = 4
      Width = 58
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Memo1: TMemo
      Left = 1
      Top = 37
      Width = 547
      Height = 49
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '1.'#35780#20998#36234#39640#31649#36947#33073#33853#39118#38505#36234#22823#65292#38656#21152#24378#24033#35270#21450#20132#25509
        '2.'#35780#20272#26102#26426#65307#20837#38498#26102#12289#36716#20837#26102#12289#25163#26415#21518#30041#32622#23548#31649#30340#36827#34892#39318#27425#35780#20272#65292#23548#31649#33073#33853#39118#38505#27599#26085#35780#20272#65292#20013#12289#39640#39118
        #38505#26102#27599#26085#35760#24405#65292#30452#33267#25300#31649)
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ExplicitWidth = 549
    end
    object Button1: TButton
      Left = 474
      Top = 0
      Width = 73
      Height = 31
      Caption = #20445#23384
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOStoredProc1
    Left = 200
    Top = 112
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_hljld_dgtlfx1'
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
        Name = '@jlrq'
        Attributes = [paNullable]
        DataType = ftDateTime
      end>
    Left = 152
    Top = 112
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
  object qry_del: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 408
    Top = 320
  end
end
