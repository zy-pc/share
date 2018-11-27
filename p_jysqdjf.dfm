object frm_jysqdjf: Tfrm_jysqdjf
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #26816#39564#30003#35831#21333#35745#36153
  ClientHeight = 466
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #26032#23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 466
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 65
      Width = 918
      Height = 400
      Align = alClient
      Caption = #26816#39564#21333#20449#24687
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 2
        Top = 17
        Width = 914
        Height = 381
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_cx_jyxm
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid1DBTableView1Column10
            end
            item
              Format = #24635#37329#39069
              Kind = skCount
              Column = cxGrid1DBTableView1Column7
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          object cxGrid1DBTableView1Column9: TcxGridDBColumn
            Caption = #21345#21495
            DataBinding.FieldName = 'tmh'
            HeaderAlignmentHorz = taCenter
            Width = 101
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #30149#20154#22995#21517
            DataBinding.FieldName = 'brxm'
            HeaderAlignmentHorz = taCenter
            Width = 93
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = #31185#23460
            DataBinding.FieldName = 'kdksmc'
            HeaderAlignmentHorz = taCenter
            Width = 87
          end
          object cxGrid1DBTableView1Column3: TcxGridDBColumn
            Caption = #24202#21495
            DataBinding.FieldName = 'bch'
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object cxGrid1DBTableView1Column4: TcxGridDBColumn
            Caption = #24180#40836
            DataBinding.FieldName = 'brnl'
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
          object cxGrid1DBTableView1Column5: TcxGridDBColumn
            Caption = #26816#39564#39033#30446
            DataBinding.FieldName = 'jyxmmc'
            HeaderAlignmentHorz = taCenter
            Width = 134
          end
          object cxGrid1DBTableView1Column6: TcxGridDBColumn
            Caption = #26816#39564#26679#26412
            DataBinding.FieldName = 'yb'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object cxGrid1DBTableView1Column7: TcxGridDBColumn
            Caption = #37319#26679#26102#38388
            DataBinding.FieldName = 'cysj'
            HeaderAlignmentHorz = taCenter
            Width = 89
          end
          object cxGrid1DBTableView1Column10: TcxGridDBColumn
            Caption = #36153#29992#37329#39069
            DataBinding.FieldName = 'je'
            Width = 94
          end
          object cxGrid1DBTableView1Column8: TcxGridDBColumn
            Caption = #26159#21542#35745#36153
            DataBinding.FieldName = 'sfjf'
            HeaderAlignmentHorz = taCenter
            Width = 86
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 918
      Height = 64
      Align = alTop
      Caption = #25195#25551#26465#30721
      TabOrder = 1
      object Edit1: TEdit
        Left = 25
        Top = 20
        Width = 177
        Height = 23
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
      object Button1: TButton
        Left = 208
        Top = 19
        Width = 121
        Height = 25
        Caption = #25552#21462#26816#39564#20449#24687
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 574
        Top = 19
        Width = 79
        Height = 25
        Caption = #36864#20986
        TabOrder = 2
        OnClick = Button3Click
      end
    end
  end
  object Button4: TButton
    Left = 346
    Top = 20
    Width = 79
    Height = 25
    Caption = #30830#35748#35745#36153
    TabOrder = 1
    OnClick = Button4Click
  end
  object qry_cx_jyxm: TADOQuery
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
        Value = #8216#8217
      end>
    SQL.Strings = (
      
        'select fymx.id,fymx.tmh,fymx.zyh,fymx.fyje,czks.mc czks,kdks.mc ' +
        'kdks,'
      '       fymx.sfrq,czy.mc sfczy,fymx.sjbh,fymx.jsdh,'
      '       fymx.jsbz tfbz,fymx.tfrq,fymx.tfczy,zydj.brxm,'
      '       kdys.mc kdys,czys.mc czys,sfxm.fymc,sfxm.dw,'
      '       case when fymx.bz='#39#30830#35748#39' then '#39#26159#39' else '#39#21542#39' end yjqrbz'
      
        '   from zysf_zyfymx fymx ,sys_czy czy,sys_czy kdys ,sys_czy czys' +
        ','
      
        '        sys_ksdm  czks, sys_ksdm kdks,zysf_zydj zydj,sys_kjsfxm ' +
        'sfxm'
      '   where fymx.sfczy=czy.dm   and'
      '         fymx.czks=czks.dm   and'
      '         fymx.kdks=kdks.dm   and'
      '         fymx.kdys*=kdys.dm  and'
      '         fymx.czys*=czys.dm  and'
      '         fymx.fydm=sfxm.fydm and'
      '         fymx.zyh=zydj.zyh      and'
      '         fymx.zyh = :zyh'
      '  order by sfrq desc')
    Left = 547
    Top = 214
  end
  object ds_cx_jyxm: TDataSource
    DataSet = qry_cx_jyxm
    Left = 512
    Top = 214
  end
  object sp_zxjfzb: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zybl_create_yzjfmx_zxjf'
    Parameters = <>
    Left = 282
    Top = 192
  end
  object sp_zxjfxr: TADOStoredProc
    Connection = DM_data.ado_mydata
    ProcedureName = 'zyyz_in_writefymx_zxjf'
    Parameters = <>
    Left = 330
    Top = 192
  end
end
