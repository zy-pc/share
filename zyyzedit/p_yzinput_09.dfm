object frm_yzinput: Tfrm_yzinput
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = #21307#22065#32534#36753#31383#21475
  ClientHeight = 647
  ClientWidth = 1258
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object ZZ: TcxPageControl
    Left = 0
    Top = 84
    Width = 1258
    Height = 516
    ActivePage = Tab_yp
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = [fsBold]
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    ParentFont = False
    Style = 6
    TabOrder = 3
    ClientRectBottom = 516
    ClientRectRight = 1258
    ClientRectTop = 24
    object Tab_yp: TcxTabSheet
      Caption = #24405#20837#21307#22065'(F1)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ImageIndex = 0
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1258
        Height = 38
        Align = alTop
        BevelInner = bvLowered
        BevelOuter = bvNone
        TabOrder = 0
        object Label52: TLabel
          Left = 10
          Top = 6
          Width = 30
          Height = 15
          Caption = #38271#26399
        end
        object Label54: TLabel
          Left = 42
          Top = 6
          Width = 30
          Height = 15
          Caption = #20020#26102
        end
        object Label56: TLabel
          Left = 73
          Top = 6
          Width = 30
          Height = 15
          Caption = #22065#25176
        end
        object Label21: TLabel
          Left = 12
          Top = 22
          Width = 25
          Height = 9
          AutoSize = False
          Color = clBlack
          ParentColor = False
        end
        object Label53: TLabel
          Left = 44
          Top = 22
          Width = 25
          Height = 9
          AutoSize = False
          Color = clGreen
          ParentColor = False
        end
        object Label55: TLabel
          Left = 76
          Top = 22
          Width = 25
          Height = 9
          AutoSize = False
          Color = clRed
          ParentColor = False
        end
        object Label4: TLabel
          Left = 136
          Top = 3
          Width = 577
          Height = 15
          Caption = #24405#20837#25552#31034#65306' [F5]'#38271#26399'[F6]'#20020#26102' -- 0'#65306#33647#21697'1:'#26448#26009'2:'#27835#30103'3:'#26816#39564'4:'#26816#26597'5:'#20854#23427' '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 232
          Top = 21
          Width = 418
          Height = 15
          Caption = #35831#20005#26684#25353#29031#21307#22065#39034#24207#24405#20837#19982#25191#34892','#21542#21017#27835#30103#35760#24405#39034#24207#27604#36739#20081'!'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 709
          Top = 3
          Width = 493
          Height = 31
          AutoSize = False
          Caption = #35831#27880#24847#65306#21307#22065#24405#20837#28385#23631#21518#65292#35831#21450#26102#25552#20132#65292#21542#21017#23558#36896#25104#36755#28082#20998#32452#26174#31034#28151#20081#65281#65281#19968#21608#20960#27425#30340#29992#27861#38656#35201#22312#22791#27880#26639#22635#20889#27599#21608#26143#26399#20960#29992#33647#65292#36887#21495#38548#24320
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 38
        Width = 34
        Height = 454
        Align = alLeft
        TabOrder = 1
        object BitBtn_up: TSpeedButton
          Left = 4
          Top = 5
          Width = 23
          Height = 22
          Hint = #21521#21069#35843#25972#26639#30446#39034#24207
          Glyph.Data = {
            0E060000424D0E06000000000000360000002800000016000000160000000100
            180000000000D8050000120B0000120B00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFFF602FFF602FFF602FFF602F000000BFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFFF602FFFFFCFFFFFCFFF902F000000BFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF602FFFFFCFFFCF2FFF902F000000
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF602FFFFFCFFFCF2FFF90
            2F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF602FFFFFCFFF
            CF2FFF902F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF602F
            FFFFCFFFCF2FFF902F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFFF602FFFFFCFFFCF2FFF902F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFFF602FFFFFCFFFCF2FFF902F000000BFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFF602F
            FF602FFF602FFF602FFF602FFFFFCFFFCF2FFF902F0000000000000000000000
            00000000BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF000000FFCF2FFFFFCFFFFFCFFFFFCFFFCF2FFF902FFF902FFF902FFF
            602F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBF000000FFCF2FFFFF90FFCF2FFFCF2FFFCF2FFFCF2F
            FF602F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFCF2FFFFF90FFCF2FFFCF
            2FFF602F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFCF2FFF
            CF2FFF602F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            000000FF602F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
          OnClick = BitBtn_upClick
        end
        object BitBtn_down: TSpeedButton
          Left = 5
          Top = 92
          Width = 23
          Height = 22
          Hint = #21521#21069#35843#25972#26639#30446#39034#24207
          Glyph.Data = {
            0E060000424D0E06000000000000360000002800000016000000160000000100
            180000000000D8050000120B0000120B00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BF000000FF602F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBF000000FF602FFFCF2FFFCF2F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBF000000FF602FFFCF2FFFCF2FFFFF90FFCF2F000000BFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF000000FF602FFFCF2FFFCF2FFFCF2FFFCF2FFFFF90FFCF2F000000BF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBF000000FF602FFF902FFF902FFF902FFFCF2FFFFFCFFFFFCFFFFFCF
            FFCF2F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBFBFBFBF000000000000000000000000000000FF902FFFCF2FFFFFCFFF60
            2FFF602FFF602FFF602FFF602FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FF902FFFCF2FFF
            FFCFFF602FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FF902F
            FFCF2FFFFFCFFF602FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
            00FF902FFFCF2FFFFFCFFF602FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBF000000FF902FFFCF2FFFFFCFFF602FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBF000000FF902FFFCF2FFFFFCFFF602FBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF000000FF902FFFCF2FFFFFCFFF602FBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FF902FFFFFCFFFFFCFFF602FBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FF602FFF602FFF602FFF60
            2FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
          OnClick = BitBtn_downClick
        end
        object Label10: TLabel
          Left = 9
          Top = 30
          Width = 13
          Height = 69
          AutoSize = False
          Caption = #39034#24207#35843#25972
          WordWrap = True
        end
        object btn1: TButton
          Left = 5
          Top = 115
          Width = 25
          Height = 65
          Caption = #26415#21518#21307#22065
          TabOrder = 0
          WordWrap = True
          OnClick = btn1Click
        end
        object Button3: TButton
          Left = 5
          Top = 407
          Width = 25
          Height = 80
          Caption = #33008#23707#32032#22791#29992
          TabOrder = 1
          WordWrap = True
          OnClick = Button3Click
        end
        object Button6: TButton
          Left = 5
          Top = 184
          Width = 25
          Height = 73
          Caption = #20135#21518#21307#22065
          TabOrder = 2
          WordWrap = True
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 5
          Top = 261
          Width = 25
          Height = 65
          Caption = #36716#20837#21307#22065
          TabOrder = 3
          WordWrap = True
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 5
          Top = 330
          Width = 25
          Height = 73
          Caption = #37325#25972#21307#22065
          TabOrder = 4
          WordWrap = True
          OnClick = Button8Click
        end
      end
      object ScrollBox4: TScrollBox
        Left = 34
        Top = 38
        Width = 1224
        Height = 454
        HorzScrollBar.Tracking = True
        VertScrollBar.Tracking = True
        Align = alClient
        TabOrder = 2
        object grid_yzlr: TDBGridEh
          Left = -1
          Top = 3
          Width = 1424
          Height = 654
          AllowedOperations = [alopUpdateEh, alopDeleteEh]
          DataSource = ds_yz
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clBlack
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FrozenCols = 10
          HorzScrollBar.Visible = False
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghRecordMoving]
          PopupMenu = PopupMenu2
          RowHeight = 2
          RowLines = 1
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          UseMultiTitle = True
          VertScrollBar.VisibleMode = sbNeverShowEh
          OnCellClick = grid_yzlrCellClick
          OnColExit = grid_yzlrColExit
          OnColWidthsChanged = grid_yzlrColWidthsChanged
          OnDblClick = grid_yzlrDblClick
          OnDrawColumnCell = grid_yzlrondrawcolumncell
          OnEnter = grid_yzlrEnter
          OnKeyDown = grid_yzlrKeyDown
          OnKeyPress = grid_yzlrKeyPress
          OnMouseDown = grid_yzlrMouseDown
          OnMoveRecords = grid_yzlrMoveRecords
          Columns = <
            item
              EditButtons = <>
              FieldName = 'yzsx'
              Footers = <>
              PickList.Strings = (
                #38271#26399
                #20020#26102)
              Title.Caption = #23646#24615
              Title.TitleButton = True
              Width = 45
            end
            item
              DropDownRows = 8
              EditButtons = <>
              FieldName = 'lb'
              Footers = <>
              PickList.Strings = (
                #33647#21697
                #26448#26009
                #27835#30103
                #26816#39564
                #26816#26597
                #20854#23427
                #25104#33647)
              Title.Caption = #31867#21035
              Title.TitleButton = True
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'xmmc'
              Footers = <>
              Title.Caption = #39033#30446#21517#31216
              Width = 170
            end
            item
              EditButtons = <>
              FieldName = 'ypyl'
              Footers = <>
              HideDuplicates = True
              Title.Caption = #33647#21697#29992#37327
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'yldw'
              Footers = <>
              ReadOnly = True
              Title.Caption = ' '
              Width = 30
            end
            item
              AutoDropDown = True
              EditButtons = <>
              FieldName = 'ypyf'
              Footers = <>
              Title.Caption = #33647#21697#29992#27861
              Width = 38
            end
            item
              AutoDropDown = True
              EditButtons = <>
              FieldName = 'yytj'
              Footers = <>
              LookupDisplayFields = 'pym'
              Title.Caption = #29992#33647#36884#24452
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'sl'
              Footers = <>
              Title.Caption = #25968#37327
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'dw'
              Footers = <>
              ReadOnly = True
              Title.Caption = #21333#20301
              Width = 19
            end
            item
              EditButtons = <>
              FieldName = 'jyyb'
              Footers = <>
              PickList.Strings = (
                #34880#28082
                #34880#28165
                #23615#28082
                #22823#20415
                #20307#28082
                #33016#27700
                #33145#27700
                #33145#36879#28082
                #33041#33034#28082
                #30333#24102
                #21589#21520#29289
                #21313#20108#25351#32928#28082
                #31359#21050#28082
                #20998#27852#29289
                #31934#28082
                '1h'#34880#28165
                '2h'#34880#28165
                '3h'#34880#28165
                '4h'#34880#28165
                #20851#33410#33108#31215#28082
                #24515#21253#31215#28082
                #21069#21015#33146#28082
                #33034#39635
                #33043
                #21693#25325#23376
                #33040#20998#27852#29289
                #32966#27713
                #28748#27927#28082
                #34880#27974
                #20840#34880
                #26411#26786#34880
                #32963#28082
                #27668#31649#38236#21047#29255
                #38452#35797#23376
                #21822#28082
                #32819#35797#23376
                #39048#31649
                #38745#33033#34880
                #30333#32454#32990#21333#37319#28082
                #24341#27969#29289
                #33008#33146#28082
                #26410#30693
                #20854#23427
                #26080#26679#26412
                #33040#34880
                #38452#36947#20998#27852#29289
                #23467#39048#20998#27852#29289
                #27611#21457
                #30192
                #21560#30192
                #23615#36947#20998#27852#29289
                #30524#20998#27852#29289
                #21019#38754#28183#28082
                #21160#33033#20840#34880
                #21475#33108#31896#33180
                #28183#20986#28082
                #34880#28082
                #20999#21475#20998#27852#29289
                #34735#29983#29289
                #32963#20869#23481#29289
                #39592#39635)
              Title.Caption = #26816#39564#26679#26412
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'czks'
              Footers = <>
              Title.Caption = #22788#32622#31185#23460
              Width = 37
            end
            item
              EditButtons = <>
              FieldName = 'czksmc'
              Footers = <>
              ReadOnly = True
              Title.Caption = '  '
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'yplb'
              Footers = <>
              ReadOnly = True
              Title.Caption = #33647#21697#31867#21035
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'yplsj'
              Footers = <>
              ReadOnly = True
              Title.Caption = #21333#20215
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'gg'
              Footers = <>
              ReadOnly = True
              Title.Caption = #35268#26684
              Width = 98
            end
            item
              EditButtons = <>
              FieldName = 'bz'
              Footers = <>
              Title.Caption = #35828#26126
              Width = 159
            end
            item
              EditButtons = <>
              FieldName = 'xh'
              Footers = <>
              Title.Caption = #24207#21495
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'zksx'
              Footers = <>
            end>
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 36
        Top = 39
        Width = 1425
        Height = 42
        AllowedOperations = [alopUpdateEh, alopDeleteEh]
        DataSource = ds_yz
        Flat = True
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clBlack
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        FrozenCols = 10
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghRecordMoving]
        RowHeight = 2
        RowLines = 1
        TabOrder = 3
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        UseMultiTitle = True
        OnColWidthsChanged = DBGridEh7ColWidthsChanged
        Columns = <
          item
            EditButtons = <>
            FieldName = 'yzsx'
            Footers = <>
            PickList.Strings = (
              #38271#26399
              #20020#26102)
            Title.Caption = #23646#24615
            Title.TitleButton = True
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'lb'
            Footers = <>
            PickList.Strings = (
              #33647#21697
              #26448#26009
              #27835#30103
              #26816#39564
              #26816#26597
              #20854#23427
              #25104#33647)
            Title.Caption = #31867#21035
            Title.TitleButton = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'xmmc'
            Footers = <>
            Title.Caption = #39033#30446#21517#31216
            Width = 170
          end
          item
            EditButtons = <>
            FieldName = 'ypyl'
            Footers = <>
            HideDuplicates = True
            Title.Caption = #33647#21697#29992#37327
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'yldw'
            Footers = <>
            ReadOnly = True
            Title.Caption = ' '
            Width = 30
          end
          item
            AutoDropDown = True
            EditButtons = <>
            FieldName = 'ypyf'
            Footers = <>
            Title.Caption = #33647#21697#29992#27861
            Width = 38
          end
          item
            AutoDropDown = True
            EditButtons = <>
            FieldName = 'yytj'
            Footers = <>
            LookupDisplayFields = 'pym'
            Title.Caption = #29992#33647#36884#24452
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'sl'
            Footers = <>
            Title.Caption = #25968#37327
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'dw'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21333#20301
            Width = 19
          end
          item
            EditButtons = <>
            FieldName = 'jyyb'
            Footers = <>
            PickList.Strings = (
              #34880#28082
              #34880#28165
              #23615#28082
              #22823#20415
              #20307#28082
              #33016#27700
              #33145#27700
              #33145#36879#28082
              #33041#33034#28082
              #30333#24102
              #21589#21520#29289
              #21313#20108#25351#32928#28082
              #31359#21050#28082
              #20998#27852#29289
              #31934#28082
              '1h'#34880#28165
              '2h'#34880#28165
              '3h'#34880#28165
              '4h'#34880#28165
              #20851#33410#33108#31215#28082
              #24515#21253#31215#28082
              #21069#21015#33146#28082
              #33034#39635
              #33043
              #21693#25325#23376
              #33040#20998#27852#29289
              #32966#27713
              ''
              #28748#27927#28082
              #34880#27974
              #20840#34880
              #26411#26786#34880
              #32963#28082
              #27668#31649#38236#21047#29255
              #38452#35797#23376
              #21822#28082
              #32819#35797#23376
              #39048#31649
              #38745#33033#34880
              #30333#32454#32990#21333#37319#28082
              #24341#27969#29289
              #33008#33146#28082
              #26410#30693
              #20854#23427
              #26080#26679#26412
              #33040#34880
              #38452#36947#20998#27852#29289
              #23467#39048#20998#27852#29289
              #27611#21457
              #30192
              #21560#30192
              #23615#36947#20998#27852#29289
              #30524#20998#27852#29289
              #21019#38754#28183#28082
              #21160#33033#20840#34880
              #21475#33108#31896#33180
              #28183#20986#28082
              #34880#28082
              #20999#21475#20998#27852#29289
              #34735#29983#29289
              #32963#20869#23481#29289
              #39592#39635)
            Title.Caption = #26816#39564#26679#26412
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'czks'
            Footers = <>
            Title.Caption = #22788#32622#31185#23460
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'czksmc'
            Footers = <>
            ReadOnly = True
            Title.Caption = '  '
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'yplb'
            Footers = <>
            ReadOnly = True
            Title.Caption = #33647#21697#31867#21035
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'yplsj'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21333#20215
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'gg'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35268#26684
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'bz'
            Footers = <>
            Title.Caption = #35828#26126
            Width = 159
          end
          item
            EditButtons = <>
            FieldName = 'xh'
            Footers = <>
            Title.Caption = #24207#21495
            Width = 48
          end>
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #24403#26085#21307#22065'(F2)'
      ImageIndex = 6
      OnShow = cxTabSheet1Show
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1258
        Height = 25
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object Label2: TLabel
          Left = 10
          Top = 10
          Width = 25
          Height = 9
          AutoSize = False
          Color = clSkyBlue
          ParentColor = False
        end
        object Label3: TLabel
          Left = 39
          Top = 6
          Width = 98
          Height = 13
          Caption = #24403#22825#24050#25191#34892#21307#22065
        end
        object Label8: TLabel
          Left = 475
          Top = 6
          Width = 14
          Height = 13
          Caption = #21040
        end
        object Label9: TLabel
          Left = 689
          Top = 6
          Width = 140
          Height = 13
          Caption = #30149#20154#24403#21069#27491#22312#25191#34892#21307#22065
        end
        object Label15: TLabel
          Left = 145
          Top = 10
          Width = 25
          Height = 9
          AutoSize = False
          Color = clOlive
          ParentColor = False
        end
        object Label16: TLabel
          Left = 175
          Top = 6
          Width = 64
          Height = 13
          Caption = ' '#36229#26102#34917#24405
        end
        object ComboBox1: TComboBox
          Left = 248
          Top = 3
          Width = 113
          Height = 21
          ItemHeight = 0
          TabOrder = 0
          Text = #20840#37096
          OnChange = ComboBox1Change
          Items.Strings = (
            #20840#37096
            #38271#26399
            #20020#26102
            #26410#20572#27490#21307#22065
            #26412#20154#21307#22065)
        end
        object DateTimePicker1: TDateTimePicker
          Left = 367
          Top = 2
          Width = 104
          Height = 23
          Date = 40401.666157951390000000
          Time = 40401.666157951390000000
          TabOrder = 1
        end
        object DateTimePicker2: TDateTimePicker
          Left = 492
          Top = 2
          Width = 104
          Height = 23
          Date = 40401.666157951390000000
          Time = 40401.666157951390000000
          TabOrder = 2
        end
        object Button2: TButton
          Left = 602
          Top = 0
          Width = 73
          Height = 25
          Caption = #26102#38388#36807#28388
          TabOrder = 3
          OnClick = Button2Click
        end
        object Button4: TButton
          Left = 835
          Top = 0
          Width = 73
          Height = 25
          Caption = #21047#26032
          TabOrder = 4
          OnClick = Button4Click
        end
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 25
        Width = 1258
        Height = 467
        Align = alClient
        TabOrder = 1
        object DBGridEh4: TDBGridEh
          Left = 0
          Top = 0
          Width = 1586
          Height = 468
          DataSource = ds_dryz
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clNavy
          FooterFont.Height = -13
          FooterFont.Name = #23435#20307
          FooterFont.Style = [fsBold]
          HorzScrollBar.Visible = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          PopupMenu = PopupMenu1
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clNavy
          TitleFont.Height = -13
          TitleFont.Name = #23435#20307
          TitleFont.Style = [fsBold]
          UseMultiTitle = True
          VertScrollBar.VisibleMode = sbNeverShowEh
          OnCellClick = DBGridEh4CellClick
          OnColWidthsChanged = DBGridEh4ColWidthsChanged
          OnDrawColumnCell = DBGridEh4DrawColumnCell
          OnEnter = DBGridEh4Enter
          OnExit = DBGridEh4Exit
          Columns = <
            item
              EditButtons = <>
              FieldName = 'lb'
              Footers = <>
              Title.Caption = #31867#21035
            end
            item
              EditButtons = <>
              FieldName = 'yzsx'
              Footers = <>
              Title.Caption = #23646#24615
            end
            item
              EditButtons = <>
              FieldName = 'kdrq'
              Footers = <>
              Title.Caption = #24320#22987#26102#38388
              Width = 151
            end
            item
              EditButtons = <>
              FieldName = 'ph'
              Footers = <>
              Title.Caption = #25209#21495
              Visible = False
              Width = 95
            end
            item
              EditButtons = <>
              FieldName = 'xmmc'
              Footers = <>
              Title.Caption = #39033#30446#21517#31216
              Width = 243
            end
            item
              EditButtons = <>
              FieldName = 'sl'
              Footers = <>
              Title.Caption = #25968#37327
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'dw'
              Footers = <>
              Title.Caption = #21333#20301
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'ypyl'
              Footers = <>
              Title.Caption = #29992#37327
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'yldw'
              Footers = <>
              Title.Caption = '  '
              Width = 17
            end
            item
              EditButtons = <>
              FieldName = 'ypyf'
              Footers = <>
              Title.Caption = #29992#27861
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'yytj'
              Footers = <>
              Title.Caption = #29992#33647#36884#24452
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'yplsj'
              Footers = <>
              Title.Caption = #21333#20215
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'jyyb'
              Footers = <>
              Title.Caption = #26816#39564#26679#26412
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'bz'
              Footers = <>
              Title.Caption = #35828#26126
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'gg'
              Footers = <>
              Title.Caption = #35268#26684
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'kdysmc'
              Footers = <>
              Title.Caption = #24320#21333
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'czksmc'
              Footers = <>
              Title.Caption = #22788#32622#31185#23460
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'zhzxsj'
              Footers = <>
              Title.Caption = #35745#36153#26102#38388
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'tzfs'
              Footers = <>
              Title.Caption = #32467#26463#26102#38388
              Width = 152
            end
            item
              EditButtons = <>
              FieldName = 'xmdm'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypdwid'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zyh'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'id'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypbzbl'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypcgj'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yplb'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jcmd'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'tmh'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'tzbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zfbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zxbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'fzbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'tzrq'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'tzry'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zfrq'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zfry'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zxrq'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'zxry'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'xgrq'
              Footers = <>
              Title.Caption = #25552#20132#26102#38388
              Width = 166
            end
            item
              EditButtons = <>
              FieldName = 'xgry'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'czks'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'kdks'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'kdys'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yzrq'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'shbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'shry'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jcbw'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'jcff'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'ypkcbz'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'czys'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'fzph'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'drzxcs'
              Footers = <>
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'yjjssj'
              Footers = <>
              Visible = False
            end>
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 25
        Width = 1586
        Height = 40
        DataSource = ds_dryz
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clNavy
        FooterFont.Height = -13
        FooterFont.Name = #23435#20307
        FooterFont.Style = [fsBold]
        HorzScrollBar.Visible = False
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = #23435#20307
        TitleFont.Style = [fsBold]
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        OnColWidthsChanged = DBGridEh6ColWidthsChanged
        Columns = <
          item
            EditButtons = <>
            FieldName = 'lb'
            Footers = <>
            Title.Caption = #31867#21035
          end
          item
            EditButtons = <>
            FieldName = 'yzsx'
            Footers = <>
            Title.Caption = #23646#24615
          end
          item
            EditButtons = <>
            FieldName = 'kdrq'
            Footers = <>
            Title.Caption = #24320#22987#26102#38388
            Width = 151
          end
          item
            EditButtons = <>
            FieldName = 'ph'
            Footers = <>
            Title.Caption = #25209#21495
            Visible = False
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'xmmc'
            Footers = <>
            Title.Caption = #39033#30446#21517#31216
            Width = 243
          end
          item
            EditButtons = <>
            FieldName = 'sl'
            Footers = <>
            Title.Caption = #25968#37327
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'dw'
            Footers = <>
            Title.Caption = #21333#20301
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'ypyl'
            Footers = <>
            Title.Caption = #29992#37327
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'yldw'
            Footers = <>
            Title.Caption = '  '
            Width = 17
          end
          item
            EditButtons = <>
            FieldName = 'ypyf'
            Footers = <>
            Title.Caption = #29992#27861
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'yytj'
            Footers = <>
            Title.Caption = #29992#33647#36884#24452
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'yplsj'
            Footers = <>
            Title.Caption = #21333#20215
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'jyyb'
            Footers = <>
            Title.Caption = #26816#39564#26679#26412
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'bz'
            Footers = <>
            Title.Caption = #35828#26126
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'gg'
            Footers = <>
            Title.Caption = #35268#26684
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'kdysmc'
            Footers = <>
            Title.Caption = #24320#21333
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'czksmc'
            Footers = <>
            Title.Caption = #22788#32622#31185#23460
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'zhzxsj'
            Footers = <>
            Title.Caption = #35745#36153#26102#38388
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'tzfs'
            Footers = <>
            Title.Caption = #32467#26463#26102#38388
            Width = 152
          end
          item
            EditButtons = <>
            FieldName = 'xmdm'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'ypdwid'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'zyh'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'ypbzbl'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'ypcgj'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'yplb'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'jcmd'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'tmh'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'tzbz'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'zfbz'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'zxbz'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'fzbz'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'tzrq'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'tzry'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'zfrq'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'zfry'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'zxrq'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'zxry'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'xgrq'
            Footers = <>
            Title.Caption = #25552#20132#26102#38388
            Width = 166
          end
          item
            EditButtons = <>
            FieldName = 'xgry'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'czks'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'kdks'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'kdys'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'yzrq'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'shbz'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'shry'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'jcbw'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'jcff'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'ypkcbz'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'czys'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'fzph'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'drzxcs'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'yjjssj'
            Footers = <>
            Visible = False
          end>
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #27835#30103#35760#24405#65288'F3'#65289
      ImageIndex = 2
      OnShow = cxTabSheet2Show
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PageControl1: TPageControl
        Left = 0
        Top = 41
        Width = 1258
        Height = 451
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = '  '#38271#26399#21307#22065'  '
          OnShow = TabSheet1Show
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ScrollBox2: TScrollBox
            Left = 0
            Top = 0
            Width = 1250
            Height = 423
            Align = alClient
            TabOrder = 0
            object DBGridEh1: TDBGridEh
              Left = -1
              Top = -1
              Width = 1006
              Height = 420
              DataSource = ds_zxjl_cq
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = ANSI_CHARSET
              FooterFont.Color = clNavy
              FooterFont.Height = -13
              FooterFont.Name = #23435#20307
              FooterFont.Style = [fsBold]
              HorzScrollBar.Visible = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -13
              TitleFont.Name = #23435#20307
              TitleFont.Style = [fsBold]
              UseMultiTitle = True
              VertScrollBar.VisibleMode = sbNeverShowEh
              OnColWidthsChanged = DBGridEh1ColWidthsChanged
              OnDrawColumnCell = DBGridEh1DrawColumnCell
              Columns = <
                item
                  Color = clWhite
                  EditButtons = <>
                  FieldName = 'ksrq'
                  Footers = <>
                  Title.Caption = #24320#22987#26085#26399
                  Width = 128
                end
                item
                  EditButtons = <>
                  FieldName = 'kdysmc'
                  Footers = <>
                  Title.Caption = #21307#29983
                  Width = 80
                end
                item
                  EditButtons = <>
                  FieldName = 'zxhsmc'
                  Footers = <>
                  Title.Caption = #25252#22763
                  Width = 80
                end
                item
                  EditButtons = <>
                  FieldName = 'xmmc'
                  Footers = <>
                  Title.Caption = #27835#30103#26041#27861
                  Width = 260
                end
                item
                  EditButtons = <>
                  FieldName = 'ypyf'
                  Footers = <>
                  Title.Caption = #29992#27861
                  Width = 57
                end
                item
                  EditButtons = <>
                  FieldName = 'yytj'
                  Footers = <>
                  Title.Caption = #29992#33647#36884#24452
                  Width = 66
                end
                item
                  EditButtons = <>
                  FieldName = 'sl'
                  Footers = <>
                  Title.Caption = #25968#37327
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'dw'
                  Footers = <>
                  Title.Caption = #21333#20301
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'tzrq'
                  Footers = <>
                  Title.Caption = #20572#27490#26085#26399
                  Width = 119
                end
                item
                  EditButtons = <>
                  FieldName = 'tzysmc'
                  Footers = <>
                  Title.Caption = #20572#27490#21307#29983
                  Width = 70
                end
                item
                  EditButtons = <>
                  FieldName = 'zhhsmc'
                  Footers = <>
                  Title.Caption = #20572#27490#25252#22763
                  Width = 65
                end>
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = '  '#20020#26102#21307#22065'  '
          ImageIndex = 1
          OnShow = TabSheet2Show
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ScrollBox3: TScrollBox
            Left = 0
            Top = 0
            Width = 1250
            Height = 423
            Align = alClient
            TabOrder = 0
            object DBGridEh3: TDBGridEh
              Left = 5
              Top = -1
              Width = 1006
              Height = 407
              DataSource = ds_zxjl_ls
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = ANSI_CHARSET
              FooterFont.Color = clNavy
              FooterFont.Height = -13
              FooterFont.Name = #23435#20307
              FooterFont.Style = [fsBold]
              HorzScrollBar.Visible = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clNavy
              TitleFont.Height = -13
              TitleFont.Name = #23435#20307
              TitleFont.Style = [fsBold]
              VertScrollBar.VisibleMode = sbNeverShowEh
              OnColWidthsChanged = DBGridEh3ColWidthsChanged
              OnDrawColumnCell = DBGridEh3DrawColumnCell
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'ksrq'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #24320#22987#26085#26399
                  Width = 123
                end
                item
                  EditButtons = <>
                  FieldName = 'kdysmc'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #21307#29983
                  Width = 95
                end
                item
                  EditButtons = <>
                  FieldName = 'zxhsmc'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #25252#22763
                  Width = 80
                end
                item
                  EditButtons = <>
                  FieldName = 'xmmc'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #27835#30103#26041#27861
                  Width = 282
                end
                item
                  EditButtons = <>
                  FieldName = 'sl'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #25968#37327
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'dw'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #21333#20301
                  Width = 60
                end
                item
                  EditButtons = <>
                  FieldName = 'ypyf'
                  Footers = <>
                  Title.Caption = #29992#27861
                  Width = 56
                end
                item
                  EditButtons = <>
                  FieldName = 'yytj'
                  Footers = <>
                  Title.Caption = #29992#33647#36884#24452
                  Width = 67
                end
                item
                  EditButtons = <>
                  FieldName = 'gysj'
                  Footers = <>
                  Title.Alignment = taCenter
                  Title.Caption = #32473#19982#26102#38388
                  Width = 70
                end>
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1258
        Height = 41
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        object Label5: TLabel
          Left = 24
          Top = 13
          Width = 56
          Height = 13
          Caption = #26465#30721#21495#65306
        end
        object edt_tmh: TEdit
          Left = 80
          Top = 7
          Width = 145
          Height = 21
          TabOrder = 0
          OnKeyDown = edt_tmhKeyDown
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 330
        Top = 152
        Width = 425
        Height = 215
        DataSource = ds_dj
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = ANSI_CHARSET
        FooterFont.Color = clNavy
        FooterFont.Height = -13
        FooterFont.Name = #23435#20307
        FooterFont.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = #23435#20307
        TitleFont.Style = [fsBold]
        Visible = False
        OnDblClick = DBGridEh2DblClick
        OnExit = DBGridEh2Exit
        OnKeyDown = DBGridEh2KeyDown
        Columns = <
          item
            EditButtons = <>
            FieldName = 'tmh'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #26465#30721#21495
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'brxm'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #30149#20154#22995#21517
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'brxb'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24615#21035
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'brnl'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24180#40836
            Width = 80
          end>
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #26816#39564#32467#26524#65288'F4'#65289
      ImageIndex = 3
      OnShow = cxTabSheet3Show
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1258
        Height = 370
        Align = alTop
        Caption = #26222#36890#32467#26524' '
        TabOrder = 0
        object cxGrid3: TcxGrid
          Left = 2
          Top = 15
          Width = 1254
          Height = 353
          Align = alClient
          TabOrder = 0
          object cxGrid3DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_cx_jyjg
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellMultiSelect = True
            object cxGrid3DBTableView1tmh: TcxGridDBColumn
              Caption = #26465#30721#21495
              DataBinding.FieldName = 'tmh'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
            end
            object cxGrid3DBTableView1brxm: TcxGridDBColumn
              Caption = #30149#20154#22995#21517
              DataBinding.FieldName = 'brxm'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 105
            end
            object cxGrid3DBTableView1fzbh: TcxGridDBColumn
              Caption = #20998#32452#21495
              DataBinding.FieldName = 'jyfzbh'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Visible = False
              GroupIndex = 1
              HeaderAlignmentHorz = taCenter
              MinWidth = 200
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 200
            end
            object cxGrid3DBTableView1ybmc: TcxGridDBColumn
              Caption = #26679#26412#21517#31216
              DataBinding.FieldName = 'yb'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 100
            end
            object cxGrid3DBTableView1barcode: TcxGridDBColumn
              Caption = #20998#32452#21495
              DataBinding.FieldName = 'barcode'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 130
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 130
            end
            object cxGrid3DBTableView1itemCName: TcxGridDBColumn
              Caption = #39033#30446#21517#31216'('#20013#25991')'
              DataBinding.FieldName = 'itemCName'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 150
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 150
            end
            object cxGrid3DBTableView1ItemEname: TcxGridDBColumn
              Caption = #39033#30446#21517#31216'('#33521#25991')'
              DataBinding.FieldName = 'ItemEname'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 120
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 120
            end
            object cxGrid3DBTableView1ItemValue: TcxGridDBColumn
              Caption = #20540
              DataBinding.FieldName = 'ItemValue'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 80
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
            end
            object cxGrid3DBTableView1ItemDesc: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'ItemDesc'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 100
            end
            object cxGrid3DBTableView1ItemRange: TcxGridDBColumn
              Caption = #33539#22260
              DataBinding.FieldName = 'ItemRange'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 100
            end
            object cxGrid3DBTableView1ResultStatus: TcxGridDBColumn
              Caption = #32467#26524#29366#24577
              DataBinding.FieldName = 'ResultStatus'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
            end
            object cxGrid3DBTableView1Itemunit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'Itemunit'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 100
            end
            object cxGrid3DBTableView1sqrq: TcxGridDBColumn
              Caption = #30003#35831#26085#26399
              DataBinding.FieldName = 'cysj'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 200
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
            end
            object cxGrid3DBTableView1Column1: TcxGridDBColumn
              Caption = #25253#21578#26102#38388
              DataBinding.FieldName = 'jsrq'
              Visible = False
              GroupIndex = 0
              SortIndex = 0
              SortOrder = soDescending
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 370
        Width = 1258
        Height = 122
        Align = alClient
        Caption = #24494#29983#29289#32467#26524
        TabOrder = 1
        object cxGrid2: TcxGrid
          Left = 2
          Top = 15
          Width = 1254
          Height = 105
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = ds_cx_jyjg_wsw
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellMultiSelect = True
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = #26465#30721#21495
              DataBinding.FieldName = 'tmh'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = #30149#20154#22995#21517
              DataBinding.FieldName = 'brxm'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 105
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = #20998#32452#21495
              DataBinding.FieldName = 'jyfzbh'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Visible = False
              GroupIndex = 1
              HeaderAlignmentHorz = taCenter
              MinWidth = 200
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 200
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = #26679#26412#21517#31216
              DataBinding.FieldName = 'yb'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 100
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = #20998#32452#21495
              DataBinding.FieldName = 'barcode'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 130
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 130
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = #39033#30446#21517#31216'('#20013#25991')'
              DataBinding.FieldName = 'itemCName'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 150
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 150
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = #39033#30446#32467#26524
              DataBinding.FieldName = 'itemresult'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 50
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = #24494#29983#29289
              DataBinding.FieldName = 'microname'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 100
            end
            object cxGridDBColumn10: TcxGridDBColumn
              DataBinding.FieldName = 'antiname'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 100
            end
            object cxGridDBColumn11: TcxGridDBColumn
              DataBinding.FieldName = 'antiresult'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'micdesc'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
              Width = 100
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = 'antimic'
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = #30003#35831#26085#26399
              DataBinding.FieldName = 'cysj'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 200
              Options.Editing = False
              Options.FilteringMRUItemsList = False
              Options.IncSearch = False
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = #25253#21578#26102#38388
              DataBinding.FieldName = 'jsrq'
              Visible = False
              GroupIndex = 0
              SortIndex = 0
              SortOrder = soDescending
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Pacs'#24433#20687'(F5'#65289
      ImageIndex = 4
      OnShow = cxTabSheet4Show
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1258
        Height = 41
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object Label11: TLabel
          Left = 24
          Top = 13
          Width = 56
          Height = 13
          Caption = #26465#30721#21495#65306
        end
        object Edt_pass_tmh: TEdit
          Left = 80
          Top = 7
          Width = 145
          Height = 21
          TabOrder = 0
          OnKeyDown = Edt_pass_tmhKeyDown
        end
      end
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 41
        Width = 1258
        Height = 451
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 1224
        ExplicitHeight = 486
        ControlData = {
          4C000000058200009D2E00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = #20020#24202#36335#24452#65288'F6'#65289
      ImageIndex = 5
      object Panel5: TPanel
        Left = 0
        Top = 35
        Width = 1258
        Height = 457
        Align = alClient
        Caption = 'Panel5'
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 1
          Top = 1
          Width = 1256
          Height = 455
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGrid1BandedTableView1: TcxGridBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            Bands = <
              item
                Width = 287
              end>
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1BandedTableView1
          end
        end
        object Panel8: TPanel
          Left = 697
          Top = 9
          Width = 536
          Height = 429
          Caption = 'Panel8'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -15
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Visible = False
          object Panel9: TPanel
            Left = 1
            Top = 1
            Width = 534
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label12: TLabel
              Left = 226
              Top = 11
              Width = 32
              Height = 15
              Caption = #26816#32034
            end
            object Label13: TLabel
              Left = 6
              Top = 11
              Width = 64
              Height = 15
              Caption = #24403#21069#30149#31181
            end
            object Edit1: TEdit
              Left = 264
              Top = 7
              Width = 201
              Height = 23
              TabOrder = 0
              OnChange = Edit1Change
            end
            object Edit2: TEdit
              Left = 76
              Top = 7
              Width = 144
              Height = 23
              Enabled = False
              TabOrder = 1
            end
          end
          object DBGridEh8: TDBGridEh
            Left = 1
            Top = 42
            Width = 534
            Height = 343
            Align = alTop
            DataSource = ds_icd10
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clNavy
            FooterFont.Height = -15
            FooterFont.Name = #23435#20307
            FooterFont.Style = [fsBold]
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clNavy
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = [fsBold]
            Columns = <
              item
                EditButtons = <>
                FieldName = 'jbbm'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'ICD_10'#20195#30721
                Width = 96
              end
              item
                EditButtons = <>
                FieldName = 'jbmc'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #26631#20934#30142#30149#21517#31216
                Width = 385
              end>
          end
          object Button11: TButton
            Left = 184
            Top = 394
            Width = 75
            Height = 25
            Caption = #30830#23450
            TabOrder = 2
            OnClick = Button11Click
          end
          object Button12: TButton
            Left = 312
            Top = 394
            Width = 75
            Height = 25
            Caption = #38544#34255
            TabOrder = 3
            OnClick = Button12Click
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1258
        Height = 35
        Align = alTop
        TabOrder = 1
        object btn_drlj: TButton
          Left = 431
          Top = 3
          Width = 106
          Height = 30
          Caption = #23548#20837#36335#24452
          TabOrder = 0
          OnClick = btn_drljClick
        end
        object Button9: TButton
          Left = 597
          Top = 2
          Width = 106
          Height = 30
          Caption = #25191#34892#36335#24452
          TabOrder = 1
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 58
          Top = 5
          Width = 82
          Height = 25
          Caption = #35843#25972#30149#31181
          TabOrder = 2
          OnClick = Button10Click
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1258
    Height = 50
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 5
    object Label39: TLabel
      Left = 2
      Top = 6
      Width = 69
      Height = 15
      Caption = #20303' '#38498' '#21495':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 645
      Top = 7
      Width = 46
      Height = 15
      Caption = #24615' '#21035':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 809
      Top = 9
      Width = 46
      Height = 15
      Caption = #24180' '#40836':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label42: TLabel
      Left = 4
      Top = 29
      Width = 68
      Height = 15
      Caption = #20837#38498#26085#26399':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 164
      Top = 29
      Width = 68
      Height = 15
      Caption = #20837#38498#35786#26029':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label45: TLabel
      Left = 330
      Top = 29
      Width = 68
      Height = 15
      Caption = #39044#20132#37329#39069':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label46: TLabel
      Left = 489
      Top = 29
      Width = 68
      Height = 15
      Caption = #36153#29992#37329#39069':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel
      Left = 644
      Top = 29
      Width = 46
      Height = 15
      Caption = #20313' '#39069':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label48: TLabel
      Left = 330
      Top = 7
      Width = 68
      Height = 15
      Caption = #20027#31649#21307#29983':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label49: TLabel
      Left = 809
      Top = 29
      Width = 46
      Height = 15
      Caption = #22791' '#27880':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 489
      Top = 10
      Width = 68
      Height = 15
      Caption = #30149#20154#22995#21517':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 164
      Top = 6
      Width = 68
      Height = 15
      Caption = #21307#22065#21307#29983':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 966
      Top = 9
      Width = 135
      Height = 15
      Caption = #20020#24202#36335#24452#36873#25321#30149#31181#65306
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object DBEdit9: TDBEdit
      Left = 71
      Top = 26
      Width = 87
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'ryrq'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit10: TDBEdit
      Left = 234
      Top = 26
      Width = 87
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'ryzd'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit11: TDBEdit
      Left = 399
      Top = 4
      Width = 83
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'ysxm'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit12: TDBEdit
      Left = 399
      Top = 26
      Width = 83
      Height = 21
      TabStop = False
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'yjze'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit13: TDBEdit
      Left = 557
      Top = 26
      Width = 81
      Height = 21
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'zfy'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit14: TDBEdit
      Left = 557
      Top = 4
      Width = 81
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brxm'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit15: TDBEdit
      Left = 861
      Top = 3
      Width = 96
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brnl'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit16: TDBEdit
      Left = 861
      Top = 26
      Width = 96
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'bz'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit17: TDBEdit
      Left = 696
      Top = 26
      Width = 96
      Height = 21
      Color = clMoneyGreen
      Ctl3D = False
      DataField = 'kyje'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit18: TDBEdit
      Left = 597
      Top = 59
      Width = 113
      Height = 23
      TabStop = False
      Color = clCream
      Ctl3D = True
      DataField = 'bz'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit20: TDBEdit
      Left = 696
      Top = 3
      Width = 96
      Height = 21
      TabStop = False
      Color = clCream
      Ctl3D = False
      DataField = 'brxb'
      DataSource = ds_jbxx
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object e_tmh: TEdit
      Left = 71
      Top = 4
      Width = 87
      Height = 21
      Color = clGradientActiveCaption
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      OnExit = e_tmhExit
      OnKeyDown = e_tmhKeyDown
    end
    object e_yzys: TEdit
      Left = 234
      Top = 4
      Width = 87
      Height = 21
      Color = clCream
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      OnKeyPress = e_yzysKeyPress
    end
    object Button5: TButton
      Left = 970
      Top = 25
      Width = 69
      Height = 25
      Caption = #29616#30149#21490
      TabOrder = 13
      OnClick = Button5Click
    end
    object Edit3: TEdit
      Left = 1093
      Top = 4
      Width = 161
      Height = 23
      Enabled = False
      TabOrder = 14
    end
  end
  object grid_yz: TDBGridEh
    Left = 34
    Top = 205
    Width = 832
    Height = 265
    Color = clInactiveCaptionText
    DataSource = ds_cx_yp_yz
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = grid_yzDblClick
    OnExit = grid_yzExit
    OnKeyPress = grid_yzKeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'xmdm'
        Footers = <>
        Title.Caption = #20195#30721
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'xmmc'
        Footers = <>
        Title.Caption = #21307#22065#21517#31216
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 212
      end
      item
        EditButtons = <>
        FieldName = 'pym'
        Footers = <>
        Title.Caption = #25340#38899#30721
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'hotkey'
        Footers = <>
        Title.Caption = #28909#38190
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'typym'
        Footers = <>
        Title.Caption = #21161#35760#30721
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'zylsj'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #26631#20934
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'dw'
        Footers = <>
        Title.Caption = #21333#20301
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'ksmc'
        Footers = <>
        Title.Caption = #24402#23487#31185#23460
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 78
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'bz'
        Footers = <>
        Title.Caption = #22791#27880
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'bxbl'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #31038#20445#25253#38144#27604#20363
        Width = 102
      end>
  end
  object Panel12: TPanel
    Left = 0
    Top = 600
    Width = 1258
    Height = 47
    Align = alBottom
    BevelInner = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object BBtn_print_cq: TBitBtn
      Left = 648
      Top = 6
      Width = 92
      Height = 25
      Caption = #38271#26399#21307#22065#25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = BBtn_print_cqClick
    end
    object BBtn_print_ls: TBitBtn
      Left = 748
      Top = 6
      Width = 92
      Height = 25
      Caption = #20020#26102#21307#22065#25171#21360
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = BBtn_print_lsClick
    end
    object bt_lsyz: TBitBtn
      Left = 846
      Top = 3000
      Width = 84
      Height = 25
      Caption = #25191#34892#35760#24405'(&J)'
      TabOrder = 2
      Visible = False
      OnClick = bt_lsyzClick
    end
    object bt_ztsave: TButton
      Left = 815
      Top = 6
      Width = 75
      Height = 35
      Caption = #23384#20026#27169#26495'(&K)'
      TabOrder = 3
      OnClick = bt_ztsaveClick
    end
    object bt_zt: TButton
      Left = 896
      Top = 6
      Width = 75
      Height = 35
      Caption = #35843#29992#27169#26495'(&L)'
      TabOrder = 4
      OnClick = bt_ztClick
    end
    object BitBtn5: TBitBtn
      Left = 729
      Top = 6
      Width = 80
      Height = 35
      Caption = #26816#26597#30003#35831#21333'(&J)'
      TabOrder = 5
      OnClick = BitBtn5Click
    end
    object BitBtn2: TBitBtn
      Left = 87
      Top = 6
      Width = 80
      Height = 35
      Caption = #20020#26102#21307#22065#25171#21360
      TabOrder = 6
      WordWrap = True
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 1
      Top = 6
      Width = 80
      Height = 35
      Caption = #38271#26399#21307#22065#25171#21360
      TabOrder = 7
      WordWrap = True
      OnClick = BitBtn1Click
    end
    object Button1: TButton
      Left = 977
      Top = 6
      Width = 75
      Height = 35
      Caption = #20445#23384#21307#22065'(&S)'
      TabOrder = 8
      OnClick = Button1Click
    end
    object cxButton1: TcxButton
      Left = 1063
      Top = 6
      Width = 75
      Height = 35
      Caption = #21307#22065#25552#20132'(&T)'
      TabOrder = 9
      OnClick = cxButton1Click
    end
    object bt_exit: TBitBtn
      Left = 1144
      Top = 6
      Width = 75
      Height = 35
      Caption = #32467#26463'(&Q)'
      TabOrder = 10
      OnClick = bt_exitClick
    end
    object cxButton2: TcxButton
      Left = 172
      Top = 6
      Width = 89
      Height = 35
      Caption = #38271#26399#36755#28082#35745#21010#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      WordWrap = True
      OnClick = cxButton2Click
      DropDownMenu = PopupMenu3
      Kind = cxbkDropDownButton
      LookAndFeel.Kind = lfStandard
    end
    object cxButton3: TcxButton
      Left = 266
      Top = 6
      Width = 89
      Height = 35
      Caption = #20020#26102#36755#28082#35745#21010#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      WordWrap = True
      OnClick = cxButton3Click
      DropDownMenu = PopupMenu4
      Kind = cxbkDropDownButton
      LookAndFeel.Kind = lfStandard
    end
    object cxButton4: TcxButton
      Left = 363
      Top = 6
      Width = 62
      Height = 35
      Caption = #38271#26399#27880#23556#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      WordWrap = True
      OnClick = cxButton4Click
      DropDownMenu = PopupMenu5
      Kind = cxbkDropDownButton
      LookAndFeel.Kind = lfStandard
    end
    object cxButton5: TcxButton
      Left = 431
      Top = 6
      Width = 66
      Height = 35
      Caption = #20020#26102#27880#23556#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      WordWrap = True
      OnClick = cxButton5Click
      DropDownMenu = PopupMenu6
      Kind = cxbkDropDownButton
      LookAndFeel.Kind = lfStandard
    end
    object cxButton6: TcxButton
      Left = 502
      Top = 6
      Width = 66
      Height = 35
      Caption = #27835#30103#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      WordWrap = True
      DropDownMenu = PopupMenu7
      Kind = cxbkDropDownButton
      LookAndFeel.Kind = lfStandard
    end
    object cxButton7: TcxButton
      Left = 575
      Top = 6
      Width = 66
      Height = 35
      Caption = #26597#25151#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      WordWrap = True
      DropDownMenu = PopupMenu8
      Kind = cxbkDropDownButton
      LookAndFeel.Kind = lfStandard
    end
    object cxButton8: TcxButton
      Left = 647
      Top = 6
      Width = 79
      Height = 35
      Caption = #21475#26381#33647#25191#34892#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      WordWrap = True
      OnClick = cxButton8Click
      DropDownMenu = PopupMenu9
      Kind = cxbkDropDownButton
      LookAndFeel.Kind = lfStandard
    end
  end
  object db_brxx: TDBGridEh
    Left = 834
    Top = 319
    Width = 176
    Height = 129
    DataSource = ds_jbxx
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = db_brxxDblClick
    OnExit = db_brxxExit
    OnKeyDown = db_brxxKeyDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'bch'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #24202#21495
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'brxm'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22995#21517
        Width = 80
      end>
  end
  object dbg_ys: TDBGridEh
    Left = 689
    Top = 319
    Width = 176
    Height = 129
    DataSource = ds_ys
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = dbg_ysDblClick
    OnExit = db_brxxExit
    OnKeyPress = dbg_ysKeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'dm'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'mc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22995#21517
        Width = 80
      end>
  end
  object grid_ks: TDBGridEh
    Left = 472
    Top = 278
    Width = 219
    Height = 129
    DataSource = ds_ks
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = grid_ksDblClick
    OnExit = grid_ksExit
    OnKeyDown = grid_ksKeyDown
    Columns = <
      item
        EditButtons = <>
        FieldName = 'dm'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20195#30721
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'mc'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #31185#23460#21517#31216
        Width = 120
      end>
  end
  object QuickRep2: TQuickRep
    Left = 86
    Top = 3000
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep2BeforePrint
    DataSet = sp_zxjl_ls_dy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.PaperSize = B5
    Page.Values = (
      100.000000000000000000
      2570.000000000000000000
      100.000000000000000000
      1820.000000000000000000
      50.000000000000000000
      50.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand1: TQRBand
      Left = 19
      Top = 134
      Width = 650
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel15: TQRLabel
        Left = 520
        Top = 7
        Width = 28
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1375.833333333333000000
          18.520833333333330000
          74.083333333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 331
        Top = 7
        Width = 39
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          875.770833333333200000
          18.520833333333330000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 318
        Top = 7
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          841.375000000000000000
          18.520833333333330000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31532
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 353
        Top = 7
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          933.979166666666800000
          18.520833333333330000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_ys_ls: TQRLabel
        Left = 274
        Top = 7
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          724.958333333333400000
          18.520833333333330000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ys_ls'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_dysj_ls: TQRLabel
        Left = 8
        Top = 7
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          18.520833333333330000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26102#38388':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 19
      Top = 38
      Width = 650
      Height = 75
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
        198.437500000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape4: TQRShape
        Left = 0
        Top = 44
        Width = 650
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRL_yymc_ls: TQRLabel
        Left = 260
        Top = 2
        Width = 129
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          687.916666666666700000
          5.291666666666667000
          341.312500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRL_brxm_ls: TQRLabel
        Left = 8
        Top = 30
        Width = 96
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          79.375000000000000000
          254.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRL_tmh_ls: TQRLabel
        Left = 436
        Top = 30
        Width = 87
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1153.583333333333000000
          79.375000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_tmh_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel22: TQRLabel
        Left = 12
        Top = 55
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          145.520833333333300000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 94
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          248.708333333333300000
          145.520833333333300000
          97.895833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 601
        Top = 55
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1590.145833333333000000
          145.520833333333300000
          97.895833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 298
        Top = 55
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          788.458333333333200000
          145.520833333333300000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307'  '#22065'  '#20869'  '#23481
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 526
        Top = 55
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1391.708333333333000000
          145.520833333333300000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32473#19982#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape16: TQRShape
        Left = -5
        Top = 49
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          -13.229166666666670000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 137
        Top = 48
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          362.479166666666700000
          127.000000000000000000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 78
        Top = 48
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          206.375000000000000000
          127.000000000000000000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 581
        Top = 48
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1537.229166666667000000
          127.000000000000000000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape24: TQRShape
        Left = 510
        Top = 48
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1349.375000000000000000
          127.000000000000000000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 644
        Top = 49
        Width = 10
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1703.916666666667000000
          129.645833333333300000
          26.458333333333330000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRL_bch_ls: TQRLabel
        Left = 548
        Top = 30
        Width = 87
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1449.916666666667000000
          79.375000000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object xb_ls: TQRLabel
        Left = 136
        Top = 30
        Width = 38
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          359.833333333333300000
          79.375000000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xb_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object nl_ls: TQRLabel
        Left = 192
        Top = 30
        Width = 34
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          508.000000000000000000
          79.375000000000000000
          89.958333333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nl_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object zd_ls: TQRLabel
        Left = 255
        Top = 30
        Width = 177
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          674.687500000000000000
          79.375000000000000000
          468.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'zd_ls'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRSubDetail2: TQRSubDetail
      Left = 19
      Top = 113
      Width = 650
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail2BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep2
      OnNeedData = QRSubDetail2NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object ksrq_ls: TQRLabel
        Left = 9
        Top = 3
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          23.812500000000000000
          7.937500000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdys_ls: TQRLabel
        Left = 86
        Top = 3
        Width = 51
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          227.541666666666700000
          7.937500000000000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zxryxm_ls: TQRLabel
        Left = 591
        Top = 3
        Width = 54
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1563.687500000000000000
          7.937500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxhsmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zxsj_ls: TQRLabel
        Left = 522
        Top = 0
        Width = 53
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1381.125000000000000000
          0.000000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxzxsj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_ls: TQRLabel
        Left = 149
        Top = 3
        Width = 292
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          394.229166666666700000
          7.937500000000000000
          772.583333333333200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ypyf_ls: TQRLabel
        Left = 447
        Top = 3
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1182.687500000000000000
          7.937500000000000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRImage1: TQRImage
        Left = 428
        Top = -2
        Width = 18
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          1132.416666666667000000
          -5.291666666666667000
          47.625000000000000000)
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
    end
  end
  object QuickRep1: TQuickRep
    Left = 871
    Top = 3000
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = sp_zxjl_cq_dy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.PaperSize = B5
    Page.Values = (
      100.000000000000000000
      2570.000000000000000000
      100.000000000000000000
      1820.000000000000000000
      50.000000000000000000
      50.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object PageFooterBand1: TQRBand
      Left = 19
      Top = 163
      Width = 650
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        82.020833333333330000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel13: TQRLabel
        Left = 520
        Top = 7
        Width = 28
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1375.833333333333000000
          18.520833333333330000
          74.083333333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 331
        Top = 6
        Width = 39
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          875.770833333333200000
          15.875000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 318
        Top = 6
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          841.375000000000000000
          15.875000000000000000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31532
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 353
        Top = 6
        Width = 13
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          933.979166666666800000
          15.875000000000000000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #39029
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_ys_cq: TQRLabel
        Left = 274
        Top = 6
        Width = 41
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          724.958333333333400000
          15.875000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_ys_cq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRL_dysj_cq: TQRLabel
        Left = 8
        Top = 7
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          18.520833333333330000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25171#21360#26102#38388':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 38
      Width = 650
      Height = 102
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
        269.875000000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 44
        Width = 650
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRL_yymc_cq: TQRLabel
        Left = 257
        Top = 0
        Width = 136
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          679.979166666666700000
          0.000000000000000000
          359.833333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRL_brxm_cq: TQRLabel
        Left = 8
        Top = 30
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          21.166666666666670000
          79.375000000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRL_tmh_cq: TQRLabel
        Left = 427
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1129.770833333333000000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_tmh_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object sj1: TQRLabel
        Left = 11
        Top = 72
        Width = 31
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          29.104166666666670000
          190.500000000000000000
          82.020833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 54
        Top = 79
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          142.875000000000000000
          209.020833333333300000
          97.895833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 102
        Top = 79
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          269.875000000000000000
          209.020833333333300000
          97.895833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25191#34892#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 258
        Top = 60
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          682.625000000000000000
          158.750000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #38271'   '#26399'  '#21307'   '#22065
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object sj3: TQRLabel
        Left = 460
        Top = 72
        Width = 33
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          1217.083333333333000000
          190.500000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26085#26399#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = -2
        Top = 64
        Width = 191
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          -5.291666666666667000
          169.333333333333300000
          505.354166666666700000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 91
        Top = 51
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          240.770833333333300000
          134.937500000000000000
          66.145833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24320#22987
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = -4
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          -10.583333333333330000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 185
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          489.479166666666700000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 501
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          1325.562500000000000000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 543
        Top = 55
        Width = 25
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1436.687500000000000000
          145.520833333333300000
          66.145833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20572#27490
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape9: TQRShape
        Left = 449
        Top = 66
        Width = 199
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1187.979166666667000000
          174.625000000000000000
          526.520833333333300000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 512
        Top = 79
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1354.666666666667000000
          209.020833333333300000
          97.895833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 559
        Top = 79
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1479.020833333333000000
          209.020833333333300000
          97.895833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#32773
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape10: TQRShape
        Left = 46
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          121.708333333333300000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 92
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          243.416666666666700000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 447
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1182.687500000000000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 646
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1709.208333333333000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 552
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          1460.500000000000000000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRL_bch_cq: TQRLabel
        Left = 556
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1471.083333333333000000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape6: TQRShape
        Left = 141
        Top = 71
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          373.062500000000000000
          187.854166666666700000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object sj2: TQRLabel
        Left = 151
        Top = 72
        Width = 31
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          399.520833333333300000
          190.500000000000000000
          82.020833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25191#34892#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape7: TQRShape
        Left = 599
        Top = 69
        Width = 5
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          1584.854166666667000000
          182.562500000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object sj4: TQRLabel
        Left = 610
        Top = 72
        Width = 31
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          1613.958333333333000000
          190.500000000000000000
          82.020833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #25191#34892#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xb_cq: TQRLabel
        Left = 136
        Top = 30
        Width = 43
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          359.833333333333300000
          79.375000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xb_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object nl_cq: TQRLabel
        Left = 192
        Top = 30
        Width = 39
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          508.000000000000000000
          79.375000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nl_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object zd_cq: TQRLabel
        Left = 248
        Top = 30
        Width = 177
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          656.166666666666800000
          79.375000000000000000
          468.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'zd_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 19
      Top = 140
      Width = 650
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      OnNeedData = QRSubDetail1NeedData
      PrintBefore = False
      PrintIfEmpty = True
      object ksrq: TQRLabel
        Left = 3
        Top = 2
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          5.291666666666667000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zxhsmc: TQRLabel
        Left = 99
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          261.937500000000000000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxhsmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc: TQRLabel
        Left = 193
        Top = 2
        Width = 183
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          510.645833333333300000
          5.291666666666667000
          484.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object tzrq: TQRLabel
        Left = 456
        Top = 2
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1206.500000000000000000
          5.291666666666667000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'tzrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object tzysmc: TQRLabel
        Left = 508
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1344.083333333333000000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'tzysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zhhsmc: TQRLabel
        Left = 554
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1465.791666666667000000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zhhsmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ypyf: TQRLabel
        Left = 394
        Top = 2
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1042.458333333333000000
          5.291666666666667000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object zxzxsj: TQRLabel
        Left = 143
        Top = 2
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          378.354166666666700000
          5.291666666666667000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zxzxsj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object zhzxsj: TQRLabel
        Left = 601
        Top = 3
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1590.145833333333000000
          7.937500000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'zhzxsj'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc: TQRLabel
        Left = 49
        Top = 2
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          129.645833333333300000
          5.291666666666667000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRgrIma1: TQRImage
        Left = 382
        Top = 2
        Width = 16
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          1010.708333333333000000
          5.291666666666667000
          42.333333333333330000)
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
    end
  end
  object grid_yp: TDBGridEh
    Left = 40
    Top = 247
    Width = 989
    Height = 267
    Color = clInactiveCaptionText
    DataSource = ds_cx_yp_yz
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnDblClick = grid_ypDblClick
    OnDrawColumnCell = grid_ypDrawColumnCell
    OnExit = grid_ypExit
    OnKeyPress = grid_ypKeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ypmc'
        Footers = <>
        Title.Caption = #33647#21697#21517#31216
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 194
      end
      item
        EditButtons = <>
        FieldName = 'ypgg'
        Footers = <>
        Title.Caption = #33647#21697#35268#26684
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'zxdwsl'
        Footers = <>
        Title.Caption = #24211#23384#25968#37327
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'zyyfdw'
        Footers = <>
        Title.Caption = #21333#20301
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'zylsj'
        Footers = <>
        Title.Caption = #21333#20215
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'zjm'
        Footers = <>
        Title.Caption = #21161#35760#30721
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'sfjlyp'
        Footers = <>
        Title.Caption = #30002#31867
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = False
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'sfylyp'
        Footers = <>
        Title.Caption = #20057#31867
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Visible = False
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'yzyldw'
        Footers = <>
        Title.Caption = #29992#37327#21333#20301
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = #23435#20307
        Title.Font.Style = []
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'sblb'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #31038#20445
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'nhlb'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #20892#21512
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'jylb'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #22522#33647
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'dfyp'
        Footers = <>
        MinWidth = 85
        Title.Alignment = taCenter
        Title.Caption = #22320#26041#33647#21697
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'bxbl'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #31038#20445#25253#38144#27604#20363
        Width = 104
      end>
  end
  object DBGridEh5: TDBGridEh
    Left = 106
    Top = 207
    Width = 557
    Height = 198
    DataSource = ds_qtyzxm
    EditActions = [geaDeleteEh]
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = #23435#20307
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 10
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    Visible = False
    OnExit = DBGridEh5Exit
    OnKeyPress = DBGridEh5KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = #39033#30446#20195#30721
        Footers = <>
        Width = 139
      end
      item
        EditButtons = <>
        FieldName = #39033#30446#21517#31216
        Footers = <>
        Width = 238
      end
      item
        EditButtons = <>
        FieldName = #21333#20301
        Footers = <>
        Width = 126
      end>
  end
  object QuickRep3: TQuickRep
    Left = 76
    Top = 30000
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      50.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand3: TQRBand
      Left = 38
      Top = 953
      Width = 737
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2.645833333333333000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel1: TQRLabel
        Left = 545
        Top = 7
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1441.979166666667000000
          18.520833333333330000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '                    '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 38
      Width = 737
      Height = 102
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
        269.875000000000000000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape15: TQRShape
        Left = 0
        Top = 44
        Width = 737
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000
          1949.979166666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 300
        Top = 2
        Width = 136
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          793.750000000000000000
          5.291666666666667000
          359.833333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel3: TQRLabel
        Left = 187
        Top = 30
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          494.770833333333300000
          79.375000000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel7: TQRLabel
        Left = 11
        Top = 80
        Width = 31
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          29.104166666666670000
          211.666666666666700000
          82.020833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 143
        Top = 66
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          174.625000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#20869#23481
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 11
        Top = 53
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          29.104166666666670000
          140.229166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape18: TQRShape
        Left = -4
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          -10.583333333333330000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 287
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          759.354166666666800000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 45
        Top = 48
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          119.062500000000000000
          127.000000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 734
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1942.041666666667000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel20: TQRLabel
        Left = 44
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          116.416666666666700000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel21: TQRLabel
        Left = 333
        Top = 30
        Width = 43
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          881.062500000000000000
          79.375000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xb_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel26: TQRLabel
        Left = 445
        Top = 30
        Width = 39
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1177.395833333333000000
          79.375000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nl_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object ny: TQRLabel
        Left = 589
        Top = 30
        Width = 40
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1558.395833333333000000
          79.375000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nf_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape26: TQRShape
        Left = 0
        Top = 69
        Width = 48
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          182.562500000000000000
          127.000000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel28: TQRLabel
        Left = 426
        Top = 65
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1127.125000000000000000
          171.979166666666700000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#26085#26399#12289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 502
        Top = 65
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1328.208333333333000000
          171.979166666666700000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26102#38388#12289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 548
        Top = 65
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1449.916666666667000000
          171.979166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape27: TQRShape
        Left = -5
        Top = 49
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          -13.229166666666670000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = -4
        Top = 48
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          -10.583333333333330000
          127.000000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 140
      Width = 737
      Height = 813
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
        2151.062500000000000000
        1949.979166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape28: TQRShape
        Left = 0
        Top = -1
        Width = 649
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          0.000000000000000000
          -2.645833333333333000
          1717.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = -4
        Top = -1
        Width = 60
        Height = 81
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          214.312500000000000000
          -10.583333333333330000
          -2.645833333333333000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 47
        Top = -1
        Width = 243
        Height = 90
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          238.125000000000000000
          124.354166666666700000
          -2.645833333333333000
          642.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = -4
        Top = 24
        Width = 60
        Height = 138
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          365.125000000000000000
          -10.583333333333330000
          63.500000000000000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 47
        Top = -2
        Width = 243
        Height = 164
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          433.916666666666700000
          124.354166666666700000
          -5.291666666666667000
          642.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 290
        Top = 80
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          767.291666666666800000
          211.666666666666700000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = -4
        Top = 161
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          425.979166666666700000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = -4
        Top = 161
        Width = 60
        Height = 163
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          431.270833333333300000
          -10.583333333333330000
          425.979166666666700000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 47
        Top = 161
        Width = 244
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          425.979166666666700000
          645.583333333333200000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 289
        Top = 161
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          425.979166666666700000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 47
        Top = 161
        Width = 243
        Height = 163
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          431.270833333333300000
          124.354166666666700000
          425.979166666666700000
          642.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 290
        Top = 242
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          767.291666666666800000
          640.291666666666800000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = -4
        Top = 323
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          854.604166666666800000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 47
        Top = 323
        Width = 246
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          854.604166666666800000
          650.875000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 289
        Top = 323
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          854.604166666666800000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = -4
        Top = 323
        Width = 60
        Height = 163
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          431.270833333333300000
          -10.583333333333330000
          854.604166666666800000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = 47
        Top = 323
        Width = 243
        Height = 163
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          431.270833333333300000
          124.354166666666700000
          854.604166666666800000
          642.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape45: TQRShape
        Left = 290
        Top = 404
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          767.291666666666800000
          1068.916666666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = -4
        Top = 485
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          1283.229166666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 47
        Top = 485
        Width = 246
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          1283.229166666667000000
          650.875000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape49: TQRShape
        Left = 289
        Top = 485
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          1283.229166666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape50: TQRShape
        Left = -4
        Top = 485
        Width = 60
        Height = 163
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          431.270833333333300000
          -10.583333333333330000
          1283.229166666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape51: TQRShape
        Left = 47
        Top = 485
        Width = 243
        Height = 163
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          431.270833333333300000
          124.354166666666700000
          1283.229166666667000000
          642.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 290
        Top = 566
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          767.291666666666800000
          1497.541666666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = -4
        Top = 647
        Width = 60
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          -10.583333333333330000
          1711.854166666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape54: TQRShape
        Left = 47
        Top = 647
        Width = 243
        Height = 165
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          436.562500000000000000
          124.354166666666700000
          1711.854166666667000000
          642.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape55: TQRShape
        Left = 289
        Top = 647
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          1711.854166666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape56: TQRShape
        Left = 289
        Top = 39
        Width = 390
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          764.645833333333200000
          103.187500000000000000
          1031.875000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape57: TQRShape
        Left = 289
        Top = 120
        Width = 360
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          764.645833333333200000
          317.500000000000000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape58: TQRShape
        Left = 289
        Top = 201
        Width = 360
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          764.645833333333200000
          531.812500000000000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape59: TQRShape
        Left = 289
        Top = 283
        Width = 360
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          764.645833333333200000
          748.770833333333200000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape60: TQRShape
        Left = 289
        Top = 364
        Width = 360
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          764.645833333333200000
          963.083333333333200000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape61: TQRShape
        Left = 289
        Top = 445
        Width = 360
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          764.645833333333200000
          1177.395833333333000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape62: TQRShape
        Left = 289
        Top = 526
        Width = 360
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          764.645833333333200000
          1391.708333333333000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape63: TQRShape
        Left = 289
        Top = 607
        Width = 360
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          764.645833333333200000
          1606.020833333333000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape64: TQRShape
        Left = 290
        Top = 687
        Width = 359
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          767.291666666666800000
          1817.687500000000000000
          949.854166666666800000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape66: TQRShape
        Left = 379
        Top = -2
        Width = 1
        Height = 815
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2156.354166666667000000
          1002.770833333333000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape67: TQRShape
        Left = 423
        Top = -2
        Width = 1
        Height = 815
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2156.354166666667000000
          1119.187500000000000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape68: TQRShape
        Left = 466
        Top = -2
        Width = 1
        Height = 815
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2156.354166666667000000
          1232.958333333333000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape69: TQRShape
        Left = 511
        Top = -2
        Width = 1
        Height = 815
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2156.354166666667000000
          1352.020833333333000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape70: TQRShape
        Left = 558
        Top = -2
        Width = 1
        Height = 815
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2156.354166666667000000
          1476.375000000000000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape71: TQRShape
        Left = 604
        Top = -2
        Width = 1
        Height = 815
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2156.354166666667000000
          1598.083333333333000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object kdysmc1: TQRLabel
        Left = -2
        Top = 220
        Width = 49
        Height = 45
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          119.062500000000000000
          -5.291666666666667000
          582.083333333333200000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ypyf1: TQRLabel
        Left = 245
        Top = 163
        Width = 41
        Height = 154
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          407.458333333333300000
          648.229166666666800000
          431.270833333333300000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRgrImage3: TQRImage
        Left = 230
        Top = 327
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          608.541666666666800000
          865.187500000000000000
          39.687500000000000000)
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
      object xmmc1: TQRLabel
        Left = 50
        Top = 165
        Width = 186
        Height = 152
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          402.166666666666700000
          132.291666666666700000
          436.562500000000000000
          492.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ksrq2: TQRLabel
        Left = -2
        Top = 331
        Width = 48
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          -5.291666666666667000
          875.770833333333200000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc2: TQRLabel
        Left = -2
        Top = 395
        Width = 49
        Height = 47
        Hint = '`'
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          -5.291666666666667000
          1045.104166666667000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc2: TQRLabel
        Left = 50
        Top = 328
        Width = 180
        Height = 151
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          399.520833333333300000
          132.291666666666700000
          867.833333333333200000
          476.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRgrImage4: TQRImage
        Left = 238
        Top = 492
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          629.708333333333200000
          1301.750000000000000000
          39.687500000000000000)
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
      object ypyf2: TQRLabel
        Left = 242
        Top = 326
        Width = 41
        Height = 153
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          404.812500000000000000
          640.291666666666800000
          862.541666666666800000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object ksrq3: TQRLabel
        Left = -2
        Top = 497
        Width = 48
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          -5.291666666666667000
          1314.979166666667000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc3: TQRLabel
        Left = -2
        Top = 545
        Width = 49
        Height = 69
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          182.562500000000000000
          -5.291666666666667000
          1441.979166666667000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc3: TQRLabel
        Left = 50
        Top = 494
        Width = 180
        Height = 147
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          388.937500000000000000
          132.291666666666700000
          1307.041666666667000000
          476.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRgrImage5: TQRImage
        Left = 238
        Top = 655
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          629.708333333333200000
          1733.020833333333000000
          39.687500000000000000)
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
      object ypyf3: TQRLabel
        Left = 245
        Top = 492
        Width = 41
        Height = 149
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          394.229166666666700000
          648.229166666666800000
          1301.750000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object ksrq4: TQRLabel
        Left = -2
        Top = 652
        Width = 48
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333320000
          -5.291666666666667000
          1725.083333333333000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc4: TQRLabel
        Left = -2
        Top = 703
        Width = 49
        Height = 58
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          153.458333333333300000
          -5.291666666666667000
          1860.020833333333000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc4: TQRLabel
        Left = 50
        Top = 657
        Width = 180
        Height = 145
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          383.645833333333300000
          132.291666666666700000
          1738.312500000000000000
          476.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ypyf4: TQRLabel
        Left = 245
        Top = 655
        Width = 41
        Height = 150
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          396.875000000000000000
          648.229166666666800000
          1733.020833333333000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object kdysmc0: TQRLabel
        Left = -2
        Top = 62
        Width = 49
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          -5.291666666666667000
          164.041666666666700000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'kdysmc0'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq0: TQRLabel
        Left = -2
        Top = 3
        Width = 48
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666666700000
          -5.291666666666667000
          7.937500000000000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq0'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc0: TQRLabel
        Left = 50
        Top = 3
        Width = 187
        Height = 152
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          402.166666666666700000
          132.291666666666700000
          7.937500000000000000
          494.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ypyf0: TQRLabel
        Left = 245
        Top = 3
        Width = 41
        Height = 152
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          402.166666666666700000
          648.229166666666800000
          7.937500000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRgrImage1: TQRImage
        Left = 236
        Top = 1
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          624.416666666666800000
          2.645833333333333000
          39.687500000000000000)
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
      object ksrq1: TQRLabel
        Left = -2
        Top = 166
        Width = 48
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666666700000
          -5.291666666666667000
          439.208333333333300000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape65: TQRShape
        Left = 334
        Top = -2
        Width = 1
        Height = 815
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2156.354166666667000000
          883.708333333333200000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape175: TQRShape
        Left = 290
        Top = 811
        Width = 360
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          767.291666666666800000
          2145.770833333333000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRgrImage2: TQRImage
        Left = 236
        Top = 163
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          624.416666666666800000
          431.270833333333300000
          39.687500000000000000)
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
      object QRShape176: TQRShape
        Left = 289
        Top = 768
        Width = 360
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          764.645833333333200000
          2032.000000000000000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape177: TQRShape
        Left = 648
        Top = -1
        Width = 88
        Height = 813
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2151.062500000000000000
          1714.500000000000000000
          -2.645833333333333000
          232.833333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape178: TQRShape
        Left = 693
        Top = -1
        Width = 44
        Height = 813
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2151.062500000000000000
          1833.562500000000000000
          -2.645833333333333000
          116.416666666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape179: TQRShape
        Left = 648
        Top = 39
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          103.187500000000000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape180: TQRShape
        Left = 648
        Top = 80
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          211.666666666666700000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape181: TQRShape
        Left = 648
        Top = 120
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          317.500000000000000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape182: TQRShape
        Left = 648
        Top = 161
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          425.979166666666700000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape183: TQRShape
        Left = 648
        Top = 201
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          531.812500000000000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape184: TQRShape
        Left = 648
        Top = 242
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          640.291666666666800000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape185: TQRShape
        Left = 648
        Top = 283
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          748.770833333333200000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape186: TQRShape
        Left = 648
        Top = 323
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          854.604166666666800000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape187: TQRShape
        Left = 648
        Top = 364
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          963.083333333333200000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape188: TQRShape
        Left = 648
        Top = 445
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          1177.395833333333000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape189: TQRShape
        Left = 648
        Top = 404
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          1068.916666666667000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape190: TQRShape
        Left = 648
        Top = 485
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          1283.229166666667000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape191: TQRShape
        Left = 648
        Top = 526
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          1391.708333333333000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape192: TQRShape
        Left = 648
        Top = 566
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          1497.541666666667000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape193: TQRShape
        Left = 648
        Top = 607
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          1606.020833333333000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape194: TQRShape
        Left = 648
        Top = 647
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          1711.854166666667000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape195: TQRShape
        Left = 648
        Top = 727
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          1923.520833333333000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape197: TQRShape
        Left = 648
        Top = 687
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          1817.687500000000000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape198: TQRShape
        Left = 648
        Top = 768
        Width = 89
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1714.500000000000000000
          2032.000000000000000000
          235.479166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRLabel61: TQRLabel
      Left = 43
      Top = 971
      Width = 82
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        113.770833333333300000
        2569.104166666667000000
        216.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QRLabel61'
      Color = clWhite
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #40657#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRLabel57: TQRLabel
      Left = 623
      Top = 971
      Width = 82
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1648.354166666667000000
        2569.104166666667000000
        216.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QRLabel61'
      Color = clWhite
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #40657#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
  end
  object QuickRep4: TQuickRep
    Left = 152
    Top = 3000
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.PaperSize = B5
    Page.Values = (
      100.000000000000000000
      2570.000000000000000000
      100.000000000000000000
      1820.000000000000000000
      50.000000000000000000
      50.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand5: TQRBand
      Left = 19
      Top = 876
      Width = 650
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        82.020833333333330000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object ys: TQRLabel
        Left = 250
        Top = 4
        Width = 97
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          661.458333333333200000
          10.583333333333330000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32418#33394#34920#31034#20572#27490#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrl_ks: TQRLabel
        Left = 8
        Top = 5
        Width = 97
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          21.166666666666670000
          13.229166666666670000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #32418#33394#34920#31034#20572#27490#26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand6: TQRBand
      Left = 19
      Top = 38
      Width = 650
      Height = 102
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
        269.875000000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape72: TQRShape
        Left = 0
        Top = 44
        Width = 650
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel31: TQRLabel
        Left = 257
        Top = 2
        Width = 136
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          679.979166666666700000
          5.291666666666667000
          359.833333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel32: TQRLabel
        Left = 314
        Top = 30
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          830.791666666666800000
          79.375000000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel33: TQRLabel
        Left = 19
        Top = 80
        Width = 60
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          50.270833333333330000
          211.666666666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26102#38388#31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 143
        Top = 66
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          174.625000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#20869#23481
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 18
        Top = 53
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          47.625000000000000000
          140.229166666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #24320#22987#26085#26399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape73: TQRShape
        Left = -4
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          -10.583333333333330000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape74: TQRShape
        Left = 337
        Top = 49
        Width = 3
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          891.645833333333200000
          129.645833333333300000
          7.937500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape75: TQRShape
        Left = 86
        Top = 48
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          227.541666666666700000
          127.000000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape76: TQRShape
        Left = 646
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1709.208333333333000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel36: TQRLabel
        Left = 159
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          420.687500000000000000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel37: TQRLabel
        Left = 441
        Top = 60
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1166.812500000000000000
          158.750000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#21307#22065
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 455
        Top = 79
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1203.854166666667000000
          209.020833333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26102#38388#12289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 499
        Top = 79
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1320.270833333333000000
          209.020833333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape77: TQRShape
        Left = -5
        Top = 49
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          -13.229166666666670000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape78: TQRShape
        Left = -4
        Top = 48
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          -10.583333333333330000
          127.000000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel40: TQRLabel
        Left = 408
        Top = 79
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1079.500000000000000000
          209.020833333333300000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399#12289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape79: TQRShape
        Left = 288
        Top = 49
        Width = 3
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          762.000000000000000000
          129.645833333333300000
          7.937500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel41: TQRLabel
        Left = 301
        Top = 51
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          796.395833333333200000
          134.937500000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #20572#27490
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 301
        Top = 68
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          796.395833333333200000
          179.916666666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26102#38388
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 301
        Top = 83
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          796.395833333333200000
          219.604166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrlbl_nfQRL_bq_cq: TQRLabel
        Left = 5
        Top = 30
        Width = 84
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          13.229166666666670000
          79.375000000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bq_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object qrlbl_nf_tmh: TQRLabel
        Left = 480
        Top = 30
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1270.000000000000000000
          79.375000000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape134: TQRShape
        Left = 341
        Top = 49
        Width = 3
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          902.229166666666800000
          129.645833333333300000
          7.937500000000000000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape137: TQRShape
        Left = 338
        Top = 49
        Width = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          894.291666666666800000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRBand7: TQRBand
      Left = 19
      Top = 140
      Width = 650
      Height = 736
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
        1947.333333333333000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape80: TQRShape
        Left = 0
        Top = -1
        Width = 649
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          0.000000000000000000
          -2.645833333333333000
          1717.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape81: TQRShape
        Left = -4
        Top = -1
        Width = 100
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          -10.583333333333330000
          -2.645833333333333000
          264.583333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape82: TQRShape
        Left = 88
        Top = -1
        Width = 202
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          232.833333333333300000
          -2.645833333333333000
          534.458333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape83: TQRShape
        Left = -4
        Top = 74
        Width = 93
        Height = 77
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          203.729166666666700000
          -10.583333333333330000
          195.791666666666700000
          246.062500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape84: TQRShape
        Left = 88
        Top = 74
        Width = 281
        Height = 77
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          203.729166666666700000
          232.833333333333300000
          195.791666666666700000
          743.479166666666800000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape85: TQRShape
        Left = 289
        Top = 74
        Width = 360
        Height = 77
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          203.729166666666700000
          764.645833333333200000
          195.791666666666700000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape86: TQRShape
        Left = -4
        Top = 150
        Width = 93
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.437500000000000000
          -10.583333333333330000
          396.875000000000000000
          246.062500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape87: TQRShape
        Left = -4
        Top = 224
        Width = 93
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          592.666666666666800000
          246.062500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape88: TQRShape
        Left = 88
        Top = 150
        Width = 203
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.437500000000000000
          232.833333333333300000
          396.875000000000000000
          537.104166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape89: TQRShape
        Left = 289
        Top = 150
        Width = 360
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.437500000000000000
          764.645833333333200000
          396.875000000000000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape90: TQRShape
        Left = 88
        Top = 224
        Width = 202
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          592.666666666666800000
          534.458333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape91: TQRShape
        Left = 289
        Top = 224
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333200000
          592.666666666666800000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape92: TQRShape
        Left = -4
        Top = 297
        Width = 100
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          785.812500000000000000
          264.583333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape93: TQRShape
        Left = 88
        Top = 297
        Width = 207
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          785.812500000000000000
          547.687500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape94: TQRShape
        Left = 289
        Top = 297
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333200000
          785.812500000000000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape95: TQRShape
        Left = -4
        Top = 370
        Width = 95
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          978.958333333333200000
          251.354166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape96: TQRShape
        Left = 88
        Top = 370
        Width = 207
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          978.958333333333200000
          547.687500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape97: TQRShape
        Left = 289
        Top = 370
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333200000
          978.958333333333200000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape98: TQRShape
        Left = -4
        Top = 443
        Width = 95
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          1172.104166666667000000
          251.354166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape99: TQRShape
        Left = 88
        Top = 443
        Width = 203
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          1172.104166666667000000
          537.104166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape100: TQRShape
        Left = 289
        Top = 443
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333200000
          1172.104166666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape101: TQRShape
        Left = -4
        Top = 516
        Width = 117
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          1365.250000000000000000
          309.562500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape102: TQRShape
        Left = 88
        Top = 516
        Width = 205
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          1365.250000000000000000
          542.395833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape103: TQRShape
        Left = 289
        Top = 516
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333200000
          1365.250000000000000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape104: TQRShape
        Left = -4
        Top = 589
        Width = 99
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          1558.395833333333000000
          261.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape105: TQRShape
        Left = 88
        Top = 589
        Width = 205
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          1558.395833333333000000
          542.395833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape106: TQRShape
        Left = 289
        Top = 589
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333200000
          1558.395833333333000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape107: TQRShape
        Left = -6
        Top = 74
        Width = 655
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -15.875000000000000000
          195.791666666666700000
          1733.020833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape108: TQRShape
        Left = -4
        Top = 112
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          296.333333333333300000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape109: TQRShape
        Left = -4
        Top = 260
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          687.916666666666800000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape110: TQRShape
        Left = -4
        Top = 334
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          883.708333333333200000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape111: TQRShape
        Left = -4
        Top = 408
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          1079.500000000000000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape112: TQRShape
        Left = -4
        Top = 480
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          1270.000000000000000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape113: TQRShape
        Left = -4
        Top = 553
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          1463.145833333333000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape114: TQRShape
        Left = -4
        Top = 626
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          1656.291666666667000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape115: TQRShape
        Left = 338
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          894.291666666666800000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape116: TQRShape
        Left = 389
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1029.229166666667000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape117: TQRShape
        Left = 440
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1164.166666666667000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape118: TQRShape
        Left = 492
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1301.750000000000000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape119: TQRShape
        Left = 543
        Top = -3
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1436.687500000000000000
          -7.937500000000000000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object kdysmc_1: TQRLabel
        Left = 2
        Top = 57
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          150.812500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_1: TQRLabel
        Left = 92
        Top = 40
        Width = 195
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          243.416666666666700000
          105.833333333333300000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_2: TQRLabel
        Left = -2
        Top = 79
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          209.020833333333300000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_2: TQRLabel
        Left = 2
        Top = 95
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          251.354166666666700000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_2: TQRLabel
        Left = 92
        Top = 78
        Width = 195
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          243.416666666666700000
          206.375000000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_3: TQRLabel
        Left = -2
        Top = 116
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          306.916666666666700000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_3: TQRLabel
        Left = 2
        Top = 133
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          351.895833333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_3: TQRLabel
        Left = 92
        Top = 115
        Width = 195
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666680000
          243.416666666666700000
          304.270833333333300000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_4: TQRLabel
        Left = -2
        Top = 154
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          407.458333333333300000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_4: TQRLabel
        Left = 2
        Top = 170
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          449.791666666666700000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_4: TQRLabel
        Left = 92
        Top = 153
        Width = 195
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          243.416666666666700000
          404.812500000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_5: TQRLabel
        Left = -2
        Top = 190
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          502.708333333333300000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_5: TQRLabel
        Left = 2
        Top = 206
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          545.041666666666700000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_5: TQRLabel
        Left = 92
        Top = 190
        Width = 195
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          243.416666666666700000
          502.708333333333300000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_6: TQRLabel
        Left = -2
        Top = 227
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          600.604166666666800000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_6: TQRLabel
        Left = 2
        Top = 243
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          642.937500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_6: TQRLabel
        Left = 92
        Top = 227
        Width = 195
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          243.416666666666700000
          600.604166666666800000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_7: TQRLabel
        Left = -2
        Top = 264
        Width = 88
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          698.500000000000000000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_7: TQRLabel
        Left = 2
        Top = 280
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          740.833333333333200000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_7: TQRLabel
        Left = 92
        Top = 263
        Width = 195
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          243.416666666666700000
          695.854166666666800000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_8: TQRLabel
        Left = -2
        Top = 301
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          796.395833333333200000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_8: TQRLabel
        Left = 3
        Top = 317
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          838.729166666666800000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_8: TQRLabel
        Left = 92
        Top = 300
        Width = 195
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          243.416666666666700000
          793.750000000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_0: TQRLabel
        Left = 2
        Top = 20
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          52.916666666666670000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_0: TQRLabel
        Left = -2
        Top = 3
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          7.937500000000000000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_0: TQRLabel
        Left = 92
        Top = 2
        Width = 195
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          243.416666666666700000
          5.291666666666667000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_1: TQRLabel
        Left = -2
        Top = 40
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          105.833333333333300000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape120: TQRShape
        Left = -4
        Top = 37
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          97.895833333333320000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape121: TQRShape
        Left = -4
        Top = 186
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          492.125000000000000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape122: TQRShape
        Left = -4
        Top = 662
        Width = 99
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          -10.583333333333330000
          1751.541666666667000000
          261.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape123: TQRShape
        Left = 88
        Top = 662
        Width = 205
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          232.833333333333300000
          1751.541666666667000000
          542.395833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape124: TQRShape
        Left = 289
        Top = 662
        Width = 360
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333200000
          1751.541666666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape125: TQRShape
        Left = -6
        Top = 700
        Width = 345
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -15.875000000000000000
          1852.083333333333000000
          912.812500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape126: TQRShape
        Left = 289
        Top = 662
        Width = 50
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          764.645833333333200000
          1751.541666666667000000
          132.291666666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape127: TQRShape
        Left = 338
        Top = 662
        Width = 103
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          894.291666666666800000
          1751.541666666667000000
          272.520833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape128: TQRShape
        Left = 389
        Top = 662
        Width = 52
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          1029.229166666667000000
          1751.541666666667000000
          137.583333333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape129: TQRShape
        Left = 544
        Top = 662
        Width = 105
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          1439.333333333333000000
          1751.541666666667000000
          277.812500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape130: TQRShape
        Left = 440
        Top = 662
        Width = 53
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          1164.166666666667000000
          1751.541666666667000000
          140.229166666666700000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape131: TQRShape
        Left = 543
        Top = 662
        Width = 55
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          1436.687500000000000000
          1751.541666666667000000
          145.520833333333300000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape132: TQRShape
        Left = -4
        Top = 700
        Width = 653
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -10.583333333333330000
          1852.083333333333000000
          1727.729166666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object ksrq_9: TQRLabel
        Left = -2
        Top = 337
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          891.645833333333200000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_9: TQRLabel
        Left = 3
        Top = 353
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          933.979166666666800000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_9: TQRLabel
        Left = 92
        Top = 337
        Width = 195
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333320000
          243.416666666666700000
          891.645833333333200000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_10: TQRLabel
        Left = -2
        Top = 374
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          989.541666666666800000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_10: TQRLabel
        Left = 3
        Top = 390
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1031.875000000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_10: TQRLabel
        Left = 92
        Top = 373
        Width = 195
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666680000
          243.416666666666700000
          986.895833333333200000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_11: TQRLabel
        Left = -2
        Top = 411
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1087.437500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_11: TQRLabel
        Left = 3
        Top = 427
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1129.770833333333000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_11: TQRLabel
        Left = 90
        Top = 411
        Width = 195
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          238.125000000000000000
          1087.437500000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_12: TQRLabel
        Left = -2
        Top = 447
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1182.687500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_12: TQRLabel
        Left = 3
        Top = 463
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1225.020833333333000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_12: TQRLabel
        Left = 92
        Top = 446
        Width = 195
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          243.416666666666700000
          1180.041666666667000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_13: TQRLabel
        Left = -2
        Top = 483
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1277.937500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_13: TQRLabel
        Left = 3
        Top = 499
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1320.270833333333000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_13: TQRLabel
        Left = 92
        Top = 482
        Width = 195
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          243.416666666666700000
          1275.291666666667000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_14: TQRLabel
        Left = -2
        Top = 520
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1375.833333333333000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_14: TQRLabel
        Left = 3
        Top = 536
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1418.166666666667000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_14: TQRLabel
        Left = 92
        Top = 519
        Width = 195
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          243.416666666666700000
          1373.187500000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_15: TQRLabel
        Left = -2
        Top = 557
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1473.729166666667000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_15: TQRLabel
        Left = 3
        Top = 573
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1516.062500000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_15: TQRLabel
        Left = 92
        Top = 557
        Width = 195
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666680000
          243.416666666666700000
          1473.729166666667000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_16: TQRLabel
        Left = -2
        Top = 592
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1566.333333333333000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_16: TQRLabel
        Left = 3
        Top = 608
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1608.666666666667000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_16: TQRLabel
        Left = 92
        Top = 591
        Width = 195
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          243.416666666666700000
          1563.687500000000000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_17: TQRLabel
        Left = -2
        Top = 629
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1664.229166666667000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_17: TQRLabel
        Left = 3
        Top = 645
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1706.562500000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_17: TQRLabel
        Left = 92
        Top = 628
        Width = 195
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          243.416666666666700000
          1661.583333333333000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_18: TQRLabel
        Left = -2
        Top = 666
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1762.125000000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_18: TQRLabel
        Left = 3
        Top = 682
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1804.458333333333000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_18: TQRLabel
        Left = 92
        Top = 665
        Width = 195
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          243.416666666666700000
          1759.479166666667000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrq_19: TQRLabel
        Left = -2
        Top = 703
        Width = 86
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          -5.291666666666667000
          1860.020833333333000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmc_19: TQRLabel
        Left = 3
        Top = 719
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          1902.354166666667000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '          '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmc_19: TQRLabel
        Left = 92
        Top = 703
        Width = 195
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333320000
          243.416666666666700000
          1860.020833333333000000
          515.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '       '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape133: TQRShape
        Left = 597
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1579.562500000000000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape135: TQRShape
        Left = 342
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          904.875000000000000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRShape136: TQRShape
      Left = 357
      Top = 87
      Width = 5
      Height = 790
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2090.208333333333000000
        944.562500000000000000
        230.187500000000000000
        13.229166666666670000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
  end
  object QuickRep5: TQuickRep
    Left = 107
    Top = 3000
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.PaperSize = B5
    Page.Values = (
      100.000000000000000000
      2570.000000000000000000
      100.000000000000000000
      1820.000000000000000000
      70.000000000000000000
      30.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand8: TQRBand
      Left = 26
      Top = 868
      Width = 650
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2.645833333333333000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel44: TQRLabel
        Left = 545
        Top = 7
        Width = 46
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1441.979166666667000000
          18.520833333333330000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '               '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand9: TQRBand
      Left = 26
      Top = 38
      Width = 650
      Height = 102
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
        269.875000000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape138: TQRShape
        Left = 0
        Top = 44
        Width = 650
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel45: TQRLabel
        Left = 257
        Top = 2
        Width = 136
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          679.979166666666700000
          5.291666666666667000
          359.833333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel46: TQRLabel
        Left = 150
        Top = 30
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          396.875000000000000000
          79.375000000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel47: TQRLabel
        Left = 11
        Top = 80
        Width = 31
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          29.104166666666670000
          211.666666666666700000
          82.020833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 143
        Top = 66
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          174.625000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#20869#23481
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel49: TQRLabel
        Left = 11
        Top = 53
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          29.104166666666670000
          140.229166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape139: TQRShape
        Left = -4
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          -10.583333333333330000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape140: TQRShape
        Left = 374
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          989.541666666666800000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape141: TQRShape
        Left = 45
        Top = 48
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          119.062500000000000000
          127.000000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape142: TQRShape
        Left = 646
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1709.208333333333000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel50: TQRLabel
        Left = 7
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          18.520833333333330000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel51: TQRLabel
        Left = 296
        Top = 30
        Width = 43
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          783.166666666666800000
          79.375000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xb_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel52: TQRLabel
        Left = 408
        Top = 30
        Width = 39
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1079.500000000000000000
          79.375000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nl_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel53: TQRLabel
        Left = 552
        Top = 30
        Width = 40
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1460.500000000000000000
          79.375000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nf_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape143: TQRShape
        Left = 0
        Top = 69
        Width = 48
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          182.562500000000000000
          127.000000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel54: TQRLabel
        Left = 427
        Top = 66
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1129.770833333333000000
          174.625000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#26085#26399#12289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel55: TQRLabel
        Left = 503
        Top = 66
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1330.854166666667000000
          174.625000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26102#38388#12289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel56: TQRLabel
        Left = 549
        Top = 66
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1452.562500000000000000
          174.625000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape144: TQRShape
        Left = -5
        Top = 49
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          -13.229166666666670000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape145: TQRShape
        Left = -4
        Top = 48
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          -10.583333333333330000
          127.000000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRBand10: TQRBand
      Left = 26
      Top = 140
      Width = 650
      Height = 728
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
        1926.166666666667000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape146: TQRShape
        Left = 0
        Top = -1
        Width = 649
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          0.000000000000000000
          -2.645833333333333000
          1717.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape147: TQRShape
        Left = -4
        Top = -1
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          -2.645833333333333000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape148: TQRShape
        Left = 47
        Top = -1
        Width = 330
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          -2.645833333333333000
          873.125000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape149: TQRShape
        Left = -4
        Top = 80
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          211.666666666666700000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape150: TQRShape
        Left = 47
        Top = 80
        Width = 330
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          211.666666666666700000
          873.125000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape151: TQRShape
        Left = 376
        Top = 80
        Width = 273
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          994.833333333333200000
          211.666666666666700000
          722.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape152: TQRShape
        Left = -4
        Top = 161
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          425.979166666666700000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape153: TQRShape
        Left = -4
        Top = 242
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          640.291666666666800000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape154: TQRShape
        Left = 47
        Top = 161
        Width = 332
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          425.979166666666700000
          878.416666666666800000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape155: TQRShape
        Left = 376
        Top = 161
        Width = 273
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          994.833333333333200000
          425.979166666666700000
          722.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape156: TQRShape
        Left = 47
        Top = 242
        Width = 330
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          640.291666666666800000
          873.125000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape157: TQRShape
        Left = 376
        Top = 242
        Width = 273
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          994.833333333333200000
          640.291666666666800000
          722.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape158: TQRShape
        Left = -4
        Top = 323
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          854.604166666666800000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape159: TQRShape
        Left = 47
        Top = 323
        Width = 330
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          854.604166666666800000
          873.125000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape160: TQRShape
        Left = 376
        Top = 323
        Width = 273
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          994.833333333333200000
          854.604166666666800000
          722.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape161: TQRShape
        Left = -4
        Top = 404
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          1068.916666666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape162: TQRShape
        Left = 47
        Top = 404
        Width = 330
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          1068.916666666667000000
          873.125000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape163: TQRShape
        Left = 376
        Top = 404
        Width = 273
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          994.833333333333200000
          1068.916666666667000000
          722.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape164: TQRShape
        Left = -4
        Top = 485
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          1283.229166666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape165: TQRShape
        Left = 47
        Top = 485
        Width = 330
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          1283.229166666667000000
          873.125000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape166: TQRShape
        Left = 376
        Top = 485
        Width = 273
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          994.833333333333200000
          1283.229166666667000000
          722.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape167: TQRShape
        Left = -4
        Top = 566
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          1497.541666666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape168: TQRShape
        Left = 47
        Top = 566
        Width = 330
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          1497.541666666667000000
          873.125000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape169: TQRShape
        Left = 376
        Top = 566
        Width = 273
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          994.833333333333200000
          1497.541666666667000000
          722.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape170: TQRShape
        Left = -4
        Top = 647
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          1711.854166666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape171: TQRShape
        Left = 47
        Top = 647
        Width = 332
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          1711.854166666667000000
          878.416666666666800000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape172: TQRShape
        Left = 376
        Top = 647
        Width = 273
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          994.833333333333200000
          1711.854166666667000000
          722.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object kdysmcls1: TQRLabel
        Left = 2
        Top = 141
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          373.062500000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ypyfls_1: TQRLabel
        Left = 303
        Top = 83
        Width = 70
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          801.687500000000000000
          219.604166666666700000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRImagels_2: TQRImage
        Left = 287
        Top = 83
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          759.354166666666800000
          219.604166666666700000
          39.687500000000000000)
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
      object xmmcls_1: TQRLabel
        Left = 49
        Top = 85
        Width = 236
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          224.895833333333300000
          624.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ksrqls2: TQRLabel
        Left = -2
        Top = 169
        Width = 48
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          -5.291666666666667000
          447.145833333333300000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcls2: TQRLabel
        Left = 2
        Top = 221
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          584.729166666666800000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcls_2: TQRLabel
        Left = 49
        Top = 166
        Width = 236
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          439.208333333333300000
          624.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImagels_3: TQRImage
        Left = 287
        Top = 164
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          759.354166666666800000
          433.916666666666700000
          39.687500000000000000)
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
      object ypyfls_2: TQRLabel
        Left = 303
        Top = 164
        Width = 70
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          801.687500000000000000
          433.916666666666700000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object ksrqls3: TQRLabel
        Left = -2
        Top = 250
        Width = 48
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          -5.291666666666667000
          661.458333333333200000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcls3: TQRLabel
        Left = 2
        Top = 295
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          780.520833333333200000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcls_3: TQRLabel
        Left = 49
        Top = 247
        Width = 236
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          653.520833333333200000
          624.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImagels_4: TQRImage
        Left = 287
        Top = 243
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          759.354166666666800000
          642.937500000000000000
          39.687500000000000000)
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
      object ypyfls_3: TQRLabel
        Left = 303
        Top = 245
        Width = 70
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          801.687500000000000000
          648.229166666666800000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object ksrqls4: TQRLabel
        Left = -2
        Top = 331
        Width = 48
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333320000
          -5.291666666666667000
          875.770833333333200000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcls4: TQRLabel
        Left = 2
        Top = 375
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          992.187500000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcls_4: TQRLabel
        Left = 49
        Top = 328
        Width = 236
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          867.833333333333200000
          624.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImagels_5: TQRImage
        Left = 287
        Top = 328
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          759.354166666666800000
          867.833333333333200000
          39.687500000000000000)
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
      object ypyfls_4: TQRLabel
        Left = 303
        Top = 326
        Width = 70
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          193.145833333333300000
          801.687500000000000000
          862.541666666666800000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object ksrqls5: TQRLabel
        Left = -2
        Top = 410
        Width = 48
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          -5.291666666666667000
          1084.791666666667000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcls5: TQRLabel
        Left = 2
        Top = 456
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          1206.500000000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcls_5: TQRLabel
        Left = 49
        Top = 408
        Width = 236
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          1079.500000000000000000
          624.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImagels_6: TQRImage
        Left = 287
        Top = 405
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          759.354166666666800000
          1071.562500000000000000
          39.687500000000000000)
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
      object ypyfls_5: TQRLabel
        Left = 303
        Top = 407
        Width = 70
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          801.687500000000000000
          1076.854166666667000000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object ksrqls6: TQRLabel
        Left = -2
        Top = 491
        Width = 48
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          -5.291666666666667000
          1299.104166666667000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcls6: TQRLabel
        Left = 2
        Top = 536
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          1418.166666666667000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcls_6: TQRLabel
        Left = 49
        Top = 489
        Width = 236
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          1293.812500000000000000
          624.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImagels_7: TQRImage
        Left = 287
        Top = 486
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          759.354166666666800000
          1285.875000000000000000
          39.687500000000000000)
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
      object ypyfls_6: TQRLabel
        Left = 303
        Top = 488
        Width = 70
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          801.687500000000000000
          1291.166666666667000000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object ksrqls7: TQRLabel
        Left = -2
        Top = 571
        Width = 48
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          -5.291666666666667000
          1510.770833333333000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcls7: TQRLabel
        Left = 2
        Top = 617
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          1632.479166666667000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcls_7: TQRLabel
        Left = 49
        Top = 570
        Width = 236
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          1508.125000000000000000
          624.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImagels_8: TQRImage
        Left = 287
        Top = 567
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          759.354166666666800000
          1500.187500000000000000
          39.687500000000000000)
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
      object ypyfls_7: TQRLabel
        Left = 303
        Top = 569
        Width = 70
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          801.687500000000000000
          1505.479166666667000000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object ksrqls8: TQRLabel
        Left = -2
        Top = 653
        Width = 48
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          -5.291666666666667000
          1727.729166666667000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcls8: TQRLabel
        Left = 2
        Top = 700
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          1852.083333333333000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcls_8: TQRLabel
        Left = 49
        Top = 652
        Width = 236
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          1725.083333333333000000
          624.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRImagels_9: TQRImage
        Left = 287
        Top = 648
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          759.354166666666800000
          1714.500000000000000000
          39.687500000000000000)
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
      object ypyfls_8: TQRLabel
        Left = 303
        Top = 650
        Width = 70
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          801.687500000000000000
          1719.791666666667000000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object kdysmcls0: TQRLabel
        Left = 2
        Top = 59
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          156.104166666666700000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc0'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrqls0: TQRLabel
        Left = -2
        Top = 3
        Width = 48
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666666700000
          -5.291666666666667000
          7.937500000000000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrqls0'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcls_0: TQRLabel
        Left = 49
        Top = 3
        Width = 236
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          187.854166666666700000
          129.645833333333300000
          7.937500000000000000
          624.416666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object ypyfls_0: TQRLabel
        Left = 303
        Top = 3
        Width = 70
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          187.854166666666700000
          801.687500000000000000
          7.937500000000000000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRImagels_1: TQRImage
        Left = 287
        Top = 1
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          759.354166666666800000
          2.645833333333333000
          39.687500000000000000)
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
      object ksrqls1: TQRLabel
        Left = -2
        Top = 86
        Width = 48
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666666700000
          -5.291666666666667000
          227.541666666666700000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRLabel67: TQRLabel
      Left = 26
      Top = 876
      Width = 82
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        68.791666666666680000
        2317.750000000000000000
        216.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QRLabel67'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #40657#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRLabel58: TQRLabel
      Left = 442
      Top = 907
      Width = 82
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        1169.458333333333000000
        2399.770833333333000000
        216.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QRLabel67'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #40657#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
  end
  object QuickRep6: TQuickRep
    Left = 86
    Top = 3000
    Width = 688
    Height = 971
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    Page.PaperSize = B5
    Page.Values = (
      100.000000000000000000
      2570.000000000000000000
      100.000000000000000000
      1820.000000000000000000
      50.000000000000000000
      50.000000000000000000
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
    ShowProgress = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    object QRBand11: TQRBand
      Left = 19
      Top = 868
      Width = 650
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2.645833333333333000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel59: TQRLabel
        Left = 545
        Top = 7
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1441.979166666667000000
          18.520833333333330000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '                '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand12: TQRBand
      Left = 19
      Top = 38
      Width = 650
      Height = 102
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
        269.875000000000000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape173: TQRShape
        Left = 0
        Top = 44
        Width = 650
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          0.000000000000000000
          116.416666666666700000
          1719.791666666667000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel2jy: TQRLabel
        Left = 257
        Top = 2
        Width = 136
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          679.979166666666700000
          5.291666666666667000
          359.833333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_yymc_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel3jy: TQRLabel
        Left = 150
        Top = 30
        Width = 101
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          396.875000000000000000
          79.375000000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_brxm_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel60: TQRLabel
        Left = 11
        Top = 80
        Width = 31
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          29.104166666666670000
          211.666666666666700000
          82.020833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel62: TQRLabel
        Left = 143
        Top = 66
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          174.625000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #21307#22065#20869#23481
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel63: TQRLabel
        Left = 11
        Top = 53
        Width = 27
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          29.104166666666670000
          140.229166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26085#26399
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape174: TQRShape
        Left = -4
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          -10.583333333333330000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape196: TQRShape
        Left = 287
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          759.354166666666800000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape199: TQRShape
        Left = 45
        Top = 48
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          119.062500000000000000
          127.000000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape200: TQRShape
        Left = 646
        Top = 49
        Width = 5
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1709.208333333333000000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel20jy: TQRLabel
        Left = 7
        Top = 30
        Width = 92
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          18.520833333333330000
          79.375000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRL_bch_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel21jy: TQRLabel
        Left = 296
        Top = 30
        Width = 43
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          783.166666666666800000
          79.375000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'xb_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel26jy: TQRLabel
        Left = 408
        Top = 30
        Width = 39
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1079.500000000000000000
          79.375000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nl_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object nyjy: TQRLabel
        Left = 552
        Top = 30
        Width = 40
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1460.500000000000000000
          79.375000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'nf_cq'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape201: TQRShape
        Left = 0
        Top = 69
        Width = 48
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          0.000000000000000000
          182.562500000000000000
          127.000000000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel64: TQRLabel
        Left = 386
        Top = 60
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1021.291666666667000000
          158.750000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #25191#34892#26085#26399#12289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel65: TQRLabel
        Left = 462
        Top = 60
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1222.375000000000000000
          158.750000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #26102#38388#12289
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel66: TQRLabel
        Left = 508
        Top = 60
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1344.083333333333000000
          158.750000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape202: TQRShape
        Left = -5
        Top = 49
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          -13.229166666666670000
          129.645833333333300000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape203: TQRShape
        Left = -4
        Top = 48
        Width = 5
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          -10.583333333333330000
          127.000000000000000000
          13.229166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape247: TQRShape
        Left = 334
        Top = 49
        Width = 1
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          883.708333333333200000
          129.645833333333300000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel68: TQRLabel
        Left = 295
        Top = 51
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          780.520833333333200000
          134.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #20572#27490
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel69: TQRLabel
        Left = 295
        Top = 67
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          780.520833333333200000
          177.270833333333300000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #26102#38388
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel70: TQRLabel
        Left = 295
        Top = 83
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          780.520833333333200000
          219.604166666666700000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #31614#21517
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object DetailBand2: TQRBand
      Left = 19
      Top = 140
      Width = 650
      Height = 728
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
        1926.166666666667000000
        1719.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape204: TQRShape
        Left = 0
        Top = -1
        Width = 649
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          0.000000000000000000
          -2.645833333333333000
          1717.145833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape205: TQRShape
        Left = -4
        Top = -1
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          -2.645833333333333000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape206: TQRShape
        Left = 47
        Top = -1
        Width = 243
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          -2.645833333333333000
          642.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape207: TQRShape
        Left = -4
        Top = 80
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          211.666666666666700000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape208: TQRShape
        Left = 47
        Top = 80
        Width = 249
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          211.666666666666700000
          658.812500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape209: TQRShape
        Left = 289
        Top = 80
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          211.666666666666700000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape210: TQRShape
        Left = -4
        Top = 161
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          425.979166666666700000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape211: TQRShape
        Left = -4
        Top = 242
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          640.291666666666800000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape212: TQRShape
        Left = 47
        Top = 161
        Width = 244
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          425.979166666666700000
          645.583333333333200000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape213: TQRShape
        Left = 289
        Top = 161
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          425.979166666666700000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape214: TQRShape
        Left = 47
        Top = 242
        Width = 243
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          640.291666666666800000
          642.937500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape215: TQRShape
        Left = 289
        Top = 242
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          640.291666666666800000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape216: TQRShape
        Left = -4
        Top = 323
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          854.604166666666800000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape217: TQRShape
        Left = 47
        Top = 323
        Width = 246
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          854.604166666666800000
          650.875000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape218: TQRShape
        Left = 289
        Top = 323
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          854.604166666666800000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape219: TQRShape
        Left = -4
        Top = 404
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          1068.916666666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape220: TQRShape
        Left = 47
        Top = 404
        Width = 246
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          1068.916666666667000000
          650.875000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape221: TQRShape
        Left = 289
        Top = 404
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          1068.916666666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape222: TQRShape
        Left = -4
        Top = 485
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          1283.229166666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape223: TQRShape
        Left = 47
        Top = 485
        Width = 246
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          1283.229166666667000000
          650.875000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape224: TQRShape
        Left = 289
        Top = 485
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          1283.229166666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape225: TQRShape
        Left = -4
        Top = 566
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          1497.541666666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape226: TQRShape
        Left = 47
        Top = 566
        Width = 244
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          1497.541666666667000000
          645.583333333333200000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape227: TQRShape
        Left = 289
        Top = 566
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          1497.541666666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape228: TQRShape
        Left = -4
        Top = 647
        Width = 60
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          -10.583333333333330000
          1711.854166666667000000
          158.750000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape229: TQRShape
        Left = 47
        Top = 647
        Width = 244
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          124.354166666666700000
          1711.854166666667000000
          645.583333333333200000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape230: TQRShape
        Left = 289
        Top = 647
        Width = 360
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          764.645833333333200000
          1711.854166666667000000
          952.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape231: TQRShape
        Left = 334
        Top = 39
        Width = 315
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          883.708333333333200000
          103.187500000000000000
          833.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape232: TQRShape
        Left = 334
        Top = 120
        Width = 315
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          883.708333333333200000
          317.500000000000000000
          833.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape233: TQRShape
        Left = 334
        Top = 201
        Width = 315
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          883.708333333333200000
          531.812500000000000000
          833.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape234: TQRShape
        Left = 334
        Top = 283
        Width = 315
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          883.708333333333200000
          748.770833333333200000
          833.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape235: TQRShape
        Left = 334
        Top = 364
        Width = 315
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          883.708333333333200000
          963.083333333333200000
          833.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape236: TQRShape
        Left = 334
        Top = 445
        Width = 315
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          883.708333333333200000
          1177.395833333333000000
          833.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape237: TQRShape
        Left = 334
        Top = 526
        Width = 315
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          883.708333333333200000
          1391.708333333333000000
          833.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape238: TQRShape
        Left = 334
        Top = 607
        Width = 315
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          883.708333333333200000
          1606.020833333333000000
          833.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape239: TQRShape
        Left = 334
        Top = 687
        Width = 315
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          883.708333333333200000
          1817.687500000000000000
          833.437500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape240: TQRShape
        Left = 379
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1002.770833333333000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape241: TQRShape
        Left = 423
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1119.187500000000000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape242: TQRShape
        Left = 466
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1232.958333333333000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape243: TQRShape
        Left = 511
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1352.020833333333000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape244: TQRShape
        Left = 558
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1476.375000000000000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape245: TQRShape
        Left = 604
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1598.083333333333000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object kdysmcjy1: TQRLabel
        Left = 2
        Top = 141
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          373.062500000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ypyfjy1: TQRLabel
        Left = 245
        Top = 83
        Width = 41
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          648.229166666666800000
          219.604166666666700000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRgrImagejy2: TQRImage
        Left = 235
        Top = 81
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          621.770833333333200000
          214.312500000000000000
          39.687500000000000000)
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
      object xmmcjy1: TQRLabel
        Left = 49
        Top = 85
        Width = 186
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          224.895833333333300000
          492.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrqjy2: TQRLabel
        Left = -2
        Top = 169
        Width = 48
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          124.354166666666700000
          -5.291666666666667000
          447.145833333333300000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcjy2: TQRLabel
        Left = 2
        Top = 222
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          587.375000000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcjy2: TQRLabel
        Left = 49
        Top = 166
        Width = 187
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          439.208333333333300000
          494.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRgrImagejy3: TQRImage
        Left = 236
        Top = 162
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          624.416666666666800000
          428.625000000000000000
          39.687500000000000000)
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
      object ypyfjy2: TQRLabel
        Left = 245
        Top = 164
        Width = 41
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          648.229166666666800000
          433.916666666666700000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object ksrqjy3: TQRLabel
        Left = -2
        Top = 250
        Width = 48
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          -5.291666666666667000
          661.458333333333200000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcjy3: TQRLabel
        Left = 2
        Top = 294
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          777.875000000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcjy3: TQRLabel
        Left = 49
        Top = 247
        Width = 187
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          653.520833333333200000
          494.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRgrImagejy4: TQRImage
        Left = 236
        Top = 243
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          624.416666666666800000
          642.937500000000000000
          39.687500000000000000)
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
      object ypyfjy3: TQRLabel
        Left = 245
        Top = 245
        Width = 41
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          648.229166666666800000
          648.229166666666800000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object ksrqjy4: TQRLabel
        Left = -2
        Top = 331
        Width = 48
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333320000
          -5.291666666666667000
          875.770833333333200000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcjy4: TQRLabel
        Left = 2
        Top = 375
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          992.187500000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcjy4: TQRLabel
        Left = 49
        Top = 328
        Width = 187
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          867.833333333333200000
          494.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRgrImagejy5: TQRImage
        Left = 236
        Top = 324
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          624.416666666666800000
          857.250000000000000000
          39.687500000000000000)
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
      object ypyfjy4: TQRLabel
        Left = 245
        Top = 326
        Width = 41
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          193.145833333333300000
          648.229166666666800000
          862.541666666666800000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object ksrqjy5: TQRLabel
        Left = -2
        Top = 410
        Width = 48
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          -5.291666666666667000
          1084.791666666667000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcjy5: TQRLabel
        Left = 2
        Top = 456
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          1206.500000000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcjy5: TQRLabel
        Left = 49
        Top = 408
        Width = 187
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          1079.500000000000000000
          494.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRgrImagejy6: TQRImage
        Left = 236
        Top = 405
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          624.416666666666800000
          1071.562500000000000000
          39.687500000000000000)
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
      object ypyfjy5: TQRLabel
        Left = 245
        Top = 407
        Width = 41
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          648.229166666666800000
          1076.854166666667000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object ksrqjy6: TQRLabel
        Left = -2
        Top = 491
        Width = 48
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          -5.291666666666667000
          1299.104166666667000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcjy6: TQRLabel
        Left = 2
        Top = 536
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          1418.166666666667000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcjy6: TQRLabel
        Left = 49
        Top = 489
        Width = 187
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          1293.812500000000000000
          494.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRgrImagejy7: TQRImage
        Left = 237
        Top = 486
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          627.062500000000000000
          1285.875000000000000000
          39.687500000000000000)
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
      object ypyfjy6: TQRLabel
        Left = 245
        Top = 488
        Width = 41
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          648.229166666666800000
          1291.166666666667000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object ksrqjy7: TQRLabel
        Left = -2
        Top = 571
        Width = 48
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          -5.291666666666667000
          1510.770833333333000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcjy7: TQRLabel
        Left = 2
        Top = 617
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          1632.479166666667000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcjy7: TQRLabel
        Left = 49
        Top = 570
        Width = 187
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          1508.125000000000000000
          494.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRgrImagejy8: TQRImage
        Left = 237
        Top = 567
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          627.062500000000000000
          1500.187500000000000000
          39.687500000000000000)
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
      object ypyfjy7: TQRLabel
        Left = 245
        Top = 569
        Width = 41
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          648.229166666666800000
          1505.479166666667000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object ksrqjy8: TQRLabel
        Left = -2
        Top = 653
        Width = 48
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          -5.291666666666667000
          1727.729166666667000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object kdysmcjy8: TQRLabel
        Left = 2
        Top = 700
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          1852.083333333333000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcjy8: TQRLabel
        Left = 49
        Top = 652
        Width = 187
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          129.645833333333300000
          1725.083333333333000000
          494.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRgrImagejy9: TQRImage
        Left = 236
        Top = 648
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          624.416666666666800000
          1714.500000000000000000
          39.687500000000000000)
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
      object ypyfjy8: TQRLabel
        Left = 245
        Top = 650
        Width = 41
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          648.229166666666800000
          1719.791666666667000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyf'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object kdysmcjy0: TQRLabel
        Left = 2
        Top = 59
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          5.291666666666667000
          156.104166666666700000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'kdysmcjy0'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ksrqjy0: TQRLabel
        Left = -2
        Top = 3
        Width = 48
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666666700000
          -5.291666666666667000
          7.937500000000000000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq_0'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object xmmcjy0: TQRLabel
        Left = 49
        Top = 3
        Width = 187
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          187.854166666666700000
          129.645833333333300000
          7.937500000000000000
          494.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'xmmcjy0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object ypyfjy0: TQRLabel
        Left = 245
        Top = 3
        Width = 41
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          187.854166666666700000
          648.229166666666800000
          7.937500000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ypyfjy0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #23435#20307
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRgrImagejy1: TQRImage
        Left = 236
        Top = 1
        Width = 15
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          52.916666666666670000
          624.416666666666800000
          2.645833333333333000
          39.687500000000000000)
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
      object ksrqjy1: TQRLabel
        Left = -2
        Top = 86
        Width = 48
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666666700000
          -5.291666666666667000
          227.541666666666700000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ksrq'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape246: TQRShape
        Left = 334
        Top = -2
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          883.708333333333200000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRLabel61jy: TQRLabel
      Left = 34
      Top = 875
      Width = 100
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        89.958333333333320000
        2315.104166666667000000
        264.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QRLabel61jy'
      Color = clWhite
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #40657#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
  end
  object pnl_lclj: TPanel
    Left = 0
    Top = 50
    Width = 1258
    Height = 34
    Align = alTop
    AutoSize = True
    BevelInner = bvLowered
    TabOrder = 15
    Visible = False
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 1254
      Height = 30
      AutoSize = True
      ButtonHeight = 30
      ButtonWidth = 65
      Caption = 'ToolBar1'
      Images = ImageList1
      List = True
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = #22686#21152
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 69
        Top = 0
        AutoSize = True
        Caption = #25554#20837
        ImageIndex = 1
        OnClick = ToolButton2Click
      end
      object ToolButton4: TToolButton
        Left = 138
        Top = 0
        AutoSize = True
        Caption = #21024#38500
        ImageIndex = 2
        OnClick = ToolButton4Click
      end
      object ToolButton3: TToolButton
        Left = 207
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 215
        Top = 0
        AutoSize = True
        Caption = #23548#20837
        ImageIndex = 1
      end
      object ToolButton7: TToolButton
        Left = 284
        Top = 0
        AutoSize = True
        Caption = #20445#23384
        ImageIndex = 4
        OnClick = ToolButton7Click
      end
      object ToolButton9: TToolButton
        Left = 353
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 361
        Top = 0
        AutoSize = True
        Caption = #36864#20986
        ImageIndex = 5
        OnClick = ToolButton8Click
      end
    end
  end
  object ds_ypyf: TDataSource
    DataSet = qry_ypyf
    Left = 480
    Top = 416
  end
  object qry_ypyf: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_ypyf')
    Left = 480
    Top = 456
  end
  object ds_gytj: TDataSource
    DataSet = qry_gytj
    Left = 768
    Top = 416
  end
  object qry_gytj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from sys_gytj')
    Left = 776
    Top = 456
  end
  object qry_yz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qry_yzAfterOpen
    BeforeInsert = qry_yzBeforeInsert
    AfterInsert = qry_yzAfterInsert
    AfterScroll = qry_yzAfterScroll
    Parameters = <
      item
        Name = 'cxyzrq'
        Attributes = [paSigned, paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 4
        Value = 0d
      end
      item
        Name = 'cxzyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'cxyzsx'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'cxlb'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zybl_zyyz where datediff(day,yzrq,:cxyzrq)=0 and z' +
        'yh=:cxzyh and yzsx=:cxyzsx and lb=:cxlb and zxbz=0'
      'order by xh')
    Left = 696
    Top = 456
    object qry_yzid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qry_yzph: TStringField
      FieldName = 'ph'
      Size = 16
    end
    object qry_yztmh: TStringField
      FieldName = 'tmh'
      Size = 9
    end
    object qry_yzzyh: TStringField
      FieldName = 'zyh'
      FixedChar = True
      Size = 16
    end
    object qry_yzxmdm: TStringField
      FieldName = 'xmdm'
      Size = 14
    end
    object qry_yzxmmc: TStringField
      FieldName = 'xmmc'
      Size = 100
    end
    object qry_yzlb: TStringField
      FieldName = 'lb'
      FixedChar = True
      Size = 4
    end
    object qry_yzdw: TStringField
      FieldName = 'dw'
      Size = 10
    end
    object qry_yzypdwid: TIntegerField
      FieldName = 'ypdwid'
    end
    object qry_yzypbzbl: TIntegerField
      FieldName = 'ypbzbl'
    end
    object qry_yzsl: TIntegerField
      FieldName = 'sl'
    end
    object qry_yzyplsj: TBCDField
      FieldName = 'yplsj'
      Precision = 18
    end
    object qry_yzypcgj: TBCDField
      FieldName = 'ypcgj'
      Precision = 18
    end
    object qry_yzypyf: TStringField
      FieldName = 'ypyf'
      FixedChar = True
      Size = 4
    end
    object qry_yzypyl: TStringField
      FieldName = 'ypyl'
      Size = 10
    end
    object qry_yzyldw: TStringField
      FieldName = 'yldw'
      Size = 10
    end
    object qry_yzyytj: TStringField
      DisplayWidth = 8
      FieldName = 'yytj'
      FixedChar = True
      Size = 8
    end
    object qry_yzyplb: TStringField
      FieldName = 'yplb'
      FixedChar = True
      Size = 10
    end
    object qry_yzjcmd: TStringField
      FieldName = 'jcmd'
      Size = 100
    end
    object qry_yztzbz: TBooleanField
      FieldName = 'tzbz'
    end
    object qry_yzzfbz: TBooleanField
      FieldName = 'zfbz'
    end
    object qry_yzzxbz: TBooleanField
      FieldName = 'zxbz'
    end
    object qry_yzfzbz: TIntegerField
      FieldName = 'fzbz'
    end
    object qry_yztzrq: TDateTimeField
      FieldName = 'tzrq'
    end
    object qry_yztzry: TStringField
      FieldName = 'tzry'
      FixedChar = True
      Size = 4
    end
    object qry_yzzfrq: TDateTimeField
      FieldName = 'zfrq'
    end
    object qry_yzzfry: TStringField
      FieldName = 'zfry'
      FixedChar = True
      Size = 4
    end
    object qry_yzzxrq: TDateTimeField
      FieldName = 'zxrq'
    end
    object qry_yzzxry: TStringField
      FieldName = 'zxry'
      FixedChar = True
      Size = 4
    end
    object qry_yzxgrq: TDateTimeField
      FieldName = 'xgrq'
    end
    object qry_yzxgry: TStringField
      FieldName = 'xgry'
      FixedChar = True
      Size = 4
    end
    object qry_yzczks: TStringField
      FieldName = 'czks'
      FixedChar = True
      Size = 4
    end
    object qry_yzkdks: TStringField
      FieldName = 'kdks'
      FixedChar = True
      Size = 4
    end
    object qry_yzkdrq: TDateTimeField
      FieldName = 'kdrq'
    end
    object qry_yzkdys: TStringField
      FieldName = 'kdys'
      FixedChar = True
      Size = 4
    end
    object qry_yzyzrq: TDateTimeField
      FieldName = 'yzrq'
    end
    object qry_yzyzsx: TStringField
      FieldName = 'yzsx'
      FixedChar = True
      Size = 4
    end
    object qry_yzshbz: TBooleanField
      FieldName = 'shbz'
    end
    object qry_yzshry: TStringField
      FieldName = 'shry'
      FixedChar = True
      Size = 4
    end
    object qry_yzjcbw: TStringField
      FieldName = 'jcbw'
      Size = 50
    end
    object qry_yzjcff: TStringField
      FieldName = 'jcff'
      Size = 50
    end
    object qry_yzypkcbz: TBooleanField
      FieldName = 'ypkcbz'
    end
    object qry_yzczys: TStringField
      FieldName = 'czys'
      Size = 4
    end
    object qry_yzgg: TStringField
      FieldName = 'gg'
      Size = 50
    end
    object qry_yzczksmc: TStringField
      FieldKind = fkLookup
      FieldName = 'czksmc'
      LookupDataSet = qry_ks
      LookupKeyFields = 'dm'
      LookupResultField = 'mc'
      KeyFields = 'czks'
      Lookup = True
    end
    object qry_yzfzph: TStringField
      FieldName = 'fzph'
    end
    object qry_yzbz: TStringField
      FieldName = 'bz'
      Size = 100
    end
    object qry_yzjyyb: TStringField
      FieldName = 'jyyb'
      Size = 10
    end
    object qry_yzxh: TIntegerField
      FieldName = 'xh'
    end
    object qry_yzjyflbh: TStringField
      FieldName = 'jyflbh'
    end
    object qry_yzxyzbz: TBooleanField
      FieldName = 'xyzbz'
    end
    object qry_yzssid: TIntegerField
      FieldName = 'ssid'
    end
  end
  object ds_yz: TDataSource
    DataSet = qry_yz
    Left = 688
    Top = 416
  end
  object ds_cx_yp_yz: TDataSource
    DataSet = sp_cx_yp_yz
    Left = 376
    Top = 416
  end
  object qry_yldw: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct yldw,b.code pym '
      'from sys_ypdm a,sys_pym b'
      
        'where a.yldw *=b.text and yldw is not null and yldw<>'#39#39' order by' +
        ' yldw')
    Left = 592
    Top = 456
  end
  object ds_yldw: TDataSource
    DataSet = qry_yldw
    Left = 592
    Top = 416
  end
  object qry_mb: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'Varid1'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Varid2'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'Select aa.yzlb,aa.sl,bb.xmdm,bb.xmmc,bb.hotkey,bb.dw,bb.bz,bb.qy' +
        'bz,'#39#39' as zydwid,'#39#39' as ypbzbl,0 as ypcgj,0 as yplsj,'#39#39' as yldw fr' +
        'om  zybl_ztmx aa,sys_yzxm bb '
      'where aa.ztid=:Varid1 And aa.yzdm=bb.xmdm'
      'union'
      
        'Select aa.yzlb,aa.sl,aa.yzdm,bb.ypmc,'#39#39' as hotkey,bb.zyyfdw,bb.b' +
        'z,bb.sybz,bb.zydwid,bb.zyyfzhl as ypbzbl,bb.zypfj as ypcgj,bb.zy' +
        'lsj as yplsj,bb.yldw from  zybl_ztmx aa,sys_ypdm bb'
      'where aa.ztid=:Varid2 and aa.yzdm=bb.ypdm '
      'Order by yzlb ')
    Left = 112
    Top = 256
  end
  object qry_ks: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select dm,mc,pym,kssx  from sys_ksdm where sybz=1 and kssx <>'#39'16' +
        #39' ')
    Left = 520
    Top = 456
  end
  object ds_ks: TDataSource
    DataSet = qry_ks
    Left = 520
    Top = 416
  end
  object sp_cx_yzxm: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_yzcx_dryzxm'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@yzsx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 6
        Value = Null
      end
      item
        Name = '@ksdm'
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 624
    Top = 456
  end
  object ds_cx_yzxm: TDataSource
    DataSet = sp_cx_yzxm
    Left = 624
    Top = 416
  end
  object sp_jbxx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_jbxxAfterOpen
    ProcedureName = 'bqgl_cx_zybrjbqk;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 9
        Value = Null
      end
      item
        Name = '@xm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@bch'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 736
    Top = 456
  end
  object ds_jbxx: TDataSource
    DataSet = sp_jbxx
    Left = 688
    Top = 368
  end
  object qry_pub: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'Varid1'
        Size = -1
        Value = Null
      end
      item
        Name = 'Varid2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select aa.yzlb,aa.sl,bb.xmdm,bb.xmmc,bb.hotkey,bb.dw,bb.bz,bb.qy' +
        'bz,'#39#39' as zydwid,'#39#39' as ypbzbl,0 as ypcgj,0 as yplsj,'#39#39' as yldw fr' +
        'om  zybl_ztmx aa,sys_yzxm bb '
      'where aa.ztid=:Varid1 And aa.yzdm=bb.xmdm'
      'union'
      
        'Select aa.yzlb,aa.sl,aa.yzdm,bb.ypmc,'#39#39' as hotkey,bb.zyyfdw,bb.b' +
        'z,bb.sybz,bb.zydwid,bb.zyyfzhl as ypbzbl,bb.zypfj as ypcgj,bb.zy' +
        'lsj as yplsj,bb.yldw from  zybl_ztmx aa,sys_ypdm bb'
      'where aa.ztid=:Varid2 and aa.yzdm=bb.ypdm '
      'Order by yzlb ')
    Left = 128
    Top = 160
  end
  object ds_brxx: TDataSource
    Left = 608
    Top = 312
  end
  object sp_dryz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = sp_dryzAfterOpen
    ProcedureName = 'zybl_cx_dryzxm;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@yzsx'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end>
    Left = 552
    Top = 456
  end
  object ds_dryz: TDataSource
    DataSet = sp_dryz
    Left = 552
    Top = 416
  end
  object qry_yfdm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'ksdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.*,b.mc xgksmc,c.mc chyfmc,d.mc cyyfmc,e.mc zjyfmc,f.mc ' +
        'clyfmc '
      
        'from sys_ksdm a,sys_ksdm b ,sys_ksdm c,sys_ksdm d,sys_ksdm e ,sy' +
        's_ksdm f  '
      'where a.xgks *= b.dm and'
      '      a.chyf *= c.dm and'
      '      a.cyyf *= d.dm and'
      '      a.zjyf *= e.dm and'
      '      a.clyf *= f.dm and'
      'a.dm =:ksdm')
    Left = 258
    Top = 200
  end
  object qry_yzlist: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_zyyz_list')
    Left = 136
    Top = 200
  end
  object qry_ypyz: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 184
    Top = 312
  end
  object qry_ys: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qry_ysAfterScroll
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select dm,mc,ksdm,pym from sys_czy where ysbz= 1 and ksdm= :ksdm')
    Left = 664
    Top = 456
  end
  object ds_ys: TDataSource
    DataSet = qry_ys
    Left = 656
    Top = 416
  end
  object PopupMenu1: TPopupMenu
    Left = 94
    Top = 478
    object N1: TMenuItem
      Caption = #21333#20010#20572#27490#21307#22065
      OnClick = N1Click
    end
    object aptzyz: TMenuItem
      Caption = #25209#37327#20572#27490#21307#22065
      OnClick = aptzyzClick
    end
    object N2: TMenuItem
      Caption = #20462' '#25913'  '#21307' '#22065
      OnClick = N2Click
    end
    object N5: TMenuItem
      Caption = #21462#28040#20572#27490#21307#22065
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #20462#25913#21307#22065#20572#27490#26102#38388
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #36755#28082#20998#32452
      OnClick = N7Click
    end
    object N8: TMenuItem
      Caption = #21462#28040#36755#28082#20998#32452
      OnClick = N8Click
    end
    object N11: TMenuItem
      Caption = #20462#25913#33647#21697#29992#37327
      OnClick = N11Click
    end
  end
  object sp_cx_yp_yz: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zybl_cx_ypyz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pym'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@jsfs'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@ksdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ls'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end>
    Left = 376
    Top = 456
  end
  object qry_ztyz: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_zyyz where 1=2')
    Left = 72
    Top = 256
  end
  object qry_yzsx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_yzclb where lb = '#39'01'#39)
    Left = 200
    Top = 203
  end
  object ds_yzsx: TDataSource
    DataSet = qry_yzsx
    Left = 144
    Top = 501
  end
  object qry_xmyz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select xmdm,xmmc,lb  from zybl_zyyz where 1=2')
    Left = 72
    Top = 256
  end
  object qru_yzxg: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 277
    Top = 261
  end
  object sp_yzup_list: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_yzup_list;1'
    Parameters = <
      item
        Name = '@czydm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 50
        Value = Null
      end>
    Left = 144
    Top = 312
  end
  object sp_zxjl_ls: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = sp_zxjl_lsAfterOpen
    ProcedureName = 'zybl_cx_yzzxjl;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = ' '
      end
      item
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 336
    Top = 448
  end
  object ds_zxjl_ls: TDataSource
    DataSet = sp_zxjl_ls
    Left = 337
    Top = 416
  end
  object ds_zxjl_cq: TDataSource
    DataSet = sp_zxjl_cq
    Left = 408
    Top = 416
  end
  object sp_zxjl_cq: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = sp_zxjl_cqAfterOpen
    ProcedureName = 'zybl_cx_yzzxjl;1'
    Parameters = <
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = ' '
      end
      item
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 408
    Top = 456
  end
  object qry_dj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'zyh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'tmh'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end
      item
        Name = 'ksdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from zysf_zydj where (zyh=:zyh or tmh like :tmh) and ks' +
        'dm=:ksdm')
    Left = 448
    Top = 456
  end
  object ds_dj: TDataSource
    DataSet = qry_dj
    Left = 448
    Top = 416
  end
  object sp_cx_yzyljssl: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyyz_cx_ypyljsypsl'
    Parameters = <
      item
        Name = '@ypdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 14
        Value = Null
      end
      item
        Name = '@ypyf'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ypyl'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 6
        Precision = 18
        Value = Null
      end>
    Left = 147
    Top = 265
  end
  object qry_yzmbmx: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_ztmx where 1=2')
    Left = 89
    Top = 215
  end
  object sp_cx_tzyz_xx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_cx_yztz'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@xmdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 224
    Top = 264
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu2Popup
    Left = 158
    Top = 534
    object N3: TMenuItem
      Caption = #36755#28082#20998#32452
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #21462#28040#20998#32452
      OnClick = N4Click
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object ywxxcx: TMenuItem
      Caption = #33647#29289#20449#24687#26597#35810
      Hint = #33647#29289#20449#24687#26597#35810
      object m_pass101: TMenuItem
        Caption = #20020#24202#33647#29289#20449#24687#21442#32771
        Hint = #20020#24202#33647#29289#20449#24687#21442#32771
        OnClick = m_pass101Click
      end
      object m_pass102: TMenuItem
        Caption = #33647#21697#35828#26126#20070
        Hint = #33647#21697#35828#26126#20070
        OnClick = m_pass102Click
      end
      object m_pass103: TMenuItem
        Caption = #30149#20154#29992#33647#25945#32946
        Hint = #30149#20154#29992#33647#25945#32946
        OnClick = m_pass103Click
      end
      object m_pass107: TMenuItem
        Caption = #20013#22269#33647#20856
        Hint = #20013#22269#33647#20856
        OnClick = m_pass107Click
      end
      object m_pass104: TMenuItem
        Caption = #26816#39564#20540
        Hint = #26816#39564#20540
        OnClick = m_pass104Click
      end
      object m_pass220: TMenuItem
        Caption = #20020#24202#26816#39564#20449#24687#21442#32771
        Hint = #20020#24202#26816#39564#20449#24687#21442#32771
        OnClick = m_pass220Click
      end
      object N43: TMenuItem
        Caption = '-'
      end
      object m_pass30: TMenuItem
        Caption = #19987#39033#20449#24687
        Hint = #19987#39033#20449#24687
        OnClick = m_pass30Click
        object m_pass201: TMenuItem
          Caption = #33647#29289'-'#33647#29289#30456#20114#20316#29992
          Hint = #33647#29289'-'#33647#29289#30456#20114#20316#29992
          OnClick = m_pass201Click
        end
        object m_pass202: TMenuItem
          Caption = #33647#29289'-'#39135#29289#30456#20114#20316#29992
          Hint = #33647#29289'-'#39135#29289#30456#20114#20316#29992
          OnClick = m_pass202Click
        end
        object N30: TMenuItem
          Caption = '-'
        end
        object m_pass203: TMenuItem
          Caption = #22269#20869#27880#23556#21058#20307#22806#37197#20237
          Hint = #22269#20869#27880#23556#21058#20307#22806#37197#20237
          OnClick = m_pass203Click
        end
        object m_pass204: TMenuItem
          Caption = #22269#22806#27880#23556#21058#20307#22806#37197#20237
          Hint = #22269#22806#27880#23556#21058#20307#22806#37197#20237
          OnClick = m_pass204Click
        end
        object N31: TMenuItem
          Caption = '-'
        end
        object m_pass205: TMenuItem
          Caption = #31105#24524#30151
          Hint = #31105#24524#30151
          OnClick = m_pass205Click
        end
        object m_pass206: TMenuItem
          Caption = #21103#20316#29992
          Hint = #21103#20316#29992
          OnClick = m_pass206Click
        end
        object N32: TMenuItem
          Caption = '-'
        end
        object m_pass207: TMenuItem
          Caption = #32769#24180#20154#29992#33647
          Hint = #32769#24180#20154#29992#33647
          OnClick = m_pass207Click
        end
        object m_pass208: TMenuItem
          Caption = #20799#31461#29992#33647
          Hint = #20799#31461#29992#33647
          OnClick = m_pass208Click
        end
        object m_pass209: TMenuItem
          Caption = #22922#23072#26399#29992#33647
          Hint = #22922#23072#26399#29992#33647
          OnClick = m_pass209Click
        end
        object m_pass210: TMenuItem
          Caption = #21754#20083#26399#29992#33647
          Hint = #21754#20083#26399#29992#33647
          OnClick = m_pass210Click
        end
      end
      object N44: TMenuItem
        Caption = '-'
      end
      object m_pass106: TMenuItem
        Caption = #33647#29289#20449#24687#20013#24515
        Hint = #33647#29289#20449#24687#20013#24515
        OnClick = m_pass106Click
      end
      object N45: TMenuItem
        Caption = '-'
      end
      object m_pass13: TMenuItem
        Caption = #33647#21697#37197#23545#20449#24687
        Hint = #33647#21697#37197#23545#20449#24687
        OnClick = m_pass13Click
      end
      object m_pass14: TMenuItem
        Caption = #32473#33647#36884#24452#37197#23545#20449#24687
        Hint = #32473#33647#36884#24452#37197#23545#20449#24687
        OnClick = m_pass14Click
      end
      object m_pass105: TMenuItem
        Caption = #21307#38498#33647#21697#20449#24687
        Hint = #21307#38498#33647#21697#20449#24687
        OnClick = m_pass105Click
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object m_pass11: TMenuItem
        Caption = #31995#32479#35774#32622
        Enabled = False
        Hint = #31995#32479#35774#32622
        OnClick = m_pass11Click
      end
      object m_pass22: TMenuItem
        Caption = #36807#25935#21490'/'#30149#29983#29366#24577#31649#29702
        Hint = #36807#25935#21490'/'#30149#29983#29366#24577#31649#29702
        OnClick = m_pass22Click
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object m_pass50: TMenuItem
        Caption = #29992#33647#30740#31350
        Hint = #29992#33647#30740#31350
        OnClick = m_pass50Click
      end
      object N48: TMenuItem
        Caption = '-'
      end
      object m_pass60: TMenuItem
        Caption = #21333#33647#35686#21578
        Hint = #21333#33647#35686#21578
        OnClick = m_pass60Click
      end
      object m_pass70: TMenuItem
        Caption = #23457#26597
        Hint = #23457#26597
        OnClick = m_pass70Click
      end
      object N49: TMenuItem
        Caption = '-'
      end
      object m_pass301: TMenuItem
        Caption = #24110#21161
        Hint = #24110#21161
        OnClick = m_pass301Click
      end
    end
  end
  object sp_zxjl_cq_dy: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    ProcedureName = 'zybl_cx_yzzxjl_print;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 112
    Top = 336
  end
  object sp_zxjl_ls_dy: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    ProcedureName = 'zybl_cx_yzzxjl_print;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@fs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 112
    Top = 304
  end
  object sp_get_maxxh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_getmaxxh'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@zyh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end>
    Left = 312
    Top = 216
  end
  object sp_set_xh: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_setxh'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Name = '@dqid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@dqxh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tzfx'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 368
    Top = 240
  end
  object sp_yzsj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyyz_yzsj'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@scyzsj'
        Attributes = [paNullable]
        DataType = ftDateTime
        Direction = pdInputOutput
        Value = Null
      end>
    Left = 664
    Top = 240
  end
  object sp_tzyz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_up_tzyz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Size = 8
        Value = Null
      end
      item
        Name = '@tzyzsj'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fzph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 744
    Top = 240
  end
  object ADODataSet1: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select * from yzcx_tz Where jssj>=GetDate()-2 and qrfs=1  and id' +
      '=:id order by pxxh ,id'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 425
    Top = 206
  end
  object sp_qxtzyz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_up_qxtzyz;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
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
        Size = 8
        Value = Null
      end
      item
        Name = '@tzyzsj'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fzph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 808
    Top = 240
  end
  object sp_up_yjjssj: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_up_zxrq'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fzph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@zfrq'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@kdrq'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@qxbz'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 856
    Top = 240
  end
  object sp_syfz_cxfz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_up_syfz'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@fzph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 912
    Top = 240
  end
  object sp_up_qxsyfz: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_up_qxsyfz'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@fzph'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@sczt'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 904
    Top = 280
  end
  object qry_qtyzxm: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zybl_ztmx where 1=2')
    Left = 297
    Top = 415
  end
  object ds_qtyzxm: TDataSource
    DataSet = qry_qtyzxm
    Left = 265
    Top = 416
  end
  object qry_cx_jyjg: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zyh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      ''
      'select distinct a.tmh,a.brxm,a.yb,a.cysj,a.jyfzbh,b.*,c.jsrq '
      'from DZBL_CYJL_zy a join dzbl_jyjg_pt b on a.jyfzbh=b.barcode'
      'join dzbl_jysqd c on a.jyfzbh=c.fzbh and a.zyh=c.zyh '
      'where a.zyh=:zyh '
      'order by c.jsrq desc'
      '')
    Left = 664
    Top = 520
  end
  object ds_cx_jyjg: TDataSource
    DataSet = qry_cx_jyjg
    Left = 704
    Top = 518
  end
  object PopupMenu3: TPopupMenu
    Left = 134
    Top = 454
    object MenuItem1: TMenuItem
      Caption = #20840#37096#25171#21360
      OnClick = BitBtn3Click
    end
    object N21: TMenuItem
      Caption = #36873#25321#25171#21360
      OnClick = N21Click
    end
    object MenuItem2: TMenuItem
      Caption = #36873#25321#32493#25171
      OnClick = MenuItem2Click
    end
    object N13: TMenuItem
      Caption = #25171#21360#31354#30333#21333
      OnClick = N13Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 190
    Top = 438
    object MenuItem3: TMenuItem
      Caption = #20840#37096#25171#21360
      OnClick = MenuItem3Click
    end
    object N22: TMenuItem
      Caption = #36873#25321#25171#21360
      OnClick = N22Click
    end
    object MenuItem4: TMenuItem
      Caption = #36873#25321#32493#25171
      OnClick = MenuItem4Click
    end
    object N14: TMenuItem
      Caption = #25171#21360#31354#30333#21333
      OnClick = N14Click
    end
  end
  object PopupMenu5: TPopupMenu
    Left = 190
    Top = 478
    object MenuItem5: TMenuItem
      Caption = #20840#37096#25171#21360
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = #36873#25321#32493#25171
      OnClick = MenuItem6Click
    end
    object N15: TMenuItem
      Caption = #25171#21360#31354#30333#21333
      OnClick = N15Click
    end
  end
  object PopupMenu6: TPopupMenu
    Left = 238
    Top = 478
    object MenuItem7: TMenuItem
      Caption = #20840#37096#25171#21360
      OnClick = MenuItem7Click
    end
    object MenuItem8: TMenuItem
      Caption = #36873#25321#32493#25171
      OnClick = MenuItem8Click
    end
    object N16: TMenuItem
      Caption = #25171#21360#31354#30333#21333
      OnClick = N16Click
    end
  end
  object PopupMenu7: TPopupMenu
    Left = 302
    Top = 478
    object MenuItem9: TMenuItem
      Caption = #38271#26399#27835#30103#21333#20840#37096#25171#21360
      OnClick = MenuItem9Click
    end
    object MenuItem10: TMenuItem
      Caption = #38271#26399#27835#30103#21333#36873#25321#32493#25171
      OnClick = MenuItem10Click
    end
    object N9: TMenuItem
      Caption = #20020#26102#27835#30103#21333#20840#37096#25171#21360
      OnClick = N9Click
    end
    object N10: TMenuItem
      Caption = #20020#26102#27835#30103#21333#36873#25321#32493#25171
      OnClick = N10Click
    end
    object N17: TMenuItem
      Caption = #25171#21360#38271#26399#31354#30333#21333
      OnClick = N17Click
    end
    object N18: TMenuItem
      Caption = #25171#21360#20020#26102#31354#30333#21333
      OnClick = N18Click
    end
  end
  object PopupMenu8: TPopupMenu
    Left = 358
    Top = 510
    object MenuItem11: TMenuItem
      Caption = #38271#26399#26597#25151#21333#20840#37096#25171#21360
      OnClick = MenuItem11Click
    end
    object MenuItem13: TMenuItem
      Caption = #38271#26399#26597#25151#21333#36873#25321#32493#25171
      OnClick = MenuItem13Click
    end
    object MenuItem12: TMenuItem
      Caption = #20020#26102#26597#25151#21333#20840#37096#25171#21360
      OnClick = MenuItem12Click
    end
    object MenuItem14: TMenuItem
      Caption = #20020#26102#26597#25151#21333#36873#25321#32493#25171
      OnClick = MenuItem14Click
    end
  end
  object qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'zyh'
        Size = -1
        Value = Null
      end
      item
        Name = 'zyh1'
        Size = -1
        Value = Null
      end
      item
        Name = 'zyh2'
        Size = -1
        Value = Null
      end
      item
        Name = 'zyh3'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update zybl_zyyz WITH(ROWLOCK) set xyzbz=1 where zyh=:zyh'
      ''
      ''
      
        'update  zybl_zyyz  WITH(ROWLOCK)  set xyzbz=0 where yzsx='#39#20020#26102#39' an' +
        'd  id not in (select yzid from zybl_zyyz_yzzxqd_mx) and  zyh=:zy' +
        'h1'
      ''
      ''
      
        'update zybl_zyyz  WITH(ROWLOCK) set xyzbz=0 from zybl_zyyz where' +
        ' yzsx='#39#38271#26399#39' and  id not in (select yzid from zybl_zyyz_yzzxqd_mx)' +
        ' and tzbz=0 and  zyh=:zyh2 '
      ''
      ''
      
        'update zybl_zyyz WITH(ROWLOCK)  set xyzbz=0 from  zybl_zyyz a,(s' +
        'elect zyh,yzid,max(zxsj) zxsj from zybl_zyyz_yzzxqd_mx group by ' +
        'zyh,yzid) b where a.yzsx='#39#38271#26399#39' and tzbz=1 and a.zyh=b.zyh and a.i' +
        'd=b.yzid'
      'and a.tzrq>b.zxsj and  a.zyh=:zyh3')
    Left = 264
    Top = 504
  end
  object sp_ty_ypcx: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'bqkf_ty_ypcx;1'
    Parameters = <>
    Left = 384
    Top = 504
  end
  object sp_lsyztf: TADOStoredProc
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'zyyz_in_lsyztf'
    Parameters = <>
    Left = 848
    Top = 424
  end
  object qry_yf: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zyh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      ''
      'select distinct a.tmh,a.brxm,a.yb,a.cysj,a.jyfzbh,b.* '
      'from DZBL_CYJL_zy a join dzbl_jyjg_pt b on a.jyfzbh=b.barcode '
      'where a.zyh=:zyh'
      '')
    Left = 792
    Top = 504
  end
  object ds_yf: TDataSource
    DataSet = qry_yf
    Left = 832
    Top = 502
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 80
    Top = 384
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 544
    Top = 56
    Bitmap = {
      494C010106000800700018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9CBCF00946868009573
      7400BAB0B3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C596
      7800A8522200A3461F0081543B00979C9F009EA2A700A7ABAF00AFB3B800B7BA
      BA00B0B0B000A2A2A20097979700797777006563650068504800D3ACAD009D69
      69008E5B5B0089504B00AC959500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000095707100875B5C00A68F91000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0936700B04B
      0100BE691F00C1691D0096694200B1B6B900D1955500D6A06300DDA76500F2E4
      D300FFFFFF00F6F6F600E5E5E500807F800068716B0089B49900DAB7B500A26E
      6E00A4717100A37171008E5F5F005E5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C9C6CA00CDA3A300C39696008F5C5C00814F4F0099767700BAB0B3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF935F00BC560100C270
      2400C5762800C97526009E754B009DA1A500C56B1700C6762500CD7B2000DBC7
      B000EDEFF200FDFDFD0039A33A00C1BFC1005B72600007A72F00CEB7AD00A671
      7200A5727200A5727200AA7474005A5252000000000000000000000000000000
      000000000000000000000000000000000000999D9E00636464006C6D6D007173
      73006D707100CDA7A700C59898009F6C6C00A16E6E0095626200845151008158
      5900AA9394000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6620700C06D2000C170
      2600C16F2400C4702200A0774F00A7ABB200B85A0F00BC682000C4701D00CDB9
      A400DCDFE100EDEDED000590060045A04600A6B2A90000881400D2B6AF00AA75
      7600A5727200A8747400AD777700615758000000000000000000000000000000
      00000000000000000000000000000000000073747400807F8000706E6F00AEA5
      AC00B0ABB200D9B4B600C6999900A06D6D00A16E6E00A26F6F00A37070009E6B
      6B008B5757006F47470091919300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CD670700C06B2000BE6D
      2200BF6C2200C26D1F00A4785100BBC1C500AB460200B35A1800098D03000C93
      0C000D950F00119814002DC64900109C1900399A3A007BB57C00D2B4AE00AD89
      8A0099888800A8757500AF7A7A00635A5B000000000000000000000000000000
      00000000000000000000000000000000000071717100878586005C6E62002BB6
      510038B55B00CDB6AC00C69B9A00A4707000A4717100A3707000A3707000A370
      7000A47171009D6666004B4B4B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE690700BE691D00BC68
      2000BD692000BF691D00A67A5400CDD2D5009B2A0000AC490600099106004EE7
      81004EE781004EE781004EE781004CE57E00139F1D0036A83F00EDDADB00C8B0
      B000C9C1C100AF7A7A00B27C7C00695F60000000000000000000000000000000
      00000000000000000000179B1A0000000000727272008C8A8C005B6C5F0016A5
      38000FA23400C9B6A900C99D9D00A5727200A6737300A6737300A5727200A471
      7100A47171009E6767004D4D4E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE690700BC651D00BA65
      1E00BB661E00BD661B00A57B5700E6F0F700C9C1BE00BCB5B4000A940B0056EF
      890056EF890056EF890056EF890054ED870015A120003AA73B00F1DCDC00B27C
      7C00B47F7F00B3808000B68181006D6364000000000000000000000000000000
      000000000000000000000B931200169A1900B7B7B7008E8C8E005C6B5D000F92
      270008902300CBB3A900CB9EA000A9757600A9757500A6747400A8747400A875
      7500A77474009E67670053545400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE690700B9621A00B862
      1C00B8631D00BA641B00AE6B3300A67A5500A97D5800AB7F5900138D0B001197
      1400119713001096120036CF540014A21F0030993000FFFFFD00E9C5C500B682
      8200B7848400B6838300B9828200706768000000000000000000000000000000
      0000000000000000000012971E0032B5570013971500C5C4C500596A5B000781
      1600007F1300CEB4AA00CCA0A200AB777700A8757500A1717100A7747400A877
      7700A9767600A16A6A00585A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE690700B95F1800B65F
      1A00B65F1B00B7601B00B9621B00BB631900BC651900BD651B00BF681C00C06A
      1E00C26C1F00C36E2100038F020044A14400C0BEBD00FFF7E300E9C6C500C997
      9700D6A9A900C6939300BB858500726A6A00000000000D8513000F8F1D000E90
      1A000F921A000E911800129B20004DE585002FB14F0016991800A7AFA7000068
      000000640000CDB1A700CEA3A300AB8282009089890093797900A4727200AA77
      7700AB787800A36C6C005D5E5E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE6A0700B65D1800B45C
      1800B45C1800B55A1300B65C1300B75D1400B85F1500B9611600BA621700BD64
      1800BE671B00C1691C0036830900CDCBCA0088837F00FFEACA00ECC7C500D5AD
      AE00FFF8F800FFECEC00E6B5B500756C6D00000000002295310041DA790041D7
      760044D8790047DB7C0048D97A004EE9820050E4860032B2500014991600B5EE
      DF006EDBBF00DBBFBD00CDA1A200C6BCBC00DADFDF00B4ADAD00AC797900AE7A
      7A00AD7A7A00A66F6F0060616100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE6A0700B45A1500B258
      1500B1652B00AE8B7000AE886B00AF886C00AF8A6B00AF896B00AE896B00AE8B
      6B00AE8A6C00AF8A6A00AD8A6B00A2A2A1008C857D00FFE3B500EFC9C900C594
      9400D5AEAE00DCB4B400D19D9D00796F6F00000000002494320048E17F0042DC
      760045DF79004AE47D004CE780004FE9820054EF880058E98C0037B757001AA0
      1F00DBFFFF00E4C4C400D0A6A600C4A5A500D4D2D200B89D9D00B07C7C00AF7C
      7C00AF7C7C00A871710065666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF6A0700B2571200AF53
      1100AF6C3C00C8D2D800DEE2E400DDE1E300DEE2E500DFE3E600DDE1E400DDE0
      E300DADEE100D8DBDE00D6D9DC00ACACAC008283820085848100C5A6A600C6A0
      A000C5999900C4949400C78E8E007D7272000000000021942F0056E588003EDD
      730043E1780047E57C004DE9800053EC860057F08B0062FE9B003CC75A0029A8
      2D00F1FFFF00E7C3C300D1A9A900B37E7E00B37D7D00B37F7F00B3808000B17E
      7E00B17E7E00AA737300686A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF6B0700B0531000AD50
      0F00AD683700D1D7DB00EAEAEA00ECECEC00E3E3E300E0E0E000E1E1E100E0E0
      E000DDDDDD00DDDDDD00DADADA00AAAAAA00AAAAAB00A5A5A6009B9C9D009393
      90008E8D8A0085878400817E7C009698990000000000279B39008CF8B6007FF1
      A80085F5AF008AF7B2008DF6B30063F4940062FC990043DD6600209F2300FFFF
      FF00FFFFFF00EAC3C400D3ABAB00B6838300B7848400B6838300B5828200B481
      8100B3808000AC7474006D6F6F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF6B0700AD501000AB4C
      0E00AD673700D3D9DE00EDEDED00EFEFEF00D2D2D200C8C8C800C9C9C900C9C9
      C900C9C9C900CACACA00CACACA00C9C9C900DFDFDF00DBDBDB00C1C4CA00B682
      4C00C9792700C57628009732070000000000000000001B962000129D1B00119D
      1A00109F1B000F9E19001EA52A006DFFA60043DE6800229F2400BEBDBC00FFFD
      F500FFFAF200EAC3C300D5ACAC00B9868600B9868600B8858500B7848400B683
      8300B5828200AF78780070727200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF6C0700AD4F0D00A949
      0C00AD663800D8DFE200F2F2F200F2F2F200EDEDED00ECECEC00EBEBEB00EAEA
      EA00E7E7E700E5E5E500E2E2E200DFDFDF00E0E0E000DDDDDD00C3C7CC00B680
      4D00CA782600C675280097320700000000000000000000000000000000000000
      0000000000000000000019A5230049E672001E9D2000CDCECE0085838000FFF7
      E700FFF4E300EDC4C300D6B0B000BD888800BA868600B7828200B7838300B683
      8300B6838300AF78780072737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF6C0700AA4B0A00A746
      0A00AB643600DBE1E500F6F6F600F7F7F700E1E1E100DADADA00D9D9D900D9D9
      D900D8D8D800D7D7D700D5D5D500D5D5D500E3E3E300E0E0E000C4C8CD00B680
      4D00C8772500C476270097320700000000000000000000000000000000000000
      000000000000000000000D9E150023A32600BDBDBD00A7A7A80089848100FFEF
      D800FFECD600EDC4C300D6B1B100D0A0A000FFE3E300F1CCCC00E3B7B700D6A7
      A700C7949400B07A7A0076787800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF6C0700A8470A00A543
      0700AC623600DEE5E800F9F9F900FCFCFC00D5D5D500C6C6C600C7C7C700C8C8
      C800C8C8C800C9C9C900C9C9C900C9C9C900E6E6E600E0E0E000C5C9CE00B680
      4D00C7762500C474270097320700000000000000000000000000000000000000
      0000000000000000000026A42A000000000086868600AAAAAB008A847F00FFE8
      CC00FFE5C900EEC5C300D8B2B200CC9E9E00FFF3F300FFEAEA00FFE4E400FFE1
      E100F1C3C300B0797900777A7A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF6C0700A6440700A340
      0500AA613500E2E8EC00FCFCFC00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FBFBFB00F6F6F600F2F2F200EBEBEB00E5E5E500E1E1E100C6CACF00B781
      4D00C9762400C575260098330700000000000000000000000000000000000000
      00000000000000000000000000000000000088888800ADADAE008A847E00FFE2
      BD00FFDFBB00EEC5C300DAB4B400C6999900FDF2F200FFF3F300FFECEC00FFE6
      E600EABDBD00B27B7B007B7C7D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF6D0700A3420500A03D
      0300A9603500E3E9ED00FDFDFD00FFFFFF00DEDEDE00D3D3D300D4D4D400D2D2
      D200D2D2D200D1D1D100D0D0D000CFCFCF00E6E6E600E3E3E300C7CCD000B47E
      4C00A7611E00C17126009E390700000000000000000000000000000000000000
      0000000000000000000000000000000000008A8A8A00B0B1B2008F867D00FFDF
      B200FFDDAE00F3CCCA00E2C0C000C38E8E00BD868600BA848400C08E8E00C99A
      9A00C7969600B68080007C7E7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D06C0800A13F05009D39
      0300A95F3400E4EBEF00FDFDFD00FFFFFF00DEDEDE00D2D2D200D3D3D300D2D2
      D200D3D3D300D2D2D200D1D1D100D1D1D100E7E7E700E3E3E300C7CCD000AE7C
      4C006F411300B66B2400A6400800000000000000000000000000000000000000
      0000000000000000000000000000000000008D8D8D00B5B6B600858483008681
      7B0087847C00E8B8B800E7C1C200DBAEAE00D7A9A900D0A2A200C7959500BF8C
      8C00BD898900BA82820082828200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5894000BD580100A53E
      0100AD623300E4ECF000FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFEFE00F7F8F800F3F4F400EEEFEF00E8E9E900E5E6E600C9CFD400B77E
      4900C9711E00BA5A0D00BC714100000000000000000000000000000000000000
      0000000000000000000000000000000000008E8F8F00CACACA00AEAEAE00ABAB
      AC00A2A4A400A49F9F00A59A9A00A5969600A4939300A8929200AD959500B095
      9500B1939300A280800084848500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D68F4800D171
      1300CE843A00CCCED000CFCBC700D1CCC800D1CBC600CEC8C500CBC7C300C8C5
      BD00C5BFBB00C1BDB800BEB8B500BAB7B100B8B2AD00B3AFAB00AEAEAD00BA78
      3D00C05E1300C57D480000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B6B600A2A2A2009F9F9F009E9E
      9E009C9C9C00999A9A009697970095969600929393008F9090008E8F8F00878A
      8A00888A8A008B8C8C0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000886554009977
      6600967463009674630096746300967463009774640095746200957562009673
      63009474610093726000CAB8AF00007500000073000000700000006D0000BFAF
      A700000000000000000000000000000000000000000000000000000000000000
      0000886554009977660096746300967463009674630096746300977464009574
      62009575620096736300947461009372600094715F0092725E0091705F00926F
      5E0093725F007F5F4E000000000000000000000000000000000000000000363C
      BF00787FC300BFAA9F0096756400B0978A00C9B8AF00C9B8AF00B69E93009574
      62009575620096736300947461009372600094715F0092725E0091705F00926F
      5E0093725F007F5F4E0000000000000000000000000000000000000000008865
      5400997766009674630096746300967463009674630097746400957462009575
      620096736300947461009372600094715F0092725E0091705F00926F5E009372
      5F007F5F4E0000000000000000000000000000000000000000009A7A6900FEF2
      E400F9EBDD00F9EBDD00F9EBDD00F9EBDD00F9EBDE00F9EBDC00F9ECDD00F9EA
      DB00F9EADC00F9EBDB00FCF5EC000079000041DA74003DD6700000700000C8B7
      AE00000000000000000000000000000000000000000000000000000000000000
      00009A7A6900FEF2E400F9EBDD00F9EBDD00F9EBDD00F9EBDD00F9EBDE00F9EB
      DC00F9ECDD00F9EADB00F9EADC00F9EBDB00F8EAD800F8E7D500F7E6D200F7E6
      CF00FBE7CE00906F5D00000000000000000000000000000000002F32BF001D4F
      FF000C1FC7008784CD00FAF3EC007C78C900081DCF000512BC006262CC00FBF1
      E700F9ECDD00F9EADB00F9EADC00F9EBDB00F8EAD800F8E7D500F7E6D200F7E6
      CF00FBE7CE00906F5D0000000000000000000000000000000000000000009A7A
      6900FEF2E400F9EBDD00F9EBDD00F9EBDD00F9EBDD00F9EBDE00F9EBDC00F9EC
      DD00F9EADB00F9EADC00F9EBDB00F8EAD800F8E7D500F7E6D200F7E6CF00FBE7
      CE00906F5D0000000000000000000000000000000000000000009B7B6B00FFFD
      F300FCF6EB00FCF6EB00FBF6EB00FCF6EB00FCF5EB00FCF5EC00FCF5EA00FDF8
      F100FEFAF400FEFAF400FDF9F400007C000045DE780041DA740000730000C7B6
      AD00000000000000000000000000000000000000000000000000000000000000
      00009B7B6B00FFFDF300FCF6EB00FCF6EB00FBF6EB00FCF6EB00FCF5EB00FCF5
      EC00FCF5EA00FCF5EB00FCF4E900FCF4E800FAF3E800FBF3E600F9F1E200FAEF
      E000FBEDD9008E6D5B00000000000000000000000000000000003233B9002255
      FF002662FF000B1BC4002A3AB9000D27D2001857FF001456FF00071ED100FDFA
      F500FCF5EA00FCF5EB00FCF4E900FCF4E800FAF3E800FBF3E600F9F1E200FAEF
      E000FBEDD9008E6D5B0000000000000000000000000000000000000000009B7B
      6B00FFFDF300FCF6EB00FCF6EB00FBF6EB00FAF2E600F7EADE00FCF5EC00FCF5
      EA00FBF3E900E3BEA100B7693B00AC4F1900DEB29700F9F1E200FAEFE000FBED
      D9008E6D5B0000000000000000000000000000000000000000009B7C6B00FFFD
      F400FBF6EC00DEC4B700DEC4B700DEC4B600DDC2B400DDC2B400DDC1B200EEE0
      D700008500000084000000810000007F000049E27C0045DE7800007800000075
      000000720000006F000000000000000000000000000000000000000000000000
      00009B7C6B00FFFDF400FBF6EC00DEC4B700DEC4B700DEC4B600DDC2B400DDC2
      B400DDC1B200DDC0AF00DDBEAD00DDBDAA00DDBBA800DDBBA500DEBDA700FBF2
      E300FCEEDC008F6E5C0000000000000000000000000000000000484CC0001E44
      EC002C68FF002760FF001A48F5001F58FF001B54FF001140F8003836B300EBDB
      D300DDC1B200DDC0AF00DDBEAD00DDBDAA00DDBBA800DDBBA500DEBDA700FBF2
      E300FCEEDC008F6E5C0000000000000000000000000000000000000000009B7C
      6B00FFFDF400F8F5EC00DBB9A900C57F5D00A5461100AA440800C47D5C00D494
      6800BA5D1800B24C0000BB540000BF5F0F00A23C0100C1774B00FAEFE000FCEE
      DC008F6E5C0000000000000000000000000000000000000000009C7D6C00FFFE
      F600FCF7EE00DBC0B600DBC0B600DBC0B600DBC0B300DBBFB200DBBEB000EDDE
      D6000089000055EE880052EB85004FE882004CE57F004BE47E0047E07A0043DC
      76003FD872000072000000000000000000000000000000000000000000000000
      00009C7D6C00FFFEF600FCF7EE00EADAD400DBC0B600DBC0B600DBC0B300DBBF
      B200DBBEB000DABDAD00DABAAA00DAB9A700DAB7A400DAB6A100DDB9A300FAF3
      E600FBF1E100906F5E0000000000000000000000000000000000000000005D61
      C300111CBB002C6DFF002459FF002258FF001235E0005C59AF00ECDED700DBBF
      B200DBBEB000DABDAD00DABAAA00DAB9A700DAB7A400DAB6A100DDB9A300FAF3
      E600FBF1E100906F5E0000000000000000000000000000000000000000009C7D
      6C00FFFEF600AB968300AD4A0800B54F0000C35E0000B5530F0098310000B44F
      0000C35D0000CA640000D36B0000D67B1D00A63F0000A13C0000C48C6700FBF1
      E100906F5E0000000000000000000000000000000000000000009F7E6D00FFFF
      F800FCF8F100DBC3BA00DBC3BA00DBC3B900DBC2B800DBC0B600DBBFB300EDDE
      D700008B000058F18B0055EE880053EC860050E983004DE680004BE47E0047E0
      7A0043DC76000076000000000000000000000000000000000000000000000000
      00009F7E6D00FFFFF800FDFBF7001A9B1A00EBDED900DBC3B900DBC2B800DBC0
      B600DBBFB300DBBDAF00DBBCAD00DABBA900DAB9A600DAB6A300DDBBA500FCF4
      E800FDF1E40091705F0000000000000000000000000000000000000000000000
      00005651A5002C66FA002C6FFF00275EFF000D20C500EDE0DB00DBC2B800DBC0
      B600DBBFB300DBBDAF00DBBCAD00DABBA900DAB9A600DAB6A300DDBBA500FCF4
      E800FDF1E40091705F0000000000000000000000000000000000000000009F7E
      6D00FFFFF800B6723100CE680000D46D0000DF790100BC5F1D009B320000BB5F
      0000DC750000DE780000E57E0000EB942D00A9420000A9420000B96E4200FDF1
      E40091705F0000000000000000000000000000000000000000009F7F7000FFFF
      FA00FCF9F300DBC5BF00DBC5BF00DBC5BE00DBC3BB00DBC2B800DBC0B500EDDF
      D900008E0000008B0000008900000087000053EC860050E9830000800000007E
      0000007C00000079000000000000000000000000000000000000000000000000
      00009F7F7000FFFFFA00FDFCF8000C941300199B1900EBDFDC00DBC3BB00DBC2
      B800DBC0B500DBBEB200DBBDAF00DBBBAB00DBBAA800DAB8A500DDBBA700FBF5
      E900FCF3E4009271600000000000000000000000000000000000000000008498
      E200101ABA003474FB002459EA00214BF200296AFF001017B900EDE0DC00DBC2
      B800DBC0B500DBBEB200DBBDAF00DBBBAB00DBBAA800DAB8A500DDBBA700FBF5
      E900FCF3E4009271600000000000000000000000000000000000000000009F7F
      7000FFFFFA00C6782600E37C0000E6800000F4900500C2682300A1380000B865
      0000F2890000F28B0000FA8F0000FDAB3A00AD440000AE480000B6653100FCF3
      E400927160000000000000000000000000000000000000000000A3807000FFFF
      FC00FDFAF500DBC8C200DBC8C300DBC7C100DBC5BD00DBC3BA00DBC2B800EDDF
      DA00EDDFD800EDDED700EDDDD400008A000057F08A0053EC860000820000C9B8
      AF00000000000000000000000000000000000000000000000000000000000000
      0000CCB9B000FFFFFD00FEFCFA0013981F0032B55700199C1900EBDFDB00DBC3
      BA00DBC2B800DBBFB400DBBEB000DBBCAE00DBBAA900DBB9A600DDBCA800FBF5
      EB00FCF2E50093715F0000000000000000000000000000000000000000001E26
      BC00326BF9003573FB00353EB7003D44B5002558FF002460FF004341B300E9DB
      D500DBC2B800DBBFB400DBBEB000DBBCAE00DBBAA900DBB9A600DDBCA800FBF5
      EB00FCF2E50093715F000000000000000000000000000000000000000000A380
      7000FFFFFC00D57E1B00F88F0000FD960000FFB23700C76D2400A53D0000B367
      0000FFA60800FFA82300FFB85600FFD29800C1600F00B1480000B45A2200FCF2
      E50093715F000000000000000000000000000000000000000000A3817100FFFF
      FE00FDFBF700DBC8C500DBC8C500DBC7C300DBC6BF00DBC4BD00DBC2B900DBC0
      B500DBBFB200DBBDAE00EDDDD500008D00005AF38D0057F08A0000860000CAB9
      B0000000000000000000000000000000000000000000000000000D8513000F8F
      1D000F90190010921B000F921900139B21004DE585002FB14F001A9C1A00EBDF
      DB00DBC2B900DBC0B500DBBFB200DBBDAE00DBBAAB00DBB9A700DDBDA900FBF6
      EC00FCF4E600957261000000000000000000000000000000000000000000121C
      BB00326AF8001A30D000B0BCF400EDE3E1003331B0002661FF000A1DC500EDE1
      DD00DBC2B900DBC0B500DBBFB200DBBDAE00DBBAAB00DBB9A700DDBDA900FBF6
      EC00FCF4E600957261000000000000000000000000000000000000000000A381
      7100FFFFFE00E3943400FFC67600FFCD9700FFCB8400FBA941009F4301008A48
      1400D17D3A00FECD9D00FFCC9900F6BD8100F9BD8000D8883C00AB501100FCF4
      E600957261000000000000000000000000000000000000000000A48372000000
      0000FDFBF900DCC8C300DCC8C400DCC7C200DBC5BF00DBC4BD00DBC1B900DBC0
      B600DBBFB200DBBDAF00EDDDD500008F0000008E0000008B000000890000CAB9
      B0000000000000000000000000000000000000000000000000002295310041DA
      790041D7760044D8790047DB7C0048D97A004EE9820050E4860032B251001A9D
      1A00EBDDD900DBC0B600DBBFB200DBBDAF00DBBBAB00DBB9A700DEBDAA00FBF6
      ED00FCF3E700947360000000000000000000000000000000000000000000D8DC
      E4004649BE007678DD00FEFDFC00DCC8C300EDE2E0004140C1008F8CD300E6D6
      D100DBC1B900DBC0B600DBBFB200DBBDAF00DBBBAB00DBB9A700DEBDAA00FBF6
      ED00FCF3E700947360000000000000000000000000000000000000000000A483
      7200FFFFFF00D2A76100FCAB3200FFA00200E0760000BC550000B54D0000C057
      0000AC450100982E0000B85E2300E1914300DA823000DA944F00B69F8800FCF3
      E700947360000000000000000000000000000000000000000000A58473000000
      0000FEFCFB00DCC7C200DCC7C200DCC7C100DCC5BE00DCC4BC00DBC2B900DBC1
      B500DBBEB300DBBDAF00EDDDD600EDDCD400EFDED500FEFBF700FFFAF400CBBA
      B2000000000000000000000000000000000000000000000000002494320048E1
      7F0042DC760045DF79004AE47D004CE780004FE9820054EF880058E98C0037B7
      57001B9D1B00EADBD300DBBEB300DBBDAF00DBBBAB00DBB9A800DEBDAA00FDF7
      EE00FEF5E8009673620000000000000000000000000000000000000000000000
      0000C8B4AA00FFFFFF00FEFCFB00DCC7C200DCC7C200EADDDA00E6D6D100DCC4
      BC00DBC2B900DBC1B500DBBEB300DBBDAF00DBBBAB00DBB9A800DEBDAA00FDF7
      EE00FEF5E800967362000000000000000000000000000000000000000000A584
      7300FFFFFF00FEFCFB00C5D4C400C8A06A00CB640000D06A0000D46E0000D972
      0000BE611800A74000009E3600009C411900DBB9A800DEBDAA00FDF7EE00FEF5
      E800967362000000000000000000000000000000000000000000A88574000000
      0000FEFDFD00EDE2DF00EDE2DF00EDE2DE00EDE1DD00EDE0DB00EDDFD900ECDE
      D700ECDDD500ECDBD200ECDACF00EBD9CD00EDD9CC00FCF7EF00FDF4E9009573
      610000000000000000000000000000000000000000000000000021942F0056E5
      88003EDD730043E1780047E57C004DE9800053EC860057F08B0062FE9B003CC7
      5B0029A52A00F3EBE600ECDDD500ECDBD200ECDACF00EBD9CD00EDD9CC00FCF7
      EF00FDF4E9009573610000000000000000000000000000000000000000000000
      0000A8857400FFFFFF00FEFDFD00EDE2DF00EDE2DF00EDE2DE00EDE1DD00EDE0
      DB00EDDFD900ECDED700ECDDD500ECDBD200ECDACF00EBD9CD00EDD9CC00FCF7
      EF00FDF4E900957361000000000000000000000000000000000000000000A885
      7400FFFFFF00FEFDFD00EDE2DF00C8DED600D8720000E07A0000E07A0000E67F
      0000CB702400AD460000A8420000AE481100EBD9CD00EDD9CC00FCF7EF00FDF4
      E900957361000000000000000000000000000000000000000000A88675000000
      0000FEFEFE000000000000000000FEFEFE00FEFEFE00FEFDFD00FEFDFB00FEFC
      FA00FDFBF800FDFAF600FDF9F400FCF8F200FCF8F100FCF8F000FDF6EB009774
      6300000000000000000000000000000000000000000000000000279B39008CF8
      B6007FF1A80085F5AF008AF7B2008DF6B30063F4940062FC990043DD67002BA9
      2D00FEFEFD00FEFCFA00FDFBF800FDFAF600FDF9F400FCF8F200FCF8F100FCF8
      F000FDF6EB009774630000000000000000000000000000000000000000000000
      0000A8867500FFFFFF00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFD
      FD00FEFDFB00FEFCFA00FDFBF800FDFAF600FDF9F400FCF8F200FCF8F100FCF8
      F000FDF6EB00977463000000000000000000000000000000000000000000A886
      7500FFFFFF00FEFEFE00FFFFFF00CDDED100E7800000EC860000ED870000F38B
      0000D47F3000B24B0000AE480000B4460600FCF8F200FCF8F100FCF8F000FDF6
      EB00977463000000000000000000000000000000000000000000A98776000000
      000000000000E0CFCE00E0CFCE00E0CECC00E0CDCA00DFCAC600DFC8C300DFC7
      BE00DFC5BA00DFC3B600DFC0B200DFBFAE00E0C1AF00FDF8F000FDF6EB009674
      63000000000000000000000000000000000000000000000000001B962000129D
      1B00119C190012A11C0011A01A001FA52B006DFFA60044DE680027A32700EDE2
      DF00DFC8C300DFC7BE00DFC5BA00DFC3B600DFC0B200DFBFAE00E0C1AF00FDF8
      F000FDF6EB009674630000000000000000000000000000000000000000000000
      0000A9877600FFFFFF00FFFFFF00E0CFCE00E0CFCE00E0CECC00E0CDCA00DFCA
      C600DFC8C300DFC7BE00DFC5BA00DFC3B600DFC0B200DFBFAE00E0C1AF00FDF8
      F000FDF6EB00967463000000000000000000000000000000000000000000A987
      7600FFFFFF00FFFFFF00E0CFCE00D4DDCD00F58C0000FD930000FD940000FF9B
      0000DE8D3B00B84D0000B44E0000AD450100DFBFAE00E0C1AF00FDF8F000FDF6
      EB00967463000000000000000000000000000000000000000000AC8877000000
      000000000000DDCBC900DDCBCA00DDCAC800DDC8C500DCC6C100DCC4BC00DCC1
      B800DCC0B400DBBDB000DCBCAC00DCB9A900DFBEAB00FDFAF200FDF5EC009875
      6300000000000000000000000000000000000000000000000000000000000000
      0000D1BDB30000000000000000001AA523004AE6720026A22600ECE1DF00DCC6
      C100DCC4BC00DCC1B800DCC0B400DBBDB000DCBCAC00DCB9A900DFBEAB00FDFA
      F200FDF5EC009875630000000000000000000000000000000000000000000000
      0000AC887700FFFFFF00FFFFFF00DDCBC900DDCBCA00DDCAC800DDC8C500DCC6
      C100DCC4BC00DCC1B800DCC0B400DBBDB000DCBCAC00DCB9A900DFBEAB00FDFA
      F200FDF5EC00987563000000000000000000000000000000000000000000AC88
      7700FFFFFF00FFFFFF00DDCBC900D7DDCB00FFB65400FFC77600FFCA8600FFCF
      9500F6BB7F00D6803000C15E0A00B34A0000DCB9A900DFBEAB00FDFAF200FDF5
      EC00987563000000000000000000000000000000000000000000AD8978000000
      0000000000000000000000000000000000000000000000000000FEFEFF00FEFD
      FC00FFFDFB00FAF8F500F6F2ED00F3ECE700ECE4DF00E1D6D000C9B5A9009370
      6100000000000000000000000000000000000000000000000000000000000000
      0000AD89780000000000000000000F9F160028A6290000000000000000000000
      0000FEFEFF00FEFDFC00FFFDFB00FAF8F500F6F2ED00F3ECE700ECE4DF00E1D6
      D000C9B5A9009370610000000000000000000000000000000000000000000000
      0000AD897800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFF00FEFDFC00FFFDFB00FAF8F500F6F2ED00F3ECE700ECE4DF00E1D6
      D000C9B5A900937061000000000000000000000000000000000000000000AD89
      7800FFFFFF00FFFFFF00FFFFFF00FFFFFF00D5BA9400D7AD7D00D69A5E00D387
      3E00CF823D00CC894A00C8906000D19E7700F3ECE700ECE4DF00E1D6D000C9B5
      A900937061000000000000000000000000000000000000000000AE8978000000
      0000000000000000000000000000000000000000000000000000FEFEFF00FEFD
      FC00FFFFFE00CAB5AA009C7A6900AA8B7800A8846A00A27A5C008A665600CFC8
      C400000000000000000000000000000000000000000000000000000000000000
      0000AE89780000000000000000002BA92D000000000000000000000000000000
      0000FEFEFF00FEFDFC00FFFFFE00CAB5AA009C7A6900AA8B7800A8846A00A27A
      5C008A665600CFC8C40000000000000000000000000000000000000000000000
      0000AE897800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFF00FEFDFC00FFFFFE00CAB5AA009C7A6900AA8B7800A8846A00A27A
      5C008A665600CFC8C4000000000000000000000000000000000000000000AE89
      7800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FF00FEFDFC00FFFFFE00CAB5AA009C7A6900AA8B7800A8846A00A27A5C008A66
      5600D16ACA000000000000000000000000000000000000000000AE8B7A000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFD00FEFD
      FB00FFFFFD00D5C7BE00CCB5A300FCE9C500F0CC92009E796200D4CCCA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AE8B7A00000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFD00FEFDFB00FFFFFD00D5C7BE00CCB5A300FCE9C500F0CC92009E79
      6200D4CCCA00F4F5F60000000000000000000000000000000000000000000000
      0000AE8B7A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00FEFEFD00FEFDFB00FFFFFD00D5C7BE00CCB5A300FCE9C500F0CC92009E79
      6200D4CCCA00000000000000000000000000000000000000000000000000AE8B
      7A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFE
      FD00FEFDFB00FFFFFD00D5C7BE00CCB5A300FCE9C500F0CC92009E796200D471
      CD00000000000000000000000000000000000000000000000000AF8B78000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFDFC00FEFC
      FA00FFFEFD00D9CAC300C4A38400ECC88E009B755F00D4CDC800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF8B78000000000000000000000000000000000000000000FEFEFE00FEFE
      FE00FEFDFC00FEFCFA00FFFEFD00D9CAC300C4A38400ECC88E009B755F00D5CE
      C900F6F8F8000000000000000000000000000000000000000000000000000000
      0000AF8B7800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFE
      FE00FEFDFC00FEFCFA00FFFEFD00D9CAC300C4A38400ECC88E009B755F00D4CD
      C80000000000000000000000000000000000000000000000000000000000AF8B
      7800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFD
      FC00FEFCFA00FFFEFD00D9CAC300C4A38400ECC88E009B755F00D474CC000000
      0000000000000000000000000000000000000000000000000000AE8979000000
      0000FEFEFF00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FEFDFC00FEFCFB00FEFC
      F900FFFFFC00DACCC400BB936900A07A6200D9D0CE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AE89790000000000FEFEFF00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FEFD
      FC00FEFCFB00FEFCF900FFFFFC00DACCC400BB936900A07A6200DAD1CF00F8F9
      FA00000000000000000000000000000000000000000000000000000000000000
      0000AE897900FFFFFF00FEFEFF00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FEFD
      FC00FEFCFB00FEFCF900FFFFFC00DACCC400BB936900A07A6200D9D0CE000000
      000000000000000000000000000000000000000000000000000000000000AE89
      7900FFFFFF00FEFEFF00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FEFDFC00FEFC
      FB00FEFCF900FFFFFC00DACCC400BB936900A07A6200D77ACF00000000000000
      0000000000000000000000000000000000000000000000000000AF8C7A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1BEB400906A5900D8D0CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF8C7A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1BEB400906A5900DAD2CE00FAFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF8C7A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D1BEB400906A5900D8D0CC00000000000000
      000000000000000000000000000000000000000000000000000000000000AF8C
      7A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D1BEB400906A5900D67ACE0000000000000000000000
      00000000000000000000000000000000000000000000000000009E766100B18F
      7F00AF8C7B00AF8D7B00AE8B7C00AD8C7A00AC8A7B00AB897900A9887800A887
      7700A98A78009E7E6F00DBD2CF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E766100B18F7F00AF8C7B00AF8D7B00AE8B7C00AD8C7A00AC8A7B00AB89
      7900A9887800A8877700A98A78009E7E6F00DCD4D10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009E766100B18F7F00AF8C7B00AF8D7B00AE8B7C00AD8C7A00AC8A7B00AB89
      7900A9887800A8877700A98A78009E7E6F00DBD2CF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009E76
      6100B18F7F00AF8C7B00AF8D7B00AE8B7C00AD8C7A00AC8A7B00AB897900A988
      7800A8877700A98A78009E7E6F00D880D0000000000000000000000000000000
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
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00FFFF87FFFFFF000000000000E00001FF
      F8FF000000000000C00000FFF01F000000000000800000FF0007000000000000
      800000FF0001000000000000800000FF0001000000000000800000FD00010000
      00000000800000FC0001000000000000800000FC000100000000000080000080
      0001000000000000800000800001000000000000800000800001000000000000
      8000008000010000000000008000008000010000000000008000018000010000
      00000000800001FC0001000000000000800001FC0001000000000000800001FD
      0001000000000000800001FF0001000000000000800001FF0001000000000000
      800001FF0001000000000000800001FF0001000000000000C00003FF00030000
      00000000FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFC0000FF0
      0003E00003E00007C0000FF00003C00003E00007C0000FF00003C00003E00007
      C00003F00003C00003E00007C00003F00003E00003E00007C00003F00003F000
      03E00007C00003F00003E00003E00007C0000FF00003E00003E00007C0000FC0
      0003E00003E00007D0000FC00003E00003E00007D0000FC00003F00003E00007
      D0000FC00003F00003E00007D6000FC00003F00003E00007D8000FC00003F000
      03E00007D8000FF60003F00003E00007DFC00FF67003F00003E00007DFC00FF6
      F003F00003E00007DF801FF7E003F00007E0000FDF003FF7C007F0000FE0001F
      D0007FF4000FF0001FE0003FDFF8FFF7FE1FF0003FE0007FC001FFF0007FF000
      7FE000FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu9: TPopupMenu
    Left = 462
    Top = 526
    object N19: TMenuItem
      Caption = #21475#26381#33647#25191#34892#21333
      OnClick = N19Click
    end
    object N20: TMenuItem
      Caption = #31354#30333#25191#34892#21333
      OnClick = N20Click
    end
  end
  object qry_brljjd: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ksdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.*,b.mc xgksmc,c.mc chyfmc,d.mc cyyfmc,e.mc zjyfmc,f.mc ' +
        'clyfmc '
      
        'from sys_ksdm a,sys_ksdm b ,sys_ksdm c,sys_ksdm d,sys_ksdm e ,sy' +
        's_ksdm f  '
      'where a.xgks *= b.dm and'
      '      a.chyf *= c.dm and'
      '      a.cyyf *= d.dm and'
      '      a.zjyf *= e.dm and'
      '      a.clyf *= f.dm and'
      'a.dm =:ksdm')
    Left = 690
    Top = 120
  end
  object qry_ljzxmx: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ksdm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.*,b.mc xgksmc,c.mc chyfmc,d.mc cyyfmc,e.mc zjyfmc,f.mc ' +
        'clyfmc '
      
        'from sys_ksdm a,sys_ksdm b ,sys_ksdm c,sys_ksdm d,sys_ksdm e ,sy' +
        's_ksdm f  '
      'where a.xgks *= b.dm and'
      '      a.chyf *= c.dm and'
      '      a.cyyf *= d.dm and'
      '      a.zjyf *= e.dm and'
      '      a.clyf *= f.dm and'
      'a.dm =:ksdm')
    Left = 650
    Top = 120
  end
  object qry_lcljmbjc: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 610
    Top = 120
  end
  object sp_lcljdr: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_zyyz_yzmbdr_lclj'
    Parameters = <>
    Left = 568
    Top = 120
  end
  object qry_ljxmjc: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 530
    Top = 120
  end
  object qry_jyyb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zyh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select * from sys_jyyb'
      '')
    Left = 872
    Top = 480
  end
  object qry_cx_jyjg_wsw: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'zyh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      ''
      'select distinct a.tmh,a.brxm,a.yb,a.cysj,a.jyfzbh,b.*,c.jsrq '
      'from DZBL_CYJL_zy a join dzbl_jyjg_wsw b on a.jyfzbh=b.barcode'
      'join dzbl_jysqd c on a.jyfzbh=c.fzbh and a.zyh=c.zyh '
      'where a.zyh=:zyh '
      'order by c.jsrq desc'
      '')
    Left = 664
    Top = 552
  end
  object ds_cx_jyjg_wsw: TDataSource
    DataSet = qry_cx_jyjg_wsw
    Left = 704
    Top = 550
  end
  object qry_hjjl: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'Varid1'
        Size = -1
        Value = Null
      end
      item
        Name = 'Varid2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select aa.yzlb,aa.sl,bb.xmdm,bb.xmmc,bb.hotkey,bb.dw,bb.bz,bb.qy' +
        'bz,'#39#39' as zydwid,'#39#39' as ypbzbl,0 as ypcgj,0 as yplsj,'#39#39' as yldw fr' +
        'om  zybl_ztmx aa,sys_yzxm bb '
      'where aa.ztid=:Varid1 And aa.yzdm=bb.xmdm'
      'union'
      
        'Select aa.yzlb,aa.sl,aa.yzdm,bb.ypmc,'#39#39' as hotkey,bb.zyyfdw,bb.b' +
        'z,bb.sybz,bb.zydwid,bb.zyyfzhl as ypbzbl,bb.zypfj as ypcgj,bb.zy' +
        'lsj as yplsj,bb.yldw from  zybl_ztmx aa,sys_ypdm bb'
      'where aa.ztid=:Varid2 and aa.yzdm=bb.ypdm '
      'Order by yzlb ')
    Left = 168
    Top = 160
  end
  object qry_icd10: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ksdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select dm,mc,ksdm,pym from sys_czy where ysbz= 1 and ksdm= :ksdm')
    Left = 1112
    Top = 264
  end
  object ds_icd10: TDataSource
    DataSet = qry_icd10
    Left = 1144
    Top = 264
  end
  object qry_ljcx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <
      item
        Name = 'Varid1'
        Size = -1
        Value = Null
      end
      item
        Name = 'Varid2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select aa.yzlb,aa.sl,bb.xmdm,bb.xmmc,bb.hotkey,bb.dw,bb.bz,bb.qy' +
        'bz,'#39#39' as zydwid,'#39#39' as ypbzbl,0 as ypcgj,0 as yplsj,'#39#39' as yldw fr' +
        'om  zybl_ztmx aa,sys_yzxm bb '
      'where aa.ztid=:Varid1 And aa.yzdm=bb.xmdm'
      'union'
      
        'Select aa.yzlb,aa.sl,aa.yzdm,bb.ypmc,'#39#39' as hotkey,bb.zyyfdw,bb.b' +
        'z,bb.sybz,bb.zydwid,bb.zyyfzhl as ypbzbl,bb.zypfj as ypcgj,bb.zy' +
        'lsj as yplsj,bb.yldw from  zybl_ztmx aa,sys_ypdm bb'
      'where aa.ztid=:Varid2 and aa.yzdm=bb.ypdm '
      'Order by yzlb ')
    Left = 392
    Top = 112
  end
end
