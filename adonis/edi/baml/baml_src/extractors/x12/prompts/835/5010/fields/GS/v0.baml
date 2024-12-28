class X12_835_5010_GS_V0 {
    GS01_functional_identifier_code string @description(#"
        Example:
        ---        
        * (GS*HP*ABCD*ABCD*20190827*12345678*12345678*X*005010X221A1~, Functional Identifier Code)
        ---        
    "#)

    GS02_application_sender_code string @description(#"
        Example:
        ---        
        (GS*HP*ABCD*ABCD*20190827*12345678*12345678*X*005010X221A1~, Application Sender's Code)
        ---        
    "#)

    GS03_application_receiver_code string @description(#"
        Example:
        ---        
        * (GS*HP*ABCD*ABCD*20190827*12345678*12345678*X*005010X221A1~, Application Receiver's Code)
        ---        
    "#)

    GS04_date string @description(#"
        Example:
        ---        
        * (GS*HP*ABCD*ABCD*20190827*12345678*12345678*X*005010X221A1~, Date)
        ---        
    "#)

    GS05_time string @description(#"
        Example:
        ---        
        * (GS*HP*ABCD*ABCD*20190827*12345678*12345678*X*005010X221A1~, Time)
        ---        
    "#)

    GS06_group_control_number string @description(#"
        Example:
        ---        
        * (GS*HP*ABCD*ABCD*20190827*12345678*12345678*X*005010X221A1~, Group Control Number)
        ---        
    "#)

    GS07_responsible_agency_code string @description(#"
        Example:
        ---        
        * (GS*HP*ABCD*ABCD*20190827*12345678*12345678*X*005010X221A1~, Responsible Agency Code)
        ---        
    "#)

    GS08_version_release_code string @description(#"
        Example:
        ---        
        * (GS*HP*ABCD*ABCD*20190827*12345678*12345678*X*005010X221A1~, Version Release Code)
        ---        
    "#)
}
