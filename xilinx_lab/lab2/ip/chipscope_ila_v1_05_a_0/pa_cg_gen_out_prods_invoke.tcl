# Tcl script generated by PlanAhead

set reloadAllCoreGenRepositories false

set tclUtilsPath "c:/Xilinx/14.4/ISE_DS/PlanAhead/scripts/pa_cg_utils.tcl"

set repoPaths ""

set cgIndexMapPath "C:/xup/adv_embedded/labs/lab2/lab1.srcs/sources_1/ip/cg_nt_index_map.xml"

set cgProjectPath "c:/xup/adv_embedded/labs/lab2/lab1.srcs/sources_1/ip/chipscope_ila_v1_05_a_0/coregen.cgc"

set ipFile "c:/xup/adv_embedded/labs/lab2/lab1.srcs/sources_1/ip/chipscope_ila_v1_05_a_0/ila_led.xco"

set ipName "ila_led"

set hdlType "VHDL"

set cgPartSpec "xc7z020-1clg484"

set chains "GENERATE_CURRENT_CHAIN"

set params ""

set bomFilePath "c:/xup/adv_embedded/labs/lab2/lab1.srcs/sources_1/ip/chipscope_ila_v1_05_a_0/pa_cg_bom.xml"

# generate the IP
set result [source "c:/Xilinx/14.4/ISE_DS/PlanAhead/scripts/pa_cg_gen_out_prods.tcl"]

exit $result

