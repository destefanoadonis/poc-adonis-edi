class X12_835_5010_ST_V0 {
    ST01_transaction_set_identifier_code string @description(#"
        Example:
        ---        
        * (ST*835*10060875~, 835)
        ---        
    "#)
    ST02_transaction_set_control_number string @description(#"
        Example:
        ---
        * (ST*835*10060875~, 10060875)
        ---        
    "#) 
}
