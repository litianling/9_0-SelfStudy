# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param power.BramSDPPropagationFix 1
set_param chipscope.maxJobs 1
set_param power.enableUnconnectedCarry8PinPower 1
set_param power.enableCarry8RouteBelPower 1
set_param power.enableLutRouteBelPower 1
create_project -in_memory -part xczu3eg-sbva484-1-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.cache/wt [current_project]
set_property parent.project_path C:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:ultra96v2:part0:1.0 [current_project]
set_property ip_repo_paths c:/Users/LTL/Desktop/Handwritten_digit_recognition__LTL_FPGA/f_b_4_new_network/solution1/impl/ip [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/hdl/forw_back_wrapper.v
add_files C:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/forw_back.bd
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_zynq_ultra_ps_e_0_0/forw_back_zynq_ultra_ps_e_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_zynq_ultra_ps_e_0_0/forw_back_zynq_ultra_ps_e_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_axi_smc_7/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_axi_smc_7/bd_0/ip/ip_1/bd_698c_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_axi_smc_7/bd_0/ip/ip_1/bd_698c_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_axi_smc_7/bd_0/ip/ip_5/bd_698c_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_axi_smc_7/bd_0/ip/ip_6/bd_698c_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_axi_smc_7/bd_0/ip/ip_7/bd_698c_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_axi_smc_7/bd_0/ip/ip_8/bd_698c_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_axi_smc_7/bd_0/ip/ip_9/bd_698c_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_axi_smc_7/bd_0/ip/ip_10/bd_698c_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_axi_smc_7/bd_0/ip/ip_11/bd_698c_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_rst_ps8_0_100M_7/forw_back_rst_ps8_0_100M_7_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_rst_ps8_0_100M_7/forw_back_rst_ps8_0_100M_7.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_rst_ps8_0_100M_7/forw_back_rst_ps8_0_100M_7_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_auto_ds_0/forw_back_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_auto_ds_0/forw_back_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_auto_ds_0/forw_back_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_auto_pc_0/forw_back_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/ip/forw_back_forw_back_0_15/constraints/forw_back_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/LTL/Desktop/Handwritten_digit_recognition__ZYY_FPGA/forw_back/forw_back.srcs/sources_1/bd/forw_back/forw_back_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top forw_back_wrapper -part xczu3eg-sbva484-1-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef forw_back_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file forw_back_wrapper_utilization_synth.rpt -pb forw_back_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
