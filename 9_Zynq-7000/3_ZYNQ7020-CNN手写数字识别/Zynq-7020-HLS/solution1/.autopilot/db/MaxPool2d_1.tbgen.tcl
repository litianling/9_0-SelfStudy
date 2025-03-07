set moduleName MaxPool2d_1
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {MaxPool2d.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_matrix float 32 regular {array 196 { 0 3 } 0 1 }  }
	{ locate_matrix float 32 regular {array 196 { 0 3 } 0 1 }  }
	{ conv_out_1 float 32 regular {array 784 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_matrix", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "locate_matrix", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "conv_out_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_matrix_address0 sc_out sc_lv 8 signal 0 } 
	{ output_matrix_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_matrix_we0 sc_out sc_logic 1 signal 0 } 
	{ output_matrix_d0 sc_out sc_lv 32 signal 0 } 
	{ locate_matrix_address0 sc_out sc_lv 8 signal 1 } 
	{ locate_matrix_ce0 sc_out sc_logic 1 signal 1 } 
	{ locate_matrix_we0 sc_out sc_logic 1 signal 1 } 
	{ locate_matrix_d0 sc_out sc_lv 32 signal 1 } 
	{ conv_out_1_address0 sc_out sc_lv 10 signal 2 } 
	{ conv_out_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ conv_out_1_q0 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_matrix_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "output_matrix", "role": "address0" }} , 
 	{ "name": "output_matrix_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_matrix", "role": "ce0" }} , 
 	{ "name": "output_matrix_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_matrix", "role": "we0" }} , 
 	{ "name": "output_matrix_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_matrix", "role": "d0" }} , 
 	{ "name": "locate_matrix_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "locate_matrix", "role": "address0" }} , 
 	{ "name": "locate_matrix_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locate_matrix", "role": "ce0" }} , 
 	{ "name": "locate_matrix_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "locate_matrix", "role": "we0" }} , 
 	{ "name": "locate_matrix_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "locate_matrix", "role": "d0" }} , 
 	{ "name": "conv_out_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "conv_out_1", "role": "address0" }} , 
 	{ "name": "conv_out_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_1", "role": "ce0" }} , 
 	{ "name": "conv_out_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv_out_1", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "MaxPool2d_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_matrix", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "locate_matrix", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv_out_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.forw_back_sitofp_dEe_U8", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.forw_back_fcmp_32eOg_U9", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MaxPool2d_1 {
		output_matrix {Type O LastRead -1 FirstWrite 9}
		locate_matrix {Type O LastRead -1 FirstWrite 17}
		conv_out_1 {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	output_matrix { ap_memory {  { output_matrix_address0 mem_address 1 8 }  { output_matrix_ce0 mem_ce 1 1 }  { output_matrix_we0 mem_we 1 1 }  { output_matrix_d0 mem_din 1 32 } } }
	locate_matrix { ap_memory {  { locate_matrix_address0 mem_address 1 8 }  { locate_matrix_ce0 mem_ce 1 1 }  { locate_matrix_we0 mem_we 1 1 }  { locate_matrix_d0 mem_din 1 32 } } }
	conv_out_1 { ap_memory {  { conv_out_1_address0 mem_address 1 10 }  { conv_out_1_ce0 mem_ce 1 1 }  { conv_out_1_q0 mem_dout 0 32 } } }
}
