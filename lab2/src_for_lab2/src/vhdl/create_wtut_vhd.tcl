# Tcl script to run in the Xilinx Tcl shell or the ISE Tcl Console

# To run this script, type "source create_vtut_vhd.tcl" 
# at Tcl prompt.

# set up the project

project new wtut_vhd.ise
project set family "Spartan3A and Spartan3AN"
project set device xc3s700A
project set speed -4
project set package fg484
project set synthesis_tool "XST (VHDL/Verilog)"
project set generated_simulation_language "ISE Simulator (VHDL/Verilog)"
# add source files - 
xfile add clk_div_262k.vhd
xfile add lcd_control.vhd
xfile add statmach.vhd
xfile add stopwatch.vhd
project close
project open wtut_vhd.ise