module cocotb_iverilog_dump();
initial begin
    $dumpfile("sim_build/mk_non_restoring_divider.fst");
    $dumpvars(0, mk_non_restoring_divider);
end
endmodule
