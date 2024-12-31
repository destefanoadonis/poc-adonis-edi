class X12_835_5010_X221A1_Detail_2100_QTY_C001_V0 {
    C001_01_unit_or_basis_for_measurement_code string
    C001_02_exponent float?
    C001_03_multiplier float?
    C001_04_unit_or_basis_for_measurement_code string?
    C001_05_exponent float?
    C001_06_multiplier float?
    C001_07_unit_or_basis_for_measurement_code string?
    C001_08_exponent float?
    C001_09_multiplier float?
    C001_10_unit_or_basis_for_measurement_code string?
    C001_11_exponent float?
    C001_12_multiplier float?
    C001_13_unit_or_basis_for_measurement_code string?
    C001_14_exponent float?
    C001_15_multiplier float?
}

class X12_835_5010_X221A1_Detail_2100_QTY_V0 {  
    QTY01_quantity_qualifier string
    QTY02_quantity float?
    QTY03_composite_unit_of_measure X12_835_5010_X221A1_Detail_2100_QTY_C001_V0?
    QTY04_free_form_information string?
}
