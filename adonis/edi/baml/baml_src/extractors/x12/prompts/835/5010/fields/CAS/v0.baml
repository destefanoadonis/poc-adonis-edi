class X12_835_5010_CAS_V0 {
    CAS01_adjustment_group_code string @description(#"
        Example:
        ---        
        * (CAS*CO*45*5**B4*2~, CO)
        ---        
    "#)

    CAS02_adjustment_reason_code string @description(#"
        Example:
        ---        
        * (CAS*CO*45*5**B4*2~, 45)
        ---        
    "#)

    CAS03_adjustment_amount string @description(#"
        Example:
        ---        
        * (CAS*CO*45*5**B4*2~, 5)
        ---        
    "#)

    CAS04_quantity string? @description(#"
        Example:
        ---        
        * (CAS*CO*45*5*2~, 2)
        ---        
    "#)

    CAS05_additional_reason_code string? @description(#"
        Example:
        ---        
        * (CAS*CO*45*5**B4*2~, B4)
        ---        
    "#)

    CAS06_additional_adjustment_amount string? @description(#"
        Example:
        ---        
        * (CAS*CO*45*5**B4*2~, 2)
        ---        
    "#)
}
