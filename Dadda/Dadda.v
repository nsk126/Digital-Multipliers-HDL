module Dadda(
    op,
    a,
    b
);
  input[3:0] a,b;
  output[7:0] op;

  wire[3:0] ppa0,ppa1,ppa2,ppa3;
    wire s1w4_fas,s1w4_fac;
    wire s1w8_fas,s1w8_fac;
    wire s1w16_fas,s1w16_fac;
    wire s2w8_fas,s2w8_fac;
    wire s2w16_has,s2w16_hac;
    wire s2w32_fas,s2w32_fac;
    wire s3w2_hac;
    wire s3w4_hac;
    wire s3w8_hac;
    wire s3w16_fac;
    wire s3w32_fac;

    assign ppa0[0] = a[0] & b[0];
    assign ppa1[0] = a[1] & b[0];
    assign ppa2[0] = a[2] & b[0];
    assign ppa3[0] = a[3] & b[0];    

    assign ppa0[1] = a[0] & b[1];
    assign ppa1[1] = a[1] & b[1];
    assign ppa2[1] = a[2] & b[1];
    assign ppa3[1] = a[3] & b[1];    

    assign ppa0[2] = a[0] & b[2];
    assign ppa1[2] = a[1] & b[2];
    assign ppa2[2] = a[2] & b[2];
    assign ppa3[2] = a[3] & b[2];    
    
    assign ppa0[3] = a[0] & b[3];
    assign ppa1[3] = a[1] & b[3];
    assign ppa2[3] = a[2] & b[3];
    assign ppa3[3] = a[3] & b[3];


    //stage1    
    // w1 a0b0                      pass through
    // w2 a1b0 a0b1                 pass through
    // w4 a2b0 a1b1 a0b2            FA
    FA FA_stage1_w4(s1w4_fas,s1w4_fac,ppa2[0],ppa1[1],ppa0[2]);
    // w8 a3b0 a2b1 a1b2            FA              a0b3 pass through 
    FA FA_stage1_w8(s1w8_fas,s1w8_fac,ppa3[0],ppa2[1],ppa1[2]);
    // w16 a3b1 a2b2 a1b3           FA
    FA FA_stage1_w16(s1w16_fas,s1w16_fac,ppa3[1],ppa2[2],ppa1[3]);
    // w32 a3b2 a2b3                pass through
    // w64 a3b3                     pass through
    
    //stage2
    // w1 a0b0                      pass through
    // w2 a1b0 a0b1                 pass through
    // w4 s1w4_fas                  pass through
    // w8 s1w4_fac s1w8_fas a0b3    FA
    FA FA_stage2_w8(s2w8_fas,s2w8_fac,s1w4_fac,s1w8_fas,ppa0[3]);
    // w16 s1w8_fac s1w16_fas       HA
    HA HA_stage2_w16(s2w16_has,s2w16_hac,s1w8_fac,s1w16_fas);
    // w32 
    FA Fa_stage2_w32(s2w32_fas,s2w32_fac,s1w16_fac,ppa3[2],ppa2[3]);
    // w64                          pass through

    //stage3
    assign op[0] = ppa0[0];

    HA HA_stage3_w2(op[1],s3w2_hac,ppa1[0],ppa0[1]);

    HA HA_stage3_w4(op[2],s3w4_hac,s1w4_fas,s3w2_hac);

    HA HA_stage3_w8(op[3],s3w8_hac,s2w8_fas,s3w4_hac);

    FA FA_stage3_w16(op[4],s3w16_fac,s2w8_fac,s2w16_has,s3w8_hac);

    FA FA_stage3_w32(op[5],s3w32_fac,s2w16_hac,s2w32_fas,s3w16_fac);

    FA FA_stage3_w64(op[6],op[7],s2w32_fac,ppa3[3],s3w32_fac);
endmodule // Dadda






module HA(
    sum,
    carryo,
    a,
    b
);
    input a,b;
    output sum,carryo;

    xor uxor1(sum,a,b);
    and uand1(carryo,a,b);

endmodule // HALF-ADDER

module FA(
    sum,
    carryo,
    a,
    b,
    c
);
    input a,b,c;
    output sum,carryo;
    
    wire wire_xor1_op,wire_and1_op,wire_and2_op;

    xor uxor1(wire_xor1_op,a,b);

    and uand1(wire_and1_op,wire_xor1_op,c);
    and uand2(wire_and2_op,a,b);

    xor uxor2(sum,wire_xor1_op,c);
    xor uxor3(carryo,wire_and1_op,wire_and2_op);



endmodule // FULL-ADDER