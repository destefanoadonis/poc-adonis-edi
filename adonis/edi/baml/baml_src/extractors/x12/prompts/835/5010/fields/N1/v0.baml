class X12_835_5010_N1_V0 {
    N101_entity_identifier_code string @description(#"
        Example:
        ---        
        * (N1*PR*ANY PLAN USA*FI*123456789~, PR)
        ---        
    "#)

    N102_name string? @description(#"
        Example:
        ---        
        * (N1*PR*ANY PLAN USA*FI*123456789~, ANY PLAN USA)
        ---        
    "#)

    N103_identification_code_qualifier string? @description(#"
        Example:
        ---        
        * (N1*PR*ANY PLAN USA*FI*123456789~, FI)
        ---        
    "#)

    N104_identification_code string? @description(#"
        Example:
        ---        
        * (N1*PR*ANY PLAN USA*FI*123456789~, 123456789)
        ---        
    "#)
}
