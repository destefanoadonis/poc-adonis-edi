class X12_835_5010_X221A1_Heading_REF_V0 {  
    REF01_reference_id_qualifier string
    REF02_reference_id string?
    REF03_description string?
    REF04_composite_reference_identifier X12_835_5010_X221A1_Heading_REF_C040_V0?
}

class X12_835_5010_X221A1_Heading_REF_C040_V0 {
    C040_01_reference_id_qualifier string
    C040_02_reference_id string
    C040_03_secondary_reference_id_qualifier string?
    C040_04_secondary_reference_id string?
    C040_05_tertiary_reference_id_qualifier string?
    C040_06_tertiary_reference_id string?
}
