object frm_jyyb: Tfrm_jyyb
  Left = 950
  Top = 90
  BorderStyle = bsDialog
  Caption = #26816#26597#26679#26412#35774#32622
  ClientHeight = 565
  ClientWidth = 201
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 565
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object geJyyb: TDBGridEh
      Left = 1
      Top = 1
      Width = 199
      Height = 522
      Align = alClient
      DataSource = ds_jyyb
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ParentFont = False
      RowHeight = 23
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          AlwaysShowEditButton = True
          EditButtons = <>
          FieldName = 'ybmc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #26679#26412#21517#31216
          Width = 172
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 523
      Width = 199
      Height = 41
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 1
      object btAdd: TcxButton
        Left = 20
        Top = 11
        Width = 75
        Height = 25
        Caption = #22686#21152'(&A)'
        TabOrder = 0
        OnClick = btAddClick
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
      end
      object btDel: TcxButton
        Left = 105
        Top = 11
        Width = 75
        Height = 25
        Caption = #21024#38500'(&D)'
        TabOrder = 1
        OnClick = btDelClick
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = True
      end
    end
  end
  object ds_jyyb: TDataSource
    DataSet = qry_jyyb
    Left = 39
    Top = 243
  end
  object qry_jyyb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_jyyb order by ybmc')
    Left = 82
    Top = 241
  end
end
