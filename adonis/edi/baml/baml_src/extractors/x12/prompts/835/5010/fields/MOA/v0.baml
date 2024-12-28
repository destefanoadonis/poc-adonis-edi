
class X12_835_5010_MOA_V0 {
    MOA01_monetary_amount_qualifier_code string @description(#"
        Example:
        ---        
        * (MOA*N25*100~, N25)
        ---        
    "#)

    MOA02_monetary_amount string @description(#"
        Example:
        ---        
        * (MOA*N25*100~, 100)
        ---        
    "#)

    MOA03_reference_identification string? @description(#"
        Example:
        ---        
        * (MOA*N25*100*REF123~, REF123)
        ---        
    "#)
}
