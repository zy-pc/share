�
 TFRM_SJQY 0�  TPF0	TFrm_SjqyFrm_SjqyLeft� Top� BorderStylebsDialogCaption   6enc/T(uClientHeightClientWidth�Color	clBtnFaceFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   ' �[SO
Font.Style OldCreateOrder	PositionpoScreenCenterOnShowFormShowPixelsPerInch`
TextHeight 	TGroupBox	GroupBox2Left Top Width�HeightAlignalClientCaption       6encRh�    TabOrder  	TcxButtonBBtn_YesLeft� Top� WidthZHeightCaption
   启用(&Q)Font.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFontTabOrder OnClickBBtn_YesClick	NumGlyphs  	TcxButtonBBtn_returnLeftlTop� WidthZHeightCaption
   返回(&X)Font.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFontTabOrderOnClickBBtn_returnClick	NumGlyphs  TPanelPanel1LeftTopWidth�Height� AlignalTop
BevelOuterbvNoneCaptionPanel1TabOrder 	TDBGridEhDBGrid_SjmxLeft Top Width�Height� AlignalClientDataGrouping.GroupLevels 
DataSourceDS_Qry_SjUseFlat	FooterColorclWindowFooterFont.CharsetGB2312_CHARSETFooterFont.ColorclWindowTextFooterFont.Height�FooterFont.Name   ' �[SOFooterFont.Style ImeName   -N�e  -   Q Q �b󗓏eQ�lOptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgConfirmDeletedgCancelOnExit ReadOnly	RowDetailPanel.Color	clBtnFaceTabOrder TitleFont.CharsetGB2312_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.Name   ' �[SOTitleFont.Style 
OnKeyPressDBGrid_SjmxKeyPressColumnsEditButtons 	FieldNamemcFooters Title.Caption   {|+RT�yWidthM EditButtons 	FieldNamesjzhFooters Title.Caption   �~bk�SWidth�  EditButtons 	FieldNamesylsFooters Title.Caption   iRYOT�peWidthR EditButtons 	FieldNameusedFooters Title.Caption   O(uWidth�    TRowDetailPanelControlEhRowDetailData     TDataSourceDS_Qry_SjUseAutoEditDataSet	Qry_SjuseLeft� TopQ  	TADOQuery	Qry_Sjuse
ConnectionDM_data.ado_mydataOnCalcFieldsQry_SjuseCalcFields
ParametersNamesr_czydmDataTypeftStringNumericScale� 	Precision� SizeValue   SQL.Strings7Select lb.mc, lymx.sjzh, lymx.qybz,lymx.sjlb,lymx.sjqh,xcase when lymx.sybh=0 then (lymx.sjzh-lymx.sjqh)+1 when lymx.sybh=lymx.sjzh then 0 else (lymx.sjzh-lymx.sybh)+1 end syls#   from sys_sjlymx lymx,sys_sjlb lb!where  lymx.sjlb = lb.dm      and!       lymx.lyr=:sr_czydm     and!       lymx.sjzh-lymx.sybh>0  and       lymx.tybz=0      Left� TopQ TStringFieldQry_Sjusemc	FieldNamemc	FixedChar	Size  TIntegerFieldQry_Sjusesjzh	FieldNamesjzh  TBooleanFieldQry_Sjuseqybz	FieldNameqybz  TStringFieldQry_Sjusesjlb	FieldNamesjlb	FixedChar	Size  TIntegerFieldQry_Sjusesjqh	FieldNamesjqh  TIntegerFieldQry_Sjusesyls	FieldNamesylsReadOnly	  TStringFieldQry_Sjuseused	FieldKindfkCalculated	FieldNameused
Calculated	    