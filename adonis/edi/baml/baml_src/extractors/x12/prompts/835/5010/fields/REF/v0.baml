class X12_835_5010_REF_V0 {
    REF01_reference_identification_qualifier string @description(#"
        Example:
        ---
        * (REF*6R*12345~, 6R)
        * (REF*EV*987654321~, EV)
        * (REF*ZZ*CustomID123~, ZZ)
        ---
    "#)
    
    REF02_reference_identification string @description(#"
        Example:
        ---
        * (REF*6R*12345~, 12345)
        * (REF*EV*987654321~, 987654321)
        * (REF*ZZ*CustomID123~, CustomID123)
        ---
    "#)
    
    REF03_description string? @description(#"
        Example:
        ---
        * (REF*6R*12345*Provider's Internal ID~, Provider's Internal ID)
        * (REF*EV*987654321*Employer's Tax ID~, Employer's Tax ID)
        * (REF*ZZ*CustomID123*Special Reference~, Special Reference)
        ---
    "#)
}
