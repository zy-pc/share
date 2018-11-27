object frm_yncflbxg: Tfrm_yncflbxg
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #38498#20869#22788#26041#31867#21035#20462#25913'-'#26222#36890#22788#26041#20462#25913
  ClientHeight = 111
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 483
    Height = 111
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 20
      Width = 230
      Height = 27
      Caption = #23558#26222#36890#22788#26041#35843#25972#20026':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object cxButton1: TcxButton
      Left = 153
      Top = 63
      Width = 152
      Height = 35
      Caption = #30830#23450'[&S]'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object box_bdcf: TcxComboBox
      Left = 232
      Top = 16
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = box_bdcfPropertiesChange
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -27
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 243
    end
  end
  object qry_yz: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
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
        Name = 'kdys'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'fs'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @tmh varchar(12),@kdys varchar(4),@fs bit'
      'select @tmh=:zyh,@kdys=:kdys,@fs=:fs'
      
        'delete a from mzdzbl_yncflbmx a where (tmh=@tmh and czydm=@kdys)' +
        ' '
      'or isnull(a.yncflb,'#39#39')='#39#39' '
      
        'or not exists(select top 1 1 from mzdzbl_mzyz b where a.cfbh=b.j' +
        'yflbh)'
      'insert into mzdzbl_yncflbmx(tmh,cfbh,yzsx,yncflb,czydm,czrq)'
      
        'select distinct zyh,jyflbh,(case lb when '#39#20013#33647#39' then lb else yzsx ' +
        'end),isnull(b.lbdm,'#39'01'#39'),kdys,GETDATE()'
      
        'from mzdzbl_mzyz a left join mzdzbl_lbsz b on (case lb when '#39#20013#33647#39 +
        ' then lb else a.yzsx end)=LEFT(b.lbmc,2)'
      'where convert(varchar,kdrq,112)=convert(varchar,getdate(),112)'
      
        'and zyh=@tmh and kdys=@kdys and sfbz=@fs and zxbz=1 and len(jyfl' +
        'bh)=12'
      'select * from mzdzbl_yncflbmx where tmh=@tmh and czydm=@kdys')
    Left = 336
    Top = 62
    object qry_yzcfbh: TStringField
      FieldName = 'cfbh'
      Size = 12
    end
    object qry_yzyzsx: TStringField
      FieldName = 'yzsx'
    end
    object qry_yzyncflb: TStringField
      FieldName = 'yncflb'
      Size = 2
    end
    object qry_yzyzbz: TStringField
      FieldKind = fkLookup
      FieldName = 'yzbz'
      LookupDataSet = qry_cx
      LookupKeyFields = 'lbdm'
      LookupResultField = 'lbmc'
      KeyFields = 'yncflb'
      Lookup = True
    end
  end
  object ds_yz: TDataSource
    DataSet = qry_yz
    Left = 368
    Top = 62
  end
  object qry_cx: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from mzdzbl_lbsz where qybz=1 and xtcflb=0')
    Left = 32
    Top = 62
  end
  object ds_cx: TDataSource
    DataSet = qry_cx
    Left = 64
    Top = 62
  end
  object cxStyleRepository1: TcxStyleRepository
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle2
      Styles.Content = cxStyle3
      Styles.ContentEven = cxStyle4
      Styles.ContentOdd = cxStyle5
      Styles.FilterBox = cxStyle6
      Styles.Inactive = cxStyle11
      Styles.IncSearch = cxStyle12
      Styles.Selection = cxStyle15
      Styles.Footer = cxStyle7
      Styles.Group = cxStyle8
      Styles.GroupByBox = cxStyle9
      Styles.Header = cxStyle10
      Styles.Indicator = cxStyle13
      Styles.Preview = cxStyle14
      BuiltIn = True
    end
  end
end
