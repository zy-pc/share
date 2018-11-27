object frm_blps_ps: Tfrm_blps_ps
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #30149#21382#35780#23457
  ClientHeight = 626
  ClientWidth = 958
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
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 37
    Width = 958
    Height = 589
    ActivePage = TabSheet_cyxz
    Align = alClient
    TabOrder = 0
    object TabSheet_cyxz: TTabSheet
      Caption = #25277#26679#36873#25321
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 950
        Height = 382
        Align = alTop
        TabOrder = 0
        object DBGridEh_cyxz: TDBGridEh
          Left = 1
          Top = 1
          Width = 568
          Height = 380
          Align = alLeft
          AllowedOperations = []
          DataSource = ds_cyxz
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = #23435#20307
          FooterFont.Style = []
          FrozenCols = 2
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = #23435#20307
          TitleFont.Style = []
          OnDblClick = DBGridEh_cyxzDblClick
          OnKeyDown = DBGridEh_cyxzKeyDown
          Columns = <
            item
              EditButtons = <>
              FieldName = 'bz'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #35780#23457#26631#24535
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'tmh'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #26465#30721#21495
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'xm'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#20154#22995#21517
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'blmc'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#21382#21517#31216
              Width = 145
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
              FieldName = 'blid'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #30149#21382'ID'
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'cylx'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #31867#22411
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'cysj'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25277#26679#26102#38388
              Width = 160
            end
            item
              EditButtons = <>
              FieldName = 'cyid'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #25277#26679'ID'
              Width = 49
            end>
        end
        object GroupBox2: TGroupBox
          Left = 569
          Top = 1
          Width = 586
          Height = 380
          Align = alLeft
          Caption = #35780#23457#32454#39033
          TabOrder = 1
          object DBGridEh_psxx: TDBGridEh
            Left = 2
            Top = 17
            Width = 582
            Height = 361
            Align = alClient
            AllowedOperations = []
            DataSource = ds_psbz_xx
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = ANSI_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = #23435#20307
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = #23435#20307
            TitleFont.Style = []
            OnCellClick = DBGridEh_psxxCellClick
            OnDrawColumnCell = DBGridEh_psxxDrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'xzzt'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #29366#24577
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 36
              end
              item
                EditButtons = <>
                FieldName = 'dm'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #20195#30721
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'xxmc'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #21517#31216
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 167
              end
              item
                EditButtons = <>
                FieldName = 'zfs'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #20998#20540
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'xxsxmc'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = #31867#22411
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = #23435#20307
                Title.Font.Style = []
                Width = 81
              end>
          end
        end
      end
      object cxSplitter2: TcxSplitter
        Left = 0
        Top = 382
        Width = 950
        Height = 8
        Hint = #30149#21382#20869#23481
        HotZoneClassName = 'TcxMediaPlayer8Style'
        AlignSplitter = salTop
        Control = Panel1
        ShowHint = True
        ParentShowHint = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 390
        Width = 950
        Height = 168
        Align = alClient
        TabOrder = 2
        object EMRPad301: TEMRPad30
          Left = 1
          Top = 1
          Width = 948
          Height = 166
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 0
          ExplicitWidth = 1185
          ExplicitHeight = 209
          ControlData = {00000100624E0000BA0D000000000000}
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = #35780#23457#24773#20917
      ImageIndex = 2
      OnEnter = TabSheet1Enter
      object ListView_psqk: TListView
        Left = 0
        Top = 0
        Width = 950
        Height = 558
        Align = alClient
        Columns = <
          item
            Caption = #21517#31216
            Width = 160
          end
          item
            Alignment = taCenter
            Caption = #25968#37327
            Width = 55
          end>
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #23435#20307
        Font.Style = []
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
  end
  object Panel_cmd: TPanel
    Left = 0
    Top = 0
    Width = 958
    Height = 37
    Align = alTop
    TabOrder = 1
    object BBtn_Next: TBitBtn
      Left = 400
      Top = 5
      Width = 75
      Height = 25
      Caption = #19979#19968#20221
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BBtn_NextClick
    end
    object BBtn_Clear: TBitBtn
      Left = 519
      Top = 5
      Width = 65
      Height = 25
      Caption = #28165#38500#36873#39033
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BBtn_ClearClick
    end
    object BBtn_drop: TBitBtn
      Left = 583
      Top = 5
      Width = 65
      Height = 25
      Caption = #25918#24323#35780#23457
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBtn_dropClick
    end
    object BBtn_tsys: TBitBtn
      Left = 647
      Top = 5
      Width = 65
      Height = 25
      Caption = #39044#23457#20445#23384
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      OnClick = BBtn_tsysClick
    end
    object BBtn_Save: TBitBtn
      Left = 711
      Top = 5
      Width = 65
      Height = 25
      Caption = #32456#23457#20445#23384
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBtn_SaveClick
    end
    object BitBtn1: TBitBtn
      Left = 871
      Top = 5
      Width = 70
      Height = 25
      Caption = #36820#22238
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object Button1: TButton
      Left = 24
      Top = 5
      Width = 105
      Height = 25
      Caption = #20986#38498#30149#20154#25277#26679
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object qry_blnr: TADOQuery
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
        Name = 'blid'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'zyh1'
        Size = -1
        Value = Null
      end
      item
        Name = 'blid1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from zydzbl_zydzblmx where zyh=:zyh and blid=:blid'
      'union all'
      'select * from zydzbl_cydzblmx where zyh=:zyh1 and blid=:blid1')
    Left = 232
    Top = 240
  end
  object ds_blnr: TDataSource
    DataSet = qry_blnr
    Left = 280
    Top = 184
  end
  object ds_psbz_xx: TDataSource
    DataSet = qry_psbz_xx
    Left = 328
    Top = 184
  end
  object ds_cyxz: TDataSource
    DataSet = qry_cyxz
    Left = 224
    Top = 184
  end
  object qry_cyxz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'czydm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.mc ksmc,c.psdm'
      '  from zydzbl_cyblps_cy a,sys_ksdm b,sys_dzbl_mbmx c'
      
        '  where a.bz=0 and a.ksdm=b.dm and a.mbdm=c.mbdm and a.cyry=:czy' +
        'dm'
      '  order by a.cysj')
    Left = 184
    Top = 240
  end
  object qry_psdx_save: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
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
        Name = 'cyid'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'lb'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select * from zydzbl_blps_qxdx'
      '  where zyh=:zyh and blid=:blid and cyid=:cyid and dm=:lb')
    Left = 344
    Top = 240
  end
  object qry_psbz_dx: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'dm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select * from zydzbl_psbz_dx where dm=:dm')
    Left = 272
    Top = 240
  end
  object qry_psxx_save: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from zydzbl_blps_qxxx where 1<>1')
    Left = 384
    Top = 208
  end
  object qry_xxsx: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from zydzbl_psbz_xxsx')
    Left = 416
    Top = 240
  end
  object sp_saveAll: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zydzbl_in_blps;1'
    Parameters = <
      item
        Name = '@tmh'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
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
        Name = '@blid'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end
      item
        Name = '@lb'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@cyid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@psks'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@psys'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@psfs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ErrorText'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 60
        Value = Null
      end>
    Left = 136
    Top = 240
  end
  object qry_psbz_xx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'zyh'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 16
        Value = Null
      end
      item
        Name = 'blid'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'cyid'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'lb1'
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = 'lb2'
        DataType = ftString
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'select a.xh,a.dm,a.mc xxmc,a.qzxs zfs,a.lb,a.dj xxsx,c.mc xxsxmc' +
        ','
      '          b.cc xzzt,c.lx lxbz'
      '  from zydzbl_psbz_xx a'
      '          left join (select * from zydzbl_blps_qxxx'
      
        '                         where zyh=:zyh and blid=:blid  and cyid' +
        '=:cyid and lb=:lb1) b'
      '                on a.xh=b.xh'
      '         left join zydzbl_psbz_xxsx c on a.dj=c.dm'
      '  where  a.lb=:lb2'
      '  order by a.xh,a.dm')
    Left = 312
    Top = 272
    object qry_psbz_xxxh: TIntegerField
      FieldName = 'xh'
    end
    object qry_psbz_xxdm: TIntegerField
      FieldName = 'dm'
    end
    object qry_psbz_xxxxmc: TStringField
      FieldName = 'xxmc'
      Size = 255
    end
    object qry_psbz_xxzfs: TBCDField
      FieldName = 'zfs'
      Precision = 6
      Size = 2
    end
    object qry_psbz_xxlb: TStringField
      FieldName = 'lb'
      Size = 2
    end
    object qry_psbz_xxxxsx: TStringField
      FieldName = 'xxsx'
      Size = 2
    end
    object qry_psbz_xxxxsxmc: TStringField
      FieldName = 'xxsxmc'
      Size = 30
    end
    object qry_psbz_xxxzzt: TStringField
      FieldName = 'xzzt'
      Size = 2
    end
    object qry_psbz_xxlxbz: TStringField
      FieldName = 'lxbz'
      FixedChar = True
      Size = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 560
    object N1: TMenuItem
      Caption = #22797#21046
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #36923#36753#23457#26597
      OnClick = N2Click
    end
  end
  object qry_zkcx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'czydm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select a.*,b.mc ksmc,c.psdm'
      '  from zydzbl_blps_cy a,sys_ksdm b,sys_dzbl_mbmx c'
      
        '  where a.bz=0 and a.ksdm=b.dm and a.mbdm=c.mbdm and a.cyry=:czy' +
        'dm'
      '  order by a.cysj')
    Left = 256
    Top = 560
  end
end
