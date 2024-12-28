class X12_835_5010_N3_V0 {
    N301_address_information string @description(#"
        Example:
        ---        
        * (N3*1 WALK THIS WAY~, 1 WALK THIS WAY)
        ---        
    "#)

    N302_address_information string? @description(#"
        Example:
        ---        
        * (N3*1 WALK THIS WAY*SUITE 100~, SUITE 100)
        ---        
    "#)
}
