class X12_835_5010_NM1_V0 {
    NM101_entity_identifier_code string @description(#"
        Example:
        ---        
        * (NM1*QC*1*LAST*FIRST*J***MI*123456789~, QC)
        ---        
    "#)

    NM102_entity_type_qualifier string @description(#"
        Example:
        ---        
        * (NM1*QC*1*LAST*FIRST*J***MI*123456789~, 1)
        ---        
    "#)

    NM103_last_name_or_organization_name string @description(#"
        Example:
        ---        
        * (NM1*QC*1*LAST*FIRST*J***MI*123456789~, LAST)
        ---        
    "#)

    NM104_first_name string? @description(#"
        Example:
        ---        
        * (NM1*QC*1*LAST*FIRST*J***MI*123456789~, FIRST)
        ---        
    "#)

    NM105_middle_initial string? @description(#"
        Example:
        ---        
        * (NM1*QC*1*LAST*FIRST*J***MI*123456789~, J)
        ---        
    "#)

    NM106_name_prefix string? @description(#"
        Example:
        ---        
        * (NM1*QC*1*LAST*FIRST*J***MI*123456789~, )
        ---        
    "#)

    NM107_name_suffix string? @description(#"
        Example:
        ---        
        * (NM1*QC*1*LAST*FIRST*J***MI*123456789~, )
        ---        
    "#)

    NM108_identification_code_qualifier string @description(#"
        Example:
        ---        
        * (NM1*QC*1*LAST*FIRST*J***MI*123456789~, MI)
        ---        
    "#)

    NM109_identification_code string @description(#"
        Example:
        ---       
        * (NM1*QC*1*LAST*FIRST*J***MI*123456789~, 123456789)
        ---
    "#)
}
