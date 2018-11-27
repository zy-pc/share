object frm_fybxsz: Tfrm_fybxsz
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #36153#29992#25253#38144#35774#32622
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 64
    ExplicitTop = 56
    ExplicitWidth = 185
    object lbl1: TLabel
      Left = 32
      Top = 15
      Width = 60
      Height = 15
      Caption = #36153#29992#31867#21035
    end
    object cbb1: TSXComboBox
      Left = 98
      Top = 10
      Width = 145
      Height = 23
      Style = csDropDownList
      ItemHeight = 15
      TabOrder = 0
      Value = '-1'
      UsesQry = True
      TableName = 'sys_fylb'
      Connection = DM_data.ado_mydata
      ShowField = 'mc'
      ValueField = 'dm'
      ShowAll = False
    end
    object btn1: TButton
      Left = 361
      Top = 7
      Width = 75
      Height = 25
      Caption = #26032#39033#30446#23548#20837
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 280
      Top = 7
      Width = 75
      Height = 25
      Caption = #28155#21152#35774#32622
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 442
      Top = 8
      Width = 75
      Height = 25
      Caption = #35774#32622
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 523
      Top = 7
      Width = 75
      Height = 25
      Caption = #20445#23384
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 604
      Top = 7
      Width = 75
      Height = 25
      Caption = #25918#24323
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btn5Click
    end
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 60
    Width = 561
    Height = 502
    Align = alLeft
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = dbgrd1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'yybm'
        ReadOnly = True
        Title.Caption = #20195#30721
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fymc'
        ReadOnly = True
        Title.Caption = #21517#31216
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bxsm'
        ReadOnly = True
        Title.Caption = #35774#32622#20869#23481
        Width = 143
        Visible = True
      end>
  end
  object dbgrd2: TDBGrid
    Left = 561
    Top = 60
    Width = 223
    Height = 502
    Align = alClient
    DataSource = ds2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = pm1
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = #23435#20307
    TitleFont.Style = []
    OnDblClick = dbgrd2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'bxsm'
        Title.Caption = #21487#36873#20869#23481
        Width = 179
        Visible = True
      end>
  end
  object pnl2: TPanel
    Left = 0
    Top = 41
    Width = 784
    Height = 19
    Align = alTop
    TabOrder = 3
    object lbl2: TLabel
      Left = 1
      Top = 1
      Width = 782
      Height = 15
      Align = alTop
      Alignment = taCenter
      Caption = #21452#20987#21491#36793#30340#31867#21035#25110#25163#21160#22635#20889#23436#25104#23545#24038#36793#24050#36873#39033#30446#30340#35774#32622#12290
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 400
    end
  end
  object qry_sz: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltBatchOptimistic
    AfterPost = qry_szAfterPost
    Parameters = <>
    Left = 272
    Top = 232
  end
  object qry2: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <>
    Left = 656
    Top = 248
  end
  object ds1: TDataSource
    DataSet = qry_sz
    Left = 272
    Top = 200
  end
  object ds2: TDataSource
    DataSet = qry2
    Left = 656
    Top = 216
  end
  object qry_xxmdr: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      '--'#25554#20837#25910#36153#39033#30446'                '
      
        'insert into zysf_sb_nhfymxdzb(yybm,fymc,zygg,zydw,zydj,gjbm,ybbm' +
        ',fylb)      '
      
        'select fydm,isnull(fymc,'#39#39'),'#39#39',dw,sfbz,szdm,fydm ,'#39'01'#39' from sys_' +
        'kjsfxm               '
      
        'where fydm not in(select yybm from zysf_sb_nhfymxdzb) and qybz=1' +
        '           '
      '--'#25554#20837#33647#21697'                '
      
        'insert into zysf_sb_nhfymxdzb(yybm,fymc,zygg,zydw,zydj,gjbm,ybbm' +
        ',fylb,jx)               '
      
        'select ypdm,ypmc,isnull(ypgg,'#39#39'),zyyfdw,zylsj,ypdm,ypdm,'#39'02'#39',mc ' +
        '              '
      '  from sys_ypdm a,sys_jxbm b      '
      
        ' where ypdm not in(select yybm from zysf_sb_nhfymxdzb) and sybz ' +
        '= 1         '
      ' and a.jxbm = b.dm    '
      ' '
      ' update a set a.sybz = b.qybz '
      ' from zysf_sb_nhfymxdzb a,sys_kjsfxm b'
      ' where a.yybm = b.fydm'
      ' '
      ' update a set a.sybz = b.sybz'
      ' from zysf_sb_nhfymxdzb a,sys_ypdm b'
      ' where a.yybm = b.ypdm')
    Left = 216
    Top = 104
  end
  object pm1: TPopupMenu
    Left = 640
    Top = 160
    object N1: TMenuItem
      Caption = #26356#26032
      OnClick = N1Click
    end
  end
end
