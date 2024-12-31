class X12_835_5010_X221A1_Detail_2100_2110_SVC_C003_V0 {
    C003_01_product_service_id_qualifier string
    C003_02_product_service_id string
    C003_03_procedure_modifier string?
    C003_04_procedure_modifier string?
    C003_05_procedure_modifier string?
    C003_06_procedure_modifier string?
    C003_07_description string?
    C003_08_product_service_id string?
}

class X12_835_5010_X221A1_Detail_2100_2110_SVC_V0 {    
    SVC01_composite_medical_procedure_identifier X12_835_5010_X221A1_Detail_2100_2110_SVC_C003_V0
    SVC02_submitted_service_charge float
    SVC03_paid_service_amount float?
    SVC04_revenue_code string?
    SVC05_paid_units_of_service float?
    SVC06_composite_medical_procedure_identifier X12_835_5010_X221A1_Detail_2100_2110_SVC_C003_V0?
    SVC07_original_submitted_units_of_service float?
}
