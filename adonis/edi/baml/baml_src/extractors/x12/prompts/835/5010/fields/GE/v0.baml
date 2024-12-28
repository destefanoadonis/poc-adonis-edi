class X12_835_5010_GE_V0 {
    GE01_number_of_transaction_sets_included string @description(#"
        Example:
        ---        
        * (GE*1*12345678~, Number of Transaction Sets Included)
        ---        
    "#)

    GE02_group_control_number string @description(#"
        Example:
        ---        
        * (GE*1*12345678~, Group Control Number)
        ---        
    "#)
}
