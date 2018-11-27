object frm_sbfybl: Tfrm_sbfybl
  Left = 204
  Top = 157
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #26597#35810#31038#20445#36153#29992#27604#29575
  ClientHeight = 453
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 65
    Height = 13
    Caption = #26597#35810#20540
  end
  object Edit1: TEdit
    Left = 80
    Top = 8
    Width = 161
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 736
    Height = 412
    Align = alBottom
    DataSource = ds_sbfybl
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ZWMC'
        Title.Caption = #20013#25991#21517#31216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DJ'
        Title.Caption = #21333#20215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JLDW'
        Title.Caption = #21333#20301
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZF_YJ'
        Title.Caption = #19968#32423#33258#20184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWMC'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BXJGID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZF_SJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZF_SY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZF_EJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZF_EY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZF_QT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BZ'
        Visible = True
      end>
  end
  object ds_sbfybl: TDataSource
    DataSet = qry_sb
    Left = 312
    Top = 8
  end
  object qry_sb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'temp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from aa.dbo.YLJCXXK where zwmc  like :temp  and lb<>'#39#33647#21697 +
        #39)
    Left = 360
    Top = 8
  end
end
