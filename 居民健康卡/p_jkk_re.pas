unit p_jkk_re;

interface
type

{$REGION '注释的结构体'}
  //  pub_jkk = ( jkk_CardInfo, jkk_PsnBaseInfo, jkk_PayTypeInfo, jkk_AddressInfo, jkk_RelPsnInfo,
  //    jkk_MarryInfo, jkk_MedicalFlags, jkk_Mental, jkk_PapersInfo, jkk_AllergyInfo,
  //    jkk_ImmuneInfo, jkk_InbedInfo, jkk_ExamInfo );
  //  Pjkk_jkkxx = ^Tjkk_jkkxx;
  //  Tjkk_jkkxx = packed record
  //    case i: pub_jkk of
  //      jkk_CardInfo: (
  //        CardTyp: WideString;
  //        StdVer: WideString;
  //        OrgName: WideString;
  //        OrgCode: WideString;
  //        PublishDT: WideString;
  //        CardNo: WideString;
  //        CardID: WideString;
  //        CityNo: WideString;
  //        CityName: WideString;
  //        );
  //      jkk_PsnBaseInfo: (
  //        PsnName: WideString;
  //        PsnGen: WideString;
  //        NationCode: WideString;
  //        BirthDay: WideString;
  //        PsnID: WideString;
  //        );
  //      jkk_PayTypeInfo: (
  //        ValidDate: WideString;
  //        PhoneNo1: WideString;
  //        PhoneNo2: WideString;
  //        PayType1: WideString;
  //        PayType2: WideString;
  //        PayType3: WideString;
  //        );
  //
  //      jkk_AddressInfo: (
  //        AddrType1: WideString;
  //        Address1: WideString;
  //        AddrType2: WideString;
  //        Address2: WideString;
  //        );
  //
  //      jkk_RelPsnInfo: (
  //        PsnName1: WideString;
  //        PsnRel1: WideString;
  //        PsnPhone1: WideString;
  //        PsnName2: WideString;
  //        PsnRel2: WideString;
  //        PsnPhone2: WideString;
  //        PsnName3: WideString;
  //        PsnRel3: WideString;
  //        PsnPhone3: WideString;
  //        );
  //
  //      jkk_MarryInfo: (
  //        Degree: WideString;
  //        Marry: WideString;
  //        Job: WideString;
  //        );
  //
  //      jkk_MedicalFlags: (
  //        MedicalFlags: WideString;
  //        OtherMedWarning: WideString;
  //        ABO: WideString;
  //        RH: WideString;
  //        XCBZ: WideString;
  //        XZBBZ: WideString;
  //        XNXGBBZ: WideString;
  //        NXWLBZ: WideString;
  //        TNBBZ: WideString;
  //        QGYBZ: WideString;
  //        TXBZ: WideString;
  //        QGYZBZ: WideString;
  //        QGQSBZ: WideString;
  //        DXBBZ: WideString;
  //        KZXYZBZ: WideString;
  //        XZQBQBZ: WideString;
  //        );
  //
  //      jkk_Mental: (
  //        MentalFlag: WideString;
  //        );
  //
  //      jkk_PapersInfo: (
  //        PaperType: WideString;
  //        PaperNo: WideString;
  //        EHRNo: WideString;
  //        NewRuralNo: WideString;
  //        );
  //
  //      jkk_AllergyInfo: (
  //        AllergyName1: WideString;
  //        AllergyName2: WideString;
  //        AllergyName3: WideString;
  //        Allergy1: WideString;
  //        Allergy2: WideString;
  //        Allergy3: WideString;
  //        );
  //
  //      jkk_ImmuneInfo: (
  //        ImmuneName1: WideString;
  //        ImmuneName2: WideString;
  //        ImmuneName3: WideString;
  //        ImmuneName4: WideString;
  //        ImmuneName5: WideString;
  //        ImmuneName6: WideString;
  //        ImmuneName7: WideString;
  //        ImmuneName8: WideString;
  //        ImmuneName9: WideString;
  //        ImmuneName10: WideString;
  //        ImmuneDate1: WideString;
  //        ImmuneDate2: WideString;
  //        ImmuneDate3: WideString;
  //        ImmuneDate4: WideString;
  //        ImmuneDate5: WideString;
  //        ImmuneDate6: WideString;
  //        ImmuneDate7: WideString;
  //        ImmuneDate8: WideString;
  //        ImmuneDate9: WideString;
  //        ImmuneDate10: WideString;
  //        );
  //
  //      jkk_InbedInfo: (
  //        zy_HospName: array[0..70 * 2] of Char; // 住院机构名称  必填
  //        zy_HospOrgCode: array[0..10 * 2] of Char; // 住院机构组织机构代码  必填
  //        zy_InbedDT: array[0..4 * 2] of Char; // 入院日期  必填
  //        zy_InbedCnt: array[0..2 * 2] of Char; // 住院患者住院次数  必填
  //        zy_PatienNO: array[0..18 * 2] of Char; // 病案号  必填
  //        zy_InbedOffice: array[0..50 * 2] of Char; // 住院患者入院科室名称  必填
  //        zy_InbedIllness: array[0..1 * 2] of Char; // 住院患者入院病情  必填
  //        zy_HospInfectName: array[0..50 * 2] of Char; // 住院患者医院感染名称  可选
  //        zy_DiseaseReason: array[0..7 * 2] of Char; // 住院患者损伤和中毒外部原因  可选
  //        zy_BloAssCode1: array[0..1 * 2] of Char; // 住院患者血清学检查项目代码1  可选
  //        zy_BloAssResCode1: array[0..1 * 2] of Char; // 住院患者血清学检查结果代码1  可选
  //        zy_DiseaseName1: array[0..50 * 2] of Char; // 疾病诊断名称1  必填
  //        zy_DiseaseCode1: array[0..7 * 2] of Char; // 疾病诊断代码1  必填
  //        zy_ConfirmDT1: array[0..4 * 2] of Char; // 确诊日期1  必填
  //        zy_DiagnInfo1: array[0..20 * 2] of Char; // 诊断符合情况描述1  可选
  //        zy_DiagnCode1: array[0..1 * 2] of Char; // 诊断符合情况代码1  可选
  //        zy_DiagnTypeInfo1: array[0..20 * 2] of Char; // 诊断类型描述1  可选
  //        zy_DiagnTypeCode1: array[0..1 * 2] of Char; // 诊断类型代码1  可选
  //        zy_TreatResultsCode1: array[0..1 * 2] of Char; // 治疗结果代码1  可选
  //        zy_SurgeryName1: array[0..80 * 2] of Char; // 手术/操作名称1  可选
  //        zy_SurgeryCode1: array[0..5 * 2] of Char; // 手术/操作代码1  可选
  //        zy_SurgeryDT1: array[0..4 * 2] of Char; // 手术/操作日期1  可选
  //        zy_AnesthMethod1: array[0..50 * 2] of Char; // 麻醉方法1  可选
  //        zy_AnesthCode1: array[0..1 * 2] of Char; // 麻醉方法代码1  可选
  //        zy_HealingLevel1: array[0..1 * 2] of Char; // 愈合等级代码1  可选
  //        zy_BloodAssayName2: array[0..1 * 2] of Char; // 住院患者血清学检查项目代码2  可选
  //        zy_BloodAssayResult2: array[0..1 * 2] of Char; // 住院患者血清学检查结果代码2  可选
  //        zy_DiseaseName2: array[0..50 * 2] of Char; // 疾病诊断名称2  可选
  //        zy_DiseaseCode2: array[0..7 * 2] of Char; // 疾病诊断代码2  可选
  //        zy_ConfirmDT2: array[0..4 * 2] of Char; // 确诊日期2  可选
  //        zy_DiagnInfo2: array[0..20 * 2] of Char; // 诊断符合情况描述2  可选
  //        zy_DiagnCode2: array[0..1 * 2] of Char; // 诊断符合情况代码2  可选
  //        zy_DiagnTypeInfo2: array[0..20 * 2] of Char; // 诊断类型描述2  可选
  //        zy_DiagnTypeCode2: array[0..1 * 2] of Char; // 诊断类型代码2  可选
  //        zy_TreatResultsCode2: array[0..1 * 2] of Char; // 治疗结果代码2  可选
  //        zy_SurgeryName2: array[0..80 * 2] of Char; // 手术/操作名称2  可选
  //        zy_SurgeryCode2: array[0..5 * 2] of Char; // 手术/操作代码2  可选
  //        zy_SurgeryDT2: array[0..4 * 2] of Char; // 手术/操作日期2  可选
  //        zy_AnesthMethod2: array[0..50 * 2] of Char; // 麻醉方法2  可选
  //        zy_AnesthCode2: array[0..1 * 2] of Char; // 麻醉方法代码2  可选
  //        zy_HealingLevel2: array[0..1 * 2] of Char; // 愈合等级代码2  可选
  //        zy_BloodAssayName3: array[0..1 * 2] of Char; // 住院患者血清学检查项目代码3  可选
  //        zy_BloodAssayResult3: array[0..1 * 2] of Char; // 住院患者血清学检查结果代码3  可选
  //        zy_DiseaseName3: array[0..50 * 2] of Char; // 疾病诊断名称3  可选
  //        zy_DiseaseCode3: array[0..7 * 2] of Char; // 疾病诊断代码3  可选
  //        zy_ConfirmDT3: array[0..4 * 2] of Char; // 确诊日期3  可选
  //        zy_DiagnInfo3: array[0..20 * 2] of Char; // 诊断符合情况描述3  可选
  //        zy_DiagnCode3: array[0..1 * 2] of Char; // 诊断符合情况代码3  可选
  //        zy_DiagnTypeInfo3: array[0..20 * 2] of Char; // 诊断类型描述3  可选
  //        zy_DiagnTypeCode3: array[0..1 * 2] of Char; // 诊断类型代码3  可选
  //        zy_TreatResultsCode3: array[0..1 * 2] of Char; // 治疗结果代码3  可选
  //        zy_SurgeryName3: array[0..80 * 2] of Char; // 手术/操作名称3  可选
  //        zy_SurgeryCode3: array[0..5 * 2] of Char; // 手术/操作代码3  可选
  //        zy_SurgeryDT3: array[0..4 * 2] of Char; // 手术/操作日期3  可选
  //        zy_AnesthMethod3: array[0..50 * 2] of Char; // 麻醉方法3  可选
  //        zy_AnesthCode3: array[0..1 * 2] of Char; // 麻醉方法代码3  可选
  //        zy_HealingLevel3: array[0..1 * 2] of Char; // 愈合等级代码3  可选
  //        zy_TransfCode1: array[0..1 * 2] of Char; // 输血品种代码1  可选
  //        zy_TransfNumber1: array[0..2 * 2] of Char; // 住院期间输血量1  可选
  //        zy_TransfUnit1: array[0..10 * 2] of Char; // 输血量计量单位1  可选
  //        zy_TransfCode2: array[0..1 * 2] of Char; // 输血品种代码2  可选
  //        zy_TransfNumber2: array[0..2 * 2] of Char; // 住院期间输血量2  可选
  //        zy_TransfUnit2: array[0..10 * 2] of Char; // 输血量计量单位2  可选
  //        zy_TransfCode3: array[0..1 * 2] of Char; // 输血品种代码3  可选
  //        zy_TransfNumber3: array[0..2 * 2] of Char; // 住院期间输血量3  可选
  //        zy_TransfUnit3: array[0..10 * 2] of Char; // 输血量计量单位3  可选
  //        zy_TransfCode4: array[0..1 * 2] of Char; // 输血品种代码4  可选
  //        zy_TransfNumber4: array[0..2 * 2] of Char; // 住院期间输血量4  可选
  //        zy_TransfUnit4: array[0..10 * 2] of Char; // 输血量计量单位4  可选
  //        zy_RescueCnt: array[0..2 * 2] of Char; // 住院患者抢救次数  可选
  //        zy_RescueValidCnt: array[0..2 * 2] of Char; // 住院患者抢救成功次数  可选
  //        zy_OutbedDT: array[0..4 * 2] of Char; // 出院日期  必填
  //        zy_OutbedOffice: array[0..50 * 2] of Char; // 出院科室名称  必填
  //        zy_InbedDay: array[0..3 * 2] of Char; // 住院患者住院天数  必填
  //        zy_AutopsyLogo: array[0..1] of byte; // 尸检标志  可选
  //        zy_TempoDiagnosis: array[0..1] of byte; // 住院患者随诊标志  可选
  //        zy_PaymentWayCode: array[0..1 * 2] of Char; // 医疗付款方式代码  可选
  //        zy_InbedType1: array[0..20 * 2] of Char; // 住院费用分类1  可选
  //        zy_InbedTypeCode1: array[0..1 * 2] of Char; // 住院费用分类代码1  可选
  //        zy_InbedAmt1: array[0..5 * 2] of Char; // 住院费用金额1  可选
  //        zy_InbedType2: array[0..20 * 2] of Char; // 住院费用分类2  可选
  //        zy_InbedTypeCode2: array[0..1 * 2] of Char; // 住院费用分类代码2  可选
  //        zy_InbedAmt2: array[0..5 * 2] of Char; // 住院费用金额2  可选
  //        zy_InbedType3: array[0..20 * 2] of Char; // 住院费用分类3  可选
  //        zy_InbedTypeCode3: array[0..1 * 2] of Char; // 住院费用分类代码3  可选
  //        zy_InbedAmt3: array[0..5 * 2] of Char; // 住院费用金额3  可选
  //        zy_InbedType4: array[0..20 * 2] of Char; // 住院费用分类4  可选
  //        zy_InbedTypeCode4: array[0..1 * 2] of Char; // 住院费用分类代码4  可选
  //        zy_InbedAmt4: array[0..5 * 2] of Char; // 住院费用金额4  可选
  //        zy_InbedType5: array[0..20 * 2] of Char; // 住院费用分类5  可选
  //        zy_InbedTypeCode5: array[0..1 * 2] of Char; // 住院费用分类代码5  可选
  //        zy_InbedAmt5: array[0..5 * 2] of Char; // 住院费用金额5  可选
  //        zy_InbedType6: array[0..20 * 2] of Char; // 住院费用分类6  可选
  //        zy_InbedTypeCode6: array[0..1 * 2] of Char; // 住院费用分类代码6  可选
  //        zy_InbedAmt6: array[0..5 * 2] of Char; // 住院费用金额6  可选
  //        zy_InbedType7: array[0..20 * 2] of Char; // 住院费用分类7  可选
  //        zy_InbedTypeCode7: array[0..1 * 2] of Char; // 住院费用分类代码7  可选
  //        zy_InbedAmt7: array[0..5 * 2] of Char; // 住院费用金额7  可选
  //        zy_InbedType8: array[0..20 * 2] of Char; // 住院费用分类8  可选
  //        zy_InbedTypeCode8: array[0..1 * 2] of Char; // 住院费用分类代码8  可选
  //        zy_InbedAmt8: array[0..5 * 2] of Char; // 住院费用金额8  可选
  //        zy_InbedType9: array[0..20 * 2] of Char; // 住院费用分类9  可选
  //        zy_InbedTypeCode9: array[0..1 * 2] of Char; // 住院费用分类代码9  可选
  //        zy_InbedAmt9: array[0..5 * 2] of Char; // 住院费用金额9  可选
  //        zy_InbedType10: array[0..20 * 2] of Char; // 住院费用分类10  可选
  //        zy_InbedTypeCode10: array[0..1 * 2] of Char; // 住院费用分类代码10  可选
  //        zy_InbedAmt10: array[0..5 * 2] of Char; // 住院费用金额10  可选
  //        zy_InbedType11: array[0..20 * 2] of Char; // 住院费用分类11  可选
  //        zy_InbedTypeCode11: array[0..1 * 2] of Char; // 住院费用分类代码11  可选
  //        zy_InbedAmt11: array[0..5 * 2] of Char; // 住院费用金额11  可选
  //        zy_InbedType12: array[0..20 * 2] of Char; // 住院费用分类12  可选
  //        zy_InbedTypeCode12: array[0..1 * 2] of Char; // 住院费用分类代码12  可选
  //        zy_InbedAmt12: array[0..5 * 2] of Char; // 住院费用金额12  可选
  //        zy_InbedType13: array[0..20 * 2] of Char; // 住院费用分类13  可选
  //        zy_InbedTypeCode13: array[0..1 * 2] of Char; // 住院费用分类代码13  可选
  //        zy_InbedAmt13: array[0..5 * 2] of Char; // 住院费用金额13  可选
  //        zy_InbedType14: array[0..20 * 2] of Char; // 住院费用分类14  可选
  //        zy_InbedTypeCode14: array[0..1 * 2] of Char; // 住院费用分类代码14  可选
  //        zy_InbedAmt14: array[0..5 * 2] of Char; // 住院费用金额14  可选
  //        zy_InbedType15: array[0..20 * 2] of Char; // 住院费用分类15  可选
  //        zy_InbedTypeCode15: array[0..1 * 2] of Char; // 住院费用分类代码15  可选
  //        zy_InbedAmt15: array[0..5 * 2] of Char; // 住院费用金额15  可选
  //        zy_InbedType16: array[0..20 * 2] of Char; // 住院费用分类16  可选
  //        zy_InbedTypeCode16: array[0..1 * 2] of Char; // 住院费用分类代码16  可选
  //        zy_InbedAmt16: array[0..5 * 2] of Char; // 住院费用金额16  可选
  //        zy_InbedType17: array[0..20 * 2] of Char; // 住院费用分类17  可选
  //        zy_InbedTypeCode17: array[0..1 * 2] of Char; // 住院费用分类代码17  可选
  //        zy_InbedAmt17: array[0..5 * 2] of Char; // 住院费用金额17  可选
  //        zy_InbedType18: array[0..20 * 2] of Char; // 住院费用分类18  可选
  //        zy_InbedTypeCode18: array[0..1 * 2] of Char; // 住院费用分类代码18  可选
  //        zy_InbedAmt18: array[0..5 * 2] of Char; // 住院费用金额18  可选
  //        zy_InbedType19: array[0..20 * 2] of Char; // 住院费用分类19  可选
  //        zy_InbedTypeCode19: array[0..1 * 2] of Char; // 住院费用分类代码19  可选
  //        zy_InbedAmt19: array[0..5 * 2] of Char; // 住院费用金额19  可选
  //        zy_InbedType20: array[0..20 * 2] of Char; // 住院费用分类20  可选
  //        zy_InbedTypeCode20: array[0..1 * 2] of Char; // 住院费用分类代码20  可选
  //        zy_InbedAmt20: array[0..5 * 2] of Char; // 住院费用金额20  可选
  //        zy_InbedSumAmt: array[0..5 * 2] of Char; // 住院总费用  可选
  //        zy_InbedBedAmt: array[0..5 * 2] of Char; // 床位费  可选
  //        zy_InbedNursAmt: array[0..5 * 2] of Char; // 住院护理费  可选
  //        zy_InbedWesAmt: array[0..5 * 2] of Char; // 住院西药费  可选
  //        zy_InbedChinAmt: array[0..5 * 2] of Char; // 住院中药费  可选
  //        zy_InbedLaboAmt: array[0..5 * 2] of Char; // 住院化验费  可选
  //        zy_InbedPracAmt: array[0..5 * 2] of Char; // 住院诊疗费  可选
  //        zy_InbedOperAmt: array[0..5 * 2] of Char; // 住院手术费  可选
  //        zy_InbedInspeAmt: array[0..5 * 2] of Char; // 住院检查费  可选
  //        zy_InbedOtherAmt: array[0..5 * 2] of Char; // 其他住院费用  可选
  //        zy_InbedInfoStr: array[0..64] of byte; // 住院结帐单字串  可选
  //        );
  //
  //      jkk_ExamInfo: (
  //        mz_HospName: array[0..70 * 2] of Char; // 就诊机构名称  必填
  //        mz_HospOrgCode: array[0..10 * 2] of Char; // 就诊机构组织机构代码  必填
  //        mz_ConfirmDT: array[0..7 * 2] of Char; // 就诊日期时间  必填
  //        mz_ExamNO: array[0..18 * 2] of Char; // 门诊号  必填
  //        mz_ExamOffice: array[0..50 * 2] of Char; // 就诊科室名称  必填
  //        mz_PayType: array[0..1 * 2] of Char; // 医疗付款方式  必填
  //        mz_SymptomName1: array[0..50 * 2] of Char; // 症状名称1  必填
  //        mz_SymptomCode1: array[0..5 * 2] of Char; // 症状代码1  必填
  //        mz_ConfirmDT1: array[0..4 * 2] of Char; // 诊断日期1  必填
  //        mz_DiseaseName1: array[0..50 * 2] of Char; // 门诊诊断名称1  必填
  //        mz_DiseaseCode1: array[0..7 * 2] of Char; // 门诊诊断代码1  必填
  //        mz_MorbiDT1: array[0..7 * 2] of Char; // 发病日期时间1  必填
  //        mz_SymptomDT1: array[0..2 * 2] of Char; // 症状持续时间1  必填
  //        mz_SymptomName2: array[0..50 * 2] of Char; // 症状名称2  可选
  //        mz_SymptomCode2: array[0..5 * 2] of Char; // 症状代码2  可选
  //        mz_ConfirmDT2: array[0..4 * 2] of Char; // 诊断日期2  可选
  //        mz_DiseaseName2: array[0..50 * 2] of Char; // 门诊诊断名称2  可选
  //        mz_DiseaseCode2: array[0..7 * 2] of Char; // 门诊诊断代码2  可选
  //        mz_MorbiDT2: array[0..7 * 2] of Char; // 发病日期时间2  可选
  //        mz_SymptomDT2: array[0..2 * 2] of Char; // 症状持续时间2  可选
  //        mz_SymptomName3: array[0..50 * 2] of Char; // 症状名称3  可选
  //        mz_SymptomCode3: array[0..5 * 2] of Char; // 症状代码3  可选
  //        mz_ConfirmDT3: array[0..4 * 2] of Char; // 诊断日期3  可选
  //        mz_DiseaseName3: array[0..50 * 2] of Char; // 门诊诊断名称3  可选
  //        mz_DiseaseCode3: array[0..7 * 2] of Char; // 门诊诊断代码3  可选
  //        mz_MorbiDT3: array[0..7 * 2] of Char; // 发病日期时间3  可选
  //        mz_SymptomDT3: array[0..2 * 2] of Char; // 症状持续时间3  可选
  //        mz_SymptomName4: array[0..50 * 2] of Char; // 症状名称4  可选
  //        mz_SymptomCode4: array[0..5 * 2] of Char; // 症状代码4  可选
  //        mz_ConfirmDT4: array[0..4 * 2] of Char; // 诊断日期4  可选
  //        mz_DiseaseName4: array[0..50 * 2] of Char; // 门诊诊断名称4  可选
  //        mz_DiseaseCode4: array[0..7 * 2] of Char; // 门诊诊断代码4  可选
  //        mz_MorbiDT4: array[0..7 * 2] of Char; // 发病日期时间4  可选
  //        mz_SymptomDT4: array[0..2 * 2] of Char; // 症状持续时间4  可选
  //        mz_SymptomName5: array[0..50 * 2] of Char; // 症状名称5  可选
  //        mz_SymptomCode5: array[0..5 * 2] of Char; // 症状代码5  可选
  //        mz_ConfirmDT5: array[0..4 * 2] of Char; // 诊断日期5  可选
  //        mz_DiseaseName5: array[0..50 * 2] of Char; // 门诊诊断名称5  可选
  //        mz_DiseaseCode5: array[0..7 * 2] of Char; // 门诊诊断代码5  可选
  //        mz_MorbiDT5: array[0..7 * 2] of Char; // 发病日期时间5  可选
  //        mz_SymptomDT5: array[0..2 * 2] of Char; // 症状持续时间5  可选
  //        mz_CheckoutName1: array[0..80 * 2] of Char; // 检查/检验项目名称1  可选
  //        mz_CheckoutResultCode1: array[0..1 * 2] of Char; // 检查/检验结果代码1  可选
  //        mz_CheckoutResultName1: array[0..5 * 2] of Char; // 检查/检验定量结果1  可选
  //        mz_CheckoutUnit1: array[0..20 * 2] of Char; // 检查/检验计量单位1  可选
  //        mz_CheckoutCode1: array[0..20 * 2] of Char; // 检查/检验项目代码1  可选
  //        mz_CheckoutName2: array[0..80 * 2] of Char; // 检查/检验项目名称2  可选
  //        mz_CheckoutResultCode2: array[0..1 * 2] of Char; // 检查/检验结果代码2  可选
  //        mz_CheckoutResultName2: array[0..5 * 2] of Char; // 检查/检验定量结果2  可选
  //        mz_CheckoutUnit2: array[0..20 * 2] of Char; // 检查/检验计量单位2  可选
  //        mz_CheckoutCode2: array[0..20 * 2] of Char; // 检查/检验项目代码2  可选
  //        mz_CheckoutName3: array[0..80 * 2] of Char; // 检查/检验项目名称3  可选
  //        mz_CheckoutResultCode3: array[0..1 * 2] of Char; // 检查/检验结果代码3  可选
  //        mz_CheckoutResultName3: array[0..5 * 2] of Char; // 检查/检验定量结果3  可选
  //        mz_CheckoutUnit3: array[0..20 * 2] of Char; // 检查/检验计量单位3  可选
  //        mz_CheckoutCode3: array[0..20 * 2] of Char; // 检查/检验项目代码3  可选
  //        mz_CheckoutName4: array[0..80 * 2] of Char; // 检查/检验项目名称4  可选
  //        mz_CheckoutResultCode4: array[0..1 * 2] of Char; // 检查/检验结果代码4  可选
  //        mz_CheckoutResultName4: array[0..5 * 2] of Char; // 检查/检验定量结果4  可选
  //        mz_CheckoutUnit4: array[0..20 * 2] of Char; // 检查/检验计量单位4  可选
  //        mz_CheckoutCode4: array[0..20 * 2] of Char; // 检查/检验项目代码4  可选
  //        mz_CheckoutName5: array[0..80 * 2] of Char; // 检查/检验项目名称5  可选
  //        mz_CheckoutResultCode5: array[0..1 * 2] of Char; // 检查/检验结果代码5  可选
  //        mz_CheckoutResultName5: array[0..5 * 2] of Char; // 检查/检验定量结果5  可选
  //        mz_CheckoutUnit5: array[0..20 * 2] of Char; // 检查/检验计量单位5  可选
  //        mz_CheckoutCode5: array[0..20 * 2] of Char; // 检查/检验项目代码5  可选
  //        mz_CheckoutName6: array[0..80 * 2] of Char; // 检查/检验项目名称6  可选
  //        mz_CheckoutResultCode6: array[0..1 * 2] of Char; // 检查/检验结果代码6  可选
  //        mz_CheckoutResultName6: array[0..5 * 2] of Char; // 检查/检验定量结果6  可选
  //        mz_CheckoutUnit6: array[0..20 * 2] of Char; // 检查/检验计量单位6  可选
  //        mz_CheckoutCode6: array[0..20 * 2] of Char; // 检查/检验项目代码6  可选
  //        mz_CheckoutName7: array[0..80 * 2] of Char; // 检查/检验项目名称7  可选
  //        mz_CheckoutResultCode7: array[0..1 * 2] of Char; // 检查/检验结果代码7  可选
  //        mz_CheckoutResultName7: array[0..5 * 2] of Char; // 检查/检验定量结果7  可选
  //        mz_CheckoutUnit7: array[0..20 * 2] of Char; // 检查/检验计量单位7  可选
  //        mz_CheckoutCode7: array[0..20 * 2] of Char; // 检查/检验项目代码7  可选
  //        mz_CheckoutName8: array[0..80 * 2] of Char; // 检查/检验项目名称8  可选
  //        mz_CheckoutResultCode8: array[0..1 * 2] of Char; // 检查/检验结果代码8  可选
  //        mz_CheckoutResultName8: array[0..5 * 2] of Char; // 检查/检验定量结果8  可选
  //        mz_CheckoutUnit8: array[0..20 * 2] of Char; // 检查/检验计量单位8  可选
  //        mz_CheckoutCode8: array[0..20 * 2] of Char; // 检查/检验项目代码8  可选
  //        mz_CheckoutName9: array[0..80 * 2] of Char; // 检查/检验项目名称9  可选
  //        mz_CheckoutResultCode9: array[0..1 * 2] of Char; // 检查/检验结果代码9  可选
  //        mz_CheckoutResultName9: array[0..5 * 2] of Char; // 检查/检验定量结果9  可选
  //        mz_CheckoutUnit9: array[0..20 * 2] of Char; // 检查/检验计量单位9  可选
  //        mz_CheckoutCode9: array[0..20 * 2] of Char; // 检查/检验项目代码9  可选
  //        mz_CheckoutName10: array[0..80 * 2] of Char; // 检查/检验项目名称10  可选
  //        mz_CheckoutResultCode10: array[0..1 * 2] of Char; // 检查/检验结果代码10  可选
  //        mz_CheckoutResultName10: array[0..5 * 2] of Char; // 检查/检验定量结果10  可选
  //        mz_CheckoutUnit10: array[0..20 * 2] of Char; // 检查/检验计量单位10  可选
  //        mz_CheckoutCode10: array[0..20 * 2] of Char; // 检查/检验项目代码10  可选
  //        mz_DrugName1: array[0..50 * 2] of Char; // 药物名称1  可选
  //        mz_DrugCode1: array[0..1 * 2] of Char; // 药物剂型代码1  可选
  //        mz_DrugDay1: array[0..3 * 2] of Char; // 用药天数1  可选
  //        mz_DrugFreq1: array[0..20 * 2] of Char; // 药物使用频率1  可选
  //        mz_DrugUnit1: array[0..6 * 2] of Char; // 药物使用剂量单位1  可选
  //        mz_DrugDosa1: array[0..3 * 2] of Char; // 药物使用次剂量1  可选
  //        mz_DrugSumDosa1: array[0..6 * 2] of Char; // 药物使用总剂量1  可选
  //        mz_DrugUseCode1: array[0..2 * 2] of Char; // 药物使用途径代码1  可选
  //        mz_DrugName2: array[0..50 * 2] of Char; // 药物名称2  可选
  //        mz_DrugCode2: array[0..1 * 2] of Char; // 药物剂型代码2  可选
  //        mz_DrugDay2: array[0..3 * 2] of Char; // 用药天数2  可选
  //        mz_DrugFreq2: array[0..20 * 2] of Char; // 药物使用频率2  可选
  //        mz_DrugUnit2: array[0..6 * 2] of Char; // 药物使用剂量单位2  可选
  //        mz_DrugDosa2: array[0..3 * 2] of Char; // 药物使用次剂量2  可选
  //        mz_DrugSumDosa2: array[0..6 * 2] of Char; // 药物使用总剂量2  可选
  //        mz_DrugUseCode2: array[0..2 * 2] of Char; // 药物使用途径代码2  可选
  //        mz_DrugName3: array[0..50 * 2] of Char; // 药物名称3  可选
  //        mz_DrugCode3: array[0..1 * 2] of Char; // 药物剂型代码3  可选
  //        mz_DrugDay3: array[0..3 * 2] of Char; // 用药天数3  可选
  //        mz_DrugFreq3: array[0..20 * 2] of Char; // 药物使用频率3  可选
  //        mz_DrugUnit3: array[0..6 * 2] of Char; // 药物使用剂量单位3  可选
  //        mz_DrugDosa3: array[0..3 * 2] of Char; // 药物使用次剂量3  可选
  //        mz_DrugSumDosa3: array[0..6 * 2] of Char; // 药物使用总剂量3  可选
  //        mz_DrugUseCode3: array[0..2 * 2] of Char; // 药物使用途径代码3  可选
  //        mz_DrugName4: array[0..50 * 2] of Char; // 药物名称4  可选
  //        mz_DrugCode4: array[0..1 * 2] of Char; // 药物剂型代码4  可选
  //        mz_DrugDay4: array[0..3 * 2] of Char; // 用药天数4  可选
  //        mz_DrugFreq4: array[0..20 * 2] of Char; // 药物使用频率4  可选
  //        mz_DrugUnit4: array[0..6 * 2] of Char; // 药物使用剂量单位4  可选
  //        mz_DrugDosa4: array[0..3 * 2] of Char; // 药物使用次剂量4  可选
  //        mz_DrugSumDosa4: array[0..6 * 2] of Char; // 药物使用总剂量4  可选
  //        mz_DrugUseCode4: array[0..2 * 2] of Char; // 药物使用途径代码4  可选
  //        mz_DrugName5: array[0..50 * 2] of Char; // 药物名称5  可选
  //        mz_DrugCode5: array[0..1 * 2] of Char; // 药物剂型代码5  可选
  //        mz_DrugDay5: array[0..3 * 2] of Char; // 用药天数5  可选
  //        mz_DrugFreq5: array[0..20 * 2] of Char; // 药物使用频率5  可选
  //        mz_DrugUnit5: array[0..6 * 2] of Char; // 药物使用剂量单位5  可选
  //        mz_DrugDosa5: array[0..3 * 2] of Char; // 药物使用次剂量5  可选
  //        mz_DrugSumDosa5: array[0..6 * 2] of Char; // 药物使用总剂量5  可选
  //        mz_DrugUseCode5: array[0..2 * 2] of Char; // 药物使用途径代码5  可选
  //        mz_SurgeryName1: array[0..80 * 2] of Char; // 手术/操作名称1  可选
  //        mz_SurgeryCode1: array[0..5 * 2] of Char; // 手术/操作代码1  可选
  //        mz_SurgeryDT1: array[0..4 * 2] of Char; // 手术/操作日期1  可选
  //        mz_SurgeryName2: array[0..80 * 2] of Char; // 手术/操作名称2  可选
  //        mz_SurgeryCode2: array[0..5 * 2] of Char; // 手术/操作代码2  可选
  //        mz_SurgeryDT2: array[0..4 * 2] of Char; // 手术/操作日期2  可选
  //        mz_SurgeryName3: array[0..80 * 2] of Char; // 手术/操作名称3  可选
  //        mz_SurgeryCode3: array[0..5 * 2] of Char; // 手术/操作代码3  可选
  //        mz_SurgeryDT3: array[0..4 * 2] of Char; // 手术/操作日期3  可选
  //        mz_ExamClasName1: array[0..20 * 2] of Char; // 门诊费用分类名称1  可选
  //        mz_ExamClasCode1: array[0..1 * 2] of Char; // 门诊费用分类代码1  可选
  //        mz_ExamClasAmt1: array[0..4 * 2] of Char; // 门诊费用金额1  可选
  //        mz_ExamClasName2: array[0..20 * 2] of Char; // 门诊费用分类名称2  可选
  //        mz_ExamClasCode2: array[0..1 * 2] of Char; // 门诊费用分类代码2  可选
  //        mz_ExamClasAmt2: array[0..4 * 2] of Char; // 门诊费用金额2  可选
  //        mz_ExamClasName3: array[0..20 * 2] of Char; // 门诊费用分类名称3  可选
  //        mz_ExamClasCode3: array[0..1 * 2] of Char; // 门诊费用分类代码3  可选
  //        mz_ExamClasAmt3: array[0..4 * 2] of Char; // 门诊费用金额3  可选
  //        mz_ExamClasName4: array[0..20 * 2] of Char; // 门诊费用分类名称4  可选
  //        mz_ExamClasCode4: array[0..1 * 2] of Char; // 门诊费用分类代码4  可选
  //        mz_ExamClasAmt4: array[0..4 * 2] of Char; // 门诊费用金额4  可选
  //        mz_ExamClasName5: array[0..20 * 2] of Char; // 门诊费用分类名称5  可选
  //        mz_ExamClasCode5: array[0..1 * 2] of Char; // 门诊费用分类代码5  可选
  //        mz_ExamClasAmt5: array[0..4 * 2] of Char; // 门诊费用金额5  可选
  //        mz_ExamClasName6: array[0..20 * 2] of Char; // 门诊费用分类名称6  可选
  //        mz_ExamClasCode6: array[0..1 * 2] of Char; // 门诊费用分类代码6  可选
  //        mz_ExamClasAmt6: array[0..4 * 2] of Char; // 门诊费用金额6  可选
  //        mz_ExamClasName7: array[0..20 * 2] of Char; // 门诊费用分类名称7  可选
  //        mz_ExamClasCode7: array[0..1 * 2] of Char; // 门诊费用分类代码7  可选
  //        mz_ExamClasAmt7: array[0..4 * 2] of Char; // 门诊费用金额7  可选
  //        mz_ExamClasName8: array[0..20 * 2] of Char; // 门诊费用分类名称8  可选
  //        mz_ExamClasCode8: array[0..1 * 2] of Char; // 门诊费用分类代码8  可选
  //        mz_ExamClasAmt8: array[0..4 * 2] of Char; // 门诊费用金额8  可选
  //        mz_ExamClasName9: array[0..20 * 2] of Char; // 门诊费用分类名称9  可选
  //        mz_ExamClasCode9: array[0..1 * 2] of Char; // 门诊费用分类代码9  可选
  //        mz_ExamClasAmt9: array[0..4 * 2] of Char; // 门诊费用金额9  可选
  //        mz_ExamClasName10: array[0..20 * 2] of Char; // 门诊费用分类名称10  可选
  //        mz_ExamClasCode10: array[0..1 * 2] of Char; // 门诊费用分类代码10  可选
  //        mz_ExamClasAmt10: array[0..4 * 2] of Char; // 门诊费用金额10  可选
  //        mz_ExamInfoStr: array[0..64] of byte; // 门诊结帐单字串  可选
  //        );
  //  end;
{$ENDREGION}

  Pjkk_CardInfo = ^Tjkk_CardInfo;
  Tjkk_CardInfo = packed record
    CardTyp: WideString;
    StdVer: WideString;
    OrgName: WideString;
    OrgCode: WideString;
    PublishDT: WideString;
    CardNo: WideString;
    CardID: WideString;
    CityNo: WideString;
    CityName: WideString;
  end;

  Tjkk_PsnBaseInfo = packed record
    PsnName: WideString;
    PsnGen: WideString;
    NationCode: WideString;
    BirthDay: WideString;
    PsnID: WideString;
  end;

  Tjkk_PayTypeInfo = packed record
    ValidDate: WideString;
    PhoneNo1: WideString;
    PhoneNo2: WideString;
    PayType1: WideString;
    PayType2: WideString;
    PayType3: WideString;
  end;

  Tjkk_AddressInfo = packed record
    AddrType1: WideString;
    Address1: WideString;
    AddrType2: WideString;
    Address2: WideString;
  end;

  Tjkk_RelPsnInfo = packed record
    PsnName1: WideString;
    PsnRel1: WideString;
    PsnPhone1: WideString;
    PsnName2: WideString;
    PsnRel2: WideString;
    PsnPhone2: WideString;
    PsnName3: WideString;
    PsnRel3: WideString;
    PsnPhone3: WideString;
  end;

  Tjkk_MarryInfo = packed record
    Degree: WideString;
    Marry: WideString;
    Job: WideString;
  end;

  Tjkk_MedicalFlags = packed record
    MedicalFlags: WideString;
    OtherMedWarning: WideString;
    ABO: WideString;
    RH: WideString;
    XCBZ: WideString;
    XZBBZ: WideString;
    XNXGBBZ: WideString;
    NXWLBZ: WideString;
    TNBBZ: WideString;
    QGYBZ: WideString;
    TXBZ: WideString;
    QGYZBZ: WideString;
    QGQSBZ: WideString;
    DXBBZ: WideString;
    KZXYZBZ: WideString;
    XZQBQBZ: WideString;
  end;

  Tjkk_Mental = packed record
    MentalFlag: WideString;
  end;

  Tjkk_PapersInfo = packed record
    PaperType: WideString;
    PaperNo: WideString;
    EHRNo: WideString;
    NewRuralNo: WideString;
  end;

  Tjkk_AllergyInfo = packed record
    AllergyName1: WideString;
    AllergyName2: WideString;
    AllergyName3: WideString;
    Allergy1: WideString;
    Allergy2: WideString;
    Allergy3: WideString;
  end;

  Tjkk_ImmuneInfo = packed record
    ImmuneName1: WideString;
    ImmuneName2: WideString;
    ImmuneName3: WideString;
    ImmuneName4: WideString;
    ImmuneName5: WideString;
    ImmuneName6: WideString;
    ImmuneName7: WideString;
    ImmuneName8: WideString;
    ImmuneName9: WideString;
    ImmuneName10: WideString;
    ImmuneDate1: WideString;
    ImmuneDate2: WideString;
    ImmuneDate3: WideString;
    ImmuneDate4: WideString;
    ImmuneDate5: WideString;
    ImmuneDate6: WideString;
    ImmuneDate7: WideString;
    ImmuneDate8: WideString;
    ImmuneDate9: WideString;
    ImmuneDate10: WideString;
  end;

  p_InbedInfo = ^Tjkk_InbedInfo;
  Tjkk_InbedInfoarr = array of p_InbedInfo;
  Tjkk_InbedInfo = packed record
    zy_HospName: WideString; // 住院机构名称  必填
    zy_HospOrgCode: WideString; // 住院机构组织机构代码  必填
    zy_InbedDT: WideString; // 入院日期  必填
    zy_InbedCnt: WideString; // 住院患者住院次数  必填
    zy_PatienNO: WideString; // 病案号  必填
    zy_InbedOffice: WideString; // 住院患者入院科室名称  必填
    zy_InbedIllness: WideString; // 住院患者入院病情  必填
    zy_HospInfectName: WideString; // 住院患者医院感染名称  可选
    zy_DiseaseReason: WideString; // 住院患者损伤和中毒外部原因  可选
    zy_BloAssCode1: WideString; // 住院患者血清学检查项目代码1  可选
    zy_BloAssResCode1: WideString; // 住院患者血清学检查结果代码1  可选
    zy_DiseaseName1: WideString; // 疾病诊断名称1  必填
    zy_DiseaseCode1: WideString; // 疾病诊断代码1  必填
    zy_ConfirmDT1: WideString; // 确诊日期1  必填
    zy_DiagnInfo1: WideString; // 诊断符合情况描述1  可选
    zy_DiagnCode1: WideString; // 诊断符合情况代码1  可选
    zy_DiagnTypeInfo1: WideString; // 诊断类型描述1  可选
    zy_DiagnTypeCode1: WideString; // 诊断类型代码1  可选
    zy_TreatResultsCode1: WideString; // 治疗结果代码1  可选
    zy_SurgeryName1: WideString; // 手术/操作名称1  可选
    zy_SurgeryCode1: WideString; // 手术/操作代码1  可选
    zy_SurgeryDT1: WideString; // 手术/操作日期1  可选
    zy_AnesthMethod1: WideString; // 麻醉方法1  可选
    zy_AnesthCode1: WideString; // 麻醉方法代码1  可选
    zy_HealingLevel1: WideString; // 愈合等级代码1  可选
    zy_BloodAssayName2: WideString; // 住院患者血清学检查项目代码2  可选
    zy_BloodAssayResult2: WideString; // 住院患者血清学检查结果代码2  可选
    zy_DiseaseName2: WideString; // 疾病诊断名称2  可选
    zy_DiseaseCode2: WideString; // 疾病诊断代码2  可选
    zy_ConfirmDT2: WideString; // 确诊日期2  可选
    zy_DiagnInfo2: WideString; // 诊断符合情况描述2  可选
    zy_DiagnCode2: WideString; // 诊断符合情况代码2  可选
    zy_DiagnTypeInfo2: WideString; // 诊断类型描述2  可选
    zy_DiagnTypeCode2: WideString; // 诊断类型代码2  可选
    zy_TreatResultsCode2: WideString; // 治疗结果代码2  可选
    zy_SurgeryName2: WideString; // 手术/操作名称2  可选
    zy_SurgeryCode2: WideString; // 手术/操作代码2  可选
    zy_SurgeryDT2: WideString; // 手术/操作日期2  可选
    zy_AnesthMethod2: WideString; // 麻醉方法2  可选
    zy_AnesthCode2: WideString; // 麻醉方法代码2  可选
    zy_HealingLevel2: WideString; // 愈合等级代码2  可选
    zy_BloodAssayName3: WideString; // 住院患者血清学检查项目代码3  可选
    zy_BloodAssayResult3: WideString; // 住院患者血清学检查结果代码3  可选
    zy_DiseaseName3: WideString; // 疾病诊断名称3  可选
    zy_DiseaseCode3: WideString; // 疾病诊断代码3  可选
    zy_ConfirmDT3: WideString; // 确诊日期3  可选
    zy_DiagnInfo3: WideString; // 诊断符合情况描述3  可选
    zy_DiagnCode3: WideString; // 诊断符合情况代码3  可选
    zy_DiagnTypeInfo3: WideString; // 诊断类型描述3  可选
    zy_DiagnTypeCode3: WideString; // 诊断类型代码3  可选
    zy_TreatResultsCode3: WideString; // 治疗结果代码3  可选
    zy_SurgeryName3: WideString; // 手术/操作名称3  可选
    zy_SurgeryCode3: WideString; // 手术/操作代码3  可选
    zy_SurgeryDT3: WideString; // 手术/操作日期3  可选
    zy_AnesthMethod3: WideString; // 麻醉方法3  可选
    zy_AnesthCode3: WideString; // 麻醉方法代码3  可选
    zy_HealingLevel3: WideString; // 愈合等级代码3  可选
    zy_TransfCode1: WideString; // 输血品种代码1  可选
    zy_TransfNumber1: WideString; // 住院期间输血量1  可选
    zy_TransfUnit1: WideString; // 输血量计量单位1  可选
    zy_TransfCode2: WideString; // 输血品种代码2  可选
    zy_TransfNumber2: WideString; // 住院期间输血量2  可选
    zy_TransfUnit2: WideString; // 输血量计量单位2  可选
    zy_TransfCode3: WideString; // 输血品种代码3  可选
    zy_TransfNumber3: WideString; // 住院期间输血量3  可选
    zy_TransfUnit3: WideString; // 输血量计量单位3  可选
    zy_TransfCode4: WideString; // 输血品种代码4  可选
    zy_TransfNumber4: WideString; // 住院期间输血量4  可选
    zy_TransfUnit4: WideString; // 输血量计量单位4  可选
    zy_RescueCnt: WideString; // 住院患者抢救次数  可选
    zy_RescueValidCnt: WideString; // 住院患者抢救成功次数  可选
    zy_OutbedDT: WideString; // 出院日期  必填
    zy_OutbedOffice: WideString; // 出院科室名称  必填
    zy_InbedDay: WideString; // 住院患者住院天数  必填
    zy_AutopsyLogo: WideString; // 尸检标志  可选
    zy_TempoDiagnosis: WideString; // 住院患者随诊标志  可选
    zy_PaymentWayCode: WideString; // 医疗付款方式代码  可选
    zy_InbedType1: WideString; // 住院费用分类1  可选
    zy_InbedTypeCode1: WideString; // 住院费用分类代码1  可选
    zy_InbedAmt1: WideString; // 住院费用金额1  可选
    zy_InbedType2: WideString; // 住院费用分类2  可选
    zy_InbedTypeCode2: WideString; // 住院费用分类代码2  可选
    zy_InbedAmt2: WideString; // 住院费用金额2  可选
    zy_InbedType3: WideString; // 住院费用分类3  可选
    zy_InbedTypeCode3: WideString; // 住院费用分类代码3  可选
    zy_InbedAmt3: WideString; // 住院费用金额3  可选
    zy_InbedType4: WideString; // 住院费用分类4  可选
    zy_InbedTypeCode4: WideString; // 住院费用分类代码4  可选
    zy_InbedAmt4: WideString; // 住院费用金额4  可选
    zy_InbedType5: WideString; // 住院费用分类5  可选
    zy_InbedTypeCode5: WideString; // 住院费用分类代码5  可选
    zy_InbedAmt5: WideString; // 住院费用金额5  可选
    zy_InbedType6: WideString; // 住院费用分类6  可选
    zy_InbedTypeCode6: WideString; // 住院费用分类代码6  可选
    zy_InbedAmt6: WideString; // 住院费用金额6  可选
    zy_InbedType7: WideString; // 住院费用分类7  可选
    zy_InbedTypeCode7: WideString; // 住院费用分类代码7  可选
    zy_InbedAmt7: WideString; // 住院费用金额7  可选
    zy_InbedType8: WideString; // 住院费用分类8  可选
    zy_InbedTypeCode8: WideString; // 住院费用分类代码8  可选
    zy_InbedAmt8: WideString; // 住院费用金额8  可选
    zy_InbedType9: WideString; // 住院费用分类9  可选
    zy_InbedTypeCode9: WideString; // 住院费用分类代码9  可选
    zy_InbedAmt9: WideString; // 住院费用金额9  可选
    zy_InbedType10: WideString; // 住院费用分类10  可选
    zy_InbedTypeCode10: WideString; // 住院费用分类代码10  可选
    zy_InbedAmt10: WideString; // 住院费用金额10  可选
    zy_InbedType11: WideString; // 住院费用分类11  可选
    zy_InbedTypeCode11: WideString; // 住院费用分类代码11  可选
    zy_InbedAmt11: WideString; // 住院费用金额11  可选
    zy_InbedType12: WideString; // 住院费用分类12  可选
    zy_InbedTypeCode12: WideString; // 住院费用分类代码12  可选
    zy_InbedAmt12: WideString; // 住院费用金额12  可选
    zy_InbedType13: WideString; // 住院费用分类13  可选
    zy_InbedTypeCode13: WideString; // 住院费用分类代码13  可选
    zy_InbedAmt13: WideString; // 住院费用金额13  可选
    zy_InbedType14: WideString; // 住院费用分类14  可选
    zy_InbedTypeCode14: WideString; // 住院费用分类代码14  可选
    zy_InbedAmt14: WideString; // 住院费用金额14  可选
    zy_InbedType15: WideString; // 住院费用分类15  可选
    zy_InbedTypeCode15: WideString; // 住院费用分类代码15  可选
    zy_InbedAmt15: WideString; // 住院费用金额15  可选
    zy_InbedType16: WideString; // 住院费用分类16  可选
    zy_InbedTypeCode16: WideString; // 住院费用分类代码16  可选
    zy_InbedAmt16: WideString; // 住院费用金额16  可选
    zy_InbedType17: WideString; // 住院费用分类17  可选
    zy_InbedTypeCode17: WideString; // 住院费用分类代码17  可选
    zy_InbedAmt17: WideString; // 住院费用金额17  可选
    zy_InbedType18: WideString; // 住院费用分类18  可选
    zy_InbedTypeCode18: WideString; // 住院费用分类代码18  可选
    zy_InbedAmt18: WideString; // 住院费用金额18  可选
    zy_InbedType19: WideString; // 住院费用分类19  可选
    zy_InbedTypeCode19: WideString; // 住院费用分类代码19  可选
    zy_InbedAmt19: WideString; // 住院费用金额19  可选
    zy_InbedType20: WideString; // 住院费用分类20  可选
    zy_InbedTypeCode20: WideString; // 住院费用分类代码20  可选
    zy_InbedAmt20: WideString; // 住院费用金额20  可选
    zy_InbedSumAmt: WideString; // 住院总费用  可选
    zy_InbedBedAmt: WideString; // 床位费  可选
    zy_InbedNursAmt: WideString; // 住院护理费  可选
    zy_InbedWesAmt: WideString; // 住院西药费  可选
    zy_InbedChinAmt: WideString; // 住院中药费  可选
    zy_InbedLaboAmt: WideString; // 住院化验费  可选
    zy_InbedPracAmt: WideString; // 住院诊疗费  可选
    zy_InbedOperAmt: WideString; // 住院手术费  可选
    zy_InbedInspeAmt: WideString; // 住院检查费  可选
    zy_InbedOtherAmt: WideString; // 其他住院费用  可选
    zy_InbedInfoStr: WideString; // 住院结帐单字串  可选
  end;

  p_ExamInfo = ^Tjkk_ExamInfo;
  Tjkk_ExamInfoarr = array of p_ExamInfo;
  Tjkk_ExamInfo = packed record
    mz_HospName: WideString;
    mz_HospOrgCode: WideString;
    mz_ConfirmDT: WideString;
    mz_ExamNO: WideString;
    mz_ExamOffice: WideString;
    mz_PayType: WideString;
    mz_SymptomName1: WideString;
    mz_SymptomCode1: WideString;
    mz_ConfirmDT1: WideString;
    mz_DiseaseName1: WideString;
    mz_DiseaseCode1: WideString;
    mz_MorbiDT1: WideString;
    mz_SymptomDT1: WideString;
    mz_SymptomName2: WideString;
    mz_SymptomCode2: WideString;
    mz_ConfirmDT2: WideString;
    mz_DiseaseName2: WideString;
    mz_DiseaseCode2: WideString;
    mz_MorbiDT2: WideString;
    mz_SymptomDT2: WideString;
    mz_SymptomName3: WideString;
    mz_SymptomCode3: WideString;
    mz_ConfirmDT3: WideString;
    mz_DiseaseName3: WideString;
    mz_DiseaseCode3: WideString;
    mz_MorbiDT3: WideString;
    mz_SymptomDT3: WideString;
    mz_SymptomName4: WideString;
    mz_SymptomCode4: WideString;
    mz_ConfirmDT4: WideString;
    mz_DiseaseName4: WideString;
    mz_DiseaseCode4: WideString;
    mz_MorbiDT4: WideString;
    mz_SymptomDT4: WideString;
    mz_SymptomName5: WideString;
    mz_SymptomCode5: WideString;
    mz_ConfirmDT5: WideString;
    mz_DiseaseName5: WideString;
    mz_DiseaseCode5: WideString;
    mz_MorbiDT5: WideString;
    mz_SymptomDT5: WideString;
    mz_CheckoutName1: WideString;
    mz_CheckoutResultCode1: WideString;
    mz_CheckoutResultName1: WideString;
    mz_CheckoutUnit1: WideString;
    mz_CheckoutCode1: WideString;
    mz_CheckoutName2: WideString;
    mz_CheckoutResultCode2: WideString;
    mz_CheckoutResultName2: WideString;
    mz_CheckoutUnit2: WideString;
    mz_CheckoutCode2: WideString;
    mz_CheckoutName3: WideString;
    mz_CheckoutResultCode3: WideString;
    mz_CheckoutResultName3: WideString;
    mz_CheckoutUnit3: WideString;
    mz_CheckoutCode3: WideString;
    mz_CheckoutName4: WideString;
    mz_CheckoutResultCode4: WideString;
    mz_CheckoutResultName4: WideString;
    mz_CheckoutUnit4: WideString;
    mz_CheckoutCode4: WideString;
    mz_CheckoutName5: WideString;
    mz_CheckoutResultCode5: WideString;
    mz_CheckoutResultName5: WideString;
    mz_CheckoutUnit5: WideString;
    mz_CheckoutCode5: WideString;
    mz_CheckoutName6: WideString;
    mz_CheckoutResultCode6: WideString;
    mz_CheckoutResultName6: WideString;
    mz_CheckoutUnit6: WideString;
    mz_CheckoutCode6: WideString;
    mz_CheckoutName7: WideString;
    mz_CheckoutResultCode7: WideString;
    mz_CheckoutResultName7: WideString;
    mz_CheckoutUnit7: WideString;
    mz_CheckoutCode7: WideString;
    mz_CheckoutName8: WideString;
    mz_CheckoutResultCode8: WideString;
    mz_CheckoutResultName8: WideString;
    mz_CheckoutUnit8: WideString;
    mz_CheckoutCode8: WideString;
    mz_CheckoutName9: WideString;
    mz_CheckoutResultCode9: WideString;
    mz_CheckoutResultName9: WideString;
    mz_CheckoutUnit9: WideString;
    mz_CheckoutCode9: WideString;
    mz_CheckoutName10: WideString;
    mz_CheckoutResultCode10: WideString;
    mz_CheckoutResultName10: WideString;
    mz_CheckoutUnit10: WideString;
    mz_CheckoutCode10: WideString;
    mz_DrugName1: WideString;
    mz_DrugCode1: WideString;
    mz_DrugDay1: WideString;
    mz_DrugFreq1: WideString;
    mz_DrugUnit1: WideString;
    mz_DrugDosa1: WideString;
    mz_DrugSumDosa1: WideString;
    mz_DrugUseCode1: WideString;
    mz_DrugName2: WideString;
    mz_DrugCode2: WideString;
    mz_DrugDay2: WideString;
    mz_DrugFreq2: WideString;
    mz_DrugUnit2: WideString;
    mz_DrugDosa2: WideString;
    mz_DrugSumDosa2: WideString;
    mz_DrugUseCode2: WideString;
    mz_DrugName3: WideString;
    mz_DrugCode3: WideString;
    mz_DrugDay3: WideString;
    mz_DrugFreq3: WideString;
    mz_DrugUnit3: WideString;
    mz_DrugDosa3: WideString;
    mz_DrugSumDosa3: WideString;
    mz_DrugUseCode3: WideString;
    mz_DrugName4: WideString;
    mz_DrugCode4: WideString;
    mz_DrugDay4: WideString;
    mz_DrugFreq4: WideString;
    mz_DrugUnit4: WideString;
    mz_DrugDosa4: WideString;
    mz_DrugSumDosa4: WideString;
    mz_DrugUseCode4: WideString;
    mz_DrugName5: WideString;
    mz_DrugCode5: WideString;
    mz_DrugDay5: WideString;
    mz_DrugFreq5: WideString;
    mz_DrugUnit5: WideString;
    mz_DrugDosa5: WideString;
    mz_DrugSumDosa5: WideString;
    mz_DrugUseCode5: WideString;
    mz_SurgeryName1: WideString;
    mz_SurgeryCode1: WideString;
    mz_SurgeryDT1: WideString;
    mz_SurgeryName2: WideString;
    mz_SurgeryCode2: WideString;
    mz_SurgeryDT2: WideString;
    mz_SurgeryName3: WideString;
    mz_SurgeryCode3: WideString;
    mz_SurgeryDT3: WideString;
    mz_ExamClasName1: WideString;
    mz_ExamClasCode1: WideString;
    mz_ExamClasAmt1: WideString;
    mz_ExamClasName2: WideString;
    mz_ExamClasCode2: WideString;
    mz_ExamClasAmt2: WideString;
    mz_ExamClasName3: WideString;
    mz_ExamClasCode3: WideString;
    mz_ExamClasAmt3: WideString;
    mz_ExamClasName4: WideString;
    mz_ExamClasCode4: WideString;
    mz_ExamClasAmt4: WideString;
    mz_ExamClasName5: WideString;
    mz_ExamClasCode5: WideString;
    mz_ExamClasAmt5: WideString;
    mz_ExamClasName6: WideString;
    mz_ExamClasCode6: WideString;
    mz_ExamClasAmt6: WideString;
    mz_ExamClasName7: WideString;
    mz_ExamClasCode7: WideString;
    mz_ExamClasAmt7: WideString;
    mz_ExamClasName8: WideString;
    mz_ExamClasCode8: WideString;
    mz_ExamClasAmt8: WideString;
    mz_ExamClasName9: WideString;
    mz_ExamClasCode9: WideString;
    mz_ExamClasAmt9: WideString;
    mz_ExamClasName10: WideString;
    mz_ExamClasCode10: WideString;
    mz_ExamClasAmt10: WideString;
    mz_ExamInfoStr: WideString;
  end;
  Tjkk_PhotoInfo = packed record
    PhotoStr: WideString;
    PhotoAdd: WideString;
  end;

implementation

end.
