# MurMur #3
murmurhash in verilog exercise 

### 0.0. The algorithm

[StackOverflow](https://stackoverflow.com/questions/1057036/please-explain-murmur-hash)


![BAAD F00D](https://i.stack.imgur.com/7Q4SD.png)

[Wikipedia algo](https://en.wikipedia.org/wiki/MurmurHash)



### 0.1. The online playground
Is at the EDA-Playground: [https://www.edaplayground.com/x/3Bwa](https://www.edaplayground.com/x/3Bwa).

### 0.2. building SV file:
    $ iverilog '-Wall' design.sv testbench.sv
    design.sv:9: warning: var/net declaration of chunk inherits dimensions from port declaration.
    design.sv:10: warning: var/net declaration of hash inherits dimensions from port declaration.
    design.sv:8: warning: var/net declaration of seed inherits dimensions from port declaration.
    
    $ ./a.out 
    VCD info: dumpfile dump.vcd opened for output.
    = MURMUR3 ===================
    seed = 0xf00dbaad, chunk = 0xbaadf00d; hash = 0x735529c0

