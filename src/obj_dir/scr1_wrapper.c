
#include <stdio.h>
#include <verilated.h>                      // Defines common routines
#include "Vscr1_top_tb_axi.h"               // From Verilating "top.v"

Vscr1_top_tb_axi *top;                      // Instantiation of module

vluint64_t main_time = 0;       // Current simulation time
// This is a 64-bit integer to reduce wrap over issues and
// allow modulus.  You can also use a double, if you wish.

double sc_time_stamp () {       // Called by $time in Verilog
    return main_time;           // converts to double, to match
                                // what SystemC does
}

int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);   // Remember args

    top = new Vscr1_top_tb_axi;             // Create instance

    top->rst_n = 0;           // Set some inputs

    while (!Verilated::gotFinish()) {
        if (main_time > 10) {
            top->rst_n = 1;   // Deassert reset
        }
        if ((main_time % 10) == 1) {
            top->clk = 1;       // Toggle clock
        }
        if ((main_time % 10) == 6) {
            top->clk = 0;
        }
        top->eval();                        // Evaluate model
        // printf("pc=%x\n",top->pc);          // Print PC
        // printf("x1=%x\n",top->gpr_x01);     // Print x1
        main_time++;                        // Time passes...
    }

    top->final();               // Done simulating
    //    // (Though this example doesn't get here)
    delete top;
}