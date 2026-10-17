module ones_compliment(
    input [3:0] A, B,
    output [3:0] Y
);

wire [3:0] AplusB, carry1, carry2;

full_adder lsb(
    .A(A[0]),
    .B(B[0]),
    .Y(AplusB[0]),
    .Cin(1'b0),
    .Cout(carry1[0])
);

genvar i;
generate
for (i=1; i<4; i=i+1) begin
    full_adder adder(
        .A(A[i]),
        .B(B[i]),
        .Y(AplusB[i]),
        .Cin(carry1[i-1]),
        .Cout(carry1[i])
    );
end
endgenerate

full_adder end_around_lsb(
    .A(AplusB[0]),
    .B(1'b0),
    .Y(Y[0]),
    .Cin(carry1[3]),
    .Cout(carry2[0])
);

genvar j;
generate
for (j=1; j<4; j=j+1) begin
    full_adder end_around(
        .A(AplusB[j]),
        .B(1'b0),
        .Y(Y[j]),
        .Cin(carry2[j-1]),
        .Cout(carry2[j])
    );
end
endgenerate
    
endmodule
