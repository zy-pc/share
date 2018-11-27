object Frm_jyjg: TFrm_jyjg
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  BorderWidth = 1
  Caption = #26816#39564#32467#26524#26597#30475
  ClientHeight = 410
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 16
    Width = 48
    Height = 13
    Caption = #26465#30721#21495#65306
  end
  object lbl2: TLabel
    Left = 216
    Top = 16
    Width = 48
    Height = 13
    Caption = #20303#38498#21495#65306
  end
  object lbl3: TLabel
    Left = 16
    Top = 43
    Width = 60
    Height = 13
    Caption = #24739#32773#22995#21517#65306
  end
  object lbl4: TLabel
    Left = 422
    Top = 16
    Width = 60
    Height = 13
    Caption = #36153#29992#31867#21035#65306
  end
  object lbl5: TLabel
    Left = 422
    Top = 44
    Width = 60
    Height = 13
    Caption = #20837#38498#35786#26029#65306
  end
  object lbl6: TLabel
    Left = 216
    Top = 43
    Width = 60
    Height = 13
    Caption = #24739#32773#24180#40836#65306
  end
  object lbl7: TLabel
    Left = 16
    Top = 66
    Width = 128
    Height = 18
    Caption = #24739#32773#26816#39564#32467#26524#21015#34920
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TButton
    Left = 245
    Top = 382
    Width = 124
    Height = 25
    Caption = #30830'     '#23450
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn1Click
  end
  object edtbrtmh: TEdit
    Left = 81
    Top = 14
    Width = 121
    Height = 21
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 1
  end
  object edtbrzyh: TEdit
    Left = 281
    Top = 14
    Width = 121
    Height = 21
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 2
  end
  object edtbrxm: TEdit
    Left = 81
    Top = 41
    Width = 121
    Height = 21
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 3
  end
  object edtfylb: TEdit
    Left = 487
    Top = 14
    Width = 121
    Height = 21
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 4
  end
  object edtryzd: TEdit
    Left = 487
    Top = 41
    Width = 121
    Height = 21
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 5
  end
  object edtbrnl: TEdit
    Left = 281
    Top = 41
    Width = 121
    Height = 21
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 6
  end
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 88
    Width = 592
    Height = 144
    DataSource = ds1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        Footers = <>
      end>
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 89
    Width = 592
    Height = 288
    TabOrder = 8
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #20998#32452#32534#21495
        DataBinding.FieldName = 'barcode'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 90
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #26816#39564#39033#30446#21517#31216
        DataBinding.FieldName = 'itemCName'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 130
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #33521#25991#21517#31216
        DataBinding.FieldName = 'ItemEname'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 80
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #27979#35797#20540
        DataBinding.FieldName = 'ItemValue'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 80
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #27491#24120#33539#22260#20540
        DataBinding.FieldName = 'ItemRange'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 110
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        Caption = #21333#20301
        DataBinding.FieldName = 'Itemunit'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 70
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object qry1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 48
  end
  object qry2: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end>
    SQL.Strings = (
      'exec zysf_cx_jyjg :@ksdm,:@tmh')
    Left = 144
    Top = 64
  end
  object ds1: TDataSource
    DataSet = qry2
    Left = 176
    Top = 64
  end
  object sp1: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zysf_cx_jyjg'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end>
    Left = 211
    Top = 64
  end
end
