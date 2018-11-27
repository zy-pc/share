object from_proc: Tfrom_proc
  Left = 0
  Top = 0
  Caption = #36807#31243
  ClientHeight = 523
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 8
    ExplicitWidth = 808
    object zx: TcxButton
      Left = 488
      Top = 10
      Width = 75
      Height = 25
      Caption = #25191#34892
      TabOrder = 0
      OnClick = zxClick
    end
    object cte: TcxTextEdit
      Left = 64
      Top = 11
      TabOrder = 1
      Width = 250
    end
    object cx: TcxButton
      Left = 320
      Top = 10
      Width = 75
      Height = 25
      Caption = #26597#35810
      TabOrder = 2
    end
    object tc: TcxButton
      Left = 728
      Top = 10
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 3
    end
  end
  object tcb: TcxCheckListBox
    Left = 0
    Top = 41
    Width = 905
    Height = 482
    Align = alClient
    Items = <
      item
        Text = 'mzgh_cx_kyh'
      end>
    TabOrder = 1
    ExplicitWidth = 362
  end
  object com_mzgh_cx_kyh: TADOCommand
    CommandText = 
      'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
      'dbo].[mzgh_cx_kyh]'#39') and OBJECTPROPERTY(id, N'#39'IsProcedure'#39') = 1)' +
      #13#10#9'drop procedure mzgh_cx_kyh'#13#10#13#10'CREATE procedure mzgh_cx_kyh(@t' +
      'mh varchar(12))'#13#10'AS'#13#10'declare @yydm char(4)'#13#10'select @yydm=yymc fr' +
      'om sys_yyxx'#13#10#13#10'if (len(rtrim(@tmh))>9) or (@yydm='#39'0015'#39' and len(' +
      'rtrim(@tmh))=9 and substring(@tmh,1,1)='#39'9'#39')'#13#10'begin'#13#10#9'select a.tm' +
      'h,a.sbkh,a.brxm,a.zycs,a.brxb,a.csrq,a.brsf,a.brjg,a.brmz,a.brzy' +
      ',a.brdz,a.brnl,  '#13#10'       '#9' a.fylb,a.dbr,a.dbrdz,a.sfzhm,a.yjze,' +
      'a.zfy,a.xydj,a.syje,'#39#39' kyhdj,'#39#39' yhbl,c.mc lbmc,c.mzfyblmc '#13#10#9'fro' +
      'm sys_kyh_ls a'#13#10#9#9#9' left join sys_fylb c on a.fylb=c.dm '#13#10#9'where' +
      ' a.tmh=@tmh '#9#13#10'end '#13#10'else  '#13#10'begin'#13#10#9'select a.tmh,a.sbkh,a.brxm,' +
      'a.zycs,a.brxb,a.csrq,a.brsf,a.brjg,a.brmz,a.brzy,a.brdz,a.brnl, ' +
      ' '#13#10'       '#9' a.fylb,a.dbr,a.dbrdz,a.sfzhm,a.yjze,a.zfy,a.xydj,a.s' +
      'yje,a.kyhdj,b.yhbl,c.mc lbmc,c.mzfyblmc  '#13#10#9'from sys_kyh a'#13#10#9#9#9' ' +
      'left join sys_kyhlb b on a.kyhdj=b.kyhdj'#13#10#9#9#9' left join sys_fylb' +
      ' c on a.fylb=c.dm '#13#10#9'where a.tmh=@tmh'#13#10'end'
    Connection = DM_data.ado_mydata
    Parameters = <>
    Left = 88
    Top = 40
  end
  object qry_drop: TADOQuery
    Connection = DM_data.ado_mydata
    Parameters = <>
    SQL.Strings = (
      
        'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
        'dbo].[mzgh_cx_kyh]'#39') and OBJECTPROPERTY(id, N'#39'IsProcedure'#39') = 1)'
      #9'drop procedure mzgh_cx_kyh'
      ''
      'CREATE procedure mzgh_cx_kyh(@tmh varchar(12))'
      'AS'
      'declare @yydm char(4)'
      'select @yydm=yymc from sys_yyxx'
      ''
      
        'if (len(rtrim(@tmh))>9) or (@yydm='#39'0015'#39' and len(rtrim(@tmh))=9 ' +
        'and substring(@tmh,1,1)='#39'9'#39')'
      'begin'
      
        #9'select a.tmh,a.sbkh,a.brxm,a.zycs,a.brxb,a.csrq,a.brsf,a.brjg,a' +
        '.brmz,a.brzy,a.brdz,a.brnl,  '
      
        '       '#9' a.fylb,a.dbr,a.dbrdz,a.sfzhm,a.yjze,a.zfy,a.xydj,a.syje' +
        ','#39#39' kyhdj,'#39#39' yhbl,c.mc lbmc,c.mzfyblmc '
      #9'from sys_kyh_ls a'
      #9#9#9' left join sys_fylb c on a.fylb=c.dm '
      #9'where a.tmh=@tmh '#9
      'end '
      'else  '
      'begin'
      
        #9'select a.tmh,a.sbkh,a.brxm,a.zycs,a.brxb,a.csrq,a.brsf,a.brjg,a' +
        '.brmz,a.brzy,a.brdz,a.brnl,  '
      
        '       '#9' a.fylb,a.dbr,a.dbrdz,a.sfzhm,a.yjze,a.zfy,a.xydj,a.syje' +
        ',a.kyhdj,b.yhbl,c.mc lbmc,c.mzfyblmc  '
      #9'from sys_kyh a'
      #9#9#9' left join sys_kyhlb b on a.kyhdj=b.kyhdj'
      #9#9#9' left join sys_fylb c on a.fylb=c.dm '
      #9'where a.tmh=@tmh'
      'end')
    Left = 568
    Top = 8
  end
end
