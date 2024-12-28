class X12_835_5010_CLP_V0 {
    CLP01_patient_control_number string @description(#"
        Example:
        ---        
        * (CLP*PCN*1*25*8*10*12*CLAIMNUMB*11*1~, PCN)
        ---        
    "#)

    CLP02_claim_status_code string @description(#"
        Example:
        ---        
        * (CLP*PCN*1*25*8*10*12*CLAIMNUMB*11*1~, 1)
        ---        
    "#)

    CLP03_total_claim_charge_amount string @description(#"
        Example:
        ---        
        * (CLP*PCN*1*25*8*10*12*CLAIMNUMB*11*1~, 25)
        ---        
    "#)

    CLP04_total_claim_payment_amount string @description(#"
        Example:
        ---        
        * (CLP*PCN*1*25*8*10*12*CLAIMNUMB*11*1~, 8)
        ---        
    "#)

    CLP05_patient_responsibility_amount string @description(#"
        Example:
        ---        
        (CLP*PCN*1*25*8*10*12*CLAIMNUMB*11*1~, 10)
        ---        
    "#)

    CLP06_total_claim_disallowed_amount string? @description(#"
        Example:
        ---        
        * (CLP*PCN*1*25*8*10*12*CLAIMNUMB*11*1*5~, 5)
        ---        
    "#)

    CLP07_claim_identifier string @description(#"
        Example:
        ---        
        * (CLP*PCN*1*25*8*10*12*CLAIMNUMB*11*1~, CLAIMNUMB)
        ---        
    "#)

    CLP08_provider_adjustment_amount string? @description(#"
        Example:
        ---        
        * (CLP*PCN*1*25*8*10*12*CLAIMNUMB*11*1*20~, 20)
        ---
    "#)

    CLP09_claim_frequency_code string @description(#"
        Example:
        ---        
        * (CLP*PCN*1*25*8*12*CLAIMNUMB*11*1~, 1)
        ---        
    "#)
}
