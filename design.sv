module murmur_4bytes
(
  seed,
  chunk,
  hash    
);

  input  [31:0] seed;
  input  [31:0] chunk;
  output [31:0] hash;  
  
  wire seed, chunk;
  wire hash;
	
  assign hash = murmurblock(seed, chunk);
  
  function [31:0] murmurblock;
    input [31:0] seed, chunk;
    reg [31:0] k, key;
    localparam [31:0] c1 = 'hcc9e2d51; 
  	localparam [31:0] c2 = 'h1b873593;
  	localparam [31:0] m = 5;
  	localparam [31:0] n = 'he6546b64;
  	begin
      k = chunk;
      k = k * c1;
  	  k = {k[16:0], k[31:17]}; // ROL15
  	  k = k * c2;
  		
  	  key = seed;
      key = key ^ k;
      key = {key[18:0], key[31:19]}; // ROL13
      murmurblock = key * m + n;
    end
  endfunction
  
endmodule

module rol13
  ( fourb_in,
    fourb_out
  );
  
  input [31:0] fourb_in;
  output [31:0] fourb_out;
  
  assign fourb_out[31:0] = {fourb_in[18:0], fourb_in[31:19]}; // ROL13
  
endmodule

module rol15
  ( fourb_in,
    fourb_out
  );
  
  input [31:0] fourb_in;
  output [31:0] fourb_out;
  
  assign fourb_out[31:0] = {fourb_in[16:0], fourb_in[31:17]};
  
endmodule
