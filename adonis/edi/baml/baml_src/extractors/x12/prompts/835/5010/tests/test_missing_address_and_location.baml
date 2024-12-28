test Test_X12_835_5010_MissingAddressAndLocation {
  functions [X12Extractor]
  args {
    params {
        release 5010
        transaction_set_id 835
        data #"
          ISA*00*          *00*          *ZZ*SENDERID       *ZZ*RECEIVERID     *230101*1200*^*00501*000000003*0*P*>~
          GS*HP*SENDERID*RECEIVERID*20230101*1200*3*X*005010X221A1~
          ST*835*0003~
          BPR*I*100.00*C*CHK************20230101~
          TRN*1*123456789*987654321~
          REF*TJ*PROVIDERID~
          N1*PE*PROVIDER NAME*XX*987654321~
          LX*1~
          CLP*CLAIM456*2*200.00*150.00*50.00**~
          NM1*QC*1*SMITH*JANE****MI*123456789~
          SVC*HC>99214*200.00*150.00~
          CAS*PR*1*50.00~
          DTM*472*20230101~
          SE*12*0003~
          GE*1*3~
          IEA*1*000000003~
        "#
    }
  }
}
