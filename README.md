# MurMur #3
murmurhash in verilog exercise 

### 1.0. building SV file:
    $ iverilog '-Wall' design.sv testbench.sv
    design.sv:9: warning: var/net declaration of chunk inherits dimensions from port declaration.
    design.sv:10: warning: var/net declaration of hash inherits dimensions from port declaration.
    design.sv:8: warning: var/net declaration of seed inherits dimensions from port declaration.
    
    $ ./a.out 
    VCD info: dumpfile dump.vcd opened for output.
    = MURMUR3 ===================
    seed = 0xf00dbaad, chunk = 0xbaadf00d; hash = 0x735529c0

