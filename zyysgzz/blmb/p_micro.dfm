object frm_micro: Tfrm_micro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #31995#32479#21487#29992#23439
  ClientHeight = 417
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 424
    Height = 417
    Align = alClient
    DataSource = ds_micro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'COLUMN_NAME'
        Title.Caption = #23439#21517#31216
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_TYPE'
        Title.Caption = #25968#25454
        Width = 78
        Visible = True
      end>
  end
  object qry_mircro: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'EXEC sp_columns @table_name =zydzbl_micro')
    Left = 88
    Top = 104
  end
  object ds_micro: TDataSource
    DataSet = qry_mircro
    Left = 136
    Top = 104
  end
end
