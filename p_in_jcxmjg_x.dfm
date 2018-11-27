object frm_in_jcxmjg_x: Tfrm_in_jcxmjg_x
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #36873#25321#38656#35201#23548#20837#30340#26816#26597#39033#30446#32467#26524
  ClientHeight = 533
  ClientWidth = 985
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 985
    Height = 201
    Align = alTop
    Caption = #39033#30446#36873#25321
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 17
      Width = 981
      Height = 182
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DS_jcxmjg
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      Columns = <
        item
          Checkboxes = True
          DropDownSpecRow.Value = False
          EditButtons = <>
          FieldName = 'xzbz'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #36873#25321
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'xmmc'
          Footers = <>
          ReadOnly = True
          Title.Caption = #39033#30446#21517#31216
          Width = 267
        end
        item
          EditButtons = <>
          FieldName = 'describes'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #24433#20687#25152#35265
          Width = 261
        end
        item
          EditButtons = <>
          FieldName = 'diagnosis'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #35786#26029#25152#35265
          Width = 218
        end
        item
          EditButtons = <>
          FieldName = 'EXAMDATE'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #24320#21333#26085#26399
          Width = 180
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 242
    Width = 985
    Height = 34
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 344
      Top = 6
      Width = 105
      Height = 25
      Caption = #23548#20837#36873#25321#32467#26524
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 657
      Top = 4
      Width = 96
      Height = 25
      Caption = #38750#27491#24120#32467#26524
      TabOrder = 1
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 276
    Width = 985
    Height = 257
    Align = alClient
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 983
      Height = 208
      Align = alTop
      TabOrder = 0
      object Memo1: TMemo
        Left = 1
        Top = 1
        Width = 981
        Height = 206
        Align = alClient
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object Button3: TButton
      Left = 238
      Top = 224
      Width = 75
      Height = 25
      Caption = #30830#23450#23548#20837
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 425
      Top = 224
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 2
      OnClick = Button4Click
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 985
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label20: TLabel
      Left = 9
      Top = 13
      Width = 60
      Height = 15
      Caption = #26816#26597#39033#30446
    end
    object ComboBox2: TComboBox
      Left = 75
      Top = 12
      Width = 497
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ItemHeight = 15
      TabOrder = 0
      Visible = False
    end
  end
  object sp_cx_dzbljyjg: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zydzbl_cx_dzbljyjg'
    Parameters = <>
    Left = 464
    Top = 280
  end
  object Qry_jcxmjg: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 335
    Top = 105
  end
  object DS_jcxmjg: TDataSource
    DataSet = Qry_jcxmjg
    Left = 379
    Top = 105
  end
end
