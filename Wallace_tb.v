module Wallce_tb;
  
  reg[3:0] a,b;
  wire[7:0] op;
  integer i,j;
  Wallace uut(
    .a(a),
    .b(b),
    .op(op)
  );
  
  initial begin
    
    for (i=0 ;i<16 ;i=i+1) begin
      a = i;
      for(j=0 ;j<16 ;j=j+1)begin
        b = j;
        #10;
        $display("%d x %d = op = %d",a,b,op);
      end 
    end

  end
endmodule