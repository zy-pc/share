object frm_hljlqsfx: Tfrm_hljlqsfx
  Left = 0
  Top = 0
  Caption = #36235#21183#22270
  ClientHeight = 361
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1184
    Height = 361
    Align = alClient
    TabOrder = 0
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 1182
      Height = 359
      Title.Text.Strings = (
        'TDBChart')
      Align = alClient
      TabOrder = 0
      PrintMargins = (
        15
        35
        15
        35)
      object Series1: TFastLineSeries
        Marks.Callout.Brush.Color = clBlack
        Marks.Visible = False
        DataSource = sp_qs
        XLabelsSource = 'jlrq'
        LinePen.Color = clRed
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        YValues.ValueSource = 'fs'
      end
    end
  end
  object sp_qs: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zybl_hljld_zbqst'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = '8780201604127708'
      end
      item
        Name = '@zb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = 'tw'
      end>
    Left = 528
    Top = 208
  end
end
