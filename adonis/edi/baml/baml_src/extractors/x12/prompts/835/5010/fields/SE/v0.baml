class X12_835_5010_SE_V0 {
    SE01_segment_count string @description(#"
        Example:
        ---
        * (SE*31*10060875~, 31)
        ---        
    "#)

    SE02_transaction_set_control_number string @description(#"
        Example:
        ---        
        * (SE*31*10060875~, 10060875)
        ---
    "#)
}
