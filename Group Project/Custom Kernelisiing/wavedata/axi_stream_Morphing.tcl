load C:/Xilinx/Vivado/2020.1/lib/win64.o/librdi_dsp_tcltasks.dll
cd {C:/Users/Daniel/Documents/Github/315-GroupProject/Group Project/Custom Kernelisiing/wavedata}
dsp_wave_convert {axi_stream_Morphing.wfv} 
set_param project.waveformStandaloneMode 1
start_gui
current_fileset
dsp_register_design_manager
dsp_open_waveform {axi_stream_Morphing.wdb}
open_wave_config {axi_stream_Morphing.wcfg}
source C:/Xilinx/Vivado/2020.1/scripts/sysgen/tcl/SgPaSlaveInterp.tcl
