test Test_X12_835_5010_X221A1_NonCompliantTransaction {
  functions [X12_835_5010_X221A1_Validator]
  args {
    params {
      body #"
        ISA*00*          *00*          *ZZ*INVALIDPAYER    *ZZ*ABCPAYER       *190827*0212*^*00501*123456789*0*P*>~
        GS*HP*INVALID*ABCD*20190827*12345678*12345678*X*005010X221A1~
        ST*835*123456789~
        BPR*I*80.00*C*CHK************20190816~
        TRN*1*INVALID CHECK NUMBER*1234567890~
        REF*INVALID*FAC~
        DTM*405*20190827~
        N1*PR*ANY PLAN USA~
        N3*1 WALK THIS WAY~
        N4*ANYCITY*OH*45209~
        PER*CX**TE*8661112222~
        N1*PE*PROVIDER~
        REF*TJ~
        LX*1~
        CLP*PATACCT*1*400*80**MC~
        NM1*QC*1*DOE*JOHN~
        REF*1L*12345F~
        SE*12*123456789~
        GE*1*12345678~
        IEA*1*123456789~
      "#
    }
  }
}
