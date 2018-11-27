object frm_wazbr: Tfrm_wazbr
  Left = 90
  Top = 101
  BorderIcons = [biSystemMenu]
  Caption = #20840#38498#26410#23433#32622#30149#20154
  ClientHeight = 388
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #23435#20307
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 635
    Height = 355
    Align = alClient
    DataSource = DataSource1
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tmh'
        Title.Alignment = taCenter
        Title.Caption = #21345#21495
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxm'
        Title.Alignment = taCenter
        Title.Caption = #30149#20154#22995#21517
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brxb'
        Title.Alignment = taCenter
        Title.Caption = #24615#21035
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mc'
        Title.Alignment = taCenter
        Title.Caption = #29616#22312#31185#23460
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brnl'
        Title.Alignment = taCenter
        Title.Caption = #24180#40836
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ryrq'
        Title.Alignment = taCenter
        Title.Caption = #20837#38498#26102#38388
        Title.Font.Charset = GB2312_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 130
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 29
      Top = 9
      Width = 64
      Height = 16
      Caption = #30149#20154#22995#21517
    end
    object bch: TEdit
      Left = 94
      Top = 5
      Width = 130
      Height = 24
      TabOrder = 0
      OnExit = bchExit
    end
    object BitBtn1: TBitBtn
      Left = 508
      Top = 4
      Width = 85
      Height = 25
      Caption = #36864#20986'(&X)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkIgnore
    end
  end
  object DataSource1: TDataSource
    DataSet = Sp_wazbr
    Left = 184
    Top = 200
  end
  object Sp_wazbr: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'bqgl_cx_wazbr;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@xm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 152
    Top = 200
  end
end
