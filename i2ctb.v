module i2ctb();
wire i2c_scl;
wire [7:0]i2c_sda;
reg rw,ack,reset,clk,add;

i2c ic(i2c_scl,i2c_sda,reset,clk);
	
initial begin
clk=0;
$monitor($time ," %b=rw,%b=ack,%b=i2c_sda,%b=i2c_scl,%d=reset",rw,ack,i2c_sda,i2c_scl,reset);
forever
#20 clk=~clk;
#2000;
$finish;
end
initial begin
reset=1;#20;
reset=0;
rw=0;
ack=1;#20;
add=0;
end
endmodule
