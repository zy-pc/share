object frm_bqgcyy: Tfrm_bqgcyy
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #30149#24773#35266#23519#35789#24211
  ClientHeight = 534
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 968
    Height = 534
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 439
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 128
      Height = 532
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 437
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 126
        Height = 64
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 2
          Top = 39
          Width = 30
          Height = 16
          Caption = #36873#31185
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RadioButton1: TRadioButton
          Left = 7
          Top = 13
          Width = 50
          Height = 17
          Caption = #20840#31185
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 63
          Top = 13
          Width = 120
          Height = 17
          Caption = #20840#38498
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadioButton2Click
        end
        object ks: TcxComboBox
          Left = 32
          Top = 37
          TabOrder = 2
          OnClick = ksClick
          Width = 89
        end
      end
      object TreeView1: TTreeView
        Left = 1
        Top = 65
        Width = 126
        Height = 466
        Align = alClient
        Indent = 19
        TabOrder = 1
        OnChange = TreeView1Change
        ExplicitHeight = 371
      end
    end
    object Panel4: TPanel
      Left = 129
      Top = 1
      Width = 838
      Height = 532
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 437
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 97
        Width = 836
        Height = 434
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = ds_yygf
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Tahoma'
        FooterFont.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'hljld_name'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20851#38190#35789
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'yy'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #20869#23481
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 836
        Height = 96
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 5
          Top = 14
          Width = 64
          Height = 19
          Caption = #20851#38190#35789#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 5
          Top = 51
          Width = 48
          Height = 19
          Caption = #31867#21035#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 184
          Top = 56
          Width = 64
          Height = 19
          Caption = #20851#38190#35789#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 301
          Top = 14
          Width = 48
          Height = 19
          Caption = #20869#23481#65306
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 75
          Top = 6
          Width = 94
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit1KeyPress
        end
        object Button1: TButton
          Left = 175
          Top = 1
          Width = 89
          Height = 41
          Caption = #26597#35810
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button1Click
        end
        object Edit2: TEdit
          Left = 59
          Top = 53
          Width = 110
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 238
          Top = 53
          Width = 99
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ParentFont = False
          TabOrder = 3
        end
        object Memo1: TMemo
          Left = 343
          Top = 11
          Width = 418
          Height = 73
          ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          TabOrder = 4
        end
        object Button2: TButton
          Left = 767
          Top = 14
          Width = 65
          Height = 70
          Caption = #20462#25913
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button2Click
        end
      end
    end
  end
  object qry_yygf: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_hljld_yygf where sx=2')
    Left = 512
    Top = 80
  end
  object ds_yygf: TDataSource
    DataSet = qry_yygf
    OnDataChange = ds_yygfDataChange
    Left = 568
    Top = 72
  end
  object ADOQuery1: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 304
    Top = 160
  end
  object ADOQuery2: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 56
    Top = 80
  end
  object ADOQuery3: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 760
    Top = 192
  end
end
