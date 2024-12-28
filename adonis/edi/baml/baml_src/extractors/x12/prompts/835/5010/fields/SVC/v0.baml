
class X12_835_5010_SVC_V0 {
    SVC01_composite_medical_procedure_identifier string @description(#"
        Example:
        ---
        * (SVC*HC>99214*25*8~, HC>99214)        
        ---
    "#)

    SVC02_line_item_charge_amount string @description(#"
        Example:
        ---        
        * (SVC*HC>99214*25*8~, 25)
        ---        
    "#)

    SVC03_line_item_payment_amount string @description(#"
        Example:
        ---        
        * (SVC*HC>99214*25*8~, 8)
        ---        
    "#)

    SVC04_service_quantity string? @description(#"
        Example:
        ---        
        * (SVC*HC>99214*25*8*2~, 2)
        ---        
    "#)

    SVC05_composite_medical_procedure_identifier string? @description(#"
        Example:
        ---        
        * (SVC*HC>99214*25*8*2*HC>12345~, HC>12345)
        ---        
    "#)
}
