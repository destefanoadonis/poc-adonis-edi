class X12_835_5010_PER_V0 {
    PER01_contact_function_code string @description(#"
        Example:
        ---
        * (PER*CX*John Doe*TE*8661112222~, Contact Function Code)
        ---        
    "#)
    
    PER02_contact_name string? @description(#"
        Example:
        ---        
        * (PER*CX*John Doe*TE*8661112222~, John Doe)
        ---
    "#)
    
    PER03_communication_number_qualifier string? @description(#"
        Example:
        ---
        * (PER*CX*John Doe*TE*8661112222~, Communication Number Qualifier)
        ---
    "#)
    
    PER04_communication_number string? @description(#"
        Example:
        ---
        * (PER*CX*John Doe*TE*8661112222~, 8661112222)
        ---        
    "#)
    
    PER05_communication_number_qualifier string? @description(#"
        Example:
        ---
        * (PER*BL*EDI*TE*8002223333*EM*EDI.SUPPORT@ANYPAYER.COM~, Communication Number Qualifier)
        ---
    "#)
    
    PER06_communication_number string? @description(#"
        Example:
        ---        
        * (PER*BL*EDI*TE*8002223333*EM*EDI.SUPPORT@ANYPAYER.COM~, 8002223333)
        ---        
    "#)
}
