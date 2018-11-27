object frm_hsdyzxd: Tfrm_hsdyzxd
  Left = 0
  Top = 0
  Caption = #25191#34892#21333#25171#21360
  ClientHeight = 742
  ClientWidth = 1362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #26032#23435#20307
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 1362
    Height = 742
    Align = alClient
    Caption = #36755#28082#24773#20917
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 17
      Width = 1358
      Height = 32
      Align = alTop
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 6
        Top = 9
        Width = 96
        Height = 15
        Caption = #25191#34892#21307#22065#26085#26399
      end
      object dt_zxsj: TDateTimePicker
        Left = 118
        Top = 4
        Width = 120
        Height = 23
        Date = 40401.666157951390000000
        Time = 40401.666157951390000000
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 0
        OnChange = dt_zxsjChange
      end
      object qb: TCheckBox
        Left = 245
        Top = 7
        Width = 65
        Height = 17
        Caption = #20840#36873
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnClick = qbClick
      end
      object QRShape7: TQRShape
        Left = 105
        Top = -5
        Width = 5
        Height = 77
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          203.729166666666700000
          277.812500000000000000
          -13.229166666666670000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object ScrollBox1: TScrollBox
      Left = 221
      Top = 49
      Width = 1139
      Height = 691
      Align = alClient
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1135
        Height = 687
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #36755#28082#35745#21010#21333
          OnShow = TabSheet1Show
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 1127
            Height = 41
            Align = alTop
            TabOrder = 0
            object cxButton2: TcxButton
              Left = 4
              Top = 3
              Width = 240
              Height = 35
              Caption = #25171#21360#20840#37096#20154#21592#36755#28082#35745#21010#21333'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              WordWrap = True
              OnClick = cxButton2Click
              DropDownMenu = PopupMenu3
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object cxButton1: TcxButton
              Left = 258
              Top = 3
              Width = 270
              Height = 35
              Caption = #25171#21360#36873#25321#30149#20154#20020#26102#36755#28082#35745#21010#21333'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              WordWrap = True
              OnClick = cxButton1Click
              DropDownMenu = PopupMenu1
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object cxButton3: TcxButton
              Left = 559
              Top = 4
              Width = 234
              Height = 35
              Caption = #25171#21360#36873#25321#30149#20154#20840#37096#28082#20307'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              WordWrap = True
              OnClick = cxButton3Click
              DropDownMenu = PopupMenu2
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object cxButton4: TcxButton
              Left = 799
              Top = 3
              Width = 205
              Height = 35
              Caption = #21482#25171#21360#36873#25321#30340#28082#20307'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              WordWrap = True
              OnClick = cxButton4Click
              DropDownMenu = PopupMenu4
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object CheckBox2: TCheckBox
              Left = 1051
              Top = 15
              Width = 65
              Height = 17
              Caption = #20840#36873
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              OnClick = CheckBox2Click
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 41
            Width = 1127
            Height = 615
            Align = alClient
            TabOrder = 1
            object ScrollBox2: TScrollBox
              Left = 1
              Top = 1
              Width = 1125
              Height = 613
              Align = alClient
              TabOrder = 0
              object DBGridEh2: TDBGridEh
                Left = 1
                Top = 2
                Width = 1200
                Height = 5000
                DataGrouping.GroupLevels = <>
                DataSource = ds_dryz
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                PopupMenu = PopupMenu16
                RowDetailPanel.Color = clBtnFace
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh2ColWidthsChanged
                OnDrawColumnCell = DBGridEh2DrawColumnCell
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'bch'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#24202#21495
                    Width = 42
                  end
                  item
                    EditButtons = <>
                    FieldName = 'brxm'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#20154#22995#21517
                    Width = 104
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #31867#21035
                    Width = 53
                  end
                  item
                    EditButtons = <>
                    FieldName = 'xmmc'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #33647#21697#21517#31216
                    Width = 305
                  end
                  item
                    EditButtons = <>
                    FieldName = 'dw'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyl'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#37327
                    Width = 43
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yldw'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = ' '
                    Width = 32
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyf'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#27861
                    Width = 41
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yytj'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #32473#33647#26041#24335
                    Width = 52
                  end
                  item
                    EditButtons = <>
                    FieldName = 'sl'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'fzph'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'gg'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyyb'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yplsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'bz'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #35828#26126
                    Width = 100
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxr'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhxm'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yjzxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzid'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyflbh'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhbqdy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #26631#31614#26159#21542#25171#21360
                    Width = 50
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhddy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #36755#28082#21333#26159#21542#25171#21360
                  end
                  item
                    Checkboxes = True
                    EditButtons = <>
                    FieldName = 'xzbz'
                    Footers = <>
                    Title.Caption = #36755#28082#21333#36873#25321#25171#21360
                    Width = 84
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxsj'
                    Footers = <>
                    Title.Caption = #31532#19968#27425#25191#34892#26102#38388
                    Width = 193
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
              object DBGridEh3: TDBGridEh
                Left = 1
                Top = 3
                Width = 1200
                Height = 54
                DataGrouping.GroupLevels = <>
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                RowDetailPanel.Color = clBtnFace
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh3ColWidthsChanged
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'bch'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#24202#21495
                    Width = 42
                  end
                  item
                    EditButtons = <>
                    FieldName = 'brxm'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#20154#22995#21517
                    Width = 104
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #31867#21035
                    Width = 53
                  end
                  item
                    EditButtons = <>
                    FieldName = 'xmmc'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #33647#21697#21517#31216
                    Width = 305
                  end
                  item
                    EditButtons = <>
                    FieldName = 'dw'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyl'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#37327
                    Width = 43
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yldw'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = ' '
                    Width = 32
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyf'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#27861
                    Width = 41
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yytj'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #32473#33647#26041#24335
                    Width = 52
                  end
                  item
                    EditButtons = <>
                    FieldName = 'sl'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'fzph'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'gg'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyyb'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yplsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'bz'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #35828#26126
                    Width = 100
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxr'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhxm'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yjzxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzid'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyflbh'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhbqdy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #26631#31614#26159#21542#25171#21360
                    Width = 50
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhddy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #36755#28082#21333#26159#21542#25171#21360
                  end
                  item
                    Checkboxes = True
                    EditButtons = <>
                    FieldName = 'xzbz'
                    Footers = <>
                    Title.Caption = #36755#28082#21333#36873#25321#25171#21360
                    Width = 84
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxsj'
                    Footers = <>
                    Title.Caption = #39318#27425#25191#34892#26102#38388
                    Width = 192
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = #25191#34892#21333
          ImageIndex = 1
          OnShow = TabSheet2Show
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1127
            Height = 41
            Align = alTop
            TabOrder = 0
            object cxButton5: TcxButton
              Left = 20
              Top = 3
              Width = 217
              Height = 35
              Caption = #25171#21360#20840#37096#20154#21592#25191#34892#21333'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              WordWrap = True
              OnClick = cxButton5Click
              DropDownMenu = PopupMenu5
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object cxButton6: TcxButton
              Left = 256
              Top = 3
              Width = 240
              Height = 35
              Caption = #25171#21360#36873#25321#30149#20154#20020#26102#25191#34892#21333'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              WordWrap = True
              OnClick = cxButton6Click
              DropDownMenu = PopupMenu6
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object cxButton7: TcxButton
              Left = 518
              Top = 3
              Width = 241
              Height = 35
              Caption = #25171#21360#36873#25321#30149#20154#20840#37096#25191#34892#21333'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              WordWrap = True
              OnClick = cxButton7Click
              DropDownMenu = PopupMenu7
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object cxButton8: TcxButton
              Left = 777
              Top = 4
              Width = 210
              Height = 35
              Caption = #21482#25171#21360#36873#25321#30340#25191#34892#21333'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              WordWrap = True
              OnClick = cxButton8Click
              DropDownMenu = PopupMenu8
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object CheckBox1: TCheckBox
              Left = 1068
              Top = 15
              Width = 54
              Height = 17
              Caption = #20840#36873
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              OnClick = CheckBox1Click
            end
            object Button1: TButton
              Left = 996
              Top = 9
              Width = 67
              Height = 25
              Caption = #26816#26597#21333
              TabOrder = 5
              OnClick = Button1Click
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 41
            Width = 1127
            Height = 615
            Align = alClient
            TabOrder = 1
            object ScrollBox3: TScrollBox
              Left = 1
              Top = 1
              Width = 1125
              Height = 613
              Align = alClient
              TabOrder = 0
              object DBGridEh4: TDBGridEh
                Left = 1
                Top = 2
                Width = 1200
                Height = 5000
                DataGrouping.GroupLevels = <>
                DataSource = sa_dryz_zsd
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                PopupMenu = PopupMenu17
                RowDetailPanel.Color = clBtnFace
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh4ColWidthsChanged
                OnDrawColumnCell = DBGridEh4DrawColumnCell
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'bch'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#24202#21495
                    Width = 42
                  end
                  item
                    EditButtons = <>
                    FieldName = 'brxm'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#20154#22995#21517
                    Width = 104
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #31867#21035
                    Width = 53
                  end
                  item
                    EditButtons = <>
                    FieldName = 'xmmc'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #39033#30446#21517#31216
                    Width = 305
                  end
                  item
                    EditButtons = <>
                    FieldName = 'dw'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyl'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#37327
                    Width = 43
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yldw'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = ' '
                    Width = 32
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyf'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#27861
                    Width = 41
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yytj'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #32473#33647#26041#24335
                    Width = 52
                  end
                  item
                    EditButtons = <>
                    FieldName = 'sl'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'fzph'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'gg'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyyb'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yplsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'bz'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #35828#26126
                    Width = 100
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxr'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhxm'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yjzxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzid'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyflbh'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhbqdy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #26631#31614#26159#21542#25171#21360
                    Width = 50
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhddy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #27880#23556#21333#26159#21542#25171#21360
                  end
                  item
                    Checkboxes = True
                    EditButtons = <>
                    FieldName = 'xzbz'
                    Footers = <>
                    Title.Caption = #27880#23556#21333#36873#25321#25171#21360
                    Width = 84
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxsj'
                    Footers = <>
                    Title.Caption = #39318#27425#25191#34892#26102#38388
                    Width = 195
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
              object DBGridEh5: TDBGridEh
                Left = 1
                Top = 2
                Width = 1200
                Height = 54
                DataGrouping.GroupLevels = <>
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                RowDetailPanel.Color = clBtnFace
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh5ColWidthsChanged
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'bch'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#24202#21495
                    Width = 42
                  end
                  item
                    EditButtons = <>
                    FieldName = 'brxm'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#20154#22995#21517
                    Width = 104
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #31867#21035
                    Width = 53
                  end
                  item
                    EditButtons = <>
                    FieldName = 'xmmc'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #33647#21697#21517#31216
                    Width = 305
                  end
                  item
                    EditButtons = <>
                    FieldName = 'dw'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyl'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#37327
                    Width = 43
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yldw'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = ' '
                    Width = 32
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyf'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#27861
                    Width = 41
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yytj'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #32473#33647#26041#24335
                    Width = 52
                  end
                  item
                    EditButtons = <>
                    FieldName = 'sl'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'fzph'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'gg'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyyb'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yplsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'bz'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #35828#26126
                    Width = 100
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxr'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhxm'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yjzxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzid'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyflbh'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhbqdy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #26631#31614#26159#21542#25171#21360
                    Width = 50
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhddy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #25191#34892#21333#26159#21542#25171#21360
                  end
                  item
                    Checkboxes = True
                    EditButtons = <>
                    FieldName = 'xzbz'
                    Footers = <>
                    Title.Caption = #25191#34892#21333#36873#25321#25171#21360
                    Width = 84
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxsj'
                    Footers = <>
                    Title.Caption = #39318#27425#25191#34892#26102#38388
                    Width = 194
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = #21475#26381#33647#25191#34892#21333
          ImageIndex = 2
          OnShow = TabSheet3Show
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 1127
            Height = 41
            Align = alTop
            TabOrder = 0
            object cxButton9: TcxButton
              Left = 20
              Top = 3
              Width = 217
              Height = 35
              Caption = #25171#21360#20840#37096#20154#21592#21475#26381#21333'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              WordWrap = True
              OnClick = cxButton5Click
              DropDownMenu = PopupMenu5
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object cxButton10: TcxButton
              Left = 256
              Top = 3
              Width = 240
              Height = 35
              Caption = #25171#21360#36873#25321#30149#20154#20020#26102#21475#26381#21333'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              WordWrap = True
              OnClick = cxButton6Click
              DropDownMenu = PopupMenu6
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object cxButton11: TcxButton
              Left = 518
              Top = 3
              Width = 241
              Height = 35
              Caption = #25171#21360#36873#25321#30149#20154#20840#37096#21475#26381#21333'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              WordWrap = True
              OnClick = cxButton7Click
              DropDownMenu = PopupMenu7
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object cxButton12: TcxButton
              Left = 777
              Top = 4
              Width = 211
              Height = 35
              Caption = #21482#25171#21360#36873#25321#30340#21475#26381#21333'('#21452#20221#65289
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              WordWrap = True
              OnClick = cxButton8Click
              DropDownMenu = PopupMenu8
              Kind = cxbkDropDownButton
              LookAndFeel.Kind = lfStandard
            end
            object CheckBox3: TCheckBox
              Left = 1056
              Top = 15
              Width = 65
              Height = 17
              Caption = #20840#36873
              Ctl3D = False
              ParentCtl3D = False
              TabOrder = 4
              OnClick = CheckBox3Click
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 41
            Width = 1127
            Height = 615
            Align = alClient
            TabOrder = 1
            object ScrollBox4: TScrollBox
              Left = 1
              Top = 1
              Width = 1125
              Height = 613
              Align = alClient
              TabOrder = 0
              object DBGridEh6: TDBGridEh
                Left = -71
                Top = -4
                Width = 1200
                Height = 5000
                DataGrouping.GroupLevels = <>
                DataSource = ds_dryz_kfyd
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                PopupMenu = PopupMenu18
                RowDetailPanel.Color = clBtnFace
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh6ColWidthsChanged
                OnDrawColumnCell = DBGridEh6DrawColumnCell
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'bch'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#24202#21495
                    Width = 42
                  end
                  item
                    EditButtons = <>
                    FieldName = 'brxm'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#20154#22995#21517
                    Width = 104
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #31867#21035
                    Width = 53
                  end
                  item
                    EditButtons = <>
                    FieldName = 'xmmc'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #39033#30446#21517#31216
                    Width = 305
                  end
                  item
                    EditButtons = <>
                    FieldName = 'dw'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyl'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#37327
                    Width = 43
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yldw'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = ' '
                    Width = 32
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyf'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#27861
                    Width = 41
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yytj'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #32473#33647#26041#24335
                    Width = 52
                  end
                  item
                    EditButtons = <>
                    FieldName = 'sl'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'fzph'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'gg'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyyb'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yplsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'bz'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #35828#26126
                    Width = 100
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxr'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhxm'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yjzxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzid'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyflbh'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhbqdy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #26631#31614#26159#21542#25171#21360
                    Width = 50
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhddy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #27880#23556#21333#26159#21542#25171#21360
                  end
                  item
                    Checkboxes = True
                    EditButtons = <>
                    FieldName = 'xzbz'
                    Footers = <>
                    Title.Caption = #27880#23556#21333#36873#25321#25171#21360
                    Width = 84
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxsj'
                    Footers = <>
                    Title.Caption = #39318#27425#25191#34892#26102#38388
                    Width = 195
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
              object DBGridEh7: TDBGridEh
                Left = 1
                Top = 2
                Width = 1200
                Height = 54
                DataGrouping.GroupLevels = <>
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -15
                FooterFont.Name = #26032#23435#20307
                FooterFont.Style = []
                HorzScrollBar.Visible = False
                ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                RowDetailPanel.Color = clBtnFace
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = #26032#23435#20307
                TitleFont.Style = []
                UseMultiTitle = True
                VertScrollBar.VisibleMode = sbNeverShowEh
                OnColWidthsChanged = DBGridEh7ColWidthsChanged
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'bch'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#24202#21495
                    Width = 42
                  end
                  item
                    EditButtons = <>
                    FieldName = 'brxm'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #30149#20154#22995#21517
                    Width = 104
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzsx'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #31867#21035
                    Width = 53
                  end
                  item
                    EditButtons = <>
                    FieldName = 'xmmc'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #33647#21697#21517#31216
                    Width = 305
                  end
                  item
                    EditButtons = <>
                    FieldName = 'dw'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyl'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#37327
                    Width = 43
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yldw'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = ' '
                    Width = 32
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ypyf'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #29992#27861
                    Width = 41
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yytj'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #32473#33647#26041#24335
                    Width = 52
                  end
                  item
                    EditButtons = <>
                    FieldName = 'sl'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'fzph'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'gg'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyyb'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yplsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'bz'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #35828#26126
                    Width = 100
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxsj'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhzxr'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zhxm'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yjzxcs'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'yzid'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'jyflbh'
                    Footers = <>
                    ReadOnly = True
                    Visible = False
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhbqdy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #26631#31614#26159#21542#25171#21360
                    Width = 50
                  end
                  item
                    EditButtons = <>
                    FieldName = 'syjhddy'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = #25191#34892#21333#26159#21542#25171#21360
                  end
                  item
                    Checkboxes = True
                    EditButtons = <>
                    FieldName = 'xzbz'
                    Footers = <>
                    Title.Caption = #25191#34892#21333#36873#25321#25171#21360
                    Width = 84
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zxsj'
                    Footers = <>
                    Title.Caption = #39318#27425#25191#34892#26102#38388
                    Width = 194
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 2
      Top = 49
      Width = 219
      Height = 691
      Align = alLeft
      DataGrouping.GroupLevels = <>
      DataSource = ds_sybr
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #26032#23435#20307
      FooterFont.Style = []
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      RowDetailPanel.Color = clBtnFace
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = #26032#23435#20307
      TitleFont.Style = []
      OnCellClick = DBGridEh1CellClick
      Columns = <
        item
          Checkboxes = True
          EditButtons = <>
          FieldName = 'xzbz'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #36873#25321
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = 'bch'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #30149#24202#21495
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'brxm'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #30149#20154#22995#21517
          Width = 86
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object QuickRep1: TQuickRep
    Left = 356
    Top = 10000
    Width = 302
    Height = 41
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = sp_syjhzxd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Custom
    Page.Values = (
      10.000000000000000000
      108.479166666666700000
      80.000000000000000000
      799.041666666666700000
      0.000000000000000000
      0.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 0
      Top = 30
      Width = 302
      Height = 121
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        320.145833333333300000
        799.041666666666700000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object p_zyh: TQRLabel
        Left = 16
        Top = 34
        Width = 49
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          42.333333333333330000
          89.958333333333330000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20303#38498#21495
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object p_xm: TQRLabel
        Left = 149
        Top = 56
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          394.229166666666700000
          148.166666666666700000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #22995#21517
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object p_xb: TQRLabel
        Left = 45
        Top = 99
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          119.062500000000000000
          261.937500000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#20869#23481
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object p_nl: TQRLabel
        Left = 16
        Top = 56
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          42.333333333333330000
          148.166666666666700000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24180#40836
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object p_bch: TQRLabel
        Left = 149
        Top = 34
        Width = 49
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          394.229166666666700000
          89.958333333333330000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #30149#24202#21495
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object p_ks: TQRLabel
        Left = 17
        Top = 78
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          44.979166666666670000
          206.375000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31185#23460
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object p_zxsj: TQRLabel
        Left = 139
        Top = 78
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          367.770833333333300000
          206.375000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#26085#26399
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 229
        Top = 99
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          605.895833333333300000
          261.937500000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#31614#21517
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 40
        Top = 8
        Width = 73
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          105.833333333333300000
          21.166666666666670000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #40657#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 13
      end
      object QRShape1: TQRShape
        Left = 150
        Top = 53
        Width = 85
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          396.875000000000000000
          140.229166666666700000
          224.895833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 0
      Top = 151
      Width = 302
      Height = 38
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        100.541666666666700000
        799.041666666666700000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object QRgrImage1: TQRImage
        Left = 189
        Top = 1
        Width = 10
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          156.104166666666700000
          500.062500000000000000
          2.645833333333333000
          26.458333333333330000)
        Picture.Data = {
          07544269746D6170DA010000424DDA010000000000003E000000280000001F00
          00006700000001000100000000009C0100000000000000000000020000000000
          000000000000FFFFFF001FFFFFFE1FFFFFFE1FFFFFFE0FFFFFFE0FFFFFFE0FFF
          FFFE0FFFFFFE07FFFFFE07FFFFFE87FFFFFE83FFFFFE83FFFFFEC3FFFFFEC1FF
          FFFEC1FFFFFEE1FFFFFEE1FFFFFEE0FFFFFEE0FFFFFEF0FFFFFEF07FFFFEF07F
          FFFEF87FFFFEF87FFFFEF83FFFFEF83FFFFEFC3FFFFEFC1FFFFEFC1FFFFEFE1F
          FFFEFE0FFFFEFE0FFFFEFF0FFFFEFF0FFFFEFF07FFFEFF07FFFEFF87FFFEFF83
          FFFEFF83FFFEFFC3FFFEFFC3FFFEFFC1FFFEFFC1FFFEFFE1FFFEFFE0FFFEFFE0
          FFFEFFF0FFFEFFF07FFEFFF07FFEFFF87FFEFFF87FFEFFF83FFEFFF83FFEFFFC
          3FFEFFFC1FFEFFFC1FFEFFFE1FFEFFFE0FFEFFFE0FFEFFFF0FFEFFFF0FFEFFFF
          07FEFFFF07FEFFFF87FEFFFF83FEFFFF83FEFFFFC3FEFFFFC3FEFFFFC1FEFFFF
          C1FEFFFFE1FEFFFFE0FEFFFFE0FEFFFFF0FEFFFFF07EFFFFF07EFFFFF87EFFFF
          F87EFFFFF83EFFFFF83EFFFFFC3EFFFFFC1EFFFFFC1EFFFFFE1EFFFFFE1EFFFF
          FE0EFFFFFE0EFFFFFF0EFFFFFF06FFFFFF06FFFFFF86FFFFFF82FFFFFF82FFFF
          FFC2FFFFFFC2FFFFFFC0FFFFFFC0FFFFFFE0FFFFFFE0FFFFFFE0FFFFFFF0FFFF
          FFF0FFFFFFF0}
        Stretch = True
      end
      object QRDBText1: TQRDBText
        Left = 16
        Top = 4
        Width = 167
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666670000
          42.333333333333330000
          10.583333333333330000
          441.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = sp_syjhzxd
        DataField = 'xmmc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRDBText2: TQRDBText
        Left = 202
        Top = 2
        Width = 9
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          534.458333333333300000
          5.291666666666667000
          23.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Color = clWhite
        DataSet = sp_syjhzxd
        DataField = 'yf'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
    object QRBand2: TQRBand
      Left = 0
      Top = 189
      Width = 302
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        799.041666666666700000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel2: TQRLabel
        Left = 99
        Top = 14
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          261.937500000000000000
          37.041666666666670000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 17
        Top = -2
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          44.979166666666670000
          -5.291666666666667000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel4'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
  end
  object sp_sybr: TADOStoredProc
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    ProcedureName = 'zyyz_cx_bqbrlb'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 112
    Top = 344
  end
  object PopupMenu3: TPopupMenu
    Left = 265
    Top = 86
    object MenuItem1: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem1Click
    end
    object N21: TMenuItem
      Caption = #21333#20221
      OnClick = N21Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 510
    Top = 86
    object MenuItem2: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem3Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 822
    Top = 94
    object MenuItem4: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem5Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 1046
    Top = 87
    object MenuItem6: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem6Click
    end
    object MenuItem7: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem7Click
    end
  end
  object ds_sybr: TDataSource
    DataSet = sp_sybr
    Left = 104
    Top = 280
  end
  object ds_dryz: TDataSource
    DataSet = sp_dryz
    Left = 376
    Top = 296
  end
  object sp_dryz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_cx_syd'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@bqdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zxsj'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@bz'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 430
    Top = 295
  end
  object sp_in_yzzxqd: TADOStoredProc
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    CommandTimeout = 60
    ProcedureName = 'zybl_zyyz_in_zyyzzxqd'
    Parameters = <>
    Left = 272
    Top = 344
  end
  object sp_syjhzxd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_yzzxjl_print_dddy'
    Parameters = <>
    Left = 496
    Top = 280
  end
  object sp_dryz_zsd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_cx_zsd'
    Parameters = <>
    Left = 430
    Top = 479
  end
  object PopupMenu5: TPopupMenu
    Left = 345
    Top = 86
    object MenuItem8: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem8Click
    end
    object MenuItem9: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem9Click
    end
  end
  object sa_dryz_zsd: TDataSource
    DataSet = sp_dryz_zsd
    Left = 376
    Top = 480
  end
  object PopupMenu6: TPopupMenu
    Left = 622
    Top = 86
    object MenuItem10: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem10Click
    end
    object MenuItem11: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem11Click
    end
  end
  object PopupMenu7: TPopupMenu
    Left = 891
    Top = 86
    object MenuItem12: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem12Click
    end
    object MenuItem13: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem13Click
    end
  end
  object PopupMenu8: TPopupMenu
    Left = 1131
    Top = 87
    object MenuItem14: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem14Click
    end
    object MenuItem15: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem15Click
    end
  end
  object PopupMenu9: TPopupMenu
    Left = 417
    Top = 86
    object MenuItem16: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem16Click
    end
    object MenuItem17: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem17Click
    end
  end
  object PopupMenu10: TPopupMenu
    Left = 710
    Top = 86
    object MenuItem18: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem18Click
    end
    object MenuItem19: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem19Click
    end
  end
  object PopupMenu11: TPopupMenu
    Left = 963
    Top = 86
    object MenuItem20: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem20Click
    end
    object MenuItem21: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem21Click
    end
  end
  object PopupMenu12: TPopupMenu
    Left = 1219
    Top = 95
    object MenuItem22: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem22Click
    end
    object MenuItem23: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem23Click
    end
  end
  object ds_zld: TDataSource
    DataSet = sp_dryz_zld
    Left = 376
    Top = 536
  end
  object sp_dryz_zld: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_cx_zld'
    Parameters = <>
    Left = 430
    Top = 535
  end
  object PopupMenu13: TPopupMenu
    Left = 337
    Top = 134
    object MenuItem24: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem24Click
    end
    object MenuItem25: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem25Click
    end
  end
  object PopupMenu14: TPopupMenu
    Left = 619
    Top = 134
    object MenuItem26: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem26Click
    end
    object MenuItem27: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem27Click
    end
  end
  object PopupMenu15: TPopupMenu
    Left = 883
    Top = 143
    object MenuItem28: TMenuItem
      Caption = #21452#20221
      OnClick = MenuItem28Click
    end
    object MenuItem29: TMenuItem
      Caption = #21333#20221
      OnClick = MenuItem29Click
    end
  end
  object PopupMenu16: TPopupMenu
    Left = 297
    Top = 230
    object N1: TMenuItem
      Caption = #21462#28040#36873#20013#32452#21307#22065#24050#25171#21360#26631#24535
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #21462#28040#26174#31034#30340#25152#26377#21307#22065#24050#25171#21360#26631#24535
      OnClick = N2Click
    end
  end
  object qry_up_yzzxqd: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 584
    Top = 232
  end
  object PopupMenu17: TPopupMenu
    Left = 441
    Top = 230
    object MenuItem30: TMenuItem
      Caption = #21462#28040#36873#20013#32452#21307#22065#24050#25171#21360#26631#24535
      OnClick = MenuItem30Click
    end
    object MenuItem31: TMenuItem
      Caption = #21462#28040#26174#31034#30340#25152#26377#21307#22065#24050#25171#21360#26631#24535
      OnClick = MenuItem31Click
    end
  end
  object ds_dryz_kfyd: TDataSource
    DataSet = sp_dryz_kfyd
    Left = 384
    Top = 608
  end
  object sp_dryz_kfyd: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_zyyz_cx_kfyd'
    Parameters = <>
    Left = 438
    Top = 607
  end
  object PopupMenu18: TPopupMenu
    Left = 521
    Top = 230
    object MenuItem32: TMenuItem
      Caption = #21462#28040#36873#20013#32452#21307#22065#24050#25171#21360#26631#24535
      OnClick = MenuItem32Click
    end
    object MenuItem33: TMenuItem
      Caption = #21462#28040#26174#31034#30340#25152#26377#21307#22065#24050#25171#21360#26631#24535
      OnClick = MenuItem33Click
    end
  end
end
