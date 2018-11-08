// the test has been done useing following website (Compile and then Execute)
// https://www.tutorialspoint.com/compile_verilog_online.php

module TESTMURMUR
(
);

  reg [31:0] seed;
  reg [31:0] chunk;
  wire [31:0] hash;
  
  //reg [31:0] fbytes;
  //wire [31:0] rolled15;

  murmur_4bytes murmur ( .seed(seed), .chunk(chunk), .hash(hash));
  //rol13 roller15 ( .fourb_in(fbytes), .fourb_out(rolled15));
  
  initial 
    begin
      $dumpfile("dump.vcd"); $dumpvars;
      chunk = 'hBAADF00D;
      seed = 'hF00DBAAD;
      # 1000
      $display("= MURMUR3 ===================");
      $display("seed = 0x%H, chunk = 0x%H; hash = 0x%H", seed, chunk, hash);
  
      //fbytes = 'hC0000000;
      //# 1000
      //$display("= ROLLER 15 =================");
      //$display("seed = 0x%B", rolled15);
      //$finish ;
    end
    
endmodule

