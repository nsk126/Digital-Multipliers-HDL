
module Dadda_tb;
  
  reg[3:0] a,b;
  wire[7:0] op;
  Dadda uut(
    .a(a),
    .b(b),
    .op(op)
  );
  
  initial begin
    
    a = 4'd15;
    b = 4'd14;
    //$monitor ("%d, \t",op);
    #10;
	a = 4'd10;
    b = 4'd08;
    //$monitor ("%d, \t",op);
    #10;
a = 4'd3;
    b = 4'd09;
    //$monitor ("%d, \t",op);
    #10;
a = 4'd6;
    b = 4'd15;
    //$monitor ("%d, \t",op);
    #10;
a = 4'd10;
    b = 4'd13;
    //$monitor ("%d, \t",op);
    #10;
a = 4'd12;
    b = 4'd9;
    //$monitor ("%d, \t",op);
    #10;
	
	
    /*for (i = 0;i<16 ;i = i+1 ) 
      begin
      a = i;
      for (j = 0;j<16 ;j = j+1 ) 
        begin
        b = j;
        $monitor ("%d, \t",op);
        #10
        end
      end*/
    
  end
endmodule
