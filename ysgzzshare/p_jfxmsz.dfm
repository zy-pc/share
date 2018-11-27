object frm_jfxmsz: Tfrm_jfxmsz
  Left = 0
  Top = 0
  Caption = #21307#22065#24320#20851
  ClientHeight = 315
  ClientWidth = 848
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 848
    Height = 315
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #33258#21160#35760#36153#39033#30446
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 840
        Height = 284
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 509
          Top = 8
          Width = 195
          Height = 15
          Caption = #35831#21246#36873#19981#38656#35201#33258#21160#35760#36153#30340#31867#21035
        end
        object yp: TCheckBox
          Left = 603
          Top = 57
          Width = 63
          Height = 17
          Caption = #33647#21697
          TabOrder = 0
          OnClick = ypClick
        end
        object cl: TCheckBox
          Left = 500
          Top = 57
          Width = 97
          Height = 17
          Caption = #26448#26009
          TabOrder = 1
        end
        object zl: TCheckBox
          Left = 603
          Top = 80
          Width = 63
          Height = 17
          Caption = #27835#30103
          TabOrder = 2
        end
        object jy: TCheckBox
          Left = 500
          Top = 80
          Width = 97
          Height = 17
          Caption = #26816#39564
          TabOrder = 3
        end
        object jc: TCheckBox
          Left = 603
          Top = 103
          Width = 63
          Height = 17
          Caption = #26816#26597
          TabOrder = 4
        end
        object cy: TCheckBox
          Left = 500
          Top = 103
          Width = 97
          Height = 17
          Caption = #25104#33647
          TabOrder = 5
          OnClick = cyClick
        end
        object Button1: TButton
          Left = 634
          Top = 141
          Width = 75
          Height = 25
          Caption = #30830#23450
          TabOrder = 6
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 500
          Top = 141
          Width = 75
          Height = 25
          Caption = #36864#20986
          TabOrder = 7
          OnClick = Button2Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ICU'#35760#36153#26041#24335
      ImageIndex = 1
      object Label2: TLabel
        Left = 628
        Top = 64
        Width = 129
        Height = 15
        Caption = #35831#36755#20837'ICU'#31185#23460#20195#30721
      end
      object Label3: TLabel
        Left = 428
        Top = 103
        Width = 348
        Height = 15
        Caption = #27880#24847#65306#22914#26524'ICU'#26159#36716#31185#26041#24335#65292#35831#19981#35201#22635#20889'ICU'#31185#23460#20195#30721
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 458
        Top = 123
        Width = 318
        Height = 15
        Caption = #22914#26524'ICU'#19981#26159#36716#31185#26041#24335#65292#35831#24517#39035#22635#20889'ICU'#31185#23460#20195#30721
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object CheckBox1: TCheckBox
        Left = 551
        Top = 25
        Width = 155
        Height = 17
        Caption = #36215#29992'ICU'#19981#36716#31185#26041#24335
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 501
        Top = 59
        Width = 121
        Height = 23
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 1
      end
      object Button3: TButton
        Left = 631
        Top = 144
        Width = 75
        Height = 25
        Caption = #30830#23450
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 524
        Top = 144
        Width = 75
        Height = 25
        Caption = #36864#20986
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #25191#34892#26041#24335
      ImageIndex = 2
      object CheckBox2: TCheckBox
        Left = 509
        Top = 34
        Width = 145
        Height = 17
        Caption = #25191#34892#26102#36873#25321#25191#34892#20154
        TabOrder = 0
      end
      object CheckBox3: TCheckBox
        Left = 509
        Top = 80
        Width = 217
        Height = 17
        Caption = #35760#36153#29992#21307#29983#24320#21333#25968#37327
        TabOrder = 1
      end
      object Button5: TButton
        Left = 509
        Top = 128
        Width = 75
        Height = 25
        Caption = #30830#23450
        TabOrder = 2
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 612
        Top = 128
        Width = 75
        Height = 25
        Caption = #36864#20986
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #33258#21160#35760#36153#24320#20851
      ImageIndex = 3
      object CheckBox4: TCheckBox
        Left = 551
        Top = 25
        Width = 145
        Height = 17
        Caption = #21551#29992#33258#21160#35760#36153
        TabOrder = 0
      end
      object Button7: TButton
        Left = 655
        Top = 114
        Width = 75
        Height = 25
        Caption = #30830#23450
        TabOrder = 1
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 523
        Top = 114
        Width = 75
        Height = 25
        Caption = #36864#20986
        TabOrder = 2
        OnClick = Button2Click
      end
      object CheckBox10: TCheckBox
        Left = 503
        Top = 52
        Width = 193
        Height = 17
        Caption = #21307#29983#25552#20132#21307#22065#26102#36873#25321#33647#25151
        TabOrder = 3
      end
      object CheckBox11: TCheckBox
        Left = 503
        Top = 75
        Width = 193
        Height = 17
        Caption = #21307#29983#25552#20132#26102#35760#36153
        TabOrder = 4
      end
    end
    object TabSheet5: TTabSheet
      Caption = #21307#22065#25171#21360
      ImageIndex = 4
      object Label5: TLabel
        Left = 816
        Top = 14
        Width = 8
        Height = 15
      end
      object Label6: TLabel
        Left = 322
        Top = 16
        Width = 105
        Height = 15
        Caption = #36755#28082#35745#21010#21333#32440#24352
      end
      object Label7: TLabel
        Left = 307
        Top = 48
        Width = 120
        Height = 15
        Caption = #21307#22065#21333#25171#21360#26041#24335#65306
      end
      object Label8: TLabel
        Left = 217
        Top = 80
        Width = 210
        Height = 15
        Caption = #26816#39564#26465#30721#38656#35201#25171#21360#26410#35760#36153#39033#30446#65306
      end
      object CheckBox5: TCheckBox
        Left = 636
        Top = 14
        Width = 65
        Height = 17
        Caption = 'A4'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBox5Click
      end
      object CheckBox6: TCheckBox
        Left = 450
        Top = 14
        Width = 145
        Height = 17
        Caption = 'B5'
        Checked = True
        Ctl3D = True
        ParentCtl3D = False
        State = cbChecked
        TabOrder = 1
        OnClick = CheckBox6Click
      end
      object Button9: TButton
        Left = 663
        Top = 112
        Width = 75
        Height = 25
        Caption = #30830#23450
        TabOrder = 2
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 531
        Top = 112
        Width = 75
        Height = 25
        Caption = #36864#20986
        TabOrder = 3
        OnClick = Button2Click
      end
      object CheckBox7: TCheckBox
        Left = 615
        Top = 46
        Width = 86
        Height = 17
        Caption = #22235#24029#25253#34920
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = CheckBox7Click
      end
      object CheckBox8: TCheckBox
        Left = 450
        Top = 46
        Width = 145
        Height = 17
        Caption = #22235#24029#30465#22806#25253#34920
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = CheckBox8Click
      end
      object CheckBox9: TCheckBox
        Left = 461
        Top = 79
        Width = 145
        Height = 17
        TabOrder = 6
      end
    end
    object Che: TTabSheet
      Caption = #21307#22065#24320#21333#21644#35760#36153
      ImageIndex = 5
      object Label9: TLabel
        Left = 543
        Top = 101
        Width = 150
        Height = 15
        Caption = #21307#22065#24320#21333#21487#25552#21069#23567#26102#25968
      end
      object CheckBox12: TCheckBox
        Left = 450
        Top = 42
        Width = 273
        Height = 17
        Caption = #25252#22763#21487#20197#24320#38500#20102#26448#26009#20197#22806#25152#26377#21307#22065
        TabOrder = 0
      end
      object Button11: TButton
        Left = 255
        Top = 193
        Width = 75
        Height = 25
        Caption = #30830#23450
        TabOrder = 1
        OnClick = Button11Click
      end
      object Button12: TButton
        Left = 403
        Top = 193
        Width = 75
        Height = 25
        Caption = #36864#20986
        TabOrder = 2
        OnClick = Button12Click
      end
      object CheckBox13: TCheckBox
        Left = 450
        Top = 74
        Width = 249
        Height = 17
        Caption = #21307#22065#21475#26381#33647#21333#29420#35760#36153
        TabOrder = 3
      end
      object Edit2: TEdit
        Left = 450
        Top = 97
        Width = 87
        Height = 23
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 4
        OnKeyPress = Edit2KeyPress
      end
      object CheckBox14: TCheckBox
        Left = 450
        Top = 11
        Width = 238
        Height = 17
        Caption = #20005#26684#25511#21046#20892#21512#31038#20445#30149#20154#30340#29992#33647
        TabOrder = 5
      end
      object CheckBox15: TCheckBox
        Left = 450
        Top = 124
        Width = 249
        Height = 17
        Caption = #21307#22065#26680#23545#21518#35745#36153
        TabOrder = 6
      end
      object CheckBox16: TCheckBox
        Left = 450
        Top = 147
        Width = 249
        Height = 17
        Caption = #25353#30149#21306#29983#25104#38468#21152#36153#29992
        TabOrder = 7
      end
      object CheckBox17: TCheckBox
        Left = 105
        Top = 35
        Width = 193
        Height = 17
        Caption = #21307#22065#35745#36153#19981#36873#25321#21307#29983
        TabOrder = 8
      end
      object CheckBox18: TCheckBox
        Left = 105
        Top = 58
        Width = 225
        Height = 17
        Caption = #21307#22065#25191#34892#21482#26377#25252#22763#38271#21487#20462#25913
        TabOrder = 9
      end
      object CheckBox19: TCheckBox
        Left = 105
        Top = 81
        Width = 225
        Height = 17
        Caption = #21307#22065#35745#36153#19968#24182#35760#38468#21152#36153#29992
        TabOrder = 10
      end
      object CheckBox20: TCheckBox
        Left = 105
        Top = 104
        Width = 153
        Height = 17
        Caption = #21307#22065#35745#36153#21069#26597#23545
        TabOrder = 11
      end
    end
    object TabSheet7: TTabSheet
      Caption = #35774#32622#19981#36716#31185#31185#23460
      ImageIndex = 6
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 840
        Height = 284
        Align = alClient
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 431
          Top = 1
          Width = 408
          Height = 282
          Align = alRight
          TabOrder = 0
          object DBGridEh1: TDBGridEh
            Left = 2
            Top = 17
            Width = 404
            Height = 263
            Align = alClient
            DataSource = ds_cx_bzkks
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = #23435#20307
            FooterFont.Style = []
            ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'dm'
                Footers = <>
                Title.Caption = #31185#23460#20195#30721
                Width = 116
              end
              item
                EditButtons = <>
                FieldName = 'mc'
                Footers = <>
                Title.Caption = #31185#23460#21517#31216
                Width = 166
              end>
          end
        end
        object Button13: TButton
          Left = 361
          Top = 199
          Width = 60
          Height = 25
          Caption = #26032#22686
          TabOrder = 1
          OnClick = Button13Click
        end
        object Button14: TButton
          Left = 142
          Top = 199
          Width = 57
          Height = 25
          Caption = #21024#38500
          TabOrder = 2
          OnClick = Button14Click
        end
        object Button15: TButton
          Left = 286
          Top = 199
          Width = 57
          Height = 25
          Caption = #21462#28040
          Enabled = False
          TabOrder = 3
          OnClick = Button15Click
        end
        object Button16: TButton
          Left = 219
          Top = 200
          Width = 51
          Height = 24
          Caption = #20445#23384
          Enabled = False
          TabOrder = 4
          OnClick = Button16Click
        end
        object SXSearchBox1: TEdit
          Left = 247
          Top = 16
          Width = 178
          Height = 23
          Enabled = False
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          TabOrder = 5
          OnKeyPress = SXSearchBox1KeyPress
        end
        object DBGridEh2: TDBGridEh
          Left = 142
          Top = 45
          Width = 279
          Height = 148
          DataSource = ds_cx_ksdm
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
          ReadOnly = True
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          Visible = False
          OnExit = DBGridEh2Exit
          OnKeyPress = DBGridEh2KeyPress
          Columns = <
            item
              EditButtons = <>
              FieldName = 'dm'
              Footers = <>
              Title.Caption = #31185#23460#20195#30721
              Width = 89
            end
            item
              EditButtons = <>
              FieldName = 'mc'
              Footers = <>
              Title.Caption = #31185#23460#21517#31216
              Width = 139
            end>
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = #20854#20182#35774#32622
      ImageIndex = 7
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 840
        Height = 284
        TabOrder = 0
        object CheckBox21: TCheckBox
          Left = 90
          Top = 33
          Width = 206
          Height = 17
          Caption = #31649#21046#33647#21697#21010#20215#21333#29420#29983#25104#22788#26041
          TabOrder = 0
        end
        object CheckBox22: TCheckBox
          Left = 90
          Top = 58
          Width = 206
          Height = 17
          Caption = #25163#26415#30003#35831#39035#31185#20027#20219#23457#26680
          TabOrder = 1
        end
        object CheckBox23: TCheckBox
          Left = 90
          Top = 81
          Width = 206
          Height = 17
          Caption = #26816#26597#37096#20301#35774#32622
          TabOrder = 2
        end
        object CheckBox24: TCheckBox
          Left = 90
          Top = 104
          Width = 206
          Height = 17
          Caption = #21551#29992#20303#38498#36816#36755#20013#24515
          TabOrder = 3
        end
        object Button17: TButton
          Left = 142
          Top = 127
          Width = 75
          Height = 25
          Caption = #30830#23450#20462#25913
          TabOrder = 4
          OnClick = Button17Click
        end
        object RadioGroup1: TRadioGroup
          Left = 427
          Top = 17
          Width = 326
          Height = 65
          Caption = #21307#29983#25239#29983#32032#35774#32622
          Items.Strings = (
            #20351#29992':<'#32844#31216'/'#21307#29983#25239#29983#32032#35774#32622'>'
            #20351#29992':<'#32844#31216'/'#21307#29983#33021#20351#29992#25239#29983#32032#35774#32622'>')
          TabOrder = 5
          OnClick = RadioGroup1Click
        end
        object RadioGroup2: TRadioGroup
          Left = 427
          Top = 97
          Width = 326
          Height = 54
          Caption = #20307#28201#34920#36873#25321
          Columns = 2
          Items.Strings = (
            #26087#29256#20307#28201#34920
            #26032#29256#20307#28201#34920)
          TabOrder = 6
          OnClick = RadioGroup2Click
        end
        object rg_yzyytjbdfysz: TRadioGroup
          Left = 427
          Top = 159
          Width = 326
          Height = 47
          Caption = #21307#22065#29992#33647#36884#24452#32465#23450#36153#29992#35774#32622
          Columns = 2
          Items.Strings = (
            #20840#38498#35774#32622
            #20998#30149#21306#35774#32622)
          TabOrder = 7
          OnClick = rg_yzyytjbdfyszClick
        end
      end
    end
  end
  object qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 580
    Top = 283
  end
  object qry_cx_bzkks: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 548
    Top = 283
  end
  object ds_cx_bzkks: TDataSource
    DataSet = qry_cx_bzkks
    Left = 515
    Top = 279
  end
  object qry_cx_ksdm: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 491
    Top = 279
  end
  object ds_cx_ksdm: TDataSource
    DataSet = qry_cx_ksdm
    Left = 291
    Top = 272
  end
end
