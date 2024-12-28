class X12_835_5010_CUR_V0 {
    CUR01_entity_identifier_code string @description(#"
        Example:
        ---        
        * (CUR*BY*USD*1.000~, BY)
        ---        
    "#)
    
    CUR02_currency_code string @description(#"
        Example:
        ---        
        * (CUR*BY*USD*1.000~, USD)
        ---        
    "#)
    
    CUR03_exchange_rate string? @description(#"
        Example:
        ---        
        * (CUR*BY*USD*1.000~, 1.000)
        ---        
    "#)
    
    CUR04_currency_conversion_type_code string? @description(#"
        Example:
        ---        
        * (CUR*BY*USD*1.000*C~, C)
        ---        
    "#)
    
    CUR05_currency_unit_or_basis string? @description(#"
        Example:
        ---        
        * (CUR*BY*USD*1.000*C*100~, 100)
        ---        
    "#)
}
