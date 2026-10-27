module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output reg [7:0] memory
);
    reg wire0;
    reg wire1;
    reg wire2;
    reg wire3;
    
    wire [7:0]mem0;
    wire [7:0]mem1;
    wire [7:0]mem2;
    wire [7:0]mem3;
    
    byte_memory memory0(
        .data(data),
        .store(wire0),
        .memory(mem0)
    );   
    
    byte_memory memory1(
        .data(data),
        .store(wire1),
        .memory(mem1)
    );    
    
    byte_memory memory2(
        .data(data),
        .store(wire2),
        .memory(mem2)
    );    
    
    byte_memory memory3(
        .data(data),
        .store(wire3),
        .memory(mem3)
    );     
    
    always @(*) begin 
        case(addr)
            2'b00: {wire3, wire2, wire1, wire0} <= {1'b0, 1'b0, 1'b0, store}; 
            2'b01: {wire3, wire2, wire1, wire0} <= {1'b0, 1'b0, store, 1'b0};
            2'b10: {wire3, wire2, wire1, wire0} <= {1'b0, store, 1'b0, 1'b0};
            2'b11: {wire3, wire2, wire1, wire0} <= {store, 1'b0, 1'b0, 1'b0};
        endcase
    end
    
//    assign memory = (addr == 2'b00) ? mem0 : 0; // If sel is 1, out = a; otherwise, out = b
//    assign memory = (addr == 2'b01) ? mem1 : 0; // If sel is 1, out = a; otherwise, out = b
//    assign memory = (addr == 2'b10) ? mem2 : 0; // If sel is 1, out = a; otherwise, out = b
//    assign memory = (addr == 2'b11) ? mem3 : 0; // If sel is 1, out = a; otherwise, out = b

    
    always @(*) begin 
        case(addr)
            2'b00: memory <= mem0 ; 
            2'b01: memory <= mem1;
            2'b10: memory <= mem2;
            2'b11: memory <= mem3;
        endcase
    end
    
    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule