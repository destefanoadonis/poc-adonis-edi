test Test_X12_835_5010_MinimalTransaction {
  functions [X12Extractor]
  args {
    params {
        release 5010
        transaction_set_id 835
        data #"
          ISA*00*          *00*          *ZZ*SENDERID       *ZZ*RECEIVERID     *230101*1200*^*00501*000000001*0*P*>~
          GS*HP*SENDERID*RECEIVERID*20230101*1200*1*X*005010X221A1~
          ST*835*0001~
          BPR*I*1500.50*C*CHK************20230101~
          TRN*1*1234567890*987654321~
          SE*5*0001~
          GE*1*1~
          IEA*1*000000001~
        "#
    }
  }
}
