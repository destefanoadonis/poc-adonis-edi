class X12_835_5010_DTM_V0 {
    DTM01_date_time_qualifier string @description(#"
        Example:
        ---        
        * (DTM*472*20230515~, 472)
        * (DTM*573*20230515*1300~, 573)
        ---        
    "#)
    
    DTM02_date string @description(#"
        Example:
        ---        
        * (DTM*472*20230515~, 20230515)
        * (DTM*573*20230515*1300~, 20230515)
        ---        
    "#)
    
    DTM03_time string? @description(#"
        Example:
        ---        
        * (DTM*573*20230515*1300~, 1300)
        ---        
    "#)
}
