object frm_cx_mzdzbl: Tfrm_cx_mzdzbl
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #30149#21382#26597#35810
  ClientHeight = 567
  ClientWidth = 889
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 889
    Height = 567
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '  '#26597#35810#20303#38498#30149#21382'  '
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 881
        Height = 41
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 14
          Width = 45
          Height = 15
          Caption = #26465#30721#21495
        end
        object Label3: TLabel
          Left = 436
          Top = 13
          Width = 60
          Height = 15
          Caption = #30149#21382#31867#21035
        end
        object SpeedButton1: TSpeedButton
          Left = 626
          Top = 6
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Label1: TLabel
          Left = 200
          Top = 14
          Width = 30
          Height = 15
          Caption = #31185#23460
        end
        object edt_tmh: TEdit
          Left = 55
          Top = 8
          Width = 130
          Height = 23
          Hint = #21487#36755#20837#26465#30721#21495#12289#30149#20154#22995#21517#12289#24202#21495#12289#30149#26696#21495
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyDown = edt_tmhKeyDown
        end
        object edt_bllb: TEdit
          Left = 502
          Top = 6
          Width = 121
          Height = 23
          TabOrder = 1
          OnKeyDown = edt_bllbKeyDown
        end
        object BBtn_cx: TBitBtn
          Left = 672
          Top = 6
          Width = 75
          Height = 25
          Caption = #26597#35810
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BBtn_cxClick
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 240
          Top = 8
          Width = 186
          Height = 23
          KeyField = 'dm'
          ListField = 'mc'
          ListSource = ds_ksdm
          TabOrder = 3
          OnKeyDown = DBLookupComboBox1KeyDown
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 41
        Width = 881
        Height = 496
        Align = alClient
        Caption = #30149#21382#21015#34920'('#21452#20987#26597#30475')'
        TabOrder = 1
        object DBGridEh1: TDBGridEh
          Left = 2
          Top = 17
          Width = 877
          Height = 477
          Align = alClient
          DataSource = ds_bl_list
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = GB2312_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          TabOrder = 0
          TitleFont.Charset = GB2312_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDblClick = DBGridEh1DblClick
          OnKeyDown = DBGridEh1KeyDown
          Columns = <
            item
              EditButtons = <>
              FieldName = 'tmh'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #26465#30721#21495
              Width = 80
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
              FieldName = 'brnl'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #24180#40836
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'bch'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #24202#21495
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'ksmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #31185#23460
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'blmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#21382#21517#31216
              Width = 218
            end
            item
              EditButtons = <>
              FieldName = 'blrq'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#21382#26085#26399
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'blys'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#21382#21307#29983
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'zzys'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #19978#32423#21307#29983
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'zgys'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #20027#31649#21307#29983
              Width = 80
            end>
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 3
        Top = 106
        Width = 568
        Height = 255
        DataSource = ds_dj
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = GB2312_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = #23435#20307
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = GB2312_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
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
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'bah'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #30149#26696#21495
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'brxm'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #30149#20154#22995#21517
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'brnl'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24180#40836
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'bch'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #24202#21495
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'brdz'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #22320#22336
            Width = 156
          end>
      end
      object treeview: TTreeView
        Left = 577
        Top = 80
        Width = 241
        Height = 448
        Align = alCustom
        Indent = 19
        ReadOnly = True
        TabOrder = 3
        Visible = False
        OnDblClick = treeviewDblClick
        OnExit = treeviewExit
        OnKeyDown = treeviewKeyDown
      end
    end
    object Tab_mzbl: TTabSheet
      Caption = #26597#35810#38376#35786#30149#21382
      ImageIndex = 1
    end
    object tab_blnr: TTabSheet
      Caption = #30149#21382#20869#23481
      ImageIndex = 2
      object EMRPad301: TEMRPad30
        Left = 0
        Top = 0
        Width = 881
        Height = 537
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        ExplicitWidth = 1111
        ControlData = {000001000E5B00008037000000000000}
      end
    end
  end
  object qry_tree: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select dm,mc,'#39#39' zyh from sys_dzbl_mbfl where qybz=1 and substrin' +
        'g(dm,1,2)<>12'
      '  order by dm')
    Left = 400
    Top = 176
  end
  object qry_ksdm: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'dm'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select dm,mc from sys_ksdm where kssx='#39'09'#39' and dm like :dm'
      'union all'
      'select '#39'_000'#39' dm,'#39'<'#20840#37096'>'#39' mc'
      'order by dm')
    Left = 272
    Top = 176
  end
  object qry_dj: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'tmh1'
        Size = -1
        Value = Null
      end
      item
        Name = 'bch1'
        Size = -1
        Value = Null
      end
      item
        Name = 'brxm1'
        Size = -1
        Value = Null
      end
      item
        Name = 'bah1'
        Size = -1
        Value = Null
      end
      item
        Name = 'ksdm1'
        Size = -1
        Value = Null
      end
      item
        Name = 'tmh2'
        Size = -1
        Value = Null
      end
      item
        Name = 'bch2'
        Size = -1
        Value = Null
      end
      item
        Name = 'brxm2'
        Size = -1
        Value = Null
      end
      item
        Name = 'bah2'
        Size = -1
        Value = Null
      end
      item
        Name = 'ksdm2'
        Size = -1
        Value = Null
      end
      item
        Name = 'tmh3'
        Size = -1
        Value = Null
      end
      item
        Name = 'bch3'
        Size = -1
        Value = Null
      end
      item
        Name = 'brxm3'
        Size = -1
        Value = Null
      end
      item
        Name = 'bah3'
        Size = -1
        Value = Null
      end
      item
        Name = 'ksdm3'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select *,'#39'ZY'#39' wz from zysf_zydj where (tmh like :tmh1 or bch lik' +
        'e :bch1 or brxm like :brxm1 or bah like :bah1) and ksdm like :ks' +
        'dm1'
      'union all'
      
        'select *,'#39'CY'#39' wz  from zysf_cydj where (tmh like :tmh2 or bch li' +
        'ke :bch2 or brxm like :brxm2 or bah like :bah2) and ksdm like :k' +
        'sdm2'
      'union all'
      
        'select *,'#39'ZC'#39' wz from zyzc_zysf_cydj where (tmh like :tmh3 or bc' +
        'h like :bch3 or brxm like :brxm3 or bah like :bah3) and ksdm lik' +
        'e :ksdm3')
    Left = 224
    Top = 176
  end
  object ds_dj: TDataSource
    DataSet = qry_dj
    Left = 232
    Top = 224
  end
  object ds_ksdm: TDataSource
    DataSet = qry_ksdm
    Left = 288
    Top = 224
  end
  object qry_bl_list: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select a.brxm,a.brnl,a.bch,b.mc ksmc,c.tmh,c.zyh,c.blid,c.fldm,c' +
        '.bcid,c.blrq,'
      '  c.blys,c.blmc,c.zzys,c.zgys'
      '  from zysf_zydj a left join sys_ksdm b on a.ksdm=b.dm '
      
        '                              inner join zydzbl_zybcjlmx c on a.' +
        'zyh=c.zyh')
    Left = 312
    Top = 176
  end
  object qry_bl: TADOQuery
    Connection = DM_data.ado_mydata
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
        Name = 'blid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'fldm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'select blwj from zydzbl_zydzblmx where zyh=:zyh and blid=:blid a' +
        'nd fldm=:fldm')
    Left = 352
    Top = 176
  end
  object ds_bl_list: TDataSource
    DataSet = qry_bl_list
    Left = 336
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 224
    object N6: TMenuItem
      Caption = #39029#38754#35774#32622
      OnClick = N6Click
    end
    object N1: TMenuItem
      Caption = #25972#27905#26174#31034
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #33258#21160#25490#29256
      OnClick = N2Click
    end
    object N8: TMenuItem
      Caption = #26174#31034'/'#38544#34255'/'#34892#21495
      OnClick = N8Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #25171#21360
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #32493#25171
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #36873#25321#25171#21360
      OnClick = N5Click
    end
  end
end
