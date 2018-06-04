verilator -cc -sv \
+1800-2012ext+sv \
-Iincludes \
--clk clk \
-Wno-fatal \
--top-module scr1_top_tb_axi \
core/scr1_core_top.sv \
core/scr1_dbgc.sv \
core/scr1_sync_rstn.sv \
core/scr1_tapc_data_reg.sv \
core/scr1_tapc_shift_reg.sv \
core/scr1_tapc.sv \
core/scr1_tapc_synchronizer.sv \
pipeline/scr1_brkm_matcher.sv \
pipeline/scr1_ipic.sv \
pipeline/scr1_pipe_brkm.sv \
pipeline/scr1_pipe_csr.sv \
pipeline/scr1_pipe_dbga.sv \
pipeline/scr1_pipe_exu.sv \
pipeline/scr1_pipe_ialu.sv \
pipeline/scr1_pipe_idu.sv \
pipeline/scr1_pipe_ifu.sv \
pipeline/scr1_pipe_lsu.sv \
pipeline/scr1_pipe_mprf.sv \
pipeline/scr1_pipe_top.sv \
tb/scr1_memory_tb_axi.sv \
tb/scr1_top_tb_axi.sv \
top/scr1_dmem_router.sv \
top/scr1_dp_memory.sv \
top/scr1_imem_router.sv \
top/scr1_mem_axi.sv \
top/scr1_tcm.sv \
top/scr1_timer.sv \
top/scr1_top_axi.sv \
--exe scr1_wrapper.c