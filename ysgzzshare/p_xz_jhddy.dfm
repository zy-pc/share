object frm_xz_jhddy: Tfrm_xz_jhddy
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #35745#21010#21333#36873#25321#25171#21360
  ClientHeight = 545
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 545
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 908
      Height = 496
      Align = alTop
      Caption = #36873#25321#25171#21360
      TabOrder = 0
      object DBGridEh1: TDBGridEh
        Left = 2
        Top = 17
        Width = 904
        Height = 477
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = ds_dy
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            Checkboxes = True
            EditButtons = <>
            FieldName = 'xzbz'
            Footers = <>
            Title.Caption = #36873#25321
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'ksrq'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24320#22987'|'#26085#26399
            Width = 116
          end
          item
            EditButtons = <>
            FieldName = 'kdysmc'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24320#22987'|'#21307#22065#32773
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'zxhsmc'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24320#22987'|'#25191#34892#32773
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'min_jlsj'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24320#22987'|'#25191#34892
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'xmmc'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21307#22065
            Width = 210
          end
          item
            EditButtons = <>
            FieldName = 'ypyf'
            Footers = <>
            ReadOnly = True
            Title.Caption = #29992#27861
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'tzrq'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20572#27490'|'#26085#26399
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'tzysmc'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20572#27490'|'#21307#22065#32773
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'zhhsmc'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20572#27490'|'#25191#34892#32773
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'max_jlsj'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20572#27490'|'#25191#34892
            Width = 56
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Button1: TButton
      Left = 232
      Top = 509
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 416
      Top = 509
      Width = 75
      Height = 25
      Caption = #25918#24323
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object ds_dy: TDataSource
    DataSet = frm_yzinput.sp_zxjl_cq_dy
    Left = 496
    Top = 312
  end
end
