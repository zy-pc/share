object frm_twbsz: Tfrm_twbsz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #20307#28201#34920#35774#32622
  ClientHeight = 79
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 568
    Height = 15
    Align = alTop
    Alignment = taCenter
    Caption = #20307#28201#34920#29256#26412
    ExplicitWidth = 75
  end
  object cbb_twbbb: TComboBox
    Left = 0
    Top = 15
    Width = 568
    Height = 23
    Align = alTop
    Style = csDropDownList
    ItemHeight = 15
    TabOrder = 0
    Items.Strings = (
      #22235#24029'2006'#24180#29256#26412#65288#27743#27833#24066#20154#27665#21307#38498#31532#19968#23478#20351#29992#65289
      #38485#35199#29256#26412'      '#65288#21335#37073#21439#20154#27665#21307#38498#31532#19968#23478#20351#29992#65289
      #22235#24029'2009'#24180#29256#26412#65288#36890#27743#21439#20154#27665#21307#38498#31532#19968#23478#20351#29992#65289
      #19977#21488#21439#21307#38498#29256#26412#65288#19977#21488#21439#20154#27665#21307#38498#31532#19968#23478#20351#29992#65289
      #21193#21439#20307#28201#34920'    ')
  end
  object Panel1: TPanel
    Left = 0
    Top = 38
    Width = 568
    Height = 41
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = #20445#23384#35774#32622
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = #25918#24323#35774#32622
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object qry_twbbb: TADOQuery
    Connection = frm_main.con1
    Parameters = <>
    SQL.Strings = (
      'select * from sys_xt_kg')
    Left = 112
    Top = 40
  end
end
