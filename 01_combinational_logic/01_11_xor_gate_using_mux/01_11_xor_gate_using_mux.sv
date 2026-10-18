//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux
(
  input  d0, d1,
  input  sel,
  output y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module xor_gate_using_mux
(
    input  a,
    input  b,
    output o
);

  // Task:
  // Implement xor gate using instance(s) of mux,
  // constants 0 and 1, and wire connections
	wire i;
	mux m(
		.d0(b),
		.d1(1'b0),
		.sel(a),
		.y(i)
		);
	mux m1(
		.d0(a),
		.d1(i),
		.sel(b),
		.y(o)
		);

endmodule
