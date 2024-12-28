class X12_835_5010_BPR_V0 {
    BPR01_transaction_handling_code string @description(#"
        Example:
        ---        
        * (BPR*I*1500.50*C*ACH*CTX*123456789*987654321*111222333*444555666*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, I)
        ---        
    "#)

    BPR02_monetary_amount float @description(#"
        Example:
        ---        
        * (BPR*I*1500.50*C*ACH*CTX*123456789*987654321*111222333*444555666*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, 1500.50)
        ---        
    "#)

    BPR03_credit_debit_flag_code string @description(#"
        Example:
        ---        
        * (BPR*I*1500.50*C*ACH*CTX*123456789*987654321*111222333*444555666*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, C)
        ---        
    "#)

    BPR04_payment_method_code string @description(#"
        Example:
        ---        
        * (BPR*I*1500.50*C*ACH*CTX*123456789*987654321*111222333*444555666*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, ACH)
        ---        
    "#)

    BPR05_payment_format_code string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*123456789*987654321*111222333*444555666*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, CTX)
        ---        
    "#)

    BPR06_depository_financial_institution_dfi_identification_number_qualifier string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*987654321*111222333*444555666*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, 01)
        ---        
    "#)

    BPR07_sender_dfi_identifier string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*987654321*111222333*444555666*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, 123456789)
        ---        
    "#)

    BPR08_account_number_qualifier string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, DA)
        ---        
    "#)

    BPR09_sender_bank_account_number_09 string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, 987654321)
        ---        
    "#)

    BPR10_payer_identifier string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, PR)
        ---        
    "#)

    BPR11_originating_company_supplemental_code string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, PPD)
        ---
    "#)      
    BPR12_originating_company_payment_type_code string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, XYZ123)
        ---        
    "#)

    BPR13_originating_company_payment_type_code string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, ABC789)
        ---        
    "#)

    BPR14_originating_company_payment_type_code string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, DEF456)
        ---        
    "#)

    BPR15_originating_company_payment_type_code string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, GHI012)
        ---        
    "#)

    BPR16_originating_company_payment_type_code string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, JKL345)
        ---        
    "#)

    BPR17_originating_company_payment_type_code string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, MNO678)
        ---        
    "#)

    BPR18_originating_company_payment_type_code string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, PQR901)
        ---        
    "#)

    BPR19_originating_company_payment_type_code string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, STU234)
        ---        
    "#)

    BPR20_payment_date string? @description(#"
        Example:
        ---
        * (BPR*I*1500.50*C*ACH*CTX*01*123456789*DA*987654321*PR*PPD*XYZ123*ABC789*DEF456*GHI012*JKL345*MNO678*PQR901*STU234*20230515~, 20230515)
        ---        
    "#)
}
