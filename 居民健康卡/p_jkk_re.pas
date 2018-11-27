unit p_jkk_re;

interface
type

{$REGION 'ע�͵Ľṹ��'}
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
  //        zy_HospName: array[0..70 * 2] of Char; // סԺ��������  ����
  //        zy_HospOrgCode: array[0..10 * 2] of Char; // סԺ������֯��������  ����
  //        zy_InbedDT: array[0..4 * 2] of Char; // ��Ժ����  ����
  //        zy_InbedCnt: array[0..2 * 2] of Char; // סԺ����סԺ����  ����
  //        zy_PatienNO: array[0..18 * 2] of Char; // ������  ����
  //        zy_InbedOffice: array[0..50 * 2] of Char; // סԺ������Ժ��������  ����
  //        zy_InbedIllness: array[0..1 * 2] of Char; // סԺ������Ժ����  ����
  //        zy_HospInfectName: array[0..50 * 2] of Char; // סԺ����ҽԺ��Ⱦ����  ��ѡ
  //        zy_DiseaseReason: array[0..7 * 2] of Char; // סԺ�������˺��ж��ⲿԭ��  ��ѡ
  //        zy_BloAssCode1: array[0..1 * 2] of Char; // סԺ����Ѫ��ѧ�����Ŀ����1  ��ѡ
  //        zy_BloAssResCode1: array[0..1 * 2] of Char; // סԺ����Ѫ��ѧ���������1  ��ѡ
  //        zy_DiseaseName1: array[0..50 * 2] of Char; // �����������1  ����
  //        zy_DiseaseCode1: array[0..7 * 2] of Char; // ������ϴ���1  ����
  //        zy_ConfirmDT1: array[0..4 * 2] of Char; // ȷ������1  ����
  //        zy_DiagnInfo1: array[0..20 * 2] of Char; // ��Ϸ����������1  ��ѡ
  //        zy_DiagnCode1: array[0..1 * 2] of Char; // ��Ϸ����������1  ��ѡ
  //        zy_DiagnTypeInfo1: array[0..20 * 2] of Char; // �����������1  ��ѡ
  //        zy_DiagnTypeCode1: array[0..1 * 2] of Char; // ������ʹ���1  ��ѡ
  //        zy_TreatResultsCode1: array[0..1 * 2] of Char; // ���ƽ������1  ��ѡ
  //        zy_SurgeryName1: array[0..80 * 2] of Char; // ����/��������1  ��ѡ
  //        zy_SurgeryCode1: array[0..5 * 2] of Char; // ����/��������1  ��ѡ
  //        zy_SurgeryDT1: array[0..4 * 2] of Char; // ����/��������1  ��ѡ
  //        zy_AnesthMethod1: array[0..50 * 2] of Char; // ������1  ��ѡ
  //        zy_AnesthCode1: array[0..1 * 2] of Char; // ����������1  ��ѡ
  //        zy_HealingLevel1: array[0..1 * 2] of Char; // ���ϵȼ�����1  ��ѡ
  //        zy_BloodAssayName2: array[0..1 * 2] of Char; // סԺ����Ѫ��ѧ�����Ŀ����2  ��ѡ
  //        zy_BloodAssayResult2: array[0..1 * 2] of Char; // סԺ����Ѫ��ѧ���������2  ��ѡ
  //        zy_DiseaseName2: array[0..50 * 2] of Char; // �����������2  ��ѡ
  //        zy_DiseaseCode2: array[0..7 * 2] of Char; // ������ϴ���2  ��ѡ
  //        zy_ConfirmDT2: array[0..4 * 2] of Char; // ȷ������2  ��ѡ
  //        zy_DiagnInfo2: array[0..20 * 2] of Char; // ��Ϸ����������2  ��ѡ
  //        zy_DiagnCode2: array[0..1 * 2] of Char; // ��Ϸ����������2  ��ѡ
  //        zy_DiagnTypeInfo2: array[0..20 * 2] of Char; // �����������2  ��ѡ
  //        zy_DiagnTypeCode2: array[0..1 * 2] of Char; // ������ʹ���2  ��ѡ
  //        zy_TreatResultsCode2: array[0..1 * 2] of Char; // ���ƽ������2  ��ѡ
  //        zy_SurgeryName2: array[0..80 * 2] of Char; // ����/��������2  ��ѡ
  //        zy_SurgeryCode2: array[0..5 * 2] of Char; // ����/��������2  ��ѡ
  //        zy_SurgeryDT2: array[0..4 * 2] of Char; // ����/��������2  ��ѡ
  //        zy_AnesthMethod2: array[0..50 * 2] of Char; // ������2  ��ѡ
  //        zy_AnesthCode2: array[0..1 * 2] of Char; // ����������2  ��ѡ
  //        zy_HealingLevel2: array[0..1 * 2] of Char; // ���ϵȼ�����2  ��ѡ
  //        zy_BloodAssayName3: array[0..1 * 2] of Char; // סԺ����Ѫ��ѧ�����Ŀ����3  ��ѡ
  //        zy_BloodAssayResult3: array[0..1 * 2] of Char; // סԺ����Ѫ��ѧ���������3  ��ѡ
  //        zy_DiseaseName3: array[0..50 * 2] of Char; // �����������3  ��ѡ
  //        zy_DiseaseCode3: array[0..7 * 2] of Char; // ������ϴ���3  ��ѡ
  //        zy_ConfirmDT3: array[0..4 * 2] of Char; // ȷ������3  ��ѡ
  //        zy_DiagnInfo3: array[0..20 * 2] of Char; // ��Ϸ����������3  ��ѡ
  //        zy_DiagnCode3: array[0..1 * 2] of Char; // ��Ϸ����������3  ��ѡ
  //        zy_DiagnTypeInfo3: array[0..20 * 2] of Char; // �����������3  ��ѡ
  //        zy_DiagnTypeCode3: array[0..1 * 2] of Char; // ������ʹ���3  ��ѡ
  //        zy_TreatResultsCode3: array[0..1 * 2] of Char; // ���ƽ������3  ��ѡ
  //        zy_SurgeryName3: array[0..80 * 2] of Char; // ����/��������3  ��ѡ
  //        zy_SurgeryCode3: array[0..5 * 2] of Char; // ����/��������3  ��ѡ
  //        zy_SurgeryDT3: array[0..4 * 2] of Char; // ����/��������3  ��ѡ
  //        zy_AnesthMethod3: array[0..50 * 2] of Char; // ������3  ��ѡ
  //        zy_AnesthCode3: array[0..1 * 2] of Char; // ����������3  ��ѡ
  //        zy_HealingLevel3: array[0..1 * 2] of Char; // ���ϵȼ�����3  ��ѡ
  //        zy_TransfCode1: array[0..1 * 2] of Char; // ��ѪƷ�ִ���1  ��ѡ
  //        zy_TransfNumber1: array[0..2 * 2] of Char; // סԺ�ڼ���Ѫ��1  ��ѡ
  //        zy_TransfUnit1: array[0..10 * 2] of Char; // ��Ѫ��������λ1  ��ѡ
  //        zy_TransfCode2: array[0..1 * 2] of Char; // ��ѪƷ�ִ���2  ��ѡ
  //        zy_TransfNumber2: array[0..2 * 2] of Char; // סԺ�ڼ���Ѫ��2  ��ѡ
  //        zy_TransfUnit2: array[0..10 * 2] of Char; // ��Ѫ��������λ2  ��ѡ
  //        zy_TransfCode3: array[0..1 * 2] of Char; // ��ѪƷ�ִ���3  ��ѡ
  //        zy_TransfNumber3: array[0..2 * 2] of Char; // סԺ�ڼ���Ѫ��3  ��ѡ
  //        zy_TransfUnit3: array[0..10 * 2] of Char; // ��Ѫ��������λ3  ��ѡ
  //        zy_TransfCode4: array[0..1 * 2] of Char; // ��ѪƷ�ִ���4  ��ѡ
  //        zy_TransfNumber4: array[0..2 * 2] of Char; // סԺ�ڼ���Ѫ��4  ��ѡ
  //        zy_TransfUnit4: array[0..10 * 2] of Char; // ��Ѫ��������λ4  ��ѡ
  //        zy_RescueCnt: array[0..2 * 2] of Char; // סԺ�������ȴ���  ��ѡ
  //        zy_RescueValidCnt: array[0..2 * 2] of Char; // סԺ�������ȳɹ�����  ��ѡ
  //        zy_OutbedDT: array[0..4 * 2] of Char; // ��Ժ����  ����
  //        zy_OutbedOffice: array[0..50 * 2] of Char; // ��Ժ��������  ����
  //        zy_InbedDay: array[0..3 * 2] of Char; // סԺ����סԺ����  ����
  //        zy_AutopsyLogo: array[0..1] of byte; // ʬ���־  ��ѡ
  //        zy_TempoDiagnosis: array[0..1] of byte; // סԺ���������־  ��ѡ
  //        zy_PaymentWayCode: array[0..1 * 2] of Char; // ҽ�Ƹ��ʽ����  ��ѡ
  //        zy_InbedType1: array[0..20 * 2] of Char; // סԺ���÷���1  ��ѡ
  //        zy_InbedTypeCode1: array[0..1 * 2] of Char; // סԺ���÷������1  ��ѡ
  //        zy_InbedAmt1: array[0..5 * 2] of Char; // סԺ���ý��1  ��ѡ
  //        zy_InbedType2: array[0..20 * 2] of Char; // סԺ���÷���2  ��ѡ
  //        zy_InbedTypeCode2: array[0..1 * 2] of Char; // סԺ���÷������2  ��ѡ
  //        zy_InbedAmt2: array[0..5 * 2] of Char; // סԺ���ý��2  ��ѡ
  //        zy_InbedType3: array[0..20 * 2] of Char; // סԺ���÷���3  ��ѡ
  //        zy_InbedTypeCode3: array[0..1 * 2] of Char; // סԺ���÷������3  ��ѡ
  //        zy_InbedAmt3: array[0..5 * 2] of Char; // סԺ���ý��3  ��ѡ
  //        zy_InbedType4: array[0..20 * 2] of Char; // סԺ���÷���4  ��ѡ
  //        zy_InbedTypeCode4: array[0..1 * 2] of Char; // סԺ���÷������4  ��ѡ
  //        zy_InbedAmt4: array[0..5 * 2] of Char; // סԺ���ý��4  ��ѡ
  //        zy_InbedType5: array[0..20 * 2] of Char; // סԺ���÷���5  ��ѡ
  //        zy_InbedTypeCode5: array[0..1 * 2] of Char; // סԺ���÷������5  ��ѡ
  //        zy_InbedAmt5: array[0..5 * 2] of Char; // סԺ���ý��5  ��ѡ
  //        zy_InbedType6: array[0..20 * 2] of Char; // סԺ���÷���6  ��ѡ
  //        zy_InbedTypeCode6: array[0..1 * 2] of Char; // סԺ���÷������6  ��ѡ
  //        zy_InbedAmt6: array[0..5 * 2] of Char; // סԺ���ý��6  ��ѡ
  //        zy_InbedType7: array[0..20 * 2] of Char; // סԺ���÷���7  ��ѡ
  //        zy_InbedTypeCode7: array[0..1 * 2] of Char; // סԺ���÷������7  ��ѡ
  //        zy_InbedAmt7: array[0..5 * 2] of Char; // סԺ���ý��7  ��ѡ
  //        zy_InbedType8: array[0..20 * 2] of Char; // סԺ���÷���8  ��ѡ
  //        zy_InbedTypeCode8: array[0..1 * 2] of Char; // סԺ���÷������8  ��ѡ
  //        zy_InbedAmt8: array[0..5 * 2] of Char; // סԺ���ý��8  ��ѡ
  //        zy_InbedType9: array[0..20 * 2] of Char; // סԺ���÷���9  ��ѡ
  //        zy_InbedTypeCode9: array[0..1 * 2] of Char; // סԺ���÷������9  ��ѡ
  //        zy_InbedAmt9: array[0..5 * 2] of Char; // סԺ���ý��9  ��ѡ
  //        zy_InbedType10: array[0..20 * 2] of Char; // סԺ���÷���10  ��ѡ
  //        zy_InbedTypeCode10: array[0..1 * 2] of Char; // סԺ���÷������10  ��ѡ
  //        zy_InbedAmt10: array[0..5 * 2] of Char; // סԺ���ý��10  ��ѡ
  //        zy_InbedType11: array[0..20 * 2] of Char; // סԺ���÷���11  ��ѡ
  //        zy_InbedTypeCode11: array[0..1 * 2] of Char; // סԺ���÷������11  ��ѡ
  //        zy_InbedAmt11: array[0..5 * 2] of Char; // סԺ���ý��11  ��ѡ
  //        zy_InbedType12: array[0..20 * 2] of Char; // סԺ���÷���12  ��ѡ
  //        zy_InbedTypeCode12: array[0..1 * 2] of Char; // סԺ���÷������12  ��ѡ
  //        zy_InbedAmt12: array[0..5 * 2] of Char; // סԺ���ý��12  ��ѡ
  //        zy_InbedType13: array[0..20 * 2] of Char; // סԺ���÷���13  ��ѡ
  //        zy_InbedTypeCode13: array[0..1 * 2] of Char; // סԺ���÷������13  ��ѡ
  //        zy_InbedAmt13: array[0..5 * 2] of Char; // סԺ���ý��13  ��ѡ
  //        zy_InbedType14: array[0..20 * 2] of Char; // סԺ���÷���14  ��ѡ
  //        zy_InbedTypeCode14: array[0..1 * 2] of Char; // סԺ���÷������14  ��ѡ
  //        zy_InbedAmt14: array[0..5 * 2] of Char; // סԺ���ý��14  ��ѡ
  //        zy_InbedType15: array[0..20 * 2] of Char; // סԺ���÷���15  ��ѡ
  //        zy_InbedTypeCode15: array[0..1 * 2] of Char; // סԺ���÷������15  ��ѡ
  //        zy_InbedAmt15: array[0..5 * 2] of Char; // סԺ���ý��15  ��ѡ
  //        zy_InbedType16: array[0..20 * 2] of Char; // סԺ���÷���16  ��ѡ
  //        zy_InbedTypeCode16: array[0..1 * 2] of Char; // סԺ���÷������16  ��ѡ
  //        zy_InbedAmt16: array[0..5 * 2] of Char; // סԺ���ý��16  ��ѡ
  //        zy_InbedType17: array[0..20 * 2] of Char; // סԺ���÷���17  ��ѡ
  //        zy_InbedTypeCode17: array[0..1 * 2] of Char; // סԺ���÷������17  ��ѡ
  //        zy_InbedAmt17: array[0..5 * 2] of Char; // סԺ���ý��17  ��ѡ
  //        zy_InbedType18: array[0..20 * 2] of Char; // סԺ���÷���18  ��ѡ
  //        zy_InbedTypeCode18: array[0..1 * 2] of Char; // סԺ���÷������18  ��ѡ
  //        zy_InbedAmt18: array[0..5 * 2] of Char; // סԺ���ý��18  ��ѡ
  //        zy_InbedType19: array[0..20 * 2] of Char; // סԺ���÷���19  ��ѡ
  //        zy_InbedTypeCode19: array[0..1 * 2] of Char; // סԺ���÷������19  ��ѡ
  //        zy_InbedAmt19: array[0..5 * 2] of Char; // סԺ���ý��19  ��ѡ
  //        zy_InbedType20: array[0..20 * 2] of Char; // סԺ���÷���20  ��ѡ
  //        zy_InbedTypeCode20: array[0..1 * 2] of Char; // סԺ���÷������20  ��ѡ
  //        zy_InbedAmt20: array[0..5 * 2] of Char; // סԺ���ý��20  ��ѡ
  //        zy_InbedSumAmt: array[0..5 * 2] of Char; // סԺ�ܷ���  ��ѡ
  //        zy_InbedBedAmt: array[0..5 * 2] of Char; // ��λ��  ��ѡ
  //        zy_InbedNursAmt: array[0..5 * 2] of Char; // סԺ�����  ��ѡ
  //        zy_InbedWesAmt: array[0..5 * 2] of Char; // סԺ��ҩ��  ��ѡ
  //        zy_InbedChinAmt: array[0..5 * 2] of Char; // סԺ��ҩ��  ��ѡ
  //        zy_InbedLaboAmt: array[0..5 * 2] of Char; // סԺ�����  ��ѡ
  //        zy_InbedPracAmt: array[0..5 * 2] of Char; // סԺ���Ʒ�  ��ѡ
  //        zy_InbedOperAmt: array[0..5 * 2] of Char; // סԺ������  ��ѡ
  //        zy_InbedInspeAmt: array[0..5 * 2] of Char; // סԺ����  ��ѡ
  //        zy_InbedOtherAmt: array[0..5 * 2] of Char; // ����סԺ����  ��ѡ
  //        zy_InbedInfoStr: array[0..64] of byte; // סԺ���ʵ��ִ�  ��ѡ
  //        );
  //
  //      jkk_ExamInfo: (
  //        mz_HospName: array[0..70 * 2] of Char; // �����������  ����
  //        mz_HospOrgCode: array[0..10 * 2] of Char; // ���������֯��������  ����
  //        mz_ConfirmDT: array[0..7 * 2] of Char; // ��������ʱ��  ����
  //        mz_ExamNO: array[0..18 * 2] of Char; // �����  ����
  //        mz_ExamOffice: array[0..50 * 2] of Char; // �����������  ����
  //        mz_PayType: array[0..1 * 2] of Char; // ҽ�Ƹ��ʽ  ����
  //        mz_SymptomName1: array[0..50 * 2] of Char; // ֢״����1  ����
  //        mz_SymptomCode1: array[0..5 * 2] of Char; // ֢״����1  ����
  //        mz_ConfirmDT1: array[0..4 * 2] of Char; // �������1  ����
  //        mz_DiseaseName1: array[0..50 * 2] of Char; // �����������1  ����
  //        mz_DiseaseCode1: array[0..7 * 2] of Char; // ������ϴ���1  ����
  //        mz_MorbiDT1: array[0..7 * 2] of Char; // ��������ʱ��1  ����
  //        mz_SymptomDT1: array[0..2 * 2] of Char; // ֢״����ʱ��1  ����
  //        mz_SymptomName2: array[0..50 * 2] of Char; // ֢״����2  ��ѡ
  //        mz_SymptomCode2: array[0..5 * 2] of Char; // ֢״����2  ��ѡ
  //        mz_ConfirmDT2: array[0..4 * 2] of Char; // �������2  ��ѡ
  //        mz_DiseaseName2: array[0..50 * 2] of Char; // �����������2  ��ѡ
  //        mz_DiseaseCode2: array[0..7 * 2] of Char; // ������ϴ���2  ��ѡ
  //        mz_MorbiDT2: array[0..7 * 2] of Char; // ��������ʱ��2  ��ѡ
  //        mz_SymptomDT2: array[0..2 * 2] of Char; // ֢״����ʱ��2  ��ѡ
  //        mz_SymptomName3: array[0..50 * 2] of Char; // ֢״����3  ��ѡ
  //        mz_SymptomCode3: array[0..5 * 2] of Char; // ֢״����3  ��ѡ
  //        mz_ConfirmDT3: array[0..4 * 2] of Char; // �������3  ��ѡ
  //        mz_DiseaseName3: array[0..50 * 2] of Char; // �����������3  ��ѡ
  //        mz_DiseaseCode3: array[0..7 * 2] of Char; // ������ϴ���3  ��ѡ
  //        mz_MorbiDT3: array[0..7 * 2] of Char; // ��������ʱ��3  ��ѡ
  //        mz_SymptomDT3: array[0..2 * 2] of Char; // ֢״����ʱ��3  ��ѡ
  //        mz_SymptomName4: array[0..50 * 2] of Char; // ֢״����4  ��ѡ
  //        mz_SymptomCode4: array[0..5 * 2] of Char; // ֢״����4  ��ѡ
  //        mz_ConfirmDT4: array[0..4 * 2] of Char; // �������4  ��ѡ
  //        mz_DiseaseName4: array[0..50 * 2] of Char; // �����������4  ��ѡ
  //        mz_DiseaseCode4: array[0..7 * 2] of Char; // ������ϴ���4  ��ѡ
  //        mz_MorbiDT4: array[0..7 * 2] of Char; // ��������ʱ��4  ��ѡ
  //        mz_SymptomDT4: array[0..2 * 2] of Char; // ֢״����ʱ��4  ��ѡ
  //        mz_SymptomName5: array[0..50 * 2] of Char; // ֢״����5  ��ѡ
  //        mz_SymptomCode5: array[0..5 * 2] of Char; // ֢״����5  ��ѡ
  //        mz_ConfirmDT5: array[0..4 * 2] of Char; // �������5  ��ѡ
  //        mz_DiseaseName5: array[0..50 * 2] of Char; // �����������5  ��ѡ
  //        mz_DiseaseCode5: array[0..7 * 2] of Char; // ������ϴ���5  ��ѡ
  //        mz_MorbiDT5: array[0..7 * 2] of Char; // ��������ʱ��5  ��ѡ
  //        mz_SymptomDT5: array[0..2 * 2] of Char; // ֢״����ʱ��5  ��ѡ
  //        mz_CheckoutName1: array[0..80 * 2] of Char; // ���/������Ŀ����1  ��ѡ
  //        mz_CheckoutResultCode1: array[0..1 * 2] of Char; // ���/����������1  ��ѡ
  //        mz_CheckoutResultName1: array[0..5 * 2] of Char; // ���/���鶨�����1  ��ѡ
  //        mz_CheckoutUnit1: array[0..20 * 2] of Char; // ���/���������λ1  ��ѡ
  //        mz_CheckoutCode1: array[0..20 * 2] of Char; // ���/������Ŀ����1  ��ѡ
  //        mz_CheckoutName2: array[0..80 * 2] of Char; // ���/������Ŀ����2  ��ѡ
  //        mz_CheckoutResultCode2: array[0..1 * 2] of Char; // ���/����������2  ��ѡ
  //        mz_CheckoutResultName2: array[0..5 * 2] of Char; // ���/���鶨�����2  ��ѡ
  //        mz_CheckoutUnit2: array[0..20 * 2] of Char; // ���/���������λ2  ��ѡ
  //        mz_CheckoutCode2: array[0..20 * 2] of Char; // ���/������Ŀ����2  ��ѡ
  //        mz_CheckoutName3: array[0..80 * 2] of Char; // ���/������Ŀ����3  ��ѡ
  //        mz_CheckoutResultCode3: array[0..1 * 2] of Char; // ���/����������3  ��ѡ
  //        mz_CheckoutResultName3: array[0..5 * 2] of Char; // ���/���鶨�����3  ��ѡ
  //        mz_CheckoutUnit3: array[0..20 * 2] of Char; // ���/���������λ3  ��ѡ
  //        mz_CheckoutCode3: array[0..20 * 2] of Char; // ���/������Ŀ����3  ��ѡ
  //        mz_CheckoutName4: array[0..80 * 2] of Char; // ���/������Ŀ����4  ��ѡ
  //        mz_CheckoutResultCode4: array[0..1 * 2] of Char; // ���/����������4  ��ѡ
  //        mz_CheckoutResultName4: array[0..5 * 2] of Char; // ���/���鶨�����4  ��ѡ
  //        mz_CheckoutUnit4: array[0..20 * 2] of Char; // ���/���������λ4  ��ѡ
  //        mz_CheckoutCode4: array[0..20 * 2] of Char; // ���/������Ŀ����4  ��ѡ
  //        mz_CheckoutName5: array[0..80 * 2] of Char; // ���/������Ŀ����5  ��ѡ
  //        mz_CheckoutResultCode5: array[0..1 * 2] of Char; // ���/����������5  ��ѡ
  //        mz_CheckoutResultName5: array[0..5 * 2] of Char; // ���/���鶨�����5  ��ѡ
  //        mz_CheckoutUnit5: array[0..20 * 2] of Char; // ���/���������λ5  ��ѡ
  //        mz_CheckoutCode5: array[0..20 * 2] of Char; // ���/������Ŀ����5  ��ѡ
  //        mz_CheckoutName6: array[0..80 * 2] of Char; // ���/������Ŀ����6  ��ѡ
  //        mz_CheckoutResultCode6: array[0..1 * 2] of Char; // ���/����������6  ��ѡ
  //        mz_CheckoutResultName6: array[0..5 * 2] of Char; // ���/���鶨�����6  ��ѡ
  //        mz_CheckoutUnit6: array[0..20 * 2] of Char; // ���/���������λ6  ��ѡ
  //        mz_CheckoutCode6: array[0..20 * 2] of Char; // ���/������Ŀ����6  ��ѡ
  //        mz_CheckoutName7: array[0..80 * 2] of Char; // ���/������Ŀ����7  ��ѡ
  //        mz_CheckoutResultCode7: array[0..1 * 2] of Char; // ���/����������7  ��ѡ
  //        mz_CheckoutResultName7: array[0..5 * 2] of Char; // ���/���鶨�����7  ��ѡ
  //        mz_CheckoutUnit7: array[0..20 * 2] of Char; // ���/���������λ7  ��ѡ
  //        mz_CheckoutCode7: array[0..20 * 2] of Char; // ���/������Ŀ����7  ��ѡ
  //        mz_CheckoutName8: array[0..80 * 2] of Char; // ���/������Ŀ����8  ��ѡ
  //        mz_CheckoutResultCode8: array[0..1 * 2] of Char; // ���/����������8  ��ѡ
  //        mz_CheckoutResultName8: array[0..5 * 2] of Char; // ���/���鶨�����8  ��ѡ
  //        mz_CheckoutUnit8: array[0..20 * 2] of Char; // ���/���������λ8  ��ѡ
  //        mz_CheckoutCode8: array[0..20 * 2] of Char; // ���/������Ŀ����8  ��ѡ
  //        mz_CheckoutName9: array[0..80 * 2] of Char; // ���/������Ŀ����9  ��ѡ
  //        mz_CheckoutResultCode9: array[0..1 * 2] of Char; // ���/����������9  ��ѡ
  //        mz_CheckoutResultName9: array[0..5 * 2] of Char; // ���/���鶨�����9  ��ѡ
  //        mz_CheckoutUnit9: array[0..20 * 2] of Char; // ���/���������λ9  ��ѡ
  //        mz_CheckoutCode9: array[0..20 * 2] of Char; // ���/������Ŀ����9  ��ѡ
  //        mz_CheckoutName10: array[0..80 * 2] of Char; // ���/������Ŀ����10  ��ѡ
  //        mz_CheckoutResultCode10: array[0..1 * 2] of Char; // ���/����������10  ��ѡ
  //        mz_CheckoutResultName10: array[0..5 * 2] of Char; // ���/���鶨�����10  ��ѡ
  //        mz_CheckoutUnit10: array[0..20 * 2] of Char; // ���/���������λ10  ��ѡ
  //        mz_CheckoutCode10: array[0..20 * 2] of Char; // ���/������Ŀ����10  ��ѡ
  //        mz_DrugName1: array[0..50 * 2] of Char; // ҩ������1  ��ѡ
  //        mz_DrugCode1: array[0..1 * 2] of Char; // ҩ����ʹ���1  ��ѡ
  //        mz_DrugDay1: array[0..3 * 2] of Char; // ��ҩ����1  ��ѡ
  //        mz_DrugFreq1: array[0..20 * 2] of Char; // ҩ��ʹ��Ƶ��1  ��ѡ
  //        mz_DrugUnit1: array[0..6 * 2] of Char; // ҩ��ʹ�ü�����λ1  ��ѡ
  //        mz_DrugDosa1: array[0..3 * 2] of Char; // ҩ��ʹ�ôμ���1  ��ѡ
  //        mz_DrugSumDosa1: array[0..6 * 2] of Char; // ҩ��ʹ���ܼ���1  ��ѡ
  //        mz_DrugUseCode1: array[0..2 * 2] of Char; // ҩ��ʹ��;������1  ��ѡ
  //        mz_DrugName2: array[0..50 * 2] of Char; // ҩ������2  ��ѡ
  //        mz_DrugCode2: array[0..1 * 2] of Char; // ҩ����ʹ���2  ��ѡ
  //        mz_DrugDay2: array[0..3 * 2] of Char; // ��ҩ����2  ��ѡ
  //        mz_DrugFreq2: array[0..20 * 2] of Char; // ҩ��ʹ��Ƶ��2  ��ѡ
  //        mz_DrugUnit2: array[0..6 * 2] of Char; // ҩ��ʹ�ü�����λ2  ��ѡ
  //        mz_DrugDosa2: array[0..3 * 2] of Char; // ҩ��ʹ�ôμ���2  ��ѡ
  //        mz_DrugSumDosa2: array[0..6 * 2] of Char; // ҩ��ʹ���ܼ���2  ��ѡ
  //        mz_DrugUseCode2: array[0..2 * 2] of Char; // ҩ��ʹ��;������2  ��ѡ
  //        mz_DrugName3: array[0..50 * 2] of Char; // ҩ������3  ��ѡ
  //        mz_DrugCode3: array[0..1 * 2] of Char; // ҩ����ʹ���3  ��ѡ
  //        mz_DrugDay3: array[0..3 * 2] of Char; // ��ҩ����3  ��ѡ
  //        mz_DrugFreq3: array[0..20 * 2] of Char; // ҩ��ʹ��Ƶ��3  ��ѡ
  //        mz_DrugUnit3: array[0..6 * 2] of Char; // ҩ��ʹ�ü�����λ3  ��ѡ
  //        mz_DrugDosa3: array[0..3 * 2] of Char; // ҩ��ʹ�ôμ���3  ��ѡ
  //        mz_DrugSumDosa3: array[0..6 * 2] of Char; // ҩ��ʹ���ܼ���3  ��ѡ
  //        mz_DrugUseCode3: array[0..2 * 2] of Char; // ҩ��ʹ��;������3  ��ѡ
  //        mz_DrugName4: array[0..50 * 2] of Char; // ҩ������4  ��ѡ
  //        mz_DrugCode4: array[0..1 * 2] of Char; // ҩ����ʹ���4  ��ѡ
  //        mz_DrugDay4: array[0..3 * 2] of Char; // ��ҩ����4  ��ѡ
  //        mz_DrugFreq4: array[0..20 * 2] of Char; // ҩ��ʹ��Ƶ��4  ��ѡ
  //        mz_DrugUnit4: array[0..6 * 2] of Char; // ҩ��ʹ�ü�����λ4  ��ѡ
  //        mz_DrugDosa4: array[0..3 * 2] of Char; // ҩ��ʹ�ôμ���4  ��ѡ
  //        mz_DrugSumDosa4: array[0..6 * 2] of Char; // ҩ��ʹ���ܼ���4  ��ѡ
  //        mz_DrugUseCode4: array[0..2 * 2] of Char; // ҩ��ʹ��;������4  ��ѡ
  //        mz_DrugName5: array[0..50 * 2] of Char; // ҩ������5  ��ѡ
  //        mz_DrugCode5: array[0..1 * 2] of Char; // ҩ����ʹ���5  ��ѡ
  //        mz_DrugDay5: array[0..3 * 2] of Char; // ��ҩ����5  ��ѡ
  //        mz_DrugFreq5: array[0..20 * 2] of Char; // ҩ��ʹ��Ƶ��5  ��ѡ
  //        mz_DrugUnit5: array[0..6 * 2] of Char; // ҩ��ʹ�ü�����λ5  ��ѡ
  //        mz_DrugDosa5: array[0..3 * 2] of Char; // ҩ��ʹ�ôμ���5  ��ѡ
  //        mz_DrugSumDosa5: array[0..6 * 2] of Char; // ҩ��ʹ���ܼ���5  ��ѡ
  //        mz_DrugUseCode5: array[0..2 * 2] of Char; // ҩ��ʹ��;������5  ��ѡ
  //        mz_SurgeryName1: array[0..80 * 2] of Char; // ����/��������1  ��ѡ
  //        mz_SurgeryCode1: array[0..5 * 2] of Char; // ����/��������1  ��ѡ
  //        mz_SurgeryDT1: array[0..4 * 2] of Char; // ����/��������1  ��ѡ
  //        mz_SurgeryName2: array[0..80 * 2] of Char; // ����/��������2  ��ѡ
  //        mz_SurgeryCode2: array[0..5 * 2] of Char; // ����/��������2  ��ѡ
  //        mz_SurgeryDT2: array[0..4 * 2] of Char; // ����/��������2  ��ѡ
  //        mz_SurgeryName3: array[0..80 * 2] of Char; // ����/��������3  ��ѡ
  //        mz_SurgeryCode3: array[0..5 * 2] of Char; // ����/��������3  ��ѡ
  //        mz_SurgeryDT3: array[0..4 * 2] of Char; // ����/��������3  ��ѡ
  //        mz_ExamClasName1: array[0..20 * 2] of Char; // ������÷�������1  ��ѡ
  //        mz_ExamClasCode1: array[0..1 * 2] of Char; // ������÷������1  ��ѡ
  //        mz_ExamClasAmt1: array[0..4 * 2] of Char; // ������ý��1  ��ѡ
  //        mz_ExamClasName2: array[0..20 * 2] of Char; // ������÷�������2  ��ѡ
  //        mz_ExamClasCode2: array[0..1 * 2] of Char; // ������÷������2  ��ѡ
  //        mz_ExamClasAmt2: array[0..4 * 2] of Char; // ������ý��2  ��ѡ
  //        mz_ExamClasName3: array[0..20 * 2] of Char; // ������÷�������3  ��ѡ
  //        mz_ExamClasCode3: array[0..1 * 2] of Char; // ������÷������3  ��ѡ
  //        mz_ExamClasAmt3: array[0..4 * 2] of Char; // ������ý��3  ��ѡ
  //        mz_ExamClasName4: array[0..20 * 2] of Char; // ������÷�������4  ��ѡ
  //        mz_ExamClasCode4: array[0..1 * 2] of Char; // ������÷������4  ��ѡ
  //        mz_ExamClasAmt4: array[0..4 * 2] of Char; // ������ý��4  ��ѡ
  //        mz_ExamClasName5: array[0..20 * 2] of Char; // ������÷�������5  ��ѡ
  //        mz_ExamClasCode5: array[0..1 * 2] of Char; // ������÷������5  ��ѡ
  //        mz_ExamClasAmt5: array[0..4 * 2] of Char; // ������ý��5  ��ѡ
  //        mz_ExamClasName6: array[0..20 * 2] of Char; // ������÷�������6  ��ѡ
  //        mz_ExamClasCode6: array[0..1 * 2] of Char; // ������÷������6  ��ѡ
  //        mz_ExamClasAmt6: array[0..4 * 2] of Char; // ������ý��6  ��ѡ
  //        mz_ExamClasName7: array[0..20 * 2] of Char; // ������÷�������7  ��ѡ
  //        mz_ExamClasCode7: array[0..1 * 2] of Char; // ������÷������7  ��ѡ
  //        mz_ExamClasAmt7: array[0..4 * 2] of Char; // ������ý��7  ��ѡ
  //        mz_ExamClasName8: array[0..20 * 2] of Char; // ������÷�������8  ��ѡ
  //        mz_ExamClasCode8: array[0..1 * 2] of Char; // ������÷������8  ��ѡ
  //        mz_ExamClasAmt8: array[0..4 * 2] of Char; // ������ý��8  ��ѡ
  //        mz_ExamClasName9: array[0..20 * 2] of Char; // ������÷�������9  ��ѡ
  //        mz_ExamClasCode9: array[0..1 * 2] of Char; // ������÷������9  ��ѡ
  //        mz_ExamClasAmt9: array[0..4 * 2] of Char; // ������ý��9  ��ѡ
  //        mz_ExamClasName10: array[0..20 * 2] of Char; // ������÷�������10  ��ѡ
  //        mz_ExamClasCode10: array[0..1 * 2] of Char; // ������÷������10  ��ѡ
  //        mz_ExamClasAmt10: array[0..4 * 2] of Char; // ������ý��10  ��ѡ
  //        mz_ExamInfoStr: array[0..64] of byte; // ������ʵ��ִ�  ��ѡ
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
    zy_HospName: WideString; // סԺ��������  ����
    zy_HospOrgCode: WideString; // סԺ������֯��������  ����
    zy_InbedDT: WideString; // ��Ժ����  ����
    zy_InbedCnt: WideString; // סԺ����סԺ����  ����
    zy_PatienNO: WideString; // ������  ����
    zy_InbedOffice: WideString; // סԺ������Ժ��������  ����
    zy_InbedIllness: WideString; // סԺ������Ժ����  ����
    zy_HospInfectName: WideString; // סԺ����ҽԺ��Ⱦ����  ��ѡ
    zy_DiseaseReason: WideString; // סԺ�������˺��ж��ⲿԭ��  ��ѡ
    zy_BloAssCode1: WideString; // סԺ����Ѫ��ѧ�����Ŀ����1  ��ѡ
    zy_BloAssResCode1: WideString; // סԺ����Ѫ��ѧ���������1  ��ѡ
    zy_DiseaseName1: WideString; // �����������1  ����
    zy_DiseaseCode1: WideString; // ������ϴ���1  ����
    zy_ConfirmDT1: WideString; // ȷ������1  ����
    zy_DiagnInfo1: WideString; // ��Ϸ����������1  ��ѡ
    zy_DiagnCode1: WideString; // ��Ϸ����������1  ��ѡ
    zy_DiagnTypeInfo1: WideString; // �����������1  ��ѡ
    zy_DiagnTypeCode1: WideString; // ������ʹ���1  ��ѡ
    zy_TreatResultsCode1: WideString; // ���ƽ������1  ��ѡ
    zy_SurgeryName1: WideString; // ����/��������1  ��ѡ
    zy_SurgeryCode1: WideString; // ����/��������1  ��ѡ
    zy_SurgeryDT1: WideString; // ����/��������1  ��ѡ
    zy_AnesthMethod1: WideString; // ������1  ��ѡ
    zy_AnesthCode1: WideString; // ����������1  ��ѡ
    zy_HealingLevel1: WideString; // ���ϵȼ�����1  ��ѡ
    zy_BloodAssayName2: WideString; // סԺ����Ѫ��ѧ�����Ŀ����2  ��ѡ
    zy_BloodAssayResult2: WideString; // סԺ����Ѫ��ѧ���������2  ��ѡ
    zy_DiseaseName2: WideString; // �����������2  ��ѡ
    zy_DiseaseCode2: WideString; // ������ϴ���2  ��ѡ
    zy_ConfirmDT2: WideString; // ȷ������2  ��ѡ
    zy_DiagnInfo2: WideString; // ��Ϸ����������2  ��ѡ
    zy_DiagnCode2: WideString; // ��Ϸ����������2  ��ѡ
    zy_DiagnTypeInfo2: WideString; // �����������2  ��ѡ
    zy_DiagnTypeCode2: WideString; // ������ʹ���2  ��ѡ
    zy_TreatResultsCode2: WideString; // ���ƽ������2  ��ѡ
    zy_SurgeryName2: WideString; // ����/��������2  ��ѡ
    zy_SurgeryCode2: WideString; // ����/��������2  ��ѡ
    zy_SurgeryDT2: WideString; // ����/��������2  ��ѡ
    zy_AnesthMethod2: WideString; // ������2  ��ѡ
    zy_AnesthCode2: WideString; // ����������2  ��ѡ
    zy_HealingLevel2: WideString; // ���ϵȼ�����2  ��ѡ
    zy_BloodAssayName3: WideString; // סԺ����Ѫ��ѧ�����Ŀ����3  ��ѡ
    zy_BloodAssayResult3: WideString; // סԺ����Ѫ��ѧ���������3  ��ѡ
    zy_DiseaseName3: WideString; // �����������3  ��ѡ
    zy_DiseaseCode3: WideString; // ������ϴ���3  ��ѡ
    zy_ConfirmDT3: WideString; // ȷ������3  ��ѡ
    zy_DiagnInfo3: WideString; // ��Ϸ����������3  ��ѡ
    zy_DiagnCode3: WideString; // ��Ϸ����������3  ��ѡ
    zy_DiagnTypeInfo3: WideString; // �����������3  ��ѡ
    zy_DiagnTypeCode3: WideString; // ������ʹ���3  ��ѡ
    zy_TreatResultsCode3: WideString; // ���ƽ������3  ��ѡ
    zy_SurgeryName3: WideString; // ����/��������3  ��ѡ
    zy_SurgeryCode3: WideString; // ����/��������3  ��ѡ
    zy_SurgeryDT3: WideString; // ����/��������3  ��ѡ
    zy_AnesthMethod3: WideString; // ������3  ��ѡ
    zy_AnesthCode3: WideString; // ����������3  ��ѡ
    zy_HealingLevel3: WideString; // ���ϵȼ�����3  ��ѡ
    zy_TransfCode1: WideString; // ��ѪƷ�ִ���1  ��ѡ
    zy_TransfNumber1: WideString; // סԺ�ڼ���Ѫ��1  ��ѡ
    zy_TransfUnit1: WideString; // ��Ѫ��������λ1  ��ѡ
    zy_TransfCode2: WideString; // ��ѪƷ�ִ���2  ��ѡ
    zy_TransfNumber2: WideString; // סԺ�ڼ���Ѫ��2  ��ѡ
    zy_TransfUnit2: WideString; // ��Ѫ��������λ2  ��ѡ
    zy_TransfCode3: WideString; // ��ѪƷ�ִ���3  ��ѡ
    zy_TransfNumber3: WideString; // סԺ�ڼ���Ѫ��3  ��ѡ
    zy_TransfUnit3: WideString; // ��Ѫ��������λ3  ��ѡ
    zy_TransfCode4: WideString; // ��ѪƷ�ִ���4  ��ѡ
    zy_TransfNumber4: WideString; // סԺ�ڼ���Ѫ��4  ��ѡ
    zy_TransfUnit4: WideString; // ��Ѫ��������λ4  ��ѡ
    zy_RescueCnt: WideString; // סԺ�������ȴ���  ��ѡ
    zy_RescueValidCnt: WideString; // סԺ�������ȳɹ�����  ��ѡ
    zy_OutbedDT: WideString; // ��Ժ����  ����
    zy_OutbedOffice: WideString; // ��Ժ��������  ����
    zy_InbedDay: WideString; // סԺ����סԺ����  ����
    zy_AutopsyLogo: WideString; // ʬ���־  ��ѡ
    zy_TempoDiagnosis: WideString; // סԺ���������־  ��ѡ
    zy_PaymentWayCode: WideString; // ҽ�Ƹ��ʽ����  ��ѡ
    zy_InbedType1: WideString; // סԺ���÷���1  ��ѡ
    zy_InbedTypeCode1: WideString; // סԺ���÷������1  ��ѡ
    zy_InbedAmt1: WideString; // סԺ���ý��1  ��ѡ
    zy_InbedType2: WideString; // סԺ���÷���2  ��ѡ
    zy_InbedTypeCode2: WideString; // סԺ���÷������2  ��ѡ
    zy_InbedAmt2: WideString; // סԺ���ý��2  ��ѡ
    zy_InbedType3: WideString; // סԺ���÷���3  ��ѡ
    zy_InbedTypeCode3: WideString; // סԺ���÷������3  ��ѡ
    zy_InbedAmt3: WideString; // סԺ���ý��3  ��ѡ
    zy_InbedType4: WideString; // סԺ���÷���4  ��ѡ
    zy_InbedTypeCode4: WideString; // סԺ���÷������4  ��ѡ
    zy_InbedAmt4: WideString; // סԺ���ý��4  ��ѡ
    zy_InbedType5: WideString; // סԺ���÷���5  ��ѡ
    zy_InbedTypeCode5: WideString; // סԺ���÷������5  ��ѡ
    zy_InbedAmt5: WideString; // סԺ���ý��5  ��ѡ
    zy_InbedType6: WideString; // סԺ���÷���6  ��ѡ
    zy_InbedTypeCode6: WideString; // סԺ���÷������6  ��ѡ
    zy_InbedAmt6: WideString; // סԺ���ý��6  ��ѡ
    zy_InbedType7: WideString; // סԺ���÷���7  ��ѡ
    zy_InbedTypeCode7: WideString; // סԺ���÷������7  ��ѡ
    zy_InbedAmt7: WideString; // סԺ���ý��7  ��ѡ
    zy_InbedType8: WideString; // סԺ���÷���8  ��ѡ
    zy_InbedTypeCode8: WideString; // סԺ���÷������8  ��ѡ
    zy_InbedAmt8: WideString; // סԺ���ý��8  ��ѡ
    zy_InbedType9: WideString; // סԺ���÷���9  ��ѡ
    zy_InbedTypeCode9: WideString; // סԺ���÷������9  ��ѡ
    zy_InbedAmt9: WideString; // סԺ���ý��9  ��ѡ
    zy_InbedType10: WideString; // סԺ���÷���10  ��ѡ
    zy_InbedTypeCode10: WideString; // סԺ���÷������10  ��ѡ
    zy_InbedAmt10: WideString; // סԺ���ý��10  ��ѡ
    zy_InbedType11: WideString; // סԺ���÷���11  ��ѡ
    zy_InbedTypeCode11: WideString; // סԺ���÷������11  ��ѡ
    zy_InbedAmt11: WideString; // סԺ���ý��11  ��ѡ
    zy_InbedType12: WideString; // סԺ���÷���12  ��ѡ
    zy_InbedTypeCode12: WideString; // סԺ���÷������12  ��ѡ
    zy_InbedAmt12: WideString; // סԺ���ý��12  ��ѡ
    zy_InbedType13: WideString; // סԺ���÷���13  ��ѡ
    zy_InbedTypeCode13: WideString; // סԺ���÷������13  ��ѡ
    zy_InbedAmt13: WideString; // סԺ���ý��13  ��ѡ
    zy_InbedType14: WideString; // סԺ���÷���14  ��ѡ
    zy_InbedTypeCode14: WideString; // סԺ���÷������14  ��ѡ
    zy_InbedAmt14: WideString; // סԺ���ý��14  ��ѡ
    zy_InbedType15: WideString; // סԺ���÷���15  ��ѡ
    zy_InbedTypeCode15: WideString; // סԺ���÷������15  ��ѡ
    zy_InbedAmt15: WideString; // סԺ���ý��15  ��ѡ
    zy_InbedType16: WideString; // סԺ���÷���16  ��ѡ
    zy_InbedTypeCode16: WideString; // סԺ���÷������16  ��ѡ
    zy_InbedAmt16: WideString; // סԺ���ý��16  ��ѡ
    zy_InbedType17: WideString; // סԺ���÷���17  ��ѡ
    zy_InbedTypeCode17: WideString; // סԺ���÷������17  ��ѡ
    zy_InbedAmt17: WideString; // סԺ���ý��17  ��ѡ
    zy_InbedType18: WideString; // סԺ���÷���18  ��ѡ
    zy_InbedTypeCode18: WideString; // סԺ���÷������18  ��ѡ
    zy_InbedAmt18: WideString; // סԺ���ý��18  ��ѡ
    zy_InbedType19: WideString; // סԺ���÷���19  ��ѡ
    zy_InbedTypeCode19: WideString; // סԺ���÷������19  ��ѡ
    zy_InbedAmt19: WideString; // סԺ���ý��19  ��ѡ
    zy_InbedType20: WideString; // סԺ���÷���20  ��ѡ
    zy_InbedTypeCode20: WideString; // סԺ���÷������20  ��ѡ
    zy_InbedAmt20: WideString; // סԺ���ý��20  ��ѡ
    zy_InbedSumAmt: WideString; // סԺ�ܷ���  ��ѡ
    zy_InbedBedAmt: WideString; // ��λ��  ��ѡ
    zy_InbedNursAmt: WideString; // סԺ�����  ��ѡ
    zy_InbedWesAmt: WideString; // סԺ��ҩ��  ��ѡ
    zy_InbedChinAmt: WideString; // סԺ��ҩ��  ��ѡ
    zy_InbedLaboAmt: WideString; // סԺ�����  ��ѡ
    zy_InbedPracAmt: WideString; // סԺ���Ʒ�  ��ѡ
    zy_InbedOperAmt: WideString; // סԺ������  ��ѡ
    zy_InbedInspeAmt: WideString; // סԺ����  ��ѡ
    zy_InbedOtherAmt: WideString; // ����סԺ����  ��ѡ
    zy_InbedInfoStr: WideString; // סԺ���ʵ��ִ�  ��ѡ
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
