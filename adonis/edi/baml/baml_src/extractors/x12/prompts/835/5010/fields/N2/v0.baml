class X12_835_5010_N2_V0 {
    N201_name string @description(#"
        Example:
        ---        
        * (N2*SECONDARY NAME~, SECONDARY NAME)
        ---        
    "#)

    N202_name string? @description(#"
        Example:
        ---        
        * (N2*SECONDARY NAME*CONTINUATION~, CONTINUATION)
        ---        
    "#)
}
