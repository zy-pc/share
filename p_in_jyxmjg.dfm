object frm_in_jyxmjg: Tfrm_in_jyxmjg
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #36873#25321#38656#35201#23548#20837#30340#26816#39564#39033#30446#32467#26524
  ClientHeight = 482
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 807
    Height = 201
    Align = alTop
    Caption = #39033#30446#36873#25321
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 17
      Width = 803
      Height = 182
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = ds_jyxmjg
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #23435#20307
      FooterFont.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          EditButtons = <>
          FieldName = 'xzbz'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #36873#25321
        end
        item
          EditButtons = <>
          FieldName = 'xmmc'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #26816#39564#39033#30446
          Width = 295
        end
        item
          EditButtons = <>
          FieldName = 'kdrq'
          Footers = <>
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
    Top = 201
    Width = 807
    Height = 34
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 208
      Top = 5
      Width = 75
      Height = 25
      Caption = #25152#26377#32467#26524
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 425
      Top = 4
      Width = 96
      Height = 25
      Caption = #38750#27491#24120#32467#26524
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 235
    Width = 807
    Height = 247
    Align = alClient
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 805
      Height = 208
      Align = alTop
      TabOrder = 0
      object Memo1: TMemo
        Left = 1
        Top = 1
        Width = 803
        Height = 206
        Align = alClient
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Lines.Strings = (
          'Memo1')
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object rzchcktr_jyjg: TRzCheckTree
        Left = 1
        Top = 1
        Width = 803
        Height = 206
        Align = alClient
        Indent = 19
        SelectionPen.Color = clBtnShadow
        StateImages = rzchcktr_jyjg.CheckImages
        TabOrder = 1
      end
    end
    object Button3: TButton
      Left = 262
      Top = 215
      Width = 75
      Height = 25
      Caption = #30830#23450#23548#20837
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 430
      Top = 215
      Width = 75
      Height = 25
      Caption = #21462#28040
      TabOrder = 2
      OnClick = Button4Click
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
  object qry_jyxmjg: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 335
    Top = 105
  end
  object ds_jyxmjg: TDataSource
    DataSet = qry_jyxmjg
    Left = 379
    Top = 105
  end
  object mm1: TMainMenu
    Left = 472
    Top = 168
  end
end
