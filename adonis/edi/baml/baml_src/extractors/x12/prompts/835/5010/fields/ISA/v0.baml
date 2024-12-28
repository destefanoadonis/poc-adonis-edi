class X12_835_5010_ISA_V0 {
    ISA01_authorization_information_qualifier string @description(#"
        Example: 
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, 00)
        ---        
    "#)
    
    ISA02_authorization_information string? @description(#"
        Example: 
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~,          )
        * (ISA*01*AUTHINFO01*00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, AUTHINFO01)
        ---        
    "#)
    
    ISA03_security_information_qualifier string @description(#"
        Example: 
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, 00)
        ---
    "#)
    
    ISA04_security_information string? @description(#"
        Example: 
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~,          )
        * (ISA*00*          *01*SECINFO01*ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, SECINFO01)
        ---        
    "#)
    
    ISA05_interchange_id_qualifier_sender string @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, ZZ)
        ---        
    "#)
    
    ISA06_interchange_sender_id string? @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, ABCPAYER       )
        ---        
    "#)
    
    ISA07_interchange_id_qualifier_receiver string @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, ZZ)
        ---        
    "#)
    
    ISA08_interchange_receiver_id string @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, RECEIVERID     )
        ---        
    "#)
    
    ISA09_interchange_date string @description(#"
        Example:
        ---
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, 190827)
        ---        
    "#)
    
    ISA10_interchange_time string @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, 0212)
        ---        
    "#)
    
    ISA11_repetition_separator string @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, >)
        ---
    "#)
    
    ISA12_interchange_control_version_number string @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, 00501)
        ---        
    "#)
    
    ISA13_interchange_control_number string @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, 191511902)
        ---        
    "#)
    
    ISA14_acknowledgment_requested string @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, 0)
        ---        
    "#)
    
    ISA15_usage_indicator string @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, P)
        ---        
    "#)
    
    ISA16_component_element_separator string @description(#"
        Example:
        ---        
        * (ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*RECEIVERID     *190827*0212*^*00501*191511902*0*P*>~, >)
        ---        
    "#)
}
