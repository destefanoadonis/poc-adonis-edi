test Test_X12_835_5010_MissingMonetaryAmounts {
  functions [X12Extractor]
  args {
    params {
        x12_release 5010
        transaction_set_id 835
        x12_data #"
          ISA*00*          *00*          *ZZ*SENDERID       *ZZ*RECEIVERID     *230101*1200*^*00501*000000002*0*P*>~
          GS*HP*SENDERID*RECEIVERID*20230101*1200*2*X*005010X221A1~
          ST*835*0002~
          BPR*I*200.00*C*ACH************20230101~
          TRN*1*987654321*123456789~
          REF*EV*FACILITYID~
          N1*PR*PAYER NAME*FI*123456789~
          N3*123 MAIN STREET~
          N4*ANYTOWN*CA*12345~
          LX*1~
          CLP*CLAIM123*1*100.00*80.00*20.00**~
          NM1*QC*1*DOE*JOHN****MI*987654321~
          SVC*HC>99213*100.00*80.00~
          CAS*CO*45*20.00~
          DTM*472*20221231~
          SE*13*0002~
          GE*1*2~
          IEA*1*000000002~
        "#
    }
  }
}
