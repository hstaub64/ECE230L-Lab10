module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

wire [7:0] arr_vec[3:0];
wire arr[3:0];
wire [7:0] byte_out[3:0];

byte_memory byteOne (
    .data(arr_vec[0]),
    .store(arr[0]),
    .memory(byte_out[0])
);

byte_memory byteTwo (
    .data(arr_vec[1]),
    .store(arr[1]),
    .memory(byte_out[1])
);

byte_memory byteThree (
    .data(arr_vec[2]),
    .store(arr[2]),
    .memory(byte_out[2])
);

byte_memory byteFour (
    .data(arr_vec[3]),
    .store(arr[3]),
    .memory(byte_out[3])
);

simple_8_demux demuxData(
    .data(data),
    .sel(addr),
    .A(arr_vec[0]),
    .B(arr_vec[1]),
    .C(arr_vec[2]),
    .D(arr_vec[3])
);

simple_single_demux demuxStore(
    .data(store),
    .sel(addr),
    .A(arr[0]),
    .B(arr[1]),
    .C(arr[2]),
    .D(arr[3])
);

simple_8_mux muxOut (
    .Enable(1),
    .Sel(addr),
    .A(byte_out[0]),
    .B(byte_out[1]),
    .C(byte_out[2]),
    .D(byte_out[3]),
    .Y(memory)
);

endmodule