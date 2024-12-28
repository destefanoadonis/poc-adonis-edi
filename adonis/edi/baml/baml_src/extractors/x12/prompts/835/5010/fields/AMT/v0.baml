class X12_835_5010_AMT_V0 {
    AMT01_amount_qualifier_code string @description(#"
        Example:
        ---        
        * (AMT*AU*25~, AU)
    "#)

    AMT02_monetary_amount string @description(#"
        Example:
        ---
        * (AMT*AU*25~, 25)
    "#)

    AMT03_credit_debit_flag_code string? @description(#"
        Example:
        ---
        * (AMT*AU*25*C~, C)
        ---
    "#)
}
