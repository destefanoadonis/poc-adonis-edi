class X12_835_5010_X221A1_Extractor_Schema_V0 {
    heading X12_835_5010_X221A1_Heading @description(#"
        Example Input:
        ---
        ISA*00*          *00*          *ZZ*ABCPAYER       *ZZ*XYZPROVIDER     *210101*1200*^*00501*123456789*0*P*>~
        GS*HP*ABCD*XYZPROVIDER*20210101*1200*123456789*X*005010X221A1~
        ST*835*10012345~
        BPR*I*100.00*C*CHK************20210101~
        TRN*1*CK123456789*987654321~
        REF*EV*FAC~
        DTM*405*20210101~
        N1*PR*ANY PLAN USA~
        N3*123 MAIN STREET~
        N4*ANYCITY*OH*44100~
        PER*CX**TE*8005551212~
        PER*BL*EDI*TE*8005552222*EM*edi.support@abcpayer.com~
        N1*PE*XYZ PROVIDER*XX*1122334455~
        N3*2255 OAK STREET~
        N4*ANYTOWN*CA*90210~
        REF*TJ*987654321~
        ---
    "#)

    detail X12_835_5010_X221A1_Detail_Loop_V0[] @description(#"
        Example Input:
        ---
        LX*1~
        CLP*PATIENT123*1*250*200**MC*1234567890*11*1~
        NM1*QC*1*DOE*JOHN*N***MI*XYZ987654321~
        REF*1L*98765A~
        DTM*050*20210101~
        PER*CX*G CUSTOMER SERVICE DEPT*TE*8004074627~
        AMT*AU*150~
        SVC*HC:99213*150*80**1~
        DTM*472*20210101~
        CAS*CO*45*70~
        AMT*B6*80~
        SVC*HC:85003*100*0**1~
        DTM*472*20210101~
        CAS*CO*204*100~
        SVC*HC:36415*150*0**1~
        DTM*472*20210101~
        CAS*CO*97*150~
        ---
    "#)

    summary X12_835_5010_X221A1_Summary_V0  @description(#"
        Example Input:
        ---
        SE*33*10012345~
        GE*1*123456789~
        ---
    "#)
}

class X12_835_5010_X221A1_Extractor_Input_V0 {
    body string
}

class X12_835_5010_X221A1_Extractor_Output_V0 {
    data X12_835_5010_X221A1_Extractor_Schema_V0 @description(#"
        Example Input:
        ---
        ---
    "#)
}


function X12_835_5010_X221A1_Extractor(params: X12_835_5010_X221A1_Extractor_Input_V0) -> X12_835_5010_X221A1_Extractor_Output_V0 {
  client CustomAWS_Mistral_Large_2401_V1
  prompt #"
    You are an expert in X12 Electronic Data Interchange (EDI) with a specialization in the 835 X221A1 - Health Care Claim Payment/Advice transaction set. Your role is to analyze, parse, and transform raw X12 transaction data into structured data that complies with the provided JSON schema, while providing metadata explanations for decisions made during the extraction process.

    Responsibilities:
    1. Data Extraction:
    - Parse the provided raw X12 transaction data.
    - Transform the data into the specified JSON schema, ensuring compliance with the X12 HIPAA 5010 standards for 835 X221A1.

    2. Rules for Data Processing:
    - Trim all strings to remove leading and trailing whitespace. For example, `" hello "` becomes `"hello"`.
    - Replace any empty strings with `null`.
    - Any missing or invalid fields should also result in `null` values, unless explicitly required by the schema.

    3. Validation:
    - If the input X12 data is invalid, malformed, incomplete, or fails to provide the required elements based on the schema, return:
        ```json
        {
        "status": "failed",
        "reason": "Invalid or incomplete X12 data"
        }
        ```

    Extract this X12 transaction:
     ---
     {{ params.body }}
     ---

    
     {{ ctx.output_format }}
  "#
}
