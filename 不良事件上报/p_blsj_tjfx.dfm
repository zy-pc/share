object frm_blsjtjfx: Tfrm_blsjtjfx
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = #25252#29702#25351#26631#32479#35745#20998#26512
  ClientHeight = 741
  ClientWidth = 1356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 741
    Align = alLeft
    BevelInner = bvLowered
    Ctl3D = True
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object treeviewzp: TTreeView
      Left = 2
      Top = 2
      Width = 221
      Height = 737
      Hint = #21452#20987#36827#20837#32534#36753#29366#24577
      Align = alClient
      AutoExpand = True
      Ctl3D = False
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      HideSelection = False
      Images = ImageList2
      Indent = 25
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      RightClickSelect = True
      RowSelect = True
      ShowRoot = False
      TabOrder = 0
      OnClick = treeviewzpClick
      Items.NodeData = {
        010700000025000000010000000A00000000000000FFFFFFFF00000000100000
        0006A46206740D4E6F828B4EF64E2500000000000000E903000000000000FFFF
        FFFF0000000000000000068B4EF64E7065CF91DF7EA18B2F00000000000000EA
        030000FFFFFFFFFFFFFFFF00000000000000000B8B4EF64E7065CF91DF7EA18B
        28000652F665B56B29002F00000000000000EB030000FFFFFFFFFFFFFFFF0000
        0000000000000B8B4EF64E7065CF91DF7EA18B280006521F661F6729002D0000
        0000000000EC03000000000000FFFFFFFF00000000000000000A8B4EF64ED153
        1F75F665F4952800F665B97029002D00000000000000ED03000000000000FFFF
        FFFF00000000000000000A8B4EF64ED1531F75E5651F6728001F661F67290029
        00000000000000EE030000FFFFFFFFFFFFFFFF00000000000000000820901062
        A3600580244FB35BC560B5512500000000000000EF030000FFFFFFFFFFFFFFFF
        0000000000000000068B4EF64E9F53E056065290672B00000000000000F00300
        00FFFFFFFFFFFFFFFF000000000000000009A4620674E890CF6B0867288DA763
        A56268882B00000000000000F1030000FFFFFFFFFFFFFFFF0000000000000000
        090F6116598B4EF64EC48B065206527065B56B2700000000000000F2030000FF
        FFFFFFFFFFFFFF000000000000000007535F8B4EBA4E745E849FDF7EA18B2500
        000000000000F3030000FFFFFFFFFFFFFFFF0000000000000000060D4E6F828B
        4EF64E0652A77E2B00000000000000F4030000FFFFFFFFFFFFFFFF0000000000
        000000095E97A18B1252D462A17B7B7C8B57DF7EA18B2B00000000000000F503
        0000FFFFFFFFFFFFFFFF0000000000000000095E97A18B1252D462A17BCD916E
        7FDF7EA18B2D00000000000000F6030000FFFFFFFFFFFFFFFF00000000000000
        000ACC8D125060578A5E244FB35B0B7AA65EDF7EA18B2900000000000000F703
        0000FFFFFFFFFFFFFFFF0000000000000000080D4E6F828B4EF64E975CA77EDF
        7EA18B2500000000000000F8030000FFFFFFFFFFFFFFFF000000000000000006
        79728A6B8B4EF64E0E66C67E250000000100000014000000FFFFFFFFFFFFFFFF
        0000000006000000068B53AE75CE986996C48B304F2500000000000000D10700
        00FFFFFFFFFFFFFFFF0000000000000000068B4EF64E7065CF91DF7EA18B2700
        000000000000D2070000FFFFFFFFFFFFFFFF000000000000000007C48B065206
        527065B56BD46B8B4F3300000000000000D3070000FFFFFFFFFFFFFFFF000000
        00000000000DC48B0652310032000652CA53E54E0B4E2800A4620674E8902900
        3500000000000000D4070000FFFFFFFFFFFFFFFF00000000000000000EC48B06
        52310033000652F3813100340006522800A4620674E89029003F000000000000
        00D5070000FFFFFFFFFFFFFFFF0000000000000000130F5C8E4E310032000652
        144E3100685485512A67D1531F758B53AE752800A4620674E890290025000000
        00000000D6070000FFFFFFFFFFFFFFFF0000000000000000066C8F525FC560B5
        51DF7EA18B21000000010000001E000000FFFFFFFFFFFFFFFF00000000050000
        0004629685518B53AE752F00000000000000B90B0000FFFFFFFFFFFFFFFF0000
        0000000000000B8B4EF64E7065CF91DF7EA18B2800096306521F6729002F0000
        0000000000BA0B0000FFFFFFFFFFFFFFFF00000000000000000B8B4EF64E7065
        CF91DF7EA18B28000963E8904D4F29002900000000000000BB0B0000FFFFFFFF
        FFFFFFFF0000000000000000088B53AE75D1531F75E8904D4F06529067270000
        0000000000BC0B0000FFFFFFFFFFFFFFFF000000000000000007A4620674E890
        288DA7630E66C67E2500000000000000BD0B0000FFFFFFFFFFFFFFFF00000000
        00000000066C8F525FC560B551DF7EA18B210000000100000028000000FFFFFF
        FFFFFFFFFF000000000600000004629616598B53AE752F00000000000000A10F
        0000FFFFFFFFFFFFFFFF00000000000000000B8B4EF64E7065CF91DF7EA18B28
        00096306521F6729002F00000000000000A20F0000FFFFFFFFFFFFFFFF000000
        00000000000B8B4EF64E7065CF91DF7EA18B28000963E8904D4F29002F000000
        00000000A30F0000FFFFFFFFFFFFFFFF00000000000000000B8B4EF64E7065CF
        91DF7EA18B280009636567906E29002900000000000000A40F0000FFFFFFFFFF
        FFFFFF0000000000000000088B53AE75D1531F75E8904D4F0652906733000000
        00000000A50F0000FFFFFFFFFFFFFFFF00000000000000000D629616598B53AE
        75BB6C0861C560B5512800A4620674E89029002500000000000000A60F0000FF
        FFFFFFFFFFFFFF0000000000000000066C8F525FC560B551DF7EA18B25000000
        0100000032000000FFFFFFFFFFFFFFFF000000000600000006A4620674288DCF
        910763076837000000000000008A130000FFFFFFFFFFFFFFFF00000000000000
        000F4F4F6296A3600580CC8D12502F0060578A5ED1531F758773280030202900
        3D000000000000008B130000FFFFFFFFFFFFFFFF0000000000000000124F4F62
        96D89ACE986996A3600580CC8D12502F0060578A5ED1531F7587732800250029
        0031000000000000008E130000FFFFFFFFFFFFFFFF00000000000000000C4F4F
        6296A36005808B53AE75D1531F75877328003020290033000000000000008F13
        0000FFFFFFFFFFFFFFFF00000000000000000DD89ACE986996A36005808B53AE
        75D1531F7587732800250029003D0000000000000091130000FFFFFFFFFFFFFF
        FF000000000000000012D97E6F83EE5D19952F001995EF8BD1531F7587732800
        302029001662D1531F758B4F7065390000000000000092130000FFFFFFFFFFFF
        FFFF000000000000000010D263A17BA36005805E97A18B1252D462A17B877328
        00302029002F008B4F216B2B000000010000003C000000FFFFFFFFFFFFFFFF00
        0000000100000009A4620674D1764B6D07630768E565A5626888270000000000
        000071170000FFFFFFFFFFFFFFFF000000000000000007D1764B6D07630768E5
        65A5626888210000000100000050000000FFFFFFFFFFFFFFFF00000000000000
        0004C575BA4EDE56BF8B}
    end
  end
  object pc1: TPageControl
    Left = 225
    Top = 0
    Width = 1131
    Height = 741
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = #32479#35745#20998#26512#32467#26524
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1123
        Height = 36
        Align = alTop
        TabOrder = 0
        object Label36: TLabel
          Left = 4
          Top = 10
          Width = 60
          Height = 15
          Caption = #19978#25253#26085#26399
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 227
          Top = 10
          Width = 15
          Height = 15
          Caption = #33267
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Button10: TButton
          Left = 467
          Top = 2
          Width = 73
          Height = 29
          Caption = #32479#35745
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button10Click
        end
        object dtptjs: TDateTimePicker
          Left = 87
          Top = 6
          Width = 105
          Height = 23
          Date = 41640.000011574080000000
          Time = 41640.000011574080000000
          Checked = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dtptje: TDateTimePicker
          Left = 277
          Top = 6
          Width = 105
          Height = 23
          Date = 41922.000011574080000000
          Time = 41922.000011574080000000
          Checked = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button11: TButton
          Left = 727
          Top = 2
          Width = 73
          Height = 29
          Caption = #36864'  '#20986
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button11Click
        end
        object Button13: TButton
          Left = 601
          Top = 2
          Width = 73
          Height = 29
          Caption = #23548#20986#25968#25454
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button13Click
        end
        object ComboBox1: TComboBox
          Left = 396
          Top = 6
          Width = 65
          Height = 23
          ItemHeight = 15
          TabOrder = 5
          Text = #36300#20498
          Visible = False
          Items.Strings = (
            #36300#20498
            #22368#24202
            #24739#32773#35782#21035#38169#35823
            #21307#22065#25191#34892#38169#35823
            #29992#33647#38169#35823
            #28431#29992#33647
            #36208#22833
            #33258#26432
            #28082#20307#28183#28431
            #35823#21560
            #28907#20260
            #38498#20869#21387#30126
            #38750#35745#21010#25300#31649
            #36755#28082#21453#24212
            #36755#34880#21453#24212
            #32844#19994#26292#38706
            #25237#35785)
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 36
        Width = 1123
        Height = 674
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_tj_hlsj
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = #22270#24418#34920#31034
      ImageIndex = 1
      OnExit = TabSheet1Exit
      OnShow = TabSheet1Show
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1123
        Height = 710
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 0
        object DBChart1: TDBChart
          Left = 1
          Top = 1
          Width = 1121
          Height = 708
          Title.Font.Height = -15
          Title.Text.Strings = (
            'TDBChart')
          View3D = False
          Align = alClient
          TabOrder = 0
          object Series1: TBarSeries
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.Style = smsLabelValue
            Marks.Visible = True
            SeriesColor = 16744448
            Gradient.Direction = gdTopBottom
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
        end
      end
    end
  end
  object ImageList2: TImageList
    Left = 320
    Top = 160
    Bitmap = {
      494C010102000400700210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      0000FBF7F400CEC0A40091977A0097714A00B5714A00BD917A00C7B2A400F5F3
      F100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3E7
      E100EAA7860080703000607020005060400090604000C0684000B0604000B28C
      6F00E1DBD8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000FCF8F500EAAD
      9100E0885000D080400060882000308820005068300070604000B0684000B060
      4000B28C6F00F5F3F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1CEC000F090
      6000F0906000C080500050784000309820003088200070683000B06840008060
      400060604000B2B9AB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000F4B19300FF98
      6000E09060006078500050A0300050A0300080902000D0784000706840005060
      400030781000919C6F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000508050FF4070
      40FF305030FF203820FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFA67700F098
      7000607050006098400060B0400090A04000E0886000D0805000506840003080
      2000309010003B872C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000509050FF60A8
      60FF508850FF305030FF000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000FFA677008080
      600040A0400050B0400090906000E0987000E0906000E088500060A020004098
      2000409820004A8F2C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000070A880FF60A070FF609860FF70B0
      70FF509850FF407040FF305030FF203820FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8B793006098
      500040C8600040C8700070A07000B0A07000D0986000E0906000A090300040A0
      200040A020007AB8640000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080B090FFA0D8A0FF70C080FF70B8
      70FF60A060FF509050FF408840FF305030FF00000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000C7C7A70050B8
      600060D8800090E0A00080E0A000A0D09000B0A06000F0986000E088500050A8
      200040A02000ABD59D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090B8A0FFB0D8B0FFA0D8A0FF90D0
      A0FF70B870FF60A860FF509850FF407040FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F5F7F1006ED6
      930070E09000C0F0B000D0F0D000F0F8D000B0E8A00080986000D0984000B090
      300086BD6400F4F8F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090C0A0FF90B8A0FF80B090FFA0D8
      A0FF70C080FF609860FF509050FF508050FF00000000000000FF000000FF0000
      00FF000000FF000000FF000000FF00000000000000000000000000000000E7F1
      DF009FE2AB00C0F0B000E0F8D00080A8700070D8900040B0600080804000EAAD
      8600F0E9DB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090B8A0FFB0D8
      B0FFA0D8A0FF60A070FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F8F300D7EFCF00D0EEC40097E2A60059D9870062D08700CECBA400FCF8
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090C0A0FF90B8
      A0FF80B090FF70A880FF000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FF81F00F00000000FFFFE00700000000FF81C00300000000FFFFC00300000000
      FF81C00300000000C3FFC00300000000C381C0030000000000FFC00300000000
      0081C0030000000000FFC003000000000081E00700000000C3FFF00F00000000
      C381FFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object sp_tj_hlsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'blsj_hlsj_sjtj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-01-01'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-10-24'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0011'
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '9999'
      end>
    Left = 74
    Top = 325
  end
  object ds_tj_hlsj: TDataSource
    DataSet = sp_tj_hlsj
    Left = 104
    Top = 325
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 135
    Top = 325
  end
  object SaveDialog1: TSaveDialog
    Left = 1016
    Top = 28
  end
  object ds_tj_hlsj_sjd: TDataSource
    DataSet = sp_tj_hlsj_sjd
    Left = 104
    Top = 363
  end
  object sp_tj_hlsj_sjd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'blsj_hlsj_sjtj_sjd;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@tjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@sjlxmc'
        Attributes = [paNullable]
        DataType = ftString
        Size = 30
        Value = Null
      end>
    Left = 74
    Top = 363
  end
  object sp_tj_ycsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'blsj_sjtj_ycsj;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-01-01'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-10-10'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0011'
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '9999'
      end>
    Left = 73
    Top = 405
  end
  object ds_tj_ycsj: TDataSource
    DataSet = sp_tj_ycsj
    Left = 103
    Top = 405
  end
  object sp_tj_ynyc: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'blsj_sjtj_ynyc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@tjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end>
    Left = 73
    Top = 444
  end
  object ds_tj_ynyc: TDataSource
    DataSet = sp_tj_ynyc
    Left = 103
    Top = 444
  end
  object sp_tj_ywyc: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'blsj_sjtj_ywyc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-01-01'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '2014-10-10'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0011'
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '9999'
      end
      item
        Name = '@tjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = '1'
      end>
    Left = 73
    Top = 485
  end
  object ds_tj_ywyc: TDataSource
    DataSet = sp_tj_ywyc
    Left = 103
    Top = 485
  end
  object sp_blsj_zkzb: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'blsj_zlzb_ddzc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20150101'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20151231'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0011'
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '9999'
      end
      item
        Name = '@tjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = '1'
      end>
    Left = 74
    Top = 525
  end
  object ds_blsj_zkzb: TDataSource
    DataSet = sp_blsj_zkzb
    Left = 103
    Top = 525
  end
  object sp1: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'blsj_zlzb_ddzc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20150101'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20151231'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0011'
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '9999'
      end
      item
        Name = '@tjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = '1'
      end>
    Left = 74
    Top = 573
  end
  object sp2: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'blsj_zlzb_ddzc;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20150101'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20151231'
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '0011'
      end
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = '9999'
      end
      item
        Name = '@tjlx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = '1'
      end>
    Left = 107
    Top = 573
  end
  object sp_dhhf: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'brhf_hfsjfx;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ksrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20170601'
      end
      item
        Name = '@jsrq'
        Attributes = [paNullable]
        DataType = ftString
        Size = 8
        Value = '20170601'
      end>
    Left = 75
    Top = 613
  end
  object ds_dhhf: TDataSource
    DataSet = sp_dhhf
    Left = 119
    Top = 613
  end
end
