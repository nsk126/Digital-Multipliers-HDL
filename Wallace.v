module Wallace(a,b,op);
    
    input [3:0]a,b;    
    output [7:0]op;   
    wire [23:0]w;
    wire [3:0]a0b,a1b,a2b,a3b;

    //AND GATES
    assign a0b[0] = a[0] & b[0];
    assign a1b[0] = a[1] & b[0];
    assign a2b[0] = a[2] & b[0];
    assign a3b[0] = a[3] & b[0];    

    assign a0b[1] = a[0] & b[1];
    assign a1b[1] = a[1] & b[1];
    assign a2b[1] = a[2] & b[1];
    assign a3b[1] = a[3] & b[1];    

    assign a0b[2] = a[0] & b[2];
    assign a1b[2] = a[1] & b[2];
    assign a2b[2] = a[2] & b[2];
    assign a3b[2] = a[3] & b[2];    
    
    assign a0b[3] = a[0] & b[3];
    assign a1b[3] = a[1] & b[3];
    assign a2b[3] = a[2] & b[3];
    assign a3b[3] = a[3] & b[3];

    HA HA_a1(w[0],w[1],a0b[3],a1b[2]);
    HA HA_a2(w[2],w[3],a2b[2],a1b[3]);

    HA HA_a3(w[4],w[5],a0b[2],a1b[1]);
    FA FA_a1(w[6],w[7],a2b[1],a3b[0],w[0]);
    FA FA_a2(w[8],w[9],w[1],a3b[1],w[2]);
    FA FA_a3(w[10],w[11],w[3],a2b[3],a3b[2]);

    HA HA_a4(w[12],w[13],a0b[1],a1b[0]);
    FA FA_a4(w[14],w[15],a2b[0],w[4],w[13]);
    FA FA_a5(w[16],w[17],w[15],w[5],w[6]);
    FA FA_a6(w[18],w[19],w[17],w[7],w[8]);
    FA FA_a7(w[20],w[21],w[19],w[9],w[10]);
    FA FA_a8(w[22],w[23],w[21],w[11],a3b[3]);
    //output
    assign op[0] = a0b[0];
    assign op[1] = w[12];
    assign op[2] = w[14];
    assign op[3] = w[16];
    assign op[4] = w[18];
    assign op[5] = w[20];
    assign op[6] = w[22];
    assign op[7] = w[23];

endmodule

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