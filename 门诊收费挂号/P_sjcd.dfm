�
 TFRM_SJCD 0�  TPF0	Tfrm_sjcdfrm_sjcdLeft� Top� ActiveControlEdit1BorderIcons BorderStylebsSingleCaption   6enc͑SbClientHeight9ClientWidth�Color	clBtnFaceFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style OldCreateOrder	PositionpoScreenCenterScaledPixelsPerInch`
TextHeight TLabelLabel1LeftTopWidthhHeightCaption	   �S6enc�S( & S ) �FocusControlEdit1  TBevelBevel1Left Top Width�Height!AlignalTopExplicitWidth�  TBevelBevel2Left Top!Width�Height|AlignalTopExplicitWidth�  TLabelLabel3LeftTopYWidthPHeightCaption   6e9�{|+R�  TLabelLabel4LeftTop1WidthPHeightCaption   6e9�ё���  TLabelLabel7LeftTop� Width`HeightCaption   6e9��N�YT�  TLabelLabel8LeftTop� WidthhHeightCaption	   6e9��e��( & J ) �  TLabelLabel11LeftTop3WidthPHeightCaption   �u�N�YT�  TLabelLabel2LeftTopWWidthPHeightCaption   �s6enc�S�  TEditEdit1LeftyTopWidthhHeightImeName   -N�e  -   Q Q �b󗓏eQ�lTabOrder OnExit	Edit1Exit
OnKeyPressEdit1KeyPress  TButtonButton2LeftlTopWidth>HeightCaption
   重打(&D)EnabledFont.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFontTabOrderOnClickButton2Click  TButtonButton3Left�TopWidth>HeightCaption
   退出(&Q)Font.CharsetGB2312_CHARSET
Font.ColorclWindowTextFont.Height�	Font.Name   �[SO
Font.Style 
ParentFontTabOrderOnClickButton3Click  TMemoMemo1Left Top� Width�Height� TabStopAlignalBottomColorclWhiteEnabledImeName   -N�e  -   Q Q �b󗓏eQ�lLines.Strings	   提示：K   本功能用于解决收据因为打印机走纸而引起的打印问题。H   计算机在处理时将会把老收据号作为废票，现收据号与   该项收费联系起来。    使用限制：D     1.未作废，2.未退费，3.未结帐,4.必须是本人收据。 ReadOnly	TabOrder  TDBEditDBEdit1LeftyTop.WidthdHeight	DataFieldbrxm
DataSourceds_sjcxImeName   -N�e  -   Q Q �b󗓏eQ�lTabOrder  TDBEditDBEdit2LeftyTopTWidthcHeight	DataFieldfymc
DataSourceds_sjcxImeName   -N�e  -   Q Q �b󗓏eQ�lTabOrder  TDBEditDBEdit3LeftiTop.WidthtHeight	DataFieldsszje
DataSourceds_sjcxImeName   -N�e  -   Q Q �b󗓏eQ�lTabOrder  TDBEditDBEdit4LeftyTop}WidthdHeightAutoSize	DataFieldczyxm
DataSourceds_sjcxImeName   -N�e  -   Q Q �b󗓏eQ�lTabOrder  TDBEditDBEdit5LeftiTop}WidthyHeight	DataFieldsfrq
DataSourceds_sjcxImeName   -N�e  -   Q Q �b󗓏eQ�lTabOrder  TEditEdit2LeftiTopTWidthtHeightImeName   -N�e  -   Q Q �b󗓏eQ�lTabOrder	OnExit	Edit1Exit
OnKeyPressEdit1KeyPress  TDataSourceds_sjcdDataSetsp_sjcdLeft.Top�   TDataSourceds_sjcxDataSet	sp_sfsjcxLeft� Top�   TADOStoredProc	sp_sfsjcx
ConnectionDM_data.ado_mydataProcedureNamemzsf_cx_sj;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@sjbh
Attributes
paNullable DataType	ftInteger	Precision
Value  Name@czydm
Attributes
paNullable DataTypeftStringSizeValue   Left� Top�   TADOStoredProcsp_sjcd
ConnectionDM_data.ado_mydataProcedureNamemzsf_in_sjcd;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@sjlb
Attributes
paNullable DataTypeftStringSizeValue  Name@sjbh
Attributes
paNullable DataType	ftInteger	Precision
Value  Name@cdsjh
Attributes
paNullable DataType	ftInteger	Precision
Value  Name@czydm
Attributes
paNullable DataTypeftStringSizeValue  Name@sczt
Attributes
paNullable DataTypeftString	DirectionpdInputOutputSizeValue   LeftbTop�   	TADOQueryqry_fymx
ConnectionDM_data.ado_mydataLockType
ltReadOnly
ParametersNamesjbh
AttributespaSigned
paNullable DataType	ftInteger	Precision
SizeValue   SQL.Stringsbselect a.tmh,a.czks,b.mc ksmc,a.kdys,c.mc ysmc,a.brxm,a.fydm,d.dymc fydymc,a.fyzje,a.sszje,a.sfrq,_       a.cfbh,a.sjbh,a.tfbz,a.zfbz,a.czys,e.mc sfczymc,a.sfbz,a.sfczy,a.kdks,a.czwz,a.ph,a.zkje9  from mzsf_mzfymx a left join sys_ksdm b on a.czks=b.dm 8                     left join sys_czy c  on a.kdys=c.dm<                     left join sys_kjsfxm d on a.fydm=d.fydm8                     left join sys_czy e on a.sfczy=e.dm  where a.sjbh=:sjbh Left`Top    