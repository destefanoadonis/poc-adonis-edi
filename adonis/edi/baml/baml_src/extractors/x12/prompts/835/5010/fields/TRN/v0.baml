class X12_835_5010_TRN_V0 {
    TNR01_trace_type_code string @description(#"
        Example:
        ---        
        * (TRN*1*1234567890*ABC123*XYZ789~, 1)
        * (TRN*2*0987654321*DEF456*UVW012~, 2)
        * (TRN*ZZ*CustomTrace123*SupplementalCode456~, ZZ)
        ---
    "#)
    
    TNR03_check_or_eft_trace_number string @description(#"
        Example:
        ---        
        * (TRN*1*1234567890*ABC123*XYZ789~, 1234567890)
        * (TRN*2*0987654321*DEF456*UVW012~, 0987654321)
        ---        
    "#)
    
    TNR03_payer_identifier string? @description(#"
        Example:
        ---        
        * (TRN*1*1234567890*ABC123*XYZ789~, ABC123)
        * (TRN*2*0987654321*DEF456*UVW012~, DEF456)
        ---
    "#)
    
    TRN04_originating_company_supplemental_code string? @description(#"
        Example:
        * (TRN*1*1234567890*ABC123*XYZ789~, XYZ789)
        * (TRN*ZZ*CustomTrace123*SupplementalCode456~, SupplementalCode456)
    "#)
}
