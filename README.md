#### Examples
Test case input
```json
{
    body: "
    ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*ABCPAYER       *190827*0212*^*00501*191511902*0*P*>~
    GS*HP*ABCD*ABCD*20190827*12345678*12345678*X*005010X221A1~
    ST*835*10060875~
    BPR*I*80.00*C*CHK************20190816~
    TRN*1*CK NUMBER 1*1234567890~
    REF*EV*FAC~
    DTM*405*20190827~
    N1*PR*ANY PLAN USA~
    N3*1 WALK THIS WAY~
    N4*ANYCITY*OH*45209~
    PER*CX**TE*8661112222~
    PER*BL*EDI*TE*8002223333*EM*EDI.SUPPORT@ANYPAYER.COM~
    PER*IC**UR*WWW.ANYPAYER.COM~
    N1*PE*PROVIDER*XX*1123454567~
    N3*2255 ANY ROAD~
    N4*ANY CITY*CA*12211~
    REF*TJ*123456789~
    LX*1~
    CLP*PATACCT*1*400*80**MC*CLAIMNUMBER*11*1~
    NM1*QC*1*DOE*JOHN*N***MI*ABC123456789~
    REF*1L*12345F~
    DTM*050*20190209~
    PER*CX*G CUSTOMER SERVICE DEPARTMENT*TE*8004074627~
    AMT*AU*150~
    SVC*HC>99213*150*80**1~
    DTM*472*20190101~
    CAS*CO*45*70~
    AMT*B6*80~
    SVC*HC>85003*100*0**1~
    DTM*472*20190101~
    CAS*CO*204*100~
    SVC*HC>36415*150*0**1~
    DTM*472*20190101~
    CAS*CO*97*150~
    SE*33*10060875~
    GE*1*12345678~
    IEA*1*191511902~"
}
```


Generated prompt
```txt
You are an expert in X12 Electronic Data Interchange (EDI) with a specialization in the 835 X221A1 - Health Care Claim Payment/Advice transaction set. Your role is to analyze, parse, and transform raw X12 transaction data into structured data that complies with the provided JSON schema, while providing metadata explanations for decisions made during the extraction process.
Responsibilities:
1. Data Extraction:
- Parse the provided raw X12 transaction data.
- Transform the data into the specified JSON schema, ensuring compliance with the X12 HIPAA 5010 standards for 835 X221A1.
1. Rules for Data Processing:
- Trim all strings to remove leading and trailing whitespace. For example, `" hello "` becomes `"hello"`.
- Replace any empty strings with `null`.
- Any missing or invalid fields should also result in `null` values, unless explicitly required by the schema.
1. Validation:
- If the input X12 data is invalid, malformed, incomplete, or fails to provide the required elements based on the schema, return:
    ```json
    {
    "status": "failed",
    "reason": "Invalid or incomplete X12 data"
    }
    ```
Extract this X12 transaction:
 ---
 ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*ABCPAYER       *190827*0212*^*00501*191511902*0*P*>~
GS*HP*ABCD*ABCD*20190827*12345678*12345678*X*005010X221A1~
ST*835*10060875~
BPR*I*80.00*C*CHK************20190816~
TRN*1*CK NUMBER 1*1234567890~
REF*EV*FAC~
DTM*405*20190827~
N1*PR*ANY PLAN USA~
N3*1 WALK THIS WAY~
N4*ANYCITY*OH*45209~
PER*CX**TE*8661112222~
PER*BL*EDI*TE*8002223333*EM*EDI.SUPPORT@ANYPAYER.COM~
PER*IC**UR*WWW.ANYPAYER.COM~
N1*PE*PROVIDER*XX*1123454567~
N3*2255 ANY ROAD~
N4*ANY CITY*CA*12211~
REF*TJ*123456789~
LX*1~
CLP*PATACCT*1*400*80**MC*CLAIMNUMBER*11*1~
NM1*QC*1*DOE*JOHN*N***MI*ABC123456789~
REF*1L*12345F~
DTM*050*20190209~
PER*CX*G CUSTOMER SERVICE DEPARTMENT*TE*8004074627~
AMT*AU*150~
SVC*HC>99213*150*80**1~
DTM*472*20190101~
CAS*CO*45*70~
AMT*B6*80~
SVC*HC>85003*100*0**1~
DTM*472*20190101~
CAS*CO*204*100~
SVC*HC>36415*150*0**1~
DTM*472*20190101~
CAS*CO*97*150~
SE*33*10060875~
GE*1*12345678~
IEA*1*191511902~
 ---
 X12_835_5010_X221A1_Summary_PLB_C042_V0 {
  adjustment_reason_code: string,
  reference_identification: string or null,
}
X12_835_5010_X221A1_Detail_2100_2110_SVC_C003_V0 {
  C003_01_product_service_id_qualifier: string,
  C003_02_product_service_id: string,
  C003_03_procedure_modifier: string or null,
  C003_04_procedure_modifier: string or null,
  C003_05_procedure_modifier: string or null,
  C003_06_procedure_modifier: string or null,
  C003_07_description: string or null,
  C003_08_product_service_id: string or null,
}
X12_835_5010_X221A1_Detail_2100_NM1_V0 {
  NM101_entity_identifier_code: string,
  NM102_entity_type_qualifier: string,
  NM103_name_last_or_organization_name: string or null,
  NM104_name_first: string or null,
  NM105_name_middle: string or null,
  NM106_name_prefix: string or null,
  NM107_name_suffix: string or null,
  NM108_identification_code_qualifier: string or null,
  NM109_identification_code: string or null,
  NM110_entity_relationship_code: string or null,
  NM111_additional_entity_identifier_code: string or null,
  NM112_secondary_name_last_or_organization_name: string or null,
}
Answer in JSON using this schema:
{
  // Example Input:
  // ---
  // ---
  data: {
    // Example Input:
    // ---
    // ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*XYZPROVIDER     *210101*1200*^*00501*123456789*0*P*>~
    // GS*HP*ABCD*XYZPROVIDER*20210101*1200*123456789*X*005010X221A1~
    // ST*835*10012345~
    // BPR*I*100.00*C*CHK************20210101~
    // TRN*1*CK123456789*987654321~
    // REF*EV*FAC~
    // DTM*405*20210101~
    // N1*PR*ANY PLAN USA~
    // N3*123 MAIN STREET~
    // N4*ANYCITY*OH*44100~
    // PER*CX**TE*8005551212~
    // PER*BL*EDI*TE*8005552222*EM*edi.support@abcpayer.com~
    // N1*PE*XYZ PROVIDER*XX*1122334455~
    // N3*2255 OAK STREET~
    // N4*ANYTOWN*CA*90210~
    // REF*TJ*987654321~
    // ---
    heading: {
      ST_transaction_set_header: {
        ST01_transaction_set_identifier_code: string,
        ST02_transaction_set_control_number: string,
        ST03_implementation_convention_reference: string or null,
      },
      BPR_financial_information: {
        BPR01_transaction_handling_code: string,
        BPR02_monetary_amount: float,
        BPR03_credit_debit_flag_code: string,
        BPR04_payment_method_code: string,
        BPR05_payment_format_code: string or null,
        BPR06_dfi_id_number_qualifier: string or null,
        BPR07_dfi_identification_number: string or null,
        BPR08_account_number_qualifier: string or null,
        BPR09_account_number: string or null,
        BPR10_originating_company_identifier: string or null,
        BPR11_originating_company_supplemental_code: string or null,
        BPR12_dfi_id_number_qualifier_receiver: string or null,
        BPR13_dfi_identification_number_receiver: string or null,
        BPR14_account_number_qualifier_receiver: string or null,
        BPR15_account_number_receiver: string or null,
        BPR16_date: string or null,
        BPR17_business_function_code: string or null,
        BPR18_dfi_id_number_qualifier_return: string or null,
        BPR19_dfi_identification_number_return: string or null,
        BPR20_account_number_qualifier_return: string or null,
        BPR21_account_number_return: string or null,
      },
      TRN_reassociation_trace_number: {
        TRN01_trace_type_code: string,
        TRN02_reference_identification: string,
        TRN03_originating_company_identifier: string or null,
        TRN04_reference_identification: string or null,
      } or null,
      CUR_currency: {
        CUR01_entity_identifier_code: string,
        CUR02_currency_code: string,
        CUR03_exchange_rate: float or null,
        CUR04_entity_identifier_code: string or null,
        CUR05_secondary_currency_code: string or null,
        CUR06_currency_market_exchange_code: string or null,
        CUR07_date_time_qualifier: string or null,
        CUR08_date: string or null,
        CUR09_time: string or null,
        CUR10_secondary_date_time_qualifier: string or null,
        CUR11_secondary_date: string or null,
        CUR12_secondary_time: string or null,
        CUR13_additional_date_time_qualifier: string or null,
        CUR14_additional_date: string or null,
        CUR15_additional_time: string or null,
        CUR16_final_date_time_qualifier: string or null,
        CUR17_final_date: string or null,
        CUR18_final_time: string or null,
        CUR19_last_date_time_qualifier: string or null,
        CUR20_last_date: string or null,
        CUR21_last_time: string or null,
      } or null,
      REF_receiver_identification: {
        REF01_reference_id_qualifier: string,
        REF02_reference_id: string or null,
        REF03_description: string or null,
        REF04_composite_reference_identifier: {
          C040_01_reference_id_qualifier: string,
          C040_02_reference_id: string,
          C040_03_secondary_reference_id_qualifier: string or null,
          C040_04_secondary_reference_id: string or null,
          C040_05_tertiary_reference_id_qualifier: string or null,
          C040_06_tertiary_reference_id: string or null,
        } or null,
      } or null,
      REF_version_identification: {
        REF01_reference_id_qualifier: string,
        REF02_reference_id: string or null,
        REF03_description: string or null,
        REF04_composite_reference_identifier: {
          C040_01_reference_id_qualifier: string,
          C040_02_reference_id: string,
          C040_03_secondary_reference_id_qualifier: string or null,
          C040_04_secondary_reference_id: string or null,
          C040_05_tertiary_reference_id_qualifier: string or null,
          C040_06_tertiary_reference_id: string or null,
        } or null,
      } or null,
      DTM_production_date: {
        DTM01_date_time_qualifier: string,
        DTM02_date: string or null,
        DTM03_time: string or null,
        DTM04_time_code: string or null,
        DTM05_date_time_period_format_qualifier: string or null,
        DTM06_date_time_period: string or null,
      } or null,
      payer_identification_loop: [
        {
          N1_payer_identification: {
            N101_entity_identifier_code: string,
            N102_name: string or null,
            N103_identification_code_qualifier: string or null,
            N104_identification_code: string or null,
            N105_entity_relationship_code: string or null,
            N106_entity_identifier_code: string or null,
          },
          N3_payer_address: {
            N301_address_information: string,
            N302_address_information: string or null,
          },
          N4_payer_city_state_zip_code: {
            N401_city_name: string or null,
            N402_state_or_province_code: string or null,
            N403_postal_code: string or null,
            N404_country_code: string or null,
            N405_location_qualifier: string or null,
            N406_location_identifier: string or null,
            N407_country_subdivision_code: string or null,
          },
          REF_additional_payer_identification: [
            {
              REF01_reference_identification_qualifier: string,
              REF02_reference_identification: string or null,
              REF03_description: string or null,
              REF04_composite_reference_identifier: {
                C040_01_reference_identification_qualifier: string,
                C040_02_reference_identification: string,
                C040_03_reference_identification_qualifier: string or null,
                C040_04_reference_identification: string or null,
                C040_05_reference_identification_qualifier: string or null,
                C040_06_reference_identification: string or null,
              } or null,
            }
          ],
          PER_payer_business_contact_information: {
            PER01_contact_function_code: string,
            PER02_name: string or null,
            PER03_communication_number_qualifier_1: string or null,
            PER04_communication_number_1: string or null,
            PER05_communication_number_qualifier_2: string or null,
            PER06_communication_number_2: string or null,
            PER07_communication_number_qualifier_3: string or null,
            PER08_communication_number_3: string or null,
            PER09_contact_inquiry_reference: string or null,
          } or null,
          PER_payer_technical_contact_information: [
            {
              PER01_contact_function_code: string,
              PER02_name: string or null,
              PER03_communication_number_qualifier_1: string or null,
              PER04_communication_number_1: string or null,
              PER05_communication_number_qualifier_2: string or null,
              PER06_communication_number_2: string or null,
              PER07_communication_number_qualifier_3: string or null,
              PER08_communication_number_3: string or null,
              PER09_contact_inquiry_reference: string or null,
            }
          ],
          PER_payer_web_site: {
            PER01_contact_function_code: string,
            PER02_name: string or null,
            PER03_communication_number_qualifier_1: string or null,
            PER04_communication_number_1: string or null,
            PER05_communication_number_qualifier_2: string or null,
            PER06_communication_number_2: string or null,
            PER07_communication_number_qualifier_3: string or null,
            PER08_communication_number_3: string or null,
            PER09_contact_inquiry_reference: string or null,
          } or null,
        }
      ],
      payee_identification_loop: [
        {
          N1_payee_identification: {
            N101_entity_identifier_code: string,
            N102_name: string or null,
            N103_identification_code_qualifier: string or null,
            N104_identification_code: string or null,
            N105_entity_relationship_code: string or null,
            N106_entity_identifier_code: string or null,
          },
          N3_payee_address: {
            N301_address_information: string,
            N302_address_information: string or null,
          } or null,
          N4_payee_city_state_zip_code: {
            N401_city_name: string or null,
            N402_state_or_province_code: string or null,
            N403_postal_code: string or null,
            N404_country_code: string or null,
            N405_location_qualifier: string or null,
            N406_location_identifier: string or null,
            N407_country_subdivision_code: string or null,
          } or null,
          REF_payee_additional_identification: [
            {
              REF01_reference_identification_qualifier: string,
              REF02_reference_identification: string or null,
              REF03_description: string or null,
              REF04_composite_reference_identifier: {
                C040_01_reference_identification_qualifier: string,
                C040_02_reference_identification: string,
                C040_03_reference_identification_qualifier: string or null,
                C040_04_reference_identification: string or null,
                C040_05_reference_identification_qualifier: string or null,
                C040_06_reference_identification: string or null,
              } or null,
            }
          ],
          RDM_remittance_delivery_method: {
            RDM01_report_transmission_code: string,
            RDM02_name: string or null,
            RDM03_communication_number: string or null,
            RDM04_composite_reference_identifier: {
              C040_01_reference_identification_qualifier: string,
              C040_02_reference_identification: string,
              C040_03_reference_identification_qualifier: string or null,
              C040_04_reference_identification: string or null,
              C040_05_reference_identification_qualifier: string or null,
              C040_06_reference_identification: string or null,
            } or null,
            RDM05_composite_reference_identifier: {
              C040_01_reference_identification_qualifier: string,
              C040_02_reference_identification: string,
              C040_03_reference_identification_qualifier: string or null,
              C040_04_reference_identification: string or null,
              C040_05_reference_identification_qualifier: string or null,
              C040_06_reference_identification: string or null,
            } or null,
          } or null,
        }
      ],
    },
    // Example Input:
    // ---
    // LX*1~
    // CLP*PATIENT123*1*250*200**MC*1234567890*11*1~
    // NM1*QC*1*DOE*JOHN*N***MI*XYZ987654321~
    // REF*1L*98765A~
    // DTM*050*20210101~
    // PER*CX*G CUSTOMER SERVICE DEPT*TE*8004074627~
    // AMT*AU*150~
    // SVC*HC:99213*150*80**1~
    // DTM*472*20210101~
    // CAS*CO*45*70~
    // AMT*B6*80~
    // SVC*HC:85003*100*0**1~
    // DTM*472*20210101~
    // CAS*CO*204*100~
    // SVC*HC:36415*150*0**1~
    // DTM*472*20210101~
    // CAS*CO*97*150~
    // ---
    detail: [
      {
        LX_header_number: {
          LX01_assigned_number: int,
        },
        TS3_provider_summary_information: {
          TS301_reference_identification: string,
          TS302_facility_code_value: string,
          TS303_date: string,
          TS304_quantity: float,
          TS305_total_reported_charges: float,
          TS306_total_covered_charges: float or null,
          TS307_total_noncovered_charges: float or null,
          TS308_total_denied_charges: float or null,
          TS309_total_provider_payment: float or null,
          TS310_total_interest_paid: float or null,
          TS311_total_contractual_adjustment: float or null,
          TS312_total_gramm_rudman_reduction: float or null,
          TS313_total_medicare_secondary_payer_primary_payer_amount: float or null,
          TS314_total_blood_deductible_amount: float or null,
          TS315_total_non_lab_charges: float or null,
          TS316_total_coinsurance_amount: float or null,
          TS317_hcpcs_reported_charges: float or null,
          TS318_hcpcs_payable_amount: float or null,
          TS319_total_deductible_amount: float or null,
          TS320_total_professional_component_amount: float or null,
          TS321_total_msp_patient_liability_met: float or null,
          TS322_total_patient_reimbursement: float or null,
          TS323_total_pip_number_of_claims: float or null,
          TS324_total_pip_adjustment: float or null,
        } or null,
        TS2_provider_supplemental_summary_information: {
          TS201_total_drg_amount: float or null,
          TS202_total_federal_specific_amount: float or null,
          TS203_total_hospital_specific_amount: float or null,
          TS204_total_disproportionate_share_amount: float or null,
          TS205_total_capital_amount: float or null,
          TS206_total_indirect_medical_education_amount: float or null,
          TS207_total_outlier_days: float or null,
          TS208_total_day_outlier_amount: float or null,
          TS209_total_cost_outlier_amount: float or null,
          TS210_drg_average_length_of_stay: float or null,
          TS211_total_discharges: float or null,
          TS212_total_cost_report_days: float or null,
          TS213_total_covered_days: float or null,
          TS214_total_non_covered_days: float or null,
          TS215_total_msp_pass_through_amount: float or null,
          TS216_average_drg_weight: float or null,
          TS217_total_pps_capital_federal_specific_drg_amount: float or null,
          TS218_total_pps_capital_hospital_specific_drg_amount: float or null,
          TS219_total_pps_disproportionate_share_drg_amount: float or null,
        } or null,
        claim_level_loop: [
          {
            CLP_claim_payment_information: {
              CLP01_claim_submitters_identifier: string,
              CLP02_claim_status_code: string,
              CLP03_submitted_charges_amount: float,
              CLP04_paid_amount: float,
              CLP05_patient_responsibility_amount: float or null,
              CLP06_claim_filing_indicator_code: string or null,
              CLP07_payer_control_number: string or null,
              CLP08_facility_code_value: string or null,
              CLP09_claim_frequency_type_code: string or null,
              CLP10_patient_status_code: string or null,
              CLP11_drg_code: string or null,
              CLP12_drg_weight: float or null,
              CLP13_discharge_fraction: float or null,
              CLP14_patient_authorization_to_coordinate_benefits: string or null,
            },
            CAS_claim_adjustments: [
              {
                CAS01_claim_adjustment_group_code: string,
                CAS02_reason_code: string,
                CAS03_adjustment_amount: float,
                CAS04_adjustment_quantity: float or null,
                CAS05_reason_code: string or null,
                CAS06_adjustment_amount: float or null,
                CAS07_adjustment_quantity: float or null,
                CAS08_reason_code: string or null,
                CAS09_adjustment_amount: float or null,
                CAS10_adjustment_quantity: float or null,
                CAS11_reason_code: string or null,
                CAS12_adjustment_amount: float or null,
                CAS13_adjustment_quantity: float or null,
                CAS14_reason_code: string or null,
                CAS15_adjustment_amount: float or null,
                CAS16_adjustment_quantity: float or null,
                CAS17_reason_code: string or null,
                CAS18_adjustment_amount: float or null,
                CAS19_adjustment_quantity: float or null,
              }
            ],
            NM1_patient_name: X12_835_5010_X221A1_Detail_2100_NM1_V0,
            NM1_insured_name: X12_835_5010_X221A1_Detail_2100_NM1_V0 or null,
            NM1_corrected_patient_or_insured_name: X12_835_5010_X221A1_Detail_2100_NM1_V0 or null,
            NM1_service_provider_name: X12_835_5010_X221A1_Detail_2100_NM1_V0 or null,
            NM1_crossover_carrier_name: X12_835_5010_X221A1_Detail_2100_NM1_V0 or null,
            NM1_corrected_priority_payer_name: X12_835_5010_X221A1_Detail_2100_NM1_V0 or null,
            NM1_other_subscriber_name: X12_835_5010_X221A1_Detail_2100_NM1_V0 or null,
            MIA_inpatient_adjudication_information: {
              MIA01_covered_days: float,
              MIA02_pps_operating_outlier_amount: float or null,
              MIA03_lifetime_psychiatric_days: float or null,
              MIA04_drg_amount: float or null,
              MIA05_claim_payment_remark_code: string or null,
              MIA06_disproportionate_share_amount: float or null,
              MIA07_msp_pass_through_amount: float or null,
              MIA08_total_pps_capital_amount: float or null,
              MIA09_pps_capital_federal_specific_drg_amount: float or null,
              MIA10_pps_capital_hospital_specific_drg_amount: float or null,
              MIA11_pps_capital_disproportionate_share_drg_amount: float or null,
              MIA12_old_capital_amount: float or null,
              MIA13_pps_capital_indirect_medical_education_claim_amount: float or null,
              MIA14_hospital_specific_drg_amount: float or null,
              MIA15_cost_report_days: float or null,
              MIA16_federal_specific_drg_amount: float or null,
              MIA17_pps_capital_outlier_amount: float or null,
              MIA18_indirect_teaching_amount: float or null,
              MIA19_professional_component_amount_billed_but_not_payable: float or null,
              MIA20_claim_payment_remark_code_1: string or null,
              MIA21_claim_payment_remark_code_2: string or null,
              MIA22_claim_payment_remark_code_3: string or null,
              MIA23_claim_payment_remark_code_4: string or null,
              MIA24_capital_exception_amount: float or null,
            } or null,
            MOA_outpatient_adjudication_information: {
              MOA01_reimbursement_rate: float or null,
              MOA02_hcpcs_payable_amount: float or null,
              MOA03_claim_payment_remark_code_1: string or null,
              MOA04_claim_payment_remark_code_2: string or null,
              MOA05_claim_payment_remark_code_3: string or null,
              MOA06_claim_payment_remark_code_4: string or null,
              MOA07_claim_payment_remark_code_5: string or null,
              MOA08_esrd_payment_amount: float or null,
              MOA09_professional_component_amount_billed_but_not_payable: float or null,
            } or null,
            REF_other_claim_related_identification: [
              {
                REF01_reference_identification_qualifier: string,
                REF02_reference_identification: string or null,
                REF03_description: string or null,
                REF04_composite_reference_identifier: {
                  C040_01_reference_identification_qualifier: string,
                  C040_02_reference_identification: string,
                  C040_03_reference_identification_qualifier: string or null,
                  C040_04_reference_identification: string or null,
                  C040_05_reference_identification_qualifier: string or null,
                  C040_06_reference_identification: string or null,
                } or null,
              }
            ],
            REF_rendering_provider_identification: [
              {
                REF01_reference_identification_qualifier: string,
                REF02_reference_identification: string or null,
                REF03_description: string or null,
                REF04_composite_reference_identifier: {
                  C040_01_reference_identification_qualifier: string,
                  C040_02_reference_identification: string,
                  C040_03_reference_identification_qualifier: string or null,
                  C040_04_reference_identification: string or null,
                  C040_05_reference_identification_qualifier: string or null,
                  C040_06_reference_identification: string or null,
                } or null,
              }
            ],
            DTM_statement_from_to_date: [
              {
                DTM01_date_time_qualifier: string,
                DTM02_date: string or null,
                DTM03_time: string or null,
                DTM04_time_code: string or null,
                DTM05_date_time_period_format_qualifier: string or null,
                DTM06_date_time_period: string or null,
              }
            ],
            DTM_coverage_expiration_date: {
              DTM01_date_time_qualifier: string,
              DTM02_date: string or null,
              DTM03_time: string or null,
              DTM04_time_code: string or null,
              DTM05_date_time_period_format_qualifier: string or null,
              DTM06_date_time_period: string or null,
            } or null,
            DTM_claim_received_date: {
              DTM01_date_time_qualifier: string,
              DTM02_date: string or null,
              DTM03_time: string or null,
              DTM04_time_code: string or null,
              DTM05_date_time_period_format_qualifier: string or null,
              DTM06_date_time_period: string or null,
            } or null,
            PER_claim_contact_information: [
              {
                PER01_contact_function_code: string,
                PER02_name: string or null,
                PER03_communication_number_qualifier_1: string or null,
                PER04_communication_number_1: string or null,
                PER05_communication_number_qualifier_2: string or null,
                PER06_communication_number_2: string or null,
                PER07_communication_number_qualifier_3: string or null,
                PER08_communication_number_3: string or null,
                PER09_contact_inquiry_reference: string or null,
              }
            ],
            AMT_claim_supplemental_information: [
              {
                AMT01_amount_qualifier_code: string,
                AMT02_monetary_amount: float,
                AMT03_credit_debit_flag_code: string or null,
              }
            ],
            QTY_claim_supplemental_information_quantity: [
              {
                QTY01_quantity_qualifier: string,
                QTY02_quantity: float or null,
                QTY03_composite_unit_of_measure: {
                  C001_01_unit_or_basis_for_measurement_code: string,
                  C001_02_exponent: float or null,
                  C001_03_multiplier: float or null,
                  C001_04_unit_or_basis_for_measurement_code: string or null,
                  C001_05_exponent: float or null,
                  C001_06_multiplier: float or null,
                  C001_07_unit_or_basis_for_measurement_code: string or null,
                  C001_08_exponent: float or null,
                  C001_09_multiplier: float or null,
                  C001_10_unit_or_basis_for_measurement_code: string or null,
                  C001_11_exponent: float or null,
                  C001_12_multiplier: float or null,
                  C001_13_unit_or_basis_for_measurement_code: string or null,
                  C001_14_exponent: float or null,
                  C001_15_multiplier: float or null,
                } or null,
                QTY04_free_form_information: string or null,
              }
            ],
            service_line_loop: [
              {
                SVC_service_payment_information: {
                  SVC01_composite_medical_procedure_identifier: X12_835_5010_X221A1_Detail_2100_2110_SVC_C003_V0,
                  SVC02_submitted_service_charge: float,
                  SVC03_paid_service_amount: float or null,
                  SVC04_revenue_code: string or null,
                  SVC05_paid_units_of_service: float or null,
                  SVC06_composite_medical_procedure_identifier: X12_835_5010_X221A1_Detail_2100_2110_SVC_C003_V0 or null,
                  SVC07_original_submitted_units_of_service: float or null,
                },
                DTM_service_date: [
                  {
                    DTM01_date_time_qualifier: string,
                    DTM02_date: string or null,
                    DTM03_time: string or null,
                    DTM04_time_code: string or null,
                    DTM05_date_time_period_format_qualifier: string or null,
                    DTM06_date_time_period: string or null,
                  }
                ],
                CAS_service_adjustment: [
                  {
                    CAS01_claim_adjustment_group_code: string,
                    CAS02_claim_adjustment_reason_code: string,
                    CAS03_monetary_amount: float,
                    CAS04_quantity: float or null,
                    CAS05_claim_adjustment_reason_code: string or null,
                    CAS06_monetary_amount: float or null,
                    CAS07_quantity: float or null,
                    CAS08_claim_adjustment_reason_code: string or null,
                    CAS09_monetary_amount: float or null,
                    CAS10_quantity: float or null,
                    CAS11_claim_adjustment_reason_code: string or null,
                    CAS12_monetary_amount: float or null,
                    CAS13_quantity: float or null,
                    CAS14_claim_adjustment_reason_code: string or null,
                    CAS15_monetary_amount: float or null,
                    CAS16_quantity: float or null,
                    CAS17_claim_adjustment_reason_code: string or null,
                    CAS18_monetary_amount: float or null,
                    CAS19_quantity: float or null,
                  }
                ],
                REF_service_identification: [
                  {
                    REF01_reference_identification_qualifier: string,
                    REF02_reference_identification: string or null,
                    REF03_description: string or null,
                    REF04_composite_reference_identifier: {
                      C040_01_reference_identification_qualifier: string,
                      C040_02_reference_identification: string,
                      C040_03_reference_identification_qualifier: string or null,
                      C040_04_reference_identification: string or null,
                      C040_05_reference_identification_qualifier: string or null,
                      C040_06_reference_identification: string or null,
                    } or null,
                  }
                ],
                REF_line_item_control_number: {
                  REF01_reference_identification_qualifier: string,
                  REF02_reference_identification: string or null,
                  REF03_description: string or null,
                  REF04_composite_reference_identifier: {
                    C040_01_reference_identification_qualifier: string,
                    C040_02_reference_identification: string,
                    C040_03_reference_identification_qualifier: string or null,
                    C040_04_reference_identification: string or null,
                    C040_05_reference_identification_qualifier: string or null,
                    C040_06_reference_identification: string or null,
                  } or null,
                } or null,
                REF_rendering_provider_information: [
                  {
                    REF01_reference_identification_qualifier: string,
                    REF02_reference_identification: string or null,
                    REF03_description: string or null,
                    REF04_composite_reference_identifier: {
                      C040_01_reference_identification_qualifier: string,
                      C040_02_reference_identification: string,
                      C040_03_reference_identification_qualifier: string or null,
                      C040_04_reference_identification: string or null,
                      C040_05_reference_identification_qualifier: string or null,
                      C040_06_reference_identification: string or null,
                    } or null,
                  }
                ],
                REF_healthcare_policy_identification: [
                  {
                    REF01_reference_identification_qualifier: string,
                    REF02_reference_identification: string or null,
                    REF03_description: string or null,
                    REF04_composite_reference_identifier: {
                      C040_01_reference_identification_qualifier: string,
                      C040_02_reference_identification: string,
                      C040_03_reference_identification_qualifier: string or null,
                      C040_04_reference_identification: string or null,
                      C040_05_reference_identification_qualifier: string or null,
                      C040_06_reference_identification: string or null,
                    } or null,
                  }
                ],
                AMT_service_supplemental_amount: [
                  {
                    AMT01_amount_qualifier_code: string,
                    AMT02_monetary_amount: float,
                    AMT03_credit_debit_flag_code: string or null,
                  }
                ],
                QTY_service_supplemental_quantity: [
                  {
                    QTY01_quantity_qualifier: string,
                    QTY02_quantity: float or null,
                    QTY03_composite_unit_of_measure: {
                      C001_01_unit_or_basis_for_measurement_code: string,
                      C001_02_exponent: float or null,
                      C001_03_multiplier: float or null,
                      C001_04_unit_or_basis_for_measurement_code: string or null,
                      C001_05_exponent: float or null,
                      C001_06_multiplier: float or null,
                      C001_07_unit_or_basis_for_measurement_code: string or null,
                      C001_08_exponent: float or null,
                      C001_09_multiplier: float or null,
                      C001_10_unit_or_basis_for_measurement_code: string or null,
                      C001_11_exponent: float or null,
                      C001_12_multiplier: float or null,
                      C001_13_unit_or_basis_for_measurement_code: string or null,
                      C001_14_exponent: float or null,
                      C001_15_multiplier: float or null,
                    } or null,
                    QTY04_free_form_information: string or null,
                  }
                ],
                LQ_healthcare_remark_codes: [
                  {
                    LQ01_code_list_qualifier_code: string or null,
                    LQ02_industry_code: string,
                  }
                ],
              }
            ],
          }
        ],
      }
    ],
    // Example Input:
    // ---
    // SE*33*10012345~
    // GE*1*123456789~
    // ---
    summary: {
      PLB_provider_adjustments: [
        {
          PLB01_provider_identifier: string,
          PLB02_fiscal_period_date: string,
          PLB03_adjustment_identifier: X12_835_5010_X221A1_Summary_PLB_C042_V0,
          PLB04_adjustment_amount: float,
          PLB05_adjustment_identifier: X12_835_5010_X221A1_Summary_PLB_C042_V0 or null,
          PLB06_adjustment_amount: float or null,
          PLB07_adjustment_identifier: X12_835_5010_X221A1_Summary_PLB_C042_V0 or null,
          PLB08_adjustment_amount: float or null,
          PLB09_adjustment_identifier: X12_835_5010_X221A1_Summary_PLB_C042_V0 or null,
          PLB10_adjustment_amount: float or null,
          PLB11_adjustment_identifier: X12_835_5010_X221A1_Summary_PLB_C042_V0 or null,
          PLB12_adjustment_amount: float or null,
          PLB13_adjustment_identifier: X12_835_5010_X221A1_Summary_PLB_C042_V0 or null,
          PLB14_adjustment_amount: float or null,
        }
      ],
      SE_transaction_set_trailer: {
        SE01_number_of_included_segments: int,
        SE02_transaction_set_control_number: string,
      },
    },
  },
}
```

example output - would need prompt refinement for accuuracy but demonstrates point.

```json
{
  "data": {
    "heading": {
      "ST_transaction_set_header": {
        "ST01_transaction_set_identifier_code": "835",
        "ST02_transaction_set_control_number": "10060875",
        "ST03_implementation_convention_reference": "X221A1"
      },
      "BPR_financial_information": {
        "BPR01_transaction_handling_code": "I",
        "BPR02_monetary_amount": 80,
        "BPR03_credit_debit_flag_code": "C",
        "BPR04_payment_method_code": "CHK",
        "BPR05_payment_format_code": null,
        "BPR06_dfi_id_number_qualifier": "************",
        "BPR07_dfi_identification_number": "20190816",
        "BPR08_account_number_qualifier": null,
        "BPR09_account_number": null,
        "BPR10_originating_company_identifier": null,
        "BPR11_originating_company_supplemental_code": null,
        "BPR12_dfi_id_number_qualifier_receiver": null,
        "BPR13_dfi_identification_number_receiver": null,
        "BPR14_account_number_qualifier_receiver": null,
        "BPR15_account_number_receiver": null,
        "BPR16_date": null,
        "BPR17_business_function_code": null,
        "BPR18_dfi_id_number_qualifier_return": null,
        "BPR19_dfi_identification_number_return": null,
        "BPR20_account_number_qualifier_return": null,
        "BPR21_account_number_return": null
      },
      "TRN_reassociation_trace_number": {
        "TRN01_trace_type_code": "1",
        "TRN02_reference_identification": "CK NUMBER 1",
        "TRN03_originating_company_identifier": null,
        "TRN04_reference_identification": "1234567890"
      },
      "CUR_currency": null,
      "REF_receiver_identification": {
        "REF01_reference_id_qualifier": "EV",
        "REF02_reference_id": "FAC",
        "REF03_description": null,
        "REF04_composite_reference_identifier": null
      },
      "REF_version_identification": null,
      "DTM_production_date": {
        "DTM01_date_time_qualifier": "405",
        "DTM02_date": "20190827",
        "DTM03_time": null,
        "DTM04_time_code": null,
        "DTM05_date_time_period_format_qualifier": null,
        "DTM06_date_time_period": null
      },
      "payer_identification_loop": [
        {
          "N1_payer_identification": {
            "N101_entity_identifier_code": "PR",
            "N102_name": "ANY PLAN USA",
            "N103_identification_code_qualifier": null,
            "N104_identification_code": null,
            "N105_entity_relationship_code": null,
            "N106_entity_identifier_code": null
          },
          "N3_payer_address": {
            "N301_address_information": "1 WALK THIS WAY",
            "N302_address_information": null
          },
          "N4_payer_city_state_zip_code": {
            "N401_city_name": "ANYCITY",
            "N402_state_or_province_code": "OH",
            "N403_postal_code": "45209",
            "N404_country_code": null,
            "N405_location_qualifier": null,
            "N406_location_identifier": null,
            "N407_country_subdivision_code": null
          },
          "REF_additional_payer_identification": [],
          "PER_payer_business_contact_information": {
            "PER01_contact_function_code": "CX",
            "PER02_name": "TE",
            "PER03_communication_number_qualifier_1": "TE",
            "PER04_communication_number_1": "8661112222",
            "PER05_communication_number_qualifier_2": null,
            "PER06_communication_number_2": null,
            "PER07_communication_number_qualifier_3": null,
            "PER08_communication_number_3": null,
            "PER09_contact_inquiry_reference": null
          },
          "PER_payer_technical_contact_information": [
            {
              "PER01_contact_function_code": "BL",
              "PER02_name": "EDI",
              "PER03_communication_number_qualifier_1": "TE",
              "PER04_communication_number_1": "8002223333",
              "PER05_communication_number_qualifier_2": null,
              "PER06_communication_number_2": null,
              "PER07_communication_number_qualifier_3": null,
              "PER08_communication_number_3": null,
              "PER09_contact_inquiry_reference": null
            }
          ],
          "PER_payer_web_site": {
            "PER01_contact_function_code": "IC",
            "PER02_name": "UR",
            "PER03_communication_number_qualifier_1": "WWW",
            "PER04_communication_number_1": "WWW.ANYPAYER.COM",
            "PER05_communication_number_qualifier_2": null,
            "PER06_communication_number_2": null,
            "PER07_communication_number_qualifier_3": null,
            "PER08_communication_number_3": null,
            "PER09_contact_inquiry_reference": null
          }
        }
      ],
      "payee_identification_loop": [
        {
          "N1_payee_identification": {
            "N101_entity_identifier_code": "PE",
            "N102_name": "PROVIDER",
            "N103_identification_code_qualifier": "XX",
            "N104_identification_code": "1123454567",
            "N105_entity_relationship_code": null,
            "N106_entity_identifier_code": null
          },
          "N3_payee_address": {
            "N301_address_information": "2255 ANY ROAD",
            "N302_address_information": null
          },
          "N4_payee_city_state_zip_code": {
            "N401_city_name": "ANY CITY",
            "N402_state_or_province_code": "CA",
            "N403_postal_code": "12211",
            "N404_country_code": null,
            "N405_location_qualifier": null,
            "N406_location_identifier": null,
            "N407_country_subdivision_code": null
          },
          "REF_payee_additional_identification": [],
          "RDM_remittance_delivery_method": null
        }
      ]
    },
    "detail": [
      {
        "LX_header_number": {
          "LX01_assigned_number": 1
        },
        "TS3_provider_summary_information": null,
        "TS2_provider_supplemental_summary_information": null,
        "claim_level_loop": []
      }
    ],
    "summary": {
      "PLB_provider_adjustments": [],
      "SE_transaction_set_trailer": {
        "SE01_number_of_included_segments": 33,
        "SE02_transaction_set_control_number": "10060875"
      }
    }
  }
}
```
