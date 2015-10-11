`timescale 1ns/1ps  // simmulation happen in picosecond time base ,
                    // we have up scaled it it to ns 
                    // when we say #5 it will mean 5 ns , and when we say #1000 it will 1000ns, 1us

module counter_testbench();
  
  reg clock_tb,reset;
  wire [32:0]out_tb;  
  counter t0(reset,clock_tb,out_tb);  //create an instance of the counter module which is under test 
  initial 
  begin 
  	$monitor("%g,out_tb=%d,reset=%b",$time,out_tb,reset); // these values will be visible in the transcript window at the bottom
  clock_tb=0;
  reset=1;  //enable the counter module ,reset is active low input
  #100      // right here we should have (200/5)/2 = 20 in the cout output  value
  reset=0; //reset the timer module for a while
  #300
  reset=1;  
  #1000
  $stop(); // rigth here we will have (1000/5)2=100 in the count output
end 
   
   always #5 clock_tb=~clock_tb;  // genrate clock by toggling Clock line ever 5 unit of time
   
endmodule 
