
module Dadda_tb;
  
  reg[3:0] a,b;
  wire[7:0] op;
  Dadda uut(
    .a(a),
    .b(b),
    .op(op)
  );
  
  initial begin
    
    /*a = 4'd15;
    b = 4'd14;
    $monitor ("%d, \t",op);
    #10*/
    
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
    $finish;
  end
endmodule