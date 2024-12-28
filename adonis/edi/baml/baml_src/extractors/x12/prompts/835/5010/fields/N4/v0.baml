class X12_835_5010_N4_V0 {
    N401_city_name string @description(#"
        Example:
        ---        
        * (N4*ANYCITY*OH*45209~, ANYCITY)
        ---
    "#)

    N402_state_or_province_code string? @description(#"
        Example:
        ---        
        * (N4*ANYCITY*OH*45209~, OH)
        ---        
    "#)

    N403_postal_code string? @description(#"
        Example:
        ---        
        * (N4*ANYCITY*OH*45209~, 45209)
        ---        
    "#)

    N404_country_code string? @description(#"
        Example:
        ---        
        * (N4*ANYCITY*OH*45209*US~, US)
        ---        
    "#)

    N405_location_qualifier string? @description(#"
        Example:
        ---        
        * (N4*ANYCITY*OH*45209*US*BR~, BR)
        ---        
    "#)

    N406_location_identifier string? @description(#"
        Example:
        ---        
        * (N4*ANYCITY*OH*45209*US*BR*LOC123~, LOC123)
        ---        
    "#)
}
