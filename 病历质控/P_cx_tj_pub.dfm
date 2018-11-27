object frm_cx_tj_pub: Tfrm_cx_tj_pub
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #30149#21382#35780#23457#26597#35810
  ClientHeight = 559
  ClientWidth = 887
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 28
    Width = 887
    Height = 531
    ActivePage = cxTabSheet2
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 531
    ClientRectRight = 887
    ClientRectTop = 26
    object cxTabSheet2: TcxTabSheet
      Caption = #26102#38388#36136#25511#32479#35745
      ImageIndex = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 887
    Height = 28
    Align = alTop
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object rbmn: TRadioButton
      Left = 125
      Top = 5
      Width = 38
      Height = 15
      Caption = #24180
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = rbmnClick
    end
    object rbmy: TRadioButton
      Left = 45
      Top = 5
      Width = 38
      Height = 15
      Caption = #26376
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbmyClick
    end
    object rbmj: TRadioButton
      Left = 84
      Top = 5
      Width = 38
      Height = 15
      Caption = #23395
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbmjClick
    end
    object rbdr: TRadioButton
      Left = 169
      Top = 5
      Width = 49
      Height = 15
      Caption = #22810#26085
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbdrClick
    end
    object rbmr: TRadioButton
      Left = 5
      Top = 5
      Width = 38
      Height = 15
      Caption = #26085
      Checked = True
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = True
      OnClick = rbmrClick
    end
    object DTPicker1: TDateTimePicker
      Left = 216
      Top = 2
      Width = 115
      Height = 21
      Date = 37201.495810544000000000
      Time = 37201.495810544000000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTPicker2: TDateTimePicker
      Left = 331
      Top = 2
      Width = 115
      Height = 21
      Date = 37201.495881828700000000
      Time = 37201.495881828700000000
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object cbmn: TComboBox
      Left = 216
      Top = 2
      Width = 115
      Height = 21
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 7
      Text = 'cbmn'
      Visible = False
    end
    object cbnj: TComboBox
      Left = 331
      Top = 2
      Width = 115
      Height = 21
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 8
      Text = 'cbnj'
      Visible = False
    end
    object b_tj: TBitBtn
      Left = 488
      Top = 2
      Width = 57
      Height = 22
      Caption = #32479#35745
      TabOrder = 9
      OnClick = b_tjClick
      Layout = blGlyphBottom
    end
    object BitBtn1: TBitBtn
      Left = 570
      Top = 2
      Width = 57
      Height = 22
      Caption = #25171#21360
      TabOrder = 10
      OnClick = BitBtn1Click
      Layout = blGlyphBottom
    end
    object BitBtn2: TBitBtn
      Left = 824
      Top = 4
      Width = 57
      Height = 22
      Caption = #36820#22238
      TabOrder = 11
      OnClick = BitBtn2Click
      Layout = blGlyphBottom
    end
  end
  object ds_zyblsjzk: TDataSource
    DataSet = qry_sjzkmx
    Left = 152
    Top = 248
  end
  object qry_grtj: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select ks.mc ksmc,czy.mc czymc ,sz.mc jkmc ,avg(hz.glrc) glrc, s' +
      'um(hz.wcsl) wcsl,sum(hz.wwcsl) wwcsl,sum(hz.wcjf)wcjf, '#13#10'       ' +
      'sum(hz.wwckf) wwckf,sum(hz.sjfz) sjfz  '#13#10'from zydzbl_hz_sjzkfx h' +
      'z,sys_czy czy ,zydzbl_sjjksz sz,sys_ksdm ks'#13#10'where hz.ysdm=czy.d' +
      'm  and'#13#10'      hz.zkxmdm=sz.dm and'#13#10'      hz.ksdm=ks.dm  '#13#10'group ' +
      'by ks.mc,czy.mc,sz.mc'#13#10
    Parameters = <>
    Left = 256
    Top = 248
  end
  object ds_grtj: TDataSource
    DataSet = qry_grtj
    Left = 296
    Top = 248
  end
  object qry_sjzkmx: TADODataSet
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    CommandText = 
      'select czy.mc ysmc ,mx.tmh,mx.zyh,dj.bch,'#39#24202#21495':'#39'+dj.bch+'#39' '#22995#21517':'#39'+dj.' +
      'brxm+'#39#24615#21035':'#39'+dj.brxb+'#39' '#24180#40836':'#39'+convert(varchar, dj.brnl)+'#39' '#21345#21495':'#39'+mx.tm' +
      'h as brxx,sz.mc,sz.sm, sysj= '#13#10'      case sjdw when '#39#22825#39'   then c' +
      'onvert(varchar,datediff(hour,getdate(),ywcsj))+'#39#23567#26102#39' '#13#10'          ' +
      '      when '#39#23567#26102#39' then convert(varchar,datediff(hour,getdate(),ywc' +
      'sj))+'#39#23567#26102#39#13#10'                when '#39#26376#39'   then convert(varchar,dated' +
      'iff(day,getdate(),ywcsj))+'#39#22825#39' end,'#13#10'                sysjsl=conve' +
      'rt(varchar,datediff(hour,getdate(),ywcsj))'#13#10' from zydzbl_sjjkmx ' +
      'mx,zysf_zydj dj,zydzbl_sjjksz sz,zydzbl_blys ys,sys_czy czy'#13#10' wh' +
      'ere dj.zyh=mx.zyh and'#13#10'      mx.sjdm=sz.dm  and'#13#10'      dj.zyh=ys' +
      '.zyh  and'#13#10'      mx.zyh=ys.zyh  and'#13#10'     ys.zzysdm=czy.dm '
    Parameters = <>
    Left = 192
    Top = 248
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 344
    Top = 251
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = []
      TextColor = clDefault
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = [fsBold]
    end
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      Styles.BandHeader = cxStyle1
      BuiltIn = True
    end
  end
  object sp_sjzkmx: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zydzbl_cx_zyblsjzk_ys;1'
    Parameters = <
      item
        Name = '@ysdm'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@clfs'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@filter'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 439
    Top = 252
  end
  object ds_sjzkmx: TDataSource
    DataSet = sp_sjzkmx
    Left = 479
    Top = 251
  end
end
