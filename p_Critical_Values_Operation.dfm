object Frm_Critical_Values_Operation: TFrm_Critical_Values_Operation
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #21361#24613#20540#25552#37266
  ClientHeight = 255
  ClientWidth = 439
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Button1: TButton
    Left = 40
    Top = 103
    Width = 121
    Height = 25
    Caption = #30830#23450#24050#26597#30475
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 132
    Width = 414
    Height = 106
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object Button2: TButton
    Left = 268
    Top = 103
    Width = 121
    Height = 25
    Caption = #26242#26102#20851#38381
    TabOrder = 2
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 32
    Top = 4
    Width = 369
    Height = 93
    TabOrder = 3
    object Label2: TLabel
      Left = 54
      Top = 58
      Width = 75
      Height = 15
      Caption = #25805#20316#21592#23494#30721
    end
    object Label1: TLabel
      Left = 54
      Top = 21
      Width = 75
      Height = 15
      Caption = #25805#20316#21592#20195#30721
    end
    object Edit2: TEdit
      Left = 153
      Top = 55
      Width = 160
      Height = 23
      PasswordChar = '*'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 153
      Top = 18
      Width = 160
      Height = 23
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
  end
  object qry_clmm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'tmh'
        Size = -1
        Value = Null
      end
      item
        Name = 'jcxmmc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 512
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT TOP 1 * FROM zybl_pacswjz WHERE tmh=:tmh AND jcxmmc=:jcxm' +
        'mc AND clbz=0')
    Left = 368
    Top = 72
  end
end
