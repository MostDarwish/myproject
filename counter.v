module conter (
    input nrst,
    input clk,
    output reg [3:0] count
);

always@(posedge clk or negedge nrst)begin
    if(~nrst) count <= 0;
    else count <= count + 1'b1;
end

endmodule