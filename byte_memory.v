module byte_memory(
    input [7:0] data,
    input store,
    output [7:0] memory
);

d_latch latchOne(
    .D(data[0]),
    .E(store),
    .Q(memory[0])
);

d_latch latchTwo(
    .D(data[1]),
    .E(store),
    .Q(memory[1])
);

d_latch latchThree(
    .D(data[2]),
    .E(store),
    .Q(memory[2])
);

d_latch latchFour(
    .D(data[3]),
    .E(store),
    .Q(memory[3])
);

d_latch latchFive(
    .D(data[4]),
    .E(store),
    .Q(memory[4])
);

d_latch latchSix(
    .D(data[5]),
    .E(store),
    .Q(memory[5])
);

d_latch latchSeven(
    .D(data[6]),
    .E(store),
    .Q(memory[6])
);

d_latch latchEight(
    .D(data[7]),
    .E(store),
    .Q(memory[7])
);

endmodule