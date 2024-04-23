# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set AnalyzeTiming 1
	set AnalyzeTimingNumPaths {10000}
	set AnalyzeTimingPostImplementation 0
	set AnalyzeTimingPostSynthesis 1
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xc7z020}
	set DSPFamily {zynq}
	set DSPPackage {clg400}
	set DSPSpeed {-1}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {C:/Users/Daniel/AppData/Local/Xilinx/Sysgen/SysgenVivado/win64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {344460963}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {axis_morph}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{axis_morph_config_axi_lite_interface_verilog.v}}
		{{conv_pkg.v}}
		{{synth_reg.v}}
		{{synth_reg_w_init.v}}
		{{convert_type.v}}
		{{axis_morph.mdd}}
		{{axis_morph_hw.h}}
		{{axis_morph.h}}
		{{axis_morph_sinit.c}}
		{{axis_morph.c}}
		{{axis_morph_linux.c}}
		{{axis_morph.mtcl}}
		{{Makefile.mak}}
		{{index.html}}
		{{axis_morph_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{axis_morph.vhd} -lib {xil_defaultlib}}
		{{axis_morph_clock.xdc}}
		{{axis_morph.xdc}}
	}
	set SimPeriod 1e-08
	set SimTime 0.00020288
	set SimulationTime {203090.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {C:/Xil_proj/315/proj/DIY/netlist}
	set TopLevelModule {axis_morph}
	set TopLevelSimulinkHandle 2266
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface s_axis_tvalid Name {s_axis_tvalid}
	dict set TopLevelPortInterface s_axis_tvalid Type Bool
	dict set TopLevelPortInterface s_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tvalid Width 1
	dict set TopLevelPortInterface s_axis_tvalid DatFile {axis_morph_s_axis_tvalid.dat}
	dict set TopLevelPortInterface s_axis_tvalid IconText {s_axis_tvalid}
	dict set TopLevelPortInterface s_axis_tvalid Direction in
	dict set TopLevelPortInterface s_axis_tvalid Period 1
	dict set TopLevelPortInterface s_axis_tvalid Interface 0
	dict set TopLevelPortInterface s_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface s_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tvalid ClockDomain {axis_morph}
	dict set TopLevelPortInterface s_axis_tvalid Locs {}
	dict set TopLevelPortInterface s_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_tlast Name {s_axis_tlast}
	dict set TopLevelPortInterface s_axis_tlast Type Bool
	dict set TopLevelPortInterface s_axis_tlast ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tlast BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tlast Width 1
	dict set TopLevelPortInterface s_axis_tlast DatFile {axis_morph_s_axis_tlast.dat}
	dict set TopLevelPortInterface s_axis_tlast IconText {s_axis_tlast}
	dict set TopLevelPortInterface s_axis_tlast Direction in
	dict set TopLevelPortInterface s_axis_tlast Period 1
	dict set TopLevelPortInterface s_axis_tlast Interface 0
	dict set TopLevelPortInterface s_axis_tlast InterfaceName {}
	dict set TopLevelPortInterface s_axis_tlast InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tlast ClockDomain {axis_morph}
	dict set TopLevelPortInterface s_axis_tlast Locs {}
	dict set TopLevelPortInterface s_axis_tlast IOStandard {}
	dict set TopLevelPortInterface s_axis_tdata Name {s_axis_tdata}
	dict set TopLevelPortInterface s_axis_tdata Type UFix_32_0
	dict set TopLevelPortInterface s_axis_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tdata BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tdata Width 32
	dict set TopLevelPortInterface s_axis_tdata DatFile {axis_morph_s_axis_tdata.dat}
	dict set TopLevelPortInterface s_axis_tdata IconText {s_axis_tdata}
	dict set TopLevelPortInterface s_axis_tdata Direction in
	dict set TopLevelPortInterface s_axis_tdata Period 1
	dict set TopLevelPortInterface s_axis_tdata Interface 0
	dict set TopLevelPortInterface s_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface s_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tdata ClockDomain {axis_morph}
	dict set TopLevelPortInterface s_axis_tdata Locs {}
	dict set TopLevelPortInterface s_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_axis_tready Name {m_axis_tready}
	dict set TopLevelPortInterface m_axis_tready Type Bool
	dict set TopLevelPortInterface m_axis_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tready BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tready Width 1
	dict set TopLevelPortInterface m_axis_tready DatFile {axis_morph_m_axis_tready.dat}
	dict set TopLevelPortInterface m_axis_tready IconText {m_axis_tready}
	dict set TopLevelPortInterface m_axis_tready Direction in
	dict set TopLevelPortInterface m_axis_tready Period 1
	dict set TopLevelPortInterface m_axis_tready Interface 0
	dict set TopLevelPortInterface m_axis_tready InterfaceName {}
	dict set TopLevelPortInterface m_axis_tready InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tready ClockDomain {axis_morph}
	dict set TopLevelPortInterface m_axis_tready Locs {}
	dict set TopLevelPortInterface m_axis_tready IOStandard {}
	dict set TopLevelPortInterface m_axis_tdata Name {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Type UFix_32_0
	dict set TopLevelPortInterface m_axis_tdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tdata BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tdata Width 32
	dict set TopLevelPortInterface m_axis_tdata DatFile {axis_morph_m_axis_tdata.dat}
	dict set TopLevelPortInterface m_axis_tdata IconText {m_axis_tdata}
	dict set TopLevelPortInterface m_axis_tdata Direction out
	dict set TopLevelPortInterface m_axis_tdata Period 1
	dict set TopLevelPortInterface m_axis_tdata Interface 0
	dict set TopLevelPortInterface m_axis_tdata InterfaceName {}
	dict set TopLevelPortInterface m_axis_tdata InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tdata ClockDomain {axis_morph}
	dict set TopLevelPortInterface m_axis_tdata Locs {}
	dict set TopLevelPortInterface m_axis_tdata IOStandard {}
	dict set TopLevelPortInterface m_axis_tlast Name {m_axis_tlast}
	dict set TopLevelPortInterface m_axis_tlast Type Bool
	dict set TopLevelPortInterface m_axis_tlast ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tlast BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tlast Width 1
	dict set TopLevelPortInterface m_axis_tlast DatFile {axis_morph_m_axis_tlast.dat}
	dict set TopLevelPortInterface m_axis_tlast IconText {m_axis_tlast}
	dict set TopLevelPortInterface m_axis_tlast Direction out
	dict set TopLevelPortInterface m_axis_tlast Period 1
	dict set TopLevelPortInterface m_axis_tlast Interface 0
	dict set TopLevelPortInterface m_axis_tlast InterfaceName {}
	dict set TopLevelPortInterface m_axis_tlast InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tlast ClockDomain {axis_morph}
	dict set TopLevelPortInterface m_axis_tlast Locs {}
	dict set TopLevelPortInterface m_axis_tlast IOStandard {}
	dict set TopLevelPortInterface m_axis_tvalid Name {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Type Bool
	dict set TopLevelPortInterface m_axis_tvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface m_axis_tvalid BinaryPoint 0
	dict set TopLevelPortInterface m_axis_tvalid Width 1
	dict set TopLevelPortInterface m_axis_tvalid DatFile {axis_morph_m_axis_tvalid.dat}
	dict set TopLevelPortInterface m_axis_tvalid IconText {m_axis_tvalid}
	dict set TopLevelPortInterface m_axis_tvalid Direction out
	dict set TopLevelPortInterface m_axis_tvalid Period 1
	dict set TopLevelPortInterface m_axis_tvalid Interface 0
	dict set TopLevelPortInterface m_axis_tvalid InterfaceName {}
	dict set TopLevelPortInterface m_axis_tvalid InterfaceString {DATA}
	dict set TopLevelPortInterface m_axis_tvalid ClockDomain {axis_morph}
	dict set TopLevelPortInterface m_axis_tvalid Locs {}
	dict set TopLevelPortInterface m_axis_tvalid IOStandard {}
	dict set TopLevelPortInterface s_axis_tready Name {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Type Bool
	dict set TopLevelPortInterface s_axis_tready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface s_axis_tready BinaryPoint 0
	dict set TopLevelPortInterface s_axis_tready Width 1
	dict set TopLevelPortInterface s_axis_tready DatFile {axis_morph_s_axis_tready.dat}
	dict set TopLevelPortInterface s_axis_tready IconText {s_axis_tready}
	dict set TopLevelPortInterface s_axis_tready Direction out
	dict set TopLevelPortInterface s_axis_tready Period 1
	dict set TopLevelPortInterface s_axis_tready Interface 0
	dict set TopLevelPortInterface s_axis_tready InterfaceName {}
	dict set TopLevelPortInterface s_axis_tready InterfaceString {DATA}
	dict set TopLevelPortInterface s_axis_tready ClockDomain {axis_morph}
	dict set TopLevelPortInterface s_axis_tready Locs {}
	dict set TopLevelPortInterface s_axis_tready IOStandard {}
	dict set TopLevelPortInterface axis_morph_aresetn Name {axis_morph_aresetn}
	dict set TopLevelPortInterface axis_morph_aresetn Type -
	dict set TopLevelPortInterface axis_morph_aresetn ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_aresetn BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_aresetn Width 1
	dict set TopLevelPortInterface axis_morph_aresetn DatFile {}
	dict set TopLevelPortInterface axis_morph_aresetn IconText {axis_morph_aresetn}
	dict set TopLevelPortInterface axis_morph_aresetn Direction in
	dict set TopLevelPortInterface axis_morph_aresetn Period 1
	dict set TopLevelPortInterface axis_morph_aresetn Interface 8
	dict set TopLevelPortInterface axis_morph_aresetn InterfaceName {}
	dict set TopLevelPortInterface axis_morph_aresetn InterfaceString {ARESETN}
	dict set TopLevelPortInterface axis_morph_aresetn ClockDomain {}
	dict set TopLevelPortInterface axis_morph_aresetn Locs {}
	dict set TopLevelPortInterface axis_morph_aresetn IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr Name {axis_morph_config_s_axi_awaddr}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr IconText {axis_morph_config_s_axi_awaddr}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr Direction in
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awaddr IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid Name {axis_morph_config_s_axi_awvalid}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid IconText {axis_morph_config_s_axi_awvalid}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid Direction in
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awvalid IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready Name {axis_morph_config_s_axi_awready}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready IconText {axis_morph_config_s_axi_awready}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready Direction out
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_awready IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata Name {axis_morph_config_s_axi_wdata}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata Width 32
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata IconText {axis_morph_config_s_axi_wdata}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata Direction in
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wdata IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb Name {axis_morph_config_s_axi_wstrb}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb Width 4
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb IconText {axis_morph_config_s_axi_wstrb}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb Direction in
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wstrb IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid Name {axis_morph_config_s_axi_wvalid}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid IconText {axis_morph_config_s_axi_wvalid}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid Direction in
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wvalid IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready Name {axis_morph_config_s_axi_wready}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready IconText {axis_morph_config_s_axi_wready}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready Direction out
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_wready IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp Name {axis_morph_config_s_axi_bresp}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp Width 2
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp IconText {axis_morph_config_s_axi_bresp}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp Direction out
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bresp IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid Name {axis_morph_config_s_axi_bvalid}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid IconText {axis_morph_config_s_axi_bvalid}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid Direction out
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bvalid IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready Name {axis_morph_config_s_axi_bready}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready IconText {axis_morph_config_s_axi_bready}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready Direction in
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_bready IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr Name {axis_morph_config_s_axi_araddr}
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr IconText {axis_morph_config_s_axi_araddr}
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr Direction in
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_araddr IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid Name {axis_morph_config_s_axi_arvalid}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid IconText {axis_morph_config_s_axi_arvalid}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid Direction in
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arvalid IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready Name {axis_morph_config_s_axi_arready}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready IconText {axis_morph_config_s_axi_arready}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready Direction out
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_arready IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata Name {axis_morph_config_s_axi_rdata}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata Width 32
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata IconText {axis_morph_config_s_axi_rdata}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata Direction out
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rdata IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp Name {axis_morph_config_s_axi_rresp}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp Width 2
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp IconText {axis_morph_config_s_axi_rresp}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp Direction out
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rresp IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid Name {axis_morph_config_s_axi_rvalid}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid IconText {axis_morph_config_s_axi_rvalid}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid Direction out
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rvalid IOStandard {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready Name {axis_morph_config_s_axi_rready}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready Type -
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready ArithmeticType xlUnsigned
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready BinaryPoint 0
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready Width 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready DatFile {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready IconText {axis_morph_config_s_axi_rready}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready Direction in
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready Period 1
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready Interface 5
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready InterfaceName {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready InterfaceString {WIRE_AXI_LITE}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready ClockDomain {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready Locs {}
	dict set TopLevelPortInterface axis_morph_config_s_axi_rready IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {axis_morph}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {axis_morph_config_s_axi }
	dict set TopLevelPortInterface clk AssociatedResets {axis_morph_aresetn }
	set MemoryMappedPort {}
	dict set MemoryMappedPort thresh_reg Name {thresh_reg}
	dict set MemoryMappedPort thresh_reg Type UFix_32_0
	dict set MemoryMappedPort thresh_reg ArithmeticType xlUnsigned
	dict set MemoryMappedPort thresh_reg BinaryPoint 0
	dict set MemoryMappedPort thresh_reg Width 32
	dict set MemoryMappedPort thresh_reg DatFile {axis_morph_thresh_reg.dat}
	dict set MemoryMappedPort thresh_reg AddressOffset 0
	dict set MemoryMappedPort thresh_reg IconText {thresh_reg}
	dict set MemoryMappedPort thresh_reg Direction in
	dict set MemoryMappedPort thresh_reg Period 1
	dict set MemoryMappedPort thresh_reg Interface 2
	dict set MemoryMappedPort thresh_reg InterfaceName {config}
	dict set MemoryMappedPort thresh_reg InterfaceString {CONTROL}
	dict set MemoryMappedPort thresh_reg ClockDomain {axis_morph}
	dict set MemoryMappedPort thresh_reg Locs {}
	dict set MemoryMappedPort thresh_reg IOStandard {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project